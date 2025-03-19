; ModuleID = 'drivers/acpi/acpica/psloop.c'
source_filename = "drivers/acpi/acpica/psloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_pscope_state = type { ptr, i8, i8, i16, i16, i32, ptr, ptr, ptr, i32 }
%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_common_state = type { ptr, i8, i8, i16, i16 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%struct.acpi_control_state = type { ptr, i8, i8, i16, i16, i16, ptr, ptr, ptr, i64 }
%struct.acpi_parse_obj_named = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8, ptr, ptr, i32, i32 }

@_acpi_module_name = internal constant [7 x i8] c"psloop\00", align 1, !dbg !0
@.str = private unnamed_addr constant [38 x i8] c"Invoked method did not return a value\00", align 1, !dbg !31
@.str.1 = private unnamed_addr constant [20 x i8] c"GetPredicate Failed\00", align 1, !dbg !37
@.str.2 = private unnamed_addr constant [43 x i8] c"Skipping parse of AML opcode: %s (0x%4.4X)\00", align 1, !dbg !42
@.str.3 = private unnamed_addr constant [24 x i8] c"Skipping While/If block\00", align 1, !dbg !47
@.str.4 = private unnamed_addr constant [20 x i8] c"Skipping Else block\00", align 1, !dbg !52

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ps_parse_loop(ptr noundef %walk_state) #0 align 16 !dbg !67 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %op = alloca ptr, align 8
  %parser_state = alloca ptr, align 8
  %aml_op_start = alloca ptr, align 8
  %opcode_length = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !825, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !833
  call void @llvm.dbg.declare(metadata ptr %status, metadata !826, metadata !DIExpression()), !dbg !834
  store i32 0, ptr %status, align 4, !dbg !834
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #5, !dbg !835
  call void @llvm.dbg.declare(metadata ptr %op, metadata !827, metadata !DIExpression()), !dbg !836
  store ptr null, ptr %op, align 8, !dbg !836
  call void @llvm.lifetime.start.p0(i64 8, ptr %parser_state) #5, !dbg !837
  call void @llvm.dbg.declare(metadata ptr %parser_state, metadata !828, metadata !DIExpression()), !dbg !838
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml_op_start) #5, !dbg !839
  call void @llvm.dbg.declare(metadata ptr %aml_op_start, metadata !830, metadata !DIExpression()), !dbg !840
  store ptr null, ptr %aml_op_start, align 8, !dbg !840
  call void @llvm.lifetime.start.p0(i64 1, ptr %opcode_length) #5, !dbg !841
  call void @llvm.dbg.declare(metadata ptr %opcode_length, metadata !831, metadata !DIExpression()), !dbg !842
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !843
  %descending_callback = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 50, !dbg !845
  %1 = load ptr, ptr %descending_callback, align 8, !dbg !845
  %cmp = icmp eq ptr %1, null, !dbg !846
  br i1 %cmp, label %if.then, label %if.end, !dbg !847

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !848

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !850
  %parser_state1 = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 21, !dbg !851
  store ptr %parser_state1, ptr %parser_state, align 8, !dbg !852
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !853
  %arg_types = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 17, !dbg !854
  store i32 0, ptr %arg_types, align 8, !dbg !855
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !856
  %walk_type = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 2, !dbg !858
  %5 = load i8, ptr %walk_type, align 1, !dbg !858
  %conv = zext i8 %5 to i32, !dbg !856
  %and = and i32 %conv, 2, !dbg !859
  %tobool = icmp ne i32 %and, 0, !dbg !859
  br i1 %tobool, label %if.then2, label %if.end48, !dbg !860

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %parser_state, align 8, !dbg !861
  %call = call zeroext i8 @acpi_ps_has_completed_scope(ptr noundef %6) #6, !dbg !864
  %tobool3 = icmp ne i8 %call, 0, !dbg !864
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !865

if.then4:                                         ; preds = %if.then2
  %7 = load ptr, ptr %parser_state, align 8, !dbg !866
  %scope = getelementptr inbounds %struct.acpi_parse_state, ptr %7, i32 0, i32 7, !dbg !869
  %8 = load ptr, ptr %scope, align 8, !dbg !869
  %op5 = getelementptr inbounds %struct.acpi_pscope_state, ptr %8, i32 0, i32 6, !dbg !870
  %9 = load ptr, ptr %op5, align 8, !dbg !870
  %tobool6 = icmp ne ptr %9, null, !dbg !871
  br i1 %tobool6, label %land.lhs.true, label %if.end40, !dbg !872

land.lhs.true:                                    ; preds = %if.then4
  %10 = load ptr, ptr %parser_state, align 8, !dbg !873
  %scope7 = getelementptr inbounds %struct.acpi_parse_state, ptr %10, i32 0, i32 7, !dbg !874
  %11 = load ptr, ptr %scope7, align 8, !dbg !874
  %op8 = getelementptr inbounds %struct.acpi_pscope_state, ptr %11, i32 0, i32 6, !dbg !875
  %12 = load ptr, ptr %op8, align 8, !dbg !875
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %12, i32 0, i32 3, !dbg !876
  %13 = load i16, ptr %aml_opcode, align 2, !dbg !876
  %conv9 = zext i16 %13 to i32, !dbg !873
  %cmp10 = icmp eq i32 %conv9, 160, !dbg !877
  br i1 %cmp10, label %land.lhs.true18, label %lor.lhs.false, !dbg !878

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load ptr, ptr %parser_state, align 8, !dbg !879
  %scope12 = getelementptr inbounds %struct.acpi_parse_state, ptr %14, i32 0, i32 7, !dbg !880
  %15 = load ptr, ptr %scope12, align 8, !dbg !880
  %op13 = getelementptr inbounds %struct.acpi_pscope_state, ptr %15, i32 0, i32 6, !dbg !881
  %16 = load ptr, ptr %op13, align 8, !dbg !881
  %aml_opcode14 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %16, i32 0, i32 3, !dbg !882
  %17 = load i16, ptr %aml_opcode14, align 2, !dbg !882
  %conv15 = zext i16 %17 to i32, !dbg !879
  %cmp16 = icmp eq i32 %conv15, 162, !dbg !883
  br i1 %cmp16, label %land.lhs.true18, label %if.end40, !dbg !884

land.lhs.true18:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %18 = load ptr, ptr %walk_state.addr, align 8, !dbg !885
  %control_state = getelementptr inbounds %struct.acpi_walk_state, ptr %18, i32 0, i32 32, !dbg !886
  %19 = load ptr, ptr %control_state, align 8, !dbg !886
  %tobool19 = icmp ne ptr %19, null, !dbg !887
  br i1 %tobool19, label %land.lhs.true20, label %if.end40, !dbg !888

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %20 = load ptr, ptr %walk_state.addr, align 8, !dbg !889
  %control_state21 = getelementptr inbounds %struct.acpi_walk_state, ptr %20, i32 0, i32 32, !dbg !890
  %21 = load ptr, ptr %control_state21, align 8, !dbg !890
  %state = getelementptr inbounds %struct.acpi_common_state, ptr %21, i32 0, i32 4, !dbg !891
  %22 = load i16, ptr %state, align 4, !dbg !891
  %conv22 = zext i16 %22 to i32, !dbg !889
  %cmp23 = icmp eq i32 %conv22, 194, !dbg !892
  br i1 %cmp23, label %if.then25, label %if.end40, !dbg !893

if.then25:                                        ; preds = %land.lhs.true20
  %23 = load ptr, ptr %walk_state.addr, align 8, !dbg !894
  %op26 = getelementptr inbounds %struct.acpi_walk_state, ptr %23, i32 0, i32 40, !dbg !896
  store ptr null, ptr %op26, align 8, !dbg !897
  %24 = load ptr, ptr %walk_state.addr, align 8, !dbg !898
  %call27 = call i32 @acpi_ds_get_predicate_value(ptr noundef %24, ptr noundef inttoptr (i64 1 to ptr)) #6, !dbg !899
  store i32 %call27, ptr %status, align 4, !dbg !900
  %25 = load i32, ptr %status, align 4, !dbg !901
  %tobool28 = icmp ne i32 %25, 0, !dbg !901
  br i1 %tobool28, label %land.lhs.true29, label %if.end38, !dbg !903

land.lhs.true29:                                  ; preds = %if.then25
  %26 = load i32, ptr %status, align 4, !dbg !904
  %and30 = and i32 %26, 61440, !dbg !904
  %cmp31 = icmp eq i32 %and30, 16384, !dbg !904
  br i1 %cmp31, label %if.end38, label %if.then33, !dbg !905

if.then33:                                        ; preds = %land.lhs.true29
  %27 = load i32, ptr %status, align 4, !dbg !906
  %cmp34 = icmp eq i32 %27, 12306, !dbg !909
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !910

if.then36:                                        ; preds = %if.then33
  %28 = load i32, ptr %status, align 4, !dbg !911
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 269, i32 noundef %28, ptr noundef @.str) #6, !dbg !911
  br label %if.end37, !dbg !913

if.end37:                                         ; preds = %if.then36, %if.then33
  %29 = load i32, ptr %status, align 4, !dbg !914
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 273, i32 noundef %29, ptr noundef @.str.1) #6, !dbg !914
  %30 = load i32, ptr %status, align 4, !dbg !915
  store i32 %30, ptr %retval, align 4, !dbg !915
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !915

if.end38:                                         ; preds = %land.lhs.true29, %if.then25
  %31 = load ptr, ptr %walk_state.addr, align 8, !dbg !916
  %32 = load ptr, ptr %op, align 8, !dbg !917
  %33 = load i32, ptr %status, align 4, !dbg !918
  %call39 = call i32 @acpi_ps_next_parse_state(ptr noundef %31, ptr noundef %32, i32 noundef %33) #6, !dbg !919
  store i32 %call39, ptr %status, align 4, !dbg !920
  br label %if.end40, !dbg !921

if.end40:                                         ; preds = %if.end38, %land.lhs.true20, %land.lhs.true18, %lor.lhs.false, %if.then4
  %34 = load ptr, ptr %parser_state, align 8, !dbg !922
  %35 = load ptr, ptr %walk_state.addr, align 8, !dbg !923
  %arg_types41 = getelementptr inbounds %struct.acpi_walk_state, ptr %35, i32 0, i32 17, !dbg !924
  %36 = load ptr, ptr %walk_state.addr, align 8, !dbg !925
  %arg_count = getelementptr inbounds %struct.acpi_walk_state, ptr %36, i32 0, i32 23, !dbg !926
  call void @acpi_ps_pop_scope(ptr noundef %34, ptr noundef %op, ptr noundef %arg_types41, ptr noundef %arg_count) #6, !dbg !927
  br label %if.end47, !dbg !928

if.else:                                          ; preds = %if.then2
  %37 = load ptr, ptr %walk_state.addr, align 8, !dbg !929
  %prev_op = getelementptr inbounds %struct.acpi_walk_state, ptr %37, i32 0, i32 47, !dbg !931
  %38 = load ptr, ptr %prev_op, align 8, !dbg !931
  %tobool42 = icmp ne ptr %38, null, !dbg !929
  br i1 %tobool42, label %if.then43, label %if.end46, !dbg !932

if.then43:                                        ; preds = %if.else
  %39 = load ptr, ptr %walk_state.addr, align 8, !dbg !933
  %prev_op44 = getelementptr inbounds %struct.acpi_walk_state, ptr %39, i32 0, i32 47, !dbg !935
  %40 = load ptr, ptr %prev_op44, align 8, !dbg !935
  store ptr %40, ptr %op, align 8, !dbg !936
  %41 = load ptr, ptr %walk_state.addr, align 8, !dbg !937
  %prev_arg_types = getelementptr inbounds %struct.acpi_walk_state, ptr %41, i32 0, i32 22, !dbg !938
  %42 = load i32, ptr %prev_arg_types, align 8, !dbg !938
  %43 = load ptr, ptr %walk_state.addr, align 8, !dbg !939
  %arg_types45 = getelementptr inbounds %struct.acpi_walk_state, ptr %43, i32 0, i32 17, !dbg !940
  store i32 %42, ptr %arg_types45, align 8, !dbg !941
  br label %if.end46, !dbg !942

if.end46:                                         ; preds = %if.then43, %if.else
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end40
  br label %if.end48, !dbg !943

if.end48:                                         ; preds = %if.end47, %if.end
  br label %while.cond, !dbg !944

while.cond:                                       ; preds = %if.end264, %if.end181, %if.end180, %if.end166, %if.end111, %if.then70, %if.end48
  %44 = load ptr, ptr %parser_state, align 8, !dbg !945
  %aml = getelementptr inbounds %struct.acpi_parse_state, ptr %44, i32 0, i32 1, !dbg !946
  %45 = load ptr, ptr %aml, align 8, !dbg !946
  %46 = load ptr, ptr %parser_state, align 8, !dbg !947
  %aml_end = getelementptr inbounds %struct.acpi_parse_state, ptr %46, i32 0, i32 2, !dbg !948
  %47 = load ptr, ptr %aml_end, align 8, !dbg !948
  %cmp49 = icmp ult ptr %45, %47, !dbg !949
  br i1 %cmp49, label %lor.end, label %lor.rhs, !dbg !950

lor.rhs:                                          ; preds = %while.cond
  %48 = load ptr, ptr %op, align 8, !dbg !951
  %tobool51 = icmp ne ptr %48, null, !dbg !950
  br label %lor.end, !dbg !950

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %49 = phi i1 [ true, %while.cond ], [ %tobool51, %lor.rhs ]
  br i1 %49, label %while.body, label %while.end, !dbg !944

while.body:                                       ; preds = %lor.end
  %50 = load ptr, ptr %parser_state, align 8, !dbg !952
  %aml52 = getelementptr inbounds %struct.acpi_parse_state, ptr %50, i32 0, i32 1, !dbg !954
  %51 = load ptr, ptr %aml52, align 8, !dbg !954
  store ptr %51, ptr %aml_op_start, align 8, !dbg !955
  %52 = load ptr, ptr %op, align 8, !dbg !956
  %tobool53 = icmp ne ptr %52, null, !dbg !956
  br i1 %tobool53, label %if.end113, label %if.then54, !dbg !958

if.then54:                                        ; preds = %while.body
  %53 = load ptr, ptr %walk_state.addr, align 8, !dbg !959
  %54 = load ptr, ptr %aml_op_start, align 8, !dbg !961
  %call55 = call i32 @acpi_ps_create_op(ptr noundef %53, ptr noundef %54, ptr noundef %op) #6, !dbg !962
  store i32 %call55, ptr %status, align 4, !dbg !963
  %55 = load i32, ptr %status, align 4, !dbg !964
  %tobool56 = icmp ne i32 %55, 0, !dbg !964
  br i1 %tobool56, label %if.then57, label %if.end112, !dbg !966

if.then57:                                        ; preds = %if.then54
  %56 = load ptr, ptr %walk_state.addr, align 8, !dbg !967
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, ptr %56, i32 0, i32 20, !dbg !970
  %57 = load i32, ptr %parse_flags, align 4, !dbg !970
  %and58 = and i32 %57, 1024, !dbg !971
  %tobool59 = icmp ne i32 %and58, 0, !dbg !971
  br i1 %tobool59, label %land.lhs.true60, label %if.end67, !dbg !972

land.lhs.true60:                                  ; preds = %if.then57
  %58 = load i32, ptr %status, align 4, !dbg !973
  %cmp61 = icmp eq i32 %58, 7, !dbg !974
  br i1 %cmp61, label %if.then66, label %lor.lhs.false63, !dbg !975

lor.lhs.false63:                                  ; preds = %land.lhs.true60
  %59 = load i32, ptr %status, align 4, !dbg !976
  %cmp64 = icmp eq i32 %59, 5, !dbg !977
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !978

if.then66:                                        ; preds = %lor.lhs.false63, %land.lhs.true60
  store i32 0, ptr %status, align 4, !dbg !979
  br label %if.end67, !dbg !981

if.end67:                                         ; preds = %if.then66, %lor.lhs.false63, %if.then57
  %60 = load i32, ptr %status, align 4, !dbg !982
  %cmp68 = icmp eq i32 %60, 16395, !dbg !984
  br i1 %cmp68, label %if.then70, label %if.end71, !dbg !985

if.then70:                                        ; preds = %if.end67
  br label %while.cond, !dbg !986, !llvm.loop !988

if.end71:                                         ; preds = %if.end67
  %61 = load i32, ptr %status, align 4, !dbg !992
  %cmp72 = icmp eq i32 %61, 16396, !dbg !994
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !995

if.then74:                                        ; preds = %if.end71
  store i32 0, ptr %status, align 4, !dbg !996
  br label %if.end75, !dbg !998

if.end75:                                         ; preds = %if.then74, %if.end71
  %62 = load i32, ptr %status, align 4, !dbg !999
  %cmp76 = icmp eq i32 %62, 16387, !dbg !1001
  br i1 %cmp76, label %if.then78, label %if.end79, !dbg !1002

if.then78:                                        ; preds = %if.end75
  %63 = load i32, ptr %status, align 4, !dbg !1003
  store i32 %63, ptr %retval, align 4, !dbg !1003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1003

if.end79:                                         ; preds = %if.end75
  %64 = load ptr, ptr %walk_state.addr, align 8, !dbg !1005
  %65 = load i32, ptr %status, align 4, !dbg !1006
  %call80 = call i32 @acpi_ps_complete_op(ptr noundef %64, ptr noundef %op, i32 noundef %65) #6, !dbg !1007
  store i32 %call80, ptr %status, align 4, !dbg !1008
  %66 = load i32, ptr %status, align 4, !dbg !1009
  %tobool81 = icmp ne i32 %66, 0, !dbg !1009
  br i1 %tobool81, label %if.then82, label %if.end83, !dbg !1011

if.then82:                                        ; preds = %if.end79
  %67 = load i32, ptr %status, align 4, !dbg !1012
  store i32 %67, ptr %retval, align 4, !dbg !1012
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1012

if.end83:                                         ; preds = %if.end79
  %68 = load ptr, ptr %walk_state.addr, align 8, !dbg !1014
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %68, i32 0, i32 3, !dbg !1016
  %69 = load i16, ptr %opcode, align 2, !dbg !1016
  %call84 = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %69) #6, !dbg !1017
  %object_type = getelementptr inbounds %struct.acpi_opcode_info, ptr %call84, i32 0, i32 3, !dbg !1018
  %70 = load i8, ptr %object_type, align 2, !dbg !1018
  %conv85 = zext i8 %70 to i32, !dbg !1017
  %call86 = call i32 @acpi_ns_opens_scope(i32 noundef %conv85) #6, !dbg !1019
  %tobool87 = icmp ne i32 %call86, 0, !dbg !1019
  br i1 %tobool87, label %if.then88, label %if.end111, !dbg !1020

if.then88:                                        ; preds = %if.end83
  %71 = load ptr, ptr %walk_state.addr, align 8, !dbg !1021
  %opcode89 = getelementptr inbounds %struct.acpi_walk_state, ptr %71, i32 0, i32 3, !dbg !1021
  %72 = load i16, ptr %opcode89, align 2, !dbg !1021
  %call90 = call ptr @acpi_ps_get_opcode_name(i16 noundef zeroext %72) #6, !dbg !1021
  %73 = load ptr, ptr %walk_state.addr, align 8, !dbg !1021
  %opcode91 = getelementptr inbounds %struct.acpi_walk_state, ptr %73, i32 0, i32 3, !dbg !1021
  %74 = load i16, ptr %opcode91, align 2, !dbg !1021
  %conv92 = zext i16 %74 to i32, !dbg !1021
  call void (ptr, ...) @acpi_info(ptr noundef @.str.2, ptr noundef %call90, i32 noundef %conv92) #6, !dbg !1021
  store i8 1, ptr %opcode_length, align 1, !dbg !1023
  %75 = load ptr, ptr %walk_state.addr, align 8, !dbg !1024
  %opcode93 = getelementptr inbounds %struct.acpi_walk_state, ptr %75, i32 0, i32 3, !dbg !1026
  %76 = load i16, ptr %opcode93, align 2, !dbg !1026
  %conv94 = zext i16 %76 to i32, !dbg !1024
  %and95 = and i32 %conv94, 65280, !dbg !1027
  %cmp96 = icmp eq i32 %and95, 23296, !dbg !1028
  br i1 %cmp96, label %if.then98, label %if.end99, !dbg !1029

