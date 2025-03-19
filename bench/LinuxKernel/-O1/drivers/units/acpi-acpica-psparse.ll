; ModuleID = 'drivers/acpi/acpica/psparse.c'
source_filename = "drivers/acpi/acpica/psparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_parse_obj_named = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8, ptr, ptr, i32, i32 }
%struct.acpi_common_state = type { ptr, i8, i8, i16, i16 }
%struct.acpi_pscope_state = type { ptr, i8, i8, i16, i16, i32, ptr, ptr, ptr, i32 }
%struct.acpi_object_method = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, %union.anon, i32, i16, i8 }
%union.anon = type { ptr }
%struct.acpi_thread_state = type { ptr, i8, i8, i16, i16, i8, ptr, ptr, i64 }

@acpi_gbl_current_walk_list = external dso_local global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"Aborting method\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !7
@_acpi_module_name = internal constant [8 x i8] c"psparse\00", align 1, !dbg !12
@acpi_gbl_enable_interpreter_slack = external dso_local global i8, align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ps_get_opcode_size(i32 noundef %opcode) #0 align 16 !dbg !811 {
entry:
  %retval = alloca i32, align 4
  %opcode.addr = alloca i32, align 4
  store i32 %opcode, ptr %opcode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !815, metadata !DIExpression()), !dbg !816
  %0 = load i32, ptr %opcode.addr, align 4, !dbg !817
  %cmp = icmp ugt i32 %0, 255, !dbg !819
  br i1 %cmp, label %if.then, label %if.end, !dbg !820

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !821
  br label %return, !dbg !821

if.end:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !823
  br label %return, !dbg !823

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !824
  ret i32 %1, !dbg !824
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i16 @acpi_ps_peek_opcode(ptr noundef %parser_state) #0 align 16 !dbg !825 {
entry:
  %parser_state.addr = alloca ptr, align 8
  %aml = alloca ptr, align 8
  %opcode = alloca i16, align 2
  store ptr %parser_state, ptr %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parser_state.addr, metadata !830, metadata !DIExpression()), !dbg !833
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml) #5, !dbg !834
  call void @llvm.dbg.declare(metadata ptr %aml, metadata !831, metadata !DIExpression()), !dbg !835
  call void @llvm.lifetime.start.p0(i64 2, ptr %opcode) #5, !dbg !836
  call void @llvm.dbg.declare(metadata ptr %opcode, metadata !832, metadata !DIExpression()), !dbg !837
  %0 = load ptr, ptr %parser_state.addr, align 8, !dbg !838
  %aml1 = getelementptr inbounds %struct.acpi_parse_state, ptr %0, i32 0, i32 1, !dbg !839
  %1 = load ptr, ptr %aml1, align 8, !dbg !839
  store ptr %1, ptr %aml, align 8, !dbg !840
  %2 = load ptr, ptr %aml, align 8, !dbg !841
  %3 = ptrtoint ptr %2 to i64, !dbg !841
  %4 = inttoptr i64 %3 to ptr, !dbg !841
  %5 = load i8, ptr %4, align 1, !dbg !841
  %conv = zext i8 %5 to i16, !dbg !842
  store i16 %conv, ptr %opcode, align 2, !dbg !843
  %6 = load i16, ptr %opcode, align 2, !dbg !844
  %conv2 = zext i16 %6 to i32, !dbg !844
  %cmp = icmp eq i32 %conv2, 91, !dbg !846
  br i1 %cmp, label %if.then, label %if.end, !dbg !847

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %aml, align 8, !dbg !848
  %incdec.ptr = getelementptr i8, ptr %7, i32 1, !dbg !848
  store ptr %incdec.ptr, ptr %aml, align 8, !dbg !848
  %8 = load i16, ptr %opcode, align 2, !dbg !850
  %conv4 = zext i16 %8 to i32, !dbg !850
  %shl = shl i32 %conv4, 8, !dbg !851
  %9 = load ptr, ptr %aml, align 8, !dbg !852
  %10 = ptrtoint ptr %9 to i64, !dbg !852
  %11 = inttoptr i64 %10 to ptr, !dbg !852
  %12 = load i8, ptr %11, align 1, !dbg !852
  %conv5 = zext i8 %12 to i32, !dbg !852
  %or = or i32 %shl, %conv5, !dbg !853
  %conv6 = trunc i32 %or to i16, !dbg !854
  store i16 %conv6, ptr %opcode, align 2, !dbg !855
  br label %if.end, !dbg !856

if.end:                                           ; preds = %if.then, %entry
  %13 = load i16, ptr %opcode, align 2, !dbg !857
  call void @llvm.lifetime.end.p0(i64 2, ptr %opcode) #5, !dbg !858
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml) #5, !dbg !858
  ret i16 %13, !dbg !859
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ps_complete_this_op(ptr noundef %walk_state, ptr noundef %op) #0 align 16 !dbg !860 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %next = alloca ptr, align 8
  %parent_info = alloca ptr, align 8
  %replacement_op = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !864, metadata !DIExpression()), !dbg !872
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !865, metadata !DIExpression()), !dbg !873
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #5, !dbg !874
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !866, metadata !DIExpression()), !dbg !875
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #5, !dbg !876
  call void @llvm.dbg.declare(metadata ptr %next, metadata !867, metadata !DIExpression()), !dbg !877
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_info) #5, !dbg !878
  call void @llvm.dbg.declare(metadata ptr %parent_info, metadata !868, metadata !DIExpression()), !dbg !879
  call void @llvm.lifetime.start.p0(i64 8, ptr %replacement_op) #5, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %replacement_op, metadata !869, metadata !DIExpression()), !dbg !881
  store ptr null, ptr %replacement_op, align 8, !dbg !881
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !882
  call void @llvm.dbg.declare(metadata ptr %status, metadata !870, metadata !DIExpression()), !dbg !883
  store i32 0, ptr %status, align 4, !dbg !883
  %0 = load ptr, ptr %op.addr, align 8, !dbg !884
  %tobool = icmp ne ptr %0, null, !dbg !884
  br i1 %tobool, label %if.end, label %if.then, !dbg !886

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup142, !dbg !887

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %op.addr, align 8, !dbg !889
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !890
  call void @acpi_ex_stop_trace_opcode(ptr noundef %1, ptr noundef %2) #6, !dbg !891
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !892
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 20, !dbg !894
  %4 = load i32, ptr %parse_flags, align 4, !dbg !894
  %and = and i32 %4, 1, !dbg !895
  %cmp = icmp ne i32 %and, 1, !dbg !896
  br i1 %cmp, label %if.then3, label %lor.lhs.false, !dbg !897

lor.lhs.false:                                    ; preds = %if.end
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !898
  %op_info = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 41, !dbg !899
  %6 = load ptr, ptr %op_info, align 8, !dbg !899
  %class = getelementptr inbounds %struct.acpi_opcode_info, ptr %6, i32 0, i32 4, !dbg !900
  %7 = load i8, ptr %class, align 1, !dbg !900
  %conv = zext i8 %7 to i32, !dbg !898
  %cmp1 = icmp eq i32 %conv, 2, !dbg !901
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !902

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4, !dbg !903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup142, !dbg !903

if.end4:                                          ; preds = %lor.lhs.false
  %8 = load ptr, ptr %op.addr, align 8, !dbg !905
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %8, i32 0, i32 0, !dbg !907
  %9 = load ptr, ptr %parent, align 8, !dbg !907
  %tobool5 = icmp ne ptr %9, null, !dbg !905
  br i1 %tobool5, label %if.then6, label %if.end141, !dbg !908

if.then6:                                         ; preds = %if.end4
  %10 = load ptr, ptr %op.addr, align 8, !dbg !909
  %parent7 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %10, i32 0, i32 0, !dbg !911
  %11 = load ptr, ptr %parent7, align 8, !dbg !911
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %11, i32 0, i32 7, !dbg !912
  %12 = load ptr, ptr %value, align 8, !dbg !913
  store ptr %12, ptr %prev, align 8, !dbg !914
  %13 = load ptr, ptr %prev, align 8, !dbg !915
  %tobool8 = icmp ne ptr %13, null, !dbg !915
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !917

if.then9:                                         ; preds = %if.then6
  br label %cleanup, !dbg !918

if.end10:                                         ; preds = %if.then6
  %14 = load ptr, ptr %op.addr, align 8, !dbg !920
  %parent11 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %14, i32 0, i32 0, !dbg !921
  %15 = load ptr, ptr %parent11, align 8, !dbg !921
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %15, i32 0, i32 3, !dbg !922
  %16 = load i16, ptr %aml_opcode, align 2, !dbg !922
  %call = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %16) #6, !dbg !923
  store ptr %call, ptr %parent_info, align 8, !dbg !924
  %17 = load ptr, ptr %parent_info, align 8, !dbg !925
  %class12 = getelementptr inbounds %struct.acpi_opcode_info, ptr %17, i32 0, i32 4, !dbg !926
  %18 = load i8, ptr %class12, align 1, !dbg !926
  %conv13 = zext i8 %18 to i32, !dbg !925
  switch i32 %conv13, label %sw.default [
    i32 4, label %sw.epilog
    i32 1, label %sw.bb
    i32 3, label %sw.bb18
  ], !dbg !927

sw.bb:                                            ; preds = %if.end10
  %19 = load ptr, ptr %op.addr, align 8, !dbg !928
  %aml = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %19, i32 0, i32 4, !dbg !930
  %20 = load ptr, ptr %aml, align 8, !dbg !930
  %call14 = call ptr @acpi_ps_alloc_op(i16 noundef zeroext 54, ptr noundef %20) #6, !dbg !931
  store ptr %call14, ptr %replacement_op, align 8, !dbg !932
  %21 = load ptr, ptr %replacement_op, align 8, !dbg !933
  %tobool15 = icmp ne ptr %21, null, !dbg !933
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !935

if.then16:                                        ; preds = %sw.bb
  store i32 4, ptr %status, align 4, !dbg !936
  br label %if.end17, !dbg !938

if.end17:                                         ; preds = %if.then16, %sw.bb
  br label %sw.epilog, !dbg !939

sw.bb18:                                          ; preds = %if.end10
  %22 = load ptr, ptr %op.addr, align 8, !dbg !940
  %parent19 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %22, i32 0, i32 0, !dbg !942
  %23 = load ptr, ptr %parent19, align 8, !dbg !942
  %aml_opcode20 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %23, i32 0, i32 3, !dbg !943
  %24 = load i16, ptr %aml_opcode20, align 2, !dbg !943
  %conv21 = zext i16 %24 to i32, !dbg !940
  %cmp22 = icmp eq i32 %conv21, 23424, !dbg !944
  br i1 %cmp22, label %if.then54, label %lor.lhs.false24, !dbg !945

lor.lhs.false24:                                  ; preds = %sw.bb18
  %25 = load ptr, ptr %op.addr, align 8, !dbg !946
  %parent25 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %25, i32 0, i32 0, !dbg !947
  %26 = load ptr, ptr %parent25, align 8, !dbg !947
  %aml_opcode26 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %26, i32 0, i32 3, !dbg !948
  %27 = load i16, ptr %aml_opcode26, align 2, !dbg !948
  %conv27 = zext i16 %27 to i32, !dbg !946
  %cmp28 = icmp eq i32 %conv27, 23432, !dbg !949
  br i1 %cmp28, label %if.then54, label %lor.lhs.false30, !dbg !950

lor.lhs.false30:                                  ; preds = %lor.lhs.false24
  %28 = load ptr, ptr %op.addr, align 8, !dbg !951
  %parent31 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %28, i32 0, i32 0, !dbg !952
  %29 = load ptr, ptr %parent31, align 8, !dbg !952
  %aml_opcode32 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %29, i32 0, i32 3, !dbg !953
  %30 = load i16, ptr %aml_opcode32, align 2, !dbg !953
  %conv33 = zext i16 %30 to i32, !dbg !951
  %cmp34 = icmp eq i32 %conv33, 17, !dbg !954
  br i1 %cmp34, label %if.then54, label %lor.lhs.false36, !dbg !955

lor.lhs.false36:                                  ; preds = %lor.lhs.false30
  %31 = load ptr, ptr %op.addr, align 8, !dbg !956
  %parent37 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %31, i32 0, i32 0, !dbg !957
  %32 = load ptr, ptr %parent37, align 8, !dbg !957
  %aml_opcode38 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %32, i32 0, i32 3, !dbg !958
  %33 = load i16, ptr %aml_opcode38, align 2, !dbg !958
  %conv39 = zext i16 %33 to i32, !dbg !956
  %cmp40 = icmp eq i32 %conv39, 18, !dbg !959
  br i1 %cmp40, label %if.then54, label %lor.lhs.false42, !dbg !960

lor.lhs.false42:                                  ; preds = %lor.lhs.false36
  %34 = load ptr, ptr %op.addr, align 8, !dbg !961
  %parent43 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %34, i32 0, i32 0, !dbg !962
  %35 = load ptr, ptr %parent43, align 8, !dbg !962
  %aml_opcode44 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %35, i32 0, i32 3, !dbg !963
  %36 = load i16, ptr %aml_opcode44, align 2, !dbg !963
  %conv45 = zext i16 %36 to i32, !dbg !961
  %cmp46 = icmp eq i32 %conv45, 23431, !dbg !964
  br i1 %cmp46, label %if.then54, label %lor.lhs.false48, !dbg !965

lor.lhs.false48:                                  ; preds = %lor.lhs.false42
  %37 = load ptr, ptr %op.addr, align 8, !dbg !966
  %parent49 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %37, i32 0, i32 0, !dbg !967
  %38 = load ptr, ptr %parent49, align 8, !dbg !967
  %aml_opcode50 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %38, i32 0, i32 3, !dbg !968
  %39 = load i16, ptr %aml_opcode50, align 2, !dbg !968
  %conv51 = zext i16 %39 to i32, !dbg !966
  %cmp52 = icmp eq i32 %conv51, 19, !dbg !969
  br i1 %cmp52, label %if.then54, label %if.else, !dbg !970

if.then54:                                        ; preds = %lor.lhs.false48, %lor.lhs.false42, %lor.lhs.false36, %lor.lhs.false30, %lor.lhs.false24, %sw.bb18
  %40 = load ptr, ptr %op.addr, align 8, !dbg !971
  %aml55 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %40, i32 0, i32 4, !dbg !973
  %41 = load ptr, ptr %aml55, align 8, !dbg !973
  %call56 = call ptr @acpi_ps_alloc_op(i16 noundef zeroext 54, ptr noundef %41) #6, !dbg !974
  store ptr %call56, ptr %replacement_op, align 8, !dbg !975
  %42 = load ptr, ptr %replacement_op, align 8, !dbg !976
  %tobool57 = icmp ne ptr %42, null, !dbg !976
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !978

if.then58:                                        ; preds = %if.then54
  store i32 4, ptr %status, align 4, !dbg !979
  br label %if.end59, !dbg !981

if.end59:                                         ; preds = %if.then58, %if.then54
  br label %if.end95, !dbg !982

if.else:                                          ; preds = %lor.lhs.false48
  %43 = load ptr, ptr %op.addr, align 8, !dbg !983
  %parent60 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %43, i32 0, i32 0, !dbg !985
  %44 = load ptr, ptr %parent60, align 8, !dbg !985
  %aml_opcode61 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %44, i32 0, i32 3, !dbg !986
  %45 = load i16, ptr %aml_opcode61, align 2, !dbg !986
  %conv62 = zext i16 %45 to i32, !dbg !983
  %cmp63 = icmp eq i32 %conv62, 8, !dbg !987
  br i1 %cmp63, label %land.lhs.true, label %if.end94, !dbg !988

land.lhs.true:                                    ; preds = %if.else
  %46 = load ptr, ptr %walk_state.addr, align 8, !dbg !989
  %pass_number = getelementptr inbounds %struct.acpi_walk_state, ptr %46, i32 0, i32 12, !dbg !990
  %47 = load i8, ptr %pass_number, align 2, !dbg !990
  %conv65 = zext i8 %47 to i32, !dbg !989
  %cmp66 = icmp sle i32 %conv65, 2, !dbg !991
  br i1 %cmp66, label %if.then68, label %if.end94, !dbg !992

if.then68:                                        ; preds = %land.lhs.true
  %48 = load ptr, ptr %op.addr, align 8, !dbg !993
  %aml_opcode69 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %48, i32 0, i32 3, !dbg !996
  %49 = load i16, ptr %aml_opcode69, align 2, !dbg !996
  %conv70 = zext i16 %49 to i32, !dbg !993
  %cmp71 = icmp eq i32 %conv70, 17, !dbg !997
  br i1 %cmp71, label %if.then83, label %lor.lhs.false73, !dbg !998

lor.lhs.false73:                                  ; preds = %if.then68
  %50 = load ptr, ptr %op.addr, align 8, !dbg !999
  %aml_opcode74 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %50, i32 0, i32 3, !dbg !1000
  %51 = load i16, ptr %aml_opcode74, align 2, !dbg !1000
  %conv75 = zext i16 %51 to i32, !dbg !999
  %cmp76 = icmp eq i32 %conv75, 18, !dbg !1001
  br i1 %cmp76, label %if.then83, label %lor.lhs.false78, !dbg !1002

lor.lhs.false78:                                  ; preds = %lor.lhs.false73
  %52 = load ptr, ptr %op.addr, align 8, !dbg !1003
  %aml_opcode79 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %52, i32 0, i32 3, !dbg !1004
  %53 = load i16, ptr %aml_opcode79, align 2, !dbg !1004
  %conv80 = zext i16 %53 to i32, !dbg !1003
  %cmp81 = icmp eq i32 %conv80, 19, !dbg !1005
  br i1 %cmp81, label %if.then83, label %if.end93, !dbg !1006

if.then83:                                        ; preds = %lor.lhs.false78, %lor.lhs.false73, %if.then68
  %54 = load ptr, ptr %op.addr, align 8, !dbg !1007
  %aml_opcode84 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %54, i32 0, i32 3, !dbg !1009
  %55 = load i16, ptr %aml_opcode84, align 2, !dbg !1009
  %56 = load ptr, ptr %op.addr, align 8, !dbg !1010
  %aml85 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %56, i32 0, i32 4, !dbg !1011
  %57 = load ptr, ptr %aml85, align 8, !dbg !1011
  %call86 = call ptr @acpi_ps_alloc_op(i16 noundef zeroext %55, ptr noundef %57) #6, !dbg !1012
  store ptr %call86, ptr %replacement_op, align 8, !dbg !1013
  %58 = load ptr, ptr %replacement_op, align 8, !dbg !1014
  %tobool87 = icmp ne ptr %58, null, !dbg !1014
  br i1 %tobool87, label %if.else89, label %if.then88, !dbg !1016

if.then88:                                        ; preds = %if.then83
  store i32 4, ptr %status, align 4, !dbg !1017
  br label %if.end92, !dbg !1019

if.else89:                                        ; preds = %if.then83
  %59 = load ptr, ptr %op.addr, align 8, !dbg !1020
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %59, i32 0, i32 10, !dbg !1022
  %60 = load ptr, ptr %data, align 8, !dbg !1022
  %61 = load ptr, ptr %replacement_op, align 8, !dbg !1023
  %data90 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %61, i32 0, i32 10, !dbg !1024
  store ptr %60, ptr %data90, align 8, !dbg !1025
  %62 = load ptr, ptr %op.addr, align 8, !dbg !1026
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %62, i32 0, i32 11, !dbg !1027
  %63 = load i32, ptr %length, align 8, !dbg !1027
  %64 = load ptr, ptr %replacement_op, align 8, !dbg !1028
  %length91 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %64, i32 0, i32 11, !dbg !1029
  store i32 %63, ptr %length91, align 8, !dbg !1030
  br label %if.end92

if.end92:                                         ; preds = %if.else89, %if.then88
  br label %if.end93, !dbg !1031

if.end93:                                         ; preds = %if.end92, %lor.lhs.false78
  br label %if.end94, !dbg !1032

if.end94:                                         ; preds = %if.end93, %land.lhs.true, %if.else
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end59
  br label %sw.epilog, !dbg !1033

sw.default:                                       ; preds = %if.end10
  %65 = load ptr, ptr %op.addr, align 8, !dbg !1034
  %aml96 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %65, i32 0, i32 4, !dbg !1035
  %66 = load ptr, ptr %aml96, align 8, !dbg !1035
  %call97 = call ptr @acpi_ps_alloc_op(i16 noundef zeroext 54, ptr noundef %66) #6, !dbg !1036
  store ptr %call97, ptr %replacement_op, align 8, !dbg !1037
  %67 = load ptr, ptr %replacement_op, align 8, !dbg !1038
  %tobool98 = icmp ne ptr %67, null, !dbg !1038
  br i1 %tobool98, label %if.end100, label %if.then99, !dbg !1040

if.then99:                                        ; preds = %sw.default
  store i32 4, ptr %status, align 4, !dbg !1041
  br label %if.end100, !dbg !1043

