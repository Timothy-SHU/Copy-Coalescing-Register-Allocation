; ModuleID = 'drivers/acpi/acpica/dswload.c'
source_filename = "drivers/acpi/acpica/dswload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_common_state = type { ptr, i8, i8, i16, i16 }
%struct.acpi_parse_obj_named = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8, ptr, ptr, i32, i32 }

@_acpi_module_name = internal constant [8 x i8] c"dswload\00", align 1, !dbg !0
@acpi_gbl_root_node = external dso_local global ptr, align 8
@.str = private unnamed_addr constant [73 x i8] c"Invalid type (%s) for target of Scope operator [%4.4s] (Cannot override)\00", align 1, !dbg !31

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_init_callbacks(ptr noundef %walk_state, i32 noundef %pass_number) #0 align 16 !dbg !50 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %pass_number.addr = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !813, metadata !DIExpression()), !dbg !815
  store i32 %pass_number, ptr %pass_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pass_number.addr, metadata !814, metadata !DIExpression()), !dbg !816
  %0 = load i32, ptr %pass_number.addr, align 4, !dbg !817
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
  ], !dbg !818

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !819
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 20, !dbg !821
  store i32 529, ptr %parse_flags, align 4, !dbg !822
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !823
  %descending_callback = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 50, !dbg !824
  store ptr null, ptr %descending_callback, align 8, !dbg !825
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !826
  %ascending_callback = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 51, !dbg !827
  store ptr null, ptr %ascending_callback, align 8, !dbg !828
  br label %sw.epilog, !dbg !829

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !830
  %parse_flags2 = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 20, !dbg !831
  store i32 17, ptr %parse_flags2, align 4, !dbg !832
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !833
  %descending_callback3 = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 50, !dbg !834
  store ptr @acpi_ds_load1_begin_op, ptr %descending_callback3, align 8, !dbg !835
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !836
  %ascending_callback4 = getelementptr inbounds %struct.acpi_walk_state, ptr %6, i32 0, i32 51, !dbg !837
  store ptr @acpi_ds_load1_end_op, ptr %ascending_callback4, align 8, !dbg !838
  br label %sw.epilog, !dbg !839

sw.bb5:                                           ; preds = %entry
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !840
  %parse_flags6 = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 20, !dbg !841
  store i32 17, ptr %parse_flags6, align 4, !dbg !842
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !843
  %descending_callback7 = getelementptr inbounds %struct.acpi_walk_state, ptr %8, i32 0, i32 50, !dbg !844
  store ptr @acpi_ds_load2_begin_op, ptr %descending_callback7, align 8, !dbg !845
  %9 = load ptr, ptr %walk_state.addr, align 8, !dbg !846
  %ascending_callback8 = getelementptr inbounds %struct.acpi_walk_state, ptr %9, i32 0, i32 51, !dbg !847
  store ptr @acpi_ds_load2_end_op, ptr %ascending_callback8, align 8, !dbg !848
  br label %sw.epilog, !dbg !849

sw.bb9:                                           ; preds = %entry
  %10 = load ptr, ptr %walk_state.addr, align 8, !dbg !850
  %parse_flags10 = getelementptr inbounds %struct.acpi_walk_state, ptr %10, i32 0, i32 20, !dbg !851
  %11 = load i32, ptr %parse_flags10, align 4, !dbg !852
  %or = or i32 %11, 49, !dbg !852
  store i32 %or, ptr %parse_flags10, align 4, !dbg !852
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !853
  %descending_callback11 = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 50, !dbg !854
  store ptr @acpi_ds_exec_begin_op, ptr %descending_callback11, align 8, !dbg !855
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !856
  %ascending_callback12 = getelementptr inbounds %struct.acpi_walk_state, ptr %13, i32 0, i32 51, !dbg !857
  store ptr @acpi_ds_exec_end_op, ptr %ascending_callback12, align 8, !dbg !858
  br label %sw.epilog, !dbg !859

sw.default:                                       ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !860
  br label %return, !dbg !860

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb5, %sw.bb1, %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !861
  br label %return, !dbg !861

return:                                           ; preds = %sw.epilog, %sw.default
  %14 = load i32, ptr %retval, align 4, !dbg !862
  ret i32 %14, !dbg !862
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_load1_begin_op(ptr noundef %walk_state, ptr noundef %out_op) #0 align 16 !dbg !863 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %out_op.addr = alloca ptr, align 8
  %op = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %object_type = alloca i32, align 4
  %path = alloca ptr, align 8
  %flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !865, metadata !DIExpression()), !dbg !874
  store ptr %out_op, ptr %out_op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_op.addr, metadata !866, metadata !DIExpression()), !dbg !875
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #4, !dbg !876
  call void @llvm.dbg.declare(metadata ptr %op, metadata !867, metadata !DIExpression()), !dbg !877
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !878
  call void @llvm.dbg.declare(metadata ptr %node, metadata !868, metadata !DIExpression()), !dbg !879
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %status, metadata !869, metadata !DIExpression()), !dbg !881
  call void @llvm.lifetime.start.p0(i64 4, ptr %object_type) #4, !dbg !882
  call void @llvm.dbg.declare(metadata ptr %object_type, metadata !870, metadata !DIExpression()), !dbg !883
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #4, !dbg !884
  call void @llvm.dbg.declare(metadata ptr %path, metadata !872, metadata !DIExpression()), !dbg !885
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #4, !dbg !886
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !873, metadata !DIExpression()), !dbg !887
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !888
  %op1 = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 40, !dbg !889
  %1 = load ptr, ptr %op1, align 8, !dbg !889
  store ptr %1, ptr %op, align 8, !dbg !890
  %2 = load ptr, ptr %op, align 8, !dbg !891
  %tobool = icmp ne ptr %2, null, !dbg !891
  br i1 %tobool, label %if.then, label %if.end9, !dbg !893

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !894
  %op_info = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 41, !dbg !897
  %4 = load ptr, ptr %op_info, align 8, !dbg !897
  %flags2 = getelementptr inbounds %struct.acpi_opcode_info, ptr %4, i32 0, i32 2, !dbg !898
  %5 = load i16, ptr %flags2, align 4, !dbg !898
  %conv = zext i16 %5 to i32, !dbg !894
  %and = and i32 %conv, 64, !dbg !899
  %tobool3 = icmp ne i32 %and, 0, !dbg !899
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !900

if.then4:                                         ; preds = %if.then
  %6 = load ptr, ptr %op, align 8, !dbg !901
  %7 = load ptr, ptr %out_op.addr, align 8, !dbg !903
  store ptr %6, ptr %7, align 8, !dbg !904
  store i32 0, ptr %retval, align 4, !dbg !905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !905

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %op, align 8, !dbg !906
  %node5 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %8, i32 0, i32 6, !dbg !908
  %9 = load ptr, ptr %node5, align 8, !dbg !908
  %tobool6 = icmp ne ptr %9, null, !dbg !906
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !909

if.then7:                                         ; preds = %if.end
  %10 = load ptr, ptr %op, align 8, !dbg !910
  %11 = load ptr, ptr %out_op.addr, align 8, !dbg !912
  store ptr %10, ptr %11, align 8, !dbg !913
  store i32 0, ptr %retval, align 4, !dbg !914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !914

if.end8:                                          ; preds = %if.end
  br label %if.end9, !dbg !915

if.end9:                                          ; preds = %if.end8, %entry
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !916
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 21, !dbg !917
  %call = call ptr @acpi_ps_get_next_namestring(ptr noundef %parser_state) #5, !dbg !918
  store ptr %call, ptr %path, align 8, !dbg !919
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !920
  %op_info10 = getelementptr inbounds %struct.acpi_walk_state, ptr %13, i32 0, i32 41, !dbg !921
  %14 = load ptr, ptr %op_info10, align 8, !dbg !921
  %object_type11 = getelementptr inbounds %struct.acpi_opcode_info, ptr %14, i32 0, i32 3, !dbg !922
  %15 = load i8, ptr %object_type11, align 2, !dbg !922
  %conv12 = zext i8 %15 to i32, !dbg !920
  store i32 %conv12, ptr %object_type, align 4, !dbg !923
  %16 = load ptr, ptr %walk_state.addr, align 8, !dbg !924
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %16, i32 0, i32 3, !dbg !925
  %17 = load i16, ptr %opcode, align 2, !dbg !925
  %conv13 = zext i16 %17 to i32, !dbg !924
  switch i32 %conv13, label %sw.default34 [
    i32 16, label %sw.bb
  ], !dbg !926

sw.bb:                                            ; preds = %if.end9
  %18 = load ptr, ptr %walk_state.addr, align 8, !dbg !927
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, ptr %18, i32 0, i32 46, !dbg !929
  %19 = load ptr, ptr %scope_info, align 8, !dbg !929
  %20 = load ptr, ptr %path, align 8, !dbg !930
  %21 = load i32, ptr %object_type, align 4, !dbg !931
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !932
  %call14 = call i32 @acpi_ns_lookup(ptr noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef 3, i32 noundef 1, ptr noundef %22, ptr noundef %node) #5, !dbg !933
  store i32 %call14, ptr %status, align 4, !dbg !934
  %23 = load i32, ptr %status, align 4, !dbg !935
  %tobool15 = icmp ne i32 %23, 0, !dbg !935
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !937

if.then16:                                        ; preds = %sw.bb
  %24 = load ptr, ptr %walk_state.addr, align 8, !dbg !938
  %scope_info17 = getelementptr inbounds %struct.acpi_walk_state, ptr %24, i32 0, i32 46, !dbg !938
  %25 = load ptr, ptr %scope_info17, align 8, !dbg !938
  %26 = load ptr, ptr %path, align 8, !dbg !938
  %27 = load i32, ptr %status, align 4, !dbg !938
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 174, ptr noundef %25, ptr noundef %26, i32 noundef %27) #5, !dbg !938
  %28 = load i32, ptr %status, align 4, !dbg !940
  store i32 %28, ptr %retval, align 4, !dbg !940
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !940

if.end18:                                         ; preds = %sw.bb
  %29 = load ptr, ptr %node, align 8, !dbg !941
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %29, i32 0, i32 2, !dbg !942
  %30 = load i8, ptr %type, align 1, !dbg !942
  %conv19 = zext i8 %30 to i32, !dbg !941
  switch i32 %conv19, label %sw.default [
    i32 0, label %sw.bb20
    i32 27, label %sw.bb20
    i32 6, label %sw.bb20
    i32 11, label %sw.bb20
    i32 12, label %sw.bb20
    i32 13, label %sw.bb20
    i32 1, label %sw.bb21
    i32 2, label %sw.bb21
    i32 3, label %sw.bb21
    i32 8, label %sw.bb24
  ], !dbg !943

sw.bb20:                                          ; preds = %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18
  br label %sw.epilog, !dbg !944

sw.bb21:                                          ; preds = %if.end18, %if.end18, %if.end18
  %31 = load ptr, ptr %node, align 8, !dbg !946
  %type22 = getelementptr inbounds %struct.acpi_namespace_node, ptr %31, i32 0, i32 2, !dbg !947
  store i8 0, ptr %type22, align 1, !dbg !948
  %32 = load ptr, ptr %walk_state.addr, align 8, !dbg !949
  %scope_info23 = getelementptr inbounds %struct.acpi_walk_state, ptr %32, i32 0, i32 46, !dbg !950
  %33 = load ptr, ptr %scope_info23, align 8, !dbg !950
  %value = getelementptr inbounds %struct.acpi_common_state, ptr %33, i32 0, i32 3, !dbg !951
  store i16 0, ptr %value, align 2, !dbg !952
  br label %sw.epilog, !dbg !953

sw.bb24:                                          ; preds = %if.end18
  %34 = load ptr, ptr %node, align 8, !dbg !954
  %35 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !956
  %cmp = icmp eq ptr %34, %35, !dbg !957
  br i1 %cmp, label %land.lhs.true, label %if.end29, !dbg !958

land.lhs.true:                                    ; preds = %sw.bb24
  %36 = load ptr, ptr %walk_state.addr, align 8, !dbg !959
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, ptr %36, i32 0, i32 20, !dbg !960
  %37 = load i32, ptr %parse_flags, align 4, !dbg !960
  %and26 = and i32 %37, 1024, !dbg !961
  %tobool27 = icmp ne i32 %and26, 0, !dbg !961
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !962

if.then28:                                        ; preds = %land.lhs.true
  br label %sw.epilog, !dbg !963

if.end29:                                         ; preds = %land.lhs.true, %sw.bb24
  br label %sw.default, !dbg !965

sw.default:                                       ; preds = %if.end18, %if.end29
  %38 = load ptr, ptr %node, align 8, !dbg !966
  %type30 = getelementptr inbounds %struct.acpi_namespace_node, ptr %38, i32 0, i32 2, !dbg !966
  %39 = load i8, ptr %type30, align 1, !dbg !966
  %conv31 = zext i8 %39 to i32, !dbg !966
  %call32 = call ptr @acpi_ut_get_type_name(i32 noundef %conv31) #5, !dbg !966
  %40 = load ptr, ptr %node, align 8, !dbg !966
  %call33 = call ptr @acpi_ut_get_node_name(ptr noundef %40) #5, !dbg !966
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 233, ptr noundef @.str, ptr noundef %call32, ptr noundef %call33) #5, !dbg !966
  store i32 12291, ptr %retval, align 4, !dbg !967
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !967

sw.epilog:                                        ; preds = %if.then28, %sw.bb21, %sw.bb20
  br label %sw.epilog90, !dbg !968

sw.default34:                                     ; preds = %if.end9
  %41 = load ptr, ptr %walk_state.addr, align 8, !dbg !969
  %deferred_node = getelementptr inbounds %struct.acpi_walk_state, ptr %41, i32 0, i32 33, !dbg !971
  %42 = load ptr, ptr %deferred_node, align 8, !dbg !971
  %tobool35 = icmp ne ptr %42, null, !dbg !969
  br i1 %tobool35, label %if.then36, label %if.end38, !dbg !972

if.then36:                                        ; preds = %sw.default34
  %43 = load ptr, ptr %walk_state.addr, align 8, !dbg !973
  %deferred_node37 = getelementptr inbounds %struct.acpi_walk_state, ptr %43, i32 0, i32 33, !dbg !975
  %44 = load ptr, ptr %deferred_node37, align 8, !dbg !975
  store ptr %44, ptr %node, align 8, !dbg !976
  store i32 0, ptr %status, align 4, !dbg !977
  br label %sw.epilog90, !dbg !978

if.end38:                                         ; preds = %sw.default34
  %45 = load ptr, ptr %walk_state.addr, align 8, !dbg !979
  %method_node = getelementptr inbounds %struct.acpi_walk_state, ptr %45, i32 0, i32 38, !dbg !981
  %46 = load ptr, ptr %method_node, align 8, !dbg !981
  %tobool39 = icmp ne ptr %46, null, !dbg !979
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !982

if.then40:                                        ; preds = %if.end38
  store ptr null, ptr %node, align 8, !dbg !983
  store i32 0, ptr %status, align 4, !dbg !985
  br label %sw.epilog90, !dbg !986

if.end41:                                         ; preds = %if.end38
  store i32 0, ptr %flags, align 4, !dbg !987
  %47 = load ptr, ptr %walk_state.addr, align 8, !dbg !988
  %opcode42 = getelementptr inbounds %struct.acpi_walk_state, ptr %47, i32 0, i32 3, !dbg !990
  %48 = load i16, ptr %opcode42, align 2, !dbg !990
  %conv43 = zext i16 %48 to i32, !dbg !988
  %cmp44 = icmp ne i32 %conv43, 16, !dbg !991
  br i1 %cmp44, label %land.lhs.true46, label %if.else55, !dbg !992

land.lhs.true46:                                  ; preds = %if.end41
  %49 = load ptr, ptr %walk_state.addr, align 8, !dbg !993
  %parse_flags47 = getelementptr inbounds %struct.acpi_walk_state, ptr %49, i32 0, i32 20, !dbg !994
  %50 = load i32, ptr %parse_flags47, align 4, !dbg !994
  %and48 = and i32 %50, 256, !dbg !995
  %tobool49 = icmp ne i32 %and48, 0, !dbg !995
  br i1 %tobool49, label %if.else55, label %if.then50, !dbg !996

