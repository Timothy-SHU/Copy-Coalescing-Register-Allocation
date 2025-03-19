; ModuleID = 'drivers/acpi/acpica/dscontrol.c'
source_filename = "drivers/acpi/acpica/dscontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_control_state = type { ptr, i8, i8, i16, i16, i16, ptr, ptr, ptr, i64 }
%struct.acpi_common_state = type { ptr, i8, i8, i16, i16 }
%struct.acpi_result_values = type { ptr, i8, i8, i16, i16, [8 x ptr] }
%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }

@acpi_gbl_max_loop_iterations = external dso_local global i32, align 4
@.str = private unnamed_addr constant [31 x i8] c"Executed AML Breakpoint opcode\00", align 1, !dbg !0
@_acpi_module_name = internal constant [10 x i8] c"dscontrol\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [34 x i8] c"Unknown control opcode=0x%X Op=%p\00", align 1, !dbg !813

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_exec_begin_control_op(ptr noundef %walk_state, ptr noundef %op) #0 align 16 !dbg !831 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %control_state = alloca ptr, align 8
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !835, metadata !DIExpression()), !dbg !839
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !836, metadata !DIExpression()), !dbg !840
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !841
  call void @llvm.dbg.declare(metadata ptr %status, metadata !837, metadata !DIExpression()), !dbg !842
  store i32 0, ptr %status, align 4, !dbg !842
  call void @llvm.lifetime.start.p0(i64 8, ptr %control_state) #5, !dbg !843
  call void @llvm.dbg.declare(metadata ptr %control_state, metadata !838, metadata !DIExpression()), !dbg !844
  %0 = load ptr, ptr %op.addr, align 8, !dbg !845
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 3, !dbg !846
  %1 = load i16, ptr %aml_opcode, align 2, !dbg !846
  %conv = zext i16 %1 to i32, !dbg !845
  switch i32 %conv, label %sw.default [
    i32 162, label %sw.bb
    i32 160, label %sw.bb7
    i32 161, label %sw.bb20
    i32 164, label %sw.epilog
  ], !dbg !847

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !848
  %control_state1 = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 32, !dbg !851
  %3 = load ptr, ptr %control_state1, align 8, !dbg !851
  %tobool = icmp ne ptr %3, null, !dbg !848
  br i1 %tobool, label %if.then, label %if.end6, !dbg !852

if.then:                                          ; preds = %sw.bb
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !853
  %control_state2 = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 32, !dbg !856
  %5 = load ptr, ptr %control_state2, align 8, !dbg !856
  %aml_predicate_start = getelementptr inbounds %struct.acpi_control_state, ptr %5, i32 0, i32 7, !dbg !857
  %6 = load ptr, ptr %aml_predicate_start, align 8, !dbg !857
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !858
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 21, !dbg !859
  %aml = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state, i32 0, i32 1, !dbg !860
  %8 = load ptr, ptr %aml, align 8, !dbg !860
  %add.ptr = getelementptr i8, ptr %8, i64 -1, !dbg !861
  %cmp = icmp eq ptr %6, %add.ptr, !dbg !862
  br i1 %cmp, label %if.then4, label %if.end, !dbg !863

if.then4:                                         ; preds = %if.then
  %9 = load ptr, ptr %walk_state.addr, align 8, !dbg !864
  %control_state5 = getelementptr inbounds %struct.acpi_walk_state, ptr %9, i32 0, i32 32, !dbg !866
  %10 = load ptr, ptr %control_state5, align 8, !dbg !866
  %state = getelementptr inbounds %struct.acpi_common_state, ptr %10, i32 0, i32 4, !dbg !867
  store i16 193, ptr %state, align 4, !dbg !868
  br label %sw.epilog, !dbg !869

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !870

if.end6:                                          ; preds = %if.end, %sw.bb
  br label %sw.bb7, !dbg !851

sw.bb7:                                           ; preds = %entry, %if.end6
  %call = call ptr @acpi_ut_create_control_state() #6, !dbg !871
  store ptr %call, ptr %control_state, align 8, !dbg !872
  %11 = load ptr, ptr %control_state, align 8, !dbg !873
  %tobool8 = icmp ne ptr %11, null, !dbg !873
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !875

if.then9:                                         ; preds = %sw.bb7
  store i32 4, ptr %status, align 4, !dbg !876
  br label %sw.epilog, !dbg !878

if.end10:                                         ; preds = %sw.bb7
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !879
  %parser_state11 = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 21, !dbg !880
  %aml12 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state11, i32 0, i32 1, !dbg !881
  %13 = load ptr, ptr %aml12, align 8, !dbg !881
  %add.ptr13 = getelementptr i8, ptr %13, i64 -1, !dbg !882
  %14 = load ptr, ptr %control_state, align 8, !dbg !883
  %aml_predicate_start14 = getelementptr inbounds %struct.acpi_control_state, ptr %14, i32 0, i32 7, !dbg !884
  store ptr %add.ptr13, ptr %aml_predicate_start14, align 8, !dbg !885
  %15 = load ptr, ptr %walk_state.addr, align 8, !dbg !886
  %parser_state15 = getelementptr inbounds %struct.acpi_walk_state, ptr %15, i32 0, i32 21, !dbg !887
  %pkg_end = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state15, i32 0, i32 4, !dbg !888
  %16 = load ptr, ptr %pkg_end, align 8, !dbg !888
  %17 = load ptr, ptr %control_state, align 8, !dbg !889
  %package_end = getelementptr inbounds %struct.acpi_control_state, ptr %17, i32 0, i32 8, !dbg !890
  store ptr %16, ptr %package_end, align 8, !dbg !891
  %18 = load ptr, ptr %op.addr, align 8, !dbg !892
  %aml_opcode16 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %18, i32 0, i32 3, !dbg !893
  %19 = load i16, ptr %aml_opcode16, align 2, !dbg !893
  %20 = load ptr, ptr %control_state, align 8, !dbg !894
  %opcode = getelementptr inbounds %struct.acpi_control_state, ptr %20, i32 0, i32 5, !dbg !895
  store i16 %19, ptr %opcode, align 2, !dbg !896
  %call17 = call i64 @acpi_os_get_timer() #6, !dbg !897
  %21 = load i32, ptr @acpi_gbl_max_loop_iterations, align 4, !dbg !898
  %conv18 = zext i32 %21 to i64, !dbg !899
  %mul = mul i64 %conv18, 10000000, !dbg !900
  %add = add i64 %call17, %mul, !dbg !901
  %22 = load ptr, ptr %control_state, align 8, !dbg !902
  %loop_timeout = getelementptr inbounds %struct.acpi_control_state, ptr %22, i32 0, i32 9, !dbg !903
  store i64 %add, ptr %loop_timeout, align 8, !dbg !904
  %23 = load ptr, ptr %walk_state.addr, align 8, !dbg !905
  %control_state19 = getelementptr inbounds %struct.acpi_walk_state, ptr %23, i32 0, i32 32, !dbg !906
  %24 = load ptr, ptr %control_state, align 8, !dbg !907
  call void @acpi_ut_push_generic_state(ptr noundef %control_state19, ptr noundef %24) #6, !dbg !908
  br label %sw.epilog, !dbg !909

sw.bb20:                                          ; preds = %entry
  %25 = load ptr, ptr %walk_state.addr, align 8, !dbg !910
  %last_predicate = getelementptr inbounds %struct.acpi_walk_state, ptr %25, i32 0, i32 8, !dbg !912
  %26 = load i8, ptr %last_predicate, align 2, !dbg !912
  %tobool21 = icmp ne i8 %26, 0, !dbg !910
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !913

if.then22:                                        ; preds = %sw.bb20
  store i32 16388, ptr %status, align 4, !dbg !914
  br label %if.end23, !dbg !916

if.end23:                                         ; preds = %if.then22, %sw.bb20
  br label %sw.epilog, !dbg !917

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !918

sw.epilog:                                        ; preds = %sw.default, %entry, %if.end23, %if.end10, %if.then9, %if.then4
  %27 = load i32, ptr %status, align 4, !dbg !919
  call void @llvm.lifetime.end.p0(i64 8, ptr %control_state) #5, !dbg !920
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !920
  ret i32 %27, !dbg !921
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !922 dso_local ptr @acpi_ut_create_control_state() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !926 dso_local i64 @acpi_os_get_timer() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !930 dso_local void @acpi_ut_push_generic_state(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_exec_end_control_op(ptr noundef %walk_state, ptr noundef %op) #0 align 16 !dbg !934 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %control_state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !936, metadata !DIExpression()), !dbg !940
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !937, metadata !DIExpression()), !dbg !941
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !942
  call void @llvm.dbg.declare(metadata ptr %status, metadata !938, metadata !DIExpression()), !dbg !943
  store i32 0, ptr %status, align 4, !dbg !943
  call void @llvm.lifetime.start.p0(i64 8, ptr %control_state) #5, !dbg !944
  call void @llvm.dbg.declare(metadata ptr %control_state, metadata !939, metadata !DIExpression()), !dbg !945
  %0 = load ptr, ptr %op.addr, align 8, !dbg !946
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 3, !dbg !947
  %1 = load i16, ptr %aml_opcode, align 2, !dbg !947
  %conv = zext i16 %1 to i32, !dbg !946
  switch i32 %conv, label %sw.default [
    i32 160, label %sw.bb
    i32 161, label %sw.epilog
    i32 162, label %sw.bb4
    i32 164, label %sw.bb13
    i32 163, label %sw.epilog
    i32 204, label %sw.bb72
    i32 165, label %sw.bb74
    i32 159, label %sw.bb74
  ], !dbg !948

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !949
  %control_state1 = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 32, !dbg !951
  %3 = load ptr, ptr %control_state1, align 8, !dbg !951
  %value = getelementptr inbounds %struct.acpi_common_state, ptr %3, i32 0, i32 3, !dbg !952
  %4 = load i16, ptr %value, align 2, !dbg !952
  %conv2 = trunc i16 %4 to i8, !dbg !953
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !954
  %last_predicate = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 8, !dbg !955
  store i8 %conv2, ptr %last_predicate, align 2, !dbg !956
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !957
  %control_state3 = getelementptr inbounds %struct.acpi_walk_state, ptr %6, i32 0, i32 32, !dbg !958
  %call = call ptr @acpi_ut_pop_generic_state(ptr noundef %control_state3) #6, !dbg !959
  store ptr %call, ptr %control_state, align 8, !dbg !960
  %7 = load ptr, ptr %control_state, align 8, !dbg !961
  call void @acpi_ut_delete_generic_state(ptr noundef %7) #6, !dbg !962
  br label %sw.epilog, !dbg !963

sw.bb4:                                           ; preds = %entry
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !964
  %control_state5 = getelementptr inbounds %struct.acpi_walk_state, ptr %8, i32 0, i32 32, !dbg !965
  %9 = load ptr, ptr %control_state5, align 8, !dbg !965
  store ptr %9, ptr %control_state, align 8, !dbg !966
  %10 = load ptr, ptr %control_state, align 8, !dbg !967
  %value6 = getelementptr inbounds %struct.acpi_common_state, ptr %10, i32 0, i32 3, !dbg !969
  %11 = load i16, ptr %value6, align 2, !dbg !969
  %tobool = icmp ne i16 %11, 0, !dbg !967
  br i1 %tobool, label %if.then, label %if.end10, !dbg !970

if.then:                                          ; preds = %sw.bb4
  %12 = load ptr, ptr %control_state, align 8, !dbg !971
  %loop_timeout = getelementptr inbounds %struct.acpi_control_state, ptr %12, i32 0, i32 9, !dbg !971
  %13 = load i64, ptr %loop_timeout, align 8, !dbg !971
  %call7 = call i64 @acpi_os_get_timer() #6, !dbg !971
  %sub = sub i64 %13, %call7, !dbg !971
  %cmp = icmp slt i64 %sub, 0, !dbg !971
  br i1 %cmp, label %if.then9, label %if.end, !dbg !974

if.then9:                                         ; preds = %if.then
  store i32 12321, ptr %status, align 4, !dbg !975
  br label %sw.epilog, !dbg !977