if.end100:                                        ; preds = %if.then99, %sw.default
  br label %sw.epilog, !dbg !1044

sw.epilog:                                        ; preds = %if.end100, %if.end95, %if.end17, %if.end10
  %68 = load ptr, ptr %prev, align 8, !dbg !1045
  %69 = load ptr, ptr %op.addr, align 8, !dbg !1047
  %cmp101 = icmp eq ptr %68, %69, !dbg !1048
  br i1 %cmp101, label %if.then103, label %if.else119, !dbg !1049

if.then103:                                       ; preds = %sw.epilog
  %70 = load ptr, ptr %replacement_op, align 8, !dbg !1050
  %tobool104 = icmp ne ptr %70, null, !dbg !1050
  br i1 %tobool104, label %if.then105, label %if.else114, !dbg !1053

if.then105:                                       ; preds = %if.then103
  %71 = load ptr, ptr %op.addr, align 8, !dbg !1054
  %parent106 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %71, i32 0, i32 0, !dbg !1056
  %72 = load ptr, ptr %parent106, align 8, !dbg !1056
  %73 = load ptr, ptr %replacement_op, align 8, !dbg !1057
  %parent107 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %73, i32 0, i32 0, !dbg !1058
  store ptr %72, ptr %parent107, align 8, !dbg !1059
  %74 = load ptr, ptr %replacement_op, align 8, !dbg !1060
  %value108 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %74, i32 0, i32 7, !dbg !1061
  store ptr null, ptr %value108, align 8, !dbg !1062
  %75 = load ptr, ptr %op.addr, align 8, !dbg !1063
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %75, i32 0, i32 6, !dbg !1064
  %76 = load ptr, ptr %node, align 8, !dbg !1064
  %77 = load ptr, ptr %replacement_op, align 8, !dbg !1065
  %node109 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %77, i32 0, i32 6, !dbg !1066
  store ptr %76, ptr %node109, align 8, !dbg !1067
  %78 = load ptr, ptr %replacement_op, align 8, !dbg !1068
  %79 = load ptr, ptr %op.addr, align 8, !dbg !1069
  %parent110 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %79, i32 0, i32 0, !dbg !1070
  %80 = load ptr, ptr %parent110, align 8, !dbg !1070
  %value111 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %80, i32 0, i32 7, !dbg !1071
  store ptr %78, ptr %value111, align 8, !dbg !1072
  %81 = load ptr, ptr %op.addr, align 8, !dbg !1073
  %next112 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %81, i32 0, i32 5, !dbg !1074
  %82 = load ptr, ptr %next112, align 8, !dbg !1074
  %83 = load ptr, ptr %replacement_op, align 8, !dbg !1075
  %next113 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %83, i32 0, i32 5, !dbg !1076
  store ptr %82, ptr %next113, align 8, !dbg !1077
  br label %if.end118, !dbg !1078

if.else114:                                       ; preds = %if.then103
  %84 = load ptr, ptr %op.addr, align 8, !dbg !1079
  %next115 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %84, i32 0, i32 5, !dbg !1081
  %85 = load ptr, ptr %next115, align 8, !dbg !1081
  %86 = load ptr, ptr %op.addr, align 8, !dbg !1082
  %parent116 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %86, i32 0, i32 0, !dbg !1083
  %87 = load ptr, ptr %parent116, align 8, !dbg !1083
  %value117 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %87, i32 0, i32 7, !dbg !1084
  store ptr %85, ptr %value117, align 8, !dbg !1085
  br label %if.end118

if.end118:                                        ; preds = %if.else114, %if.then105
  br label %if.end140, !dbg !1086

if.else119:                                       ; preds = %sw.epilog
  br label %while.cond, !dbg !1087

while.cond:                                       ; preds = %if.end139, %if.else119
  %88 = load ptr, ptr %prev, align 8, !dbg !1088
  %tobool120 = icmp ne ptr %88, null, !dbg !1087
  br i1 %tobool120, label %while.body, label %while.end, !dbg !1087

while.body:                                       ; preds = %while.cond
  %89 = load ptr, ptr %prev, align 8, !dbg !1089
  %next121 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %89, i32 0, i32 5, !dbg !1091
  %90 = load ptr, ptr %next121, align 8, !dbg !1091
  store ptr %90, ptr %next, align 8, !dbg !1092
  %91 = load ptr, ptr %next, align 8, !dbg !1093
  %92 = load ptr, ptr %op.addr, align 8, !dbg !1095
  %cmp122 = icmp eq ptr %91, %92, !dbg !1096
  br i1 %cmp122, label %if.then124, label %if.end139, !dbg !1097

if.then124:                                       ; preds = %while.body
  %93 = load ptr, ptr %replacement_op, align 8, !dbg !1098
  %tobool125 = icmp ne ptr %93, null, !dbg !1098
  br i1 %tobool125, label %if.then126, label %if.else135, !dbg !1101

if.then126:                                       ; preds = %if.then124
  %94 = load ptr, ptr %op.addr, align 8, !dbg !1102
  %parent127 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %94, i32 0, i32 0, !dbg !1104
  %95 = load ptr, ptr %parent127, align 8, !dbg !1104
  %96 = load ptr, ptr %replacement_op, align 8, !dbg !1105
  %parent128 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %96, i32 0, i32 0, !dbg !1106
  store ptr %95, ptr %parent128, align 8, !dbg !1107
  %97 = load ptr, ptr %replacement_op, align 8, !dbg !1108
  %value129 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %97, i32 0, i32 7, !dbg !1109
  store ptr null, ptr %value129, align 8, !dbg !1110
  %98 = load ptr, ptr %op.addr, align 8, !dbg !1111
  %node130 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %98, i32 0, i32 6, !dbg !1112
  %99 = load ptr, ptr %node130, align 8, !dbg !1112
  %100 = load ptr, ptr %replacement_op, align 8, !dbg !1113
  %node131 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %100, i32 0, i32 6, !dbg !1114
  store ptr %99, ptr %node131, align 8, !dbg !1115
  %101 = load ptr, ptr %replacement_op, align 8, !dbg !1116
  %102 = load ptr, ptr %prev, align 8, !dbg !1117
  %next132 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %102, i32 0, i32 5, !dbg !1118
  store ptr %101, ptr %next132, align 8, !dbg !1119
  %103 = load ptr, ptr %op.addr, align 8, !dbg !1120
  %next133 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %103, i32 0, i32 5, !dbg !1121
  %104 = load ptr, ptr %next133, align 8, !dbg !1121
  %105 = load ptr, ptr %replacement_op, align 8, !dbg !1122
  %next134 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %105, i32 0, i32 5, !dbg !1123
  store ptr %104, ptr %next134, align 8, !dbg !1124
  store ptr null, ptr %next, align 8, !dbg !1125
  br label %if.end138, !dbg !1126

if.else135:                                       ; preds = %if.then124
  %106 = load ptr, ptr %op.addr, align 8, !dbg !1127
  %next136 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %106, i32 0, i32 5, !dbg !1129
  %107 = load ptr, ptr %next136, align 8, !dbg !1129
  %108 = load ptr, ptr %prev, align 8, !dbg !1130
  %next137 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %108, i32 0, i32 5, !dbg !1131
  store ptr %107, ptr %next137, align 8, !dbg !1132
  store ptr null, ptr %next, align 8, !dbg !1133
  br label %if.end138

if.end138:                                        ; preds = %if.else135, %if.then126
  br label %if.end139, !dbg !1134

if.end139:                                        ; preds = %if.end138, %while.body
  %109 = load ptr, ptr %next, align 8, !dbg !1135
  store ptr %109, ptr %prev, align 8, !dbg !1136
  br label %while.cond, !dbg !1087, !llvm.loop !1137

while.end:                                        ; preds = %while.cond
  br label %if.end140

if.end140:                                        ; preds = %while.end, %if.end118
  br label %if.end141, !dbg !1141

if.end141:                                        ; preds = %if.end140, %if.end4
  br label %cleanup, !dbg !907

cleanup:                                          ; preds = %if.end141, %if.then9
  call void @llvm.dbg.label(metadata !871), !dbg !1142
  %110 = load ptr, ptr %op.addr, align 8, !dbg !1143
  call void @acpi_ps_delete_parse_tree(ptr noundef %110) #6, !dbg !1144
  %111 = load i32, ptr %status, align 4, !dbg !1145
  store i32 %111, ptr %retval, align 4, !dbg !1145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup142, !dbg !1145

cleanup142:                                       ; preds = %cleanup, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1146
  call void @llvm.lifetime.end.p0(i64 8, ptr %replacement_op) #5, !dbg !1146
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_info) #5, !dbg !1146
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #5, !dbg !1146
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #5, !dbg !1146
  %112 = load i32, ptr %retval, align 4, !dbg !1146
  ret i32 %112, !dbg !1146
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1147 dso_local void @acpi_ex_stop_trace_opcode(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1151 dso_local ptr @acpi_ps_get_opcode_info(i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1155 dso_local ptr @acpi_ps_alloc_op(i16 noundef zeroext, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1158 dso_local void @acpi_ps_delete_parse_tree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ps_next_parse_state(ptr noundef %walk_state, ptr noundef %op, i32 noundef %callback_status) #0 align 16 !dbg !1161 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %callback_status.addr = alloca i32, align 4
  %parser_state = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1165, metadata !DIExpression()), !dbg !1170
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1166, metadata !DIExpression()), !dbg !1171
  store i32 %callback_status, ptr %callback_status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %callback_status.addr, metadata !1167, metadata !DIExpression()), !dbg !1172
  call void @llvm.lifetime.start.p0(i64 8, ptr %parser_state) #5, !dbg !1173
  call void @llvm.dbg.declare(metadata ptr %parser_state, metadata !1168, metadata !DIExpression()), !dbg !1174
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1175
  %parser_state1 = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 21, !dbg !1176
  store ptr %parser_state1, ptr %parser_state, align 8, !dbg !1174
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1169, metadata !DIExpression()), !dbg !1178
  store i32 16386, ptr %status, align 4, !dbg !1178
  %1 = load i32, ptr %callback_status.addr, align 4, !dbg !1179
  switch i32 %1, label %sw.default [
    i32 16387, label %sw.bb
    i32 16393, label %sw.bb2
    i32 16394, label %sw.bb4
    i32 16386, label %sw.bb7
    i32 16388, label %sw.bb10
    i32 16389, label %sw.bb12
    i32 16392, label %sw.bb16
  ], !dbg !1180

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %parser_state, align 8, !dbg !1181
  %aml_end = getelementptr inbounds %struct.acpi_parse_state, ptr %2, i32 0, i32 2, !dbg !1183
  %3 = load ptr, ptr %aml_end, align 8, !dbg !1183
  %4 = load ptr, ptr %parser_state, align 8, !dbg !1184
  %aml = getelementptr inbounds %struct.acpi_parse_state, ptr %4, i32 0, i32 1, !dbg !1185
  store ptr %3, ptr %aml, align 8, !dbg !1186
  store i32 16387, ptr %status, align 4, !dbg !1187
  br label %sw.epilog, !dbg !1188

sw.bb2:                                           ; preds = %entry
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !1189
  %aml_last_while = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 30, !dbg !1190
  %6 = load ptr, ptr %aml_last_while, align 8, !dbg !1190
  %7 = load ptr, ptr %parser_state, align 8, !dbg !1191
  %aml3 = getelementptr inbounds %struct.acpi_parse_state, ptr %7, i32 0, i32 1, !dbg !1192
  store ptr %6, ptr %aml3, align 8, !dbg !1193
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !1194
  %control_state = getelementptr inbounds %struct.acpi_walk_state, ptr %8, i32 0, i32 32, !dbg !1195
  %9 = load ptr, ptr %control_state, align 8, !dbg !1195
  %value = getelementptr inbounds %struct.acpi_common_state, ptr %9, i32 0, i32 3, !dbg !1196
  store i16 0, ptr %value, align 2, !dbg !1197
  store i32 16393, ptr %status, align 4, !dbg !1198
  br label %sw.epilog, !dbg !1199

sw.bb4:                                           ; preds = %entry
  %10 = load ptr, ptr %walk_state.addr, align 8, !dbg !1200
  %aml_last_while5 = getelementptr inbounds %struct.acpi_walk_state, ptr %10, i32 0, i32 30, !dbg !1201
  %11 = load ptr, ptr %aml_last_while5, align 8, !dbg !1201
  %12 = load ptr, ptr %parser_state, align 8, !dbg !1202
  %aml6 = getelementptr inbounds %struct.acpi_parse_state, ptr %12, i32 0, i32 1, !dbg !1203
  store ptr %11, ptr %aml6, align 8, !dbg !1204
  store i32 16394, ptr %status, align 4, !dbg !1205
  br label %sw.epilog, !dbg !1206

sw.bb7:                                           ; preds = %entry
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !1207
  %aml_last_while8 = getelementptr inbounds %struct.acpi_walk_state, ptr %13, i32 0, i32 30, !dbg !1208
  %14 = load ptr, ptr %aml_last_while8, align 8, !dbg !1208
  %15 = load ptr, ptr %parser_state, align 8, !dbg !1209
  %aml9 = getelementptr inbounds %struct.acpi_parse_state, ptr %15, i32 0, i32 1, !dbg !1210
  store ptr %14, ptr %aml9, align 8, !dbg !1211
  br label %sw.epilog, !dbg !1212

sw.bb10:                                          ; preds = %entry
  %16 = load ptr, ptr %parser_state, align 8, !dbg !1213
  %call = call ptr @acpi_ps_get_next_package_end(ptr noundef %16) #6, !dbg !1214
  %17 = load ptr, ptr %parser_state, align 8, !dbg !1215
  %aml11 = getelementptr inbounds %struct.acpi_parse_state, ptr %17, i32 0, i32 1, !dbg !1216
  store ptr %call, ptr %aml11, align 8, !dbg !1217
  store i32 16386, ptr %status, align 4, !dbg !1218
  br label %sw.epilog, !dbg !1219

sw.bb12:                                          ; preds = %entry
  %18 = load ptr, ptr %parser_state, align 8, !dbg !1220
  %scope = getelementptr inbounds %struct.acpi_parse_state, ptr %18, i32 0, i32 7, !dbg !1221
  %19 = load ptr, ptr %scope, align 8, !dbg !1221
  %pkg_end = getelementptr inbounds %struct.acpi_pscope_state, ptr %19, i32 0, i32 8, !dbg !1222
  %20 = load ptr, ptr %pkg_end, align 8, !dbg !1222
  %21 = load ptr, ptr %parser_state, align 8, !dbg !1223
  %aml13 = getelementptr inbounds %struct.acpi_parse_state, ptr %21, i32 0, i32 1, !dbg !1224
  store ptr %20, ptr %aml13, align 8, !dbg !1225
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !1226
  %control_state14 = getelementptr inbounds %struct.acpi_walk_state, ptr %22, i32 0, i32 32, !dbg !1227
  %23 = load ptr, ptr %control_state14, align 8, !dbg !1227
  %value15 = getelementptr inbounds %struct.acpi_common_state, ptr %23, i32 0, i32 3, !dbg !1228
  store i16 0, ptr %value15, align 2, !dbg !1229
  store i32 16391, ptr %status, align 4, !dbg !1230
  br label %sw.epilog, !dbg !1231

sw.bb16:                                          ; preds = %entry
  store i32 16392, ptr %status, align 4, !dbg !1232
  %24 = load ptr, ptr %op.addr, align 8, !dbg !1233
  %25 = load ptr, ptr %walk_state.addr, align 8, !dbg !1234
  %prev_op = getelementptr inbounds %struct.acpi_walk_state, ptr %25, i32 0, i32 47, !dbg !1235
  store ptr %24, ptr %prev_op, align 8, !dbg !1236
  %26 = load ptr, ptr %op.addr, align 8, !dbg !1237
  %27 = load ptr, ptr %walk_state.addr, align 8, !dbg !1238
  %method_call_op = getelementptr inbounds %struct.acpi_walk_state, ptr %27, i32 0, i32 36, !dbg !1239
  store ptr %26, ptr %method_call_op, align 8, !dbg !1240
  %28 = load ptr, ptr %op.addr, align 8, !dbg !1241
  %value17 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %28, i32 0, i32 7, !dbg !1242
  %29 = load ptr, ptr %value17, align 8, !dbg !1243
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %29, i32 0, i32 6, !dbg !1244
  %30 = load ptr, ptr %node, align 8, !dbg !1244
  %31 = load ptr, ptr %walk_state.addr, align 8, !dbg !1245
  %method_call_node = getelementptr inbounds %struct.acpi_walk_state, ptr %31, i32 0, i32 35, !dbg !1246
  store ptr %30, ptr %method_call_node, align 8, !dbg !1247
  %32 = load ptr, ptr %op.addr, align 8, !dbg !1248
  %33 = load ptr, ptr %walk_state.addr, align 8, !dbg !1249
  %call18 = call zeroext i8 @acpi_ds_is_result_used(ptr noundef %32, ptr noundef %33) #6, !dbg !1250
  %34 = load ptr, ptr %walk_state.addr, align 8, !dbg !1251
  %return_used = getelementptr inbounds %struct.acpi_walk_state, ptr %34, i32 0, i32 10, !dbg !1252
  store i8 %call18, ptr %return_used, align 4, !dbg !1253
  br label %sw.epilog, !dbg !1254

sw.default:                                       ; preds = %entry
  %35 = load i32, ptr %callback_status.addr, align 4, !dbg !1255
  store i32 %35, ptr %status, align 4, !dbg !1256
  %36 = load i32, ptr %callback_status.addr, align 4, !dbg !1257
  %and = and i32 %36, 61440, !dbg !1257
  %cmp = icmp eq i32 %and, 16384, !dbg !1257
  br i1 %cmp, label %if.then, label %if.end, !dbg !1259

if.then:                                          ; preds = %sw.default
  store i32 0, ptr %status, align 4, !dbg !1260
  br label %if.end, !dbg !1262

if.end:                                           ; preds = %if.then, %sw.default
  br label %sw.epilog, !dbg !1263

sw.epilog:                                        ; preds = %if.end, %sw.bb16, %sw.bb12, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb2, %sw.bb
  %37 = load i32, ptr %status, align 4, !dbg !1264
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 8, ptr %parser_state) #5, !dbg !1265
  ret i32 %37, !dbg !1264
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1266 dso_local ptr @acpi_ps_get_next_package_end(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1269 dso_local zeroext i8 @acpi_ds_is_result_used(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ps_parse_aml(ptr noundef %walk_state) #0 align 16 !dbg !1273 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %thread = alloca ptr, align 8
  %prev_walk_list = alloca ptr, align 8
  %previous_walk_state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1275, metadata !DIExpression()), !dbg !1280
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1281
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1276, metadata !DIExpression()), !dbg !1282
  call void @llvm.lifetime.start.p0(i64 8, ptr %thread) #5, !dbg !1283
  call void @llvm.dbg.declare(metadata ptr %thread, metadata !1277, metadata !DIExpression()), !dbg !1284
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_walk_list) #5, !dbg !1285
  call void @llvm.dbg.declare(metadata ptr %prev_walk_list, metadata !1278, metadata !DIExpression()), !dbg !1286
  %0 = load ptr, ptr @acpi_gbl_current_walk_list, align 8, !dbg !1287
  store ptr %0, ptr %prev_walk_list, align 8, !dbg !1286
  call void @llvm.lifetime.start.p0(i64 8, ptr %previous_walk_state) #5, !dbg !1288
  call void @llvm.dbg.declare(metadata ptr %previous_walk_state, metadata !1279, metadata !DIExpression()), !dbg !1289
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !1290
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 21, !dbg !1292
  %aml = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state, i32 0, i32 1, !dbg !1293
  %2 = load ptr, ptr %aml, align 8, !dbg !1293
  %tobool = icmp ne ptr %2, null, !dbg !1290
  br i1 %tobool, label %if.end, label %if.then, !dbg !1294

if.then:                                          ; preds = %entry
  store i32 4105, ptr %retval, align 4, !dbg !1295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1295

if.end:                                           ; preds = %entry
  %call = call ptr @acpi_ut_create_thread_state() #6, !dbg !1297
  store ptr %call, ptr %thread, align 8, !dbg !1298
  %3 = load ptr, ptr %thread, align 8, !dbg !1299
  %tobool1 = icmp ne ptr %3, null, !dbg !1299
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !1301

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !1302
  %method_desc = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 37, !dbg !1305
  %5 = load ptr, ptr %method_desc, align 8, !dbg !1305
  %tobool3 = icmp ne ptr %5, null, !dbg !1302
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !1306

if.then4:                                         ; preds = %if.then2
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !1307
  %method_desc5 = getelementptr inbounds %struct.acpi_walk_state, ptr %6, i32 0, i32 37, !dbg !1309
  %7 = load ptr, ptr %method_desc5, align 8, !dbg !1309
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !1310
  call void @acpi_ds_terminate_control_method(ptr noundef %7, ptr noundef %8) #6, !dbg !1311
  br label %if.end6, !dbg !1312