if.then50:                                        ; preds = %land.lhs.true46
  %51 = load ptr, ptr %walk_state.addr, align 8, !dbg !997
  %namespace_override = getelementptr inbounds %struct.acpi_walk_state, ptr %51, i32 0, i32 13, !dbg !1000
  %52 = load i8, ptr %namespace_override, align 1, !dbg !1000
  %tobool51 = icmp ne i8 %52, 0, !dbg !997
  br i1 %tobool51, label %if.then52, label %if.else, !dbg !1001

if.then52:                                        ; preds = %if.then50
  %53 = load i32, ptr %flags, align 4, !dbg !1002
  %or = or i32 %53, 128, !dbg !1002
  store i32 %or, ptr %flags, align 4, !dbg !1002
  br label %if.end54, !dbg !1004

if.else:                                          ; preds = %if.then50
  %54 = load i32, ptr %flags, align 4, !dbg !1005
  %or53 = or i32 %54, 8, !dbg !1005
  store i32 %or53, ptr %flags, align 4, !dbg !1005
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then52
  br label %if.end56, !dbg !1007

if.else55:                                        ; preds = %land.lhs.true46, %if.end41
  br label %if.end56

if.end56:                                         ; preds = %if.else55, %if.end54
  %55 = load ptr, ptr %walk_state.addr, align 8, !dbg !1008
  %scope_info57 = getelementptr inbounds %struct.acpi_walk_state, ptr %55, i32 0, i32 46, !dbg !1009
  %56 = load ptr, ptr %scope_info57, align 8, !dbg !1009
  %57 = load ptr, ptr %path, align 8, !dbg !1010
  %58 = load i32, ptr %object_type, align 4, !dbg !1011
  %59 = load i32, ptr %flags, align 4, !dbg !1012
  %60 = load ptr, ptr %walk_state.addr, align 8, !dbg !1013
  %call58 = call i32 @acpi_ns_lookup(ptr noundef %56, ptr noundef %57, i32 noundef %58, i32 noundef 1, i32 noundef %59, ptr noundef %60, ptr noundef %node) #5, !dbg !1014
  store i32 %call58, ptr %status, align 4, !dbg !1015
  %61 = load i32, ptr %status, align 4, !dbg !1016
  %tobool59 = icmp ne i32 %61, 0, !dbg !1016
  br i1 %tobool59, label %if.then60, label %if.end89, !dbg !1018

if.then60:                                        ; preds = %if.end56
  %62 = load i32, ptr %status, align 4, !dbg !1019
  %cmp61 = icmp eq i32 %62, 7, !dbg !1022
  br i1 %cmp61, label %if.then63, label %if.end84, !dbg !1023

if.then63:                                        ; preds = %if.then60
  %63 = load ptr, ptr %node, align 8, !dbg !1024
  %flags64 = getelementptr inbounds %struct.acpi_namespace_node, ptr %63, i32 0, i32 3, !dbg !1027
  %64 = load i16, ptr %flags64, align 2, !dbg !1027
  %conv65 = zext i16 %64 to i32, !dbg !1024
  %and66 = and i32 %conv65, 8, !dbg !1028
  %tobool67 = icmp ne i32 %and66, 0, !dbg !1028
  br i1 %tobool67, label %if.then68, label %if.end83, !dbg !1029

if.then68:                                        ; preds = %if.then63
  %65 = load ptr, ptr %node, align 8, !dbg !1030
  %flags69 = getelementptr inbounds %struct.acpi_namespace_node, ptr %65, i32 0, i32 3, !dbg !1032
  %66 = load i16, ptr %flags69, align 2, !dbg !1033
  %conv70 = zext i16 %66 to i32, !dbg !1033
  %and71 = and i32 %conv70, -9, !dbg !1033
  %conv72 = trunc i32 %and71 to i16, !dbg !1033
  store i16 %conv72, ptr %flags69, align 2, !dbg !1033
  %67 = load i32, ptr %object_type, align 4, !dbg !1034
  %conv73 = trunc i32 %67 to i8, !dbg !1035
  %68 = load ptr, ptr %node, align 8, !dbg !1036
  %type74 = getelementptr inbounds %struct.acpi_namespace_node, ptr %68, i32 0, i32 2, !dbg !1037
  store i8 %conv73, ptr %type74, align 1, !dbg !1038
  %69 = load i32, ptr %object_type, align 4, !dbg !1039
  %call75 = call i32 @acpi_ns_opens_scope(i32 noundef %69) #5, !dbg !1041
  %tobool76 = icmp ne i32 %call75, 0, !dbg !1041
  br i1 %tobool76, label %if.then77, label %if.end82, !dbg !1042

if.then77:                                        ; preds = %if.then68
  %70 = load ptr, ptr %node, align 8, !dbg !1043
  %71 = load i32, ptr %object_type, align 4, !dbg !1045
  %72 = load ptr, ptr %walk_state.addr, align 8, !dbg !1046
  %call78 = call i32 @acpi_ds_scope_stack_push(ptr noundef %70, i32 noundef %71, ptr noundef %72) #5, !dbg !1047
  store i32 %call78, ptr %status, align 4, !dbg !1048
  %73 = load i32, ptr %status, align 4, !dbg !1049
  %tobool79 = icmp ne i32 %73, 0, !dbg !1049
  br i1 %tobool79, label %if.then80, label %if.end81, !dbg !1051

if.then80:                                        ; preds = %if.then77
  %74 = load i32, ptr %status, align 4, !dbg !1052
  store i32 %74, ptr %retval, align 4, !dbg !1052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1052

if.end81:                                         ; preds = %if.then77
  br label %if.end82, !dbg !1054

if.end82:                                         ; preds = %if.end81, %if.then68
  store i32 0, ptr %status, align 4, !dbg !1055
  br label %if.end83, !dbg !1056

if.end83:                                         ; preds = %if.end82, %if.then63
  br label %if.end84, !dbg !1057

if.end84:                                         ; preds = %if.end83, %if.then60
  %75 = load i32, ptr %status, align 4, !dbg !1058
  %tobool85 = icmp ne i32 %75, 0, !dbg !1058
  br i1 %tobool85, label %if.then86, label %if.end88, !dbg !1060

if.then86:                                        ; preds = %if.end84
  %76 = load ptr, ptr %walk_state.addr, align 8, !dbg !1061
  %scope_info87 = getelementptr inbounds %struct.acpi_walk_state, ptr %76, i32 0, i32 46, !dbg !1061
  %77 = load ptr, ptr %scope_info87, align 8, !dbg !1061
  %78 = load ptr, ptr %path, align 8, !dbg !1061
  %79 = load i32, ptr %status, align 4, !dbg !1061
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 343, ptr noundef %77, ptr noundef %78, i32 noundef %79) #5, !dbg !1061
  %80 = load i32, ptr %status, align 4, !dbg !1063
  store i32 %80, ptr %retval, align 4, !dbg !1063
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1063

if.end88:                                         ; preds = %if.end84
  br label %if.end89, !dbg !1064

if.end89:                                         ; preds = %if.end88, %if.end56
  br label %sw.epilog90, !dbg !1065

sw.epilog90:                                      ; preds = %if.end89, %if.then40, %if.then36, %sw.epilog
  %81 = load ptr, ptr %op, align 8, !dbg !1066
  %tobool91 = icmp ne ptr %81, null, !dbg !1066
  br i1 %tobool91, label %if.end98, label %if.then92, !dbg !1068

if.then92:                                        ; preds = %sw.epilog90
  %82 = load ptr, ptr %walk_state.addr, align 8, !dbg !1069
  %opcode93 = getelementptr inbounds %struct.acpi_walk_state, ptr %82, i32 0, i32 3, !dbg !1071
  %83 = load i16, ptr %opcode93, align 2, !dbg !1071
  %84 = load ptr, ptr %walk_state.addr, align 8, !dbg !1072
  %aml = getelementptr inbounds %struct.acpi_walk_state, ptr %84, i32 0, i32 16, !dbg !1073
  %85 = load ptr, ptr %aml, align 8, !dbg !1073
  %call94 = call ptr @acpi_ps_alloc_op(i16 noundef zeroext %83, ptr noundef %85) #5, !dbg !1074
  store ptr %call94, ptr %op, align 8, !dbg !1075
  %86 = load ptr, ptr %op, align 8, !dbg !1076
  %tobool95 = icmp ne ptr %86, null, !dbg !1076
  br i1 %tobool95, label %if.end97, label %if.then96, !dbg !1078

if.then96:                                        ; preds = %if.then92
  store i32 4, ptr %retval, align 4, !dbg !1079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1079

if.end97:                                         ; preds = %if.then92
  br label %if.end98, !dbg !1081

if.end98:                                         ; preds = %if.end97, %sw.epilog90
  %87 = load ptr, ptr %node, align 8, !dbg !1082
  %tobool99 = icmp ne ptr %87, null, !dbg !1082
  br i1 %tobool99, label %if.then100, label %if.end103, !dbg !1084

if.then100:                                       ; preds = %if.end98
  %88 = load ptr, ptr %node, align 8, !dbg !1085
  %89 = load ptr, ptr %op, align 8, !dbg !1087
  %node101 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %89, i32 0, i32 6, !dbg !1088
  store ptr %88, ptr %node101, align 8, !dbg !1089
  %90 = load ptr, ptr %node, align 8, !dbg !1090
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %90, i32 0, i32 4, !dbg !1091
  %91 = load i32, ptr %name, align 4, !dbg !1092
  %92 = load ptr, ptr %op, align 8, !dbg !1093
  %name102 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %92, i32 0, i32 12, !dbg !1094
  store i32 %91, ptr %name102, align 4, !dbg !1095
  br label %if.end103, !dbg !1096

if.end103:                                        ; preds = %if.then100, %if.end98
  %93 = load ptr, ptr %walk_state.addr, align 8, !dbg !1097
  %parser_state104 = getelementptr inbounds %struct.acpi_walk_state, ptr %93, i32 0, i32 21, !dbg !1098
  %call105 = call ptr @acpi_ps_get_parent_scope(ptr noundef %parser_state104) #5, !dbg !1099
  %94 = load ptr, ptr %op, align 8, !dbg !1100
  call void @acpi_ps_append_arg(ptr noundef %call105, ptr noundef %94) #5, !dbg !1101
  %95 = load ptr, ptr %op, align 8, !dbg !1102
  %96 = load ptr, ptr %out_op.addr, align 8, !dbg !1103
  store ptr %95, ptr %96, align 8, !dbg !1104
  %97 = load i32, ptr %status, align 4, !dbg !1105
  store i32 %97, ptr %retval, align 4, !dbg !1105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1105

cleanup:                                          ; preds = %if.end103, %if.then96, %if.then86, %if.then80, %sw.default, %if.then16, %if.then7, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #4, !dbg !1106
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #4, !dbg !1106
  call void @llvm.lifetime.end.p0(i64 4, ptr %object_type) #4, !dbg !1106
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1106
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1106
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #4, !dbg !1106
  %98 = load i32, ptr %retval, align 4, !dbg !1106
  ret i32 %98, !dbg !1106
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_load1_end_op(ptr noundef %walk_state) #0 align 16 !dbg !1107 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %op = alloca ptr, align 8
  %object_type = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1109, metadata !DIExpression()), !dbg !1113
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #4, !dbg !1114
  call void @llvm.dbg.declare(metadata ptr %op, metadata !1110, metadata !DIExpression()), !dbg !1115
  call void @llvm.lifetime.start.p0(i64 4, ptr %object_type) #4, !dbg !1116
  call void @llvm.dbg.declare(metadata ptr %object_type, metadata !1111, metadata !DIExpression()), !dbg !1117
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1118
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1112, metadata !DIExpression()), !dbg !1119
  store i32 0, ptr %status, align 4, !dbg !1119
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1120
  %op1 = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 40, !dbg !1121
  %1 = load ptr, ptr %op1, align 8, !dbg !1121
  store ptr %1, ptr %op, align 8, !dbg !1122
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1123
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 20, !dbg !1125
  %3 = load i32, ptr %parse_flags, align 4, !dbg !1125
  %and = and i32 %3, 512, !dbg !1126
  %tobool = icmp ne i32 %and, 0, !dbg !1126
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1127

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !1128
  %op_info = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 41, !dbg !1129
  %5 = load ptr, ptr %op_info, align 8, !dbg !1129
  %flags = getelementptr inbounds %struct.acpi_opcode_info, ptr %5, i32 0, i32 2, !dbg !1130
  %6 = load i16, ptr %flags, align 4, !dbg !1130
  %conv = zext i16 %6 to i32, !dbg !1128
  %and2 = and i32 %conv, 8, !dbg !1131
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1131
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1132

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %op, align 8, !dbg !1133
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !1135
  %call = call i32 @acpi_ds_create_buffer_field(ptr noundef %7, ptr noundef %8) #5, !dbg !1136
  store i32 %call, ptr %status, align 4, !dbg !1137
  %9 = load i32, ptr %status, align 4, !dbg !1138
  store i32 %9, ptr %retval, align 4, !dbg !1138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1138

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load ptr, ptr %walk_state.addr, align 8, !dbg !1139
  %op_info4 = getelementptr inbounds %struct.acpi_walk_state, ptr %10, i32 0, i32 41, !dbg !1141
  %11 = load ptr, ptr %op_info4, align 8, !dbg !1141
  %flags5 = getelementptr inbounds %struct.acpi_opcode_info, ptr %11, i32 0, i32 2, !dbg !1142
  %12 = load i16, ptr %flags5, align 4, !dbg !1142
  %conv6 = zext i16 %12 to i32, !dbg !1139
  %and7 = and i32 %conv6, 80, !dbg !1143
  %tobool8 = icmp ne i32 %and7, 0, !dbg !1143
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1144

if.then9:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1145

if.end10:                                         ; preds = %if.end
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !1147
  %op_info11 = getelementptr inbounds %struct.acpi_walk_state, ptr %13, i32 0, i32 41, !dbg !1148
  %14 = load ptr, ptr %op_info11, align 8, !dbg !1148
  %object_type12 = getelementptr inbounds %struct.acpi_opcode_info, ptr %14, i32 0, i32 3, !dbg !1149
  %15 = load i8, ptr %object_type12, align 2, !dbg !1149
  %conv13 = zext i8 %15 to i32, !dbg !1147
  store i32 %conv13, ptr %object_type, align 4, !dbg !1150
  %16 = load ptr, ptr %walk_state.addr, align 8, !dbg !1151
  %op_info14 = getelementptr inbounds %struct.acpi_walk_state, ptr %16, i32 0, i32 41, !dbg !1153
  %17 = load ptr, ptr %op_info14, align 8, !dbg !1153
  %flags15 = getelementptr inbounds %struct.acpi_opcode_info, ptr %17, i32 0, i32 2, !dbg !1154
  %18 = load i16, ptr %flags15, align 4, !dbg !1154
  %conv16 = zext i16 %18 to i32, !dbg !1151
  %and17 = and i32 %conv16, 16, !dbg !1155
  %tobool18 = icmp ne i32 %and17, 0, !dbg !1155
  br i1 %tobool18, label %if.then19, label %if.end37, !dbg !1156

if.then19:                                        ; preds = %if.end10
  %19 = load ptr, ptr %walk_state.addr, align 8, !dbg !1157
  %method_node = getelementptr inbounds %struct.acpi_walk_state, ptr %19, i32 0, i32 38, !dbg !1160
  %20 = load ptr, ptr %method_node, align 8, !dbg !1160
  %tobool20 = icmp ne ptr %20, null, !dbg !1157
  br i1 %tobool20, label %if.end36, label %if.then21, !dbg !1161

if.then21:                                        ; preds = %if.then19
  %21 = load ptr, ptr %walk_state.addr, align 8, !dbg !1162
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %21, i32 0, i32 3, !dbg !1165
  %22 = load i16, ptr %opcode, align 2, !dbg !1165
  %conv22 = zext i16 %22 to i32, !dbg !1162
  %cmp = icmp eq i32 %conv22, 23425, !dbg !1166
  br i1 %cmp, label %if.then33, label %lor.lhs.false, !dbg !1167