if.end:                                           ; preds = %if.then
  store i32 16386, ptr %status, align 4, !dbg !978
  %14 = load ptr, ptr %control_state, align 8, !dbg !979
  %aml_predicate_start = getelementptr inbounds %struct.acpi_control_state, ptr %14, i32 0, i32 7, !dbg !980
  %15 = load ptr, ptr %aml_predicate_start, align 8, !dbg !980
  %16 = load ptr, ptr %walk_state.addr, align 8, !dbg !981
  %aml_last_while = getelementptr inbounds %struct.acpi_walk_state, ptr %16, i32 0, i32 30, !dbg !982
  store ptr %15, ptr %aml_last_while, align 8, !dbg !983
  br label %sw.epilog, !dbg !984

if.end10:                                         ; preds = %sw.bb4
  %17 = load ptr, ptr %walk_state.addr, align 8, !dbg !985
  %control_state11 = getelementptr inbounds %struct.acpi_walk_state, ptr %17, i32 0, i32 32, !dbg !986
  %call12 = call ptr @acpi_ut_pop_generic_state(ptr noundef %control_state11) #6, !dbg !987
  store ptr %call12, ptr %control_state, align 8, !dbg !988
  %18 = load ptr, ptr %control_state, align 8, !dbg !989
  call void @acpi_ut_delete_generic_state(ptr noundef %18) #6, !dbg !990
  br label %sw.epilog, !dbg !991

sw.bb13:                                          ; preds = %entry
  %19 = load ptr, ptr %op.addr, align 8, !dbg !992
  %value14 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %19, i32 0, i32 7, !dbg !994
  %20 = load ptr, ptr %value14, align 8, !dbg !995
  %tobool15 = icmp ne ptr %20, null, !dbg !992
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !996

if.then16:                                        ; preds = %sw.bb13
  %21 = load ptr, ptr %walk_state.addr, align 8, !dbg !997
  call void @acpi_ds_clear_implicit_return(ptr noundef %21) #6, !dbg !999
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !1000
  %23 = load ptr, ptr %op.addr, align 8, !dbg !1001
  %value17 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %23, i32 0, i32 7, !dbg !1002
  %24 = load ptr, ptr %value17, align 8, !dbg !1003
  %call18 = call i32 @acpi_ds_create_operands(ptr noundef %22, ptr noundef %24) #6, !dbg !1004
  store i32 %call18, ptr %status, align 4, !dbg !1005
  %25 = load i32, ptr %status, align 4, !dbg !1006
  %tobool19 = icmp ne i32 %25, 0, !dbg !1006
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1008

if.then20:                                        ; preds = %if.then16
  %26 = load i32, ptr %status, align 4, !dbg !1009
  store i32 %26, ptr %retval, align 4, !dbg !1011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1011

if.end21:                                         ; preds = %if.then16
  %27 = load ptr, ptr %walk_state.addr, align 8, !dbg !1012
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %27, i32 0, i32 28, !dbg !1013
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !1012
  %28 = load ptr, ptr %walk_state.addr, align 8, !dbg !1014
  %call22 = call i32 @acpi_ex_resolve_to_value(ptr noundef %arrayidx, ptr noundef %28) #6, !dbg !1015
  store i32 %call22, ptr %status, align 4, !dbg !1016
  %29 = load i32, ptr %status, align 4, !dbg !1017
  %tobool23 = icmp ne i32 %29, 0, !dbg !1017
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !1019

if.then24:                                        ; preds = %if.end21
  %30 = load i32, ptr %status, align 4, !dbg !1020
  store i32 %30, ptr %retval, align 4, !dbg !1022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1022

if.end25:                                         ; preds = %if.end21
  %31 = load ptr, ptr %walk_state.addr, align 8, !dbg !1023
  %operands26 = getelementptr inbounds %struct.acpi_walk_state, ptr %31, i32 0, i32 28, !dbg !1024
  %arrayidx27 = getelementptr [9 x ptr], ptr %operands26, i64 0, i64 0, !dbg !1023
  %32 = load ptr, ptr %arrayidx27, align 8, !dbg !1023
  %33 = load ptr, ptr %walk_state.addr, align 8, !dbg !1025
  %return_desc = getelementptr inbounds %struct.acpi_walk_state, ptr %33, i32 0, i32 45, !dbg !1026
  store ptr %32, ptr %return_desc, align 8, !dbg !1027
  br label %if.end71, !dbg !1028

if.else:                                          ; preds = %sw.bb13
  %34 = load ptr, ptr %walk_state.addr, align 8, !dbg !1029
  %result_count = getelementptr inbounds %struct.acpi_walk_state, ptr %34, i32 0, i32 15, !dbg !1031
  %35 = load i8, ptr %result_count, align 1, !dbg !1031
  %tobool28 = icmp ne i8 %35, 0, !dbg !1029
  br i1 %tobool28, label %if.then29, label %if.else60, !dbg !1032

if.then29:                                        ; preds = %if.else
  %36 = load ptr, ptr %walk_state.addr, align 8, !dbg !1033
  call void @acpi_ds_clear_implicit_return(ptr noundef %36) #6, !dbg !1035
  %37 = load ptr, ptr %walk_state.addr, align 8, !dbg !1036
  %results = getelementptr inbounds %struct.acpi_walk_state, ptr %37, i32 0, i32 44, !dbg !1036
  %38 = load ptr, ptr %results, align 8, !dbg !1036
  %obj_desc = getelementptr inbounds %struct.acpi_result_values, ptr %38, i32 0, i32 5, !dbg !1036
  %arrayidx30 = getelementptr [8 x ptr], ptr %obj_desc, i64 0, i64 0, !dbg !1036
  %39 = load ptr, ptr %arrayidx30, align 8, !dbg !1036
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %39, i32 0, i32 1, !dbg !1036
  %40 = load i8, ptr %descriptor_type, align 8, !dbg !1036
  %conv31 = zext i8 %40 to i32, !dbg !1036
  %cmp32 = icmp eq i32 %conv31, 14, !dbg !1038
  br i1 %cmp32, label %land.lhs.true, label %if.end55, !dbg !1039

land.lhs.true:                                    ; preds = %if.then29
  %41 = load ptr, ptr %walk_state.addr, align 8, !dbg !1040
  %results34 = getelementptr inbounds %struct.acpi_walk_state, ptr %41, i32 0, i32 44, !dbg !1041
  %42 = load ptr, ptr %results34, align 8, !dbg !1041
  %obj_desc35 = getelementptr inbounds %struct.acpi_result_values, ptr %42, i32 0, i32 5, !dbg !1042
  %arrayidx36 = getelementptr [8 x ptr], ptr %obj_desc35, i64 0, i64 0, !dbg !1040
  %43 = load ptr, ptr %arrayidx36, align 8, !dbg !1040
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %43, i32 0, i32 2, !dbg !1043
  %44 = load i8, ptr %type, align 1, !dbg !1043
  %conv37 = zext i8 %44 to i32, !dbg !1044
  %cmp38 = icmp eq i32 %conv37, 20, !dbg !1045
  br i1 %cmp38, label %land.lhs.true40, label %if.end55, !dbg !1046

land.lhs.true40:                                  ; preds = %land.lhs.true
  %45 = load ptr, ptr %walk_state.addr, align 8, !dbg !1047
  %results41 = getelementptr inbounds %struct.acpi_walk_state, ptr %45, i32 0, i32 44, !dbg !1048
  %46 = load ptr, ptr %results41, align 8, !dbg !1048
  %obj_desc42 = getelementptr inbounds %struct.acpi_result_values, ptr %46, i32 0, i32 5, !dbg !1049
  %arrayidx43 = getelementptr [8 x ptr], ptr %obj_desc42, i64 0, i64 0, !dbg !1047
  %47 = load ptr, ptr %arrayidx43, align 8, !dbg !1047
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %47, i32 0, i32 5, !dbg !1050
  %48 = load i8, ptr %class, align 1, !dbg !1050
  %conv44 = zext i8 %48 to i32, !dbg !1051
  %cmp45 = icmp ne i32 %conv44, 3, !dbg !1052
  br i1 %cmp45, label %if.then47, label %if.end55, !dbg !1053

if.then47:                                        ; preds = %land.lhs.true40
  %49 = load ptr, ptr %walk_state.addr, align 8, !dbg !1054
  %results48 = getelementptr inbounds %struct.acpi_walk_state, ptr %49, i32 0, i32 44, !dbg !1056
  %50 = load ptr, ptr %results48, align 8, !dbg !1056
  %obj_desc49 = getelementptr inbounds %struct.acpi_result_values, ptr %50, i32 0, i32 5, !dbg !1057
  %arrayidx50 = getelementptr [8 x ptr], ptr %obj_desc49, i64 0, i64 0, !dbg !1054
  %51 = load ptr, ptr %walk_state.addr, align 8, !dbg !1058
  %call51 = call i32 @acpi_ex_resolve_to_value(ptr noundef %arrayidx50, ptr noundef %51) #6, !dbg !1059
  store i32 %call51, ptr %status, align 4, !dbg !1060
  %52 = load i32, ptr %status, align 4, !dbg !1061
  %tobool52 = icmp ne i32 %52, 0, !dbg !1061
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !1063

if.then53:                                        ; preds = %if.then47
  %53 = load i32, ptr %status, align 4, !dbg !1064
  store i32 %53, ptr %retval, align 4, !dbg !1066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1066

if.end54:                                         ; preds = %if.then47
  br label %if.end55, !dbg !1067

if.end55:                                         ; preds = %if.end54, %land.lhs.true40, %land.lhs.true, %if.then29
  %54 = load ptr, ptr %walk_state.addr, align 8, !dbg !1068
  %results56 = getelementptr inbounds %struct.acpi_walk_state, ptr %54, i32 0, i32 44, !dbg !1069
  %55 = load ptr, ptr %results56, align 8, !dbg !1069
  %obj_desc57 = getelementptr inbounds %struct.acpi_result_values, ptr %55, i32 0, i32 5, !dbg !1070
  %arrayidx58 = getelementptr [8 x ptr], ptr %obj_desc57, i64 0, i64 0, !dbg !1068
  %56 = load ptr, ptr %arrayidx58, align 8, !dbg !1068
  %57 = load ptr, ptr %walk_state.addr, align 8, !dbg !1071
  %return_desc59 = getelementptr inbounds %struct.acpi_walk_state, ptr %57, i32 0, i32 45, !dbg !1072
  store ptr %56, ptr %return_desc59, align 8, !dbg !1073
  br label %if.end70, !dbg !1074

if.else60:                                        ; preds = %if.else
  %58 = load ptr, ptr %walk_state.addr, align 8, !dbg !1075
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, ptr %58, i32 0, i32 5, !dbg !1078
  %59 = load i8, ptr %num_operands, align 1, !dbg !1078
  %tobool61 = icmp ne i8 %59, 0, !dbg !1075
  br i1 %tobool61, label %if.then62, label %if.end65, !dbg !1079

if.then62:                                        ; preds = %if.else60
  %60 = load ptr, ptr %walk_state.addr, align 8, !dbg !1080
  %operands63 = getelementptr inbounds %struct.acpi_walk_state, ptr %60, i32 0, i32 28, !dbg !1082
  %arrayidx64 = getelementptr [9 x ptr], ptr %operands63, i64 0, i64 0, !dbg !1080
  %61 = load ptr, ptr %arrayidx64, align 8, !dbg !1080
  call void @acpi_ut_remove_reference(ptr noundef %61) #6, !dbg !1083
  br label %if.end65, !dbg !1084

if.end65:                                         ; preds = %if.then62, %if.else60
  %62 = load ptr, ptr %walk_state.addr, align 8, !dbg !1085
  %operands66 = getelementptr inbounds %struct.acpi_walk_state, ptr %62, i32 0, i32 28, !dbg !1086
  %arrayidx67 = getelementptr [9 x ptr], ptr %operands66, i64 0, i64 0, !dbg !1085
  store ptr null, ptr %arrayidx67, align 8, !dbg !1087
  %63 = load ptr, ptr %walk_state.addr, align 8, !dbg !1088
  %num_operands68 = getelementptr inbounds %struct.acpi_walk_state, ptr %63, i32 0, i32 5, !dbg !1089
  store i8 0, ptr %num_operands68, align 1, !dbg !1090
  %64 = load ptr, ptr %walk_state.addr, align 8, !dbg !1091
  %return_desc69 = getelementptr inbounds %struct.acpi_walk_state, ptr %64, i32 0, i32 45, !dbg !1092
  store ptr null, ptr %return_desc69, align 8, !dbg !1093
  br label %if.end70