if.then98:                                        ; preds = %if.then88
  store i8 2, ptr %opcode_length, align 1, !dbg !1030
  br label %if.end99, !dbg !1032

if.end99:                                         ; preds = %if.then98, %if.then88
  %77 = load ptr, ptr %walk_state.addr, align 8, !dbg !1033
  %aml100 = getelementptr inbounds %struct.acpi_walk_state, ptr %77, i32 0, i32 16, !dbg !1034
  %78 = load ptr, ptr %aml100, align 8, !dbg !1034
  %79 = load i8, ptr %opcode_length, align 1, !dbg !1035
  %conv101 = zext i8 %79 to i32, !dbg !1035
  %idx.ext = sext i32 %conv101 to i64, !dbg !1036
  %add.ptr = getelementptr i8, ptr %78, i64 %idx.ext, !dbg !1036
  %80 = load ptr, ptr %walk_state.addr, align 8, !dbg !1037
  %parser_state102 = getelementptr inbounds %struct.acpi_walk_state, ptr %80, i32 0, i32 21, !dbg !1038
  %aml103 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state102, i32 0, i32 1, !dbg !1039
  store ptr %add.ptr, ptr %aml103, align 8, !dbg !1040
  %81 = load ptr, ptr %walk_state.addr, align 8, !dbg !1041
  %parser_state104 = getelementptr inbounds %struct.acpi_walk_state, ptr %81, i32 0, i32 21, !dbg !1042
  %call105 = call ptr @acpi_ps_get_next_package_end(ptr noundef %parser_state104) #6, !dbg !1043
  %82 = load ptr, ptr %walk_state.addr, align 8, !dbg !1044
  %parser_state106 = getelementptr inbounds %struct.acpi_walk_state, ptr %82, i32 0, i32 21, !dbg !1045
  %aml107 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state106, i32 0, i32 1, !dbg !1046
  store ptr %call105, ptr %aml107, align 8, !dbg !1047
  %83 = load ptr, ptr %walk_state.addr, align 8, !dbg !1048
  %parser_state108 = getelementptr inbounds %struct.acpi_walk_state, ptr %83, i32 0, i32 21, !dbg !1049
  %aml109 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state108, i32 0, i32 1, !dbg !1050
  %84 = load ptr, ptr %aml109, align 8, !dbg !1050
  %85 = load ptr, ptr %walk_state.addr, align 8, !dbg !1051
  %aml110 = getelementptr inbounds %struct.acpi_walk_state, ptr %85, i32 0, i32 16, !dbg !1052
  store ptr %84, ptr %aml110, align 8, !dbg !1053
  br label %if.end111, !dbg !1054

if.end111:                                        ; preds = %if.end99, %if.end83
  br label %while.cond, !dbg !1055, !llvm.loop !988

if.end112:                                        ; preds = %if.then54
  %86 = load ptr, ptr %op, align 8, !dbg !1056
  %87 = load ptr, ptr %walk_state.addr, align 8, !dbg !1057
  call void @acpi_ex_start_trace_opcode(ptr noundef %86, ptr noundef %87) #6, !dbg !1058
  br label %if.end113, !dbg !1059

if.end113:                                        ; preds = %if.end112, %while.body
  %88 = load ptr, ptr %walk_state.addr, align 8, !dbg !1060
  %arg_count114 = getelementptr inbounds %struct.acpi_walk_state, ptr %88, i32 0, i32 23, !dbg !1061
  store i32 0, ptr %arg_count114, align 4, !dbg !1062
  %89 = load ptr, ptr %op, align 8, !dbg !1063
  %aml_opcode115 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %89, i32 0, i32 3, !dbg !1064
  %90 = load i16, ptr %aml_opcode115, align 2, !dbg !1064
  %conv116 = zext i16 %90 to i32, !dbg !1063
  switch i32 %conv116, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 14, label %sw.bb
  ], !dbg !1065

sw.bb:                                            ; preds = %if.end113, %if.end113, %if.end113, %if.end113
  br label %sw.epilog, !dbg !1066

sw.default:                                       ; preds = %if.end113
  br label %sw.epilog, !dbg !1068

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %91 = load ptr, ptr %walk_state.addr, align 8, !dbg !1069
  %arg_types117 = getelementptr inbounds %struct.acpi_walk_state, ptr %91, i32 0, i32 17, !dbg !1071
  %92 = load i32, ptr %arg_types117, align 8, !dbg !1071
  %tobool118 = icmp ne i32 %92, 0, !dbg !1069
  br i1 %tobool118, label %if.then119, label %if.end168, !dbg !1072

if.then119:                                       ; preds = %sw.epilog
  %93 = load ptr, ptr %walk_state.addr, align 8, !dbg !1073
  %94 = load ptr, ptr %aml_op_start, align 8, !dbg !1075
  %95 = load ptr, ptr %op, align 8, !dbg !1076
  %call120 = call i32 @acpi_ps_get_arguments(ptr noundef %93, ptr noundef %94, ptr noundef %95) #6, !dbg !1077
  store i32 %call120, ptr %status, align 4, !dbg !1078
  %96 = load i32, ptr %status, align 4, !dbg !1079
  %tobool121 = icmp ne i32 %96, 0, !dbg !1079
  br i1 %tobool121, label %if.then122, label %if.end167, !dbg !1081

if.then122:                                       ; preds = %if.then119
  %97 = load ptr, ptr %walk_state.addr, align 8, !dbg !1082
  %98 = load i32, ptr %status, align 4, !dbg !1084
  %call123 = call i32 @acpi_ps_complete_op(ptr noundef %97, ptr noundef %op, i32 noundef %98) #6, !dbg !1085
  store i32 %call123, ptr %status, align 4, !dbg !1086
  %99 = load i32, ptr %status, align 4, !dbg !1087
  %tobool124 = icmp ne i32 %99, 0, !dbg !1087
  br i1 %tobool124, label %if.then125, label %if.end126, !dbg !1089

if.then125:                                       ; preds = %if.then122
  %100 = load i32, ptr %status, align 4, !dbg !1090
  store i32 %100, ptr %retval, align 4, !dbg !1090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1090

if.end126:                                        ; preds = %if.then122
  %101 = load ptr, ptr %walk_state.addr, align 8, !dbg !1092
  %control_state127 = getelementptr inbounds %struct.acpi_walk_state, ptr %101, i32 0, i32 32, !dbg !1094
  %102 = load ptr, ptr %control_state127, align 8, !dbg !1094
  %tobool128 = icmp ne ptr %102, null, !dbg !1095
  br i1 %tobool128, label %land.lhs.true129, label %if.end166, !dbg !1096

land.lhs.true129:                                 ; preds = %if.end126
  %103 = load ptr, ptr %walk_state.addr, align 8, !dbg !1097
  %control_state130 = getelementptr inbounds %struct.acpi_walk_state, ptr %103, i32 0, i32 32, !dbg !1098
  %104 = load ptr, ptr %control_state130, align 8, !dbg !1098
  %opcode131 = getelementptr inbounds %struct.acpi_control_state, ptr %104, i32 0, i32 5, !dbg !1099
  %105 = load i16, ptr %opcode131, align 2, !dbg !1099
  %conv132 = zext i16 %105 to i32, !dbg !1097
  %cmp133 = icmp eq i32 %conv132, 160, !dbg !1100
  br i1 %cmp133, label %if.then141, label %lor.lhs.false135, !dbg !1101

lor.lhs.false135:                                 ; preds = %land.lhs.true129
  %106 = load ptr, ptr %walk_state.addr, align 8, !dbg !1102
  %control_state136 = getelementptr inbounds %struct.acpi_walk_state, ptr %106, i32 0, i32 32, !dbg !1103
  %107 = load ptr, ptr %control_state136, align 8, !dbg !1103
  %opcode137 = getelementptr inbounds %struct.acpi_control_state, ptr %107, i32 0, i32 5, !dbg !1104
  %108 = load i16, ptr %opcode137, align 2, !dbg !1104
  %conv138 = zext i16 %108 to i32, !dbg !1102
  %cmp139 = icmp eq i32 %conv138, 162, !dbg !1105
  br i1 %cmp139, label %if.then141, label %if.end166, !dbg !1106

if.then141:                                       ; preds = %lor.lhs.false135, %land.lhs.true129
  %109 = load ptr, ptr %walk_state.addr, align 8, !dbg !1107
  %control_state142 = getelementptr inbounds %struct.acpi_walk_state, ptr %109, i32 0, i32 32, !dbg !1109
  %110 = load ptr, ptr %control_state142, align 8, !dbg !1109
  %aml_predicate_start = getelementptr inbounds %struct.acpi_control_state, ptr %110, i32 0, i32 7, !dbg !1110
  %111 = load ptr, ptr %aml_predicate_start, align 8, !dbg !1110
  %add.ptr143 = getelementptr i8, ptr %111, i64 1, !dbg !1111
  %112 = load ptr, ptr %parser_state, align 8, !dbg !1112
  %aml144 = getelementptr inbounds %struct.acpi_parse_state, ptr %112, i32 0, i32 1, !dbg !1113
  store ptr %add.ptr143, ptr %aml144, align 8, !dbg !1114
  %113 = load ptr, ptr %parser_state, align 8, !dbg !1115
  %call145 = call ptr @acpi_ps_get_next_package_end(ptr noundef %113) #6, !dbg !1116
  %114 = load ptr, ptr %parser_state, align 8, !dbg !1117
  %aml146 = getelementptr inbounds %struct.acpi_parse_state, ptr %114, i32 0, i32 1, !dbg !1118
  store ptr %call145, ptr %aml146, align 8, !dbg !1119
  %115 = load ptr, ptr %parser_state, align 8, !dbg !1120
  %aml147 = getelementptr inbounds %struct.acpi_parse_state, ptr %115, i32 0, i32 1, !dbg !1121
  %116 = load ptr, ptr %aml147, align 8, !dbg !1121
  %117 = load ptr, ptr %walk_state.addr, align 8, !dbg !1122
  %aml148 = getelementptr inbounds %struct.acpi_walk_state, ptr %117, i32 0, i32 16, !dbg !1123
  store ptr %116, ptr %aml148, align 8, !dbg !1124
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 426, ptr noundef @.str.3) #6, !dbg !1125
  %118 = load ptr, ptr %walk_state.addr, align 8, !dbg !1126
  %aml149 = getelementptr inbounds %struct.acpi_walk_state, ptr %118, i32 0, i32 16, !dbg !1128
  %119 = load ptr, ptr %aml149, align 8, !dbg !1128
  %120 = load i8, ptr %119, align 1, !dbg !1129
  %conv150 = zext i8 %120 to i32, !dbg !1129
  %cmp151 = icmp eq i32 %conv150, 161, !dbg !1130
  br i1 %cmp151, label %if.then153, label %if.end163, !dbg !1131

if.then153:                                       ; preds = %if.then141
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 429, ptr noundef @.str.4) #6, !dbg !1132
  %121 = load ptr, ptr %walk_state.addr, align 8, !dbg !1134
  %aml154 = getelementptr inbounds %struct.acpi_walk_state, ptr %121, i32 0, i32 16, !dbg !1135
  %122 = load ptr, ptr %aml154, align 8, !dbg !1135
  %add.ptr155 = getelementptr i8, ptr %122, i64 1, !dbg !1136
  %123 = load ptr, ptr %walk_state.addr, align 8, !dbg !1137
  %parser_state156 = getelementptr inbounds %struct.acpi_walk_state, ptr %123, i32 0, i32 21, !dbg !1138
  %aml157 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state156, i32 0, i32 1, !dbg !1139
  store ptr %add.ptr155, ptr %aml157, align 8, !dbg !1140
  %124 = load ptr, ptr %parser_state, align 8, !dbg !1141
  %call158 = call ptr @acpi_ps_get_next_package_end(ptr noundef %124) #6, !dbg !1142
  %125 = load ptr, ptr %walk_state.addr, align 8, !dbg !1143
  %parser_state159 = getelementptr inbounds %struct.acpi_walk_state, ptr %125, i32 0, i32 21, !dbg !1144
  %aml160 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state159, i32 0, i32 1, !dbg !1145
  store ptr %call158, ptr %aml160, align 8, !dbg !1146
  %126 = load ptr, ptr %parser_state, align 8, !dbg !1147
  %aml161 = getelementptr inbounds %struct.acpi_parse_state, ptr %126, i32 0, i32 1, !dbg !1148
  %127 = load ptr, ptr %aml161, align 8, !dbg !1148
  %128 = load ptr, ptr %walk_state.addr, align 8, !dbg !1149
  %aml162 = getelementptr inbounds %struct.acpi_walk_state, ptr %128, i32 0, i32 16, !dbg !1150
  store ptr %127, ptr %aml162, align 8, !dbg !1151
  br label %if.end163, !dbg !1152

if.end163:                                        ; preds = %if.then153, %if.then141
  %129 = load ptr, ptr %walk_state.addr, align 8, !dbg !1153
  %control_state164 = getelementptr inbounds %struct.acpi_walk_state, ptr %129, i32 0, i32 32, !dbg !1153
  %call165 = call ptr @acpi_ut_pop_generic_state(ptr noundef %control_state164) #6, !dbg !1153
  call void @acpi_os_free(ptr noundef %call165) #6, !dbg !1153
  br label %if.end166, !dbg !1154

if.end166:                                        ; preds = %if.end163, %lor.lhs.false135, %if.end126
  store ptr null, ptr %op, align 8, !dbg !1155
  br label %while.cond, !dbg !1156, !llvm.loop !988

if.end167:                                        ; preds = %if.then119
  br label %if.end168, !dbg !1157

if.end168:                                        ; preds = %if.end167, %sw.epilog
  %130 = load ptr, ptr %walk_state.addr, align 8, !dbg !1158
  %arg_count169 = getelementptr inbounds %struct.acpi_walk_state, ptr %130, i32 0, i32 23, !dbg !1160
  %131 = load i32, ptr %arg_count169, align 4, !dbg !1160
  %tobool170 = icmp ne i32 %131, 0, !dbg !1158
  br i1 %tobool170, label %if.then171, label %if.end182, !dbg !1161

if.then171:                                       ; preds = %if.end168
  %132 = load ptr, ptr %parser_state, align 8, !dbg !1162
  %133 = load ptr, ptr %op, align 8, !dbg !1164
  %134 = load ptr, ptr %walk_state.addr, align 8, !dbg !1165
  %arg_types172 = getelementptr inbounds %struct.acpi_walk_state, ptr %134, i32 0, i32 17, !dbg !1166
  %135 = load i32, ptr %arg_types172, align 8, !dbg !1166
  %136 = load ptr, ptr %walk_state.addr, align 8, !dbg !1167
  %arg_count173 = getelementptr inbounds %struct.acpi_walk_state, ptr %136, i32 0, i32 23, !dbg !1168
  %137 = load i32, ptr %arg_count173, align 4, !dbg !1168
  %call174 = call i32 @acpi_ps_push_scope(ptr noundef %132, ptr noundef %133, i32 noundef %135, i32 noundef %137) #6, !dbg !1169
  store i32 %call174, ptr %status, align 4, !dbg !1170
  %138 = load i32, ptr %status, align 4, !dbg !1171
  %tobool175 = icmp ne i32 %138, 0, !dbg !1171
  br i1 %tobool175, label %if.then176, label %if.end181, !dbg !1173

if.then176:                                       ; preds = %if.then171
  %139 = load ptr, ptr %walk_state.addr, align 8, !dbg !1174
  %140 = load i32, ptr %status, align 4, !dbg !1176
  %call177 = call i32 @acpi_ps_complete_op(ptr noundef %139, ptr noundef %op, i32 noundef %140) #6, !dbg !1177
  store i32 %call177, ptr %status, align 4, !dbg !1178
  %141 = load i32, ptr %status, align 4, !dbg !1179
  %tobool178 = icmp ne i32 %141, 0, !dbg !1179
  br i1 %tobool178, label %if.then179, label %if.end180, !dbg !1181

if.then179:                                       ; preds = %if.then176
  %142 = load i32, ptr %status, align 4, !dbg !1182
  store i32 %142, ptr %retval, align 4, !dbg !1182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1182

if.end180:                                        ; preds = %if.then176
  br label %while.cond, !dbg !1184, !llvm.loop !988

if.end181:                                        ; preds = %if.then171
  store ptr null, ptr %op, align 8, !dbg !1185
  br label %while.cond, !dbg !1186, !llvm.loop !988

if.end182:                                        ; preds = %if.end168
  %143 = load ptr, ptr %op, align 8, !dbg !1187
  %aml_opcode183 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %143, i32 0, i32 3, !dbg !1188
  %144 = load i16, ptr %aml_opcode183, align 2, !dbg !1188
  %call184 = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %144) #6, !dbg !1189
  %145 = load ptr, ptr %walk_state.addr, align 8, !dbg !1190
  %op_info = getelementptr inbounds %struct.acpi_walk_state, ptr %145, i32 0, i32 41, !dbg !1191
  store ptr %call184, ptr %op_info, align 8, !dbg !1192
  %146 = load ptr, ptr %walk_state.addr, align 8, !dbg !1193
  %op_info185 = getelementptr inbounds %struct.acpi_walk_state, ptr %146, i32 0, i32 41, !dbg !1195
  %147 = load ptr, ptr %op_info185, align 8, !dbg !1195
  %flags = getelementptr inbounds %struct.acpi_opcode_info, ptr %147, i32 0, i32 2, !dbg !1196
  %148 = load i16, ptr %flags, align 4, !dbg !1196
  %conv186 = zext i16 %148 to i32, !dbg !1193
  %and187 = and i32 %conv186, 64, !dbg !1197
  %tobool188 = icmp ne i32 %and187, 0, !dbg !1197
  br i1 %tobool188, label %if.then189, label %if.end203, !dbg !1198

if.then189:                                       ; preds = %if.end182
  %149 = load ptr, ptr %op, align 8, !dbg !1199
  %aml_opcode190 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %149, i32 0, i32 3, !dbg !1202
  %150 = load i16, ptr %aml_opcode190, align 2, !dbg !1202
  %conv191 = zext i16 %150 to i32, !dbg !1199
  %cmp192 = icmp eq i32 %conv191, 23424, !dbg !1203
  br i1 %cmp192, label %if.then199, label %lor.lhs.false194, !dbg !1204

lor.lhs.false194:                                 ; preds = %if.then189
  %151 = load ptr, ptr %op, align 8, !dbg !1205
  %aml_opcode195 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %151, i32 0, i32 3, !dbg !1206
  %152 = load i16, ptr %aml_opcode195, align 2, !dbg !1206
  %conv196 = zext i16 %152 to i32, !dbg !1205
  %cmp197 = icmp eq i32 %conv196, 23432, !dbg !1207
  br i1 %cmp197, label %if.then199, label %if.end202, !dbg !1208

if.then199:                                       ; preds = %lor.lhs.false194, %if.then189
  %153 = load ptr, ptr %parser_state, align 8, !dbg !1209
  %aml200 = getelementptr inbounds %struct.acpi_parse_state, ptr %153, i32 0, i32 1, !dbg !1211
  %154 = load ptr, ptr %aml200, align 8, !dbg !1211
  %155 = load ptr, ptr %op, align 8, !dbg !1212
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %155, i32 0, i32 10, !dbg !1213
  %156 = load ptr, ptr %data, align 8, !dbg !1213
  %sub.ptr.lhs.cast = ptrtoint ptr %154 to i64, !dbg !1214
  %sub.ptr.rhs.cast = ptrtoint ptr %156 to i64, !dbg !1214
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1214
  %conv201 = trunc i64 %sub.ptr.sub to i32, !dbg !1215
  %157 = load ptr, ptr %op, align 8, !dbg !1216
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %157, i32 0, i32 11, !dbg !1217
  store i32 %conv201, ptr %length, align 8, !dbg !1218
  br label %if.end202, !dbg !1219