lor.lhs.false:                                    ; preds = %if.then21
  %23 = load ptr, ptr %walk_state.addr, align 8, !dbg !1168
  %opcode24 = getelementptr inbounds %struct.acpi_walk_state, ptr %23, i32 0, i32 3, !dbg !1169
  %24 = load i16, ptr %opcode24, align 2, !dbg !1169
  %conv25 = zext i16 %24 to i32, !dbg !1168
  %cmp26 = icmp eq i32 %conv25, 23431, !dbg !1170
  br i1 %cmp26, label %if.then33, label %lor.lhs.false28, !dbg !1171

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %25 = load ptr, ptr %walk_state.addr, align 8, !dbg !1172
  %opcode29 = getelementptr inbounds %struct.acpi_walk_state, ptr %25, i32 0, i32 3, !dbg !1173
  %26 = load i16, ptr %opcode29, align 2, !dbg !1173
  %conv30 = zext i16 %26 to i32, !dbg !1172
  %cmp31 = icmp eq i32 %conv30, 23430, !dbg !1174
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !1175

if.then33:                                        ; preds = %lor.lhs.false28, %lor.lhs.false, %if.then21
  %27 = load ptr, ptr %op, align 8, !dbg !1176
  %28 = load ptr, ptr %walk_state.addr, align 8, !dbg !1178
  %call34 = call i32 @acpi_ds_init_field_objects(ptr noundef %27, ptr noundef %28) #5, !dbg !1179
  store i32 %call34, ptr %status, align 4, !dbg !1180
  br label %if.end35, !dbg !1181

if.end35:                                         ; preds = %if.then33, %lor.lhs.false28
  br label %if.end36, !dbg !1182

if.end36:                                         ; preds = %if.end35, %if.then19
  %29 = load i32, ptr %status, align 4, !dbg !1183
  store i32 %29, ptr %retval, align 4, !dbg !1183
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1183

if.end37:                                         ; preds = %if.end10
  %30 = load ptr, ptr %walk_state.addr, align 8, !dbg !1184
  %method_node38 = getelementptr inbounds %struct.acpi_walk_state, ptr %30, i32 0, i32 38, !dbg !1186
  %31 = load ptr, ptr %method_node38, align 8, !dbg !1186
  %tobool39 = icmp ne ptr %31, null, !dbg !1184
  br i1 %tobool39, label %if.end64, label %if.then40, !dbg !1187

if.then40:                                        ; preds = %if.end37
  %32 = load ptr, ptr %op, align 8, !dbg !1188
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %32, i32 0, i32 3, !dbg !1191
  %33 = load i16, ptr %aml_opcode, align 2, !dbg !1191
  %conv41 = zext i16 %33 to i32, !dbg !1188
  %cmp42 = icmp eq i32 %conv41, 23424, !dbg !1192
  br i1 %cmp42, label %if.then44, label %if.else, !dbg !1193

if.then44:                                        ; preds = %if.then40
  %34 = load ptr, ptr %op, align 8, !dbg !1194
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %34, i32 0, i32 10, !dbg !1196
  %35 = load ptr, ptr %data, align 8, !dbg !1196
  %36 = load ptr, ptr %op, align 8, !dbg !1197
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %36, i32 0, i32 11, !dbg !1198
  %37 = load i32, ptr %length, align 8, !dbg !1198
  %38 = load ptr, ptr %op, align 8, !dbg !1199
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %38, i32 0, i32 7, !dbg !1200
  %39 = load ptr, ptr %value, align 8, !dbg !1201
  %value45 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %39, i32 0, i32 7, !dbg !1202
  %40 = load i64, ptr %value45, align 8, !dbg !1203
  %conv46 = trunc i64 %40 to i8, !dbg !1204
  %41 = load ptr, ptr %walk_state.addr, align 8, !dbg !1205
  %call47 = call i32 @acpi_ex_create_region(ptr noundef %35, i32 noundef %37, i8 noundef zeroext %conv46, ptr noundef %41) #5, !dbg !1206
  store i32 %call47, ptr %status, align 4, !dbg !1207
  %42 = load i32, ptr %status, align 4, !dbg !1208
  %tobool48 = icmp ne i32 %42, 0, !dbg !1208
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !1210

if.then49:                                        ; preds = %if.then44
  %43 = load i32, ptr %status, align 4, !dbg !1211
  store i32 %43, ptr %retval, align 4, !dbg !1211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1211

if.end50:                                         ; preds = %if.then44
  br label %if.end63, !dbg !1213

if.else:                                          ; preds = %if.then40
  %44 = load ptr, ptr %op, align 8, !dbg !1214
  %aml_opcode51 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %44, i32 0, i32 3, !dbg !1216
  %45 = load i16, ptr %aml_opcode51, align 2, !dbg !1216
  %conv52 = zext i16 %45 to i32, !dbg !1214
  %cmp53 = icmp eq i32 %conv52, 23432, !dbg !1217
  br i1 %cmp53, label %if.then55, label %if.end62, !dbg !1218

if.then55:                                        ; preds = %if.else
  %46 = load ptr, ptr %op, align 8, !dbg !1219
  %data56 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %46, i32 0, i32 10, !dbg !1221
  %47 = load ptr, ptr %data56, align 8, !dbg !1221
  %48 = load ptr, ptr %op, align 8, !dbg !1222
  %length57 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %48, i32 0, i32 11, !dbg !1223
  %49 = load i32, ptr %length57, align 8, !dbg !1223
  %50 = load ptr, ptr %walk_state.addr, align 8, !dbg !1224
  %call58 = call i32 @acpi_ex_create_region(ptr noundef %47, i32 noundef %49, i8 noundef zeroext 126, ptr noundef %50) #5, !dbg !1225
  store i32 %call58, ptr %status, align 4, !dbg !1226
  %51 = load i32, ptr %status, align 4, !dbg !1227
  %tobool59 = icmp ne i32 %51, 0, !dbg !1227
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !1229

if.then60:                                        ; preds = %if.then55
  %52 = load i32, ptr %status, align 4, !dbg !1230
  store i32 %52, ptr %retval, align 4, !dbg !1230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1230

if.end61:                                         ; preds = %if.then55
  br label %if.end62, !dbg !1232

if.end62:                                         ; preds = %if.end61, %if.else
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end50
  br label %if.end64, !dbg !1233

if.end64:                                         ; preds = %if.end63, %if.end37
  %53 = load ptr, ptr %op, align 8, !dbg !1234
  %aml_opcode65 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %53, i32 0, i32 3, !dbg !1236
  %54 = load i16, ptr %aml_opcode65, align 2, !dbg !1236
  %conv66 = zext i16 %54 to i32, !dbg !1234
  %cmp67 = icmp eq i32 %conv66, 8, !dbg !1237
  br i1 %cmp67, label %if.then69, label %if.end84, !dbg !1238

if.then69:                                        ; preds = %if.end64
  %55 = load ptr, ptr %op, align 8, !dbg !1239
  %value70 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %55, i32 0, i32 7, !dbg !1242
  %56 = load ptr, ptr %value70, align 8, !dbg !1243
  %tobool71 = icmp ne ptr %56, null, !dbg !1239
  br i1 %tobool71, label %if.then72, label %if.end83, !dbg !1244

if.then72:                                        ; preds = %if.then69
  %57 = load ptr, ptr %op, align 8, !dbg !1245
  %value73 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %57, i32 0, i32 7, !dbg !1247
  %58 = load ptr, ptr %value73, align 8, !dbg !1248
  %aml_opcode74 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %58, i32 0, i32 3, !dbg !1249
  %59 = load i16, ptr %aml_opcode74, align 2, !dbg !1249
  %call75 = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %59) #5, !dbg !1250
  %object_type76 = getelementptr inbounds %struct.acpi_opcode_info, ptr %call75, i32 0, i32 3, !dbg !1251
  %60 = load i8, ptr %object_type76, align 2, !dbg !1251
  %conv77 = zext i8 %60 to i32, !dbg !1252
  store i32 %conv77, ptr %object_type, align 4, !dbg !1253
  %61 = load ptr, ptr %op, align 8, !dbg !1254
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %61, i32 0, i32 6, !dbg !1256
  %62 = load ptr, ptr %node, align 8, !dbg !1256
  %tobool78 = icmp ne ptr %62, null, !dbg !1254
  br i1 %tobool78, label %if.then79, label %if.end82, !dbg !1257

if.then79:                                        ; preds = %if.then72
  %63 = load i32, ptr %object_type, align 4, !dbg !1258
  %conv80 = trunc i32 %63 to i8, !dbg !1260
  %64 = load ptr, ptr %op, align 8, !dbg !1261
  %node81 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %64, i32 0, i32 6, !dbg !1262
  %65 = load ptr, ptr %node81, align 8, !dbg !1262
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %65, i32 0, i32 2, !dbg !1263
  store i8 %conv80, ptr %type, align 1, !dbg !1264
  br label %if.end82, !dbg !1265

if.end82:                                         ; preds = %if.then79, %if.then72
  br label %if.end83, !dbg !1266

if.end83:                                         ; preds = %if.end82, %if.then69
  br label %if.end84, !dbg !1267

if.end84:                                         ; preds = %if.end83, %if.end64
  %66 = load ptr, ptr %walk_state.addr, align 8, !dbg !1268
  %method_node85 = getelementptr inbounds %struct.acpi_walk_state, ptr %66, i32 0, i32 38, !dbg !1270
  %67 = load ptr, ptr %method_node85, align 8, !dbg !1270
  %tobool86 = icmp ne ptr %67, null, !dbg !1268
  br i1 %tobool86, label %if.end114, label %if.then87, !dbg !1271

if.then87:                                        ; preds = %if.end84
  %68 = load ptr, ptr %op, align 8, !dbg !1272
  %aml_opcode88 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %68, i32 0, i32 3, !dbg !1275
  %69 = load i16, ptr %aml_opcode88, align 2, !dbg !1275
  %conv89 = zext i16 %69 to i32, !dbg !1272
  %cmp90 = icmp eq i32 %conv89, 20, !dbg !1276
  br i1 %cmp90, label %if.then92, label %if.end113, !dbg !1277

if.then92:                                        ; preds = %if.then87
  %70 = load ptr, ptr %op, align 8, !dbg !1278
  %node93 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %70, i32 0, i32 6, !dbg !1281
  %71 = load ptr, ptr %node93, align 8, !dbg !1281
  %call94 = call ptr @acpi_ns_get_attached_object(ptr noundef %71) #5, !dbg !1282
  %tobool95 = icmp ne ptr %call94, null, !dbg !1282
  br i1 %tobool95, label %if.end112, label %if.then96, !dbg !1283

if.then96:                                        ; preds = %if.then92
  %72 = load ptr, ptr %op, align 8, !dbg !1284
  %node97 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %72, i32 0, i32 6, !dbg !1284
  %73 = load ptr, ptr %node97, align 8, !dbg !1284
  %74 = ptrtoint ptr %73 to i64, !dbg !1284
  %75 = inttoptr i64 %74 to ptr, !dbg !1284
  %76 = load ptr, ptr %walk_state.addr, align 8, !dbg !1286
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %76, i32 0, i32 28, !dbg !1287
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !1286
  store ptr %75, ptr %arrayidx, align 8, !dbg !1288
  %77 = load ptr, ptr %walk_state.addr, align 8, !dbg !1289
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, ptr %77, i32 0, i32 5, !dbg !1290
  store i8 1, ptr %num_operands, align 1, !dbg !1291
  %78 = load ptr, ptr %walk_state.addr, align 8, !dbg !1292
  %79 = load ptr, ptr %op, align 8, !dbg !1293
  %value98 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %79, i32 0, i32 7, !dbg !1294
  %80 = load ptr, ptr %value98, align 8, !dbg !1295
  %call99 = call i32 @acpi_ds_create_operands(ptr noundef %78, ptr noundef %80) #5, !dbg !1296
  store i32 %call99, ptr %status, align 4, !dbg !1297
  %81 = load i32, ptr %status, align 4, !dbg !1298
  %tobool100 = icmp ne i32 %81, 0, !dbg !1298
  br i1 %tobool100, label %if.end105, label %if.then101, !dbg !1300

if.then101:                                       ; preds = %if.then96
  %82 = load ptr, ptr %op, align 8, !dbg !1301
  %data102 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %82, i32 0, i32 10, !dbg !1303
  %83 = load ptr, ptr %data102, align 8, !dbg !1303
  %84 = load ptr, ptr %op, align 8, !dbg !1304
  %length103 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %84, i32 0, i32 11, !dbg !1305
  %85 = load i32, ptr %length103, align 8, !dbg !1305
  %86 = load ptr, ptr %walk_state.addr, align 8, !dbg !1306
  %call104 = call i32 @acpi_ex_create_method(ptr noundef %83, i32 noundef %85, ptr noundef %86) #5, !dbg !1307
  store i32 %call104, ptr %status, align 4, !dbg !1308
  br label %if.end105, !dbg !1309

if.end105:                                        ; preds = %if.then101, %if.then96
  %87 = load ptr, ptr %walk_state.addr, align 8, !dbg !1310
  %operands106 = getelementptr inbounds %struct.acpi_walk_state, ptr %87, i32 0, i32 28, !dbg !1311
  %arrayidx107 = getelementptr [9 x ptr], ptr %operands106, i64 0, i64 0, !dbg !1310
  store ptr null, ptr %arrayidx107, align 8, !dbg !1312
  %88 = load ptr, ptr %walk_state.addr, align 8, !dbg !1313
  %num_operands108 = getelementptr inbounds %struct.acpi_walk_state, ptr %88, i32 0, i32 5, !dbg !1314
  store i8 0, ptr %num_operands108, align 1, !dbg !1315
  %89 = load i32, ptr %status, align 4, !dbg !1316
  %tobool109 = icmp ne i32 %89, 0, !dbg !1316
  br i1 %tobool109, label %if.then110, label %if.end111, !dbg !1318

if.then110:                                       ; preds = %if.end105
  %90 = load i32, ptr %status, align 4, !dbg !1319
  store i32 %90, ptr %retval, align 4, !dbg !1319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1319

if.end111:                                        ; preds = %if.end105
  br label %if.end112, !dbg !1321

if.end112:                                        ; preds = %if.end111, %if.then92
  br label %if.end113, !dbg !1322

if.end113:                                        ; preds = %if.end112, %if.then87
  br label %if.end114, !dbg !1323

if.end114:                                        ; preds = %if.end113, %if.end84
  %91 = load ptr, ptr %walk_state.addr, align 8, !dbg !1324
  %method_node115 = getelementptr inbounds %struct.acpi_walk_state, ptr %91, i32 0, i32 38, !dbg !1326
  %92 = load ptr, ptr %method_node115, align 8, !dbg !1326
  %tobool116 = icmp ne ptr %92, null, !dbg !1324
  br i1 %tobool116, label %if.end127, label %land.lhs.true117, !dbg !1327

land.lhs.true117:                                 ; preds = %if.end114
  %93 = load ptr, ptr %op, align 8, !dbg !1328
  %aml_opcode118 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %93, i32 0, i32 3, !dbg !1329
  %94 = load i16, ptr %aml_opcode118, align 2, !dbg !1329
  %conv119 = zext i16 %94 to i32, !dbg !1328
  %cmp120 = icmp ne i32 %conv119, 21, !dbg !1330
  br i1 %cmp120, label %land.lhs.true122, label %if.end127, !dbg !1331

land.lhs.true122:                                 ; preds = %land.lhs.true117
  %95 = load i32, ptr %object_type, align 4, !dbg !1332
  %call123 = call i32 @acpi_ns_opens_scope(i32 noundef %95) #5, !dbg !1333
  %tobool124 = icmp ne i32 %call123, 0, !dbg !1333
  br i1 %tobool124, label %if.then125, label %if.end127, !dbg !1334

if.then125:                                       ; preds = %land.lhs.true122
  %96 = load ptr, ptr %walk_state.addr, align 8, !dbg !1335
  %call126 = call i32 @acpi_ds_scope_stack_pop(ptr noundef %96) #5, !dbg !1337
  store i32 %call126, ptr %status, align 4, !dbg !1338
  br label %if.end127, !dbg !1339

if.end127:                                        ; preds = %if.then125, %land.lhs.true122, %land.lhs.true117, %if.end114
  %97 = load i32, ptr %status, align 4, !dbg !1340
  store i32 %97, ptr %retval, align 4, !dbg !1340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1340