if.end70:                                         ; preds = %if.end65, %if.end55
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end25
  store i32 16387, ptr %status, align 4, !dbg !1094
  br label %sw.epilog, !dbg !1095

sw.bb72:                                          ; preds = %entry
  %65 = load ptr, ptr %walk_state.addr, align 8, !dbg !1096
  call void @acpi_db_signal_break_point(ptr noundef %65) #6, !dbg !1097
  %call73 = call i32 @acpi_os_signal(i32 noundef 1, ptr noundef @.str) #6, !dbg !1098
  store i32 %call73, ptr %status, align 4, !dbg !1099
  br label %sw.epilog, !dbg !1100

sw.bb74:                                          ; preds = %entry, %entry
  br label %while.cond, !dbg !1101

while.cond:                                       ; preds = %while.body, %sw.bb74
  %66 = load ptr, ptr %walk_state.addr, align 8, !dbg !1102
  %control_state75 = getelementptr inbounds %struct.acpi_walk_state, ptr %66, i32 0, i32 32, !dbg !1103
  %67 = load ptr, ptr %control_state75, align 8, !dbg !1103
  %tobool76 = icmp ne ptr %67, null, !dbg !1102
  br i1 %tobool76, label %land.rhs, label %land.end, !dbg !1104

land.rhs:                                         ; preds = %while.cond
  %68 = load ptr, ptr %walk_state.addr, align 8, !dbg !1105
  %control_state77 = getelementptr inbounds %struct.acpi_walk_state, ptr %68, i32 0, i32 32, !dbg !1106
  %69 = load ptr, ptr %control_state77, align 8, !dbg !1106
  %opcode = getelementptr inbounds %struct.acpi_control_state, ptr %69, i32 0, i32 5, !dbg !1107
  %70 = load i16, ptr %opcode, align 2, !dbg !1107
  %conv78 = zext i16 %70 to i32, !dbg !1105
  %cmp79 = icmp ne i32 %conv78, 162, !dbg !1108
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %71 = phi i1 [ false, %while.cond ], [ %cmp79, %land.rhs ], !dbg !1109
  br i1 %71, label %while.body, label %while.end, !dbg !1101

while.body:                                       ; preds = %land.end
  %72 = load ptr, ptr %walk_state.addr, align 8, !dbg !1110
  %control_state81 = getelementptr inbounds %struct.acpi_walk_state, ptr %72, i32 0, i32 32, !dbg !1112
  %call82 = call ptr @acpi_ut_pop_generic_state(ptr noundef %control_state81) #6, !dbg !1113
  store ptr %call82, ptr %control_state, align 8, !dbg !1114
  %73 = load ptr, ptr %control_state, align 8, !dbg !1115
  call void @acpi_ut_delete_generic_state(ptr noundef %73) #6, !dbg !1116
  br label %while.cond, !dbg !1101, !llvm.loop !1117

while.end:                                        ; preds = %land.end
  %74 = load ptr, ptr %walk_state.addr, align 8, !dbg !1121
  %control_state83 = getelementptr inbounds %struct.acpi_walk_state, ptr %74, i32 0, i32 32, !dbg !1123
  %75 = load ptr, ptr %control_state83, align 8, !dbg !1123
  %tobool84 = icmp ne ptr %75, null, !dbg !1121
  br i1 %tobool84, label %if.end86, label %if.then85, !dbg !1124

if.then85:                                        ; preds = %while.end
  store i32 12314, ptr %retval, align 4, !dbg !1125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1125

if.end86:                                         ; preds = %while.end
  %76 = load ptr, ptr %walk_state.addr, align 8, !dbg !1127
  %control_state87 = getelementptr inbounds %struct.acpi_walk_state, ptr %76, i32 0, i32 32, !dbg !1128
  %77 = load ptr, ptr %control_state87, align 8, !dbg !1128
  %package_end = getelementptr inbounds %struct.acpi_control_state, ptr %77, i32 0, i32 8, !dbg !1129
  %78 = load ptr, ptr %package_end, align 8, !dbg !1129
  %79 = load ptr, ptr %walk_state.addr, align 8, !dbg !1130
  %aml_last_while88 = getelementptr inbounds %struct.acpi_walk_state, ptr %79, i32 0, i32 30, !dbg !1131
  store ptr %78, ptr %aml_last_while88, align 8, !dbg !1132
  %80 = load ptr, ptr %op.addr, align 8, !dbg !1133
  %aml_opcode89 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %80, i32 0, i32 3, !dbg !1135
  %81 = load i16, ptr %aml_opcode89, align 2, !dbg !1135
  %conv90 = zext i16 %81 to i32, !dbg !1133
  %cmp91 = icmp eq i32 %conv90, 165, !dbg !1136
  br i1 %cmp91, label %if.then93, label %if.else94, !dbg !1137

if.then93:                                        ; preds = %if.end86
  store i32 16393, ptr %status, align 4, !dbg !1138
  br label %if.end95, !dbg !1140

if.else94:                                        ; preds = %if.end86
  store i32 16394, ptr %status, align 4, !dbg !1141
  br label %if.end95

if.end95:                                         ; preds = %if.else94, %if.then93
  br label %sw.epilog, !dbg !1143

sw.default:                                       ; preds = %entry
  %82 = load ptr, ptr %op.addr, align 8, !dbg !1144
  %aml_opcode96 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %82, i32 0, i32 3, !dbg !1144
  %83 = load i16, ptr %aml_opcode96, align 2, !dbg !1144
  %conv97 = zext i16 %83 to i32, !dbg !1144
  %84 = load ptr, ptr %op.addr, align 8, !dbg !1144
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 364, ptr noundef @.str.1, i32 noundef %conv97, ptr noundef %84) #6, !dbg !1144
  store i32 12289, ptr %status, align 4, !dbg !1145
  br label %sw.epilog, !dbg !1146

sw.epilog:                                        ; preds = %sw.default, %if.end95, %sw.bb72, %entry, %if.end71, %if.end10, %if.end, %if.then9, %entry, %sw.bb
  %85 = load i32, ptr %status, align 4, !dbg !1147
  store i32 %85, ptr %retval, align 4, !dbg !1148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1148