if.end6:                                          ; preds = %if.then4, %if.then2
  %9 = load ptr, ptr %walk_state.addr, align 8, !dbg !1313
  call void @acpi_ds_delete_walk_state(ptr noundef %9) #6, !dbg !1314
  store i32 4, ptr %retval, align 4, !dbg !1315
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1315

if.end7:                                          ; preds = %if.end
  %10 = load ptr, ptr %thread, align 8, !dbg !1316
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !1317
  %thread8 = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 49, !dbg !1318
  store ptr %10, ptr %thread8, align 8, !dbg !1319
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !1320
  %method_desc9 = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 37, !dbg !1322
  %13 = load ptr, ptr %method_desc9, align 8, !dbg !1322
  %tobool10 = icmp ne ptr %13, null, !dbg !1320
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !1323

if.then11:                                        ; preds = %if.end7
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !1324
  %method_desc12 = getelementptr inbounds %struct.acpi_walk_state, ptr %14, i32 0, i32 37, !dbg !1326
  %15 = load ptr, ptr %method_desc12, align 8, !dbg !1326
  %sync_level = getelementptr inbounds %struct.acpi_object_method, ptr %15, i32 0, i32 7, !dbg !1327
  %16 = load i8, ptr %sync_level, align 1, !dbg !1327
  %17 = load ptr, ptr %walk_state.addr, align 8, !dbg !1328
  %thread13 = getelementptr inbounds %struct.acpi_walk_state, ptr %17, i32 0, i32 49, !dbg !1329
  %18 = load ptr, ptr %thread13, align 8, !dbg !1329
  %current_sync_level = getelementptr inbounds %struct.acpi_thread_state, ptr %18, i32 0, i32 5, !dbg !1330
  store i8 %16, ptr %current_sync_level, align 2, !dbg !1331
  br label %if.end14, !dbg !1332

if.end14:                                         ; preds = %if.then11, %if.end7
  %19 = load ptr, ptr %walk_state.addr, align 8, !dbg !1333
  %20 = load ptr, ptr %thread, align 8, !dbg !1334
  call void @acpi_ds_push_walk_state(ptr noundef %19, ptr noundef %20) #6, !dbg !1335
  %21 = load ptr, ptr %thread, align 8, !dbg !1336
  store ptr %21, ptr @acpi_gbl_current_walk_list, align 8, !dbg !1337
  store i32 0, ptr %status, align 4, !dbg !1338
  br label %while.cond, !dbg !1339

while.cond:                                       ; preds = %if.end136, %if.end32, %if.end14
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !1340
  %tobool15 = icmp ne ptr %22, null, !dbg !1339
  br i1 %tobool15, label %while.body, label %while.end, !dbg !1339

while.body:                                       ; preds = %while.cond
  %23 = load i32, ptr %status, align 4, !dbg !1341
  %tobool16 = icmp ne i32 %23, 0, !dbg !1341
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !1344

if.then17:                                        ; preds = %while.body
  %24 = load ptr, ptr %walk_state.addr, align 8, !dbg !1345
  %call18 = call i32 @acpi_ps_parse_loop(ptr noundef %24) #6, !dbg !1347
  store i32 %call18, ptr %status, align 4, !dbg !1348
  br label %if.end19, !dbg !1349

if.end19:                                         ; preds = %if.then17, %while.body
  %25 = load ptr, ptr %walk_state.addr, align 8, !dbg !1350
  %method_pathname = getelementptr inbounds %struct.acpi_walk_state, ptr %25, i32 0, i32 39, !dbg !1352
  %26 = load ptr, ptr %method_pathname, align 8, !dbg !1352
  %tobool20 = icmp ne ptr %26, null, !dbg !1350
  br i1 %tobool20, label %land.lhs.true, label %if.end25, !dbg !1353

land.lhs.true:                                    ; preds = %if.end19
  %27 = load ptr, ptr %walk_state.addr, align 8, !dbg !1354
  %method_is_nested = getelementptr inbounds %struct.acpi_walk_state, ptr %27, i32 0, i32 25, !dbg !1355
  %28 = load i8, ptr %method_is_nested, align 2, !dbg !1355
  %conv = zext i8 %28 to i32, !dbg !1354
  %tobool21 = icmp ne i32 %conv, 0, !dbg !1354
  br i1 %tobool21, label %if.then22, label %if.end25, !dbg !1356

if.then22:                                        ; preds = %land.lhs.true
  %29 = load ptr, ptr %walk_state.addr, align 8, !dbg !1357
  %method_pathname23 = getelementptr inbounds %struct.acpi_walk_state, ptr %29, i32 0, i32 39, !dbg !1357
  %30 = load ptr, ptr %method_pathname23, align 8, !dbg !1357
  call void @acpi_os_free(ptr noundef %30) #6, !dbg !1357
  %31 = load ptr, ptr %walk_state.addr, align 8, !dbg !1359
  %method_is_nested24 = getelementptr inbounds %struct.acpi_walk_state, ptr %31, i32 0, i32 25, !dbg !1360
  store i8 0, ptr %method_is_nested24, align 2, !dbg !1361
  br label %if.end25, !dbg !1362

if.end25:                                         ; preds = %if.then22, %land.lhs.true, %if.end19
  %32 = load i32, ptr %status, align 4, !dbg !1363
  %cmp = icmp eq i32 %32, 16392, !dbg !1365
  br i1 %cmp, label %if.then27, label %if.else, !dbg !1366

if.then27:                                        ; preds = %if.end25
  %33 = load ptr, ptr %thread, align 8, !dbg !1367
  %34 = load ptr, ptr %walk_state.addr, align 8, !dbg !1369
  %call28 = call i32 @acpi_ds_call_control_method(ptr noundef %33, ptr noundef %34, ptr noundef null) #6, !dbg !1370
  store i32 %call28, ptr %status, align 4, !dbg !1371
  %35 = load i32, ptr %status, align 4, !dbg !1372
  %tobool29 = icmp ne i32 %35, 0, !dbg !1372
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !1374

if.then30:                                        ; preds = %if.then27
  %36 = load i32, ptr %status, align 4, !dbg !1375
  %37 = load ptr, ptr %walk_state.addr, align 8, !dbg !1377
  %call31 = call i32 @acpi_ds_method_error(i32 noundef %36, ptr noundef %37) #6, !dbg !1378
  store i32 %call31, ptr %status, align 4, !dbg !1379
  br label %if.end32, !dbg !1380

if.end32:                                         ; preds = %if.then30, %if.then27
  %38 = load ptr, ptr %thread, align 8, !dbg !1381
  %call33 = call ptr @acpi_ds_get_current_walk_state(ptr noundef %38) #6, !dbg !1382
  store ptr %call33, ptr %walk_state.addr, align 8, !dbg !1383
  br label %while.cond, !dbg !1384, !llvm.loop !1385

if.else:                                          ; preds = %if.end25
  %39 = load i32, ptr %status, align 4, !dbg !1387
  %cmp34 = icmp eq i32 %39, 16387, !dbg !1389
  br i1 %cmp34, label %if.then36, label %if.else37, !dbg !1390

if.then36:                                        ; preds = %if.else
  store i32 0, ptr %status, align 4, !dbg !1391
  br label %if.end63, !dbg !1393

if.else37:                                        ; preds = %if.else
  %40 = load i32, ptr %status, align 4, !dbg !1394
  %cmp38 = icmp ne i32 %40, 0, !dbg !1396
  br i1 %cmp38, label %land.lhs.true40, label %if.end62, !dbg !1397

land.lhs.true40:                                  ; preds = %if.else37
  %41 = load ptr, ptr %walk_state.addr, align 8, !dbg !1398
  %method_desc41 = getelementptr inbounds %struct.acpi_walk_state, ptr %41, i32 0, i32 37, !dbg !1399
  %42 = load ptr, ptr %method_desc41, align 8, !dbg !1399
  %tobool42 = icmp ne ptr %42, null, !dbg !1400
  br i1 %tobool42, label %if.then43, label %if.end62, !dbg !1401

if.then43:                                        ; preds = %land.lhs.true40
  call void @acpi_ex_exit_interpreter() #6, !dbg !1402
  %43 = load i32, ptr %status, align 4, !dbg !1404
  %cmp44 = icmp eq i32 %43, 24, !dbg !1406
  br i1 %cmp44, label %if.then46, label %if.else47, !dbg !1407

if.then46:                                        ; preds = %if.then43
  %44 = load ptr, ptr %walk_state.addr, align 8, !dbg !1408
  %method_node = getelementptr inbounds %struct.acpi_walk_state, ptr %44, i32 0, i32 38, !dbg !1410
  %45 = load ptr, ptr %method_node, align 8, !dbg !1410
  call void @acpi_ns_print_node_pathname(ptr noundef %45, ptr noundef @.str) #6, !dbg !1411
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.1) #6, !dbg !1412
  br label %if.end49, !dbg !1413

if.else47:                                        ; preds = %if.then43
  %46 = load ptr, ptr %walk_state.addr, align 8, !dbg !1414
  %method_node48 = getelementptr inbounds %struct.acpi_walk_state, ptr %46, i32 0, i32 38, !dbg !1414
  %47 = load ptr, ptr %method_node48, align 8, !dbg !1414
  %48 = load i32, ptr %status, align 4, !dbg !1414
  call void @acpi_ut_method_error(ptr noundef @_acpi_module_name, i32 noundef 531, ptr noundef @.str, ptr noundef %47, ptr noundef null, i32 noundef %48) #6, !dbg !1414
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.then46
  call void @acpi_ex_enter_interpreter() #6, !dbg !1416
  %49 = load i32, ptr %status, align 4, !dbg !1417
  %cmp50 = icmp eq i32 %49, 7, !dbg !1419
  br i1 %cmp50, label %land.lhs.true52, label %if.end61, !dbg !1420

land.lhs.true52:                                  ; preds = %if.end49
  %50 = load ptr, ptr %walk_state.addr, align 8, !dbg !1421
  %method_desc53 = getelementptr inbounds %struct.acpi_walk_state, ptr %50, i32 0, i32 37, !dbg !1422
  %51 = load ptr, ptr %method_desc53, align 8, !dbg !1422
  %info_flags = getelementptr inbounds %struct.acpi_object_method, ptr %51, i32 0, i32 5, !dbg !1423
  %52 = load i8, ptr %info_flags, align 1, !dbg !1423
  %conv54 = zext i8 %52 to i32, !dbg !1421
  %and = and i32 %conv54, 4, !dbg !1424
  %tobool55 = icmp ne i32 %and, 0, !dbg !1424
  br i1 %tobool55, label %if.end61, label %if.then56, !dbg !1425

if.then56:                                        ; preds = %land.lhs.true52
  %53 = load ptr, ptr %walk_state.addr, align 8, !dbg !1426
  %method_desc57 = getelementptr inbounds %struct.acpi_walk_state, ptr %53, i32 0, i32 37, !dbg !1428
  %54 = load ptr, ptr %method_desc57, align 8, !dbg !1428
  %info_flags58 = getelementptr inbounds %struct.acpi_object_method, ptr %54, i32 0, i32 5, !dbg !1429
  %55 = load i8, ptr %info_flags58, align 1, !dbg !1430
  %conv59 = zext i8 %55 to i32, !dbg !1430
  %or = or i32 %conv59, 8, !dbg !1430
  %conv60 = trunc i32 %or to i8, !dbg !1430
  store i8 %conv60, ptr %info_flags58, align 1, !dbg !1430
  br label %if.end61, !dbg !1431

if.end61:                                         ; preds = %if.then56, %land.lhs.true52, %if.end49
  br label %if.end62, !dbg !1432

if.end62:                                         ; preds = %if.end61, %land.lhs.true40, %if.else37
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then36
  br label %if.end64

if.end64:                                         ; preds = %if.end63
  %56 = load ptr, ptr %thread, align 8, !dbg !1433
  %call65 = call ptr @acpi_ds_pop_walk_state(ptr noundef %56) #6, !dbg !1434
  store ptr %call65, ptr %walk_state.addr, align 8, !dbg !1435
  %57 = load ptr, ptr %walk_state.addr, align 8, !dbg !1436
  call void @acpi_ds_scope_stack_clear(ptr noundef %57) #6, !dbg !1437
  %58 = load ptr, ptr %walk_state.addr, align 8, !dbg !1438
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, ptr %58, i32 0, i32 20, !dbg !1440
  %59 = load i32, ptr %parse_flags, align 4, !dbg !1440
  %and66 = and i32 %59, 48, !dbg !1441
  %cmp67 = icmp eq i32 %and66, 48, !dbg !1442
  br i1 %cmp67, label %land.lhs.true69, label %lor.lhs.false, !dbg !1443

land.lhs.true69:                                  ; preds = %if.end64
  %60 = load ptr, ptr %walk_state.addr, align 8, !dbg !1444
  %parse_flags70 = getelementptr inbounds %struct.acpi_walk_state, ptr %60, i32 0, i32 20, !dbg !1445
  %61 = load i32, ptr %parse_flags70, align 4, !dbg !1445
  %and71 = and i32 %61, 1024, !dbg !1446
  %tobool72 = icmp ne i32 %and71, 0, !dbg !1446
  br i1 %tobool72, label %lor.lhs.false, label %if.then74, !dbg !1447

lor.lhs.false:                                    ; preds = %land.lhs.true69, %if.end64
  %62 = load i32, ptr %status, align 4, !dbg !1448
  %tobool73 = icmp ne i32 %62, 0, !dbg !1449
  br i1 %tobool73, label %if.then74, label %if.end76, !dbg !1450

if.then74:                                        ; preds = %lor.lhs.false, %land.lhs.true69
  %63 = load ptr, ptr %walk_state.addr, align 8, !dbg !1451
  %method_desc75 = getelementptr inbounds %struct.acpi_walk_state, ptr %63, i32 0, i32 37, !dbg !1453
  %64 = load ptr, ptr %method_desc75, align 8, !dbg !1453
  %65 = load ptr, ptr %walk_state.addr, align 8, !dbg !1454
  call void @acpi_ds_terminate_control_method(ptr noundef %64, ptr noundef %65) #6, !dbg !1455
  br label %if.end76, !dbg !1456

if.end76:                                         ; preds = %if.then74, %lor.lhs.false
  %66 = load ptr, ptr %walk_state.addr, align 8, !dbg !1457
  %parser_state77 = getelementptr inbounds %struct.acpi_walk_state, ptr %66, i32 0, i32 21, !dbg !1458
  call void @acpi_ps_cleanup_scope(ptr noundef %parser_state77) #6, !dbg !1459
  %67 = load ptr, ptr %walk_state.addr, align 8, !dbg !1460
  store ptr %67, ptr %previous_walk_state, align 8, !dbg !1461
  %68 = load ptr, ptr %thread, align 8, !dbg !1462
  %call78 = call ptr @acpi_ds_get_current_walk_state(ptr noundef %68) #6, !dbg !1463
  store ptr %call78, ptr %walk_state.addr, align 8, !dbg !1464
  %69 = load ptr, ptr %walk_state.addr, align 8, !dbg !1465
  %tobool79 = icmp ne ptr %69, null, !dbg !1465
  br i1 %tobool79, label %if.then80, label %if.else112, !dbg !1467

if.then80:                                        ; preds = %if.end76
  %70 = load i32, ptr %status, align 4, !dbg !1468
  %tobool81 = icmp ne i32 %70, 0, !dbg !1468
  br i1 %tobool81, label %if.else109, label %if.then82, !dbg !1471

if.then82:                                        ; preds = %if.then80
  %71 = load ptr, ptr %previous_walk_state, align 8, !dbg !1472
  %return_desc = getelementptr inbounds %struct.acpi_walk_state, ptr %71, i32 0, i32 45, !dbg !1475
  %72 = load ptr, ptr %return_desc, align 8, !dbg !1475
  %tobool83 = icmp ne ptr %72, null, !dbg !1472
  br i1 %tobool83, label %if.else99, label %if.then84, !dbg !1476

if.then84:                                        ; preds = %if.then82
  %73 = load i8, ptr @acpi_gbl_enable_interpreter_slack, align 1, !dbg !1477
  %conv85 = zext i8 %73 to i32, !dbg !1477
  %tobool86 = icmp ne i32 %conv85, 0, !dbg !1477
  br i1 %tobool86, label %land.lhs.true87, label %if.end96, !dbg !1480

land.lhs.true87:                                  ; preds = %if.then84
  %74 = load ptr, ptr %previous_walk_state, align 8, !dbg !1481
  %implicit_return_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %74, i32 0, i32 34, !dbg !1482
  %75 = load ptr, ptr %implicit_return_obj, align 8, !dbg !1482
  %tobool88 = icmp ne ptr %75, null, !dbg !1481
  br i1 %tobool88, label %if.end96, label %if.then89, !dbg !1483

if.then89:                                        ; preds = %land.lhs.true87
  %call90 = call ptr @acpi_ut_create_integer_object(i64 noundef 0) #6, !dbg !1484
  %76 = load ptr, ptr %previous_walk_state, align 8, !dbg !1486
  %implicit_return_obj91 = getelementptr inbounds %struct.acpi_walk_state, ptr %76, i32 0, i32 34, !dbg !1487
  store ptr %call90, ptr %implicit_return_obj91, align 8, !dbg !1488
  %77 = load ptr, ptr %previous_walk_state, align 8, !dbg !1489
  %implicit_return_obj92 = getelementptr inbounds %struct.acpi_walk_state, ptr %77, i32 0, i32 34, !dbg !1491
  %78 = load ptr, ptr %implicit_return_obj92, align 8, !dbg !1491
  %tobool93 = icmp ne ptr %78, null, !dbg !1489
  br i1 %tobool93, label %if.end95, label %if.then94, !dbg !1492

if.then94:                                        ; preds = %if.then89
  store i32 4, ptr %retval, align 4, !dbg !1493
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1493

if.end95:                                         ; preds = %if.then89
  br label %if.end96, !dbg !1495

if.end96:                                         ; preds = %if.end95, %land.lhs.true87, %if.then84
  %79 = load ptr, ptr %walk_state.addr, align 8, !dbg !1496
  %80 = load ptr, ptr %previous_walk_state, align 8, !dbg !1497
  %implicit_return_obj97 = getelementptr inbounds %struct.acpi_walk_state, ptr %80, i32 0, i32 34, !dbg !1498
  %81 = load ptr, ptr %implicit_return_obj97, align 8, !dbg !1498
  %call98 = call i32 @acpi_ds_restart_control_method(ptr noundef %79, ptr noundef %81) #6, !dbg !1499
  store i32 %call98, ptr %status, align 4, !dbg !1500
  br label %if.end102, !dbg !1501

if.else99:                                        ; preds = %if.then82
  %82 = load ptr, ptr %previous_walk_state, align 8, !dbg !1502
  call void @acpi_ds_clear_implicit_return(ptr noundef %82) #6, !dbg !1504
  %83 = load ptr, ptr %walk_state.addr, align 8, !dbg !1505
  %84 = load ptr, ptr %previous_walk_state, align 8, !dbg !1506
  %return_desc100 = getelementptr inbounds %struct.acpi_walk_state, ptr %84, i32 0, i32 45, !dbg !1507
  %85 = load ptr, ptr %return_desc100, align 8, !dbg !1507
  %call101 = call i32 @acpi_ds_restart_control_method(ptr noundef %83, ptr noundef %85) #6, !dbg !1508
  store i32 %call101, ptr %status, align 4, !dbg !1509
  br label %if.end102

if.end102:                                        ; preds = %if.else99, %if.end96
  %86 = load i32, ptr %status, align 4, !dbg !1510
  %tobool103 = icmp ne i32 %86, 0, !dbg !1510
  br i1 %tobool103, label %if.end108, label %if.then104, !dbg !1512

if.then104:                                       ; preds = %if.end102
  %87 = load ptr, ptr %walk_state.addr, align 8, !dbg !1513
  %walk_type = getelementptr inbounds %struct.acpi_walk_state, ptr %87, i32 0, i32 2, !dbg !1515
  %88 = load i8, ptr %walk_type, align 1, !dbg !1516
  %conv105 = zext i8 %88 to i32, !dbg !1516
  %or106 = or i32 %conv105, 2, !dbg !1516
  %conv107 = trunc i32 %or106 to i8, !dbg !1516
  store i8 %conv107, ptr %walk_type, align 1, !dbg !1516
  br label %if.end108, !dbg !1517

if.end108:                                        ; preds = %if.then104, %if.end102
  br label %if.end111, !dbg !1518

if.else109:                                       ; preds = %if.then80
  %89 = load ptr, ptr %previous_walk_state, align 8, !dbg !1519
  %return_desc110 = getelementptr inbounds %struct.acpi_walk_state, ptr %89, i32 0, i32 45, !dbg !1521
  %90 = load ptr, ptr %return_desc110, align 8, !dbg !1521
  call void @acpi_ut_remove_reference(ptr noundef %90) #6, !dbg !1522
  %91 = load ptr, ptr %previous_walk_state, align 8, !dbg !1523
  call void @acpi_ds_clear_implicit_return(ptr noundef %91) #6, !dbg !1524
  br label %if.end111