if.end202:                                        ; preds = %if.then199, %lor.lhs.false194
  br label %if.end203, !dbg !1220

if.end203:                                        ; preds = %if.end202, %if.end182
  %158 = load ptr, ptr %walk_state.addr, align 8, !dbg !1221
  %op_info204 = getelementptr inbounds %struct.acpi_walk_state, ptr %158, i32 0, i32 41, !dbg !1223
  %159 = load ptr, ptr %op_info204, align 8, !dbg !1223
  %flags205 = getelementptr inbounds %struct.acpi_opcode_info, ptr %159, i32 0, i32 2, !dbg !1224
  %160 = load i16, ptr %flags205, align 4, !dbg !1224
  %conv206 = zext i16 %160 to i32, !dbg !1221
  %and207 = and i32 %conv206, 8, !dbg !1225
  %tobool208 = icmp ne i32 %and207, 0, !dbg !1225
  br i1 %tobool208, label %if.then209, label %if.end217, !dbg !1226

if.then209:                                       ; preds = %if.end203
  %161 = load ptr, ptr %parser_state, align 8, !dbg !1227
  %aml210 = getelementptr inbounds %struct.acpi_parse_state, ptr %161, i32 0, i32 1, !dbg !1229
  %162 = load ptr, ptr %aml210, align 8, !dbg !1229
  %163 = load ptr, ptr %op, align 8, !dbg !1230
  %data211 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %163, i32 0, i32 10, !dbg !1231
  %164 = load ptr, ptr %data211, align 8, !dbg !1231
  %sub.ptr.lhs.cast212 = ptrtoint ptr %162 to i64, !dbg !1232
  %sub.ptr.rhs.cast213 = ptrtoint ptr %164 to i64, !dbg !1232
  %sub.ptr.sub214 = sub i64 %sub.ptr.lhs.cast212, %sub.ptr.rhs.cast213, !dbg !1232
  %conv215 = trunc i64 %sub.ptr.sub214 to i32, !dbg !1233
  %165 = load ptr, ptr %op, align 8, !dbg !1234
  %length216 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %165, i32 0, i32 11, !dbg !1235
  store i32 %conv215, ptr %length216, align 8, !dbg !1236
  br label %if.end217, !dbg !1237

if.end217:                                        ; preds = %if.then209, %if.end203
  %166 = load ptr, ptr %op, align 8, !dbg !1238
  %aml_opcode218 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %166, i32 0, i32 3, !dbg !1240
  %167 = load i16, ptr %aml_opcode218, align 2, !dbg !1240
  %conv219 = zext i16 %167 to i32, !dbg !1238
  %cmp220 = icmp eq i32 %conv219, 23431, !dbg !1241
  br i1 %cmp220, label %if.then222, label %if.end230, !dbg !1242

if.then222:                                       ; preds = %if.end217
  %168 = load ptr, ptr %parser_state, align 8, !dbg !1243
  %aml223 = getelementptr inbounds %struct.acpi_parse_state, ptr %168, i32 0, i32 1, !dbg !1245
  %169 = load ptr, ptr %aml223, align 8, !dbg !1245
  %170 = load ptr, ptr %op, align 8, !dbg !1246
  %data224 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %170, i32 0, i32 10, !dbg !1247
  %171 = load ptr, ptr %data224, align 8, !dbg !1247
  %sub.ptr.lhs.cast225 = ptrtoint ptr %169 to i64, !dbg !1248
  %sub.ptr.rhs.cast226 = ptrtoint ptr %171 to i64, !dbg !1248
  %sub.ptr.sub227 = sub i64 %sub.ptr.lhs.cast225, %sub.ptr.rhs.cast226, !dbg !1248
  %conv228 = trunc i64 %sub.ptr.sub227 to i32, !dbg !1249
  %172 = load ptr, ptr %op, align 8, !dbg !1250
  %length229 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %172, i32 0, i32 11, !dbg !1251
  store i32 %conv228, ptr %length229, align 8, !dbg !1252
  br label %if.end230, !dbg !1253

if.end230:                                        ; preds = %if.then222, %if.end217
  %173 = load ptr, ptr %walk_state.addr, align 8, !dbg !1254
  %ascending_callback = getelementptr inbounds %struct.acpi_walk_state, ptr %173, i32 0, i32 51, !dbg !1256
  %174 = load ptr, ptr %ascending_callback, align 8, !dbg !1256
  %cmp231 = icmp ne ptr %174, null, !dbg !1257
  br i1 %cmp231, label %if.then233, label %if.end260, !dbg !1258

if.then233:                                       ; preds = %if.end230
  %175 = load ptr, ptr %op, align 8, !dbg !1259
  %176 = load ptr, ptr %walk_state.addr, align 8, !dbg !1261
  %op234 = getelementptr inbounds %struct.acpi_walk_state, ptr %176, i32 0, i32 40, !dbg !1262
  store ptr %175, ptr %op234, align 8, !dbg !1263
  %177 = load ptr, ptr %op, align 8, !dbg !1264
  %aml_opcode235 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %177, i32 0, i32 3, !dbg !1265
  %178 = load i16, ptr %aml_opcode235, align 2, !dbg !1265
  %179 = load ptr, ptr %walk_state.addr, align 8, !dbg !1266
  %opcode236 = getelementptr inbounds %struct.acpi_walk_state, ptr %179, i32 0, i32 3, !dbg !1267
  store i16 %178, ptr %opcode236, align 2, !dbg !1268
  %180 = load ptr, ptr %walk_state.addr, align 8, !dbg !1269
  %ascending_callback237 = getelementptr inbounds %struct.acpi_walk_state, ptr %180, i32 0, i32 51, !dbg !1270
  %181 = load ptr, ptr %ascending_callback237, align 8, !dbg !1270
  %182 = load ptr, ptr %walk_state.addr, align 8, !dbg !1271
  %call238 = call i32 %181(ptr noundef %182) #6, !dbg !1269
  store i32 %call238, ptr %status, align 4, !dbg !1272
  %183 = load ptr, ptr %walk_state.addr, align 8, !dbg !1273
  %184 = load ptr, ptr %op, align 8, !dbg !1274
  %185 = load i32, ptr %status, align 4, !dbg !1275
  %call239 = call i32 @acpi_ps_next_parse_state(ptr noundef %183, ptr noundef %184, i32 noundef %185) #6, !dbg !1276
  store i32 %call239, ptr %status, align 4, !dbg !1277
  %186 = load i32, ptr %status, align 4, !dbg !1278
  %cmp240 = icmp eq i32 %186, 16386, !dbg !1280
  br i1 %cmp240, label %if.then242, label %if.else243, !dbg !1281

if.then242:                                       ; preds = %if.then233
  store i32 0, ptr %status, align 4, !dbg !1282
  br label %if.end259, !dbg !1284

if.else243:                                       ; preds = %if.then233
  %187 = load ptr, ptr %walk_state.addr, align 8, !dbg !1285
  %parse_flags244 = getelementptr inbounds %struct.acpi_walk_state, ptr %187, i32 0, i32 20, !dbg !1287
  %188 = load i32, ptr %parse_flags244, align 4, !dbg !1287
  %and245 = and i32 %188, 1024, !dbg !1288
  %tobool246 = icmp ne i32 %and245, 0, !dbg !1288
  br i1 %tobool246, label %land.lhs.true247, label %if.end258, !dbg !1289

land.lhs.true247:                                 ; preds = %if.else243
  %189 = load i32, ptr %status, align 4, !dbg !1290
  %and248 = and i32 %189, 61440, !dbg !1290
  %cmp249 = icmp eq i32 %and248, 12288, !dbg !1290
  br i1 %cmp249, label %if.then257, label %lor.lhs.false251, !dbg !1291

lor.lhs.false251:                                 ; preds = %land.lhs.true247
  %190 = load i32, ptr %status, align 4, !dbg !1292
  %cmp252 = icmp eq i32 %190, 7, !dbg !1293
  br i1 %cmp252, label %if.then257, label %lor.lhs.false254, !dbg !1294

lor.lhs.false254:                                 ; preds = %lor.lhs.false251
  %191 = load i32, ptr %status, align 4, !dbg !1295
  %cmp255 = icmp eq i32 %191, 5, !dbg !1296
  br i1 %cmp255, label %if.then257, label %if.end258, !dbg !1297

if.then257:                                       ; preds = %lor.lhs.false254, %lor.lhs.false251, %land.lhs.true247
  store i32 0, ptr %status, align 4, !dbg !1298
  br label %if.end258, !dbg !1300

if.end258:                                        ; preds = %if.then257, %lor.lhs.false254, %if.else243
  br label %if.end259

if.end259:                                        ; preds = %if.end258, %if.then242
  br label %if.end260, !dbg !1301

if.end260:                                        ; preds = %if.end259, %if.end230
  %192 = load ptr, ptr %walk_state.addr, align 8, !dbg !1302
  %193 = load i32, ptr %status, align 4, !dbg !1303
  %call261 = call i32 @acpi_ps_complete_op(ptr noundef %192, ptr noundef %op, i32 noundef %193) #6, !dbg !1304
  store i32 %call261, ptr %status, align 4, !dbg !1305
  %194 = load i32, ptr %status, align 4, !dbg !1306
  %tobool262 = icmp ne i32 %194, 0, !dbg !1306
  br i1 %tobool262, label %if.then263, label %if.end264, !dbg !1308

if.then263:                                       ; preds = %if.end260
  %195 = load i32, ptr %status, align 4, !dbg !1309
  store i32 %195, ptr %retval, align 4, !dbg !1309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1309

if.end264:                                        ; preds = %if.end260
  br label %while.cond, !dbg !944, !llvm.loop !988

while.end:                                        ; preds = %lor.end
  %196 = load ptr, ptr %walk_state.addr, align 8, !dbg !1311
  %197 = load ptr, ptr %op, align 8, !dbg !1312
  %198 = load i32, ptr %status, align 4, !dbg !1313
  %call265 = call i32 @acpi_ps_complete_final_op(ptr noundef %196, ptr noundef %197, i32 noundef %198) #6, !dbg !1314
  store i32 %call265, ptr %status, align 4, !dbg !1315
  %199 = load i32, ptr %status, align 4, !dbg !1316
  store i32 %199, ptr %retval, align 4, !dbg !1316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1316