cleanup:                                          ; preds = %sw.epilog, %if.then85, %if.then53, %if.then24, %if.then20
  call void @llvm.lifetime.end.p0(i64 8, ptr %control_state) #5, !dbg !1149
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1149
  %86 = load i32, ptr %retval, align 4, !dbg !1149
  ret i32 %86, !dbg !1149
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1150 dso_local ptr @acpi_ut_pop_generic_state(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1153 dso_local void @acpi_ut_delete_generic_state(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1156 dso_local void @acpi_ds_clear_implicit_return(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1160 dso_local i32 @acpi_ds_create_operands(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1161 dso_local i32 @acpi_ex_resolve_to_value(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1165 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_db_signal_break_point(ptr noundef %walk_state) #4 align 16 !dbg !1168 {
entry:
  %walk_state.addr = alloca ptr, align 8
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1171, metadata !DIExpression()), !dbg !1172
  ret void, !dbg !1172
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1173 dso_local i32 @acpi_os_signal(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1176 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!822, !823, !824, !825, !826, !827, !828, !829}
!llvm.ident = !{!830}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 325, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/dscontrol.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a955335f0f42ca5aa3f6a295bfe530ac")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 31)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !9, file: !2, line: 19, type: !818, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.dscontrol.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22dscontrol\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/dscontrol.ll drivers/acpi/acpica/dscontrol.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !23, globals: !812, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 323, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22}
!15 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0)
!16 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1)
!17 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2)
!18 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3)
!19 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4)
!20 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5)
!21 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6)
!22 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6)
!23 = !{!24, !30, !33, !36, !39, !46, !59}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !25, line: 421, baseType: !26)
!25 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !27, line: 21, baseType: !28)
!27 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !29, line: 27, baseType: !13)
!29 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !27, line: 23, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !29, line: 31, baseType: !32)
!32 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !27, line: 17, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !29, line: 21, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !27, line: 22, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !29, line: 30, baseType: !38)
!38 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !12, line: 434, size: 1600, elements: !41)
!41 = !{!42, !48, !810, !811}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !40, file: !12, line: 435, baseType: !43, size: 128)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !12, line: 429, size: 128, elements: !44)
!44 = !{!45, !47}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !43, file: !12, line: 430, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !43, file: !12, line: 431, baseType: !33, size: 8, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !40, file: !12, line: 436, baseType: !49, size: 576)
!49 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !12, line: 369, size: 576, elements: !50)
!50 = !{!51, !63, !76, !87, !123, !137, !146, !459, !476, !492, !505, !583, !595, !609, !619, !637, !659, !678, !697, !716, !729, !756, !773, !786, !800, !809}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !49, file: !12, line: 370, baseType: !52, size: 128)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !12, line: 73, size: 128, elements: !53)
!53 = !{!54, !56, !57, !58, !62}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !12, line: 74, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !12, line: 74, baseType: !33, size: 8, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !12, line: 74, baseType: !33, size: 8, offset: 72)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !12, line: 74, baseType: !59, size: 16, offset: 80)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !27, line: 19, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !29, line: 24, baseType: !61)
!61 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !12, line: 74, baseType: !33, size: 8, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !49, file: !12, line: 371, baseType: !64, size: 192)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !12, line: 76, size: 192, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !75}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !64, file: !12, line: 77, baseType: !55, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !64, file: !12, line: 77, baseType: !33, size: 8, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !12, line: 77, baseType: !33, size: 8, offset: 72)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !64, file: !12, line: 77, baseType: !59, size: 16, offset: 80)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !12, line: 77, baseType: !33, size: 8, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !64, file: !12, line: 77, baseType: !72, size: 24, offset: 104)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 24, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 3)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !64, file: !12, line: 78, baseType: !30, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !49, file: !12, line: 372, baseType: !77, size: 256)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !12, line: 93, size: 256, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !86}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !77, file: !12, line: 94, baseType: !55, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !77, file: !12, line: 94, baseType: !33, size: 8, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !12, line: 94, baseType: !33, size: 8, offset: 72)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !77, file: !12, line: 94, baseType: !59, size: 16, offset: 80)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !12, line: 94, baseType: !33, size: 8, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !77, file: !12, line: 94, baseType: !85, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !77, file: !12, line: 94, baseType: !26, size: 32, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !49, file: !12, line: 373, baseType: !88, size: 384)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !12, line: 97, size: 384, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !97, !98, !99, !100}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !88, file: !12, line: 98, baseType: !55, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !88, file: !12, line: 98, baseType: !33, size: 8, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !12, line: 98, baseType: !33, size: 8, offset: 72)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !88, file: !12, line: 98, baseType: !59, size: 16, offset: 80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !88, file: !12, line: 98, baseType: !33, size: 8, offset: 96)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !88, file: !12, line: 98, baseType: !96, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !88, file: !12, line: 98, baseType: !26, size: 32, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !88, file: !12, line: 99, baseType: !26, size: 32, offset: 224)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !88, file: !12, line: 100, baseType: !96, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !88, file: !12, line: 101, baseType: !101, size: 64, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !103, line: 133, size: 384, elements: !104)
!103 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!104 = !{!105, !106, !107, !108, !109, !118, !119, !120, !121}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !102, file: !103, line: 134, baseType: !55, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !102, file: !103, line: 135, baseType: !33, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !103, line: 136, baseType: !33, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !103, line: 137, baseType: !59, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !103, line: 138, baseType: !110, size: 32, offset: 96)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !111, line: 328, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!112 = !{!113, !114}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !110, file: !111, line: 329, baseType: !26, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !110, file: !111, line: 330, baseType: !115, size: 32)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 4)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !102, file: !103, line: 139, baseType: !101, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !102, file: !103, line: 140, baseType: !101, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !102, file: !103, line: 141, baseType: !101, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !102, file: !103, line: 142, baseType: !122, size: 16, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !25, line: 445, baseType: !59)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !49, file: !12, line: 374, baseType: !124, size: 384)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !12, line: 104, size: 384, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !134, !135, !136}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !124, file: !12, line: 105, baseType: !55, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !124, file: !12, line: 105, baseType: !33, size: 8, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !12, line: 105, baseType: !33, size: 8, offset: 72)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !124, file: !12, line: 105, baseType: !59, size: 16, offset: 80)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !12, line: 105, baseType: !33, size: 8, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !124, file: !12, line: 105, baseType: !101, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !124, file: !12, line: 106, baseType: !133, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !124, file: !12, line: 107, baseType: !96, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !124, file: !12, line: 108, baseType: !26, size: 32, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !124, file: !12, line: 109, baseType: !26, size: 32, offset: 352)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !49, file: !12, line: 375, baseType: !138, size: 192)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !12, line: 118, size: 192, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !138, file: !12, line: 119, baseType: !55, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !138, file: !12, line: 119, baseType: !33, size: 8, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !12, line: 119, baseType: !33, size: 8, offset: 72)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !138, file: !12, line: 119, baseType: !59, size: 16, offset: 80)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !12, line: 119, baseType: !33, size: 8, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !138, file: !12, line: 119, baseType: !46, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !49, file: !12, line: 376, baseType: !147, size: 448)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !12, line: 144, size: 448, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !456, !457, !458}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !147, file: !12, line: 145, baseType: !55, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !147, file: !12, line: 145, baseType: !33, size: 8, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !12, line: 145, baseType: !33, size: 8, offset: 72)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !147, file: !12, line: 145, baseType: !59, size: 16, offset: 80)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !12, line: 145, baseType: !33, size: 8, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !147, file: !12, line: 145, baseType: !33, size: 8, offset: 104)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !147, file: !12, line: 146, baseType: !33, size: 8, offset: 112)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !147, file: !12, line: 147, baseType: !33, size: 8, offset: 120)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !147, file: !12, line: 148, baseType: !55, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !147, file: !12, line: 149, baseType: !55, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !147, file: !12, line: 150, baseType: !96, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !147, file: !12, line: 154, baseType: !161, size: 64, offset: 320)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !12, line: 151, size: 64, elements: !162)
!162 = !{!163, !455}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !161, file: !12, line: 152, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !103, line: 248, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!24, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !170, line: 37, size: 9024, elements: !171)
!170 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !401, !402, !403, !404, !405, !409, !411, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !438, !439, !440, !441, !442, !443, !444, !445, !447, !453}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !170, line: 38, baseType: !168, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !169, file: !170, line: 39, baseType: !33, size: 8, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !169, file: !170, line: 40, baseType: !33, size: 8, offset: 72)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !169, file: !170, line: 41, baseType: !59, size: 16, offset: 80)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !169, file: !170, line: 42, baseType: !33, size: 8, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !169, file: !170, line: 43, baseType: !33, size: 8, offset: 104)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !169, file: !170, line: 44, baseType: !33, size: 8, offset: 112)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !169, file: !170, line: 45, baseType: !122, size: 16, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !169, file: !170, line: 46, baseType: !33, size: 8, offset: 144)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !169, file: !170, line: 47, baseType: !33, size: 8, offset: 152)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !169, file: !170, line: 48, baseType: !33, size: 8, offset: 160)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !169, file: !170, line: 49, baseType: !33, size: 8, offset: 168)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !169, file: !170, line: 50, baseType: !33, size: 8, offset: 176)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !169, file: !170, line: 51, baseType: !33, size: 8, offset: 184)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !169, file: !170, line: 52, baseType: !33, size: 8, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !169, file: !170, line: 53, baseType: !33, size: 8, offset: 200)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !169, file: !170, line: 54, baseType: !96, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !169, file: !170, line: 55, baseType: !26, size: 32, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !169, file: !170, line: 56, baseType: !26, size: 32, offset: 352)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !169, file: !170, line: 57, baseType: !26, size: 32, offset: 384)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !169, file: !170, line: 58, baseType: !26, size: 32, offset: 416)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !169, file: !170, line: 60, baseType: !194, size: 640, offset: 448)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !103, line: 909, size: 640, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201, !282, !283, !399, !400}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !194, file: !103, line: 910, baseType: !96, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !194, file: !103, line: 911, baseType: !96, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !194, file: !103, line: 912, baseType: !96, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !194, file: !103, line: 913, baseType: !96, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !194, file: !103, line: 914, baseType: !96, size: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !194, file: !103, line: 915, baseType: !202, size: 64, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !103, line: 891, size: 1600, elements: !204)
!204 = !{!205, !225, !241}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !203, file: !103, line: 892, baseType: !206, size: 448)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !103, line: 844, size: 448, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !224}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !206, file: !103, line: 845, baseType: !202, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !206, file: !103, line: 845, baseType: !33, size: 8, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !103, line: 845, baseType: !33, size: 8, offset: 72)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !206, file: !103, line: 845, baseType: !59, size: 16, offset: 80)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !206, file: !103, line: 845, baseType: !96, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !103, line: 845, baseType: !202, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !206, file: !103, line: 845, baseType: !101, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !206, file: !103, line: 845, baseType: !216, size: 64, offset: 320)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !103, line: 732, size: 64, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !216, file: !103, line: 733, baseType: !30, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !216, file: !103, line: 734, baseType: !26, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !216, file: !103, line: 735, baseType: !85, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !216, file: !103, line: 736, baseType: !96, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !103, line: 737, baseType: !85, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !216, file: !103, line: 738, baseType: !202, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !206, file: !103, line: 845, baseType: !33, size: 8, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !203, file: !103, line: 893, baseType: !226, size: 640)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !103, line: 851, size: 640, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !226, file: !103, line: 852, baseType: !202, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !226, file: !103, line: 852, baseType: !33, size: 8, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !226, file: !103, line: 852, baseType: !33, size: 8, offset: 72)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !226, file: !103, line: 852, baseType: !59, size: 16, offset: 80)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !226, file: !103, line: 852, baseType: !96, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !103, line: 852, baseType: !202, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !226, file: !103, line: 852, baseType: !101, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !226, file: !103, line: 852, baseType: !216, size: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !226, file: !103, line: 852, baseType: !33, size: 8, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !226, file: !103, line: 852, baseType: !85, size: 64, offset: 448)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !226, file: !103, line: 853, baseType: !96, size: 64, offset: 512)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !226, file: !103, line: 854, baseType: !26, size: 32, offset: 576)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !226, file: !103, line: 855, baseType: !26, size: 32, offset: 608)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !203, file: !103, line: 894, baseType: !242, size: 1600)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !103, line: 862, size: 1600, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !242, file: !103, line: 863, baseType: !202, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !242, file: !103, line: 863, baseType: !33, size: 8, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !242, file: !103, line: 863, baseType: !33, size: 8, offset: 72)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !242, file: !103, line: 863, baseType: !59, size: 16, offset: 80)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !242, file: !103, line: 863, baseType: !96, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !103, line: 863, baseType: !202, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !242, file: !103, line: 863, baseType: !101, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !242, file: !103, line: 863, baseType: !216, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !242, file: !103, line: 863, baseType: !33, size: 8, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !242, file: !103, line: 863, baseType: !202, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !242, file: !103, line: 864, baseType: !202, size: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !242, file: !103, line: 865, baseType: !85, size: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !242, file: !103, line: 866, baseType: !33, size: 8, offset: 640)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !242, file: !103, line: 867, baseType: !85, size: 64, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !242, file: !103, line: 868, baseType: !85, size: 64, offset: 768)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !242, file: !103, line: 869, baseType: !85, size: 64, offset: 832)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !242, file: !103, line: 870, baseType: !115, size: 32, offset: 896)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !242, file: !103, line: 871, baseType: !26, size: 32, offset: 928)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !242, file: !103, line: 872, baseType: !26, size: 32, offset: 960)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !242, file: !103, line: 873, baseType: !26, size: 32, offset: 992)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !242, file: !103, line: 874, baseType: !26, size: 32, offset: 1024)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !242, file: !103, line: 875, baseType: !26, size: 32, offset: 1056)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !242, file: !103, line: 876, baseType: !26, size: 32, offset: 1088)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !242, file: !103, line: 877, baseType: !26, size: 32, offset: 1120)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !242, file: !103, line: 878, baseType: !26, size: 32, offset: 1152)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !242, file: !103, line: 879, baseType: !26, size: 32, offset: 1184)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !242, file: !103, line: 880, baseType: !26, size: 32, offset: 1216)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !242, file: !103, line: 881, baseType: !26, size: 32, offset: 1248)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !242, file: !103, line: 882, baseType: !26, size: 32, offset: 1280)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !242, file: !103, line: 883, baseType: !26, size: 32, offset: 1312)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !242, file: !103, line: 884, baseType: !59, size: 16, offset: 1344)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !242, file: !103, line: 885, baseType: !33, size: 8, offset: 1360)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !242, file: !103, line: 886, baseType: !33, size: 8, offset: 1368)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !242, file: !103, line: 887, baseType: !33, size: 8, offset: 1376)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !242, file: !103, line: 888, baseType: !279, size: 160, offset: 1384)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 20)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !194, file: !103, line: 916, baseType: !101, size: 64, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !194, file: !103, line: 917, baseType: !284, size: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !103, line: 679, size: 640, elements: !286)
!286 = !{!287, !295, !308, !317, !326, !339, !353, !365, !377}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !285, file: !103, line: 680, baseType: !288, size: 128)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !103, line: 575, size: 128, elements: !289)
!289 = !{!290, !291, !292, !293, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !103, line: 576, baseType: !46, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !103, line: 576, baseType: !33, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !103, line: 576, baseType: !33, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !103, line: 576, baseType: !59, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !103, line: 576, baseType: !59, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !285, file: !103, line: 681, baseType: !296, size: 384)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !103, line: 604, size: 384, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !103, line: 605, baseType: !46, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !103, line: 605, baseType: !33, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !103, line: 605, baseType: !33, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !296, file: !103, line: 605, baseType: !59, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !296, file: !103, line: 605, baseType: !59, size: 16, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !296, file: !103, line: 606, baseType: !59, size: 16, offset: 112)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !296, file: !103, line: 607, baseType: !202, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !296, file: !103, line: 608, baseType: !96, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !296, file: !103, line: 609, baseType: !96, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !296, file: !103, line: 610, baseType: !30, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !285, file: !103, line: 682, baseType: !309, size: 192)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !103, line: 582, size: 192, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !103, line: 583, baseType: !46, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !103, line: 583, baseType: !33, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !103, line: 583, baseType: !33, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !103, line: 583, baseType: !59, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !309, file: !103, line: 583, baseType: !59, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !309, file: !103, line: 584, baseType: !55, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !285, file: !103, line: 683, baseType: !318, size: 192)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !103, line: 616, size: 192, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !103, line: 617, baseType: !46, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !318, file: !103, line: 617, baseType: !33, size: 8, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !103, line: 617, baseType: !33, size: 8, offset: 72)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !318, file: !103, line: 617, baseType: !59, size: 16, offset: 80)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !318, file: !103, line: 617, baseType: !59, size: 16, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !318, file: !103, line: 618, baseType: !101, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !285, file: !103, line: 684, baseType: !327, size: 448)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !103, line: 621, size: 448, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !103, line: 622, baseType: !46, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !327, file: !103, line: 622, baseType: !33, size: 8, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !103, line: 622, baseType: !33, size: 8, offset: 72)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !327, file: !103, line: 622, baseType: !59, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !327, file: !103, line: 622, baseType: !59, size: 16, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !327, file: !103, line: 623, baseType: !26, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !327, file: !103, line: 624, baseType: !202, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !327, file: !103, line: 625, baseType: !96, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !327, file: !103, line: 626, baseType: !96, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !327, file: !103, line: 627, baseType: !26, size: 32, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !285, file: !103, line: 685, baseType: !340, size: 512)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !103, line: 590, size: 512, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !103, line: 591, baseType: !46, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !340, file: !103, line: 591, baseType: !33, size: 8, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !103, line: 591, baseType: !33, size: 8, offset: 72)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !340, file: !103, line: 591, baseType: !59, size: 16, offset: 80)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !340, file: !103, line: 591, baseType: !59, size: 16, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !340, file: !103, line: 592, baseType: !26, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !340, file: !103, line: 593, baseType: !55, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !340, file: !103, line: 594, baseType: !55, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !340, file: !103, line: 595, baseType: !168, size: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !340, file: !103, line: 596, baseType: !46, size: 64, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !340, file: !103, line: 597, baseType: !26, size: 32, offset: 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !285, file: !103, line: 686, baseType: !354, size: 320)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !103, line: 634, size: 320, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !103, line: 635, baseType: !46, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !354, file: !103, line: 635, baseType: !33, size: 8, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !103, line: 635, baseType: !33, size: 8, offset: 72)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !354, file: !103, line: 635, baseType: !59, size: 16, offset: 80)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !354, file: !103, line: 635, baseType: !59, size: 16, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !354, file: !103, line: 636, baseType: !33, size: 8, offset: 112)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !354, file: !103, line: 637, baseType: !168, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !354, file: !103, line: 638, baseType: !55, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !354, file: !103, line: 639, baseType: !30, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !285, file: !103, line: 687, baseType: !366, size: 640)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !103, line: 646, size: 640, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !103, line: 647, baseType: !46, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !366, file: !103, line: 647, baseType: !33, size: 8, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !103, line: 647, baseType: !33, size: 8, offset: 72)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !366, file: !103, line: 647, baseType: !59, size: 16, offset: 80)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !366, file: !103, line: 647, baseType: !59, size: 16, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !366, file: !103, line: 648, baseType: !374, size: 512, offset: 128)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 512, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 8)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !285, file: !103, line: 688, baseType: !378, size: 320)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !103, line: 669, size: 320, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !103, line: 670, baseType: !46, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !378, file: !103, line: 670, baseType: !33, size: 8, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !378, file: !103, line: 670, baseType: !33, size: 8, offset: 72)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !378, file: !103, line: 670, baseType: !59, size: 16, offset: 80)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !378, file: !103, line: 670, baseType: !59, size: 16, offset: 96)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !378, file: !103, line: 671, baseType: !33, size: 8, offset: 112)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !378, file: !103, line: 672, baseType: !101, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !378, file: !103, line: 673, baseType: !55, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !378, file: !103, line: 674, baseType: !389, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !103, line: 660, size: 128, elements: !391)
!391 = !{!392, !398}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !390, file: !103, line: 661, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !25, line: 1061, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397, !26, !46}
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !25, line: 424, baseType: !46)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !390, file: !103, line: 662, baseType: !46, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !194, file: !103, line: 918, baseType: !202, size: 64, offset: 512)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !194, file: !103, line: 919, baseType: !26, size: 32, offset: 576)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !169, file: !170, line: 61, baseType: !26, size: 32, offset: 1088)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !169, file: !170, line: 62, baseType: !26, size: 32, offset: 1120)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !169, file: !170, line: 63, baseType: !59, size: 16, offset: 1152)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !169, file: !170, line: 64, baseType: !33, size: 8, offset: 1168)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !169, file: !170, line: 66, baseType: !406, size: 2688, offset: 1216)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 2688, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 7)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !169, file: !170, line: 67, baseType: !410, size: 3072, offset: 3904)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 3072, elements: !375)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !169, file: !170, line: 68, baseType: !412, size: 576, offset: 6976)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 576, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 9)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !169, file: !170, line: 69, baseType: !133, size: 64, offset: 7552)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !169, file: !170, line: 71, baseType: !96, size: 64, offset: 7616)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !169, file: !170, line: 72, baseType: !133, size: 64, offset: 7680)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !169, file: !170, line: 73, baseType: !284, size: 64, offset: 7744)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !169, file: !170, line: 74, baseType: !101, size: 64, offset: 7808)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !169, file: !170, line: 75, baseType: !55, size: 64, offset: 7872)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !169, file: !170, line: 76, baseType: !101, size: 64, offset: 7936)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !169, file: !170, line: 77, baseType: !202, size: 64, offset: 8000)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !169, file: !170, line: 78, baseType: !55, size: 64, offset: 8064)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !169, file: !170, line: 79, baseType: !101, size: 64, offset: 8128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !169, file: !170, line: 80, baseType: !85, size: 64, offset: 8192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !169, file: !170, line: 81, baseType: !202, size: 64, offset: 8256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !169, file: !170, line: 82, baseType: !428, size: 64, offset: 8320)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !103, line: 718, size: 128, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !430, file: !103, line: 722, baseType: !26, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !430, file: !103, line: 723, baseType: !26, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !430, file: !103, line: 724, baseType: !59, size: 16, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !430, file: !103, line: 725, baseType: !33, size: 8, offset: 80)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !430, file: !103, line: 726, baseType: !33, size: 8, offset: 88)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !430, file: !103, line: 727, baseType: !33, size: 8, offset: 96)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !169, file: !170, line: 83, baseType: !202, size: 64, offset: 8384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !169, file: !170, line: 84, baseType: !55, size: 64, offset: 8448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !169, file: !170, line: 85, baseType: !284, size: 64, offset: 8512)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !169, file: !170, line: 86, baseType: !55, size: 64, offset: 8576)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !169, file: !170, line: 87, baseType: !284, size: 64, offset: 8640)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !169, file: !170, line: 88, baseType: !202, size: 64, offset: 8704)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !169, file: !170, line: 89, baseType: !202, size: 64, offset: 8768)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !169, file: !170, line: 90, baseType: !446, size: 64, offset: 8832)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !169, file: !170, line: 91, baseType: !448, size: 64, offset: 8896)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !103, line: 652, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!24, !168, !452}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !169, file: !170, line: 92, baseType: !454, size: 64, offset: 8960)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !103, line: 656, baseType: !165)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !161, file: !12, line: 153, baseType: !55, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !147, file: !12, line: 156, baseType: !26, size: 32, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !147, file: !12, line: 157, baseType: !122, size: 16, offset: 416)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !147, file: !12, line: 158, baseType: !33, size: 8, offset: 432)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !49, file: !12, line: 377, baseType: !460, size: 576)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !12, line: 122, size: 576, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !460, file: !12, line: 123, baseType: !55, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !460, file: !12, line: 123, baseType: !33, size: 8, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !460, file: !12, line: 123, baseType: !33, size: 8, offset: 72)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !460, file: !12, line: 123, baseType: !59, size: 16, offset: 80)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !12, line: 123, baseType: !33, size: 8, offset: 96)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !460, file: !12, line: 123, baseType: !33, size: 8, offset: 104)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !460, file: !12, line: 124, baseType: !59, size: 16, offset: 112)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !460, file: !12, line: 125, baseType: !46, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !460, file: !12, line: 126, baseType: !30, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !460, file: !12, line: 127, baseType: !446, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !460, file: !12, line: 128, baseType: !55, size: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !460, file: !12, line: 129, baseType: !55, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !460, file: !12, line: 130, baseType: !101, size: 64, offset: 448)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !460, file: !12, line: 131, baseType: !33, size: 8, offset: 512)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !49, file: !12, line: 378, baseType: !477, size: 512)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !12, line: 134, size: 512, elements: !478)
!478 = !{!479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !490, !491}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !477, file: !12, line: 135, baseType: !55, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !477, file: !12, line: 135, baseType: !33, size: 8, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !477, file: !12, line: 135, baseType: !33, size: 8, offset: 72)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !477, file: !12, line: 135, baseType: !59, size: 16, offset: 80)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !477, file: !12, line: 135, baseType: !33, size: 8, offset: 96)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !477, file: !12, line: 135, baseType: !33, size: 8, offset: 104)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !477, file: !12, line: 136, baseType: !101, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !477, file: !12, line: 137, baseType: !55, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !477, file: !12, line: 138, baseType: !55, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !477, file: !12, line: 139, baseType: !489, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !25, line: 129, baseType: !30)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !477, file: !12, line: 140, baseType: !26, size: 32, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !477, file: !12, line: 141, baseType: !46, size: 64, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !49, file: !12, line: 379, baseType: !493, size: 320)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !12, line: 185, size: 320, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !500, !504}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !493, file: !12, line: 186, baseType: !55, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !493, file: !12, line: 186, baseType: !33, size: 8, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !493, file: !12, line: 186, baseType: !33, size: 8, offset: 72)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !493, file: !12, line: 186, baseType: !59, size: 16, offset: 80)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !12, line: 186, baseType: !33, size: 8, offset: 96)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !493, file: !12, line: 186, baseType: !501, size: 128, offset: 128)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 2)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !493, file: !12, line: 186, baseType: !55, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !49, file: !12, line: 380, baseType: !506, size: 384)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !12, line: 188, size: 384, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !506, file: !12, line: 189, baseType: !55, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !506, file: !12, line: 189, baseType: !33, size: 8, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !506, file: !12, line: 189, baseType: !33, size: 8, offset: 72)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !506, file: !12, line: 189, baseType: !59, size: 16, offset: 80)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !12, line: 189, baseType: !33, size: 8, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !506, file: !12, line: 190, baseType: !501, size: 128, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !506, file: !12, line: 190, baseType: !55, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !506, file: !12, line: 190, baseType: !516, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !103, line: 480, size: 576, elements: !518)
!518 = !{!519, !520, !521, !522, !530, !545, !577, !578, !579, !580, !581, !582}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !517, file: !103, line: 481, baseType: !101, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !517, file: !103, line: 482, baseType: !516, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !517, file: !103, line: 483, baseType: !516, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !517, file: !103, line: 484, baseType: !523, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !103, line: 497, size: 256, elements: !525)
!525 = !{!526, !527, !528, !529}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !524, file: !103, line: 498, baseType: !523, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !524, file: !103, line: 499, baseType: !523, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !524, file: !103, line: 500, baseType: !516, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !524, file: !103, line: 501, baseType: !26, size: 32, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !517, file: !103, line: 485, baseType: !531, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !103, line: 466, size: 320, elements: !533)
!533 = !{!534, !539, !540, !541, !542, !543, !544}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !532, file: !103, line: 467, baseType: !535, size: 128)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !103, line: 459, size: 128, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !535, file: !103, line: 460, baseType: !33, size: 8)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !535, file: !103, line: 461, baseType: !30, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !532, file: !103, line: 468, baseType: !535, size: 128, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !532, file: !103, line: 469, baseType: !59, size: 16, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !532, file: !103, line: 470, baseType: !33, size: 8, offset: 272)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !532, file: !103, line: 471, baseType: !33, size: 8, offset: 280)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !532, file: !103, line: 472, baseType: !33, size: 8, offset: 288)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !532, file: !103, line: 473, baseType: !33, size: 8, offset: 296)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !517, file: !103, line: 486, baseType: !546, size: 64, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !103, line: 448, size: 192, elements: !548)
!548 = !{!549, !572, !573, !574, !575, !576}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !547, file: !103, line: 449, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !103, line: 438, size: 64, elements: !551)
!551 = !{!552, !553, !566}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !550, file: !103, line: 439, baseType: !101, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !550, file: !103, line: 440, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !103, line: 419, size: 256, elements: !556)
!556 = !{!557, !562, !563, !564, !565}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !555, file: !103, line: 420, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !25, line: 1058, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!26, !397, !26, !46}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !555, file: !103, line: 421, baseType: !46, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !555, file: !103, line: 422, baseType: !101, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !555, file: !103, line: 423, baseType: !33, size: 8, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !555, file: !103, line: 424, baseType: !33, size: 8, offset: 200)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !550, file: !103, line: 441, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !103, line: 429, size: 128, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !568, file: !103, line: 430, baseType: !101, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !568, file: !103, line: 431, baseType: !567, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !547, file: !103, line: 450, baseType: !531, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !547, file: !103, line: 451, baseType: !33, size: 8, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !547, file: !103, line: 452, baseType: !33, size: 8, offset: 136)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !547, file: !103, line: 453, baseType: !33, size: 8, offset: 144)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !547, file: !103, line: 454, baseType: !33, size: 8, offset: 152)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !517, file: !103, line: 487, baseType: !30, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !517, file: !103, line: 488, baseType: !26, size: 32, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !517, file: !103, line: 489, baseType: !59, size: 16, offset: 480)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !517, file: !103, line: 490, baseType: !59, size: 16, offset: 496)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !517, file: !103, line: 491, baseType: !33, size: 8, offset: 512)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !517, file: !103, line: 492, baseType: !33, size: 8, offset: 520)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !49, file: !12, line: 381, baseType: !584, size: 384)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !12, line: 193, size: 384, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !584, file: !12, line: 194, baseType: !55, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !584, file: !12, line: 194, baseType: !33, size: 8, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !584, file: !12, line: 194, baseType: !33, size: 8, offset: 72)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !584, file: !12, line: 194, baseType: !59, size: 16, offset: 80)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !584, file: !12, line: 194, baseType: !33, size: 8, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !584, file: !12, line: 194, baseType: !501, size: 128, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !584, file: !12, line: 194, baseType: !55, size: 64, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !584, file: !12, line: 194, baseType: !26, size: 32, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !584, file: !12, line: 195, baseType: !26, size: 32, offset: 352)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !49, file: !12, line: 382, baseType: !596, size: 384)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !12, line: 198, size: 384, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !606, !607}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !596, file: !12, line: 199, baseType: !55, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !596, file: !12, line: 199, baseType: !33, size: 8, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !596, file: !12, line: 199, baseType: !33, size: 8, offset: 72)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !596, file: !12, line: 199, baseType: !59, size: 16, offset: 80)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !12, line: 199, baseType: !33, size: 8, offset: 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !596, file: !12, line: 201, baseType: !33, size: 8, offset: 104)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !596, file: !12, line: 202, baseType: !33, size: 8, offset: 112)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !596, file: !12, line: 203, baseType: !501, size: 128, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !596, file: !12, line: 203, baseType: !55, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !596, file: !12, line: 203, baseType: !608, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !25, line: 128, baseType: !30)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !49, file: !12, line: 383, baseType: !610, size: 320)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !12, line: 206, size: 320, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !618}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !610, file: !12, line: 207, baseType: !55, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !610, file: !12, line: 207, baseType: !33, size: 8, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !610, file: !12, line: 207, baseType: !33, size: 8, offset: 72)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !610, file: !12, line: 207, baseType: !59, size: 16, offset: 80)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !610, file: !12, line: 207, baseType: !33, size: 8, offset: 96)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !610, file: !12, line: 207, baseType: !501, size: 128, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !610, file: !12, line: 207, baseType: !55, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !49, file: !12, line: 384, baseType: !620, size: 384)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !12, line: 234, size: 384, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !620, file: !12, line: 235, baseType: !55, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !620, file: !12, line: 235, baseType: !33, size: 8, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !620, file: !12, line: 235, baseType: !33, size: 8, offset: 72)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !620, file: !12, line: 235, baseType: !59, size: 16, offset: 80)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !12, line: 235, baseType: !33, size: 8, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !620, file: !12, line: 235, baseType: !33, size: 8, offset: 104)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !620, file: !12, line: 235, baseType: !33, size: 8, offset: 112)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !620, file: !12, line: 235, baseType: !33, size: 8, offset: 120)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !620, file: !12, line: 235, baseType: !101, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !620, file: !12, line: 235, baseType: !26, size: 32, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !620, file: !12, line: 235, baseType: !26, size: 32, offset: 224)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !620, file: !12, line: 235, baseType: !26, size: 32, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !620, file: !12, line: 235, baseType: !33, size: 8, offset: 288)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !620, file: !12, line: 235, baseType: !33, size: 8, offset: 296)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !620, file: !12, line: 235, baseType: !55, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !49, file: !12, line: 385, baseType: !638, size: 576)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !12, line: 238, size: 576, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !638, file: !12, line: 239, baseType: !55, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !638, file: !12, line: 239, baseType: !33, size: 8, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !12, line: 239, baseType: !33, size: 8, offset: 72)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !638, file: !12, line: 239, baseType: !59, size: 16, offset: 80)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !12, line: 239, baseType: !33, size: 8, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !638, file: !12, line: 239, baseType: !33, size: 8, offset: 104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !638, file: !12, line: 239, baseType: !33, size: 8, offset: 112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !638, file: !12, line: 239, baseType: !33, size: 8, offset: 120)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !12, line: 239, baseType: !101, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !638, file: !12, line: 239, baseType: !26, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !638, file: !12, line: 239, baseType: !26, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !638, file: !12, line: 239, baseType: !26, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !638, file: !12, line: 239, baseType: !33, size: 8, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !638, file: !12, line: 239, baseType: !33, size: 8, offset: 296)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !638, file: !12, line: 239, baseType: !59, size: 16, offset: 304)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !638, file: !12, line: 240, baseType: !55, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !638, file: !12, line: 241, baseType: !96, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !638, file: !12, line: 242, baseType: !59, size: 16, offset: 448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !638, file: !12, line: 243, baseType: !96, size: 64, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !49, file: !12, line: 386, baseType: !660, size: 384)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !12, line: 263, size: 384, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !660, file: !12, line: 264, baseType: !55, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !660, file: !12, line: 264, baseType: !33, size: 8, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !660, file: !12, line: 264, baseType: !33, size: 8, offset: 72)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !660, file: !12, line: 264, baseType: !59, size: 16, offset: 80)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !12, line: 264, baseType: !33, size: 8, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !660, file: !12, line: 264, baseType: !33, size: 8, offset: 104)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !660, file: !12, line: 264, baseType: !33, size: 8, offset: 112)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !660, file: !12, line: 264, baseType: !33, size: 8, offset: 120)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !660, file: !12, line: 264, baseType: !101, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !660, file: !12, line: 264, baseType: !26, size: 32, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !660, file: !12, line: 264, baseType: !26, size: 32, offset: 224)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !660, file: !12, line: 264, baseType: !26, size: 32, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !660, file: !12, line: 264, baseType: !33, size: 8, offset: 288)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !660, file: !12, line: 264, baseType: !33, size: 8, offset: 296)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !660, file: !12, line: 264, baseType: !33, size: 8, offset: 304)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !660, file: !12, line: 265, baseType: !55, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !49, file: !12, line: 387, baseType: !679, size: 448)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !12, line: 246, size: 448, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !679, file: !12, line: 247, baseType: !55, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !679, file: !12, line: 247, baseType: !33, size: 8, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !679, file: !12, line: 247, baseType: !33, size: 8, offset: 72)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !679, file: !12, line: 247, baseType: !59, size: 16, offset: 80)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !679, file: !12, line: 247, baseType: !33, size: 8, offset: 96)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !679, file: !12, line: 247, baseType: !33, size: 8, offset: 104)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !679, file: !12, line: 247, baseType: !33, size: 8, offset: 112)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !679, file: !12, line: 247, baseType: !33, size: 8, offset: 120)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !679, file: !12, line: 247, baseType: !101, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !679, file: !12, line: 247, baseType: !26, size: 32, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !679, file: !12, line: 247, baseType: !26, size: 32, offset: 224)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !679, file: !12, line: 247, baseType: !26, size: 32, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !679, file: !12, line: 247, baseType: !33, size: 8, offset: 288)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !679, file: !12, line: 247, baseType: !33, size: 8, offset: 296)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !679, file: !12, line: 247, baseType: !55, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !679, file: !12, line: 248, baseType: !55, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !49, file: !12, line: 388, baseType: !698, size: 448)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !12, line: 251, size: 448, elements: !699)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !698, file: !12, line: 252, baseType: !55, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !698, file: !12, line: 252, baseType: !33, size: 8, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !698, file: !12, line: 252, baseType: !33, size: 8, offset: 72)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !698, file: !12, line: 252, baseType: !59, size: 16, offset: 80)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !12, line: 252, baseType: !33, size: 8, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !698, file: !12, line: 252, baseType: !33, size: 8, offset: 104)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !698, file: !12, line: 252, baseType: !33, size: 8, offset: 112)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !698, file: !12, line: 252, baseType: !33, size: 8, offset: 120)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !698, file: !12, line: 252, baseType: !101, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !698, file: !12, line: 252, baseType: !26, size: 32, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !698, file: !12, line: 252, baseType: !26, size: 32, offset: 224)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !698, file: !12, line: 252, baseType: !26, size: 32, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !698, file: !12, line: 252, baseType: !33, size: 8, offset: 288)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !698, file: !12, line: 252, baseType: !33, size: 8, offset: 296)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !698, file: !12, line: 257, baseType: !55, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !698, file: !12, line: 258, baseType: !55, size: 64, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !49, file: !12, line: 389, baseType: !717, size: 512)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !12, line: 274, size: 512, elements: !718)
!718 = !{!719, !720, !721, !722, !723, !724, !725, !726, !727, !728}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !717, file: !12, line: 275, baseType: !55, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !717, file: !12, line: 275, baseType: !33, size: 8, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !717, file: !12, line: 275, baseType: !33, size: 8, offset: 72)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !717, file: !12, line: 275, baseType: !59, size: 16, offset: 80)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !12, line: 275, baseType: !33, size: 8, offset: 96)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !717, file: !12, line: 275, baseType: !101, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !717, file: !12, line: 276, baseType: !26, size: 32, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !717, file: !12, line: 277, baseType: !393, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !717, file: !12, line: 278, baseType: !46, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !717, file: !12, line: 279, baseType: !501, size: 128, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !49, file: !12, line: 390, baseType: !730, size: 576)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !12, line: 282, size: 576, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !745, !746, !747, !748, !754, !755}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !730, file: !12, line: 283, baseType: !55, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !730, file: !12, line: 283, baseType: !33, size: 8, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !730, file: !12, line: 283, baseType: !33, size: 8, offset: 72)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !730, file: !12, line: 283, baseType: !59, size: 16, offset: 80)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !12, line: 283, baseType: !33, size: 8, offset: 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !730, file: !12, line: 283, baseType: !33, size: 8, offset: 104)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !730, file: !12, line: 284, baseType: !33, size: 8, offset: 112)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !730, file: !12, line: 285, baseType: !740, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !25, line: 1093, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!24, !26, !489, !26, !744, !46, !46}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !730, file: !12, line: 286, baseType: !101, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !730, file: !12, line: 287, baseType: !46, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !730, file: !12, line: 288, baseType: !46, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !730, file: !12, line: 289, baseType: !749, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !25, line: 1126, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!24, !397, !26, !46, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !730, file: !12, line: 290, baseType: !55, size: 64, offset: 448)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !730, file: !12, line: 291, baseType: !55, size: 64, offset: 512)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !49, file: !12, line: 391, baseType: !757, size: 512)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !12, line: 309, size: 512, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !757, file: !12, line: 310, baseType: !55, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !757, file: !12, line: 310, baseType: !33, size: 8, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !757, file: !12, line: 310, baseType: !33, size: 8, offset: 72)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !757, file: !12, line: 310, baseType: !59, size: 16, offset: 80)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !757, file: !12, line: 310, baseType: !33, size: 8, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !757, file: !12, line: 310, baseType: !33, size: 8, offset: 104)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !757, file: !12, line: 311, baseType: !33, size: 8, offset: 112)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !757, file: !12, line: 312, baseType: !33, size: 8, offset: 120)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !757, file: !12, line: 313, baseType: !46, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !757, file: !12, line: 314, baseType: !101, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !757, file: !12, line: 315, baseType: !133, size: 64, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !757, file: !12, line: 316, baseType: !96, size: 64, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !757, file: !12, line: 317, baseType: !96, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !757, file: !12, line: 318, baseType: !26, size: 32, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !49, file: !12, line: 392, baseType: !774, size: 448)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !12, line: 342, size: 448, elements: !775)
!775 = !{!776, !777, !778, !779, !780, !781, !782, !783, !784, !785}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !774, file: !12, line: 343, baseType: !55, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !774, file: !12, line: 343, baseType: !33, size: 8, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !774, file: !12, line: 343, baseType: !33, size: 8, offset: 72)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !774, file: !12, line: 343, baseType: !59, size: 16, offset: 80)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !12, line: 343, baseType: !33, size: 8, offset: 96)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !774, file: !12, line: 343, baseType: !101, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !774, file: !12, line: 344, baseType: !101, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !774, file: !12, line: 345, baseType: !46, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !774, file: !12, line: 346, baseType: !96, size: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !774, file: !12, line: 347, baseType: !26, size: 32, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !49, file: !12, line: 393, baseType: !787, size: 256)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !12, line: 352, size: 256, elements: !788)
!788 = !{!789, !790, !791, !792, !793, !794, !799}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !787, file: !12, line: 353, baseType: !55, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !787, file: !12, line: 353, baseType: !33, size: 8, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !787, file: !12, line: 353, baseType: !33, size: 8, offset: 72)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !787, file: !12, line: 353, baseType: !59, size: 16, offset: 80)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !787, file: !12, line: 353, baseType: !33, size: 8, offset: 96)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !787, file: !12, line: 353, baseType: !795, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !25, line: 1064, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !397, !46}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !787, file: !12, line: 354, baseType: !46, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !49, file: !12, line: 394, baseType: !801, size: 192)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !12, line: 359, size: 192, elements: !802)
!802 = !{!803, !804, !805, !806, !807, !808}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !801, file: !12, line: 360, baseType: !55, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !801, file: !12, line: 360, baseType: !33, size: 8, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !801, file: !12, line: 360, baseType: !33, size: 8, offset: 72)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !801, file: !12, line: 360, baseType: !59, size: 16, offset: 80)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !801, file: !12, line: 360, baseType: !33, size: 8, offset: 96)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !801, file: !12, line: 360, baseType: !55, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !49, file: !12, line: 401, baseType: !102, size: 384)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !40, file: !12, line: 437, baseType: !102, size: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !40, file: !12, line: 438, baseType: !203, size: 1600)
!812 = !{!0, !813, !7}
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !2, line: 364, type: !815, isLocal: true, isDefinition: true)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 34)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 80, elements: !820)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!820 = !{!821}
!821 = !DISubrange(count: 10)
!822 = !{i32 7, !"Dwarf Version", i32 5}
!823 = !{i32 2, !"Debug Info Version", i32 3}
!824 = !{i32 1, !"wchar_size", i32 2}
!825 = !{i32 8, !"cf-protection-branch", i32 1}
!826 = !{i32 4, !"function_return_thunk_extern", i32 1}
!827 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!828 = !{i32 1, !"Code Model", i32 2}
!829 = !{i32 1, !"override-stack-alignment", i32 8}
!830 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!831 = distinct !DISubprogram(name: "acpi_ds_exec_begin_control_op", scope: !2, file: !2, line: 35, type: !832, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !834)
!832 = !DISubroutineType(types: !833)
!833 = !{!24, !168, !202}
!834 = !{!835, !836, !837, !838}
!835 = !DILocalVariable(name: "walk_state", arg: 1, scope: !831, file: !2, line: 35, type: !168)
!836 = !DILocalVariable(name: "op", arg: 2, scope: !831, file: !2, line: 36, type: !202)
!837 = !DILocalVariable(name: "status", scope: !831, file: !2, line: 38, type: !24)
!838 = !DILocalVariable(name: "control_state", scope: !831, file: !2, line: 39, type: !284)
!839 = !DILocation(line: 35, column: 55, scope: !831)
!840 = !DILocation(line: 36, column: 35, scope: !831)
!841 = !DILocation(line: 38, column: 2, scope: !831)
!842 = !DILocation(line: 38, column: 14, scope: !831)
!843 = !DILocation(line: 39, column: 2, scope: !831)
!844 = !DILocation(line: 39, column: 28, scope: !831)
!845 = !DILocation(line: 46, column: 10, scope: !831)
!846 = !DILocation(line: 46, column: 21, scope: !831)
!847 = !DILocation(line: 46, column: 2, scope: !831)
!848 = !DILocation(line: 52, column: 7, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !2, line: 52, column: 7)
!850 = distinct !DILexicalBlock(scope: !831, file: !2, line: 46, column: 33)
!851 = !DILocation(line: 52, column: 19, scope: !849)
!852 = !DILocation(line: 52, column: 7, scope: !850)
!853 = !DILocation(line: 53, column: 8, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !2, line: 53, column: 8)
!855 = distinct !DILexicalBlock(scope: !849, file: !2, line: 52, column: 34)
!856 = !DILocation(line: 53, column: 20, scope: !854)
!857 = !DILocation(line: 54, column: 8, scope: !854)
!858 = !DILocation(line: 55, column: 9, scope: !854)
!859 = !DILocation(line: 55, column: 21, scope: !854)
!860 = !DILocation(line: 55, column: 34, scope: !854)
!861 = !DILocation(line: 55, column: 38, scope: !854)
!862 = !DILocation(line: 54, column: 28, scope: !854)
!863 = !DILocation(line: 53, column: 8, scope: !855)
!864 = !DILocation(line: 59, column: 5, scope: !865)
!865 = distinct !DILexicalBlock(scope: !854, file: !2, line: 55, column: 44)
!866 = !DILocation(line: 59, column: 17, scope: !865)
!867 = !DILocation(line: 59, column: 39, scope: !865)
!868 = !DILocation(line: 59, column: 45, scope: !865)
!869 = !DILocation(line: 61, column: 5, scope: !865)
!870 = !DILocation(line: 63, column: 3, scope: !855)
!871 = !DILocation(line: 73, column: 19, scope: !850)
!872 = !DILocation(line: 73, column: 17, scope: !850)
!873 = !DILocation(line: 74, column: 8, scope: !874)
!874 = distinct !DILexicalBlock(scope: !850, file: !2, line: 74, column: 7)
!875 = !DILocation(line: 74, column: 7, scope: !850)
!876 = !DILocation(line: 75, column: 11, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !2, line: 74, column: 23)
!878 = !DILocation(line: 76, column: 4, scope: !877)
!879 = !DILocation(line: 83, column: 7, scope: !850)
!880 = !DILocation(line: 83, column: 19, scope: !850)
!881 = !DILocation(line: 83, column: 32, scope: !850)
!882 = !DILocation(line: 83, column: 36, scope: !850)
!883 = !DILocation(line: 82, column: 3, scope: !850)
!884 = !DILocation(line: 82, column: 26, scope: !850)
!885 = !DILocation(line: 82, column: 46, scope: !850)
!886 = !DILocation(line: 85, column: 7, scope: !850)
!887 = !DILocation(line: 85, column: 19, scope: !850)
!888 = !DILocation(line: 85, column: 32, scope: !850)
!889 = !DILocation(line: 84, column: 3, scope: !850)
!890 = !DILocation(line: 84, column: 26, scope: !850)
!891 = !DILocation(line: 84, column: 38, scope: !850)
!892 = !DILocation(line: 86, column: 35, scope: !850)
!893 = !DILocation(line: 86, column: 46, scope: !850)
!894 = !DILocation(line: 86, column: 3, scope: !850)
!895 = !DILocation(line: 86, column: 26, scope: !850)
!896 = !DILocation(line: 86, column: 33, scope: !850)
!897 = !DILocation(line: 87, column: 41, scope: !850)
!898 = !DILocation(line: 88, column: 13, scope: !850)
!899 = !DILocation(line: 88, column: 8, scope: !850)
!900 = !DILocation(line: 88, column: 42, scope: !850)
!901 = !DILocation(line: 87, column: 61, scope: !850)
!902 = !DILocation(line: 87, column: 3, scope: !850)
!903 = !DILocation(line: 87, column: 26, scope: !850)
!904 = !DILocation(line: 87, column: 39, scope: !850)
!905 = !DILocation(line: 92, column: 31, scope: !850)
!906 = !DILocation(line: 92, column: 43, scope: !850)
!907 = !DILocation(line: 93, column: 9, scope: !850)
!908 = !DILocation(line: 92, column: 3, scope: !850)
!909 = !DILocation(line: 94, column: 3, scope: !850)
!910 = !DILocation(line: 101, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !850, file: !2, line: 101, column: 7)
!912 = !DILocation(line: 101, column: 19, scope: !911)
!913 = !DILocation(line: 101, column: 7, scope: !850)
!914 = !DILocation(line: 102, column: 11, scope: !915)
!915 = distinct !DILexicalBlock(scope: !911, file: !2, line: 101, column: 35)
!916 = !DILocation(line: 103, column: 3, scope: !915)
!917 = !DILocation(line: 105, column: 3, scope: !850)
!918 = !DILocation(line: 113, column: 3, scope: !850)
!919 = !DILocation(line: 116, column: 10, scope: !831)
!920 = !DILocation(line: 117, column: 1, scope: !831)
!921 = !DILocation(line: 116, column: 2, scope: !831)
!922 = !DISubprogram(name: "acpi_ut_create_control_state", scope: !923, file: !923, line: 529, type: !924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!923 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!924 = !DISubroutineType(types: !925)
!925 = !{!284}
!926 = !DISubprogram(name: "acpi_os_get_timer", scope: !927, file: !927, line: 318, type: !928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!927 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!928 = !DISubroutineType(types: !929)
!929 = !{!30}
!930 = !DISubprogram(name: "acpi_ut_push_generic_state", scope: !923, file: !923, line: 507, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !933, !284}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!934 = distinct !DISubprogram(name: "acpi_ds_exec_end_control_op", scope: !2, file: !2, line: 134, type: !832, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !935)
!935 = !{!936, !937, !938, !939}
!936 = !DILocalVariable(name: "walk_state", arg: 1, scope: !934, file: !2, line: 134, type: !168)
!937 = !DILocalVariable(name: "op", arg: 2, scope: !934, file: !2, line: 135, type: !202)
!938 = !DILocalVariable(name: "status", scope: !934, file: !2, line: 137, type: !24)
!939 = !DILocalVariable(name: "control_state", scope: !934, file: !2, line: 138, type: !284)
!940 = !DILocation(line: 134, column: 53, scope: !934)
!941 = !DILocation(line: 135, column: 33, scope: !934)
!942 = !DILocation(line: 137, column: 2, scope: !934)
!943 = !DILocation(line: 137, column: 14, scope: !934)
!944 = !DILocation(line: 138, column: 2, scope: !934)
!945 = !DILocation(line: 138, column: 28, scope: !934)
!946 = !DILocation(line: 142, column: 10, scope: !934)
!947 = !DILocation(line: 142, column: 21, scope: !934)
!948 = !DILocation(line: 142, column: 2, scope: !934)
!949 = !DILocation(line: 152, column: 11, scope: !950)
!950 = distinct !DILexicalBlock(scope: !934, file: !2, line: 142, column: 33)
!951 = !DILocation(line: 152, column: 23, scope: !950)
!952 = !DILocation(line: 152, column: 45, scope: !950)
!953 = !DILocation(line: 152, column: 7, scope: !950)
!954 = !DILocation(line: 151, column: 3, scope: !950)
!955 = !DILocation(line: 151, column: 15, scope: !950)
!956 = !DILocation(line: 151, column: 30, scope: !950)
!957 = !DILocation(line: 159, column: 34, scope: !950)
!958 = !DILocation(line: 159, column: 46, scope: !950)
!959 = !DILocation(line: 159, column: 7, scope: !950)
!960 = !DILocation(line: 158, column: 17, scope: !950)
!961 = !DILocation(line: 160, column: 32, scope: !950)
!962 = !DILocation(line: 160, column: 3, scope: !950)
!963 = !DILocation(line: 161, column: 3, scope: !950)
!964 = !DILocation(line: 171, column: 19, scope: !950)
!965 = !DILocation(line: 171, column: 31, scope: !950)
!966 = !DILocation(line: 171, column: 17, scope: !950)
!967 = !DILocation(line: 172, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !950, file: !2, line: 172, column: 7)
!969 = !DILocation(line: 172, column: 29, scope: !968)
!970 = !DILocation(line: 172, column: 7, scope: !950)
!971 = !DILocation(line: 182, column: 8, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !2, line: 182, column: 8)
!973 = distinct !DILexicalBlock(scope: !968, file: !2, line: 172, column: 36)
!974 = !DILocation(line: 182, column: 8, scope: !973)
!975 = !DILocation(line: 185, column: 12, scope: !976)
!976 = distinct !DILexicalBlock(scope: !972, file: !2, line: 184, column: 25)
!977 = !DILocation(line: 186, column: 5, scope: !976)
!978 = !DILocation(line: 193, column: 11, scope: !973)
!979 = !DILocation(line: 195, column: 8, scope: !973)
!980 = !DILocation(line: 195, column: 31, scope: !973)
!981 = !DILocation(line: 194, column: 4, scope: !973)
!982 = !DILocation(line: 194, column: 16, scope: !973)
!983 = !DILocation(line: 194, column: 31, scope: !973)
!984 = !DILocation(line: 196, column: 4, scope: !973)
!985 = !DILocation(line: 207, column: 34, scope: !950)
!986 = !DILocation(line: 207, column: 46, scope: !950)
!987 = !DILocation(line: 207, column: 7, scope: !950)
!988 = !DILocation(line: 206, column: 17, scope: !950)
!989 = !DILocation(line: 208, column: 32, scope: !950)
!990 = !DILocation(line: 208, column: 3, scope: !950)
!991 = !DILocation(line: 209, column: 3, scope: !950)
!992 = !DILocation(line: 222, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !950, file: !2, line: 222, column: 7)
!994 = !DILocation(line: 222, column: 18, scope: !993)
!995 = !DILocation(line: 222, column: 24, scope: !993)
!996 = !DILocation(line: 222, column: 7, scope: !950)
!997 = !DILocation(line: 226, column: 34, scope: !998)
!998 = distinct !DILexicalBlock(scope: !993, file: !2, line: 222, column: 29)
!999 = !DILocation(line: 226, column: 4, scope: !998)
!1000 = !DILocation(line: 231, column: 32, scope: !998)
!1001 = !DILocation(line: 232, column: 11, scope: !998)
!1002 = !DILocation(line: 232, column: 22, scope: !998)
!1003 = !DILocation(line: 232, column: 28, scope: !998)
!1004 = !DILocation(line: 231, column: 8, scope: !998)
!1005 = !DILocation(line: 230, column: 11, scope: !998)
!1006 = !DILocation(line: 233, column: 8, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !998, file: !2, line: 233, column: 8)
!1008 = !DILocation(line: 233, column: 8, scope: !998)
!1009 = !DILocation(line: 234, column: 13, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 233, column: 30)
!1011 = !DILocation(line: 234, column: 5, scope: !1010)
!1012 = !DILocation(line: 243, column: 34, scope: !998)
!1013 = !DILocation(line: 243, column: 46, scope: !998)
!1014 = !DILocation(line: 244, column: 12, scope: !998)
!1015 = !DILocation(line: 243, column: 8, scope: !998)
!1016 = !DILocation(line: 242, column: 11, scope: !998)
!1017 = !DILocation(line: 245, column: 8, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !998, file: !2, line: 245, column: 8)
!1019 = !DILocation(line: 245, column: 8, scope: !998)
!1020 = !DILocation(line: 246, column: 13, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 245, column: 30)
!1022 = !DILocation(line: 246, column: 5, scope: !1021)
!1023 = !DILocation(line: 254, column: 30, scope: !998)
!1024 = !DILocation(line: 254, column: 42, scope: !998)
!1025 = !DILocation(line: 254, column: 4, scope: !998)
!1026 = !DILocation(line: 254, column: 16, scope: !998)
!1027 = !DILocation(line: 254, column: 28, scope: !998)
!1028 = !DILocation(line: 255, column: 3, scope: !998)
!1029 = !DILocation(line: 255, column: 14, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !993, file: !2, line: 255, column: 14)
!1031 = !DILocation(line: 255, column: 26, scope: !1030)
!1032 = !DILocation(line: 255, column: 14, scope: !993)
!1033 = !DILocation(line: 259, column: 34, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 255, column: 40)
!1035 = !DILocation(line: 259, column: 4, scope: !1034)
!1036 = !DILocation(line: 271, column: 9, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !2, line: 271, column: 8)
!1038 = !DILocation(line: 272, column: 52, scope: !1037)
!1039 = !DILocation(line: 274, column: 8, scope: !1037)
!1040 = !DILocation(line: 274, column: 13, scope: !1037)
!1041 = !DILocation(line: 274, column: 25, scope: !1037)
!1042 = !DILocation(line: 274, column: 42, scope: !1037)
!1043 = !DILocation(line: 275, column: 12, scope: !1037)
!1044 = !DILocation(line: 274, column: 12, scope: !1037)
!1045 = !DILocation(line: 275, column: 17, scope: !1037)
!1046 = !DILocation(line: 276, column: 8, scope: !1037)
!1047 = !DILocation(line: 276, column: 13, scope: !1037)
!1048 = !DILocation(line: 276, column: 25, scope: !1037)
!1049 = !DILocation(line: 276, column: 42, scope: !1037)
!1050 = !DILocation(line: 277, column: 15, scope: !1037)
!1051 = !DILocation(line: 276, column: 12, scope: !1037)
!1052 = !DILocation(line: 277, column: 21, scope: !1037)
!1053 = !DILocation(line: 271, column: 8, scope: !1034)
!1054 = !DILocation(line: 279, column: 35, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 277, column: 46)
!1056 = !DILocation(line: 280, column: 13, scope: !1055)
!1057 = !DILocation(line: 281, column: 13, scope: !1055)
!1058 = !DILocation(line: 282, column: 13, scope: !1055)
!1059 = !DILocation(line: 279, column: 9, scope: !1055)
!1060 = !DILocation(line: 278, column: 12, scope: !1055)
!1061 = !DILocation(line: 283, column: 9, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 283, column: 9)
!1063 = !DILocation(line: 283, column: 9, scope: !1055)
!1064 = !DILocation(line: 284, column: 14, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 283, column: 31)
!1066 = !DILocation(line: 284, column: 6, scope: !1065)
!1067 = !DILocation(line: 286, column: 4, scope: !1055)
!1068 = !DILocation(line: 289, column: 8, scope: !1034)
!1069 = !DILocation(line: 289, column: 20, scope: !1034)
!1070 = !DILocation(line: 289, column: 37, scope: !1034)
!1071 = !DILocation(line: 288, column: 4, scope: !1034)
!1072 = !DILocation(line: 288, column: 16, scope: !1034)
!1073 = !DILocation(line: 288, column: 28, scope: !1034)
!1074 = !DILocation(line: 290, column: 3, scope: !1034)
!1075 = !DILocation(line: 293, column: 8, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 293, column: 8)
!1077 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 290, column: 10)
!1078 = !DILocation(line: 293, column: 20, scope: !1076)
!1079 = !DILocation(line: 293, column: 8, scope: !1077)
!1080 = !DILocation(line: 294, column: 30, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 293, column: 34)
!1082 = !DILocation(line: 295, column: 9, scope: !1081)
!1083 = !DILocation(line: 294, column: 5, scope: !1081)
!1084 = !DILocation(line: 296, column: 4, scope: !1081)
!1085 = !DILocation(line: 298, column: 4, scope: !1077)
!1086 = !DILocation(line: 298, column: 16, scope: !1077)
!1087 = !DILocation(line: 298, column: 28, scope: !1077)
!1088 = !DILocation(line: 299, column: 4, scope: !1077)
!1089 = !DILocation(line: 299, column: 16, scope: !1077)
!1090 = !DILocation(line: 299, column: 29, scope: !1077)
!1091 = !DILocation(line: 300, column: 4, scope: !1077)
!1092 = !DILocation(line: 300, column: 16, scope: !1077)
!1093 = !DILocation(line: 300, column: 28, scope: !1077)
!1094 = !DILocation(line: 309, column: 10, scope: !950)
!1095 = !DILocation(line: 310, column: 3, scope: !950)
!1096 = !DILocation(line: 320, column: 30, scope: !950)
!1097 = !DILocation(line: 320, column: 3, scope: !950)
!1098 = !DILocation(line: 324, column: 12, scope: !950)
!1099 = !DILocation(line: 324, column: 10, scope: !950)
!1100 = !DILocation(line: 326, column: 3, scope: !950)
!1101 = !DILocation(line: 333, column: 3, scope: !950)
!1102 = !DILocation(line: 333, column: 10, scope: !950)
!1103 = !DILocation(line: 333, column: 22, scope: !950)
!1104 = !DILocation(line: 333, column: 36, scope: !950)
!1105 = !DILocation(line: 334, column: 11, scope: !950)
!1106 = !DILocation(line: 334, column: 23, scope: !950)
!1107 = !DILocation(line: 334, column: 46, scope: !950)
!1108 = !DILocation(line: 334, column: 53, scope: !950)
!1109 = !DILocation(line: 0, scope: !950)
!1110 = !DILocation(line: 337, column: 35, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !950, file: !2, line: 335, column: 19)
!1112 = !DILocation(line: 338, column: 13, scope: !1111)
!1113 = !DILocation(line: 337, column: 8, scope: !1111)
!1114 = !DILocation(line: 336, column: 18, scope: !1111)
!1115 = !DILocation(line: 339, column: 33, scope: !1111)
!1116 = !DILocation(line: 339, column: 4, scope: !1111)
!1117 = distinct !{!1117, !1101, !1118, !1119, !1120}
!1118 = !DILocation(line: 340, column: 3, scope: !950)
!1119 = !{!"llvm.loop.mustprogress"}
!1120 = !{!"llvm.loop.unroll.disable"}
!1121 = !DILocation(line: 344, column: 8, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !950, file: !2, line: 344, column: 7)
!1123 = !DILocation(line: 344, column: 20, scope: !1122)
!1124 = !DILocation(line: 344, column: 7, scope: !950)
!1125 = !DILocation(line: 345, column: 4, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 344, column: 35)
!1127 = !DILocation(line: 351, column: 7, scope: !950)
!1128 = !DILocation(line: 351, column: 19, scope: !950)
!1129 = !DILocation(line: 351, column: 42, scope: !950)
!1130 = !DILocation(line: 350, column: 3, scope: !950)
!1131 = !DILocation(line: 350, column: 15, scope: !950)
!1132 = !DILocation(line: 350, column: 30, scope: !950)
!1133 = !DILocation(line: 355, column: 7, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !950, file: !2, line: 355, column: 7)
!1135 = !DILocation(line: 355, column: 18, scope: !1134)
!1136 = !DILocation(line: 355, column: 29, scope: !1134)
!1137 = !DILocation(line: 355, column: 7, scope: !950)
!1138 = !DILocation(line: 356, column: 11, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 355, column: 46)
!1140 = !DILocation(line: 357, column: 3, scope: !1139)
!1141 = !DILocation(line: 358, column: 11, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 357, column: 10)
!1143 = !DILocation(line: 360, column: 3, scope: !950)
!1144 = !DILocation(line: 364, column: 3, scope: !950)
!1145 = !DILocation(line: 367, column: 10, scope: !950)
!1146 = !DILocation(line: 368, column: 3, scope: !950)
!1147 = !DILocation(line: 371, column: 10, scope: !934)
!1148 = !DILocation(line: 371, column: 2, scope: !934)
!1149 = !DILocation(line: 372, column: 1, scope: !934)
!1150 = !DISubprogram(name: "acpi_ut_pop_generic_state", scope: !923, file: !923, line: 510, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!284, !933}
!1153 = !DISubprogram(name: "acpi_ut_delete_generic_state", scope: !923, file: !923, line: 531, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null, !284}
!1156 = !DISubprogram(name: "acpi_ds_clear_implicit_return", scope: !1157, file: !1157, line: 243, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1157 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !168}
!1160 = !DISubprogram(name: "acpi_ds_create_operands", scope: !1157, file: !1157, line: 264, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1161 = !DISubprogram(name: "acpi_ex_resolve_to_value", scope: !1162, file: !1162, line: 357, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1162 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!24, !133, !168}
!1165 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !923, file: !923, line: 369, type: !1166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !55}
!1168 = distinct !DISubprogram(name: "acpi_db_signal_break_point", scope: !1169, file: !1169, line: 57, type: !1158, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1170)
!1169 = !DIFile(filename: "drivers/acpi/acpica/acdebug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a2d892046e641bda42bdda5dae6db1e6")
!1170 = !{!1171}
!1171 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1168, file: !1169, line: 57, type: !168)
!1172 = !DILocation(line: 57, column: 2, scope: !1168)
!1173 = !DISubprogram(name: "acpi_os_signal", scope: !927, file: !927, line: 322, type: !1174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!24, !26, !46}
!1176 = !DISubprogram(name: "acpi_error", scope: !1177, file: !1177, line: 901, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1177 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1178 = !DISubroutineType(types: !1179)
!1179 = !{null, !1180, !26, !1180, null}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