if.end111:                                        ; preds = %if.else109, %if.end108
  br label %if.end136, !dbg !1525

if.else112:                                       ; preds = %if.end76
  %92 = load ptr, ptr %previous_walk_state, align 8, !dbg !1526
  %caller_return_desc = getelementptr inbounds %struct.acpi_walk_state, ptr %92, i32 0, i32 31, !dbg !1528
  %93 = load ptr, ptr %caller_return_desc, align 8, !dbg !1528
  %tobool113 = icmp ne ptr %93, null, !dbg !1526
  br i1 %tobool113, label %if.then114, label %if.else124, !dbg !1529

if.then114:                                       ; preds = %if.else112
  %94 = load ptr, ptr %previous_walk_state, align 8, !dbg !1530
  %implicit_return_obj115 = getelementptr inbounds %struct.acpi_walk_state, ptr %94, i32 0, i32 34, !dbg !1533
  %95 = load ptr, ptr %implicit_return_obj115, align 8, !dbg !1533
  %tobool116 = icmp ne ptr %95, null, !dbg !1530
  br i1 %tobool116, label %if.then117, label %if.else120, !dbg !1534

if.then117:                                       ; preds = %if.then114
  %96 = load ptr, ptr %previous_walk_state, align 8, !dbg !1535
  %implicit_return_obj118 = getelementptr inbounds %struct.acpi_walk_state, ptr %96, i32 0, i32 34, !dbg !1537
  %97 = load ptr, ptr %implicit_return_obj118, align 8, !dbg !1537
  %98 = load ptr, ptr %previous_walk_state, align 8, !dbg !1538
  %caller_return_desc119 = getelementptr inbounds %struct.acpi_walk_state, ptr %98, i32 0, i32 31, !dbg !1539
  %99 = load ptr, ptr %caller_return_desc119, align 8, !dbg !1539
  store ptr %97, ptr %99, align 8, !dbg !1540
  br label %if.end123, !dbg !1541

if.else120:                                       ; preds = %if.then114
  %100 = load ptr, ptr %previous_walk_state, align 8, !dbg !1542
  %return_desc121 = getelementptr inbounds %struct.acpi_walk_state, ptr %100, i32 0, i32 45, !dbg !1544
  %101 = load ptr, ptr %return_desc121, align 8, !dbg !1544
  %102 = load ptr, ptr %previous_walk_state, align 8, !dbg !1545
  %caller_return_desc122 = getelementptr inbounds %struct.acpi_walk_state, ptr %102, i32 0, i32 31, !dbg !1546
  %103 = load ptr, ptr %caller_return_desc122, align 8, !dbg !1546
  store ptr %101, ptr %103, align 8, !dbg !1547
  br label %if.end123

if.end123:                                        ; preds = %if.else120, %if.then117
  br label %if.end135, !dbg !1548

if.else124:                                       ; preds = %if.else112
  %104 = load ptr, ptr %previous_walk_state, align 8, !dbg !1549
  %return_desc125 = getelementptr inbounds %struct.acpi_walk_state, ptr %104, i32 0, i32 45, !dbg !1552
  %105 = load ptr, ptr %return_desc125, align 8, !dbg !1552
  %tobool126 = icmp ne ptr %105, null, !dbg !1549
  br i1 %tobool126, label %if.then127, label %if.end129, !dbg !1553

if.then127:                                       ; preds = %if.else124
  %106 = load ptr, ptr %previous_walk_state, align 8, !dbg !1554
  %return_desc128 = getelementptr inbounds %struct.acpi_walk_state, ptr %106, i32 0, i32 45, !dbg !1556
  %107 = load ptr, ptr %return_desc128, align 8, !dbg !1556
  call void @acpi_ut_remove_reference(ptr noundef %107) #6, !dbg !1557
  br label %if.end129, !dbg !1558

if.end129:                                        ; preds = %if.then127, %if.else124
  %108 = load ptr, ptr %previous_walk_state, align 8, !dbg !1559
  %implicit_return_obj130 = getelementptr inbounds %struct.acpi_walk_state, ptr %108, i32 0, i32 34, !dbg !1561
  %109 = load ptr, ptr %implicit_return_obj130, align 8, !dbg !1561
  %tobool131 = icmp ne ptr %109, null, !dbg !1559
  br i1 %tobool131, label %if.then132, label %if.end134, !dbg !1562

if.then132:                                       ; preds = %if.end129
  %110 = load ptr, ptr %previous_walk_state, align 8, !dbg !1563
  %implicit_return_obj133 = getelementptr inbounds %struct.acpi_walk_state, ptr %110, i32 0, i32 34, !dbg !1565
  %111 = load ptr, ptr %implicit_return_obj133, align 8, !dbg !1565
  call void @acpi_ut_remove_reference(ptr noundef %111) #6, !dbg !1566
  br label %if.end134, !dbg !1567

if.end134:                                        ; preds = %if.then132, %if.end129
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.end123
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.end111
  %112 = load ptr, ptr %previous_walk_state, align 8, !dbg !1568
  call void @acpi_ds_delete_walk_state(ptr noundef %112) #6, !dbg !1569
  br label %while.cond, !dbg !1339, !llvm.loop !1385

while.end:                                        ; preds = %while.cond
  %113 = load ptr, ptr %thread, align 8, !dbg !1570
  call void @acpi_ex_release_all_mutexes(ptr noundef %113) #6, !dbg !1571
  %114 = load ptr, ptr %thread, align 8, !dbg !1572
  %115 = ptrtoint ptr %114 to i64, !dbg !1572
  %116 = inttoptr i64 %115 to ptr, !dbg !1572
  call void @acpi_ut_delete_generic_state(ptr noundef %116) #6, !dbg !1573
  %117 = load ptr, ptr %prev_walk_list, align 8, !dbg !1574
  store ptr %117, ptr @acpi_gbl_current_walk_list, align 8, !dbg !1575
  %118 = load i32, ptr %status, align 4, !dbg !1576
  store i32 %118, ptr %retval, align 4, !dbg !1576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1576