cleanup:                                          ; preds = %if.end127, %if.then110, %if.then60, %if.then49, %if.end36, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1341
  call void @llvm.lifetime.end.p0(i64 4, ptr %object_type) #4, !dbg !1341
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #4, !dbg !1341
  %98 = load i32, ptr %retval, align 4, !dbg !1341
  ret i32 %98, !dbg !1341
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ds_load2_begin_op(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ds_load2_end_op(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ds_exec_begin_op(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ds_exec_end_op(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1342 dso_local ptr @acpi_ps_get_next_namestring(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1347 dso_local i32 @acpi_ns_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1353 dso_local void @acpi_ut_prefixed_namespace_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1358 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1362 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1365 dso_local ptr @acpi_ut_get_node_name(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1368 dso_local i32 @acpi_ns_opens_scope(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1371 dso_local i32 @acpi_ds_scope_stack_push(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1375 dso_local ptr @acpi_ps_alloc_op(i16 noundef zeroext, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1378 dso_local void @acpi_ps_append_arg(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1381 dso_local ptr @acpi_ps_get_parent_scope(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1384 dso_local i32 @acpi_ds_create_buffer_field(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1387 dso_local i32 @acpi_ds_init_field_objects(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1388 dso_local i32 @acpi_ex_create_region(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1392 dso_local ptr @acpi_ps_get_opcode_info(i16 noundef zeroext) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1395 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1398 dso_local i32 @acpi_ds_create_operands(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1401 dso_local i32 @acpi_ex_create_method(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1404 dso_local i32 @acpi_ds_scope_stack_pop(ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 22, type: !37, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.dswload.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22dswload\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/dswload.ll drivers/acpi/acpica/dswload.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !30, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dswload.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b1a6874fb221d4ecf0d9bfec7b5d9d8e")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3)
!12 = !{!13, !19, !22, !25, !26, !27}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !14, line: 421, baseType: !15)
!14 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !16, line: 21, baseType: !17)
!16 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !18, line: 27, baseType: !7)
!18 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !16, line: 19, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !18, line: 24, baseType: !21)
!21 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !16, line: 17, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !18, line: 21, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !14, line: 814, baseType: !22)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !28, line: 42, baseType: !29)
!28 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !{!31, !0}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !3, line: 233, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 584, elements: !35)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!36}
!36 = !DISubrange(count: 73)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !39)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!39 = !{!40}
!40 = !DISubrange(count: 8)
!41 = !{i32 7, !"Dwarf Version", i32 5}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 8, !"cf-protection-branch", i32 1}
!45 = !{i32 4, !"function_return_thunk_extern", i32 1}
!46 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!47 = !{i32 1, !"Code Model", i32 2}
!48 = !{i32 1, !"override-stack-alignment", i32 8}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = distinct !DISubprogram(name: "acpi_ds_init_callbacks", scope: !3, file: !3, line: 37, type: !51, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !812)
!51 = !DISubroutineType(types: !52)
!52 = !{!13, !53, !15}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !55, line: 37, size: 9024, elements: !56)
!55 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !66, !67, !68, !69, !70, !71, !72, !73, !74, !76, !77, !78, !79, !80, !759, !760, !761, !762, !763, !767, !769, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !796, !797, !798, !799, !800, !801, !802, !803, !804, !810}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !54, file: !55, line: 38, baseType: !53, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !54, file: !55, line: 39, baseType: !22, size: 8, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !54, file: !55, line: 40, baseType: !22, size: 8, offset: 72)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !54, file: !55, line: 41, baseType: !19, size: 16, offset: 80)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !54, file: !55, line: 42, baseType: !22, size: 8, offset: 96)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !54, file: !55, line: 43, baseType: !22, size: 8, offset: 104)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !54, file: !55, line: 44, baseType: !22, size: 8, offset: 112)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !54, file: !55, line: 45, baseType: !65, size: 16, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !14, line: 445, baseType: !19)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !54, file: !55, line: 46, baseType: !22, size: 8, offset: 144)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !54, file: !55, line: 47, baseType: !22, size: 8, offset: 152)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !54, file: !55, line: 48, baseType: !22, size: 8, offset: 160)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !54, file: !55, line: 49, baseType: !22, size: 8, offset: 168)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !54, file: !55, line: 50, baseType: !22, size: 8, offset: 176)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !54, file: !55, line: 51, baseType: !22, size: 8, offset: 184)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !54, file: !55, line: 52, baseType: !22, size: 8, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !54, file: !55, line: 53, baseType: !22, size: 8, offset: 200)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !54, file: !55, line: 54, baseType: !75, size: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !54, file: !55, line: 55, baseType: !15, size: 32, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !54, file: !55, line: 56, baseType: !15, size: 32, offset: 352)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !54, file: !55, line: 57, baseType: !15, size: 32, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !54, file: !55, line: 58, baseType: !15, size: 32, offset: 416)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !54, file: !55, line: 60, baseType: !81, size: 640, offset: 448)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 909, size: 640, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !658, !659, !757, !758}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !81, file: !6, line: 910, baseType: !75, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !81, file: !6, line: 911, baseType: !75, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !81, file: !6, line: 912, baseType: !75, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !81, file: !6, line: 913, baseType: !75, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !81, file: !6, line: 914, baseType: !75, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !81, file: !6, line: 915, baseType: !89, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 891, size: 1600, elements: !91)
!91 = !{!92, !601, !617}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !90, file: !6, line: 892, baseType: !93, size: 448)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 844, size: 448, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !101, !591, !600}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !93, file: !6, line: 845, baseType: !89, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !93, file: !6, line: 845, baseType: !22, size: 8, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !6, line: 845, baseType: !22, size: 8, offset: 72)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !93, file: !6, line: 845, baseType: !19, size: 16, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !93, file: !6, line: 845, baseType: !75, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !93, file: !6, line: 845, baseType: !89, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !93, file: !6, line: 845, baseType: !102, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !104)
!104 = !{!105, !575, !576, !577, !578, !587, !588, !589, !590}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !103, file: !6, line: 134, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !108, line: 369, size: 576, elements: !109)
!108 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!109 = !{!110, !118, !134, !145, !158, !172, !181, !207, !236, !252, !265, !344, !356, !370, !380, !398, !420, !439, !458, !477, !494, !521, !538, !551, !565, !574}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !107, file: !108, line: 370, baseType: !111, size: 128)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !108, line: 73, size: 128, elements: !112)
!112 = !{!113, !114, !115, !116, !117}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !111, file: !108, line: 74, baseType: !106, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !111, file: !108, line: 74, baseType: !22, size: 8, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !108, line: 74, baseType: !22, size: 8, offset: 72)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !111, file: !108, line: 74, baseType: !19, size: 16, offset: 80)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !108, line: 74, baseType: !22, size: 8, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !107, file: !108, line: 371, baseType: !119, size: 192)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !108, line: 76, size: 192, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !130}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !119, file: !108, line: 77, baseType: !106, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !119, file: !108, line: 77, baseType: !22, size: 8, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !108, line: 77, baseType: !22, size: 8, offset: 72)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !119, file: !108, line: 77, baseType: !19, size: 16, offset: 80)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !108, line: 77, baseType: !22, size: 8, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !119, file: !108, line: 77, baseType: !127, size: 24, offset: 104)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 24, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 3)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !119, file: !108, line: 78, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !16, line: 23, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !18, line: 31, baseType: !133)
!133 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !107, file: !108, line: 372, baseType: !135, size: 256)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !108, line: 93, size: 256, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !144}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !135, file: !108, line: 94, baseType: !106, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !135, file: !108, line: 94, baseType: !22, size: 8, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !135, file: !108, line: 94, baseType: !22, size: 8, offset: 72)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !135, file: !108, line: 94, baseType: !19, size: 16, offset: 80)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !135, file: !108, line: 94, baseType: !22, size: 8, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !135, file: !108, line: 94, baseType: !143, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !135, file: !108, line: 94, baseType: !15, size: 32, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !107, file: !108, line: 373, baseType: !146, size: 384)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !108, line: 97, size: 384, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !146, file: !108, line: 98, baseType: !106, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !146, file: !108, line: 98, baseType: !22, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !108, line: 98, baseType: !22, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !146, file: !108, line: 98, baseType: !19, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !108, line: 98, baseType: !22, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !146, file: !108, line: 98, baseType: !75, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !146, file: !108, line: 98, baseType: !15, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !146, file: !108, line: 99, baseType: !15, size: 32, offset: 224)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !146, file: !108, line: 100, baseType: !75, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !146, file: !108, line: 101, baseType: !102, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !107, file: !108, line: 374, baseType: !159, size: 384)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !108, line: 104, size: 384, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !167, !169, !170, !171}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !159, file: !108, line: 105, baseType: !106, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !159, file: !108, line: 105, baseType: !22, size: 8, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !159, file: !108, line: 105, baseType: !22, size: 8, offset: 72)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !159, file: !108, line: 105, baseType: !19, size: 16, offset: 80)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !159, file: !108, line: 105, baseType: !22, size: 8, offset: 96)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !159, file: !108, line: 105, baseType: !102, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !159, file: !108, line: 106, baseType: !168, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !159, file: !108, line: 107, baseType: !75, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !159, file: !108, line: 108, baseType: !15, size: 32, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !159, file: !108, line: 109, baseType: !15, size: 32, offset: 352)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !107, file: !108, line: 375, baseType: !173, size: 192)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !108, line: 118, size: 192, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !173, file: !108, line: 119, baseType: !106, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !173, file: !108, line: 119, baseType: !22, size: 8, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !173, file: !108, line: 119, baseType: !22, size: 8, offset: 72)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !173, file: !108, line: 119, baseType: !19, size: 16, offset: 80)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !173, file: !108, line: 119, baseType: !22, size: 8, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !173, file: !108, line: 119, baseType: !26, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !107, file: !108, line: 376, baseType: !182, size: 448)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !108, line: 144, size: 448, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !204, !205, !206}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !182, file: !108, line: 145, baseType: !106, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !182, file: !108, line: 145, baseType: !22, size: 8, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !182, file: !108, line: 145, baseType: !22, size: 8, offset: 72)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !182, file: !108, line: 145, baseType: !19, size: 16, offset: 80)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !182, file: !108, line: 145, baseType: !22, size: 8, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !182, file: !108, line: 145, baseType: !22, size: 8, offset: 104)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !182, file: !108, line: 146, baseType: !22, size: 8, offset: 112)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !182, file: !108, line: 147, baseType: !22, size: 8, offset: 120)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !182, file: !108, line: 148, baseType: !106, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !182, file: !108, line: 149, baseType: !106, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !182, file: !108, line: 150, baseType: !75, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !182, file: !108, line: 154, baseType: !196, size: 64, offset: 320)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !182, file: !108, line: 151, size: 64, elements: !197)
!197 = !{!198, !203}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !196, file: !108, line: 152, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!13, !53}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !196, file: !108, line: 153, baseType: !106, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !182, file: !108, line: 156, baseType: !15, size: 32, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !182, file: !108, line: 157, baseType: !65, size: 16, offset: 416)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !182, file: !108, line: 158, baseType: !22, size: 8, offset: 432)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !107, file: !108, line: 377, baseType: !208, size: 576)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !108, line: 122, size: 576, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !232, !233, !234, !235}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !208, file: !108, line: 123, baseType: !106, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !208, file: !108, line: 123, baseType: !22, size: 8, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !208, file: !108, line: 123, baseType: !22, size: 8, offset: 72)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !208, file: !108, line: 123, baseType: !19, size: 16, offset: 80)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !208, file: !108, line: 123, baseType: !22, size: 8, offset: 96)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !208, file: !108, line: 123, baseType: !22, size: 8, offset: 104)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !208, file: !108, line: 124, baseType: !19, size: 16, offset: 112)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !208, file: !108, line: 125, baseType: !26, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !208, file: !108, line: 126, baseType: !131, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !208, file: !108, line: 127, baseType: !220, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 634, size: 320, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !6, line: 635, baseType: !26, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !221, file: !6, line: 635, baseType: !22, size: 8, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !221, file: !6, line: 635, baseType: !22, size: 8, offset: 72)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !221, file: !6, line: 635, baseType: !19, size: 16, offset: 80)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !221, file: !6, line: 635, baseType: !19, size: 16, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !221, file: !6, line: 636, baseType: !22, size: 8, offset: 112)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !221, file: !6, line: 637, baseType: !53, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !221, file: !6, line: 638, baseType: !106, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !221, file: !6, line: 639, baseType: !131, size: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !208, file: !108, line: 128, baseType: !106, size: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !108, line: 129, baseType: !106, size: 64, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !208, file: !108, line: 130, baseType: !102, size: 64, offset: 448)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !208, file: !108, line: 131, baseType: !22, size: 8, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !107, file: !108, line: 378, baseType: !237, size: 512)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !108, line: 134, size: 512, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !250, !251}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !237, file: !108, line: 135, baseType: !106, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !237, file: !108, line: 135, baseType: !22, size: 8, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !237, file: !108, line: 135, baseType: !22, size: 8, offset: 72)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !237, file: !108, line: 135, baseType: !19, size: 16, offset: 80)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !237, file: !108, line: 135, baseType: !22, size: 8, offset: 96)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !237, file: !108, line: 135, baseType: !22, size: 8, offset: 104)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !237, file: !108, line: 136, baseType: !102, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !237, file: !108, line: 137, baseType: !106, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !237, file: !108, line: 138, baseType: !106, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !237, file: !108, line: 139, baseType: !249, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !14, line: 129, baseType: !131)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !237, file: !108, line: 140, baseType: !15, size: 32, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !237, file: !108, line: 141, baseType: !26, size: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !107, file: !108, line: 379, baseType: !253, size: 320)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !108, line: 185, size: 320, elements: !254)
!254 = !{!255, !256, !257, !258, !259, !260, !264}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !253, file: !108, line: 186, baseType: !106, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !253, file: !108, line: 186, baseType: !22, size: 8, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !253, file: !108, line: 186, baseType: !22, size: 8, offset: 72)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !253, file: !108, line: 186, baseType: !19, size: 16, offset: 80)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !253, file: !108, line: 186, baseType: !22, size: 8, offset: 96)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !253, file: !108, line: 186, baseType: !261, size: 128, offset: 128)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 128, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 2)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !253, file: !108, line: 186, baseType: !106, size: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !107, file: !108, line: 380, baseType: !266, size: 384)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !108, line: 188, size: 384, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !266, file: !108, line: 189, baseType: !106, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !266, file: !108, line: 189, baseType: !22, size: 8, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !266, file: !108, line: 189, baseType: !22, size: 8, offset: 72)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !266, file: !108, line: 189, baseType: !19, size: 16, offset: 80)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !108, line: 189, baseType: !22, size: 8, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !266, file: !108, line: 190, baseType: !261, size: 128, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !266, file: !108, line: 190, baseType: !106, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !266, file: !108, line: 190, baseType: !276, size: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !278)
!278 = !{!279, !280, !281, !282, !290, !305, !338, !339, !340, !341, !342, !343}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !277, file: !6, line: 481, baseType: !102, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !277, file: !6, line: 482, baseType: !276, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !277, file: !6, line: 483, baseType: !276, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !277, file: !6, line: 484, baseType: !283, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !285)
!285 = !{!286, !287, !288, !289}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !284, file: !6, line: 498, baseType: !283, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !284, file: !6, line: 499, baseType: !283, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !284, file: !6, line: 500, baseType: !276, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !284, file: !6, line: 501, baseType: !15, size: 32, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !277, file: !6, line: 485, baseType: !291, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !293)
!293 = !{!294, !299, !300, !301, !302, !303, !304}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !292, file: !6, line: 467, baseType: !295, size: 128)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !295, file: !6, line: 460, baseType: !22, size: 8)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !295, file: !6, line: 461, baseType: !131, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !292, file: !6, line: 468, baseType: !295, size: 128, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !292, file: !6, line: 469, baseType: !19, size: 16, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !292, file: !6, line: 470, baseType: !22, size: 8, offset: 272)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !292, file: !6, line: 471, baseType: !22, size: 8, offset: 280)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !292, file: !6, line: 472, baseType: !22, size: 8, offset: 288)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !292, file: !6, line: 473, baseType: !22, size: 8, offset: 296)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !277, file: !6, line: 486, baseType: !306, size: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !308)
!308 = !{!309, !333, !334, !335, !336, !337}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !307, file: !6, line: 449, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !311)
!311 = !{!312, !313, !327}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !310, file: !6, line: 439, baseType: !102, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !310, file: !6, line: 440, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !316)
!316 = !{!317, !323, !324, !325, !326}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !315, file: !6, line: 420, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !14, line: 1058, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!15, !322, !15, !26}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !14, line: 424, baseType: !26)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !315, file: !6, line: 421, baseType: !26, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !315, file: !6, line: 422, baseType: !102, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !315, file: !6, line: 423, baseType: !22, size: 8, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !315, file: !6, line: 424, baseType: !22, size: 8, offset: 200)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !310, file: !6, line: 441, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !329, file: !6, line: 430, baseType: !102, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !329, file: !6, line: 431, baseType: !328, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !307, file: !6, line: 450, baseType: !291, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !6, line: 451, baseType: !22, size: 8, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !307, file: !6, line: 452, baseType: !22, size: 8, offset: 136)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !307, file: !6, line: 453, baseType: !22, size: 8, offset: 144)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !307, file: !6, line: 454, baseType: !22, size: 8, offset: 152)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !277, file: !6, line: 487, baseType: !131, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !277, file: !6, line: 488, baseType: !15, size: 32, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !277, file: !6, line: 489, baseType: !19, size: 16, offset: 480)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !277, file: !6, line: 490, baseType: !19, size: 16, offset: 496)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !277, file: !6, line: 491, baseType: !22, size: 8, offset: 512)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !277, file: !6, line: 492, baseType: !22, size: 8, offset: 520)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !107, file: !108, line: 381, baseType: !345, size: 384)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !108, line: 193, size: 384, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !345, file: !108, line: 194, baseType: !106, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !345, file: !108, line: 194, baseType: !22, size: 8, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !345, file: !108, line: 194, baseType: !22, size: 8, offset: 72)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !345, file: !108, line: 194, baseType: !19, size: 16, offset: 80)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !345, file: !108, line: 194, baseType: !22, size: 8, offset: 96)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !345, file: !108, line: 194, baseType: !261, size: 128, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !345, file: !108, line: 194, baseType: !106, size: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !345, file: !108, line: 194, baseType: !15, size: 32, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !345, file: !108, line: 195, baseType: !15, size: 32, offset: 352)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !107, file: !108, line: 382, baseType: !357, size: 384)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !108, line: 198, size: 384, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364, !365, !366, !367, !368}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !357, file: !108, line: 199, baseType: !106, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !357, file: !108, line: 199, baseType: !22, size: 8, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !357, file: !108, line: 199, baseType: !22, size: 8, offset: 72)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !357, file: !108, line: 199, baseType: !19, size: 16, offset: 80)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !108, line: 199, baseType: !22, size: 8, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !357, file: !108, line: 201, baseType: !22, size: 8, offset: 104)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !357, file: !108, line: 202, baseType: !22, size: 8, offset: 112)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !357, file: !108, line: 203, baseType: !261, size: 128, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !357, file: !108, line: 203, baseType: !106, size: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !357, file: !108, line: 203, baseType: !369, size: 64, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !14, line: 128, baseType: !131)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !107, file: !108, line: 383, baseType: !371, size: 320)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !108, line: 206, size: 320, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !378, !379}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !371, file: !108, line: 207, baseType: !106, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !371, file: !108, line: 207, baseType: !22, size: 8, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !371, file: !108, line: 207, baseType: !22, size: 8, offset: 72)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !371, file: !108, line: 207, baseType: !19, size: 16, offset: 80)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !371, file: !108, line: 207, baseType: !22, size: 8, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !371, file: !108, line: 207, baseType: !261, size: 128, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !371, file: !108, line: 207, baseType: !106, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !107, file: !108, line: 384, baseType: !381, size: 384)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !108, line: 234, size: 384, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !381, file: !108, line: 235, baseType: !106, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !381, file: !108, line: 235, baseType: !22, size: 8, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !381, file: !108, line: 235, baseType: !22, size: 8, offset: 72)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !381, file: !108, line: 235, baseType: !19, size: 16, offset: 80)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !381, file: !108, line: 235, baseType: !22, size: 8, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !381, file: !108, line: 235, baseType: !22, size: 8, offset: 104)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !381, file: !108, line: 235, baseType: !22, size: 8, offset: 112)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !381, file: !108, line: 235, baseType: !22, size: 8, offset: 120)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !381, file: !108, line: 235, baseType: !102, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !381, file: !108, line: 235, baseType: !15, size: 32, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !381, file: !108, line: 235, baseType: !15, size: 32, offset: 224)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !381, file: !108, line: 235, baseType: !15, size: 32, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !381, file: !108, line: 235, baseType: !22, size: 8, offset: 288)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !381, file: !108, line: 235, baseType: !22, size: 8, offset: 296)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !381, file: !108, line: 235, baseType: !106, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !107, file: !108, line: 385, baseType: !399, size: 576)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !108, line: 238, size: 576, elements: !400)
!400 = !{!401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !399, file: !108, line: 239, baseType: !106, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !399, file: !108, line: 239, baseType: !22, size: 8, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !399, file: !108, line: 239, baseType: !22, size: 8, offset: 72)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !399, file: !108, line: 239, baseType: !19, size: 16, offset: 80)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !399, file: !108, line: 239, baseType: !22, size: 8, offset: 96)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !399, file: !108, line: 239, baseType: !22, size: 8, offset: 104)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !399, file: !108, line: 239, baseType: !22, size: 8, offset: 112)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !399, file: !108, line: 239, baseType: !22, size: 8, offset: 120)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !399, file: !108, line: 239, baseType: !102, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !399, file: !108, line: 239, baseType: !15, size: 32, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !399, file: !108, line: 239, baseType: !15, size: 32, offset: 224)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !399, file: !108, line: 239, baseType: !15, size: 32, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !399, file: !108, line: 239, baseType: !22, size: 8, offset: 288)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !399, file: !108, line: 239, baseType: !22, size: 8, offset: 296)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !399, file: !108, line: 239, baseType: !19, size: 16, offset: 304)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !399, file: !108, line: 240, baseType: !106, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !399, file: !108, line: 241, baseType: !75, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !399, file: !108, line: 242, baseType: !19, size: 16, offset: 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !399, file: !108, line: 243, baseType: !75, size: 64, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !107, file: !108, line: 386, baseType: !421, size: 384)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !108, line: 263, size: 384, elements: !422)
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !421, file: !108, line: 264, baseType: !106, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !421, file: !108, line: 264, baseType: !22, size: 8, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !421, file: !108, line: 264, baseType: !22, size: 8, offset: 72)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !421, file: !108, line: 264, baseType: !19, size: 16, offset: 80)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !421, file: !108, line: 264, baseType: !22, size: 8, offset: 96)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !421, file: !108, line: 264, baseType: !22, size: 8, offset: 104)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !421, file: !108, line: 264, baseType: !22, size: 8, offset: 112)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !421, file: !108, line: 264, baseType: !22, size: 8, offset: 120)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !421, file: !108, line: 264, baseType: !102, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !421, file: !108, line: 264, baseType: !15, size: 32, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !421, file: !108, line: 264, baseType: !15, size: 32, offset: 224)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !421, file: !108, line: 264, baseType: !15, size: 32, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !421, file: !108, line: 264, baseType: !22, size: 8, offset: 288)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !421, file: !108, line: 264, baseType: !22, size: 8, offset: 296)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !421, file: !108, line: 264, baseType: !22, size: 8, offset: 304)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !421, file: !108, line: 265, baseType: !106, size: 64, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !107, file: !108, line: 387, baseType: !440, size: 448)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !108, line: 246, size: 448, elements: !441)
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !440, file: !108, line: 247, baseType: !106, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !440, file: !108, line: 247, baseType: !22, size: 8, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !440, file: !108, line: 247, baseType: !22, size: 8, offset: 72)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !440, file: !108, line: 247, baseType: !19, size: 16, offset: 80)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !440, file: !108, line: 247, baseType: !22, size: 8, offset: 96)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !440, file: !108, line: 247, baseType: !22, size: 8, offset: 104)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !440, file: !108, line: 247, baseType: !22, size: 8, offset: 112)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !440, file: !108, line: 247, baseType: !22, size: 8, offset: 120)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !440, file: !108, line: 247, baseType: !102, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !440, file: !108, line: 247, baseType: !15, size: 32, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !440, file: !108, line: 247, baseType: !15, size: 32, offset: 224)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !440, file: !108, line: 247, baseType: !15, size: 32, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !440, file: !108, line: 247, baseType: !22, size: 8, offset: 288)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !440, file: !108, line: 247, baseType: !22, size: 8, offset: 296)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !440, file: !108, line: 247, baseType: !106, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !440, file: !108, line: 248, baseType: !106, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !107, file: !108, line: 388, baseType: !459, size: 448)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !108, line: 251, size: 448, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !459, file: !108, line: 252, baseType: !106, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !459, file: !108, line: 252, baseType: !22, size: 8, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !459, file: !108, line: 252, baseType: !22, size: 8, offset: 72)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !459, file: !108, line: 252, baseType: !19, size: 16, offset: 80)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !108, line: 252, baseType: !22, size: 8, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !459, file: !108, line: 252, baseType: !22, size: 8, offset: 104)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !459, file: !108, line: 252, baseType: !22, size: 8, offset: 112)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !459, file: !108, line: 252, baseType: !22, size: 8, offset: 120)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !459, file: !108, line: 252, baseType: !102, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !459, file: !108, line: 252, baseType: !15, size: 32, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !459, file: !108, line: 252, baseType: !15, size: 32, offset: 224)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !459, file: !108, line: 252, baseType: !15, size: 32, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !459, file: !108, line: 252, baseType: !22, size: 8, offset: 288)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !459, file: !108, line: 252, baseType: !22, size: 8, offset: 296)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !459, file: !108, line: 257, baseType: !106, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !459, file: !108, line: 258, baseType: !106, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !107, file: !108, line: 389, baseType: !478, size: 512)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !108, line: 274, size: 512, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487, !492, !493}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !478, file: !108, line: 275, baseType: !106, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !478, file: !108, line: 275, baseType: !22, size: 8, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !478, file: !108, line: 275, baseType: !22, size: 8, offset: 72)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !478, file: !108, line: 275, baseType: !19, size: 16, offset: 80)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !478, file: !108, line: 275, baseType: !22, size: 8, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !478, file: !108, line: 275, baseType: !102, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !478, file: !108, line: 276, baseType: !15, size: 32, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !478, file: !108, line: 277, baseType: !488, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !14, line: 1061, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !322, !15, !26}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !478, file: !108, line: 278, baseType: !26, size: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !478, file: !108, line: 279, baseType: !261, size: 128, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !107, file: !108, line: 390, baseType: !495, size: 576)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !108, line: 282, size: 576, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !502, !503, !504, !510, !511, !512, !513, !519, !520}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !495, file: !108, line: 283, baseType: !106, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !495, file: !108, line: 283, baseType: !22, size: 8, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !495, file: !108, line: 283, baseType: !22, size: 8, offset: 72)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !495, file: !108, line: 283, baseType: !19, size: 16, offset: 80)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !108, line: 283, baseType: !22, size: 8, offset: 96)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !495, file: !108, line: 283, baseType: !22, size: 8, offset: 104)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !495, file: !108, line: 284, baseType: !22, size: 8, offset: 112)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !495, file: !108, line: 285, baseType: !505, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !14, line: 1093, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!13, !15, !249, !15, !509, !26, !26}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !495, file: !108, line: 286, baseType: !102, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !495, file: !108, line: 287, baseType: !26, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !495, file: !108, line: 288, baseType: !26, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !495, file: !108, line: 289, baseType: !514, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !14, line: 1126, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!13, !322, !15, !26, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !495, file: !108, line: 290, baseType: !106, size: 64, offset: 448)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !495, file: !108, line: 291, baseType: !106, size: 64, offset: 512)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !107, file: !108, line: 391, baseType: !522, size: 512)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !108, line: 309, size: 512, elements: !523)
!523 = !{!524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !522, file: !108, line: 310, baseType: !106, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !522, file: !108, line: 310, baseType: !22, size: 8, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !522, file: !108, line: 310, baseType: !22, size: 8, offset: 72)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !522, file: !108, line: 310, baseType: !19, size: 16, offset: 80)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !522, file: !108, line: 310, baseType: !22, size: 8, offset: 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !522, file: !108, line: 310, baseType: !22, size: 8, offset: 104)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !522, file: !108, line: 311, baseType: !22, size: 8, offset: 112)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !522, file: !108, line: 312, baseType: !22, size: 8, offset: 120)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !522, file: !108, line: 313, baseType: !26, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !522, file: !108, line: 314, baseType: !102, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !522, file: !108, line: 315, baseType: !168, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !522, file: !108, line: 316, baseType: !75, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !522, file: !108, line: 317, baseType: !75, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !522, file: !108, line: 318, baseType: !15, size: 32, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !107, file: !108, line: 392, baseType: !539, size: 448)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !108, line: 342, size: 448, elements: !540)
!540 = !{!541, !542, !543, !544, !545, !546, !547, !548, !549, !550}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !539, file: !108, line: 343, baseType: !106, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !539, file: !108, line: 343, baseType: !22, size: 8, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !539, file: !108, line: 343, baseType: !22, size: 8, offset: 72)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !539, file: !108, line: 343, baseType: !19, size: 16, offset: 80)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !108, line: 343, baseType: !22, size: 8, offset: 96)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !539, file: !108, line: 343, baseType: !102, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !539, file: !108, line: 344, baseType: !102, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !539, file: !108, line: 345, baseType: !26, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !539, file: !108, line: 346, baseType: !75, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !539, file: !108, line: 347, baseType: !15, size: 32, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !107, file: !108, line: 393, baseType: !552, size: 256)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !108, line: 352, size: 256, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !564}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !552, file: !108, line: 353, baseType: !106, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !552, file: !108, line: 353, baseType: !22, size: 8, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !552, file: !108, line: 353, baseType: !22, size: 8, offset: 72)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !552, file: !108, line: 353, baseType: !19, size: 16, offset: 80)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !552, file: !108, line: 353, baseType: !22, size: 8, offset: 96)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !552, file: !108, line: 353, baseType: !560, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !14, line: 1064, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !322, !26}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !552, file: !108, line: 354, baseType: !26, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !107, file: !108, line: 394, baseType: !566, size: 192)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !108, line: 359, size: 192, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !566, file: !108, line: 360, baseType: !106, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !566, file: !108, line: 360, baseType: !22, size: 8, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !566, file: !108, line: 360, baseType: !22, size: 8, offset: 72)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !566, file: !108, line: 360, baseType: !19, size: 16, offset: 80)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !566, file: !108, line: 360, baseType: !22, size: 8, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !566, file: !108, line: 360, baseType: !106, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !107, file: !108, line: 401, baseType: !103, size: 384)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !103, file: !6, line: 135, baseType: !22, size: 8, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !6, line: 136, baseType: !22, size: 8, offset: 72)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !6, line: 137, baseType: !19, size: 16, offset: 80)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !6, line: 138, baseType: !579, size: 32, offset: 96)
!579 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !580, line: 328, size: 32, elements: !581)
!580 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!581 = !{!582, !583}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !579, file: !580, line: 329, baseType: !15, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !579, file: !580, line: 330, baseType: !584, size: 32)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 4)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !103, file: !6, line: 139, baseType: !102, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !103, file: !6, line: 140, baseType: !102, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !103, file: !6, line: 141, baseType: !102, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !103, file: !6, line: 142, baseType: !65, size: 16, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !93, file: !6, line: 845, baseType: !592, size: 64, offset: 320)
!592 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 732, size: 64, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !592, file: !6, line: 733, baseType: !131, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !592, file: !6, line: 734, baseType: !15, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !592, file: !6, line: 735, baseType: !143, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !592, file: !6, line: 736, baseType: !75, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !592, file: !6, line: 737, baseType: !143, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !592, file: !6, line: 738, baseType: !89, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !93, file: !6, line: 845, baseType: !22, size: 8, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !90, file: !6, line: 893, baseType: !602, size: 640)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 851, size: 640, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !602, file: !6, line: 852, baseType: !89, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !6, line: 852, baseType: !22, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !6, line: 852, baseType: !22, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !602, file: !6, line: 852, baseType: !19, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !602, file: !6, line: 852, baseType: !75, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !602, file: !6, line: 852, baseType: !89, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !602, file: !6, line: 852, baseType: !102, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !602, file: !6, line: 852, baseType: !592, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !602, file: !6, line: 852, baseType: !22, size: 8, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !602, file: !6, line: 852, baseType: !143, size: 64, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !602, file: !6, line: 853, baseType: !75, size: 64, offset: 512)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !602, file: !6, line: 854, baseType: !15, size: 32, offset: 576)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !602, file: !6, line: 855, baseType: !15, size: 32, offset: 608)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !90, file: !6, line: 894, baseType: !618, size: 1600)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 862, size: 1600, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !618, file: !6, line: 863, baseType: !89, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !618, file: !6, line: 863, baseType: !22, size: 8, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !6, line: 863, baseType: !22, size: 8, offset: 72)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !618, file: !6, line: 863, baseType: !19, size: 16, offset: 80)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !618, file: !6, line: 863, baseType: !75, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !618, file: !6, line: 863, baseType: !89, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !618, file: !6, line: 863, baseType: !102, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !618, file: !6, line: 863, baseType: !592, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !618, file: !6, line: 863, baseType: !22, size: 8, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !618, file: !6, line: 863, baseType: !89, size: 64, offset: 448)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !618, file: !6, line: 864, baseType: !89, size: 64, offset: 512)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !618, file: !6, line: 865, baseType: !143, size: 64, offset: 576)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !618, file: !6, line: 866, baseType: !22, size: 8, offset: 640)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !618, file: !6, line: 867, baseType: !143, size: 64, offset: 704)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !618, file: !6, line: 868, baseType: !143, size: 64, offset: 768)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !618, file: !6, line: 869, baseType: !143, size: 64, offset: 832)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !618, file: !6, line: 870, baseType: !584, size: 32, offset: 896)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !618, file: !6, line: 871, baseType: !15, size: 32, offset: 928)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !618, file: !6, line: 872, baseType: !15, size: 32, offset: 960)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !618, file: !6, line: 873, baseType: !15, size: 32, offset: 992)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !618, file: !6, line: 874, baseType: !15, size: 32, offset: 1024)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !618, file: !6, line: 875, baseType: !15, size: 32, offset: 1056)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !618, file: !6, line: 876, baseType: !15, size: 32, offset: 1088)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !618, file: !6, line: 877, baseType: !15, size: 32, offset: 1120)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !618, file: !6, line: 878, baseType: !15, size: 32, offset: 1152)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !618, file: !6, line: 879, baseType: !15, size: 32, offset: 1184)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !618, file: !6, line: 880, baseType: !15, size: 32, offset: 1216)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !618, file: !6, line: 881, baseType: !15, size: 32, offset: 1248)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !618, file: !6, line: 882, baseType: !15, size: 32, offset: 1280)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !618, file: !6, line: 883, baseType: !15, size: 32, offset: 1312)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !618, file: !6, line: 884, baseType: !19, size: 16, offset: 1344)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !618, file: !6, line: 885, baseType: !22, size: 8, offset: 1360)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !618, file: !6, line: 886, baseType: !22, size: 8, offset: 1368)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !618, file: !6, line: 887, baseType: !22, size: 8, offset: 1376)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !618, file: !6, line: 888, baseType: !655, size: 160, offset: 1384)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 160, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 20)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !81, file: !6, line: 916, baseType: !102, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !81, file: !6, line: 917, baseType: !660, size: 64, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 679, size: 640, elements: !662)
!662 = !{!663, !671, !684, !693, !702, !715, !729, !730, !740}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !661, file: !6, line: 680, baseType: !664, size: 128)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 575, size: 128, elements: !665)
!665 = !{!666, !667, !668, !669, !670}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !664, file: !6, line: 576, baseType: !26, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !664, file: !6, line: 576, baseType: !22, size: 8, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !664, file: !6, line: 576, baseType: !22, size: 8, offset: 72)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !664, file: !6, line: 576, baseType: !19, size: 16, offset: 80)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !664, file: !6, line: 576, baseType: !19, size: 16, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !661, file: !6, line: 681, baseType: !672, size: 384)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 604, size: 384, elements: !673)
!673 = !{!674, !675, !676, !677, !678, !679, !680, !681, !682, !683}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !672, file: !6, line: 605, baseType: !26, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !672, file: !6, line: 605, baseType: !22, size: 8, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !6, line: 605, baseType: !22, size: 8, offset: 72)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !672, file: !6, line: 605, baseType: !19, size: 16, offset: 80)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !672, file: !6, line: 605, baseType: !19, size: 16, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !672, file: !6, line: 606, baseType: !19, size: 16, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !672, file: !6, line: 607, baseType: !89, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !672, file: !6, line: 608, baseType: !75, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !672, file: !6, line: 609, baseType: !75, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !672, file: !6, line: 610, baseType: !131, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !661, file: !6, line: 682, baseType: !685, size: 192)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 582, size: 192, elements: !686)
!686 = !{!687, !688, !689, !690, !691, !692}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !685, file: !6, line: 583, baseType: !26, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !685, file: !6, line: 583, baseType: !22, size: 8, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !685, file: !6, line: 583, baseType: !22, size: 8, offset: 72)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !685, file: !6, line: 583, baseType: !19, size: 16, offset: 80)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !685, file: !6, line: 583, baseType: !19, size: 16, offset: 96)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !685, file: !6, line: 584, baseType: !106, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !661, file: !6, line: 683, baseType: !694, size: 192)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 616, size: 192, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !6, line: 617, baseType: !26, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !694, file: !6, line: 617, baseType: !22, size: 8, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !6, line: 617, baseType: !22, size: 8, offset: 72)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !694, file: !6, line: 617, baseType: !19, size: 16, offset: 80)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !694, file: !6, line: 617, baseType: !19, size: 16, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !694, file: !6, line: 618, baseType: !102, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !661, file: !6, line: 684, baseType: !703, size: 448)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 621, size: 448, elements: !704)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !713, !714}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !703, file: !6, line: 622, baseType: !26, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !703, file: !6, line: 622, baseType: !22, size: 8, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !703, file: !6, line: 622, baseType: !22, size: 8, offset: 72)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !703, file: !6, line: 622, baseType: !19, size: 16, offset: 80)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !703, file: !6, line: 622, baseType: !19, size: 16, offset: 96)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !703, file: !6, line: 623, baseType: !15, size: 32, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !703, file: !6, line: 624, baseType: !89, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !703, file: !6, line: 625, baseType: !75, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !703, file: !6, line: 626, baseType: !75, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !703, file: !6, line: 627, baseType: !15, size: 32, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !661, file: !6, line: 685, baseType: !716, size: 512)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 590, size: 512, elements: !717)
!717 = !{!718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !716, file: !6, line: 591, baseType: !26, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !716, file: !6, line: 591, baseType: !22, size: 8, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !6, line: 591, baseType: !22, size: 8, offset: 72)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !716, file: !6, line: 591, baseType: !19, size: 16, offset: 80)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !716, file: !6, line: 591, baseType: !19, size: 16, offset: 96)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !716, file: !6, line: 592, baseType: !15, size: 32, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !716, file: !6, line: 593, baseType: !106, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !716, file: !6, line: 594, baseType: !106, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !716, file: !6, line: 595, baseType: !53, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !716, file: !6, line: 596, baseType: !26, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !716, file: !6, line: 597, baseType: !15, size: 32, offset: 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !661, file: !6, line: 686, baseType: !221, size: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !661, file: !6, line: 687, baseType: !731, size: 640)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 646, size: 640, elements: !732)
!732 = !{!733, !734, !735, !736, !737, !738}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !731, file: !6, line: 647, baseType: !26, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !731, file: !6, line: 647, baseType: !22, size: 8, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !731, file: !6, line: 647, baseType: !22, size: 8, offset: 72)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !731, file: !6, line: 647, baseType: !19, size: 16, offset: 80)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !731, file: !6, line: 647, baseType: !19, size: 16, offset: 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !731, file: !6, line: 648, baseType: !739, size: 512, offset: 128)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 512, elements: !39)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !661, file: !6, line: 688, baseType: !741, size: 320)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 669, size: 320, elements: !742)
!742 = !{!743, !744, !745, !746, !747, !748, !749, !750, !751}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !741, file: !6, line: 670, baseType: !26, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !741, file: !6, line: 670, baseType: !22, size: 8, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !741, file: !6, line: 670, baseType: !22, size: 8, offset: 72)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !741, file: !6, line: 670, baseType: !19, size: 16, offset: 80)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !741, file: !6, line: 670, baseType: !19, size: 16, offset: 96)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !741, file: !6, line: 671, baseType: !22, size: 8, offset: 112)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !741, file: !6, line: 672, baseType: !102, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !741, file: !6, line: 673, baseType: !106, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !741, file: !6, line: 674, baseType: !752, size: 64, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 660, size: 128, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !753, file: !6, line: 661, baseType: !488, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !753, file: !6, line: 662, baseType: !26, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !81, file: !6, line: 918, baseType: !89, size: 64, offset: 512)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !81, file: !6, line: 919, baseType: !15, size: 32, offset: 576)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !54, file: !55, line: 61, baseType: !15, size: 32, offset: 1088)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !54, file: !55, line: 62, baseType: !15, size: 32, offset: 1120)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !54, file: !55, line: 63, baseType: !19, size: 16, offset: 1152)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !54, file: !55, line: 64, baseType: !22, size: 8, offset: 1168)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !54, file: !55, line: 66, baseType: !764, size: 2688, offset: 1216)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 2688, elements: !765)
!765 = !{!766}
!766 = !DISubrange(count: 7)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !54, file: !55, line: 67, baseType: !768, size: 3072, offset: 3904)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 3072, elements: !39)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !54, file: !55, line: 68, baseType: !770, size: 576, offset: 6976)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 576, elements: !771)
!771 = !{!772}
!772 = !DISubrange(count: 9)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !54, file: !55, line: 69, baseType: !168, size: 64, offset: 7552)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !54, file: !55, line: 71, baseType: !75, size: 64, offset: 7616)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !54, file: !55, line: 72, baseType: !168, size: 64, offset: 7680)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !54, file: !55, line: 73, baseType: !660, size: 64, offset: 7744)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !54, file: !55, line: 74, baseType: !102, size: 64, offset: 7808)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !54, file: !55, line: 75, baseType: !106, size: 64, offset: 7872)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !54, file: !55, line: 76, baseType: !102, size: 64, offset: 7936)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !54, file: !55, line: 77, baseType: !89, size: 64, offset: 8000)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !54, file: !55, line: 78, baseType: !106, size: 64, offset: 8064)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !54, file: !55, line: 79, baseType: !102, size: 64, offset: 8128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !54, file: !55, line: 80, baseType: !143, size: 64, offset: 8192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !54, file: !55, line: 81, baseType: !89, size: 64, offset: 8256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !54, file: !55, line: 82, baseType: !786, size: 64, offset: 8320)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 718, size: 128, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !788, file: !6, line: 722, baseType: !15, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !788, file: !6, line: 723, baseType: !15, size: 32, offset: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !788, file: !6, line: 724, baseType: !19, size: 16, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !788, file: !6, line: 725, baseType: !22, size: 8, offset: 80)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !788, file: !6, line: 726, baseType: !22, size: 8, offset: 88)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !788, file: !6, line: 727, baseType: !22, size: 8, offset: 96)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !54, file: !55, line: 83, baseType: !89, size: 64, offset: 8384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !54, file: !55, line: 84, baseType: !106, size: 64, offset: 8448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !54, file: !55, line: 85, baseType: !660, size: 64, offset: 8512)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !54, file: !55, line: 86, baseType: !106, size: 64, offset: 8576)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !54, file: !55, line: 87, baseType: !660, size: 64, offset: 8640)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !54, file: !55, line: 88, baseType: !89, size: 64, offset: 8704)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !54, file: !55, line: 89, baseType: !89, size: 64, offset: 8768)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !54, file: !55, line: 90, baseType: !220, size: 64, offset: 8832)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !54, file: !55, line: 91, baseType: !805, size: 64, offset: 8896)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 652, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!13, !53, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !54, file: !55, line: 92, baseType: !811, size: 64, offset: 8960)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 656, baseType: !200)
!812 = !{!813, !814}
!813 = !DILocalVariable(name: "walk_state", arg: 1, scope: !50, file: !3, line: 37, type: !53)
!814 = !DILocalVariable(name: "pass_number", arg: 2, scope: !50, file: !3, line: 37, type: !15)
!815 = !DILocation(line: 37, column: 48, scope: !50)
!816 = !DILocation(line: 37, column: 64, scope: !50)
!817 = !DILocation(line: 40, column: 10, scope: !50)
!818 = !DILocation(line: 40, column: 2, scope: !50)
!819 = !DILocation(line: 45, column: 3, scope: !820)
!820 = distinct !DILexicalBlock(scope: !50, file: !3, line: 40, column: 23)
!821 = !DILocation(line: 45, column: 15, scope: !820)
!822 = !DILocation(line: 45, column: 27, scope: !820)
!823 = !DILocation(line: 47, column: 3, scope: !820)
!824 = !DILocation(line: 47, column: 15, scope: !820)
!825 = !DILocation(line: 47, column: 35, scope: !820)
!826 = !DILocation(line: 48, column: 3, scope: !820)
!827 = !DILocation(line: 48, column: 15, scope: !820)
!828 = !DILocation(line: 48, column: 34, scope: !820)
!829 = !DILocation(line: 49, column: 3, scope: !820)
!830 = !DILocation(line: 55, column: 3, scope: !820)
!831 = !DILocation(line: 55, column: 15, scope: !820)
!832 = !DILocation(line: 55, column: 27, scope: !820)
!833 = !DILocation(line: 57, column: 3, scope: !820)
!834 = !DILocation(line: 57, column: 15, scope: !820)
!835 = !DILocation(line: 57, column: 35, scope: !820)
!836 = !DILocation(line: 58, column: 3, scope: !820)
!837 = !DILocation(line: 58, column: 15, scope: !820)
!838 = !DILocation(line: 58, column: 34, scope: !820)
!839 = !DILocation(line: 59, column: 3, scope: !820)
!840 = !DILocation(line: 65, column: 3, scope: !820)
!841 = !DILocation(line: 65, column: 15, scope: !820)
!842 = !DILocation(line: 65, column: 27, scope: !820)
!843 = !DILocation(line: 67, column: 3, scope: !820)
!844 = !DILocation(line: 67, column: 15, scope: !820)
!845 = !DILocation(line: 67, column: 35, scope: !820)
!846 = !DILocation(line: 68, column: 3, scope: !820)
!847 = !DILocation(line: 68, column: 15, scope: !820)
!848 = !DILocation(line: 68, column: 34, scope: !820)
!849 = !DILocation(line: 69, column: 3, scope: !820)
!850 = !DILocation(line: 75, column: 3, scope: !820)
!851 = !DILocation(line: 75, column: 15, scope: !820)
!852 = !DILocation(line: 75, column: 27, scope: !820)
!853 = !DILocation(line: 77, column: 3, scope: !820)
!854 = !DILocation(line: 77, column: 15, scope: !820)
!855 = !DILocation(line: 77, column: 35, scope: !820)
!856 = !DILocation(line: 78, column: 3, scope: !820)
!857 = !DILocation(line: 78, column: 15, scope: !820)
!858 = !DILocation(line: 78, column: 34, scope: !820)
!859 = !DILocation(line: 79, column: 3, scope: !820)
!860 = !DILocation(line: 83, column: 3, scope: !820)
!861 = !DILocation(line: 86, column: 2, scope: !50)
!862 = !DILocation(line: 87, column: 1, scope: !50)
!863 = distinct !DISubprogram(name: "acpi_ds_load1_begin_op", scope: !3, file: !3, line: 103, type: !807, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !864)
!864 = !{!865, !866, !867, !868, !869, !870, !872, !873}
!865 = !DILocalVariable(name: "walk_state", arg: 1, scope: !863, file: !3, line: 103, type: !53)
!866 = !DILocalVariable(name: "out_op", arg: 2, scope: !863, file: !3, line: 104, type: !809)
!867 = !DILocalVariable(name: "op", scope: !863, file: !3, line: 106, type: !89)
!868 = !DILocalVariable(name: "node", scope: !863, file: !3, line: 107, type: !102)
!869 = !DILocalVariable(name: "status", scope: !863, file: !3, line: 108, type: !13)
!870 = !DILocalVariable(name: "object_type", scope: !863, file: !3, line: 109, type: !871)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !14, line: 644, baseType: !15)
!872 = !DILocalVariable(name: "path", scope: !863, file: !3, line: 110, type: !143)
!873 = !DILocalVariable(name: "flags", scope: !863, file: !3, line: 111, type: !15)
!874 = !DILocation(line: 103, column: 48, scope: !863)
!875 = !DILocation(line: 104, column: 36, scope: !863)
!876 = !DILocation(line: 106, column: 2, scope: !863)
!877 = !DILocation(line: 106, column: 27, scope: !863)
!878 = !DILocation(line: 107, column: 2, scope: !863)
!879 = !DILocation(line: 107, column: 30, scope: !863)
!880 = !DILocation(line: 108, column: 2, scope: !863)
!881 = !DILocation(line: 108, column: 14, scope: !863)
!882 = !DILocation(line: 109, column: 2, scope: !863)
!883 = !DILocation(line: 109, column: 19, scope: !863)
!884 = !DILocation(line: 110, column: 2, scope: !863)
!885 = !DILocation(line: 110, column: 8, scope: !863)
!886 = !DILocation(line: 111, column: 2, scope: !863)
!887 = !DILocation(line: 111, column: 6, scope: !863)
!888 = !DILocation(line: 115, column: 7, scope: !863)
!889 = !DILocation(line: 115, column: 19, scope: !863)
!890 = !DILocation(line: 115, column: 5, scope: !863)
!891 = !DILocation(line: 121, column: 6, scope: !892)
!892 = distinct !DILexicalBlock(scope: !863, file: !3, line: 121, column: 6)
!893 = !DILocation(line: 121, column: 6, scope: !863)
!894 = !DILocation(line: 122, column: 9, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !3, line: 122, column: 7)
!896 = distinct !DILexicalBlock(scope: !892, file: !3, line: 121, column: 10)
!897 = !DILocation(line: 122, column: 21, scope: !895)
!898 = !DILocation(line: 122, column: 30, scope: !895)
!899 = !DILocation(line: 122, column: 36, scope: !895)
!900 = !DILocation(line: 122, column: 7, scope: !896)
!901 = !DILocation(line: 123, column: 14, scope: !902)
!902 = distinct !DILexicalBlock(scope: !895, file: !3, line: 122, column: 50)
!903 = !DILocation(line: 123, column: 5, scope: !902)
!904 = !DILocation(line: 123, column: 12, scope: !902)
!905 = !DILocation(line: 124, column: 4, scope: !902)
!906 = !DILocation(line: 129, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !896, file: !3, line: 129, column: 7)
!908 = !DILocation(line: 129, column: 18, scope: !907)
!909 = !DILocation(line: 129, column: 7, scope: !896)
!910 = !DILocation(line: 130, column: 14, scope: !911)
!911 = distinct !DILexicalBlock(scope: !907, file: !3, line: 129, column: 24)
!912 = !DILocation(line: 130, column: 5, scope: !911)
!913 = !DILocation(line: 130, column: 12, scope: !911)
!914 = !DILocation(line: 131, column: 4, scope: !911)
!915 = !DILocation(line: 133, column: 2, scope: !896)
!916 = !DILocation(line: 135, column: 38, scope: !863)
!917 = !DILocation(line: 135, column: 50, scope: !863)
!918 = !DILocation(line: 135, column: 9, scope: !863)
!919 = !DILocation(line: 135, column: 7, scope: !863)
!920 = !DILocation(line: 139, column: 16, scope: !863)
!921 = !DILocation(line: 139, column: 28, scope: !863)
!922 = !DILocation(line: 139, column: 37, scope: !863)
!923 = !DILocation(line: 139, column: 14, scope: !863)
!924 = !DILocation(line: 145, column: 10, scope: !863)
!925 = !DILocation(line: 145, column: 22, scope: !863)
!926 = !DILocation(line: 145, column: 2, scope: !863)
!927 = !DILocation(line: 153, column: 22, scope: !928)
!928 = distinct !DILexicalBlock(scope: !863, file: !3, line: 145, column: 30)
!929 = !DILocation(line: 153, column: 34, scope: !928)
!930 = !DILocation(line: 153, column: 46, scope: !928)
!931 = !DILocation(line: 153, column: 52, scope: !928)
!932 = !DILocation(line: 155, column: 8, scope: !928)
!933 = !DILocation(line: 153, column: 7, scope: !928)
!934 = !DILocation(line: 152, column: 10, scope: !928)
!935 = !DILocation(line: 172, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !928, file: !3, line: 172, column: 7)
!937 = !DILocation(line: 172, column: 7, scope: !928)
!938 = !DILocation(line: 173, column: 4, scope: !939)
!939 = distinct !DILexicalBlock(scope: !936, file: !3, line: 172, column: 29)
!940 = !DILocation(line: 175, column: 4, scope: !939)
!941 = !DILocation(line: 182, column: 11, scope: !928)
!942 = !DILocation(line: 182, column: 17, scope: !928)
!943 = !DILocation(line: 182, column: 3, scope: !928)
!944 = !DILocation(line: 191, column: 4, scope: !945)
!945 = distinct !DILexicalBlock(scope: !928, file: !3, line: 182, column: 23)
!946 = !DILocation(line: 212, column: 4, scope: !945)
!947 = !DILocation(line: 212, column: 10, scope: !945)
!948 = !DILocation(line: 212, column: 15, scope: !945)
!949 = !DILocation(line: 213, column: 4, scope: !945)
!950 = !DILocation(line: 213, column: 16, scope: !945)
!951 = !DILocation(line: 213, column: 35, scope: !945)
!952 = !DILocation(line: 213, column: 41, scope: !945)
!953 = !DILocation(line: 214, column: 4, scope: !945)
!954 = !DILocation(line: 221, column: 9, scope: !955)
!955 = distinct !DILexicalBlock(scope: !945, file: !3, line: 221, column: 8)
!956 = !DILocation(line: 221, column: 17, scope: !955)
!957 = !DILocation(line: 221, column: 14, scope: !955)
!958 = !DILocation(line: 221, column: 37, scope: !955)
!959 = !DILocation(line: 222, column: 9, scope: !955)
!960 = !DILocation(line: 223, column: 9, scope: !955)
!961 = !DILocation(line: 223, column: 21, scope: !955)
!962 = !DILocation(line: 221, column: 8, scope: !945)
!963 = !DILocation(line: 224, column: 5, scope: !964)
!964 = distinct !DILexicalBlock(scope: !955, file: !3, line: 223, column: 49)
!965 = !DILocation(line: 223, column: 46, scope: !955)
!966 = !DILocation(line: 233, column: 4, scope: !945)
!967 = !DILocation(line: 239, column: 4, scope: !945)
!968 = !DILocation(line: 241, column: 3, scope: !928)
!969 = !DILocation(line: 260, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !928, file: !3, line: 260, column: 7)
!971 = !DILocation(line: 260, column: 19, scope: !970)
!972 = !DILocation(line: 260, column: 7, scope: !928)
!973 = !DILocation(line: 264, column: 11, scope: !974)
!974 = distinct !DILexicalBlock(scope: !970, file: !3, line: 260, column: 34)
!975 = !DILocation(line: 264, column: 23, scope: !974)
!976 = !DILocation(line: 264, column: 9, scope: !974)
!977 = !DILocation(line: 265, column: 11, scope: !974)
!978 = !DILocation(line: 266, column: 4, scope: !974)
!979 = !DILocation(line: 273, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !928, file: !3, line: 273, column: 7)
!981 = !DILocation(line: 273, column: 19, scope: !980)
!982 = !DILocation(line: 273, column: 7, scope: !928)
!983 = !DILocation(line: 274, column: 9, scope: !984)
!984 = distinct !DILexicalBlock(scope: !980, file: !3, line: 273, column: 32)
!985 = !DILocation(line: 275, column: 11, scope: !984)
!986 = !DILocation(line: 276, column: 4, scope: !984)
!987 = !DILocation(line: 279, column: 9, scope: !928)
!988 = !DILocation(line: 280, column: 8, scope: !989)
!989 = distinct !DILexicalBlock(scope: !928, file: !3, line: 280, column: 7)
!990 = !DILocation(line: 280, column: 20, scope: !989)
!991 = !DILocation(line: 280, column: 27, scope: !989)
!992 = !DILocation(line: 280, column: 44, scope: !989)
!993 = !DILocation(line: 281, column: 10, scope: !989)
!994 = !DILocation(line: 281, column: 22, scope: !989)
!995 = !DILocation(line: 281, column: 34, scope: !989)
!996 = !DILocation(line: 280, column: 7, scope: !928)
!997 = !DILocation(line: 282, column: 8, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !3, line: 282, column: 8)
!999 = distinct !DILexicalBlock(scope: !989, file: !3, line: 281, column: 62)
!1000 = !DILocation(line: 282, column: 20, scope: !998)
!1001 = !DILocation(line: 282, column: 8, scope: !999)
!1002 = !DILocation(line: 283, column: 11, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !998, file: !3, line: 282, column: 40)
!1004 = !DILocation(line: 288, column: 4, scope: !1003)
!1005 = !DILocation(line: 289, column: 11, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !998, file: !3, line: 288, column: 11)
!1007 = !DILocation(line: 295, column: 3, scope: !999)
!1008 = !DILocation(line: 308, column: 22, scope: !928)
!1009 = !DILocation(line: 308, column: 34, scope: !928)
!1010 = !DILocation(line: 308, column: 46, scope: !928)
!1011 = !DILocation(line: 308, column: 52, scope: !928)
!1012 = !DILocation(line: 309, column: 31, scope: !928)
!1013 = !DILocation(line: 309, column: 38, scope: !928)
!1014 = !DILocation(line: 308, column: 7, scope: !928)
!1015 = !DILocation(line: 307, column: 10, scope: !928)
!1016 = !DILocation(line: 311, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !928, file: !3, line: 311, column: 7)
!1018 = !DILocation(line: 311, column: 7, scope: !928)
!1019 = !DILocation(line: 312, column: 8, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 312, column: 8)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 311, column: 29)
!1022 = !DILocation(line: 312, column: 15, scope: !1020)
!1023 = !DILocation(line: 312, column: 8, scope: !1021)
!1024 = !DILocation(line: 316, column: 9, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 316, column: 9)
!1026 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 312, column: 37)
!1027 = !DILocation(line: 316, column: 15, scope: !1025)
!1028 = !DILocation(line: 316, column: 21, scope: !1025)
!1029 = !DILocation(line: 316, column: 9, scope: !1026)
!1030 = !DILocation(line: 321, column: 6, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 316, column: 42)
!1032 = !DILocation(line: 321, column: 12, scope: !1031)
!1033 = !DILocation(line: 321, column: 18, scope: !1031)
!1034 = !DILocation(line: 322, column: 24, scope: !1031)
!1035 = !DILocation(line: 322, column: 19, scope: !1031)
!1036 = !DILocation(line: 322, column: 6, scope: !1031)
!1037 = !DILocation(line: 322, column: 12, scope: !1031)
!1038 = !DILocation(line: 322, column: 17, scope: !1031)
!1039 = !DILocation(line: 326, column: 30, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 326, column: 10)
!1041 = !DILocation(line: 326, column: 10, scope: !1040)
!1042 = !DILocation(line: 326, column: 10, scope: !1031)
!1043 = !DILocation(line: 329, column: 12, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 326, column: 44)
!1045 = !DILocation(line: 329, column: 18, scope: !1044)
!1046 = !DILocation(line: 330, column: 12, scope: !1044)
!1047 = !DILocation(line: 328, column: 11, scope: !1044)
!1048 = !DILocation(line: 327, column: 14, scope: !1044)
!1049 = !DILocation(line: 331, column: 11, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 331, column: 11)
!1051 = !DILocation(line: 331, column: 11, scope: !1044)
!1052 = !DILocation(line: 332, column: 8, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 331, column: 33)
!1054 = !DILocation(line: 335, column: 6, scope: !1044)
!1055 = !DILocation(line: 337, column: 13, scope: !1031)
!1056 = !DILocation(line: 338, column: 5, scope: !1031)
!1057 = !DILocation(line: 339, column: 4, scope: !1026)
!1058 = !DILocation(line: 341, column: 8, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 341, column: 8)
!1060 = !DILocation(line: 341, column: 8, scope: !1021)
!1061 = !DILocation(line: 342, column: 5, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 341, column: 30)
!1063 = !DILocation(line: 344, column: 5, scope: !1062)
!1064 = !DILocation(line: 346, column: 3, scope: !1021)
!1065 = !DILocation(line: 347, column: 3, scope: !928)
!1066 = !DILocation(line: 352, column: 7, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !863, file: !3, line: 352, column: 6)
!1068 = !DILocation(line: 352, column: 6, scope: !863)
!1069 = !DILocation(line: 356, column: 25, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 352, column: 11)
!1071 = !DILocation(line: 356, column: 37, scope: !1070)
!1072 = !DILocation(line: 356, column: 45, scope: !1070)
!1073 = !DILocation(line: 356, column: 57, scope: !1070)
!1074 = !DILocation(line: 356, column: 8, scope: !1070)
!1075 = !DILocation(line: 356, column: 6, scope: !1070)
!1076 = !DILocation(line: 357, column: 8, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 357, column: 7)
!1078 = !DILocation(line: 357, column: 7, scope: !1070)
!1079 = !DILocation(line: 358, column: 4, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 357, column: 12)
!1081 = !DILocation(line: 360, column: 2, scope: !1070)
!1082 = !DILocation(line: 368, column: 6, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !863, file: !3, line: 368, column: 6)
!1084 = !DILocation(line: 368, column: 6, scope: !863)
!1085 = !DILocation(line: 373, column: 21, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 368, column: 12)
!1087 = !DILocation(line: 373, column: 3, scope: !1086)
!1088 = !DILocation(line: 373, column: 14, scope: !1086)
!1089 = !DILocation(line: 373, column: 19, scope: !1086)
!1090 = !DILocation(line: 374, column: 20, scope: !1086)
!1091 = !DILocation(line: 374, column: 26, scope: !1086)
!1092 = !DILocation(line: 374, column: 31, scope: !1086)
!1093 = !DILocation(line: 374, column: 3, scope: !1086)
!1094 = !DILocation(line: 374, column: 13, scope: !1086)
!1095 = !DILocation(line: 374, column: 18, scope: !1086)
!1096 = !DILocation(line: 375, column: 2, scope: !1086)
!1097 = !DILocation(line: 377, column: 47, scope: !863)
!1098 = !DILocation(line: 377, column: 59, scope: !863)
!1099 = !DILocation(line: 377, column: 21, scope: !863)
!1100 = !DILocation(line: 378, column: 7, scope: !863)
!1101 = !DILocation(line: 377, column: 2, scope: !863)
!1102 = !DILocation(line: 379, column: 12, scope: !863)
!1103 = !DILocation(line: 379, column: 3, scope: !863)
!1104 = !DILocation(line: 379, column: 10, scope: !863)
!1105 = !DILocation(line: 380, column: 2, scope: !863)
!1106 = !DILocation(line: 381, column: 1, scope: !863)
!1107 = distinct !DISubprogram(name: "acpi_ds_load1_end_op", scope: !3, file: !3, line: 396, type: !201, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1108)
!1108 = !{!1109, !1110, !1111, !1112}
!1109 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1107, file: !3, line: 396, type: !53)
!1110 = !DILocalVariable(name: "op", scope: !1107, file: !3, line: 398, type: !89)
!1111 = !DILocalVariable(name: "object_type", scope: !1107, file: !3, line: 399, type: !871)
!1112 = !DILocalVariable(name: "status", scope: !1107, file: !3, line: 400, type: !13)
!1113 = !DILocation(line: 396, column: 58, scope: !1107)
!1114 = !DILocation(line: 398, column: 2, scope: !1107)
!1115 = !DILocation(line: 398, column: 27, scope: !1107)
!1116 = !DILocation(line: 399, column: 2, scope: !1107)
!1117 = !DILocation(line: 399, column: 19, scope: !1107)
!1118 = !DILocation(line: 400, column: 2, scope: !1107)
!1119 = !DILocation(line: 400, column: 14, scope: !1107)
!1120 = !DILocation(line: 407, column: 7, scope: !1107)
!1121 = !DILocation(line: 407, column: 19, scope: !1107)
!1122 = !DILocation(line: 407, column: 5, scope: !1107)
!1123 = !DILocation(line: 426, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 426, column: 6)
!1125 = !DILocation(line: 426, column: 19, scope: !1124)
!1126 = !DILocation(line: 426, column: 31, scope: !1124)
!1127 = !DILocation(line: 426, column: 57, scope: !1124)
!1128 = !DILocation(line: 427, column: 7, scope: !1124)
!1129 = !DILocation(line: 427, column: 19, scope: !1124)
!1130 = !DILocation(line: 427, column: 28, scope: !1124)
!1131 = !DILocation(line: 427, column: 34, scope: !1124)
!1132 = !DILocation(line: 426, column: 6, scope: !1107)
!1133 = !DILocation(line: 428, column: 40, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 427, column: 49)
!1135 = !DILocation(line: 428, column: 44, scope: !1134)
!1136 = !DILocation(line: 428, column: 12, scope: !1134)
!1137 = !DILocation(line: 428, column: 10, scope: !1134)
!1138 = !DILocation(line: 429, column: 3, scope: !1134)
!1139 = !DILocation(line: 434, column: 8, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 434, column: 6)
!1141 = !DILocation(line: 434, column: 20, scope: !1140)
!1142 = !DILocation(line: 434, column: 29, scope: !1140)
!1143 = !DILocation(line: 434, column: 35, scope: !1140)
!1144 = !DILocation(line: 434, column: 6, scope: !1107)
!1145 = !DILocation(line: 435, column: 3, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 434, column: 63)
!1147 = !DILocation(line: 440, column: 16, scope: !1107)
!1148 = !DILocation(line: 440, column: 28, scope: !1107)
!1149 = !DILocation(line: 440, column: 37, scope: !1107)
!1150 = !DILocation(line: 440, column: 14, scope: !1107)
!1151 = !DILocation(line: 442, column: 6, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 442, column: 6)
!1153 = !DILocation(line: 442, column: 18, scope: !1152)
!1154 = !DILocation(line: 442, column: 27, scope: !1152)
!1155 = !DILocation(line: 442, column: 33, scope: !1152)
!1156 = !DILocation(line: 442, column: 6, scope: !1107)
!1157 = !DILocation(line: 447, column: 8, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 447, column: 7)
!1159 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 442, column: 46)
!1160 = !DILocation(line: 447, column: 20, scope: !1158)
!1161 = !DILocation(line: 447, column: 7, scope: !1159)
!1162 = !DILocation(line: 448, column: 8, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 448, column: 8)
!1164 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 447, column: 33)
!1165 = !DILocation(line: 448, column: 20, scope: !1163)
!1166 = !DILocation(line: 448, column: 27, scope: !1163)
!1167 = !DILocation(line: 448, column: 43, scope: !1163)
!1168 = !DILocation(line: 449, column: 8, scope: !1163)
!1169 = !DILocation(line: 449, column: 20, scope: !1163)
!1170 = !DILocation(line: 449, column: 27, scope: !1163)
!1171 = !DILocation(line: 449, column: 48, scope: !1163)
!1172 = !DILocation(line: 450, column: 8, scope: !1163)
!1173 = !DILocation(line: 450, column: 20, scope: !1163)
!1174 = !DILocation(line: 450, column: 27, scope: !1163)
!1175 = !DILocation(line: 448, column: 8, scope: !1164)
!1176 = !DILocation(line: 452, column: 36, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 450, column: 50)
!1178 = !DILocation(line: 452, column: 40, scope: !1177)
!1179 = !DILocation(line: 452, column: 9, scope: !1177)
!1180 = !DILocation(line: 451, column: 12, scope: !1177)
!1181 = !DILocation(line: 453, column: 4, scope: !1177)
!1182 = !DILocation(line: 454, column: 3, scope: !1164)
!1183 = !DILocation(line: 455, column: 3, scope: !1159)
!1184 = !DILocation(line: 462, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 462, column: 6)
!1186 = !DILocation(line: 462, column: 19, scope: !1185)
!1187 = !DILocation(line: 462, column: 6, scope: !1107)
!1188 = !DILocation(line: 463, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 463, column: 7)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 462, column: 32)
!1191 = !DILocation(line: 463, column: 18, scope: !1189)
!1192 = !DILocation(line: 463, column: 29, scope: !1189)
!1193 = !DILocation(line: 463, column: 7, scope: !1190)
!1194 = !DILocation(line: 465, column: 30, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 463, column: 47)
!1196 = !DILocation(line: 465, column: 40, scope: !1195)
!1197 = !DILocation(line: 466, column: 9, scope: !1195)
!1198 = !DILocation(line: 466, column: 19, scope: !1195)
!1199 = !DILocation(line: 468, column: 11, scope: !1195)
!1200 = !DILocation(line: 468, column: 22, scope: !1195)
!1201 = !DILocation(line: 468, column: 28, scope: !1195)
!1202 = !DILocation(line: 469, column: 17, scope: !1195)
!1203 = !DILocation(line: 469, column: 23, scope: !1195)
!1204 = !DILocation(line: 467, column: 9, scope: !1195)
!1205 = !DILocation(line: 470, column: 9, scope: !1195)
!1206 = !DILocation(line: 465, column: 8, scope: !1195)
!1207 = !DILocation(line: 464, column: 11, scope: !1195)
!1208 = !DILocation(line: 471, column: 8, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 471, column: 8)
!1210 = !DILocation(line: 471, column: 8, scope: !1195)
!1211 = !DILocation(line: 472, column: 5, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 471, column: 30)
!1213 = !DILocation(line: 474, column: 3, scope: !1195)
!1214 = !DILocation(line: 474, column: 14, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 474, column: 14)
!1216 = !DILocation(line: 474, column: 25, scope: !1215)
!1217 = !DILocation(line: 474, column: 36, scope: !1215)
!1218 = !DILocation(line: 474, column: 14, scope: !1189)
!1219 = !DILocation(line: 476, column: 30, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 474, column: 59)
!1221 = !DILocation(line: 476, column: 40, scope: !1220)
!1222 = !DILocation(line: 477, column: 9, scope: !1220)
!1223 = !DILocation(line: 477, column: 19, scope: !1220)
!1224 = !DILocation(line: 479, column: 9, scope: !1220)
!1225 = !DILocation(line: 476, column: 8, scope: !1220)
!1226 = !DILocation(line: 475, column: 11, scope: !1220)
!1227 = !DILocation(line: 480, column: 8, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 480, column: 8)
!1229 = !DILocation(line: 480, column: 8, scope: !1220)
!1230 = !DILocation(line: 481, column: 5, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 480, column: 30)
!1232 = !DILocation(line: 483, column: 3, scope: !1220)
!1233 = !DILocation(line: 484, column: 2, scope: !1190)
!1234 = !DILocation(line: 486, column: 6, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 486, column: 6)
!1236 = !DILocation(line: 486, column: 17, scope: !1235)
!1237 = !DILocation(line: 486, column: 28, scope: !1235)
!1238 = !DILocation(line: 486, column: 6, scope: !1107)
!1239 = !DILocation(line: 490, column: 7, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 490, column: 7)
!1241 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 486, column: 44)
!1242 = !DILocation(line: 490, column: 18, scope: !1240)
!1243 = !DILocation(line: 490, column: 24, scope: !1240)
!1244 = !DILocation(line: 490, column: 7, scope: !1241)
!1245 = !DILocation(line: 491, column: 44, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 490, column: 29)
!1247 = !DILocation(line: 492, column: 9, scope: !1246)
!1248 = !DILocation(line: 492, column: 15, scope: !1246)
!1249 = !DILocation(line: 494, column: 15, scope: !1246)
!1250 = !DILocation(line: 491, column: 19, scope: !1246)
!1251 = !DILocation(line: 495, column: 8, scope: !1246)
!1252 = !DILocation(line: 491, column: 18, scope: !1246)
!1253 = !DILocation(line: 491, column: 16, scope: !1246)
!1254 = !DILocation(line: 499, column: 8, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 499, column: 8)
!1256 = !DILocation(line: 499, column: 19, scope: !1255)
!1257 = !DILocation(line: 499, column: 8, scope: !1246)
!1258 = !DILocation(line: 500, column: 34, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 499, column: 25)
!1260 = !DILocation(line: 500, column: 29, scope: !1259)
!1261 = !DILocation(line: 500, column: 5, scope: !1259)
!1262 = !DILocation(line: 500, column: 16, scope: !1259)
!1263 = !DILocation(line: 500, column: 22, scope: !1259)
!1264 = !DILocation(line: 500, column: 27, scope: !1259)
!1265 = !DILocation(line: 501, column: 4, scope: !1259)
!1266 = !DILocation(line: 502, column: 3, scope: !1246)
!1267 = !DILocation(line: 503, column: 2, scope: !1241)
!1268 = !DILocation(line: 541, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 541, column: 6)
!1270 = !DILocation(line: 541, column: 19, scope: !1269)
!1271 = !DILocation(line: 541, column: 6, scope: !1107)
!1272 = !DILocation(line: 542, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 542, column: 7)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 541, column: 32)
!1275 = !DILocation(line: 542, column: 18, scope: !1273)
!1276 = !DILocation(line: 542, column: 29, scope: !1273)
!1277 = !DILocation(line: 542, column: 7, scope: !1274)
!1278 = !DILocation(line: 555, column: 37, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 555, column: 8)
!1280 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 542, column: 47)
!1281 = !DILocation(line: 555, column: 47, scope: !1279)
!1282 = !DILocation(line: 555, column: 9, scope: !1279)
!1283 = !DILocation(line: 555, column: 8, scope: !1280)
!1284 = !DILocation(line: 557, column: 9, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 555, column: 54)
!1286 = !DILocation(line: 556, column: 5, scope: !1285)
!1287 = !DILocation(line: 556, column: 17, scope: !1285)
!1288 = !DILocation(line: 556, column: 29, scope: !1285)
!1289 = !DILocation(line: 558, column: 5, scope: !1285)
!1290 = !DILocation(line: 558, column: 17, scope: !1285)
!1291 = !DILocation(line: 558, column: 30, scope: !1285)
!1292 = !DILocation(line: 561, column: 33, scope: !1285)
!1293 = !DILocation(line: 562, column: 12, scope: !1285)
!1294 = !DILocation(line: 562, column: 23, scope: !1285)
!1295 = !DILocation(line: 563, column: 12, scope: !1285)
!1296 = !DILocation(line: 561, column: 9, scope: !1285)
!1297 = !DILocation(line: 560, column: 12, scope: !1285)
!1298 = !DILocation(line: 564, column: 9, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 564, column: 9)
!1300 = !DILocation(line: 564, column: 9, scope: !1285)
!1301 = !DILocation(line: 566, column: 32, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 564, column: 31)
!1303 = !DILocation(line: 567, column: 11, scope: !1302)
!1304 = !DILocation(line: 568, column: 11, scope: !1302)
!1305 = !DILocation(line: 569, column: 11, scope: !1302)
!1306 = !DILocation(line: 570, column: 11, scope: !1302)
!1307 = !DILocation(line: 566, column: 10, scope: !1302)
!1308 = !DILocation(line: 565, column: 13, scope: !1302)
!1309 = !DILocation(line: 571, column: 5, scope: !1302)
!1310 = !DILocation(line: 573, column: 5, scope: !1285)
!1311 = !DILocation(line: 573, column: 17, scope: !1285)
!1312 = !DILocation(line: 573, column: 29, scope: !1285)
!1313 = !DILocation(line: 574, column: 5, scope: !1285)
!1314 = !DILocation(line: 574, column: 17, scope: !1285)
!1315 = !DILocation(line: 574, column: 30, scope: !1285)
!1316 = !DILocation(line: 576, column: 9, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 576, column: 9)
!1318 = !DILocation(line: 576, column: 9, scope: !1285)
!1319 = !DILocation(line: 577, column: 6, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 576, column: 31)
!1321 = !DILocation(line: 579, column: 4, scope: !1285)
!1322 = !DILocation(line: 580, column: 3, scope: !1280)
!1323 = !DILocation(line: 581, column: 2, scope: !1274)
!1324 = !DILocation(line: 585, column: 7, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 585, column: 6)
!1326 = !DILocation(line: 585, column: 19, scope: !1325)
!1327 = !DILocation(line: 585, column: 31, scope: !1325)
!1328 = !DILocation(line: 586, column: 6, scope: !1325)
!1329 = !DILocation(line: 586, column: 17, scope: !1325)
!1330 = !DILocation(line: 586, column: 28, scope: !1325)
!1331 = !DILocation(line: 586, column: 47, scope: !1325)
!1332 = !DILocation(line: 587, column: 26, scope: !1325)
!1333 = !DILocation(line: 587, column: 6, scope: !1325)
!1334 = !DILocation(line: 585, column: 6, scope: !1107)
!1335 = !DILocation(line: 592, column: 36, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 587, column: 40)
!1337 = !DILocation(line: 592, column: 12, scope: !1336)
!1338 = !DILocation(line: 592, column: 10, scope: !1336)
!1339 = !DILocation(line: 593, column: 2, scope: !1336)
!1340 = !DILocation(line: 595, column: 2, scope: !1107)
!1341 = !DILocation(line: 596, column: 1, scope: !1107)
!1342 = !DISubprogram(name: "acpi_ps_get_next_namestring", scope: !1343, file: !1343, line: 54, type: !1344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1343 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!143, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!1347 = !DISubprogram(name: "acpi_ns_lookup", scope: !1348, file: !1348, line: 118, type: !1349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1348 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!13, !660, !143, !871, !1351, !15, !53, !1352}
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interpreter_mode", file: !6, line: 120, baseType: !5)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!1353 = !DISubprogram(name: "acpi_ut_prefixed_namespace_error", scope: !1354, file: !1354, line: 728, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1354 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1355 = !DISubroutineType(types: !1356)
!1356 = !{null, !1357, !15, !660, !1357, !13}
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!1358 = !DISubprogram(name: "acpi_error", scope: !1359, file: !1359, line: 901, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1359 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !1357, !15, !1357, null}
!1362 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !1354, file: !1354, line: 225, type: !1363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!1357, !871}
!1365 = !DISubprogram(name: "acpi_ut_get_node_name", scope: !1354, file: !1354, line: 227, type: !1366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!1357, !26}
!1368 = !DISubprogram(name: "acpi_ns_opens_scope", scope: !1348, file: !1348, line: 251, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!15, !871}
!1371 = !DISubprogram(name: "acpi_ds_scope_stack_push", scope: !1372, file: !1372, line: 277, type: !1373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1372 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!13, !102, !871, !53}
!1375 = !DISubprogram(name: "acpi_ps_alloc_op", scope: !1343, file: !1343, line: 204, type: !1376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!89, !19, !75}
!1378 = !DISubprogram(name: "acpi_ps_append_arg", scope: !1343, file: !1343, line: 164, type: !1379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !89, !89}
!1381 = !DISubprogram(name: "acpi_ps_get_parent_scope", scope: !1343, file: !1343, line: 144, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!89, !1346}
!1384 = !DISubprogram(name: "acpi_ds_create_buffer_field", scope: !1372, file: !1372, line: 100, type: !1385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!13, !89, !53}
!1387 = !DISubprogram(name: "acpi_ds_init_field_objects", scope: !1372, file: !1372, line: 104, type: !1385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1388 = !DISubprogram(name: "acpi_ex_create_region", scope: !1389, file: !1389, line: 213, type: !1390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1389 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!13, !75, !15, !22, !53}
!1392 = !DISubprogram(name: "acpi_ps_get_opcode_info", scope: !1343, file: !1343, line: 108, type: !1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!786, !19}
!1395 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1348, file: !1348, line: 298, type: !1396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!106, !102}
!1398 = !DISubprogram(name: "acpi_ds_create_operands", scope: !1372, file: !1372, line: 264, type: !1399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!13, !53, !89}
!1401 = !DISubprogram(name: "acpi_ex_create_method", scope: !1389, file: !1389, line: 222, type: !1402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!13, !75, !15, !53}
!1404 = !DISubprogram(name: "acpi_ds_scope_stack_pop", scope: !1372, file: !1372, line: 281, type: !201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