cleanup:                                          ; preds = %while.end, %if.then263, %if.then179, %if.then125, %if.then82, %if.then78, %if.end37, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %opcode_length) #5, !dbg !1317
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml_op_start) #5, !dbg !1317
  call void @llvm.lifetime.end.p0(i64 8, ptr %parser_state) #5, !dbg !1317
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #5, !dbg !1317
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1317
  %200 = load i32, ptr %retval, align 4, !dbg !1317
  ret i32 %200, !dbg !1317
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1318 dso_local zeroext i8 @acpi_ps_has_completed_scope(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1322 dso_local i32 @acpi_ds_get_predicate_value(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1326 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1331 dso_local i32 @acpi_ps_next_parse_state(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1334 dso_local void @acpi_ps_pop_scope(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1338 dso_local i32 @acpi_ps_create_op(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1341 dso_local i32 @acpi_ps_complete_op(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1344 dso_local i32 @acpi_ns_opens_scope(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1349 dso_local ptr @acpi_ps_get_opcode_info(i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1352 dso_local void @acpi_info(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1355 dso_local ptr @acpi_ps_get_opcode_name(i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1358 dso_local ptr @acpi_ps_get_next_package_end(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1361 dso_local void @acpi_ex_start_trace_opcode(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ps_get_arguments(ptr noundef %walk_state, ptr noundef %aml_op_start, ptr noundef %op) #0 align 16 !dbg !1365 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %aml_op_start.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %arg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1369, metadata !DIExpression()), !dbg !1374
  store ptr %aml_op_start, ptr %aml_op_start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml_op_start.addr, metadata !1370, metadata !DIExpression()), !dbg !1375
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1371, metadata !DIExpression()), !dbg !1376
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1377
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1372, metadata !DIExpression()), !dbg !1378
  store i32 0, ptr %status, align 4, !dbg !1378
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #5, !dbg !1379
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !1373, metadata !DIExpression()), !dbg !1380
  store ptr null, ptr %arg, align 8, !dbg !1380
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1381
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 3, !dbg !1382
  %1 = load i16, ptr %aml_opcode, align 2, !dbg !1382
  %conv = zext i16 %1 to i32, !dbg !1381
  switch i32 %conv, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 14, label %sw.bb
    i32 13, label %sw.bb
    i32 45, label %sw.bb1
  ], !dbg !1383

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1384
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 21, !dbg !1386
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1387
  %arg_types = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 17, !dbg !1387
  %4 = load i32, ptr %arg_types, align 8, !dbg !1387
  %and = and i32 %4, 31, !dbg !1387
  %5 = load ptr, ptr %op.addr, align 8, !dbg !1388
  call void @acpi_ps_get_next_simple_arg(ptr noundef %parser_state, i32 noundef %and, ptr noundef %5) #6, !dbg !1389
  br label %sw.epilog73, !dbg !1390

sw.bb1:                                           ; preds = %entry
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !1391
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !1392
  %parser_state2 = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 21, !dbg !1393
  %8 = load ptr, ptr %op.addr, align 8, !dbg !1394
  %call = call i32 @acpi_ps_get_next_namepath(ptr noundef %6, ptr noundef %parser_state2, ptr noundef %8, i8 noundef zeroext 1) #6, !dbg !1395
  store i32 %call, ptr %status, align 4, !dbg !1396
  %9 = load i32, ptr %status, align 4, !dbg !1397
  %tobool = icmp ne i32 %9, 0, !dbg !1397
  br i1 %tobool, label %if.then, label %if.end, !dbg !1399

if.then:                                          ; preds = %sw.bb1
  %10 = load i32, ptr %status, align 4, !dbg !1400
  store i32 %10, ptr %retval, align 4, !dbg !1400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1400

if.end:                                           ; preds = %sw.bb1
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !1402
  %arg_types3 = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 17, !dbg !1403
  store i32 0, ptr %arg_types3, align 8, !dbg !1404
  br label %sw.epilog73, !dbg !1405

sw.default:                                       ; preds = %entry
  br label %while.cond, !dbg !1406

while.cond:                                       ; preds = %if.end23, %sw.default
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !1407
  %arg_types4 = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 17, !dbg !1407
  %13 = load i32, ptr %arg_types4, align 8, !dbg !1407
  %and5 = and i32 %13, 31, !dbg !1407
  %tobool6 = icmp ne i32 %and5, 0, !dbg !1407
  br i1 %tobool6, label %land.rhs, label %land.end, !dbg !1408

land.rhs:                                         ; preds = %while.cond
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !1409
  %arg_count = getelementptr inbounds %struct.acpi_walk_state, ptr %14, i32 0, i32 23, !dbg !1410
  %15 = load i32, ptr %arg_count, align 4, !dbg !1410
  %tobool7 = icmp ne i32 %15, 0, !dbg !1411
  %lnot = xor i1 %tobool7, true, !dbg !1411
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !1412
  br i1 %16, label %while.body, label %while.end, !dbg !1406

while.body:                                       ; preds = %land.end
  %17 = load ptr, ptr %walk_state.addr, align 8, !dbg !1413
  %parser_state8 = getelementptr inbounds %struct.acpi_walk_state, ptr %17, i32 0, i32 21, !dbg !1415
  %aml = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state8, i32 0, i32 1, !dbg !1416
  %18 = load ptr, ptr %aml, align 8, !dbg !1416
  %19 = load ptr, ptr %walk_state.addr, align 8, !dbg !1417
  %aml9 = getelementptr inbounds %struct.acpi_walk_state, ptr %19, i32 0, i32 16, !dbg !1418
  store ptr %18, ptr %aml9, align 8, !dbg !1419
  %20 = load ptr, ptr %op.addr, align 8, !dbg !1420
  %aml_opcode10 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %20, i32 0, i32 3, !dbg !1421
  %21 = load i16, ptr %aml_opcode10, align 2, !dbg !1421
  %conv11 = zext i16 %21 to i32, !dbg !1420
  switch i32 %conv11, label %sw.default13 [
    i32 20, label %sw.bb12
    i32 17, label %sw.bb12
    i32 18, label %sw.bb12
    i32 19, label %sw.bb12
    i32 162, label %sw.bb12
  ], !dbg !1422

sw.bb12:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body
  br label %sw.epilog, !dbg !1423

sw.default13:                                     ; preds = %while.body
  br label %sw.epilog, !dbg !1425

sw.epilog:                                        ; preds = %sw.default13, %sw.bb12
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !1426
  %23 = load ptr, ptr %walk_state.addr, align 8, !dbg !1427
  %parser_state14 = getelementptr inbounds %struct.acpi_walk_state, ptr %23, i32 0, i32 21, !dbg !1428
  %24 = load ptr, ptr %walk_state.addr, align 8, !dbg !1429
  %arg_types15 = getelementptr inbounds %struct.acpi_walk_state, ptr %24, i32 0, i32 17, !dbg !1429
  %25 = load i32, ptr %arg_types15, align 8, !dbg !1429
  %and16 = and i32 %25, 31, !dbg !1429
  %call17 = call i32 @acpi_ps_get_next_arg(ptr noundef %22, ptr noundef %parser_state14, i32 noundef %and16, ptr noundef %arg) #6, !dbg !1430
  store i32 %call17, ptr %status, align 4, !dbg !1431
  %26 = load i32, ptr %status, align 4, !dbg !1432
  %tobool18 = icmp ne i32 %26, 0, !dbg !1432
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !1434

if.then19:                                        ; preds = %sw.epilog
  %27 = load i32, ptr %status, align 4, !dbg !1435
  store i32 %27, ptr %retval, align 4, !dbg !1435
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1435

if.end20:                                         ; preds = %sw.epilog
  %28 = load ptr, ptr %arg, align 8, !dbg !1437
  %tobool21 = icmp ne ptr %28, null, !dbg !1437
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !1439

if.then22:                                        ; preds = %if.end20
  %29 = load ptr, ptr %op.addr, align 8, !dbg !1440
  %30 = load ptr, ptr %arg, align 8, !dbg !1442
  call void @acpi_ps_append_arg(ptr noundef %29, ptr noundef %30) #6, !dbg !1443
  br label %if.end23, !dbg !1444

if.end23:                                         ; preds = %if.then22, %if.end20
  %31 = load ptr, ptr %walk_state.addr, align 8, !dbg !1445
  %arg_types24 = getelementptr inbounds %struct.acpi_walk_state, ptr %31, i32 0, i32 17, !dbg !1445
  %32 = load i32, ptr %arg_types24, align 8, !dbg !1445
  %shr = lshr i32 %32, 5, !dbg !1445
  store i32 %shr, ptr %arg_types24, align 8, !dbg !1445
  br label %while.cond, !dbg !1406, !llvm.loop !1446

while.end:                                        ; preds = %land.end
  %33 = load ptr, ptr %op.addr, align 8, !dbg !1448
  %aml_opcode25 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %33, i32 0, i32 3, !dbg !1449
  %34 = load i16, ptr %aml_opcode25, align 2, !dbg !1449
  %conv26 = zext i16 %34 to i32, !dbg !1448
  switch i32 %conv26, label %sw.default71 [
    i32 20, label %sw.bb27
    i32 17, label %sw.bb39
    i32 18, label %sw.bb39
    i32 19, label %sw.bb39
    i32 162, label %sw.bb64
  ], !dbg !1450

sw.bb27:                                          ; preds = %while.end
  %35 = load ptr, ptr %walk_state.addr, align 8, !dbg !1451
  %parser_state28 = getelementptr inbounds %struct.acpi_walk_state, ptr %35, i32 0, i32 21, !dbg !1453
  %aml29 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state28, i32 0, i32 1, !dbg !1454
  %36 = load ptr, ptr %aml29, align 8, !dbg !1454
  %37 = load ptr, ptr %op.addr, align 8, !dbg !1455
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %37, i32 0, i32 10, !dbg !1456
  store ptr %36, ptr %data, align 8, !dbg !1457
  %38 = load ptr, ptr %walk_state.addr, align 8, !dbg !1458
  %parser_state30 = getelementptr inbounds %struct.acpi_walk_state, ptr %38, i32 0, i32 21, !dbg !1459
  %pkg_end = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state30, i32 0, i32 4, !dbg !1460
  %39 = load ptr, ptr %pkg_end, align 8, !dbg !1460
  %40 = load ptr, ptr %walk_state.addr, align 8, !dbg !1461
  %parser_state31 = getelementptr inbounds %struct.acpi_walk_state, ptr %40, i32 0, i32 21, !dbg !1462
  %aml32 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state31, i32 0, i32 1, !dbg !1463
  %41 = load ptr, ptr %aml32, align 8, !dbg !1463
  %sub.ptr.lhs.cast = ptrtoint ptr %39 to i64, !dbg !1464
  %sub.ptr.rhs.cast = ptrtoint ptr %41 to i64, !dbg !1464
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1464
  %conv33 = trunc i64 %sub.ptr.sub to i32, !dbg !1465
  %42 = load ptr, ptr %op.addr, align 8, !dbg !1466
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %42, i32 0, i32 11, !dbg !1467
  store i32 %conv33, ptr %length, align 8, !dbg !1468
  %43 = load ptr, ptr %walk_state.addr, align 8, !dbg !1469
  %parser_state34 = getelementptr inbounds %struct.acpi_walk_state, ptr %43, i32 0, i32 21, !dbg !1470
  %pkg_end35 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state34, i32 0, i32 4, !dbg !1471
  %44 = load ptr, ptr %pkg_end35, align 8, !dbg !1471
  %45 = load ptr, ptr %walk_state.addr, align 8, !dbg !1472
  %parser_state36 = getelementptr inbounds %struct.acpi_walk_state, ptr %45, i32 0, i32 21, !dbg !1473
  %aml37 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state36, i32 0, i32 1, !dbg !1474
  store ptr %44, ptr %aml37, align 8, !dbg !1475
  %46 = load ptr, ptr %walk_state.addr, align 8, !dbg !1476
  %arg_count38 = getelementptr inbounds %struct.acpi_walk_state, ptr %46, i32 0, i32 23, !dbg !1477
  store i32 0, ptr %arg_count38, align 4, !dbg !1478
  br label %sw.epilog72, !dbg !1479

sw.bb39:                                          ; preds = %while.end, %while.end, %while.end
  %47 = load ptr, ptr %op.addr, align 8, !dbg !1480
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %47, i32 0, i32 0, !dbg !1482
  %48 = load ptr, ptr %parent, align 8, !dbg !1482
  %tobool40 = icmp ne ptr %48, null, !dbg !1483
  br i1 %tobool40, label %land.lhs.true, label %if.end63, !dbg !1484

land.lhs.true:                                    ; preds = %sw.bb39
  %49 = load ptr, ptr %op.addr, align 8, !dbg !1485
  %parent41 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %49, i32 0, i32 0, !dbg !1486
  %50 = load ptr, ptr %parent41, align 8, !dbg !1486
  %aml_opcode42 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %50, i32 0, i32 3, !dbg !1487
  %51 = load i16, ptr %aml_opcode42, align 2, !dbg !1487
  %conv43 = zext i16 %51 to i32, !dbg !1485
  %cmp = icmp eq i32 %conv43, 8, !dbg !1488
  br i1 %cmp, label %land.lhs.true45, label %if.end63, !dbg !1489

land.lhs.true45:                                  ; preds = %land.lhs.true
  %52 = load ptr, ptr %walk_state.addr, align 8, !dbg !1490
  %pass_number = getelementptr inbounds %struct.acpi_walk_state, ptr %52, i32 0, i32 12, !dbg !1491
  %53 = load i8, ptr %pass_number, align 2, !dbg !1491
  %conv46 = zext i8 %53 to i32, !dbg !1490
  %cmp47 = icmp sle i32 %conv46, 2, !dbg !1492
  br i1 %cmp47, label %if.then49, label %if.end63, !dbg !1493

if.then49:                                        ; preds = %land.lhs.true45
  %54 = load ptr, ptr %aml_op_start.addr, align 8, !dbg !1494
  %55 = load ptr, ptr %op.addr, align 8, !dbg !1496
  %data50 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %55, i32 0, i32 10, !dbg !1497
  store ptr %54, ptr %data50, align 8, !dbg !1498
  %56 = load ptr, ptr %walk_state.addr, align 8, !dbg !1499
  %parser_state51 = getelementptr inbounds %struct.acpi_walk_state, ptr %56, i32 0, i32 21, !dbg !1500
  %pkg_end52 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state51, i32 0, i32 4, !dbg !1501
  %57 = load ptr, ptr %pkg_end52, align 8, !dbg !1501
  %58 = load ptr, ptr %aml_op_start.addr, align 8, !dbg !1502
  %sub.ptr.lhs.cast53 = ptrtoint ptr %57 to i64, !dbg !1503
  %sub.ptr.rhs.cast54 = ptrtoint ptr %58 to i64, !dbg !1503
  %sub.ptr.sub55 = sub i64 %sub.ptr.lhs.cast53, %sub.ptr.rhs.cast54, !dbg !1503
  %conv56 = trunc i64 %sub.ptr.sub55 to i32, !dbg !1504
  %59 = load ptr, ptr %op.addr, align 8, !dbg !1505
  %length57 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %59, i32 0, i32 11, !dbg !1506
  store i32 %conv56, ptr %length57, align 8, !dbg !1507
  %60 = load ptr, ptr %walk_state.addr, align 8, !dbg !1508
  %parser_state58 = getelementptr inbounds %struct.acpi_walk_state, ptr %60, i32 0, i32 21, !dbg !1509
  %pkg_end59 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state58, i32 0, i32 4, !dbg !1510
  %61 = load ptr, ptr %pkg_end59, align 8, !dbg !1510
  %62 = load ptr, ptr %walk_state.addr, align 8, !dbg !1511
  %parser_state60 = getelementptr inbounds %struct.acpi_walk_state, ptr %62, i32 0, i32 21, !dbg !1512
  %aml61 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state60, i32 0, i32 1, !dbg !1513
  store ptr %61, ptr %aml61, align 8, !dbg !1514
  %63 = load ptr, ptr %walk_state.addr, align 8, !dbg !1515
  %arg_count62 = getelementptr inbounds %struct.acpi_walk_state, ptr %63, i32 0, i32 23, !dbg !1516
  store i32 0, ptr %arg_count62, align 4, !dbg !1517
  br label %if.end63, !dbg !1518

if.end63:                                         ; preds = %if.then49, %land.lhs.true45, %land.lhs.true, %sw.bb39
  br label %sw.epilog72, !dbg !1519

sw.bb64:                                          ; preds = %while.end
  %64 = load ptr, ptr %walk_state.addr, align 8, !dbg !1520
  %control_state = getelementptr inbounds %struct.acpi_walk_state, ptr %64, i32 0, i32 32, !dbg !1522
  %65 = load ptr, ptr %control_state, align 8, !dbg !1522
  %tobool65 = icmp ne ptr %65, null, !dbg !1520
  br i1 %tobool65, label %if.then66, label %if.end70, !dbg !1523

if.then66:                                        ; preds = %sw.bb64
  %66 = load ptr, ptr %walk_state.addr, align 8, !dbg !1524
  %parser_state67 = getelementptr inbounds %struct.acpi_walk_state, ptr %66, i32 0, i32 21, !dbg !1526
  %pkg_end68 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state67, i32 0, i32 4, !dbg !1527
  %67 = load ptr, ptr %pkg_end68, align 8, !dbg !1527
  %68 = load ptr, ptr %walk_state.addr, align 8, !dbg !1528
  %control_state69 = getelementptr inbounds %struct.acpi_walk_state, ptr %68, i32 0, i32 32, !dbg !1529
  %69 = load ptr, ptr %control_state69, align 8, !dbg !1529
  %package_end = getelementptr inbounds %struct.acpi_control_state, ptr %69, i32 0, i32 8, !dbg !1530
  store ptr %67, ptr %package_end, align 8, !dbg !1531
  br label %if.end70, !dbg !1532

if.end70:                                         ; preds = %if.then66, %sw.bb64
  br label %sw.epilog72, !dbg !1533

sw.default71:                                     ; preds = %while.end
  br label %sw.epilog72, !dbg !1534

sw.epilog72:                                      ; preds = %sw.default71, %if.end70, %if.end63, %sw.bb27
  br label %sw.epilog73, !dbg !1535

sw.epilog73:                                      ; preds = %sw.epilog72, %if.end, %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !1536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1536

cleanup:                                          ; preds = %sw.epilog73, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #5, !dbg !1537
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1537
  %70 = load i32, ptr %retval, align 4, !dbg !1537
  ret i32 %70, !dbg !1537
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1538 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1541 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1546, metadata !DIExpression()), !dbg !1547
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1548
  call void @kfree(ptr noundef %0) #6, !dbg !1549
  ret void, !dbg !1550
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1551 dso_local ptr @acpi_ut_pop_generic_state(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1556 dso_local i32 @acpi_ps_push_scope(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1559 dso_local i32 @acpi_ps_complete_final_op(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1560 dso_local void @acpi_ps_get_next_simple_arg(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1563 dso_local i32 @acpi_ps_get_next_namepath(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1566 dso_local i32 @acpi_ps_get_next_arg(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1569 dso_local void @acpi_ps_append_arg(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1572 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 28, type: !54, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.psloop.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22psloop\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/psloop.ll drivers/acpi/acpica/psloop.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !30, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/psloop.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "edb4fe88a31c689fe04b1d931fde5334")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3)
!12 = !{!13, !19, !20, !23, !26, !15}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !14, line: 421, baseType: !15)
!14 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !16, line: 21, baseType: !17)
!16 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !18, line: 27, baseType: !7)
!18 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !16, line: 19, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !18, line: 24, baseType: !22)
!22 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !24, line: 42, baseType: !25)
!24 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!25 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !14, line: 127, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !16, line: 23, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !18, line: 31, baseType: !29)
!29 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!30 = !{!31, !37, !42, !47, !52, !0}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !3, line: 269, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 304, elements: !35)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!36}
!36 = !DISubrange(count: 38)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !3, line: 273, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 160, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 20)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !3, line: 347, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 344, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 43)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !3, line: 426, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 192, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 24)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !3, line: 429, type: !39, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 56, elements: !56)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!56 = !{!57}
!57 = !DISubrange(count: 7)
!58 = !{i32 7, !"Dwarf Version", i32 5}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 8, !"cf-protection-branch", i32 1}
!62 = !{i32 4, !"function_return_thunk_extern", i32 1}
!63 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!64 = !{i32 1, !"Code Model", i32 2}
!65 = !{i32 1, !"override-stack-alignment", i32 8}
!66 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!67 = distinct !DISubprogram(name: "acpi_ps_parse_loop", scope: !3, file: !3, line: 221, type: !68, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !824)
!68 = !DISubroutineType(types: !69)
!69 = !{!13, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !72, line: 37, size: 9024, elements: !73)
!72 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!73 = !{!74, !75, !79, !80, !81, !82, !83, !84, !86, !87, !88, !89, !90, !91, !92, !93, !94, !96, !97, !98, !99, !100, !773, !774, !775, !776, !777, !779, !781, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !808, !809, !810, !811, !812, !813, !814, !815, !816, !822}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !71, file: !72, line: 38, baseType: !70, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !71, file: !72, line: 39, baseType: !76, size: 8, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !16, line: 17, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !18, line: 21, baseType: !78)
!78 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !71, file: !72, line: 40, baseType: !76, size: 8, offset: 72)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !71, file: !72, line: 41, baseType: !20, size: 16, offset: 80)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !71, file: !72, line: 42, baseType: !76, size: 8, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !71, file: !72, line: 43, baseType: !76, size: 8, offset: 104)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !71, file: !72, line: 44, baseType: !76, size: 8, offset: 112)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !71, file: !72, line: 45, baseType: !85, size: 16, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !14, line: 445, baseType: !20)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !71, file: !72, line: 46, baseType: !76, size: 8, offset: 144)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !71, file: !72, line: 47, baseType: !76, size: 8, offset: 152)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !71, file: !72, line: 48, baseType: !76, size: 8, offset: 160)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !71, file: !72, line: 49, baseType: !76, size: 8, offset: 168)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !71, file: !72, line: 50, baseType: !76, size: 8, offset: 176)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !71, file: !72, line: 51, baseType: !76, size: 8, offset: 184)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !71, file: !72, line: 52, baseType: !76, size: 8, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !71, file: !72, line: 53, baseType: !76, size: 8, offset: 200)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !71, file: !72, line: 54, baseType: !95, size: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !71, file: !72, line: 55, baseType: !15, size: 32, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !71, file: !72, line: 56, baseType: !15, size: 32, offset: 352)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !71, file: !72, line: 57, baseType: !15, size: 32, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !71, file: !72, line: 58, baseType: !15, size: 32, offset: 416)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !71, file: !72, line: 60, baseType: !101, size: 640, offset: 448)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 909, size: 640, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !670, !671, !771, !772}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !101, file: !6, line: 910, baseType: !95, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !101, file: !6, line: 911, baseType: !95, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !101, file: !6, line: 912, baseType: !95, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !101, file: !6, line: 913, baseType: !95, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !101, file: !6, line: 914, baseType: !95, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !101, file: !6, line: 915, baseType: !109, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 891, size: 1600, elements: !111)
!111 = !{!112, !616, !632}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !110, file: !6, line: 892, baseType: !113, size: 448)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 844, size: 448, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !606, !615}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !113, file: !6, line: 845, baseType: !109, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !113, file: !6, line: 845, baseType: !76, size: 8, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !6, line: 845, baseType: !76, size: 8, offset: 72)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !113, file: !6, line: 845, baseType: !20, size: 16, offset: 80)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !113, file: !6, line: 845, baseType: !95, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !6, line: 845, baseType: !109, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !113, file: !6, line: 845, baseType: !122, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !124)
!124 = !{!125, !590, !591, !592, !593, !602, !603, !604, !605}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !123, file: !6, line: 134, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !128, line: 369, size: 576, elements: !129)
!128 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!129 = !{!130, !138, !151, !162, !175, !189, !198, !222, !251, !267, !280, !359, !371, !385, !395, !413, !435, !454, !473, !492, !509, !536, !553, !566, !580, !589}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !127, file: !128, line: 370, baseType: !131, size: 128)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !128, line: 73, size: 128, elements: !132)
!132 = !{!133, !134, !135, !136, !137}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !131, file: !128, line: 74, baseType: !126, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !131, file: !128, line: 74, baseType: !76, size: 8, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !128, line: 74, baseType: !76, size: 8, offset: 72)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !131, file: !128, line: 74, baseType: !20, size: 16, offset: 80)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !128, line: 74, baseType: !76, size: 8, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !127, file: !128, line: 371, baseType: !139, size: 192)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !128, line: 76, size: 192, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !150}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !139, file: !128, line: 77, baseType: !126, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !128, line: 77, baseType: !76, size: 8, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !128, line: 77, baseType: !76, size: 8, offset: 72)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !139, file: !128, line: 77, baseType: !20, size: 16, offset: 80)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !128, line: 77, baseType: !76, size: 8, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !139, file: !128, line: 77, baseType: !147, size: 24, offset: 104)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 24, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 3)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !139, file: !128, line: 78, baseType: !27, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !127, file: !128, line: 372, baseType: !152, size: 256)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !128, line: 93, size: 256, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !159, !161}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !152, file: !128, line: 94, baseType: !126, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !152, file: !128, line: 94, baseType: !76, size: 8, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !152, file: !128, line: 94, baseType: !76, size: 8, offset: 72)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !152, file: !128, line: 94, baseType: !20, size: 16, offset: 80)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !128, line: 94, baseType: !76, size: 8, offset: 96)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !152, file: !128, line: 94, baseType: !160, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !152, file: !128, line: 94, baseType: !15, size: 32, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !127, file: !128, line: 373, baseType: !163, size: 384)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !128, line: 97, size: 384, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !163, file: !128, line: 98, baseType: !126, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !163, file: !128, line: 98, baseType: !76, size: 8, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !163, file: !128, line: 98, baseType: !76, size: 8, offset: 72)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !163, file: !128, line: 98, baseType: !20, size: 16, offset: 80)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !128, line: 98, baseType: !76, size: 8, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !163, file: !128, line: 98, baseType: !95, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !163, file: !128, line: 98, baseType: !15, size: 32, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !163, file: !128, line: 99, baseType: !15, size: 32, offset: 224)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !163, file: !128, line: 100, baseType: !95, size: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !163, file: !128, line: 101, baseType: !122, size: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !127, file: !128, line: 374, baseType: !176, size: 384)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !128, line: 104, size: 384, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !186, !187, !188}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !176, file: !128, line: 105, baseType: !126, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !176, file: !128, line: 105, baseType: !76, size: 8, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !176, file: !128, line: 105, baseType: !76, size: 8, offset: 72)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !176, file: !128, line: 105, baseType: !20, size: 16, offset: 80)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !176, file: !128, line: 105, baseType: !76, size: 8, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !176, file: !128, line: 105, baseType: !122, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !176, file: !128, line: 106, baseType: !185, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !176, file: !128, line: 107, baseType: !95, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !176, file: !128, line: 108, baseType: !15, size: 32, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !176, file: !128, line: 109, baseType: !15, size: 32, offset: 352)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !127, file: !128, line: 375, baseType: !190, size: 192)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !128, line: 118, size: 192, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !190, file: !128, line: 119, baseType: !126, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !190, file: !128, line: 119, baseType: !76, size: 8, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !190, file: !128, line: 119, baseType: !76, size: 8, offset: 72)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !190, file: !128, line: 119, baseType: !20, size: 16, offset: 80)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !190, file: !128, line: 119, baseType: !76, size: 8, offset: 96)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !190, file: !128, line: 119, baseType: !19, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !127, file: !128, line: 376, baseType: !199, size: 448)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !128, line: 144, size: 448, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !219, !220, !221}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !199, file: !128, line: 145, baseType: !126, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !199, file: !128, line: 145, baseType: !76, size: 8, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !199, file: !128, line: 145, baseType: !76, size: 8, offset: 72)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !199, file: !128, line: 145, baseType: !20, size: 16, offset: 80)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !128, line: 145, baseType: !76, size: 8, offset: 96)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !199, file: !128, line: 145, baseType: !76, size: 8, offset: 104)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !199, file: !128, line: 146, baseType: !76, size: 8, offset: 112)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !199, file: !128, line: 147, baseType: !76, size: 8, offset: 120)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !199, file: !128, line: 148, baseType: !126, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !199, file: !128, line: 149, baseType: !126, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !199, file: !128, line: 150, baseType: !95, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !199, file: !128, line: 154, baseType: !213, size: 64, offset: 320)
!213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !199, file: !128, line: 151, size: 64, elements: !214)
!214 = !{!215, !218}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !213, file: !128, line: 152, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !213, file: !128, line: 153, baseType: !126, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !199, file: !128, line: 156, baseType: !15, size: 32, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !199, file: !128, line: 157, baseType: !85, size: 16, offset: 416)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !199, file: !128, line: 158, baseType: !76, size: 8, offset: 432)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !127, file: !128, line: 377, baseType: !223, size: 576)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !128, line: 122, size: 576, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !247, !248, !249, !250}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !223, file: !128, line: 123, baseType: !126, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !223, file: !128, line: 123, baseType: !76, size: 8, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !223, file: !128, line: 123, baseType: !76, size: 8, offset: 72)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !223, file: !128, line: 123, baseType: !20, size: 16, offset: 80)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !223, file: !128, line: 123, baseType: !76, size: 8, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !223, file: !128, line: 123, baseType: !76, size: 8, offset: 104)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !223, file: !128, line: 124, baseType: !20, size: 16, offset: 112)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !223, file: !128, line: 125, baseType: !19, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !223, file: !128, line: 126, baseType: !27, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !223, file: !128, line: 127, baseType: !235, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 634, size: 320, elements: !237)
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !6, line: 635, baseType: !19, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !236, file: !6, line: 635, baseType: !76, size: 8, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !236, file: !6, line: 635, baseType: !76, size: 8, offset: 72)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !236, file: !6, line: 635, baseType: !20, size: 16, offset: 80)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !236, file: !6, line: 635, baseType: !20, size: 16, offset: 96)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !236, file: !6, line: 636, baseType: !76, size: 8, offset: 112)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !236, file: !6, line: 637, baseType: !70, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !236, file: !6, line: 638, baseType: !126, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !236, file: !6, line: 639, baseType: !27, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !223, file: !128, line: 128, baseType: !126, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !128, line: 129, baseType: !126, size: 64, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !223, file: !128, line: 130, baseType: !122, size: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !223, file: !128, line: 131, baseType: !76, size: 8, offset: 512)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !127, file: !128, line: 378, baseType: !252, size: 512)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !128, line: 134, size: 512, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !265, !266}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !252, file: !128, line: 135, baseType: !126, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !252, file: !128, line: 135, baseType: !76, size: 8, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !252, file: !128, line: 135, baseType: !76, size: 8, offset: 72)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !252, file: !128, line: 135, baseType: !20, size: 16, offset: 80)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !252, file: !128, line: 135, baseType: !76, size: 8, offset: 96)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !252, file: !128, line: 135, baseType: !76, size: 8, offset: 104)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !252, file: !128, line: 136, baseType: !122, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !252, file: !128, line: 137, baseType: !126, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !252, file: !128, line: 138, baseType: !126, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !252, file: !128, line: 139, baseType: !264, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !14, line: 129, baseType: !27)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !252, file: !128, line: 140, baseType: !15, size: 32, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !252, file: !128, line: 141, baseType: !19, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !127, file: !128, line: 379, baseType: !268, size: 320)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !128, line: 185, size: 320, elements: !269)
!269 = !{!270, !271, !272, !273, !274, !275, !279}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !268, file: !128, line: 186, baseType: !126, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !268, file: !128, line: 186, baseType: !76, size: 8, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !268, file: !128, line: 186, baseType: !76, size: 8, offset: 72)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !268, file: !128, line: 186, baseType: !20, size: 16, offset: 80)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !128, line: 186, baseType: !76, size: 8, offset: 96)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !268, file: !128, line: 186, baseType: !276, size: 128, offset: 128)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 128, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 2)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !268, file: !128, line: 186, baseType: !126, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !127, file: !128, line: 380, baseType: !281, size: 384)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !128, line: 188, size: 384, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !281, file: !128, line: 189, baseType: !126, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !281, file: !128, line: 189, baseType: !76, size: 8, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !281, file: !128, line: 189, baseType: !76, size: 8, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !281, file: !128, line: 189, baseType: !20, size: 16, offset: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !281, file: !128, line: 189, baseType: !76, size: 8, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !281, file: !128, line: 190, baseType: !276, size: 128, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !281, file: !128, line: 190, baseType: !126, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !281, file: !128, line: 190, baseType: !291, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !293)
!293 = !{!294, !295, !296, !297, !305, !320, !353, !354, !355, !356, !357, !358}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !292, file: !6, line: 481, baseType: !122, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !292, file: !6, line: 482, baseType: !291, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !6, line: 483, baseType: !291, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !292, file: !6, line: 484, baseType: !298, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !300)
!300 = !{!301, !302, !303, !304}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !299, file: !6, line: 498, baseType: !298, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !6, line: 499, baseType: !298, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !299, file: !6, line: 500, baseType: !291, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !299, file: !6, line: 501, baseType: !15, size: 32, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !292, file: !6, line: 485, baseType: !306, size: 64, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !308)
!308 = !{!309, !314, !315, !316, !317, !318, !319}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !307, file: !6, line: 467, baseType: !310, size: 128)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !310, file: !6, line: 460, baseType: !76, size: 8)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !310, file: !6, line: 461, baseType: !27, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !307, file: !6, line: 468, baseType: !310, size: 128, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !307, file: !6, line: 469, baseType: !20, size: 16, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !307, file: !6, line: 470, baseType: !76, size: 8, offset: 272)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !307, file: !6, line: 471, baseType: !76, size: 8, offset: 280)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !307, file: !6, line: 472, baseType: !76, size: 8, offset: 288)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !307, file: !6, line: 473, baseType: !76, size: 8, offset: 296)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !292, file: !6, line: 486, baseType: !321, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !323)
!323 = !{!324, !348, !349, !350, !351, !352}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !322, file: !6, line: 449, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !326)
!326 = !{!327, !328, !342}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !325, file: !6, line: 439, baseType: !122, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !325, file: !6, line: 440, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !331)
!331 = !{!332, !338, !339, !340, !341}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !330, file: !6, line: 420, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !14, line: 1058, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!15, !337, !15, !19}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !14, line: 424, baseType: !19)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !330, file: !6, line: 421, baseType: !19, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !330, file: !6, line: 422, baseType: !122, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !330, file: !6, line: 423, baseType: !76, size: 8, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !330, file: !6, line: 424, baseType: !76, size: 8, offset: 200)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !325, file: !6, line: 441, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !344, file: !6, line: 430, baseType: !122, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !6, line: 431, baseType: !343, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !322, file: !6, line: 450, baseType: !306, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !6, line: 451, baseType: !76, size: 8, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !322, file: !6, line: 452, baseType: !76, size: 8, offset: 136)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !322, file: !6, line: 453, baseType: !76, size: 8, offset: 144)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !322, file: !6, line: 454, baseType: !76, size: 8, offset: 152)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !292, file: !6, line: 487, baseType: !27, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !292, file: !6, line: 488, baseType: !15, size: 32, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !292, file: !6, line: 489, baseType: !20, size: 16, offset: 480)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !292, file: !6, line: 490, baseType: !20, size: 16, offset: 496)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !292, file: !6, line: 491, baseType: !76, size: 8, offset: 512)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !292, file: !6, line: 492, baseType: !76, size: 8, offset: 520)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !127, file: !128, line: 381, baseType: !360, size: 384)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !128, line: 193, size: 384, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !360, file: !128, line: 194, baseType: !126, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !360, file: !128, line: 194, baseType: !76, size: 8, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !360, file: !128, line: 194, baseType: !76, size: 8, offset: 72)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !360, file: !128, line: 194, baseType: !20, size: 16, offset: 80)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !128, line: 194, baseType: !76, size: 8, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !360, file: !128, line: 194, baseType: !276, size: 128, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !360, file: !128, line: 194, baseType: !126, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !360, file: !128, line: 194, baseType: !15, size: 32, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !360, file: !128, line: 195, baseType: !15, size: 32, offset: 352)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !127, file: !128, line: 382, baseType: !372, size: 384)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !128, line: 198, size: 384, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !372, file: !128, line: 199, baseType: !126, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !372, file: !128, line: 199, baseType: !76, size: 8, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !372, file: !128, line: 199, baseType: !76, size: 8, offset: 72)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !372, file: !128, line: 199, baseType: !20, size: 16, offset: 80)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !372, file: !128, line: 199, baseType: !76, size: 8, offset: 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !372, file: !128, line: 201, baseType: !76, size: 8, offset: 104)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !372, file: !128, line: 202, baseType: !76, size: 8, offset: 112)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !372, file: !128, line: 203, baseType: !276, size: 128, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !372, file: !128, line: 203, baseType: !126, size: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !372, file: !128, line: 203, baseType: !384, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !14, line: 128, baseType: !27)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !127, file: !128, line: 383, baseType: !386, size: 320)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !128, line: 206, size: 320, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393, !394}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !386, file: !128, line: 207, baseType: !126, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !386, file: !128, line: 207, baseType: !76, size: 8, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !386, file: !128, line: 207, baseType: !76, size: 8, offset: 72)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !386, file: !128, line: 207, baseType: !20, size: 16, offset: 80)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !128, line: 207, baseType: !76, size: 8, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !386, file: !128, line: 207, baseType: !276, size: 128, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !386, file: !128, line: 207, baseType: !126, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !127, file: !128, line: 384, baseType: !396, size: 384)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !128, line: 234, size: 384, elements: !397)
!397 = !{!398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !396, file: !128, line: 235, baseType: !126, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !396, file: !128, line: 235, baseType: !76, size: 8, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !396, file: !128, line: 235, baseType: !76, size: 8, offset: 72)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !396, file: !128, line: 235, baseType: !20, size: 16, offset: 80)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !396, file: !128, line: 235, baseType: !76, size: 8, offset: 96)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !396, file: !128, line: 235, baseType: !76, size: 8, offset: 104)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !396, file: !128, line: 235, baseType: !76, size: 8, offset: 112)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !396, file: !128, line: 235, baseType: !76, size: 8, offset: 120)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !396, file: !128, line: 235, baseType: !122, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !396, file: !128, line: 235, baseType: !15, size: 32, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !396, file: !128, line: 235, baseType: !15, size: 32, offset: 224)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !396, file: !128, line: 235, baseType: !15, size: 32, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !396, file: !128, line: 235, baseType: !76, size: 8, offset: 288)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !396, file: !128, line: 235, baseType: !76, size: 8, offset: 296)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !396, file: !128, line: 235, baseType: !126, size: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !127, file: !128, line: 385, baseType: !414, size: 576)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !128, line: 238, size: 576, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !414, file: !128, line: 239, baseType: !126, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !414, file: !128, line: 239, baseType: !76, size: 8, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !414, file: !128, line: 239, baseType: !76, size: 8, offset: 72)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !414, file: !128, line: 239, baseType: !20, size: 16, offset: 80)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !128, line: 239, baseType: !76, size: 8, offset: 96)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !414, file: !128, line: 239, baseType: !76, size: 8, offset: 104)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !414, file: !128, line: 239, baseType: !76, size: 8, offset: 112)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !414, file: !128, line: 239, baseType: !76, size: 8, offset: 120)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !414, file: !128, line: 239, baseType: !122, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !414, file: !128, line: 239, baseType: !15, size: 32, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !414, file: !128, line: 239, baseType: !15, size: 32, offset: 224)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !414, file: !128, line: 239, baseType: !15, size: 32, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !414, file: !128, line: 239, baseType: !76, size: 8, offset: 288)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !414, file: !128, line: 239, baseType: !76, size: 8, offset: 296)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !414, file: !128, line: 239, baseType: !20, size: 16, offset: 304)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !414, file: !128, line: 240, baseType: !126, size: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !414, file: !128, line: 241, baseType: !95, size: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !414, file: !128, line: 242, baseType: !20, size: 16, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !414, file: !128, line: 243, baseType: !95, size: 64, offset: 512)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !127, file: !128, line: 386, baseType: !436, size: 384)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !128, line: 263, size: 384, elements: !437)
!437 = !{!438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !436, file: !128, line: 264, baseType: !126, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !436, file: !128, line: 264, baseType: !76, size: 8, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !436, file: !128, line: 264, baseType: !76, size: 8, offset: 72)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !436, file: !128, line: 264, baseType: !20, size: 16, offset: 80)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !436, file: !128, line: 264, baseType: !76, size: 8, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !436, file: !128, line: 264, baseType: !76, size: 8, offset: 104)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !436, file: !128, line: 264, baseType: !76, size: 8, offset: 112)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !436, file: !128, line: 264, baseType: !76, size: 8, offset: 120)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !436, file: !128, line: 264, baseType: !122, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !436, file: !128, line: 264, baseType: !15, size: 32, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !436, file: !128, line: 264, baseType: !15, size: 32, offset: 224)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !436, file: !128, line: 264, baseType: !15, size: 32, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !436, file: !128, line: 264, baseType: !76, size: 8, offset: 288)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !436, file: !128, line: 264, baseType: !76, size: 8, offset: 296)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !436, file: !128, line: 264, baseType: !76, size: 8, offset: 304)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !436, file: !128, line: 265, baseType: !126, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !127, file: !128, line: 387, baseType: !455, size: 448)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !128, line: 246, size: 448, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !455, file: !128, line: 247, baseType: !126, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !455, file: !128, line: 247, baseType: !76, size: 8, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !455, file: !128, line: 247, baseType: !76, size: 8, offset: 72)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !455, file: !128, line: 247, baseType: !20, size: 16, offset: 80)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !128, line: 247, baseType: !76, size: 8, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !455, file: !128, line: 247, baseType: !76, size: 8, offset: 104)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !455, file: !128, line: 247, baseType: !76, size: 8, offset: 112)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !455, file: !128, line: 247, baseType: !76, size: 8, offset: 120)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !455, file: !128, line: 247, baseType: !122, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !455, file: !128, line: 247, baseType: !15, size: 32, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !455, file: !128, line: 247, baseType: !15, size: 32, offset: 224)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !455, file: !128, line: 247, baseType: !15, size: 32, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !455, file: !128, line: 247, baseType: !76, size: 8, offset: 288)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !455, file: !128, line: 247, baseType: !76, size: 8, offset: 296)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !455, file: !128, line: 247, baseType: !126, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !455, file: !128, line: 248, baseType: !126, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !127, file: !128, line: 388, baseType: !474, size: 448)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !128, line: 251, size: 448, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !474, file: !128, line: 252, baseType: !126, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !474, file: !128, line: 252, baseType: !76, size: 8, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !128, line: 252, baseType: !76, size: 8, offset: 72)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !474, file: !128, line: 252, baseType: !20, size: 16, offset: 80)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !128, line: 252, baseType: !76, size: 8, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !474, file: !128, line: 252, baseType: !76, size: 8, offset: 104)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !474, file: !128, line: 252, baseType: !76, size: 8, offset: 112)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !474, file: !128, line: 252, baseType: !76, size: 8, offset: 120)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !474, file: !128, line: 252, baseType: !122, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !474, file: !128, line: 252, baseType: !15, size: 32, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !474, file: !128, line: 252, baseType: !15, size: 32, offset: 224)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !474, file: !128, line: 252, baseType: !15, size: 32, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !474, file: !128, line: 252, baseType: !76, size: 8, offset: 288)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !474, file: !128, line: 252, baseType: !76, size: 8, offset: 296)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !474, file: !128, line: 257, baseType: !126, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !474, file: !128, line: 258, baseType: !126, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !127, file: !128, line: 389, baseType: !493, size: 512)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !128, line: 274, size: 512, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !500, !501, !502, !507, !508}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !493, file: !128, line: 275, baseType: !126, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !493, file: !128, line: 275, baseType: !76, size: 8, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !493, file: !128, line: 275, baseType: !76, size: 8, offset: 72)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !493, file: !128, line: 275, baseType: !20, size: 16, offset: 80)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !128, line: 275, baseType: !76, size: 8, offset: 96)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !493, file: !128, line: 275, baseType: !122, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !493, file: !128, line: 276, baseType: !15, size: 32, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !493, file: !128, line: 277, baseType: !503, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !14, line: 1061, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !337, !15, !19}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !493, file: !128, line: 278, baseType: !19, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !493, file: !128, line: 279, baseType: !276, size: 128, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !127, file: !128, line: 390, baseType: !510, size: 576)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !128, line: 282, size: 576, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !517, !518, !519, !525, !526, !527, !528, !534, !535}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !510, file: !128, line: 283, baseType: !126, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !510, file: !128, line: 283, baseType: !76, size: 8, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !510, file: !128, line: 283, baseType: !76, size: 8, offset: 72)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !510, file: !128, line: 283, baseType: !20, size: 16, offset: 80)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !510, file: !128, line: 283, baseType: !76, size: 8, offset: 96)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !510, file: !128, line: 283, baseType: !76, size: 8, offset: 104)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !510, file: !128, line: 284, baseType: !76, size: 8, offset: 112)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !510, file: !128, line: 285, baseType: !520, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !14, line: 1093, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!13, !15, !264, !15, !524, !19, !19}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !510, file: !128, line: 286, baseType: !122, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !510, file: !128, line: 287, baseType: !19, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !510, file: !128, line: 288, baseType: !19, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !510, file: !128, line: 289, baseType: !529, size: 64, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !14, line: 1126, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!13, !337, !15, !19, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !510, file: !128, line: 290, baseType: !126, size: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !510, file: !128, line: 291, baseType: !126, size: 64, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !127, file: !128, line: 391, baseType: !537, size: 512)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !128, line: 309, size: 512, elements: !538)
!538 = !{!539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !537, file: !128, line: 310, baseType: !126, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !537, file: !128, line: 310, baseType: !76, size: 8, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !537, file: !128, line: 310, baseType: !76, size: 8, offset: 72)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !537, file: !128, line: 310, baseType: !20, size: 16, offset: 80)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !128, line: 310, baseType: !76, size: 8, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !537, file: !128, line: 310, baseType: !76, size: 8, offset: 104)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !537, file: !128, line: 311, baseType: !76, size: 8, offset: 112)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !537, file: !128, line: 312, baseType: !76, size: 8, offset: 120)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !537, file: !128, line: 313, baseType: !19, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !537, file: !128, line: 314, baseType: !122, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !537, file: !128, line: 315, baseType: !185, size: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !537, file: !128, line: 316, baseType: !95, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !537, file: !128, line: 317, baseType: !95, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !537, file: !128, line: 318, baseType: !15, size: 32, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !127, file: !128, line: 392, baseType: !554, size: 448)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !128, line: 342, size: 448, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !564, !565}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !554, file: !128, line: 343, baseType: !126, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !554, file: !128, line: 343, baseType: !76, size: 8, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !554, file: !128, line: 343, baseType: !76, size: 8, offset: 72)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !554, file: !128, line: 343, baseType: !20, size: 16, offset: 80)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !554, file: !128, line: 343, baseType: !76, size: 8, offset: 96)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !554, file: !128, line: 343, baseType: !122, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !554, file: !128, line: 344, baseType: !122, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !554, file: !128, line: 345, baseType: !19, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !554, file: !128, line: 346, baseType: !95, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !554, file: !128, line: 347, baseType: !15, size: 32, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !127, file: !128, line: 393, baseType: !567, size: 256)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !128, line: 352, size: 256, elements: !568)
!568 = !{!569, !570, !571, !572, !573, !574, !579}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !567, file: !128, line: 353, baseType: !126, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !567, file: !128, line: 353, baseType: !76, size: 8, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !567, file: !128, line: 353, baseType: !76, size: 8, offset: 72)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !567, file: !128, line: 353, baseType: !20, size: 16, offset: 80)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !567, file: !128, line: 353, baseType: !76, size: 8, offset: 96)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !567, file: !128, line: 353, baseType: !575, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !14, line: 1064, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !337, !19}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !567, file: !128, line: 354, baseType: !19, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !127, file: !128, line: 394, baseType: !581, size: 192)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !128, line: 359, size: 192, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !581, file: !128, line: 360, baseType: !126, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !581, file: !128, line: 360, baseType: !76, size: 8, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !581, file: !128, line: 360, baseType: !76, size: 8, offset: 72)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !581, file: !128, line: 360, baseType: !20, size: 16, offset: 80)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !128, line: 360, baseType: !76, size: 8, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !581, file: !128, line: 360, baseType: !126, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !127, file: !128, line: 401, baseType: !123, size: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !123, file: !6, line: 135, baseType: !76, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !6, line: 136, baseType: !76, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !6, line: 137, baseType: !20, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !123, file: !6, line: 138, baseType: !594, size: 32, offset: 96)
!594 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !595, line: 328, size: 32, elements: !596)
!595 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!596 = !{!597, !598}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !594, file: !595, line: 329, baseType: !15, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !594, file: !595, line: 330, baseType: !599, size: 32)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 4)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !123, file: !6, line: 139, baseType: !122, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !123, file: !6, line: 140, baseType: !122, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !123, file: !6, line: 141, baseType: !122, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !123, file: !6, line: 142, baseType: !85, size: 16, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !113, file: !6, line: 845, baseType: !607, size: 64, offset: 320)
!607 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 732, size: 64, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !607, file: !6, line: 733, baseType: !27, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !607, file: !6, line: 734, baseType: !15, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !607, file: !6, line: 735, baseType: !160, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !607, file: !6, line: 736, baseType: !95, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !607, file: !6, line: 737, baseType: !160, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !607, file: !6, line: 738, baseType: !109, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !113, file: !6, line: 845, baseType: !76, size: 8, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !110, file: !6, line: 893, baseType: !617, size: 640)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 851, size: 640, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !617, file: !6, line: 852, baseType: !109, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !617, file: !6, line: 852, baseType: !76, size: 8, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !6, line: 852, baseType: !76, size: 8, offset: 72)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !617, file: !6, line: 852, baseType: !20, size: 16, offset: 80)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !617, file: !6, line: 852, baseType: !95, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !617, file: !6, line: 852, baseType: !109, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !617, file: !6, line: 852, baseType: !122, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !617, file: !6, line: 852, baseType: !607, size: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !617, file: !6, line: 852, baseType: !76, size: 8, offset: 384)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !617, file: !6, line: 852, baseType: !160, size: 64, offset: 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !617, file: !6, line: 853, baseType: !95, size: 64, offset: 512)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !617, file: !6, line: 854, baseType: !15, size: 32, offset: 576)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !617, file: !6, line: 855, baseType: !15, size: 32, offset: 608)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !110, file: !6, line: 894, baseType: !633, size: 1600)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 862, size: 1600, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !633, file: !6, line: 863, baseType: !109, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !633, file: !6, line: 863, baseType: !76, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !6, line: 863, baseType: !76, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !633, file: !6, line: 863, baseType: !20, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !633, file: !6, line: 863, baseType: !95, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !633, file: !6, line: 863, baseType: !109, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !633, file: !6, line: 863, baseType: !122, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !633, file: !6, line: 863, baseType: !607, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !633, file: !6, line: 863, baseType: !76, size: 8, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !633, file: !6, line: 863, baseType: !109, size: 64, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !633, file: !6, line: 864, baseType: !109, size: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !633, file: !6, line: 865, baseType: !160, size: 64, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !633, file: !6, line: 866, baseType: !76, size: 8, offset: 640)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !633, file: !6, line: 867, baseType: !160, size: 64, offset: 704)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !633, file: !6, line: 868, baseType: !160, size: 64, offset: 768)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !633, file: !6, line: 869, baseType: !160, size: 64, offset: 832)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !633, file: !6, line: 870, baseType: !599, size: 32, offset: 896)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !633, file: !6, line: 871, baseType: !15, size: 32, offset: 928)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !633, file: !6, line: 872, baseType: !15, size: 32, offset: 960)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !633, file: !6, line: 873, baseType: !15, size: 32, offset: 992)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !633, file: !6, line: 874, baseType: !15, size: 32, offset: 1024)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !633, file: !6, line: 875, baseType: !15, size: 32, offset: 1056)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !633, file: !6, line: 876, baseType: !15, size: 32, offset: 1088)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !633, file: !6, line: 877, baseType: !15, size: 32, offset: 1120)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !633, file: !6, line: 878, baseType: !15, size: 32, offset: 1152)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !633, file: !6, line: 879, baseType: !15, size: 32, offset: 1184)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !633, file: !6, line: 880, baseType: !15, size: 32, offset: 1216)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !633, file: !6, line: 881, baseType: !15, size: 32, offset: 1248)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !633, file: !6, line: 882, baseType: !15, size: 32, offset: 1280)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !633, file: !6, line: 883, baseType: !15, size: 32, offset: 1312)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !633, file: !6, line: 884, baseType: !20, size: 16, offset: 1344)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !633, file: !6, line: 885, baseType: !76, size: 8, offset: 1360)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !633, file: !6, line: 886, baseType: !76, size: 8, offset: 1368)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !633, file: !6, line: 887, baseType: !76, size: 8, offset: 1376)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !633, file: !6, line: 888, baseType: !39, size: 160, offset: 1384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !101, file: !6, line: 916, baseType: !122, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !101, file: !6, line: 917, baseType: !672, size: 64, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 679, size: 640, elements: !674)
!674 = !{!675, !683, !696, !705, !714, !727, !741, !742, !754}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !673, file: !6, line: 680, baseType: !676, size: 128)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 575, size: 128, elements: !677)
!677 = !{!678, !679, !680, !681, !682}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !6, line: 576, baseType: !19, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !676, file: !6, line: 576, baseType: !76, size: 8, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !6, line: 576, baseType: !76, size: 8, offset: 72)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !676, file: !6, line: 576, baseType: !20, size: 16, offset: 80)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !676, file: !6, line: 576, baseType: !20, size: 16, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !673, file: !6, line: 681, baseType: !684, size: 384)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 604, size: 384, elements: !685)
!685 = !{!686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !684, file: !6, line: 605, baseType: !19, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !684, file: !6, line: 605, baseType: !76, size: 8, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !684, file: !6, line: 605, baseType: !76, size: 8, offset: 72)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !684, file: !6, line: 605, baseType: !20, size: 16, offset: 80)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !684, file: !6, line: 605, baseType: !20, size: 16, offset: 96)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !684, file: !6, line: 606, baseType: !20, size: 16, offset: 112)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !684, file: !6, line: 607, baseType: !109, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !684, file: !6, line: 608, baseType: !95, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !684, file: !6, line: 609, baseType: !95, size: 64, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !684, file: !6, line: 610, baseType: !27, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !673, file: !6, line: 682, baseType: !697, size: 192)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 582, size: 192, elements: !698)
!698 = !{!699, !700, !701, !702, !703, !704}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !697, file: !6, line: 583, baseType: !19, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !697, file: !6, line: 583, baseType: !76, size: 8, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !6, line: 583, baseType: !76, size: 8, offset: 72)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !697, file: !6, line: 583, baseType: !20, size: 16, offset: 80)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !697, file: !6, line: 583, baseType: !20, size: 16, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !697, file: !6, line: 584, baseType: !126, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !673, file: !6, line: 683, baseType: !706, size: 192)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 616, size: 192, elements: !707)
!707 = !{!708, !709, !710, !711, !712, !713}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !706, file: !6, line: 617, baseType: !19, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !706, file: !6, line: 617, baseType: !76, size: 8, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !706, file: !6, line: 617, baseType: !76, size: 8, offset: 72)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !706, file: !6, line: 617, baseType: !20, size: 16, offset: 80)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !706, file: !6, line: 617, baseType: !20, size: 16, offset: 96)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !706, file: !6, line: 618, baseType: !122, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !673, file: !6, line: 684, baseType: !715, size: 448)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 621, size: 448, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !715, file: !6, line: 622, baseType: !19, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !6, line: 622, baseType: !76, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !6, line: 622, baseType: !76, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !715, file: !6, line: 622, baseType: !20, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !715, file: !6, line: 622, baseType: !20, size: 16, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !715, file: !6, line: 623, baseType: !15, size: 32, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !715, file: !6, line: 624, baseType: !109, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !715, file: !6, line: 625, baseType: !95, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !715, file: !6, line: 626, baseType: !95, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !715, file: !6, line: 627, baseType: !15, size: 32, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !673, file: !6, line: 685, baseType: !728, size: 512)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 590, size: 512, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !728, file: !6, line: 591, baseType: !19, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !728, file: !6, line: 591, baseType: !76, size: 8, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !728, file: !6, line: 591, baseType: !76, size: 8, offset: 72)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !728, file: !6, line: 591, baseType: !20, size: 16, offset: 80)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !728, file: !6, line: 591, baseType: !20, size: 16, offset: 96)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !728, file: !6, line: 592, baseType: !15, size: 32, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !728, file: !6, line: 593, baseType: !126, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !728, file: !6, line: 594, baseType: !126, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !728, file: !6, line: 595, baseType: !70, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !728, file: !6, line: 596, baseType: !19, size: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !728, file: !6, line: 597, baseType: !15, size: 32, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !673, file: !6, line: 686, baseType: !236, size: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !673, file: !6, line: 687, baseType: !743, size: 640)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 646, size: 640, elements: !744)
!744 = !{!745, !746, !747, !748, !749, !750}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !743, file: !6, line: 647, baseType: !19, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !743, file: !6, line: 647, baseType: !76, size: 8, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !743, file: !6, line: 647, baseType: !76, size: 8, offset: 72)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !743, file: !6, line: 647, baseType: !20, size: 16, offset: 80)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !743, file: !6, line: 647, baseType: !20, size: 16, offset: 96)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !743, file: !6, line: 648, baseType: !751, size: 512, offset: 128)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 512, elements: !752)
!752 = !{!753}
!753 = !DISubrange(count: 8)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !673, file: !6, line: 688, baseType: !755, size: 320)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 669, size: 320, elements: !756)
!756 = !{!757, !758, !759, !760, !761, !762, !763, !764, !765}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !755, file: !6, line: 670, baseType: !19, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !755, file: !6, line: 670, baseType: !76, size: 8, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !6, line: 670, baseType: !76, size: 8, offset: 72)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !755, file: !6, line: 670, baseType: !20, size: 16, offset: 80)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !755, file: !6, line: 670, baseType: !20, size: 16, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !755, file: !6, line: 671, baseType: !76, size: 8, offset: 112)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !755, file: !6, line: 672, baseType: !122, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !755, file: !6, line: 673, baseType: !126, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !755, file: !6, line: 674, baseType: !766, size: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 660, size: 128, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !767, file: !6, line: 661, baseType: !503, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !767, file: !6, line: 662, baseType: !19, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !101, file: !6, line: 918, baseType: !109, size: 64, offset: 512)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !101, file: !6, line: 919, baseType: !15, size: 32, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !71, file: !72, line: 61, baseType: !15, size: 32, offset: 1088)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !71, file: !72, line: 62, baseType: !15, size: 32, offset: 1120)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !71, file: !72, line: 63, baseType: !20, size: 16, offset: 1152)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !71, file: !72, line: 64, baseType: !76, size: 8, offset: 1168)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !71, file: !72, line: 66, baseType: !778, size: 2688, offset: 1216)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 2688, elements: !56)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !71, file: !72, line: 67, baseType: !780, size: 3072, offset: 3904)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 3072, elements: !752)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !71, file: !72, line: 68, baseType: !782, size: 576, offset: 6976)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 576, elements: !783)
!783 = !{!784}
!784 = !DISubrange(count: 9)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !71, file: !72, line: 69, baseType: !185, size: 64, offset: 7552)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !71, file: !72, line: 71, baseType: !95, size: 64, offset: 7616)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !71, file: !72, line: 72, baseType: !185, size: 64, offset: 7680)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !71, file: !72, line: 73, baseType: !672, size: 64, offset: 7744)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !71, file: !72, line: 74, baseType: !122, size: 64, offset: 7808)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !71, file: !72, line: 75, baseType: !126, size: 64, offset: 7872)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !71, file: !72, line: 76, baseType: !122, size: 64, offset: 7936)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !71, file: !72, line: 77, baseType: !109, size: 64, offset: 8000)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !71, file: !72, line: 78, baseType: !126, size: 64, offset: 8064)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !71, file: !72, line: 79, baseType: !122, size: 64, offset: 8128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !71, file: !72, line: 80, baseType: !160, size: 64, offset: 8192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !71, file: !72, line: 81, baseType: !109, size: 64, offset: 8256)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !71, file: !72, line: 82, baseType: !798, size: 64, offset: 8320)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 718, size: 128, elements: !801)
!801 = !{!802, !803, !804, !805, !806, !807}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !800, file: !6, line: 722, baseType: !15, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !800, file: !6, line: 723, baseType: !15, size: 32, offset: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !800, file: !6, line: 724, baseType: !20, size: 16, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !800, file: !6, line: 725, baseType: !76, size: 8, offset: 80)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !800, file: !6, line: 726, baseType: !76, size: 8, offset: 88)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !800, file: !6, line: 727, baseType: !76, size: 8, offset: 96)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !71, file: !72, line: 83, baseType: !109, size: 64, offset: 8384)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !71, file: !72, line: 84, baseType: !126, size: 64, offset: 8448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !71, file: !72, line: 85, baseType: !672, size: 64, offset: 8512)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !71, file: !72, line: 86, baseType: !126, size: 64, offset: 8576)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !71, file: !72, line: 87, baseType: !672, size: 64, offset: 8640)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !71, file: !72, line: 88, baseType: !109, size: 64, offset: 8704)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !71, file: !72, line: 89, baseType: !109, size: 64, offset: 8768)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !71, file: !72, line: 90, baseType: !235, size: 64, offset: 8832)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !71, file: !72, line: 91, baseType: !817, size: 64, offset: 8896)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 652, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!13, !70, !821}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !71, file: !72, line: 92, baseType: !823, size: 64, offset: 8960)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 656, baseType: !217)
!824 = !{!825, !826, !827, !828, !830, !831}
!825 = !DILocalVariable(name: "walk_state", arg: 1, scope: !67, file: !3, line: 221, type: !70)
!826 = !DILocalVariable(name: "status", scope: !67, file: !3, line: 223, type: !13)
!827 = !DILocalVariable(name: "op", scope: !67, file: !3, line: 224, type: !109)
!828 = !DILocalVariable(name: "parser_state", scope: !67, file: !3, line: 225, type: !829)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!830 = !DILocalVariable(name: "aml_op_start", scope: !67, file: !3, line: 226, type: !95)
!831 = !DILocalVariable(name: "opcode_length", scope: !67, file: !3, line: 227, type: !76)
!832 = !DILocation(line: 221, column: 56, scope: !67)
!833 = !DILocation(line: 223, column: 2, scope: !67)
!834 = !DILocation(line: 223, column: 14, scope: !67)
!835 = !DILocation(line: 224, column: 2, scope: !67)
!836 = !DILocation(line: 224, column: 27, scope: !67)
!837 = !DILocation(line: 225, column: 2, scope: !67)
!838 = !DILocation(line: 225, column: 27, scope: !67)
!839 = !DILocation(line: 226, column: 2, scope: !67)
!840 = !DILocation(line: 226, column: 6, scope: !67)
!841 = !DILocation(line: 227, column: 2, scope: !67)
!842 = !DILocation(line: 227, column: 5, scope: !67)
!843 = !DILocation(line: 231, column: 6, scope: !844)
!844 = distinct !DILexicalBlock(scope: !67, file: !3, line: 231, column: 6)
!845 = !DILocation(line: 231, column: 18, scope: !844)
!846 = !DILocation(line: 231, column: 38, scope: !844)
!847 = !DILocation(line: 231, column: 6, scope: !67)
!848 = !DILocation(line: 232, column: 3, scope: !849)
!849 = distinct !DILexicalBlock(scope: !844, file: !3, line: 231, column: 47)
!850 = !DILocation(line: 235, column: 18, scope: !67)
!851 = !DILocation(line: 235, column: 30, scope: !67)
!852 = !DILocation(line: 235, column: 15, scope: !67)
!853 = !DILocation(line: 236, column: 2, scope: !67)
!854 = !DILocation(line: 236, column: 14, scope: !67)
!855 = !DILocation(line: 236, column: 24, scope: !67)
!856 = !DILocation(line: 240, column: 6, scope: !857)
!857 = distinct !DILexicalBlock(scope: !67, file: !3, line: 240, column: 6)
!858 = !DILocation(line: 240, column: 18, scope: !857)
!859 = !DILocation(line: 240, column: 28, scope: !857)
!860 = !DILocation(line: 240, column: 6, scope: !67)
!861 = !DILocation(line: 244, column: 35, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 244, column: 7)
!863 = distinct !DILexicalBlock(scope: !857, file: !3, line: 240, column: 56)
!864 = !DILocation(line: 244, column: 7, scope: !862)
!865 = !DILocation(line: 244, column: 7, scope: !863)
!866 = !DILocation(line: 249, column: 9, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 249, column: 8)
!868 = distinct !DILexicalBlock(scope: !862, file: !3, line: 244, column: 50)
!869 = !DILocation(line: 249, column: 23, scope: !867)
!870 = !DILocation(line: 249, column: 42, scope: !867)
!871 = !DILocation(line: 249, column: 8, scope: !867)
!872 = !DILocation(line: 249, column: 46, scope: !867)
!873 = !DILocation(line: 250, column: 10, scope: !867)
!874 = !DILocation(line: 250, column: 24, scope: !867)
!875 = !DILocation(line: 250, column: 43, scope: !867)
!876 = !DILocation(line: 251, column: 10, scope: !867)
!877 = !DILocation(line: 251, column: 21, scope: !867)
!878 = !DILocation(line: 252, column: 9, scope: !867)
!879 = !DILocation(line: 252, column: 13, scope: !867)
!880 = !DILocation(line: 252, column: 27, scope: !867)
!881 = !DILocation(line: 252, column: 46, scope: !867)
!882 = !DILocation(line: 253, column: 6, scope: !867)
!883 = !DILocation(line: 253, column: 17, scope: !867)
!884 = !DILocation(line: 254, column: 8, scope: !867)
!885 = !DILocation(line: 254, column: 12, scope: !867)
!886 = !DILocation(line: 254, column: 24, scope: !867)
!887 = !DILocation(line: 254, column: 11, scope: !867)
!888 = !DILocation(line: 255, column: 8, scope: !867)
!889 = !DILocation(line: 255, column: 12, scope: !867)
!890 = !DILocation(line: 255, column: 24, scope: !867)
!891 = !DILocation(line: 255, column: 46, scope: !867)
!892 = !DILocation(line: 255, column: 52, scope: !867)
!893 = !DILocation(line: 249, column: 8, scope: !868)
!894 = !DILocation(line: 261, column: 5, scope: !895)
!895 = distinct !DILexicalBlock(scope: !867, file: !3, line: 256, column: 40)
!896 = !DILocation(line: 261, column: 17, scope: !895)
!897 = !DILocation(line: 261, column: 20, scope: !895)
!898 = !DILocation(line: 263, column: 37, scope: !895)
!899 = !DILocation(line: 263, column: 9, scope: !895)
!900 = !DILocation(line: 262, column: 12, scope: !895)
!901 = !DILocation(line: 266, column: 9, scope: !902)
!902 = distinct !DILexicalBlock(scope: !895, file: !3, line: 266, column: 9)
!903 = !DILocation(line: 267, column: 9, scope: !902)
!904 = !DILocation(line: 267, column: 13, scope: !902)
!905 = !DILocation(line: 266, column: 9, scope: !895)
!906 = !DILocation(line: 268, column: 10, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 268, column: 10)
!908 = distinct !DILexicalBlock(scope: !902, file: !3, line: 267, column: 42)
!909 = !DILocation(line: 268, column: 17, scope: !907)
!910 = !DILocation(line: 268, column: 10, scope: !908)
!911 = !DILocation(line: 269, column: 7, scope: !912)
!912 = distinct !DILexicalBlock(scope: !907, file: !3, line: 268, column: 44)
!913 = !DILocation(line: 271, column: 6, scope: !912)
!914 = !DILocation(line: 273, column: 6, scope: !908)
!915 = !DILocation(line: 275, column: 6, scope: !908)
!916 = !DILocation(line: 279, column: 34, scope: !895)
!917 = !DILocation(line: 279, column: 46, scope: !895)
!918 = !DILocation(line: 280, column: 13, scope: !895)
!919 = !DILocation(line: 279, column: 9, scope: !895)
!920 = !DILocation(line: 278, column: 12, scope: !895)
!921 = !DILocation(line: 281, column: 4, scope: !895)
!922 = !DILocation(line: 283, column: 22, scope: !868)
!923 = !DILocation(line: 284, column: 9, scope: !868)
!924 = !DILocation(line: 284, column: 21, scope: !868)
!925 = !DILocation(line: 285, column: 9, scope: !868)
!926 = !DILocation(line: 285, column: 21, scope: !868)
!927 = !DILocation(line: 283, column: 4, scope: !868)
!928 = !DILocation(line: 288, column: 3, scope: !868)
!929 = !DILocation(line: 288, column: 14, scope: !930)
!930 = distinct !DILexicalBlock(scope: !862, file: !3, line: 288, column: 14)
!931 = !DILocation(line: 288, column: 26, scope: !930)
!932 = !DILocation(line: 288, column: 14, scope: !862)
!933 = !DILocation(line: 292, column: 9, scope: !934)
!934 = distinct !DILexicalBlock(scope: !930, file: !3, line: 288, column: 35)
!935 = !DILocation(line: 292, column: 21, scope: !934)
!936 = !DILocation(line: 292, column: 7, scope: !934)
!937 = !DILocation(line: 293, column: 28, scope: !934)
!938 = !DILocation(line: 293, column: 40, scope: !934)
!939 = !DILocation(line: 293, column: 4, scope: !934)
!940 = !DILocation(line: 293, column: 16, scope: !934)
!941 = !DILocation(line: 293, column: 26, scope: !934)
!942 = !DILocation(line: 294, column: 3, scope: !934)
!943 = !DILocation(line: 295, column: 2, scope: !863)
!944 = !DILocation(line: 300, column: 2, scope: !67)
!945 = !DILocation(line: 300, column: 10, scope: !67)
!946 = !DILocation(line: 300, column: 24, scope: !67)
!947 = !DILocation(line: 300, column: 30, scope: !67)
!948 = !DILocation(line: 300, column: 44, scope: !67)
!949 = !DILocation(line: 300, column: 28, scope: !67)
!950 = !DILocation(line: 300, column: 53, scope: !67)
!951 = !DILocation(line: 300, column: 57, scope: !67)
!952 = !DILocation(line: 303, column: 18, scope: !953)
!953 = distinct !DILexicalBlock(scope: !67, file: !3, line: 300, column: 62)
!954 = !DILocation(line: 303, column: 32, scope: !953)
!955 = !DILocation(line: 303, column: 16, scope: !953)
!956 = !DILocation(line: 304, column: 8, scope: !957)
!957 = distinct !DILexicalBlock(scope: !953, file: !3, line: 304, column: 7)
!958 = !DILocation(line: 304, column: 7, scope: !953)
!959 = !DILocation(line: 306, column: 26, scope: !960)
!960 = distinct !DILexicalBlock(scope: !957, file: !3, line: 304, column: 12)
!961 = !DILocation(line: 306, column: 38, scope: !960)
!962 = !DILocation(line: 306, column: 8, scope: !960)
!963 = !DILocation(line: 305, column: 11, scope: !960)
!964 = !DILocation(line: 307, column: 8, scope: !965)
!965 = distinct !DILexicalBlock(scope: !960, file: !3, line: 307, column: 8)
!966 = !DILocation(line: 307, column: 8, scope: !960)
!967 = !DILocation(line: 315, column: 10, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !3, line: 315, column: 9)
!969 = distinct !DILexicalBlock(scope: !965, file: !3, line: 307, column: 30)
!970 = !DILocation(line: 316, column: 10, scope: !968)
!971 = !DILocation(line: 316, column: 22, scope: !968)
!972 = !DILocation(line: 317, column: 9, scope: !968)
!973 = !DILocation(line: 317, column: 14, scope: !968)
!974 = !DILocation(line: 317, column: 21, scope: !968)
!975 = !DILocation(line: 318, column: 6, scope: !968)
!976 = !DILocation(line: 318, column: 10, scope: !968)
!977 = !DILocation(line: 318, column: 17, scope: !968)
!978 = !DILocation(line: 315, column: 9, scope: !969)
!979 = !DILocation(line: 319, column: 13, scope: !980)
!980 = distinct !DILexicalBlock(scope: !968, file: !3, line: 318, column: 36)
!981 = !DILocation(line: 320, column: 5, scope: !980)
!982 = !DILocation(line: 321, column: 9, scope: !983)
!983 = distinct !DILexicalBlock(scope: !969, file: !3, line: 321, column: 9)
!984 = !DILocation(line: 321, column: 16, scope: !983)
!985 = !DILocation(line: 321, column: 9, scope: !969)
!986 = !DILocation(line: 322, column: 6, scope: !987)
!987 = distinct !DILexicalBlock(scope: !983, file: !3, line: 321, column: 43)
!988 = distinct !{!988, !944, !989, !990, !991}
!989 = !DILocation(line: 557, column: 2, scope: !67)
!990 = !{!"llvm.loop.mustprogress"}
!991 = !{!"llvm.loop.unroll.disable"}
!992 = !DILocation(line: 325, column: 9, scope: !993)
!993 = distinct !DILexicalBlock(scope: !969, file: !3, line: 325, column: 9)
!994 = !DILocation(line: 325, column: 16, scope: !993)
!995 = !DILocation(line: 325, column: 9, scope: !969)
!996 = !DILocation(line: 326, column: 13, scope: !997)
!997 = distinct !DILexicalBlock(scope: !993, file: !3, line: 325, column: 42)
!998 = !DILocation(line: 327, column: 5, scope: !997)
!999 = !DILocation(line: 329, column: 9, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !969, file: !3, line: 329, column: 9)
!1001 = !DILocation(line: 329, column: 16, scope: !1000)
!1002 = !DILocation(line: 329, column: 9, scope: !969)
!1003 = !DILocation(line: 330, column: 6, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 329, column: 38)
!1005 = !DILocation(line: 334, column: 29, scope: !969)
!1006 = !DILocation(line: 335, column: 8, scope: !969)
!1007 = !DILocation(line: 334, column: 9, scope: !969)
!1008 = !DILocation(line: 333, column: 12, scope: !969)
!1009 = !DILocation(line: 336, column: 9, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !969, file: !3, line: 336, column: 9)
!1011 = !DILocation(line: 336, column: 9, scope: !969)
!1012 = !DILocation(line: 337, column: 6, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 336, column: 31)
!1014 = !DILocation(line: 341, column: 11, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !969, file: !3, line: 339, column: 9)
!1016 = !DILocation(line: 341, column: 23, scope: !1015)
!1017 = !DILocation(line: 340, column: 10, scope: !1015)
!1018 = !DILocation(line: 341, column: 32, scope: !1015)
!1019 = !DILocation(line: 339, column: 9, scope: !1015)
!1020 = !DILocation(line: 339, column: 9, scope: !969)
!1021 = !DILocation(line: 347, column: 6, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 341, column: 46)
!1023 = !DILocation(line: 353, column: 20, scope: !1022)
!1024 = !DILocation(line: 354, column: 11, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 354, column: 10)
!1026 = !DILocation(line: 354, column: 23, scope: !1025)
!1027 = !DILocation(line: 354, column: 30, scope: !1025)
!1028 = !DILocation(line: 354, column: 40, scope: !1025)
!1029 = !DILocation(line: 354, column: 10, scope: !1022)
!1030 = !DILocation(line: 356, column: 21, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 355, column: 31)
!1032 = !DILocation(line: 357, column: 6, scope: !1031)
!1033 = !DILocation(line: 359, column: 10, scope: !1022)
!1034 = !DILocation(line: 359, column: 22, scope: !1022)
!1035 = !DILocation(line: 359, column: 28, scope: !1022)
!1036 = !DILocation(line: 359, column: 26, scope: !1022)
!1037 = !DILocation(line: 358, column: 6, scope: !1022)
!1038 = !DILocation(line: 358, column: 18, scope: !1022)
!1039 = !DILocation(line: 358, column: 31, scope: !1022)
!1040 = !DILocation(line: 358, column: 35, scope: !1022)
!1041 = !DILocation(line: 363, column: 12, scope: !1022)
!1042 = !DILocation(line: 363, column: 24, scope: !1022)
!1043 = !DILocation(line: 362, column: 10, scope: !1022)
!1044 = !DILocation(line: 361, column: 6, scope: !1022)
!1045 = !DILocation(line: 361, column: 18, scope: !1022)
!1046 = !DILocation(line: 361, column: 31, scope: !1022)
!1047 = !DILocation(line: 361, column: 35, scope: !1022)
!1048 = !DILocation(line: 365, column: 10, scope: !1022)
!1049 = !DILocation(line: 365, column: 22, scope: !1022)
!1050 = !DILocation(line: 365, column: 35, scope: !1022)
!1051 = !DILocation(line: 364, column: 6, scope: !1022)
!1052 = !DILocation(line: 364, column: 18, scope: !1022)
!1053 = !DILocation(line: 364, column: 22, scope: !1022)
!1054 = !DILocation(line: 366, column: 5, scope: !1022)
!1055 = !DILocation(line: 368, column: 5, scope: !969)
!1056 = !DILocation(line: 371, column: 31, scope: !960)
!1057 = !DILocation(line: 371, column: 35, scope: !960)
!1058 = !DILocation(line: 371, column: 4, scope: !960)
!1059 = !DILocation(line: 372, column: 3, scope: !960)
!1060 = !DILocation(line: 378, column: 3, scope: !953)
!1061 = !DILocation(line: 378, column: 15, scope: !953)
!1062 = !DILocation(line: 378, column: 25, scope: !953)
!1063 = !DILocation(line: 380, column: 11, scope: !953)
!1064 = !DILocation(line: 380, column: 22, scope: !953)
!1065 = !DILocation(line: 380, column: 3, scope: !953)
!1066 = !DILocation(line: 386, column: 4, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !953, file: !3, line: 380, column: 34)
!1068 = !DILocation(line: 391, column: 4, scope: !1067)
!1069 = !DILocation(line: 396, column: 7, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !953, file: !3, line: 396, column: 7)
!1071 = !DILocation(line: 396, column: 19, scope: !1070)
!1072 = !DILocation(line: 396, column: 7, scope: !953)
!1073 = !DILocation(line: 401, column: 30, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 396, column: 30)
!1075 = !DILocation(line: 401, column: 42, scope: !1074)
!1076 = !DILocation(line: 401, column: 56, scope: !1074)
!1077 = !DILocation(line: 401, column: 8, scope: !1074)
!1078 = !DILocation(line: 400, column: 11, scope: !1074)
!1079 = !DILocation(line: 402, column: 8, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 402, column: 8)
!1081 = !DILocation(line: 402, column: 8, scope: !1074)
!1082 = !DILocation(line: 404, column: 29, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 402, column: 30)
!1084 = !DILocation(line: 405, column: 8, scope: !1083)
!1085 = !DILocation(line: 404, column: 9, scope: !1083)
!1086 = !DILocation(line: 403, column: 12, scope: !1083)
!1087 = !DILocation(line: 406, column: 9, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 406, column: 9)
!1089 = !DILocation(line: 406, column: 9, scope: !1083)
!1090 = !DILocation(line: 407, column: 6, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 406, column: 31)
!1092 = !DILocation(line: 409, column: 10, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 409, column: 9)
!1094 = !DILocation(line: 409, column: 22, scope: !1093)
!1095 = !DILocation(line: 409, column: 9, scope: !1093)
!1096 = !DILocation(line: 409, column: 37, scope: !1093)
!1097 = !DILocation(line: 410, column: 11, scope: !1093)
!1098 = !DILocation(line: 410, column: 23, scope: !1093)
!1099 = !DILocation(line: 411, column: 11, scope: !1093)
!1100 = !DILocation(line: 411, column: 18, scope: !1093)
!1101 = !DILocation(line: 412, column: 10, scope: !1093)
!1102 = !DILocation(line: 412, column: 14, scope: !1093)
!1103 = !DILocation(line: 412, column: 26, scope: !1093)
!1104 = !DILocation(line: 413, column: 7, scope: !1093)
!1105 = !DILocation(line: 413, column: 14, scope: !1093)
!1106 = !DILocation(line: 409, column: 9, scope: !1083)
!1107 = !DILocation(line: 419, column: 10, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 413, column: 33)
!1109 = !DILocation(line: 419, column: 22, scope: !1108)
!1110 = !DILocation(line: 420, column: 10, scope: !1108)
!1111 = !DILocation(line: 420, column: 30, scope: !1108)
!1112 = !DILocation(line: 418, column: 6, scope: !1108)
!1113 = !DILocation(line: 418, column: 20, scope: !1108)
!1114 = !DILocation(line: 418, column: 24, scope: !1108)
!1115 = !DILocation(line: 423, column: 11, scope: !1108)
!1116 = !DILocation(line: 422, column: 10, scope: !1108)
!1117 = !DILocation(line: 421, column: 6, scope: !1108)
!1118 = !DILocation(line: 421, column: 20, scope: !1108)
!1119 = !DILocation(line: 421, column: 24, scope: !1108)
!1120 = !DILocation(line: 424, column: 24, scope: !1108)
!1121 = !DILocation(line: 424, column: 38, scope: !1108)
!1122 = !DILocation(line: 424, column: 6, scope: !1108)
!1123 = !DILocation(line: 424, column: 18, scope: !1108)
!1124 = !DILocation(line: 424, column: 22, scope: !1108)
!1125 = !DILocation(line: 426, column: 6, scope: !1108)
!1126 = !DILocation(line: 428, column: 11, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 428, column: 10)
!1128 = !DILocation(line: 428, column: 23, scope: !1127)
!1129 = !DILocation(line: 428, column: 10, scope: !1127)
!1130 = !DILocation(line: 428, column: 27, scope: !1127)
!1131 = !DILocation(line: 428, column: 10, scope: !1108)
!1132 = !DILocation(line: 429, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 428, column: 43)
!1134 = !DILocation(line: 432, column: 11, scope: !1133)
!1135 = !DILocation(line: 432, column: 23, scope: !1133)
!1136 = !DILocation(line: 432, column: 27, scope: !1133)
!1137 = !DILocation(line: 431, column: 7, scope: !1133)
!1138 = !DILocation(line: 431, column: 19, scope: !1133)
!1139 = !DILocation(line: 431, column: 32, scope: !1133)
!1140 = !DILocation(line: 431, column: 36, scope: !1133)
!1141 = !DILocation(line: 435, column: 12, scope: !1133)
!1142 = !DILocation(line: 434, column: 11, scope: !1133)
!1143 = !DILocation(line: 433, column: 7, scope: !1133)
!1144 = !DILocation(line: 433, column: 19, scope: !1133)
!1145 = !DILocation(line: 433, column: 32, scope: !1133)
!1146 = !DILocation(line: 433, column: 36, scope: !1133)
!1147 = !DILocation(line: 437, column: 11, scope: !1133)
!1148 = !DILocation(line: 437, column: 25, scope: !1133)
!1149 = !DILocation(line: 436, column: 7, scope: !1133)
!1150 = !DILocation(line: 436, column: 19, scope: !1133)
!1151 = !DILocation(line: 436, column: 23, scope: !1133)
!1152 = !DILocation(line: 438, column: 6, scope: !1133)
!1153 = !DILocation(line: 439, column: 6, scope: !1108)
!1154 = !DILocation(line: 441, column: 5, scope: !1108)
!1155 = !DILocation(line: 442, column: 8, scope: !1083)
!1156 = !DILocation(line: 443, column: 5, scope: !1083)
!1157 = !DILocation(line: 445, column: 3, scope: !1074)
!1158 = !DILocation(line: 453, column: 7, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !953, file: !3, line: 453, column: 7)
!1160 = !DILocation(line: 453, column: 19, scope: !1159)
!1161 = !DILocation(line: 453, column: 7, scope: !953)
!1162 = !DILocation(line: 458, column: 32, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 453, column: 30)
!1164 = !DILocation(line: 458, column: 46, scope: !1163)
!1165 = !DILocation(line: 459, column: 11, scope: !1163)
!1166 = !DILocation(line: 459, column: 23, scope: !1163)
!1167 = !DILocation(line: 460, column: 11, scope: !1163)
!1168 = !DILocation(line: 460, column: 23, scope: !1163)
!1169 = !DILocation(line: 458, column: 13, scope: !1163)
!1170 = !DILocation(line: 458, column: 11, scope: !1163)
!1171 = !DILocation(line: 461, column: 8, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 461, column: 8)
!1173 = !DILocation(line: 461, column: 8, scope: !1163)
!1174 = !DILocation(line: 463, column: 29, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 461, column: 30)
!1176 = !DILocation(line: 464, column: 8, scope: !1175)
!1177 = !DILocation(line: 463, column: 9, scope: !1175)
!1178 = !DILocation(line: 462, column: 12, scope: !1175)
!1179 = !DILocation(line: 465, column: 9, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 465, column: 9)
!1181 = !DILocation(line: 465, column: 9, scope: !1175)
!1182 = !DILocation(line: 466, column: 6, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 465, column: 31)
!1184 = !DILocation(line: 469, column: 5, scope: !1175)
!1185 = !DILocation(line: 472, column: 7, scope: !1163)
!1186 = !DILocation(line: 473, column: 4, scope: !1163)
!1187 = !DILocation(line: 481, column: 31, scope: !953)
!1188 = !DILocation(line: 481, column: 42, scope: !953)
!1189 = !DILocation(line: 481, column: 7, scope: !953)
!1190 = !DILocation(line: 480, column: 3, scope: !953)
!1191 = !DILocation(line: 480, column: 15, scope: !953)
!1192 = !DILocation(line: 480, column: 23, scope: !953)
!1193 = !DILocation(line: 482, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !953, file: !3, line: 482, column: 7)
!1195 = !DILocation(line: 482, column: 19, scope: !1194)
!1196 = !DILocation(line: 482, column: 28, scope: !1194)
!1197 = !DILocation(line: 482, column: 34, scope: !1194)
!1198 = !DILocation(line: 482, column: 7, scope: !953)
!1199 = !DILocation(line: 483, column: 8, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 483, column: 8)
!1201 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 482, column: 47)
!1202 = !DILocation(line: 483, column: 19, scope: !1200)
!1203 = !DILocation(line: 483, column: 30, scope: !1200)
!1204 = !DILocation(line: 483, column: 47, scope: !1200)
!1205 = !DILocation(line: 484, column: 8, scope: !1200)
!1206 = !DILocation(line: 484, column: 19, scope: !1200)
!1207 = !DILocation(line: 484, column: 30, scope: !1200)
!1208 = !DILocation(line: 483, column: 8, scope: !1201)
!1209 = !DILocation(line: 494, column: 16, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 484, column: 53)
!1211 = !DILocation(line: 494, column: 30, scope: !1210)
!1212 = !DILocation(line: 494, column: 36, scope: !1210)
!1213 = !DILocation(line: 494, column: 46, scope: !1210)
!1214 = !DILocation(line: 494, column: 34, scope: !1210)
!1215 = !DILocation(line: 494, column: 9, scope: !1210)
!1216 = !DILocation(line: 493, column: 5, scope: !1210)
!1217 = !DILocation(line: 493, column: 15, scope: !1210)
!1218 = !DILocation(line: 493, column: 22, scope: !1210)
!1219 = !DILocation(line: 495, column: 4, scope: !1210)
!1220 = !DILocation(line: 496, column: 3, scope: !1201)
!1221 = !DILocation(line: 498, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !953, file: !3, line: 498, column: 7)
!1223 = !DILocation(line: 498, column: 19, scope: !1222)
!1224 = !DILocation(line: 498, column: 28, scope: !1222)
!1225 = !DILocation(line: 498, column: 34, scope: !1222)
!1226 = !DILocation(line: 498, column: 7, scope: !953)
!1227 = !DILocation(line: 506, column: 15, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 498, column: 48)
!1229 = !DILocation(line: 506, column: 29, scope: !1228)
!1230 = !DILocation(line: 506, column: 35, scope: !1228)
!1231 = !DILocation(line: 506, column: 45, scope: !1228)
!1232 = !DILocation(line: 506, column: 33, scope: !1228)
!1233 = !DILocation(line: 506, column: 8, scope: !1228)
!1234 = !DILocation(line: 505, column: 4, scope: !1228)
!1235 = !DILocation(line: 505, column: 14, scope: !1228)
!1236 = !DILocation(line: 505, column: 21, scope: !1228)
!1237 = !DILocation(line: 507, column: 3, scope: !1228)
!1238 = !DILocation(line: 509, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !953, file: !3, line: 509, column: 7)
!1240 = !DILocation(line: 509, column: 18, scope: !1239)
!1241 = !DILocation(line: 509, column: 29, scope: !1239)
!1242 = !DILocation(line: 509, column: 7, scope: !953)
!1243 = !DILocation(line: 516, column: 15, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 509, column: 51)
!1245 = !DILocation(line: 516, column: 29, scope: !1244)
!1246 = !DILocation(line: 516, column: 35, scope: !1244)
!1247 = !DILocation(line: 516, column: 45, scope: !1244)
!1248 = !DILocation(line: 516, column: 33, scope: !1244)
!1249 = !DILocation(line: 516, column: 8, scope: !1244)
!1250 = !DILocation(line: 515, column: 4, scope: !1244)
!1251 = !DILocation(line: 515, column: 14, scope: !1244)
!1252 = !DILocation(line: 515, column: 21, scope: !1244)
!1253 = !DILocation(line: 517, column: 3, scope: !1244)
!1254 = !DILocation(line: 521, column: 7, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !953, file: !3, line: 521, column: 7)
!1256 = !DILocation(line: 521, column: 19, scope: !1255)
!1257 = !DILocation(line: 521, column: 38, scope: !1255)
!1258 = !DILocation(line: 521, column: 7, scope: !953)
!1259 = !DILocation(line: 522, column: 21, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 521, column: 47)
!1261 = !DILocation(line: 522, column: 4, scope: !1260)
!1262 = !DILocation(line: 522, column: 16, scope: !1260)
!1263 = !DILocation(line: 522, column: 19, scope: !1260)
!1264 = !DILocation(line: 523, column: 25, scope: !1260)
!1265 = !DILocation(line: 523, column: 36, scope: !1260)
!1266 = !DILocation(line: 523, column: 4, scope: !1260)
!1267 = !DILocation(line: 523, column: 16, scope: !1260)
!1268 = !DILocation(line: 523, column: 23, scope: !1260)
!1269 = !DILocation(line: 525, column: 13, scope: !1260)
!1270 = !DILocation(line: 525, column: 25, scope: !1260)
!1271 = !DILocation(line: 525, column: 44, scope: !1260)
!1272 = !DILocation(line: 525, column: 11, scope: !1260)
!1273 = !DILocation(line: 527, column: 33, scope: !1260)
!1274 = !DILocation(line: 527, column: 45, scope: !1260)
!1275 = !DILocation(line: 527, column: 49, scope: !1260)
!1276 = !DILocation(line: 527, column: 8, scope: !1260)
!1277 = !DILocation(line: 526, column: 11, scope: !1260)
!1278 = !DILocation(line: 528, column: 8, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 528, column: 8)
!1280 = !DILocation(line: 528, column: 15, scope: !1279)
!1281 = !DILocation(line: 528, column: 8, scope: !1260)
!1282 = !DILocation(line: 529, column: 12, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 528, column: 35)
!1284 = !DILocation(line: 530, column: 4, scope: !1283)
!1285 = !DILocation(line: 531, column: 13, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 531, column: 12)
!1287 = !DILocation(line: 532, column: 6, scope: !1286)
!1288 = !DILocation(line: 532, column: 18, scope: !1286)
!1289 = !DILocation(line: 533, column: 5, scope: !1286)
!1290 = !DILocation(line: 533, column: 9, scope: !1286)
!1291 = !DILocation(line: 534, column: 9, scope: !1286)
!1292 = !DILocation(line: 534, column: 12, scope: !1286)
!1293 = !DILocation(line: 534, column: 19, scope: !1286)
!1294 = !DILocation(line: 535, column: 9, scope: !1286)
!1295 = !DILocation(line: 535, column: 12, scope: !1286)
!1296 = !DILocation(line: 535, column: 19, scope: !1286)
!1297 = !DILocation(line: 531, column: 12, scope: !1279)
!1298 = !DILocation(line: 548, column: 12, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 535, column: 37)
!1300 = !DILocation(line: 549, column: 4, scope: !1299)
!1301 = !DILocation(line: 550, column: 3, scope: !1260)
!1302 = !DILocation(line: 552, column: 32, scope: !953)
!1303 = !DILocation(line: 552, column: 49, scope: !953)
!1304 = !DILocation(line: 552, column: 12, scope: !953)
!1305 = !DILocation(line: 552, column: 10, scope: !953)
!1306 = !DILocation(line: 553, column: 7, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !953, file: !3, line: 553, column: 7)
!1308 = !DILocation(line: 553, column: 7, scope: !953)
!1309 = !DILocation(line: 554, column: 4, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 553, column: 29)
!1311 = !DILocation(line: 559, column: 37, scope: !67)
!1312 = !DILocation(line: 559, column: 49, scope: !67)
!1313 = !DILocation(line: 559, column: 53, scope: !67)
!1314 = !DILocation(line: 559, column: 11, scope: !67)
!1315 = !DILocation(line: 559, column: 9, scope: !67)
!1316 = !DILocation(line: 560, column: 2, scope: !67)
!1317 = !DILocation(line: 561, column: 1, scope: !67)
!1318 = !DISubprogram(name: "acpi_ps_has_completed_scope", scope: !1319, file: !1319, line: 147, type: !1320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1319 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!76, !829}
!1322 = !DISubprogram(name: "acpi_ds_get_predicate_value", scope: !1323, file: !1323, line: 72, type: !1324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1323 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!13, !70, !126}
!1326 = !DISubprogram(name: "acpi_exception", scope: !1327, file: !1327, line: 906, type: !1328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1327 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !1330, !15, !13, !1330, null}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!1331 = !DISubprogram(name: "acpi_ps_next_parse_state", scope: !1319, file: !1319, line: 128, type: !1332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!13, !70, !109, !13}
!1334 = !DISubprogram(name: "acpi_ps_pop_scope", scope: !1319, file: !1319, line: 150, type: !1335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{null, !829, !821, !1337, !1337}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!1338 = !DISubprogram(name: "acpi_ps_create_op", scope: !1319, file: !1319, line: 94, type: !1339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!13, !70, !95, !821}
!1341 = !DISubprogram(name: "acpi_ps_complete_op", scope: !1319, file: !1319, line: 98, type: !1342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!13, !70, !821, !13}
!1344 = !DISubprogram(name: "acpi_ns_opens_scope", scope: !1345, file: !1345, line: 251, type: !1346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1345 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!15, !1348}
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !14, line: 644, baseType: !15)
!1349 = !DISubprogram(name: "acpi_ps_get_opcode_info", scope: !1319, file: !1319, line: 108, type: !1350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!798, !20}
!1352 = !DISubprogram(name: "acpi_info", scope: !1327, file: !1327, line: 917, type: !1353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{null, !1330, null}
!1355 = !DISubprogram(name: "acpi_ps_get_opcode_name", scope: !1319, file: !1319, line: 110, type: !1356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1330, !20}
!1358 = !DISubprogram(name: "acpi_ps_get_next_package_end", scope: !1319, file: !1319, line: 52, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!95, !829}
!1361 = !DISubprogram(name: "acpi_ex_start_trace_opcode", scope: !1362, file: !1362, line: 112, type: !1363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1362 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !109, !70}
!1365 = distinct !DISubprogram(name: "acpi_ps_get_arguments", scope: !3, file: !3, line: 50, type: !1366, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!13, !70, !95, !109}
!1368 = !{!1369, !1370, !1371, !1372, !1373}
!1369 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1365, file: !3, line: 50, type: !70)
!1370 = !DILocalVariable(name: "aml_op_start", arg: 2, scope: !1365, file: !3, line: 51, type: !95)
!1371 = !DILocalVariable(name: "op", arg: 3, scope: !1365, file: !3, line: 51, type: !109)
!1372 = !DILocalVariable(name: "status", scope: !1365, file: !3, line: 53, type: !13)
!1373 = !DILocalVariable(name: "arg", scope: !1365, file: !3, line: 54, type: !109)
!1374 = !DILocation(line: 50, column: 47, scope: !1365)
!1375 = !DILocation(line: 51, column: 14, scope: !1365)
!1376 = !DILocation(line: 51, column: 53, scope: !1365)
!1377 = !DILocation(line: 53, column: 2, scope: !1365)
!1378 = !DILocation(line: 53, column: 14, scope: !1365)
!1379 = !DILocation(line: 54, column: 2, scope: !1365)
!1380 = !DILocation(line: 54, column: 27, scope: !1365)
!1381 = !DILocation(line: 62, column: 10, scope: !1365)
!1382 = !DILocation(line: 62, column: 21, scope: !1365)
!1383 = !DILocation(line: 62, column: 2, scope: !1365)
!1384 = !DILocation(line: 71, column: 33, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 62, column: 33)
!1386 = !DILocation(line: 71, column: 45, scope: !1385)
!1387 = !DILocation(line: 72, column: 10, scope: !1385)
!1388 = !DILocation(line: 74, column: 10, scope: !1385)
!1389 = !DILocation(line: 71, column: 3, scope: !1385)
!1390 = !DILocation(line: 75, column: 3, scope: !1385)
!1391 = !DILocation(line: 79, column: 38, scope: !1385)
!1392 = !DILocation(line: 80, column: 12, scope: !1385)
!1393 = !DILocation(line: 80, column: 24, scope: !1385)
!1394 = !DILocation(line: 81, column: 10, scope: !1385)
!1395 = !DILocation(line: 79, column: 12, scope: !1385)
!1396 = !DILocation(line: 79, column: 10, scope: !1385)
!1397 = !DILocation(line: 83, column: 7, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 83, column: 7)
!1399 = !DILocation(line: 83, column: 7, scope: !1385)
!1400 = !DILocation(line: 84, column: 4, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 83, column: 29)
!1402 = !DILocation(line: 87, column: 3, scope: !1385)
!1403 = !DILocation(line: 87, column: 15, scope: !1385)
!1404 = !DILocation(line: 87, column: 25, scope: !1385)
!1405 = !DILocation(line: 88, column: 3, scope: !1385)
!1406 = !DILocation(line: 94, column: 3, scope: !1385)
!1407 = !DILocation(line: 94, column: 10, scope: !1385)
!1408 = !DILocation(line: 94, column: 54, scope: !1385)
!1409 = !DILocation(line: 95, column: 11, scope: !1385)
!1410 = !DILocation(line: 95, column: 23, scope: !1385)
!1411 = !DILocation(line: 95, column: 10, scope: !1385)
!1412 = !DILocation(line: 0, scope: !1385)
!1413 = !DILocation(line: 96, column: 22, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 95, column: 34)
!1415 = !DILocation(line: 96, column: 34, scope: !1414)
!1416 = !DILocation(line: 96, column: 47, scope: !1414)
!1417 = !DILocation(line: 96, column: 4, scope: !1414)
!1418 = !DILocation(line: 96, column: 16, scope: !1414)
!1419 = !DILocation(line: 96, column: 20, scope: !1414)
!1420 = !DILocation(line: 98, column: 12, scope: !1414)
!1421 = !DILocation(line: 98, column: 23, scope: !1414)
!1422 = !DILocation(line: 98, column: 4, scope: !1414)
!1423 = !DILocation(line: 105, column: 5, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 98, column: 35)
!1425 = !DILocation(line: 110, column: 5, scope: !1424)
!1426 = !DILocation(line: 114, column: 29, scope: !1414)
!1427 = !DILocation(line: 115, column: 10, scope: !1414)
!1428 = !DILocation(line: 115, column: 22, scope: !1414)
!1429 = !DILocation(line: 116, column: 8, scope: !1414)
!1430 = !DILocation(line: 114, column: 8, scope: !1414)
!1431 = !DILocation(line: 113, column: 11, scope: !1414)
!1432 = !DILocation(line: 118, column: 8, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 118, column: 8)
!1434 = !DILocation(line: 118, column: 8, scope: !1414)
!1435 = !DILocation(line: 119, column: 5, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 118, column: 30)
!1437 = !DILocation(line: 122, column: 8, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 122, column: 8)
!1439 = !DILocation(line: 122, column: 8, scope: !1414)
!1440 = !DILocation(line: 123, column: 24, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 122, column: 13)
!1442 = !DILocation(line: 123, column: 28, scope: !1441)
!1443 = !DILocation(line: 123, column: 5, scope: !1441)
!1444 = !DILocation(line: 124, column: 4, scope: !1441)
!1445 = !DILocation(line: 126, column: 4, scope: !1414)
!1446 = distinct !{!1446, !1406, !1447, !990, !991}
!1447 = !DILocation(line: 127, column: 3, scope: !1385)
!1448 = !DILocation(line: 136, column: 11, scope: !1385)
!1449 = !DILocation(line: 136, column: 22, scope: !1385)
!1450 = !DILocation(line: 136, column: 3, scope: !1385)
!1451 = !DILocation(line: 144, column: 21, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 136, column: 34)
!1453 = !DILocation(line: 144, column: 33, scope: !1452)
!1454 = !DILocation(line: 144, column: 46, scope: !1452)
!1455 = !DILocation(line: 144, column: 4, scope: !1452)
!1456 = !DILocation(line: 144, column: 14, scope: !1452)
!1457 = !DILocation(line: 144, column: 19, scope: !1452)
!1458 = !DILocation(line: 146, column: 9, scope: !1452)
!1459 = !DILocation(line: 146, column: 21, scope: !1452)
!1460 = !DILocation(line: 146, column: 34, scope: !1452)
!1461 = !DILocation(line: 147, column: 9, scope: !1452)
!1462 = !DILocation(line: 147, column: 21, scope: !1452)
!1463 = !DILocation(line: 147, column: 34, scope: !1452)
!1464 = !DILocation(line: 146, column: 42, scope: !1452)
!1465 = !DILocation(line: 145, column: 23, scope: !1452)
!1466 = !DILocation(line: 145, column: 4, scope: !1452)
!1467 = !DILocation(line: 145, column: 14, scope: !1452)
!1468 = !DILocation(line: 145, column: 21, scope: !1452)
!1469 = !DILocation(line: 152, column: 8, scope: !1452)
!1470 = !DILocation(line: 152, column: 20, scope: !1452)
!1471 = !DILocation(line: 152, column: 33, scope: !1452)
!1472 = !DILocation(line: 151, column: 4, scope: !1452)
!1473 = !DILocation(line: 151, column: 16, scope: !1452)
!1474 = !DILocation(line: 151, column: 29, scope: !1452)
!1475 = !DILocation(line: 151, column: 33, scope: !1452)
!1476 = !DILocation(line: 153, column: 4, scope: !1452)
!1477 = !DILocation(line: 153, column: 16, scope: !1452)
!1478 = !DILocation(line: 153, column: 26, scope: !1452)
!1479 = !DILocation(line: 154, column: 4, scope: !1452)
!1480 = !DILocation(line: 160, column: 9, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 160, column: 8)
!1482 = !DILocation(line: 160, column: 20, scope: !1481)
!1483 = !DILocation(line: 160, column: 8, scope: !1481)
!1484 = !DILocation(line: 160, column: 28, scope: !1481)
!1485 = !DILocation(line: 161, column: 9, scope: !1481)
!1486 = !DILocation(line: 161, column: 20, scope: !1481)
!1487 = !DILocation(line: 161, column: 35, scope: !1481)
!1488 = !DILocation(line: 161, column: 46, scope: !1481)
!1489 = !DILocation(line: 163, column: 8, scope: !1481)
!1490 = !DILocation(line: 163, column: 12, scope: !1481)
!1491 = !DILocation(line: 163, column: 24, scope: !1481)
!1492 = !DILocation(line: 163, column: 36, scope: !1481)
!1493 = !DILocation(line: 160, column: 8, scope: !1452)
!1494 = !DILocation(line: 174, column: 22, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 164, column: 29)
!1496 = !DILocation(line: 174, column: 5, scope: !1495)
!1497 = !DILocation(line: 174, column: 15, scope: !1495)
!1498 = !DILocation(line: 174, column: 20, scope: !1495)
!1499 = !DILocation(line: 176, column: 10, scope: !1495)
!1500 = !DILocation(line: 176, column: 22, scope: !1495)
!1501 = !DILocation(line: 176, column: 35, scope: !1495)
!1502 = !DILocation(line: 177, column: 10, scope: !1495)
!1503 = !DILocation(line: 176, column: 43, scope: !1495)
!1504 = !DILocation(line: 175, column: 24, scope: !1495)
!1505 = !DILocation(line: 175, column: 5, scope: !1495)
!1506 = !DILocation(line: 175, column: 15, scope: !1495)
!1507 = !DILocation(line: 175, column: 22, scope: !1495)
!1508 = !DILocation(line: 182, column: 9, scope: !1495)
!1509 = !DILocation(line: 182, column: 21, scope: !1495)
!1510 = !DILocation(line: 182, column: 34, scope: !1495)
!1511 = !DILocation(line: 181, column: 5, scope: !1495)
!1512 = !DILocation(line: 181, column: 17, scope: !1495)
!1513 = !DILocation(line: 181, column: 30, scope: !1495)
!1514 = !DILocation(line: 181, column: 34, scope: !1495)
!1515 = !DILocation(line: 183, column: 5, scope: !1495)
!1516 = !DILocation(line: 183, column: 17, scope: !1495)
!1517 = !DILocation(line: 183, column: 27, scope: !1495)
!1518 = !DILocation(line: 184, column: 4, scope: !1495)
!1519 = !DILocation(line: 185, column: 4, scope: !1452)
!1520 = !DILocation(line: 189, column: 8, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 189, column: 8)
!1522 = !DILocation(line: 189, column: 20, scope: !1521)
!1523 = !DILocation(line: 189, column: 8, scope: !1452)
!1524 = !DILocation(line: 191, column: 9, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 189, column: 35)
!1526 = !DILocation(line: 191, column: 21, scope: !1525)
!1527 = !DILocation(line: 191, column: 34, scope: !1525)
!1528 = !DILocation(line: 190, column: 5, scope: !1525)
!1529 = !DILocation(line: 190, column: 17, scope: !1525)
!1530 = !DILocation(line: 190, column: 40, scope: !1525)
!1531 = !DILocation(line: 190, column: 52, scope: !1525)
!1532 = !DILocation(line: 192, column: 4, scope: !1525)
!1533 = !DILocation(line: 193, column: 4, scope: !1452)
!1534 = !DILocation(line: 199, column: 4, scope: !1452)
!1535 = !DILocation(line: 202, column: 3, scope: !1385)
!1536 = !DILocation(line: 205, column: 2, scope: !1365)
!1537 = !DILocation(line: 206, column: 1, scope: !1365)
!1538 = !DISubprogram(name: "acpi_error", scope: !1327, file: !1327, line: 901, type: !1539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !1330, !15, !1330, null}
!1541 = distinct !DISubprogram(name: "acpi_os_free", scope: !1542, file: !1542, line: 60, type: !1543, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1545)
!1542 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !19}
!1545 = !{!1546}
!1546 = !DILocalVariable(name: "memory", arg: 1, scope: !1541, file: !1542, line: 60, type: !19)
!1547 = !DILocation(line: 60, column: 39, scope: !1541)
!1548 = !DILocation(line: 62, column: 8, scope: !1541)
!1549 = !DILocation(line: 62, column: 2, scope: !1541)
!1550 = !DILocation(line: 63, column: 1, scope: !1541)
!1551 = !DISubprogram(name: "acpi_ut_pop_generic_state", scope: !1552, file: !1552, line: 510, type: !1553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1552 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!672, !1555}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!1556 = !DISubprogram(name: "acpi_ps_push_scope", scope: !1319, file: !1319, line: 154, type: !1557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!13, !829, !109, !15, !15}
!1559 = !DISubprogram(name: "acpi_ps_complete_final_op", scope: !1319, file: !1319, line: 102, type: !1332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1560 = !DISubprogram(name: "acpi_ps_get_next_simple_arg", scope: !1319, file: !1319, line: 57, type: !1561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !829, !15, !109}
!1563 = !DISubprogram(name: "acpi_ps_get_next_namepath", scope: !1319, file: !1319, line: 61, type: !1564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!13, !70, !829, !109, !76}
!1566 = !DISubprogram(name: "acpi_ps_get_next_arg", scope: !1319, file: !1319, line: 72, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!13, !70, !829, !15, !821}
!1569 = !DISubprogram(name: "acpi_ps_append_arg", scope: !1319, file: !1319, line: 164, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{null, !109, !109}
!1572 = !DISubprogram(name: "kfree", scope: !1573, file: !1573, line: 227, type: !1574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1573 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !1576}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