cleanup:                                          ; preds = %while.end, %if.then94, %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %previous_walk_state) #5, !dbg !1577
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_walk_list) #5, !dbg !1577
  call void @llvm.lifetime.end.p0(i64 8, ptr %thread) #5, !dbg !1577
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1577
  %119 = load i32, ptr %retval, align 4, !dbg !1577
  ret i32 %119, !dbg !1577
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1578 dso_local ptr @acpi_ut_create_thread_state() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1582 dso_local void @acpi_ds_terminate_control_method(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1585 dso_local void @acpi_ds_delete_walk_state(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1588 dso_local void @acpi_ds_push_walk_state(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1591 dso_local i32 @acpi_ps_parse_loop(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1592 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1597, metadata !DIExpression()), !dbg !1598
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1599
  call void @kfree(ptr noundef %0) #6, !dbg !1600
  ret void, !dbg !1601
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1602 dso_local i32 @acpi_ds_call_control_method(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1605 dso_local i32 @acpi_ds_method_error(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1608 dso_local ptr @acpi_ds_get_current_walk_state(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1611 dso_local void @acpi_ex_exit_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1614 dso_local void @acpi_ns_print_node_pathname(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1619 dso_local void @acpi_os_printf(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1623 dso_local void @acpi_ut_method_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1626 dso_local void @acpi_ex_enter_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1627 dso_local ptr @acpi_ds_pop_walk_state(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1628 dso_local void @acpi_ds_scope_stack_clear(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1629 dso_local void @acpi_ps_cleanup_scope(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1632 dso_local ptr @acpi_ut_create_integer_object(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1635 dso_local i32 @acpi_ds_restart_control_method(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1638 dso_local void @acpi_ds_clear_implicit_return(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1639 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1642 dso_local void @acpi_ex_release_all_mutexes(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1645 dso_local void @acpi_ut_delete_generic_state(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1648 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!802, !803, !804, !805, !806, !807, !808, !809}
!llvm.ident = !{!810}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 526, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/psparse.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96a49ab0a59096d63aeb2ae641f0dd47")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 527, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 2)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !14, file: !2, line: 28, type: !800, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.psparse.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22psparse\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/psparse.ll drivers/acpi/acpica/psparse.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !23, globals: !799, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 116, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1)
!21 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2)
!22 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3)
!23 = !{!24, !29, !33, !36, !40, !43}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !28)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !34, line: 42, baseType: !35)
!34 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !37, line: 421, baseType: !38)
!37 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !18)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !42)
!42 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !17, line: 679, size: 640, elements: !45)
!45 = !{!46, !55, !726, !735, !744, !757, !771, !772, !782}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !44, file: !17, line: 680, baseType: !47, size: 128)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !17, line: 575, size: 128, elements: !48)
!48 = !{!49, !51, !52, !53, !54}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !47, file: !17, line: 576, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !47, file: !17, line: 576, baseType: !30, size: 8, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !47, file: !17, line: 576, baseType: !30, size: 8, offset: 72)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !47, file: !17, line: 576, baseType: !24, size: 16, offset: 80)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !47, file: !17, line: 576, baseType: !24, size: 16, offset: 96)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !44, file: !17, line: 681, baseType: !56, size: 384)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !17, line: 604, size: 384, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !723, !724, !725}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !56, file: !17, line: 605, baseType: !50, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !56, file: !17, line: 605, baseType: !30, size: 8, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !17, line: 605, baseType: !30, size: 8, offset: 72)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !56, file: !17, line: 605, baseType: !24, size: 16, offset: 80)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !56, file: !17, line: 605, baseType: !24, size: 16, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !56, file: !17, line: 606, baseType: !24, size: 16, offset: 112)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !56, file: !17, line: 607, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !17, line: 891, size: 1600, elements: !67)
!67 = !{!68, !666, !682}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !66, file: !17, line: 892, baseType: !69, size: 448)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !17, line: 844, size: 448, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !77, !656, !665}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !69, file: !17, line: 845, baseType: !65, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !69, file: !17, line: 845, baseType: !30, size: 8, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !69, file: !17, line: 845, baseType: !30, size: 8, offset: 72)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !69, file: !17, line: 845, baseType: !24, size: 16, offset: 80)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !69, file: !17, line: 845, baseType: !29, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !69, file: !17, line: 845, baseType: !65, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !69, file: !17, line: 845, baseType: !78, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !17, line: 133, size: 384, elements: !80)
!80 = !{!81, !640, !641, !642, !643, !652, !653, !654, !655}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !79, file: !17, line: 134, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !84, line: 369, size: 576, elements: !85)
!84 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!85 = !{!86, !94, !107, !118, !131, !145, !154, !286, !303, !319, !330, !409, !421, !435, !445, !463, !485, !504, !523, !542, !559, !586, !603, !616, !630, !639}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !83, file: !84, line: 370, baseType: !87, size: 128)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !84, line: 73, size: 128, elements: !88)
!88 = !{!89, !90, !91, !92, !93}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !87, file: !84, line: 74, baseType: !82, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !87, file: !84, line: 74, baseType: !30, size: 8, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !84, line: 74, baseType: !30, size: 8, offset: 72)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !87, file: !84, line: 74, baseType: !24, size: 16, offset: 80)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !84, line: 74, baseType: !30, size: 8, offset: 96)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !83, file: !84, line: 371, baseType: !95, size: 192)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !84, line: 76, size: 192, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102, !106}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !95, file: !84, line: 77, baseType: !82, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !95, file: !84, line: 77, baseType: !30, size: 8, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !84, line: 77, baseType: !30, size: 8, offset: 72)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !95, file: !84, line: 77, baseType: !24, size: 16, offset: 80)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !95, file: !84, line: 77, baseType: !30, size: 8, offset: 96)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !95, file: !84, line: 77, baseType: !103, size: 24, offset: 104)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 3)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !95, file: !84, line: 78, baseType: !40, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !83, file: !84, line: 372, baseType: !108, size: 256)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !84, line: 93, size: 256, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115, !117}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !108, file: !84, line: 94, baseType: !82, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !108, file: !84, line: 94, baseType: !30, size: 8, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !84, line: 94, baseType: !30, size: 8, offset: 72)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !108, file: !84, line: 94, baseType: !24, size: 16, offset: 80)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !84, line: 94, baseType: !30, size: 8, offset: 96)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !108, file: !84, line: 94, baseType: !116, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !108, file: !84, line: 94, baseType: !38, size: 32, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !83, file: !84, line: 373, baseType: !119, size: 384)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !84, line: 97, size: 384, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !119, file: !84, line: 98, baseType: !82, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !119, file: !84, line: 98, baseType: !30, size: 8, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !84, line: 98, baseType: !30, size: 8, offset: 72)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !119, file: !84, line: 98, baseType: !24, size: 16, offset: 80)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !84, line: 98, baseType: !30, size: 8, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !119, file: !84, line: 98, baseType: !29, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !119, file: !84, line: 98, baseType: !38, size: 32, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !119, file: !84, line: 99, baseType: !38, size: 32, offset: 224)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !119, file: !84, line: 100, baseType: !29, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !119, file: !84, line: 101, baseType: !78, size: 64, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !83, file: !84, line: 374, baseType: !132, size: 384)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !84, line: 104, size: 384, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !142, !143, !144}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !132, file: !84, line: 105, baseType: !82, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !132, file: !84, line: 105, baseType: !30, size: 8, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !84, line: 105, baseType: !30, size: 8, offset: 72)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !132, file: !84, line: 105, baseType: !24, size: 16, offset: 80)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !84, line: 105, baseType: !30, size: 8, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !132, file: !84, line: 105, baseType: !78, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !132, file: !84, line: 106, baseType: !141, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !132, file: !84, line: 107, baseType: !29, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !132, file: !84, line: 108, baseType: !38, size: 32, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !132, file: !84, line: 109, baseType: !38, size: 32, offset: 352)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !83, file: !84, line: 375, baseType: !146, size: 192)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !84, line: 118, size: 192, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !146, file: !84, line: 119, baseType: !82, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !146, file: !84, line: 119, baseType: !30, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !84, line: 119, baseType: !30, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !146, file: !84, line: 119, baseType: !24, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !84, line: 119, baseType: !30, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !146, file: !84, line: 119, baseType: !50, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !83, file: !84, line: 376, baseType: !155, size: 448)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !84, line: 144, size: 448, elements: !156)
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !283, !284, !285}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !155, file: !84, line: 145, baseType: !82, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !155, file: !84, line: 145, baseType: !30, size: 8, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !155, file: !84, line: 145, baseType: !30, size: 8, offset: 72)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !155, file: !84, line: 145, baseType: !24, size: 16, offset: 80)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !155, file: !84, line: 145, baseType: !30, size: 8, offset: 96)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !155, file: !84, line: 145, baseType: !30, size: 8, offset: 104)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !155, file: !84, line: 146, baseType: !30, size: 8, offset: 112)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !155, file: !84, line: 147, baseType: !30, size: 8, offset: 120)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !155, file: !84, line: 148, baseType: !82, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !155, file: !84, line: 149, baseType: !82, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !155, file: !84, line: 150, baseType: !29, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !155, file: !84, line: 154, baseType: !169, size: 64, offset: 320)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !155, file: !84, line: 151, size: 64, elements: !170)
!170 = !{!171, !282}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !169, file: !84, line: 152, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !17, line: 248, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!36, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !178, line: 37, size: 9024, elements: !179)
!178 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !215, !216, !217, !218, !219, !223, !227, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !254, !255, !256, !257, !258, !259, !260, !261, !274, !280}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !178, line: 38, baseType: !176, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !177, file: !178, line: 39, baseType: !30, size: 8, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !177, file: !178, line: 40, baseType: !30, size: 8, offset: 72)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !177, file: !178, line: 41, baseType: !24, size: 16, offset: 80)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !177, file: !178, line: 42, baseType: !30, size: 8, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !177, file: !178, line: 43, baseType: !30, size: 8, offset: 104)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !177, file: !178, line: 44, baseType: !30, size: 8, offset: 112)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !177, file: !178, line: 45, baseType: !188, size: 16, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !37, line: 445, baseType: !24)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !177, file: !178, line: 46, baseType: !30, size: 8, offset: 144)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !177, file: !178, line: 47, baseType: !30, size: 8, offset: 152)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !177, file: !178, line: 48, baseType: !30, size: 8, offset: 160)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !177, file: !178, line: 49, baseType: !30, size: 8, offset: 168)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !177, file: !178, line: 50, baseType: !30, size: 8, offset: 176)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !177, file: !178, line: 51, baseType: !30, size: 8, offset: 184)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !177, file: !178, line: 52, baseType: !30, size: 8, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !177, file: !178, line: 53, baseType: !30, size: 8, offset: 200)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !177, file: !178, line: 54, baseType: !29, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !177, file: !178, line: 55, baseType: !38, size: 32, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !177, file: !178, line: 56, baseType: !38, size: 32, offset: 352)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !177, file: !178, line: 57, baseType: !38, size: 32, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !177, file: !178, line: 58, baseType: !38, size: 32, offset: 416)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !177, file: !178, line: 60, baseType: !203, size: 640, offset: 448)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !17, line: 909, size: 640, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !203, file: !17, line: 910, baseType: !29, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !203, file: !17, line: 911, baseType: !29, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !203, file: !17, line: 912, baseType: !29, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !203, file: !17, line: 913, baseType: !29, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !203, file: !17, line: 914, baseType: !29, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !203, file: !17, line: 915, baseType: !65, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !203, file: !17, line: 916, baseType: !78, size: 64, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !203, file: !17, line: 917, baseType: !43, size: 64, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !203, file: !17, line: 918, baseType: !65, size: 64, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !203, file: !17, line: 919, baseType: !38, size: 32, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !177, file: !178, line: 61, baseType: !38, size: 32, offset: 1088)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !177, file: !178, line: 62, baseType: !38, size: 32, offset: 1120)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !177, file: !178, line: 63, baseType: !24, size: 16, offset: 1152)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !177, file: !178, line: 64, baseType: !30, size: 8, offset: 1168)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !177, file: !178, line: 66, baseType: !220, size: 2688, offset: 1216)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 2688, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 7)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !177, file: !178, line: 67, baseType: !224, size: 3072, offset: 3904)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 3072, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 8)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !177, file: !178, line: 68, baseType: !228, size: 576, offset: 6976)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 576, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 9)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !177, file: !178, line: 69, baseType: !141, size: 64, offset: 7552)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !177, file: !178, line: 71, baseType: !29, size: 64, offset: 7616)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !177, file: !178, line: 72, baseType: !141, size: 64, offset: 7680)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !177, file: !178, line: 73, baseType: !43, size: 64, offset: 7744)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !177, file: !178, line: 74, baseType: !78, size: 64, offset: 7808)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !177, file: !178, line: 75, baseType: !82, size: 64, offset: 7872)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !177, file: !178, line: 76, baseType: !78, size: 64, offset: 7936)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !177, file: !178, line: 77, baseType: !65, size: 64, offset: 8000)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !177, file: !178, line: 78, baseType: !82, size: 64, offset: 8064)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !177, file: !178, line: 79, baseType: !78, size: 64, offset: 8128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !177, file: !178, line: 80, baseType: !116, size: 64, offset: 8192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !177, file: !178, line: 81, baseType: !65, size: 64, offset: 8256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !177, file: !178, line: 82, baseType: !244, size: 64, offset: 8320)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !17, line: 718, size: 128, elements: !247)
!247 = !{!248, !249, !250, !251, !252, !253}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !246, file: !17, line: 722, baseType: !38, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !246, file: !17, line: 723, baseType: !38, size: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !246, file: !17, line: 724, baseType: !24, size: 16, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !246, file: !17, line: 725, baseType: !30, size: 8, offset: 80)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !246, file: !17, line: 726, baseType: !30, size: 8, offset: 88)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !246, file: !17, line: 727, baseType: !30, size: 8, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !177, file: !178, line: 83, baseType: !65, size: 64, offset: 8384)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !177, file: !178, line: 84, baseType: !82, size: 64, offset: 8448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !177, file: !178, line: 85, baseType: !43, size: 64, offset: 8512)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !177, file: !178, line: 86, baseType: !82, size: 64, offset: 8576)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !177, file: !178, line: 87, baseType: !43, size: 64, offset: 8640)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !177, file: !178, line: 88, baseType: !65, size: 64, offset: 8704)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !177, file: !178, line: 89, baseType: !65, size: 64, offset: 8768)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !177, file: !178, line: 90, baseType: !262, size: 64, offset: 8832)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !17, line: 634, size: 320, elements: !264)
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !17, line: 635, baseType: !50, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !263, file: !17, line: 635, baseType: !30, size: 8, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !263, file: !17, line: 635, baseType: !30, size: 8, offset: 72)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !263, file: !17, line: 635, baseType: !24, size: 16, offset: 80)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !263, file: !17, line: 635, baseType: !24, size: 16, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !263, file: !17, line: 636, baseType: !30, size: 8, offset: 112)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !263, file: !17, line: 637, baseType: !176, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !263, file: !17, line: 638, baseType: !82, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !263, file: !17, line: 639, baseType: !40, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !177, file: !178, line: 91, baseType: !275, size: 64, offset: 8896)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !17, line: 652, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!36, !176, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !177, file: !178, line: 92, baseType: !281, size: 64, offset: 8960)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !17, line: 656, baseType: !173)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !169, file: !84, line: 153, baseType: !82, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !155, file: !84, line: 156, baseType: !38, size: 32, offset: 384)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !155, file: !84, line: 157, baseType: !188, size: 16, offset: 416)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !155, file: !84, line: 158, baseType: !30, size: 8, offset: 432)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !83, file: !84, line: 377, baseType: !287, size: 576)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !84, line: 122, size: 576, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !287, file: !84, line: 123, baseType: !82, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !84, line: 123, baseType: !30, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !287, file: !84, line: 123, baseType: !30, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !287, file: !84, line: 123, baseType: !24, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !84, line: 123, baseType: !30, size: 8, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !287, file: !84, line: 123, baseType: !30, size: 8, offset: 104)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !287, file: !84, line: 124, baseType: !24, size: 16, offset: 112)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !287, file: !84, line: 125, baseType: !50, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !287, file: !84, line: 126, baseType: !40, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !287, file: !84, line: 127, baseType: !262, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !287, file: !84, line: 128, baseType: !82, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !84, line: 129, baseType: !82, size: 64, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !287, file: !84, line: 130, baseType: !78, size: 64, offset: 448)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !287, file: !84, line: 131, baseType: !30, size: 8, offset: 512)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !83, file: !84, line: 378, baseType: !304, size: 512)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !84, line: 134, size: 512, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !317, !318}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !304, file: !84, line: 135, baseType: !82, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !304, file: !84, line: 135, baseType: !30, size: 8, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !304, file: !84, line: 135, baseType: !30, size: 8, offset: 72)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !304, file: !84, line: 135, baseType: !24, size: 16, offset: 80)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !84, line: 135, baseType: !30, size: 8, offset: 96)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !304, file: !84, line: 135, baseType: !30, size: 8, offset: 104)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !304, file: !84, line: 136, baseType: !78, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !304, file: !84, line: 137, baseType: !82, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !84, line: 138, baseType: !82, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !304, file: !84, line: 139, baseType: !316, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !37, line: 129, baseType: !40)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !304, file: !84, line: 140, baseType: !38, size: 32, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !304, file: !84, line: 141, baseType: !50, size: 64, offset: 448)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !83, file: !84, line: 379, baseType: !320, size: 320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !84, line: 185, size: 320, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !329}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !320, file: !84, line: 186, baseType: !82, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !320, file: !84, line: 186, baseType: !30, size: 8, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !320, file: !84, line: 186, baseType: !30, size: 8, offset: 72)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !320, file: !84, line: 186, baseType: !24, size: 16, offset: 80)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !84, line: 186, baseType: !30, size: 8, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !320, file: !84, line: 186, baseType: !328, size: 128, offset: 128)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 128, elements: !10)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !320, file: !84, line: 186, baseType: !82, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !83, file: !84, line: 380, baseType: !331, size: 384)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !84, line: 188, size: 384, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !331, file: !84, line: 189, baseType: !82, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !331, file: !84, line: 189, baseType: !30, size: 8, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !331, file: !84, line: 189, baseType: !30, size: 8, offset: 72)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !331, file: !84, line: 189, baseType: !24, size: 16, offset: 80)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !331, file: !84, line: 189, baseType: !30, size: 8, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !331, file: !84, line: 190, baseType: !328, size: 128, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !331, file: !84, line: 190, baseType: !82, size: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !331, file: !84, line: 190, baseType: !341, size: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !17, line: 480, size: 576, elements: !343)
!343 = !{!344, !345, !346, !347, !355, !370, !403, !404, !405, !406, !407, !408}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !342, file: !17, line: 481, baseType: !78, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !342, file: !17, line: 482, baseType: !341, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !17, line: 483, baseType: !341, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !342, file: !17, line: 484, baseType: !348, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !17, line: 497, size: 256, elements: !350)
!350 = !{!351, !352, !353, !354}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !349, file: !17, line: 498, baseType: !348, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !349, file: !17, line: 499, baseType: !348, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !349, file: !17, line: 500, baseType: !341, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !349, file: !17, line: 501, baseType: !38, size: 32, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !342, file: !17, line: 485, baseType: !356, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !17, line: 466, size: 320, elements: !358)
!358 = !{!359, !364, !365, !366, !367, !368, !369}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !357, file: !17, line: 467, baseType: !360, size: 128)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !17, line: 459, size: 128, elements: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !360, file: !17, line: 460, baseType: !30, size: 8)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !360, file: !17, line: 461, baseType: !40, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !357, file: !17, line: 468, baseType: !360, size: 128, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !357, file: !17, line: 469, baseType: !24, size: 16, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !357, file: !17, line: 470, baseType: !30, size: 8, offset: 272)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !357, file: !17, line: 471, baseType: !30, size: 8, offset: 280)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !357, file: !17, line: 472, baseType: !30, size: 8, offset: 288)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !357, file: !17, line: 473, baseType: !30, size: 8, offset: 296)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !342, file: !17, line: 486, baseType: !371, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !17, line: 448, size: 192, elements: !373)
!373 = !{!374, !398, !399, !400, !401, !402}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !372, file: !17, line: 449, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !17, line: 438, size: 64, elements: !376)
!376 = !{!377, !378, !392}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !375, file: !17, line: 439, baseType: !78, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !375, file: !17, line: 440, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !17, line: 419, size: 256, elements: !381)
!381 = !{!382, !388, !389, !390, !391}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !380, file: !17, line: 420, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !37, line: 1058, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!38, !387, !38, !50}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !37, line: 424, baseType: !50)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !380, file: !17, line: 421, baseType: !50, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !380, file: !17, line: 422, baseType: !78, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !380, file: !17, line: 423, baseType: !30, size: 8, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !380, file: !17, line: 424, baseType: !30, size: 8, offset: 200)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !375, file: !17, line: 441, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !17, line: 429, size: 128, elements: !395)
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !394, file: !17, line: 430, baseType: !78, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !394, file: !17, line: 431, baseType: !393, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !372, file: !17, line: 450, baseType: !356, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !372, file: !17, line: 451, baseType: !30, size: 8, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !372, file: !17, line: 452, baseType: !30, size: 8, offset: 136)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !372, file: !17, line: 453, baseType: !30, size: 8, offset: 144)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !372, file: !17, line: 454, baseType: !30, size: 8, offset: 152)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !342, file: !17, line: 487, baseType: !40, size: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !342, file: !17, line: 488, baseType: !38, size: 32, offset: 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !342, file: !17, line: 489, baseType: !24, size: 16, offset: 480)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !342, file: !17, line: 490, baseType: !24, size: 16, offset: 496)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !342, file: !17, line: 491, baseType: !30, size: 8, offset: 512)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !342, file: !17, line: 492, baseType: !30, size: 8, offset: 520)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !83, file: !84, line: 381, baseType: !410, size: 384)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !84, line: 193, size: 384, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419, !420}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !410, file: !84, line: 194, baseType: !82, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !410, file: !84, line: 194, baseType: !30, size: 8, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !410, file: !84, line: 194, baseType: !30, size: 8, offset: 72)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !410, file: !84, line: 194, baseType: !24, size: 16, offset: 80)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !410, file: !84, line: 194, baseType: !30, size: 8, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !410, file: !84, line: 194, baseType: !328, size: 128, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !410, file: !84, line: 194, baseType: !82, size: 64, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !410, file: !84, line: 194, baseType: !38, size: 32, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !410, file: !84, line: 195, baseType: !38, size: 32, offset: 352)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !83, file: !84, line: 382, baseType: !422, size: 384)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !84, line: 198, size: 384, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !431, !432, !433}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !422, file: !84, line: 199, baseType: !82, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !422, file: !84, line: 199, baseType: !30, size: 8, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !422, file: !84, line: 199, baseType: !30, size: 8, offset: 72)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !422, file: !84, line: 199, baseType: !24, size: 16, offset: 80)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !84, line: 199, baseType: !30, size: 8, offset: 96)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !422, file: !84, line: 201, baseType: !30, size: 8, offset: 104)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !422, file: !84, line: 202, baseType: !30, size: 8, offset: 112)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !422, file: !84, line: 203, baseType: !328, size: 128, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !422, file: !84, line: 203, baseType: !82, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !422, file: !84, line: 203, baseType: !434, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !37, line: 128, baseType: !40)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !83, file: !84, line: 383, baseType: !436, size: 320)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !84, line: 206, size: 320, elements: !437)
!437 = !{!438, !439, !440, !441, !442, !443, !444}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !436, file: !84, line: 207, baseType: !82, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !436, file: !84, line: 207, baseType: !30, size: 8, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !436, file: !84, line: 207, baseType: !30, size: 8, offset: 72)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !436, file: !84, line: 207, baseType: !24, size: 16, offset: 80)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !436, file: !84, line: 207, baseType: !30, size: 8, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !436, file: !84, line: 207, baseType: !328, size: 128, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !436, file: !84, line: 207, baseType: !82, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !83, file: !84, line: 384, baseType: !446, size: 384)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !84, line: 234, size: 384, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !446, file: !84, line: 235, baseType: !82, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !446, file: !84, line: 235, baseType: !30, size: 8, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !446, file: !84, line: 235, baseType: !30, size: 8, offset: 72)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !446, file: !84, line: 235, baseType: !24, size: 16, offset: 80)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !84, line: 235, baseType: !30, size: 8, offset: 96)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !446, file: !84, line: 235, baseType: !30, size: 8, offset: 104)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !446, file: !84, line: 235, baseType: !30, size: 8, offset: 112)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !446, file: !84, line: 235, baseType: !30, size: 8, offset: 120)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !446, file: !84, line: 235, baseType: !78, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !446, file: !84, line: 235, baseType: !38, size: 32, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !446, file: !84, line: 235, baseType: !38, size: 32, offset: 224)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !446, file: !84, line: 235, baseType: !38, size: 32, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !446, file: !84, line: 235, baseType: !30, size: 8, offset: 288)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !446, file: !84, line: 235, baseType: !30, size: 8, offset: 296)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !446, file: !84, line: 235, baseType: !82, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !83, file: !84, line: 385, baseType: !464, size: 576)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !84, line: 238, size: 576, elements: !465)
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !464, file: !84, line: 239, baseType: !82, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !464, file: !84, line: 239, baseType: !30, size: 8, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !464, file: !84, line: 239, baseType: !30, size: 8, offset: 72)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !464, file: !84, line: 239, baseType: !24, size: 16, offset: 80)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !464, file: !84, line: 239, baseType: !30, size: 8, offset: 96)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !464, file: !84, line: 239, baseType: !30, size: 8, offset: 104)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !464, file: !84, line: 239, baseType: !30, size: 8, offset: 112)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !464, file: !84, line: 239, baseType: !30, size: 8, offset: 120)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !464, file: !84, line: 239, baseType: !78, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !464, file: !84, line: 239, baseType: !38, size: 32, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !464, file: !84, line: 239, baseType: !38, size: 32, offset: 224)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !464, file: !84, line: 239, baseType: !38, size: 32, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !464, file: !84, line: 239, baseType: !30, size: 8, offset: 288)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !464, file: !84, line: 239, baseType: !30, size: 8, offset: 296)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !464, file: !84, line: 239, baseType: !24, size: 16, offset: 304)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !464, file: !84, line: 240, baseType: !82, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !464, file: !84, line: 241, baseType: !29, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !464, file: !84, line: 242, baseType: !24, size: 16, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !464, file: !84, line: 243, baseType: !29, size: 64, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !83, file: !84, line: 386, baseType: !486, size: 384)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !84, line: 263, size: 384, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !486, file: !84, line: 264, baseType: !82, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !486, file: !84, line: 264, baseType: !30, size: 8, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !486, file: !84, line: 264, baseType: !30, size: 8, offset: 72)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !486, file: !84, line: 264, baseType: !24, size: 16, offset: 80)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !84, line: 264, baseType: !30, size: 8, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !486, file: !84, line: 264, baseType: !30, size: 8, offset: 104)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !486, file: !84, line: 264, baseType: !30, size: 8, offset: 112)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !486, file: !84, line: 264, baseType: !30, size: 8, offset: 120)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !486, file: !84, line: 264, baseType: !78, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !486, file: !84, line: 264, baseType: !38, size: 32, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !486, file: !84, line: 264, baseType: !38, size: 32, offset: 224)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !486, file: !84, line: 264, baseType: !38, size: 32, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !486, file: !84, line: 264, baseType: !30, size: 8, offset: 288)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !486, file: !84, line: 264, baseType: !30, size: 8, offset: 296)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !486, file: !84, line: 264, baseType: !30, size: 8, offset: 304)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !486, file: !84, line: 265, baseType: !82, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !83, file: !84, line: 387, baseType: !505, size: 448)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !84, line: 246, size: 448, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !505, file: !84, line: 247, baseType: !82, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !505, file: !84, line: 247, baseType: !30, size: 8, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !505, file: !84, line: 247, baseType: !30, size: 8, offset: 72)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !505, file: !84, line: 247, baseType: !24, size: 16, offset: 80)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !505, file: !84, line: 247, baseType: !30, size: 8, offset: 96)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !505, file: !84, line: 247, baseType: !30, size: 8, offset: 104)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !505, file: !84, line: 247, baseType: !30, size: 8, offset: 112)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !505, file: !84, line: 247, baseType: !30, size: 8, offset: 120)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !505, file: !84, line: 247, baseType: !78, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !505, file: !84, line: 247, baseType: !38, size: 32, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !505, file: !84, line: 247, baseType: !38, size: 32, offset: 224)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !505, file: !84, line: 247, baseType: !38, size: 32, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !505, file: !84, line: 247, baseType: !30, size: 8, offset: 288)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !505, file: !84, line: 247, baseType: !30, size: 8, offset: 296)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !505, file: !84, line: 247, baseType: !82, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !505, file: !84, line: 248, baseType: !82, size: 64, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !83, file: !84, line: 388, baseType: !524, size: 448)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !84, line: 251, size: 448, elements: !525)
!525 = !{!526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !524, file: !84, line: 252, baseType: !82, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !524, file: !84, line: 252, baseType: !30, size: 8, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !524, file: !84, line: 252, baseType: !30, size: 8, offset: 72)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !524, file: !84, line: 252, baseType: !24, size: 16, offset: 80)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !524, file: !84, line: 252, baseType: !30, size: 8, offset: 96)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !524, file: !84, line: 252, baseType: !30, size: 8, offset: 104)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !524, file: !84, line: 252, baseType: !30, size: 8, offset: 112)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !524, file: !84, line: 252, baseType: !30, size: 8, offset: 120)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !524, file: !84, line: 252, baseType: !78, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !524, file: !84, line: 252, baseType: !38, size: 32, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !524, file: !84, line: 252, baseType: !38, size: 32, offset: 224)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !524, file: !84, line: 252, baseType: !38, size: 32, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !524, file: !84, line: 252, baseType: !30, size: 8, offset: 288)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !524, file: !84, line: 252, baseType: !30, size: 8, offset: 296)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !524, file: !84, line: 257, baseType: !82, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !524, file: !84, line: 258, baseType: !82, size: 64, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !83, file: !84, line: 389, baseType: !543, size: 512)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !84, line: 274, size: 512, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !557, !558}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !543, file: !84, line: 275, baseType: !82, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !543, file: !84, line: 275, baseType: !30, size: 8, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !543, file: !84, line: 275, baseType: !30, size: 8, offset: 72)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !543, file: !84, line: 275, baseType: !24, size: 16, offset: 80)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !84, line: 275, baseType: !30, size: 8, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !543, file: !84, line: 275, baseType: !78, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !543, file: !84, line: 276, baseType: !38, size: 32, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !543, file: !84, line: 277, baseType: !553, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !37, line: 1061, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !387, !38, !50}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !543, file: !84, line: 278, baseType: !50, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !543, file: !84, line: 279, baseType: !328, size: 128, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !83, file: !84, line: 390, baseType: !560, size: 576)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !84, line: 282, size: 576, elements: !561)
!561 = !{!562, !563, !564, !565, !566, !567, !568, !569, !575, !576, !577, !578, !584, !585}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !560, file: !84, line: 283, baseType: !82, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !560, file: !84, line: 283, baseType: !30, size: 8, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !560, file: !84, line: 283, baseType: !30, size: 8, offset: 72)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !560, file: !84, line: 283, baseType: !24, size: 16, offset: 80)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !560, file: !84, line: 283, baseType: !30, size: 8, offset: 96)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !560, file: !84, line: 283, baseType: !30, size: 8, offset: 104)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !560, file: !84, line: 284, baseType: !30, size: 8, offset: 112)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !560, file: !84, line: 285, baseType: !570, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !37, line: 1093, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!36, !38, !316, !38, !574, !50, !50}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !560, file: !84, line: 286, baseType: !78, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !560, file: !84, line: 287, baseType: !50, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !560, file: !84, line: 288, baseType: !50, size: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !560, file: !84, line: 289, baseType: !579, size: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !37, line: 1126, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!36, !387, !38, !50, !583}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !560, file: !84, line: 290, baseType: !82, size: 64, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !560, file: !84, line: 291, baseType: !82, size: 64, offset: 512)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !83, file: !84, line: 391, baseType: !587, size: 512)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !84, line: 309, size: 512, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !587, file: !84, line: 310, baseType: !82, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !587, file: !84, line: 310, baseType: !30, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !84, line: 310, baseType: !30, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !587, file: !84, line: 310, baseType: !24, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !84, line: 310, baseType: !30, size: 8, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !587, file: !84, line: 310, baseType: !30, size: 8, offset: 104)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !587, file: !84, line: 311, baseType: !30, size: 8, offset: 112)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !587, file: !84, line: 312, baseType: !30, size: 8, offset: 120)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !587, file: !84, line: 313, baseType: !50, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !587, file: !84, line: 314, baseType: !78, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !587, file: !84, line: 315, baseType: !141, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !587, file: !84, line: 316, baseType: !29, size: 64, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !587, file: !84, line: 317, baseType: !29, size: 64, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !587, file: !84, line: 318, baseType: !38, size: 32, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !83, file: !84, line: 392, baseType: !604, size: 448)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !84, line: 342, size: 448, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !611, !612, !613, !614, !615}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !604, file: !84, line: 343, baseType: !82, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !604, file: !84, line: 343, baseType: !30, size: 8, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !604, file: !84, line: 343, baseType: !30, size: 8, offset: 72)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !604, file: !84, line: 343, baseType: !24, size: 16, offset: 80)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !84, line: 343, baseType: !30, size: 8, offset: 96)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !604, file: !84, line: 343, baseType: !78, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !604, file: !84, line: 344, baseType: !78, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !604, file: !84, line: 345, baseType: !50, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !604, file: !84, line: 346, baseType: !29, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !604, file: !84, line: 347, baseType: !38, size: 32, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !83, file: !84, line: 393, baseType: !617, size: 256)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !84, line: 352, size: 256, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !629}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !617, file: !84, line: 353, baseType: !82, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !617, file: !84, line: 353, baseType: !30, size: 8, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !84, line: 353, baseType: !30, size: 8, offset: 72)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !617, file: !84, line: 353, baseType: !24, size: 16, offset: 80)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !84, line: 353, baseType: !30, size: 8, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !617, file: !84, line: 353, baseType: !625, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !37, line: 1064, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !387, !50}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !617, file: !84, line: 354, baseType: !50, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !83, file: !84, line: 394, baseType: !631, size: 192)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !84, line: 359, size: 192, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !631, file: !84, line: 360, baseType: !82, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !631, file: !84, line: 360, baseType: !30, size: 8, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !631, file: !84, line: 360, baseType: !30, size: 8, offset: 72)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !631, file: !84, line: 360, baseType: !24, size: 16, offset: 80)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !84, line: 360, baseType: !30, size: 8, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !631, file: !84, line: 360, baseType: !82, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !83, file: !84, line: 401, baseType: !79, size: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !79, file: !17, line: 135, baseType: !30, size: 8, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !17, line: 136, baseType: !30, size: 8, offset: 72)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !17, line: 137, baseType: !24, size: 16, offset: 80)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !79, file: !17, line: 138, baseType: !644, size: 32, offset: 96)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !645, line: 328, size: 32, elements: !646)
!645 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !644, file: !645, line: 329, baseType: !38, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !644, file: !645, line: 330, baseType: !649, size: 32)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !650)
!650 = !{!651}
!651 = !DISubrange(count: 4)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !79, file: !17, line: 139, baseType: !78, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !79, file: !17, line: 140, baseType: !78, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !79, file: !17, line: 141, baseType: !78, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !79, file: !17, line: 142, baseType: !188, size: 16, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !69, file: !17, line: 845, baseType: !657, size: 64, offset: 320)
!657 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !17, line: 732, size: 64, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !657, file: !17, line: 733, baseType: !40, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !657, file: !17, line: 734, baseType: !38, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !657, file: !17, line: 735, baseType: !116, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !657, file: !17, line: 736, baseType: !29, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !657, file: !17, line: 737, baseType: !116, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !657, file: !17, line: 738, baseType: !65, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !69, file: !17, line: 845, baseType: !30, size: 8, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !66, file: !17, line: 893, baseType: !667, size: 640)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !17, line: 851, size: 640, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !667, file: !17, line: 852, baseType: !65, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !667, file: !17, line: 852, baseType: !30, size: 8, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !17, line: 852, baseType: !30, size: 8, offset: 72)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !667, file: !17, line: 852, baseType: !24, size: 16, offset: 80)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !667, file: !17, line: 852, baseType: !29, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !667, file: !17, line: 852, baseType: !65, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !667, file: !17, line: 852, baseType: !78, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !667, file: !17, line: 852, baseType: !657, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !667, file: !17, line: 852, baseType: !30, size: 8, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !667, file: !17, line: 852, baseType: !116, size: 64, offset: 448)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !667, file: !17, line: 853, baseType: !29, size: 64, offset: 512)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !667, file: !17, line: 854, baseType: !38, size: 32, offset: 576)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !667, file: !17, line: 855, baseType: !38, size: 32, offset: 608)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !66, file: !17, line: 894, baseType: !683, size: 1600)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !17, line: 862, size: 1600, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !683, file: !17, line: 863, baseType: !65, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !683, file: !17, line: 863, baseType: !30, size: 8, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !683, file: !17, line: 863, baseType: !30, size: 8, offset: 72)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !683, file: !17, line: 863, baseType: !24, size: 16, offset: 80)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !683, file: !17, line: 863, baseType: !29, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !683, file: !17, line: 863, baseType: !65, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !683, file: !17, line: 863, baseType: !78, size: 64, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !683, file: !17, line: 863, baseType: !657, size: 64, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !683, file: !17, line: 863, baseType: !30, size: 8, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !683, file: !17, line: 863, baseType: !65, size: 64, offset: 448)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !683, file: !17, line: 864, baseType: !65, size: 64, offset: 512)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !683, file: !17, line: 865, baseType: !116, size: 64, offset: 576)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !683, file: !17, line: 866, baseType: !30, size: 8, offset: 640)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !683, file: !17, line: 867, baseType: !116, size: 64, offset: 704)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !683, file: !17, line: 868, baseType: !116, size: 64, offset: 768)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !683, file: !17, line: 869, baseType: !116, size: 64, offset: 832)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !683, file: !17, line: 870, baseType: !649, size: 32, offset: 896)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !683, file: !17, line: 871, baseType: !38, size: 32, offset: 928)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !683, file: !17, line: 872, baseType: !38, size: 32, offset: 960)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !683, file: !17, line: 873, baseType: !38, size: 32, offset: 992)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !683, file: !17, line: 874, baseType: !38, size: 32, offset: 1024)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !683, file: !17, line: 875, baseType: !38, size: 32, offset: 1056)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !683, file: !17, line: 876, baseType: !38, size: 32, offset: 1088)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !683, file: !17, line: 877, baseType: !38, size: 32, offset: 1120)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !683, file: !17, line: 878, baseType: !38, size: 32, offset: 1152)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !683, file: !17, line: 879, baseType: !38, size: 32, offset: 1184)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !683, file: !17, line: 880, baseType: !38, size: 32, offset: 1216)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !683, file: !17, line: 881, baseType: !38, size: 32, offset: 1248)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !683, file: !17, line: 882, baseType: !38, size: 32, offset: 1280)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !683, file: !17, line: 883, baseType: !38, size: 32, offset: 1312)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !683, file: !17, line: 884, baseType: !24, size: 16, offset: 1344)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !683, file: !17, line: 885, baseType: !30, size: 8, offset: 1360)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !683, file: !17, line: 886, baseType: !30, size: 8, offset: 1368)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !683, file: !17, line: 887, baseType: !30, size: 8, offset: 1376)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !683, file: !17, line: 888, baseType: !720, size: 160, offset: 1384)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 20)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !56, file: !17, line: 608, baseType: !29, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !56, file: !17, line: 609, baseType: !29, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !56, file: !17, line: 610, baseType: !40, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !44, file: !17, line: 682, baseType: !727, size: 192)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !17, line: 582, size: 192, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !734}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !727, file: !17, line: 583, baseType: !50, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !727, file: !17, line: 583, baseType: !30, size: 8, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !17, line: 583, baseType: !30, size: 8, offset: 72)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !727, file: !17, line: 583, baseType: !24, size: 16, offset: 80)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !727, file: !17, line: 583, baseType: !24, size: 16, offset: 96)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !727, file: !17, line: 584, baseType: !82, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !44, file: !17, line: 683, baseType: !736, size: 192)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !17, line: 616, size: 192, elements: !737)
!737 = !{!738, !739, !740, !741, !742, !743}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !736, file: !17, line: 617, baseType: !50, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !736, file: !17, line: 617, baseType: !30, size: 8, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !736, file: !17, line: 617, baseType: !30, size: 8, offset: 72)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !736, file: !17, line: 617, baseType: !24, size: 16, offset: 80)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !736, file: !17, line: 617, baseType: !24, size: 16, offset: 96)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !736, file: !17, line: 618, baseType: !78, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !44, file: !17, line: 684, baseType: !745, size: 448)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !17, line: 621, size: 448, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !745, file: !17, line: 622, baseType: !50, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !745, file: !17, line: 622, baseType: !30, size: 8, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !17, line: 622, baseType: !30, size: 8, offset: 72)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !745, file: !17, line: 622, baseType: !24, size: 16, offset: 80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !745, file: !17, line: 622, baseType: !24, size: 16, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !745, file: !17, line: 623, baseType: !38, size: 32, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !745, file: !17, line: 624, baseType: !65, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !745, file: !17, line: 625, baseType: !29, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !745, file: !17, line: 626, baseType: !29, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !745, file: !17, line: 627, baseType: !38, size: 32, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !44, file: !17, line: 685, baseType: !758, size: 512)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !17, line: 590, size: 512, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !758, file: !17, line: 591, baseType: !50, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !758, file: !17, line: 591, baseType: !30, size: 8, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !758, file: !17, line: 591, baseType: !30, size: 8, offset: 72)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !758, file: !17, line: 591, baseType: !24, size: 16, offset: 80)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !758, file: !17, line: 591, baseType: !24, size: 16, offset: 96)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !758, file: !17, line: 592, baseType: !38, size: 32, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !758, file: !17, line: 593, baseType: !82, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !758, file: !17, line: 594, baseType: !82, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !758, file: !17, line: 595, baseType: !176, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !758, file: !17, line: 596, baseType: !50, size: 64, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !758, file: !17, line: 597, baseType: !38, size: 32, offset: 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !44, file: !17, line: 686, baseType: !263, size: 320)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !44, file: !17, line: 687, baseType: !773, size: 640)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !17, line: 646, size: 640, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !780}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !773, file: !17, line: 647, baseType: !50, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !773, file: !17, line: 647, baseType: !30, size: 8, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !773, file: !17, line: 647, baseType: !30, size: 8, offset: 72)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !773, file: !17, line: 647, baseType: !24, size: 16, offset: 80)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !773, file: !17, line: 647, baseType: !24, size: 16, offset: 96)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !773, file: !17, line: 648, baseType: !781, size: 512, offset: 128)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 512, elements: !225)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !44, file: !17, line: 688, baseType: !783, size: 320)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !17, line: 669, size: 320, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792, !793}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !783, file: !17, line: 670, baseType: !50, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !783, file: !17, line: 670, baseType: !30, size: 8, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !17, line: 670, baseType: !30, size: 8, offset: 72)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !783, file: !17, line: 670, baseType: !24, size: 16, offset: 80)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !783, file: !17, line: 670, baseType: !24, size: 16, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !783, file: !17, line: 671, baseType: !30, size: 8, offset: 112)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !783, file: !17, line: 672, baseType: !78, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !783, file: !17, line: 673, baseType: !82, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !783, file: !17, line: 674, baseType: !794, size: 64, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !17, line: 660, size: 128, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !795, file: !17, line: 661, baseType: !553, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !795, file: !17, line: 662, baseType: !50, size: 64, offset: 64)
!799 = !{!0, !7, !12}
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, size: 64, elements: !225)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!802 = !{i32 7, !"Dwarf Version", i32 5}
!803 = !{i32 2, !"Debug Info Version", i32 3}
!804 = !{i32 1, !"wchar_size", i32 2}
!805 = !{i32 8, !"cf-protection-branch", i32 1}
!806 = !{i32 4, !"function_return_thunk_extern", i32 1}
!807 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!808 = !{i32 1, !"Code Model", i32 2}
!809 = !{i32 1, !"override-stack-alignment", i32 8}
!810 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!811 = distinct !DISubprogram(name: "acpi_ps_get_opcode_size", scope: !2, file: !2, line: 41, type: !812, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{!38, !38}
!814 = !{!815}
!815 = !DILocalVariable(name: "opcode", arg: 1, scope: !811, file: !2, line: 41, type: !38)
!816 = !DILocation(line: 41, column: 33, scope: !811)
!817 = !DILocation(line: 46, column: 6, scope: !818)
!818 = distinct !DILexicalBlock(scope: !811, file: !2, line: 46, column: 6)
!819 = !DILocation(line: 46, column: 13, scope: !818)
!820 = !DILocation(line: 46, column: 6, scope: !811)
!821 = !DILocation(line: 47, column: 3, scope: !822)
!822 = distinct !DILexicalBlock(scope: !818, file: !2, line: 46, column: 23)
!823 = !DILocation(line: 52, column: 2, scope: !811)
!824 = !DILocation(line: 53, column: 1, scope: !811)
!825 = distinct !DISubprogram(name: "acpi_ps_peek_opcode", scope: !2, file: !2, line: 67, type: !826, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !829)
!826 = !DISubroutineType(types: !827)
!827 = !{!24, !828}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!829 = !{!830, !831, !832}
!830 = !DILocalVariable(name: "parser_state", arg: 1, scope: !825, file: !2, line: 67, type: !828)
!831 = !DILocalVariable(name: "aml", scope: !825, file: !2, line: 69, type: !29)
!832 = !DILocalVariable(name: "opcode", scope: !825, file: !2, line: 70, type: !24)
!833 = !DILocation(line: 67, column: 51, scope: !825)
!834 = !DILocation(line: 69, column: 2, scope: !825)
!835 = !DILocation(line: 69, column: 6, scope: !825)
!836 = !DILocation(line: 70, column: 2, scope: !825)
!837 = !DILocation(line: 70, column: 6, scope: !825)
!838 = !DILocation(line: 72, column: 8, scope: !825)
!839 = !DILocation(line: 72, column: 22, scope: !825)
!840 = !DILocation(line: 72, column: 6, scope: !825)
!841 = !DILocation(line: 73, column: 17, scope: !825)
!842 = !DILocation(line: 73, column: 11, scope: !825)
!843 = !DILocation(line: 73, column: 9, scope: !825)
!844 = !DILocation(line: 75, column: 6, scope: !845)
!845 = distinct !DILexicalBlock(scope: !825, file: !2, line: 75, column: 6)
!846 = !DILocation(line: 75, column: 13, scope: !845)
!847 = !DILocation(line: 75, column: 6, scope: !825)
!848 = !DILocation(line: 79, column: 6, scope: !849)
!849 = distinct !DILexicalBlock(scope: !845, file: !2, line: 75, column: 37)
!850 = !DILocation(line: 80, column: 20, scope: !849)
!851 = !DILocation(line: 80, column: 27, scope: !849)
!852 = !DILocation(line: 80, column: 35, scope: !849)
!853 = !DILocation(line: 80, column: 33, scope: !849)
!854 = !DILocation(line: 80, column: 12, scope: !849)
!855 = !DILocation(line: 80, column: 10, scope: !849)
!856 = !DILocation(line: 81, column: 2, scope: !849)
!857 = !DILocation(line: 83, column: 10, scope: !825)
!858 = !DILocation(line: 84, column: 1, scope: !825)
!859 = !DILocation(line: 83, column: 2, scope: !825)
!860 = distinct !DISubprogram(name: "acpi_ps_complete_this_op", scope: !2, file: !2, line: 100, type: !861, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !863)
!861 = !DISubroutineType(types: !862)
!862 = !{!36, !176, !65}
!863 = !{!864, !865, !866, !867, !868, !869, !870, !871}
!864 = !DILocalVariable(name: "walk_state", arg: 1, scope: !860, file: !2, line: 100, type: !176)
!865 = !DILocalVariable(name: "op", arg: 2, scope: !860, file: !2, line: 101, type: !65)
!866 = !DILocalVariable(name: "prev", scope: !860, file: !2, line: 103, type: !65)
!867 = !DILocalVariable(name: "next", scope: !860, file: !2, line: 104, type: !65)
!868 = !DILocalVariable(name: "parent_info", scope: !860, file: !2, line: 105, type: !244)
!869 = !DILocalVariable(name: "replacement_op", scope: !860, file: !2, line: 106, type: !65)
!870 = !DILocalVariable(name: "status", scope: !860, file: !2, line: 107, type: !36)
!871 = !DILabel(scope: !860, name: "cleanup", file: !2, line: 273)
!872 = !DILocation(line: 100, column: 50, scope: !860)
!873 = !DILocation(line: 101, column: 30, scope: !860)
!874 = !DILocation(line: 103, column: 2, scope: !860)
!875 = !DILocation(line: 103, column: 27, scope: !860)
!876 = !DILocation(line: 104, column: 2, scope: !860)
!877 = !DILocation(line: 104, column: 27, scope: !860)
!878 = !DILocation(line: 105, column: 2, scope: !860)
!879 = !DILocation(line: 105, column: 33, scope: !860)
!880 = !DILocation(line: 106, column: 2, scope: !860)
!881 = !DILocation(line: 106, column: 27, scope: !860)
!882 = !DILocation(line: 107, column: 2, scope: !860)
!883 = !DILocation(line: 107, column: 14, scope: !860)
!884 = !DILocation(line: 113, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !860, file: !2, line: 113, column: 6)
!886 = !DILocation(line: 113, column: 6, scope: !860)
!887 = !DILocation(line: 114, column: 3, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !2, line: 113, column: 11)
!889 = !DILocation(line: 117, column: 28, scope: !860)
!890 = !DILocation(line: 117, column: 32, scope: !860)
!891 = !DILocation(line: 117, column: 2, scope: !860)
!892 = !DILocation(line: 121, column: 8, scope: !893)
!893 = distinct !DILexicalBlock(scope: !860, file: !2, line: 121, column: 6)
!894 = !DILocation(line: 121, column: 20, scope: !893)
!895 = !DILocation(line: 121, column: 32, scope: !893)
!896 = !DILocation(line: 121, column: 56, scope: !893)
!897 = !DILocation(line: 123, column: 6, scope: !893)
!898 = !DILocation(line: 123, column: 10, scope: !893)
!899 = !DILocation(line: 123, column: 22, scope: !893)
!900 = !DILocation(line: 123, column: 31, scope: !893)
!901 = !DILocation(line: 123, column: 37, scope: !893)
!902 = !DILocation(line: 121, column: 6, scope: !860)
!903 = !DILocation(line: 124, column: 3, scope: !904)
!904 = distinct !DILexicalBlock(scope: !893, file: !2, line: 123, column: 61)
!905 = !DILocation(line: 129, column: 6, scope: !906)
!906 = distinct !DILexicalBlock(scope: !860, file: !2, line: 129, column: 6)
!907 = !DILocation(line: 129, column: 17, scope: !906)
!908 = !DILocation(line: 129, column: 6, scope: !860)
!909 = !DILocation(line: 130, column: 10, scope: !910)
!910 = distinct !DILexicalBlock(scope: !906, file: !2, line: 129, column: 25)
!911 = !DILocation(line: 130, column: 21, scope: !910)
!912 = !DILocation(line: 130, column: 36, scope: !910)
!913 = !DILocation(line: 130, column: 42, scope: !910)
!914 = !DILocation(line: 130, column: 8, scope: !910)
!915 = !DILocation(line: 131, column: 8, scope: !916)
!916 = distinct !DILexicalBlock(scope: !910, file: !2, line: 131, column: 7)
!917 = !DILocation(line: 131, column: 7, scope: !910)
!918 = !DILocation(line: 135, column: 4, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !2, line: 131, column: 14)
!920 = !DILocation(line: 143, column: 31, scope: !910)
!921 = !DILocation(line: 143, column: 42, scope: !910)
!922 = !DILocation(line: 144, column: 10, scope: !910)
!923 = !DILocation(line: 143, column: 7, scope: !910)
!924 = !DILocation(line: 142, column: 15, scope: !910)
!925 = !DILocation(line: 146, column: 11, scope: !910)
!926 = !DILocation(line: 146, column: 24, scope: !910)
!927 = !DILocation(line: 146, column: 3, scope: !910)
!928 = !DILocation(line: 158, column: 11, scope: !929)
!929 = distinct !DILexicalBlock(scope: !910, file: !2, line: 146, column: 31)
!930 = !DILocation(line: 158, column: 22, scope: !929)
!931 = !DILocation(line: 157, column: 8, scope: !929)
!932 = !DILocation(line: 156, column: 19, scope: !929)
!933 = !DILocation(line: 159, column: 9, scope: !934)
!934 = distinct !DILexicalBlock(scope: !929, file: !2, line: 159, column: 8)
!935 = !DILocation(line: 159, column: 8, scope: !929)
!936 = !DILocation(line: 160, column: 12, scope: !937)
!937 = distinct !DILexicalBlock(scope: !934, file: !2, line: 159, column: 25)
!938 = !DILocation(line: 161, column: 4, scope: !937)
!939 = !DILocation(line: 162, column: 4, scope: !929)
!940 = !DILocation(line: 169, column: 9, scope: !941)
!941 = distinct !DILexicalBlock(scope: !929, file: !2, line: 169, column: 8)
!942 = !DILocation(line: 169, column: 20, scope: !941)
!943 = !DILocation(line: 169, column: 35, scope: !941)
!944 = !DILocation(line: 169, column: 46, scope: !941)
!945 = !DILocation(line: 171, column: 8, scope: !941)
!946 = !DILocation(line: 171, column: 12, scope: !941)
!947 = !DILocation(line: 171, column: 23, scope: !941)
!948 = !DILocation(line: 171, column: 38, scope: !941)
!949 = !DILocation(line: 171, column: 49, scope: !941)
!950 = !DILocation(line: 173, column: 8, scope: !941)
!951 = !DILocation(line: 173, column: 12, scope: !941)
!952 = !DILocation(line: 173, column: 23, scope: !941)
!953 = !DILocation(line: 173, column: 38, scope: !941)
!954 = !DILocation(line: 173, column: 49, scope: !941)
!955 = !DILocation(line: 175, column: 8, scope: !941)
!956 = !DILocation(line: 175, column: 12, scope: !941)
!957 = !DILocation(line: 175, column: 23, scope: !941)
!958 = !DILocation(line: 175, column: 38, scope: !941)
!959 = !DILocation(line: 175, column: 49, scope: !941)
!960 = !DILocation(line: 177, column: 8, scope: !941)
!961 = !DILocation(line: 177, column: 12, scope: !941)
!962 = !DILocation(line: 177, column: 23, scope: !941)
!963 = !DILocation(line: 177, column: 38, scope: !941)
!964 = !DILocation(line: 177, column: 49, scope: !941)
!965 = !DILocation(line: 179, column: 8, scope: !941)
!966 = !DILocation(line: 179, column: 12, scope: !941)
!967 = !DILocation(line: 179, column: 23, scope: !941)
!968 = !DILocation(line: 179, column: 38, scope: !941)
!969 = !DILocation(line: 179, column: 49, scope: !941)
!970 = !DILocation(line: 169, column: 8, scope: !929)
!971 = !DILocation(line: 183, column: 12, scope: !972)
!972 = distinct !DILexicalBlock(scope: !941, file: !2, line: 180, column: 31)
!973 = !DILocation(line: 183, column: 23, scope: !972)
!974 = !DILocation(line: 182, column: 9, scope: !972)
!975 = !DILocation(line: 181, column: 20, scope: !972)
!976 = !DILocation(line: 184, column: 10, scope: !977)
!977 = distinct !DILexicalBlock(scope: !972, file: !2, line: 184, column: 9)
!978 = !DILocation(line: 184, column: 9, scope: !972)
!979 = !DILocation(line: 185, column: 13, scope: !980)
!980 = distinct !DILexicalBlock(scope: !977, file: !2, line: 184, column: 26)
!981 = !DILocation(line: 186, column: 5, scope: !980)
!982 = !DILocation(line: 187, column: 4, scope: !972)
!983 = !DILocation(line: 188, column: 13, scope: !984)
!984 = distinct !DILexicalBlock(scope: !941, file: !2, line: 188, column: 12)
!985 = !DILocation(line: 188, column: 24, scope: !984)
!986 = !DILocation(line: 188, column: 39, scope: !984)
!987 = !DILocation(line: 188, column: 50, scope: !984)
!988 = !DILocation(line: 190, column: 5, scope: !984)
!989 = !DILocation(line: 190, column: 9, scope: !984)
!990 = !DILocation(line: 190, column: 21, scope: !984)
!991 = !DILocation(line: 190, column: 33, scope: !984)
!992 = !DILocation(line: 188, column: 12, scope: !941)
!993 = !DILocation(line: 192, column: 10, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !2, line: 192, column: 9)
!995 = distinct !DILexicalBlock(scope: !984, file: !2, line: 191, column: 33)
!996 = !DILocation(line: 192, column: 21, scope: !994)
!997 = !DILocation(line: 192, column: 32, scope: !994)
!998 = !DILocation(line: 193, column: 9, scope: !994)
!999 = !DILocation(line: 193, column: 13, scope: !994)
!1000 = !DILocation(line: 193, column: 24, scope: !994)
!1001 = !DILocation(line: 193, column: 35, scope: !994)
!1002 = !DILocation(line: 194, column: 9, scope: !994)
!1003 = !DILocation(line: 194, column: 13, scope: !994)
!1004 = !DILocation(line: 194, column: 24, scope: !994)
!1005 = !DILocation(line: 194, column: 35, scope: !994)
!1006 = !DILocation(line: 192, column: 9, scope: !995)
!1007 = !DILocation(line: 197, column: 27, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !994, file: !2, line: 195, column: 32)
!1009 = !DILocation(line: 198, column: 13, scope: !1008)
!1010 = !DILocation(line: 199, column: 13, scope: !1008)
!1011 = !DILocation(line: 199, column: 24, scope: !1008)
!1012 = !DILocation(line: 197, column: 10, scope: !1008)
!1013 = !DILocation(line: 196, column: 21, scope: !1008)
!1014 = !DILocation(line: 200, column: 11, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 200, column: 10)
!1016 = !DILocation(line: 200, column: 10, scope: !1008)
!1017 = !DILocation(line: 201, column: 14, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 200, column: 27)
!1019 = !DILocation(line: 202, column: 6, scope: !1018)
!1020 = !DILocation(line: 204, column: 11, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 202, column: 13)
!1022 = !DILocation(line: 204, column: 21, scope: !1021)
!1023 = !DILocation(line: 203, column: 7, scope: !1021)
!1024 = !DILocation(line: 203, column: 29, scope: !1021)
!1025 = !DILocation(line: 203, column: 34, scope: !1021)
!1026 = !DILocation(line: 206, column: 11, scope: !1021)
!1027 = !DILocation(line: 206, column: 21, scope: !1021)
!1028 = !DILocation(line: 205, column: 7, scope: !1021)
!1029 = !DILocation(line: 205, column: 29, scope: !1021)
!1030 = !DILocation(line: 205, column: 36, scope: !1021)
!1031 = !DILocation(line: 208, column: 5, scope: !1008)
!1032 = !DILocation(line: 209, column: 4, scope: !995)
!1033 = !DILocation(line: 210, column: 4, scope: !929)
!1034 = !DILocation(line: 216, column: 11, scope: !929)
!1035 = !DILocation(line: 216, column: 22, scope: !929)
!1036 = !DILocation(line: 215, column: 8, scope: !929)
!1037 = !DILocation(line: 214, column: 19, scope: !929)
!1038 = !DILocation(line: 217, column: 9, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !929, file: !2, line: 217, column: 8)
!1040 = !DILocation(line: 217, column: 8, scope: !929)
!1041 = !DILocation(line: 218, column: 12, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 217, column: 25)
!1043 = !DILocation(line: 219, column: 4, scope: !1042)
!1044 = !DILocation(line: 220, column: 3, scope: !929)
!1045 = !DILocation(line: 224, column: 7, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !910, file: !2, line: 224, column: 7)
!1047 = !DILocation(line: 224, column: 15, scope: !1046)
!1048 = !DILocation(line: 224, column: 12, scope: !1046)
!1049 = !DILocation(line: 224, column: 7, scope: !910)
!1050 = !DILocation(line: 228, column: 8, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 228, column: 8)
!1052 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 224, column: 19)
!1053 = !DILocation(line: 228, column: 8, scope: !1052)
!1054 = !DILocation(line: 230, column: 9, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 228, column: 24)
!1056 = !DILocation(line: 230, column: 20, scope: !1055)
!1057 = !DILocation(line: 229, column: 5, scope: !1055)
!1058 = !DILocation(line: 229, column: 28, scope: !1055)
!1059 = !DILocation(line: 229, column: 35, scope: !1055)
!1060 = !DILocation(line: 231, column: 5, scope: !1055)
!1061 = !DILocation(line: 231, column: 28, scope: !1055)
!1062 = !DILocation(line: 231, column: 38, scope: !1055)
!1063 = !DILocation(line: 232, column: 35, scope: !1055)
!1064 = !DILocation(line: 232, column: 46, scope: !1055)
!1065 = !DILocation(line: 232, column: 5, scope: !1055)
!1066 = !DILocation(line: 232, column: 28, scope: !1055)
!1067 = !DILocation(line: 232, column: 33, scope: !1055)
!1068 = !DILocation(line: 234, column: 9, scope: !1055)
!1069 = !DILocation(line: 233, column: 5, scope: !1055)
!1070 = !DILocation(line: 233, column: 16, scope: !1055)
!1071 = !DILocation(line: 233, column: 31, scope: !1055)
!1072 = !DILocation(line: 233, column: 41, scope: !1055)
!1073 = !DILocation(line: 235, column: 35, scope: !1055)
!1074 = !DILocation(line: 235, column: 46, scope: !1055)
!1075 = !DILocation(line: 235, column: 5, scope: !1055)
!1076 = !DILocation(line: 235, column: 28, scope: !1055)
!1077 = !DILocation(line: 235, column: 33, scope: !1055)
!1078 = !DILocation(line: 236, column: 4, scope: !1055)
!1079 = !DILocation(line: 238, column: 9, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 236, column: 11)
!1081 = !DILocation(line: 238, column: 20, scope: !1080)
!1082 = !DILocation(line: 237, column: 5, scope: !1080)
!1083 = !DILocation(line: 237, column: 16, scope: !1080)
!1084 = !DILocation(line: 237, column: 31, scope: !1080)
!1085 = !DILocation(line: 237, column: 41, scope: !1080)
!1086 = !DILocation(line: 240, column: 3, scope: !1052)
!1087 = !DILocation(line: 245, column: 4, scope: !1046)
!1088 = !DILocation(line: 245, column: 11, scope: !1046)
!1089 = !DILocation(line: 249, column: 12, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 245, column: 17)
!1091 = !DILocation(line: 249, column: 25, scope: !1090)
!1092 = !DILocation(line: 249, column: 10, scope: !1090)
!1093 = !DILocation(line: 250, column: 9, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 250, column: 9)
!1095 = !DILocation(line: 250, column: 17, scope: !1094)
!1096 = !DILocation(line: 250, column: 14, scope: !1094)
!1097 = !DILocation(line: 250, column: 9, scope: !1090)
!1098 = !DILocation(line: 251, column: 10, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 251, column: 10)
!1100 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 250, column: 21)
!1101 = !DILocation(line: 251, column: 10, scope: !1100)
!1102 = !DILocation(line: 253, column: 11, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 251, column: 26)
!1104 = !DILocation(line: 253, column: 22, scope: !1103)
!1105 = !DILocation(line: 252, column: 7, scope: !1103)
!1106 = !DILocation(line: 252, column: 30, scope: !1103)
!1107 = !DILocation(line: 252, column: 37, scope: !1103)
!1108 = !DILocation(line: 254, column: 7, scope: !1103)
!1109 = !DILocation(line: 254, column: 30, scope: !1103)
!1110 = !DILocation(line: 255, column: 15, scope: !1103)
!1111 = !DILocation(line: 257, column: 11, scope: !1103)
!1112 = !DILocation(line: 257, column: 22, scope: !1103)
!1113 = !DILocation(line: 256, column: 7, scope: !1103)
!1114 = !DILocation(line: 256, column: 30, scope: !1103)
!1115 = !DILocation(line: 256, column: 35, scope: !1103)
!1116 = !DILocation(line: 259, column: 11, scope: !1103)
!1117 = !DILocation(line: 258, column: 7, scope: !1103)
!1118 = !DILocation(line: 258, column: 20, scope: !1103)
!1119 = !DILocation(line: 258, column: 25, scope: !1103)
!1120 = !DILocation(line: 261, column: 11, scope: !1103)
!1121 = !DILocation(line: 261, column: 22, scope: !1103)
!1122 = !DILocation(line: 260, column: 7, scope: !1103)
!1123 = !DILocation(line: 260, column: 30, scope: !1103)
!1124 = !DILocation(line: 260, column: 35, scope: !1103)
!1125 = !DILocation(line: 262, column: 12, scope: !1103)
!1126 = !DILocation(line: 263, column: 6, scope: !1103)
!1127 = !DILocation(line: 265, column: 11, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 263, column: 13)
!1129 = !DILocation(line: 265, column: 22, scope: !1128)
!1130 = !DILocation(line: 264, column: 7, scope: !1128)
!1131 = !DILocation(line: 264, column: 20, scope: !1128)
!1132 = !DILocation(line: 264, column: 25, scope: !1128)
!1133 = !DILocation(line: 266, column: 12, scope: !1128)
!1134 = !DILocation(line: 268, column: 5, scope: !1100)
!1135 = !DILocation(line: 269, column: 12, scope: !1090)
!1136 = !DILocation(line: 269, column: 10, scope: !1090)
!1137 = distinct !{!1137, !1087, !1138, !1139, !1140}
!1138 = !DILocation(line: 270, column: 4, scope: !1046)
!1139 = !{!"llvm.loop.mustprogress"}
!1140 = !{!"llvm.loop.unroll.disable"}
!1141 = !DILocation(line: 271, column: 2, scope: !910)
!1142 = !DILocation(line: 273, column: 1, scope: !860)
!1143 = !DILocation(line: 277, column: 28, scope: !860)
!1144 = !DILocation(line: 277, column: 2, scope: !860)
!1145 = !DILocation(line: 278, column: 2, scope: !860)
!1146 = !DILocation(line: 279, column: 1, scope: !860)
!1147 = !DISubprogram(name: "acpi_ex_stop_trace_opcode", scope: !1148, file: !1148, line: 116, type: !1149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1148 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null, !65, !176}
!1151 = !DISubprogram(name: "acpi_ps_get_opcode_info", scope: !1152, file: !1152, line: 108, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1152 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!244, !24}
!1155 = !DISubprogram(name: "acpi_ps_alloc_op", scope: !1152, file: !1152, line: 204, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!65, !24, !29}
!1158 = !DISubprogram(name: "acpi_ps_delete_parse_tree", scope: !1152, file: !1152, line: 195, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !65}
!1161 = distinct !DISubprogram(name: "acpi_ps_next_parse_state", scope: !2, file: !2, line: 297, type: !1162, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!36, !176, !65, !36}
!1164 = !{!1165, !1166, !1167, !1168, !1169}
!1165 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1161, file: !2, line: 297, type: !176)
!1166 = !DILocalVariable(name: "op", arg: 2, scope: !1161, file: !2, line: 298, type: !65)
!1167 = !DILocalVariable(name: "callback_status", arg: 3, scope: !1161, file: !2, line: 299, type: !36)
!1168 = !DILocalVariable(name: "parser_state", scope: !1161, file: !2, line: 301, type: !828)
!1169 = !DILocalVariable(name: "status", scope: !1161, file: !2, line: 302, type: !36)
!1170 = !DILocation(line: 297, column: 50, scope: !1161)
!1171 = !DILocation(line: 298, column: 30, scope: !1161)
!1172 = !DILocation(line: 299, column: 17, scope: !1161)
!1173 = !DILocation(line: 301, column: 2, scope: !1161)
!1174 = !DILocation(line: 301, column: 27, scope: !1161)
!1175 = !DILocation(line: 301, column: 43, scope: !1161)
!1176 = !DILocation(line: 301, column: 55, scope: !1161)
!1177 = !DILocation(line: 302, column: 2, scope: !1161)
!1178 = !DILocation(line: 302, column: 14, scope: !1161)
!1179 = !DILocation(line: 306, column: 10, scope: !1161)
!1180 = !DILocation(line: 306, column: 2, scope: !1161)
!1181 = !DILocation(line: 312, column: 23, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1161, file: !2, line: 306, column: 27)
!1183 = !DILocation(line: 312, column: 37, scope: !1182)
!1184 = !DILocation(line: 312, column: 3, scope: !1182)
!1185 = !DILocation(line: 312, column: 17, scope: !1182)
!1186 = !DILocation(line: 312, column: 21, scope: !1182)
!1187 = !DILocation(line: 313, column: 10, scope: !1182)
!1188 = !DILocation(line: 314, column: 3, scope: !1182)
!1189 = !DILocation(line: 318, column: 23, scope: !1182)
!1190 = !DILocation(line: 318, column: 35, scope: !1182)
!1191 = !DILocation(line: 318, column: 3, scope: !1182)
!1192 = !DILocation(line: 318, column: 17, scope: !1182)
!1193 = !DILocation(line: 318, column: 21, scope: !1182)
!1194 = !DILocation(line: 319, column: 3, scope: !1182)
!1195 = !DILocation(line: 319, column: 15, scope: !1182)
!1196 = !DILocation(line: 319, column: 37, scope: !1182)
!1197 = !DILocation(line: 319, column: 43, scope: !1182)
!1198 = !DILocation(line: 320, column: 10, scope: !1182)
!1199 = !DILocation(line: 321, column: 3, scope: !1182)
!1200 = !DILocation(line: 325, column: 23, scope: !1182)
!1201 = !DILocation(line: 325, column: 35, scope: !1182)
!1202 = !DILocation(line: 325, column: 3, scope: !1182)
!1203 = !DILocation(line: 325, column: 17, scope: !1182)
!1204 = !DILocation(line: 325, column: 21, scope: !1182)
!1205 = !DILocation(line: 326, column: 10, scope: !1182)
!1206 = !DILocation(line: 327, column: 3, scope: !1182)
!1207 = !DILocation(line: 331, column: 23, scope: !1182)
!1208 = !DILocation(line: 331, column: 35, scope: !1182)
!1209 = !DILocation(line: 331, column: 3, scope: !1182)
!1210 = !DILocation(line: 331, column: 17, scope: !1182)
!1211 = !DILocation(line: 331, column: 21, scope: !1182)
!1212 = !DILocation(line: 332, column: 3, scope: !1182)
!1213 = !DILocation(line: 347, column: 52, scope: !1182)
!1214 = !DILocation(line: 347, column: 23, scope: !1182)
!1215 = !DILocation(line: 347, column: 3, scope: !1182)
!1216 = !DILocation(line: 347, column: 17, scope: !1182)
!1217 = !DILocation(line: 347, column: 21, scope: !1182)
!1218 = !DILocation(line: 348, column: 10, scope: !1182)
!1219 = !DILocation(line: 349, column: 3, scope: !1182)
!1220 = !DILocation(line: 359, column: 23, scope: !1182)
!1221 = !DILocation(line: 359, column: 37, scope: !1182)
!1222 = !DILocation(line: 359, column: 56, scope: !1182)
!1223 = !DILocation(line: 359, column: 3, scope: !1182)
!1224 = !DILocation(line: 359, column: 17, scope: !1182)
!1225 = !DILocation(line: 359, column: 21, scope: !1182)
!1226 = !DILocation(line: 363, column: 3, scope: !1182)
!1227 = !DILocation(line: 363, column: 15, scope: !1182)
!1228 = !DILocation(line: 363, column: 37, scope: !1182)
!1229 = !DILocation(line: 363, column: 43, scope: !1182)
!1230 = !DILocation(line: 364, column: 10, scope: !1182)
!1231 = !DILocation(line: 365, column: 3, scope: !1182)
!1232 = !DILocation(line: 371, column: 10, scope: !1182)
!1233 = !DILocation(line: 372, column: 25, scope: !1182)
!1234 = !DILocation(line: 372, column: 3, scope: !1182)
!1235 = !DILocation(line: 372, column: 15, scope: !1182)
!1236 = !DILocation(line: 372, column: 23, scope: !1182)
!1237 = !DILocation(line: 373, column: 32, scope: !1182)
!1238 = !DILocation(line: 373, column: 3, scope: !1182)
!1239 = !DILocation(line: 373, column: 15, scope: !1182)
!1240 = !DILocation(line: 373, column: 30, scope: !1182)
!1241 = !DILocation(line: 375, column: 8, scope: !1182)
!1242 = !DILocation(line: 375, column: 19, scope: !1182)
!1243 = !DILocation(line: 375, column: 25, scope: !1182)
!1244 = !DILocation(line: 375, column: 38, scope: !1182)
!1245 = !DILocation(line: 374, column: 3, scope: !1182)
!1246 = !DILocation(line: 374, column: 15, scope: !1182)
!1247 = !DILocation(line: 374, column: 32, scope: !1182)
!1248 = !DILocation(line: 380, column: 30, scope: !1182)
!1249 = !DILocation(line: 380, column: 34, scope: !1182)
!1250 = !DILocation(line: 380, column: 7, scope: !1182)
!1251 = !DILocation(line: 379, column: 3, scope: !1182)
!1252 = !DILocation(line: 379, column: 15, scope: !1182)
!1253 = !DILocation(line: 379, column: 27, scope: !1182)
!1254 = !DILocation(line: 381, column: 3, scope: !1182)
!1255 = !DILocation(line: 385, column: 12, scope: !1182)
!1256 = !DILocation(line: 385, column: 10, scope: !1182)
!1257 = !DILocation(line: 386, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 386, column: 7)
!1259 = !DILocation(line: 386, column: 7, scope: !1182)
!1260 = !DILocation(line: 387, column: 11, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 386, column: 45)
!1262 = !DILocation(line: 388, column: 3, scope: !1261)
!1263 = !DILocation(line: 389, column: 3, scope: !1182)
!1264 = !DILocation(line: 392, column: 2, scope: !1161)
!1265 = !DILocation(line: 393, column: 1, scope: !1161)
!1266 = !DISubprogram(name: "acpi_ps_get_next_package_end", scope: !1152, file: !1152, line: 52, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!29, !828}
!1269 = !DISubprogram(name: "acpi_ds_is_result_used", scope: !1270, file: !1270, line: 251, type: !1271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1270 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!30, !65, !176}
!1273 = distinct !DISubprogram(name: "acpi_ps_parse_aml", scope: !2, file: !2, line: 408, type: !174, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1274)
!1274 = !{!1275, !1276, !1277, !1278, !1279}
!1275 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1273, file: !2, line: 408, type: !176)
!1276 = !DILocalVariable(name: "status", scope: !1273, file: !2, line: 410, type: !36)
!1277 = !DILocalVariable(name: "thread", scope: !1273, file: !2, line: 411, type: !262)
!1278 = !DILocalVariable(name: "prev_walk_list", scope: !1273, file: !2, line: 412, type: !262)
!1279 = !DILocalVariable(name: "previous_walk_state", scope: !1273, file: !2, line: 413, type: !176)
!1280 = !DILocation(line: 408, column: 55, scope: !1273)
!1281 = !DILocation(line: 410, column: 2, scope: !1273)
!1282 = !DILocation(line: 410, column: 14, scope: !1273)
!1283 = !DILocation(line: 411, column: 2, scope: !1273)
!1284 = !DILocation(line: 411, column: 28, scope: !1273)
!1285 = !DILocation(line: 412, column: 2, scope: !1273)
!1286 = !DILocation(line: 412, column: 28, scope: !1273)
!1287 = !DILocation(line: 412, column: 45, scope: !1273)
!1288 = !DILocation(line: 413, column: 2, scope: !1273)
!1289 = !DILocation(line: 413, column: 26, scope: !1273)
!1290 = !DILocation(line: 422, column: 7, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 422, column: 6)
!1292 = !DILocation(line: 422, column: 19, scope: !1291)
!1293 = !DILocation(line: 422, column: 32, scope: !1291)
!1294 = !DILocation(line: 422, column: 6, scope: !1273)
!1295 = !DILocation(line: 423, column: 3, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 422, column: 37)
!1297 = !DILocation(line: 428, column: 11, scope: !1273)
!1298 = !DILocation(line: 428, column: 9, scope: !1273)
!1299 = !DILocation(line: 429, column: 7, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 429, column: 6)
!1301 = !DILocation(line: 429, column: 6, scope: !1273)
!1302 = !DILocation(line: 430, column: 7, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 430, column: 7)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 429, column: 15)
!1305 = !DILocation(line: 430, column: 19, scope: !1303)
!1306 = !DILocation(line: 430, column: 7, scope: !1304)
!1307 = !DILocation(line: 434, column: 37, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 430, column: 32)
!1309 = !DILocation(line: 435, column: 9, scope: !1308)
!1310 = !DILocation(line: 436, column: 9, scope: !1308)
!1311 = !DILocation(line: 434, column: 4, scope: !1308)
!1312 = !DILocation(line: 437, column: 3, scope: !1308)
!1313 = !DILocation(line: 439, column: 29, scope: !1304)
!1314 = !DILocation(line: 439, column: 3, scope: !1304)
!1315 = !DILocation(line: 440, column: 3, scope: !1304)
!1316 = !DILocation(line: 443, column: 23, scope: !1273)
!1317 = !DILocation(line: 443, column: 2, scope: !1273)
!1318 = !DILocation(line: 443, column: 14, scope: !1273)
!1319 = !DILocation(line: 443, column: 21, scope: !1273)
!1320 = !DILocation(line: 449, column: 6, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 449, column: 6)
!1322 = !DILocation(line: 449, column: 18, scope: !1321)
!1323 = !DILocation(line: 449, column: 6, scope: !1273)
!1324 = !DILocation(line: 451, column: 7, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 449, column: 31)
!1326 = !DILocation(line: 451, column: 19, scope: !1325)
!1327 = !DILocation(line: 451, column: 39, scope: !1325)
!1328 = !DILocation(line: 450, column: 3, scope: !1325)
!1329 = !DILocation(line: 450, column: 15, scope: !1325)
!1330 = !DILocation(line: 450, column: 23, scope: !1325)
!1331 = !DILocation(line: 450, column: 42, scope: !1325)
!1332 = !DILocation(line: 452, column: 2, scope: !1325)
!1333 = !DILocation(line: 454, column: 26, scope: !1273)
!1334 = !DILocation(line: 454, column: 38, scope: !1273)
!1335 = !DILocation(line: 454, column: 2, scope: !1273)
!1336 = !DILocation(line: 460, column: 31, scope: !1273)
!1337 = !DILocation(line: 460, column: 29, scope: !1273)
!1338 = !DILocation(line: 468, column: 9, scope: !1273)
!1339 = !DILocation(line: 469, column: 2, scope: !1273)
!1340 = !DILocation(line: 469, column: 9, scope: !1273)
!1341 = !DILocation(line: 470, column: 7, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 470, column: 7)
!1343 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 469, column: 21)
!1344 = !DILocation(line: 470, column: 7, scope: !1343)
!1345 = !DILocation(line: 475, column: 32, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 470, column: 29)
!1347 = !DILocation(line: 475, column: 13, scope: !1346)
!1348 = !DILocation(line: 475, column: 11, scope: !1346)
!1349 = !DILocation(line: 476, column: 3, scope: !1346)
!1350 = !DILocation(line: 482, column: 7, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 482, column: 7)
!1352 = !DILocation(line: 482, column: 19, scope: !1351)
!1353 = !DILocation(line: 482, column: 35, scope: !1351)
!1354 = !DILocation(line: 482, column: 38, scope: !1351)
!1355 = !DILocation(line: 482, column: 50, scope: !1351)
!1356 = !DILocation(line: 482, column: 7, scope: !1343)
!1357 = !DILocation(line: 494, column: 4, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1351, file: !2, line: 482, column: 68)
!1359 = !DILocation(line: 495, column: 4, scope: !1358)
!1360 = !DILocation(line: 495, column: 16, scope: !1358)
!1361 = !DILocation(line: 495, column: 33, scope: !1358)
!1362 = !DILocation(line: 496, column: 3, scope: !1358)
!1363 = !DILocation(line: 497, column: 7, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 497, column: 7)
!1365 = !DILocation(line: 497, column: 14, scope: !1364)
!1366 = !DILocation(line: 497, column: 7, scope: !1343)
!1367 = !DILocation(line: 503, column: 36, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 497, column: 35)
!1369 = !DILocation(line: 503, column: 44, scope: !1368)
!1370 = !DILocation(line: 503, column: 8, scope: !1368)
!1371 = !DILocation(line: 502, column: 11, scope: !1368)
!1372 = !DILocation(line: 505, column: 8, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !2, line: 505, column: 8)
!1374 = !DILocation(line: 505, column: 8, scope: !1368)
!1375 = !DILocation(line: 507, column: 30, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 505, column: 30)
!1377 = !DILocation(line: 507, column: 38, scope: !1376)
!1378 = !DILocation(line: 507, column: 9, scope: !1376)
!1379 = !DILocation(line: 506, column: 12, scope: !1376)
!1380 = !DILocation(line: 508, column: 4, scope: !1376)
!1381 = !DILocation(line: 514, column: 48, scope: !1368)
!1382 = !DILocation(line: 514, column: 17, scope: !1368)
!1383 = !DILocation(line: 514, column: 15, scope: !1368)
!1384 = !DILocation(line: 515, column: 4, scope: !1368)
!1385 = distinct !{!1385, !1339, !1386, !1139, !1140}
!1386 = !DILocation(line: 678, column: 2, scope: !1273)
!1387 = !DILocation(line: 516, column: 14, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 516, column: 14)
!1389 = !DILocation(line: 516, column: 21, scope: !1388)
!1390 = !DILocation(line: 516, column: 14, scope: !1364)
!1391 = !DILocation(line: 517, column: 11, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !2, line: 516, column: 43)
!1393 = !DILocation(line: 518, column: 3, scope: !1392)
!1394 = !DILocation(line: 518, column: 15, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1388, file: !2, line: 518, column: 14)
!1396 = !DILocation(line: 518, column: 22, scope: !1395)
!1397 = !DILocation(line: 518, column: 32, scope: !1395)
!1398 = !DILocation(line: 518, column: 36, scope: !1395)
!1399 = !DILocation(line: 518, column: 48, scope: !1395)
!1400 = !DILocation(line: 518, column: 35, scope: !1395)
!1401 = !DILocation(line: 518, column: 14, scope: !1388)
!1402 = !DILocation(line: 522, column: 4, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 518, column: 62)
!1404 = !DILocation(line: 523, column: 8, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1403, file: !2, line: 523, column: 8)
!1406 = !DILocation(line: 523, column: 15, scope: !1405)
!1407 = !DILocation(line: 523, column: 8, scope: !1403)
!1408 = !DILocation(line: 524, column: 33, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 523, column: 35)
!1410 = !DILocation(line: 525, column: 12, scope: !1409)
!1411 = !DILocation(line: 524, column: 5, scope: !1409)
!1412 = !DILocation(line: 527, column: 5, scope: !1409)
!1413 = !DILocation(line: 528, column: 4, scope: !1409)
!1414 = !DILocation(line: 529, column: 5, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 528, column: 11)
!1416 = !DILocation(line: 533, column: 4, scope: !1403)
!1417 = !DILocation(line: 537, column: 9, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1403, file: !2, line: 537, column: 8)
!1419 = !DILocation(line: 537, column: 16, scope: !1418)
!1420 = !DILocation(line: 537, column: 38, scope: !1418)
!1421 = !DILocation(line: 538, column: 11, scope: !1418)
!1422 = !DILocation(line: 538, column: 23, scope: !1418)
!1423 = !DILocation(line: 538, column: 43, scope: !1418)
!1424 = !DILocation(line: 538, column: 54, scope: !1418)
!1425 = !DILocation(line: 537, column: 8, scope: !1403)
!1426 = !DILocation(line: 546, column: 5, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 539, column: 37)
!1428 = !DILocation(line: 546, column: 17, scope: !1427)
!1429 = !DILocation(line: 546, column: 37, scope: !1427)
!1430 = !DILocation(line: 546, column: 48, scope: !1427)
!1431 = !DILocation(line: 548, column: 4, scope: !1427)
!1432 = !DILocation(line: 549, column: 3, scope: !1403)
!1433 = !DILocation(line: 553, column: 39, scope: !1343)
!1434 = !DILocation(line: 553, column: 16, scope: !1343)
!1435 = !DILocation(line: 553, column: 14, scope: !1343)
!1436 = !DILocation(line: 557, column: 29, scope: !1343)
!1437 = !DILocation(line: 557, column: 3, scope: !1343)
!1438 = !DILocation(line: 564, column: 9, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 564, column: 7)
!1440 = !DILocation(line: 564, column: 21, scope: !1439)
!1441 = !DILocation(line: 564, column: 33, scope: !1439)
!1442 = !DILocation(line: 564, column: 57, scope: !1439)
!1443 = !DILocation(line: 565, column: 27, scope: !1439)
!1444 = !DILocation(line: 566, column: 10, scope: !1439)
!1445 = !DILocation(line: 566, column: 22, scope: !1439)
!1446 = !DILocation(line: 566, column: 34, scope: !1439)
!1447 = !DILocation(line: 566, column: 62, scope: !1439)
!1448 = !DILocation(line: 567, column: 8, scope: !1439)
!1449 = !DILocation(line: 567, column: 7, scope: !1439)
!1450 = !DILocation(line: 564, column: 7, scope: !1343)
!1451 = !DILocation(line: 568, column: 37, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1439, file: !2, line: 567, column: 31)
!1453 = !DILocation(line: 569, column: 9, scope: !1452)
!1454 = !DILocation(line: 570, column: 9, scope: !1452)
!1455 = !DILocation(line: 568, column: 4, scope: !1452)
!1456 = !DILocation(line: 571, column: 3, scope: !1452)
!1457 = !DILocation(line: 575, column: 26, scope: !1343)
!1458 = !DILocation(line: 575, column: 38, scope: !1343)
!1459 = !DILocation(line: 575, column: 3, scope: !1343)
!1460 = !DILocation(line: 576, column: 25, scope: !1343)
!1461 = !DILocation(line: 576, column: 23, scope: !1343)
!1462 = !DILocation(line: 585, column: 47, scope: !1343)
!1463 = !DILocation(line: 585, column: 16, scope: !1343)
!1464 = !DILocation(line: 585, column: 14, scope: !1343)
!1465 = !DILocation(line: 586, column: 7, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 586, column: 7)
!1467 = !DILocation(line: 586, column: 7, scope: !1343)
!1468 = !DILocation(line: 587, column: 8, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 587, column: 8)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 586, column: 19)
!1471 = !DILocation(line: 587, column: 8, scope: !1470)
!1472 = !DILocation(line: 593, column: 10, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !2, line: 593, column: 9)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !2, line: 587, column: 30)
!1475 = !DILocation(line: 593, column: 31, scope: !1473)
!1476 = !DILocation(line: 593, column: 9, scope: !1474)
!1477 = !DILocation(line: 598, column: 10, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 598, column: 10)
!1479 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 593, column: 44)
!1480 = !DILocation(line: 598, column: 44, scope: !1478)
!1481 = !DILocation(line: 599, column: 11, scope: !1478)
!1482 = !DILocation(line: 600, column: 10, scope: !1478)
!1483 = !DILocation(line: 598, column: 10, scope: !1479)
!1484 = !DILocation(line: 603, column: 11, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 600, column: 31)
!1486 = !DILocation(line: 601, column: 7, scope: !1485)
!1487 = !DILocation(line: 602, column: 11, scope: !1485)
!1488 = !DILocation(line: 602, column: 31, scope: !1485)
!1489 = !DILocation(line: 605, column: 12, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 605, column: 11)
!1491 = !DILocation(line: 606, column: 11, scope: !1490)
!1492 = !DILocation(line: 605, column: 11, scope: !1485)
!1493 = !DILocation(line: 607, column: 8, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 606, column: 32)
!1495 = !DILocation(line: 610, column: 6, scope: !1485)
!1496 = !DILocation(line: 616, column: 11, scope: !1479)
!1497 = !DILocation(line: 617, column: 11, scope: !1479)
!1498 = !DILocation(line: 618, column: 11, scope: !1479)
!1499 = !DILocation(line: 615, column: 10, scope: !1479)
!1500 = !DILocation(line: 614, column: 13, scope: !1479)
!1501 = !DILocation(line: 619, column: 5, scope: !1479)
!1502 = !DILocation(line: 625, column: 11, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 619, column: 12)
!1504 = !DILocation(line: 624, column: 6, scope: !1503)
!1505 = !DILocation(line: 629, column: 11, scope: !1503)
!1506 = !DILocation(line: 630, column: 11, scope: !1503)
!1507 = !DILocation(line: 630, column: 32, scope: !1503)
!1508 = !DILocation(line: 628, column: 10, scope: !1503)
!1509 = !DILocation(line: 627, column: 13, scope: !1503)
!1510 = !DILocation(line: 632, column: 9, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1474, file: !2, line: 632, column: 9)
!1512 = !DILocation(line: 632, column: 9, scope: !1474)
!1513 = !DILocation(line: 633, column: 6, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 632, column: 31)
!1515 = !DILocation(line: 633, column: 18, scope: !1514)
!1516 = !DILocation(line: 633, column: 28, scope: !1514)
!1517 = !DILocation(line: 635, column: 5, scope: !1514)
!1518 = !DILocation(line: 636, column: 4, scope: !1474)
!1519 = !DILocation(line: 639, column: 30, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1469, file: !2, line: 636, column: 11)
!1521 = !DILocation(line: 640, column: 9, scope: !1520)
!1522 = !DILocation(line: 639, column: 5, scope: !1520)
!1523 = !DILocation(line: 642, column: 10, scope: !1520)
!1524 = !DILocation(line: 641, column: 5, scope: !1520)
!1525 = !DILocation(line: 644, column: 3, scope: !1470)
!1526 = !DILocation(line: 650, column: 12, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 650, column: 12)
!1528 = !DILocation(line: 650, column: 33, scope: !1527)
!1529 = !DILocation(line: 650, column: 12, scope: !1466)
!1530 = !DILocation(line: 651, column: 8, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !2, line: 651, column: 8)
!1532 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 650, column: 53)
!1533 = !DILocation(line: 651, column: 29, scope: !1531)
!1534 = !DILocation(line: 651, column: 8, scope: !1532)
!1535 = !DILocation(line: 653, column: 9, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 651, column: 50)
!1537 = !DILocation(line: 653, column: 30, scope: !1536)
!1538 = !DILocation(line: 652, column: 7, scope: !1536)
!1539 = !DILocation(line: 652, column: 28, scope: !1536)
!1540 = !DILocation(line: 652, column: 48, scope: !1536)
!1541 = !DILocation(line: 654, column: 4, scope: !1536)
!1542 = !DILocation(line: 658, column: 9, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 654, column: 11)
!1544 = !DILocation(line: 658, column: 30, scope: !1543)
!1545 = !DILocation(line: 657, column: 7, scope: !1543)
!1546 = !DILocation(line: 657, column: 28, scope: !1543)
!1547 = !DILocation(line: 657, column: 48, scope: !1543)
!1548 = !DILocation(line: 660, column: 3, scope: !1532)
!1549 = !DILocation(line: 661, column: 8, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 661, column: 8)
!1551 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 660, column: 10)
!1552 = !DILocation(line: 661, column: 29, scope: !1550)
!1553 = !DILocation(line: 661, column: 8, scope: !1551)
!1554 = !DILocation(line: 665, column: 30, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1550, file: !2, line: 661, column: 42)
!1556 = !DILocation(line: 666, column: 9, scope: !1555)
!1557 = !DILocation(line: 665, column: 5, scope: !1555)
!1558 = !DILocation(line: 667, column: 4, scope: !1555)
!1559 = !DILocation(line: 668, column: 8, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 668, column: 8)
!1561 = !DILocation(line: 668, column: 29, scope: !1560)
!1562 = !DILocation(line: 668, column: 8, scope: !1551)
!1563 = !DILocation(line: 672, column: 30, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 668, column: 50)
!1565 = !DILocation(line: 673, column: 9, scope: !1564)
!1566 = !DILocation(line: 672, column: 5, scope: !1564)
!1567 = !DILocation(line: 674, column: 4, scope: !1564)
!1568 = !DILocation(line: 677, column: 29, scope: !1343)
!1569 = !DILocation(line: 677, column: 3, scope: !1343)
!1570 = !DILocation(line: 682, column: 30, scope: !1273)
!1571 = !DILocation(line: 682, column: 2, scope: !1273)
!1572 = !DILocation(line: 683, column: 31, scope: !1273)
!1573 = !DILocation(line: 683, column: 2, scope: !1273)
!1574 = !DILocation(line: 685, column: 31, scope: !1273)
!1575 = !DILocation(line: 685, column: 29, scope: !1273)
!1576 = !DILocation(line: 686, column: 2, scope: !1273)
!1577 = !DILocation(line: 687, column: 1, scope: !1273)
!1578 = !DISubprogram(name: "acpi_ut_create_thread_state", scope: !1579, file: !1579, line: 515, type: !1580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1579 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!262}
!1582 = !DISubprogram(name: "acpi_ds_terminate_control_method", scope: !1270, file: !1270, line: 184, type: !1583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{null, !82, !176}
!1585 = !DISubprogram(name: "acpi_ds_delete_walk_state", scope: !1270, file: !1270, line: 314, type: !1586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !176}
!1588 = !DISubprogram(name: "acpi_ds_push_walk_state", scope: !1270, file: !1270, line: 320, type: !1589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{null, !176, !262}
!1591 = !DISubprogram(name: "acpi_ps_parse_loop", scope: !1152, file: !1152, line: 135, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1592 = distinct !DISubprogram(name: "acpi_os_free", scope: !1593, file: !1593, line: 60, type: !1594, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1596)
!1593 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1594 = !DISubroutineType(types: !1595)
!1595 = !{null, !50}
!1596 = !{!1597}
!1597 = !DILocalVariable(name: "memory", arg: 1, scope: !1592, file: !1593, line: 60, type: !50)
!1598 = !DILocation(line: 60, column: 39, scope: !1592)
!1599 = !DILocation(line: 62, column: 8, scope: !1592)
!1600 = !DILocation(line: 62, column: 2, scope: !1592)
!1601 = !DILocation(line: 63, column: 1, scope: !1592)
!1602 = !DISubprogram(name: "acpi_ds_call_control_method", scope: !1270, file: !1270, line: 175, type: !1603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!36, !262, !176, !65}
!1605 = !DISubprogram(name: "acpi_ds_method_error", scope: !1270, file: !1270, line: 193, type: !1606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!36, !36, !176}
!1608 = !DISubprogram(name: "acpi_ds_get_current_walk_state", scope: !1270, file: !1270, line: 325, type: !1609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!176, !262}
!1611 = !DISubprogram(name: "acpi_ex_exit_interpreter", scope: !1148, file: !1148, line: 466, type: !1612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null}
!1614 = !DISubprogram(name: "acpi_ns_print_node_pathname", scope: !1615, file: !1615, line: 384, type: !1616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1615 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1616 = !DISubroutineType(types: !1617)
!1617 = !{null, !78, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!1619 = !DISubprogram(name: "acpi_os_printf", scope: !1620, file: !1620, line: 334, type: !1621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1620 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null, !1618, null}
!1623 = !DISubprogram(name: "acpi_ut_method_error", scope: !1579, file: !1579, line: 735, type: !1624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !1618, !38, !1618, !78, !1618, !36}
!1626 = !DISubprogram(name: "acpi_ex_enter_interpreter", scope: !1148, file: !1148, line: 464, type: !1612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1627 = !DISubprogram(name: "acpi_ds_pop_walk_state", scope: !1270, file: !1270, line: 316, type: !1609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1628 = !DISubprogram(name: "acpi_ds_scope_stack_clear", scope: !1270, file: !1270, line: 283, type: !1586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1629 = !DISubprogram(name: "acpi_ps_cleanup_scope", scope: !1152, file: !1152, line: 158, type: !1630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{null, !828}
!1632 = !DISubprogram(name: "acpi_ut_create_integer_object", scope: !1579, file: !1579, line: 455, type: !1633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!82, !40}
!1635 = !DISubprogram(name: "acpi_ds_restart_control_method", scope: !1270, file: !1270, line: 180, type: !1636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!36, !176, !82}
!1638 = !DISubprogram(name: "acpi_ds_clear_implicit_return", scope: !1270, file: !1270, line: 243, type: !1586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1639 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1579, file: !1579, line: 369, type: !1640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !82}
!1642 = !DISubprogram(name: "acpi_ex_release_all_mutexes", scope: !1148, file: !1148, line: 258, type: !1643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{null, !262}
!1645 = !DISubprogram(name: "acpi_ut_delete_generic_state", scope: !1579, file: !1579, line: 531, type: !1646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !43}
!1648 = !DISubprogram(name: "kfree", scope: !1649, file: !1649, line: 227, type: !1650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1649 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !1652}
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
