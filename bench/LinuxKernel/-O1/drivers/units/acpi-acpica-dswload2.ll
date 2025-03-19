; ModuleID = 'drivers/acpi/acpica/dswload2.c'
source_filename = "drivers/acpi/acpica/dswload2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_common_state = type { ptr, i8, i8, i16, i16 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_parse_obj_named = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8, ptr, ptr, i32, i32 }

@acpi_gbl_root_node = external dso_local global ptr, align 8
@_acpi_module_name = internal constant [9 x i8] c"dswload2\00", align 1, !dbg !0
@.str = private unnamed_addr constant [86 x i8] c"Type override - [%4.4s] had invalid type (%s) for Scope operator, changed to type ANY\00", align 1, !dbg !34
@.str.1 = private unnamed_addr constant [73 x i8] c"Invalid type (%s) for target of Scope operator [%4.4s] (Cannot override)\00", align 1, !dbg !39
@.str.2 = private unnamed_addr constant [26 x i8] c"CreateBufferField failure\00", align 1, !dbg !44

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_load2_begin_op(ptr noundef %walk_state, ptr noundef %out_op) #0 align 16 !dbg !62 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %out_op.addr = alloca ptr, align 8
  %op = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %object_type = alloca i32, align 4
  %buffer_ptr = alloca ptr, align 8
  %flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !821, metadata !DIExpression()), !dbg !830
  store ptr %out_op, ptr %out_op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_op.addr, metadata !822, metadata !DIExpression()), !dbg !831
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #4, !dbg !832
  call void @llvm.dbg.declare(metadata ptr %op, metadata !823, metadata !DIExpression()), !dbg !833
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !834
  call void @llvm.dbg.declare(metadata ptr %node, metadata !824, metadata !DIExpression()), !dbg !835
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !836
  call void @llvm.dbg.declare(metadata ptr %status, metadata !825, metadata !DIExpression()), !dbg !837
  call void @llvm.lifetime.start.p0(i64 4, ptr %object_type) #4, !dbg !838
  call void @llvm.dbg.declare(metadata ptr %object_type, metadata !826, metadata !DIExpression()), !dbg !839
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer_ptr) #4, !dbg !840
  call void @llvm.dbg.declare(metadata ptr %buffer_ptr, metadata !828, metadata !DIExpression()), !dbg !841
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #4, !dbg !842
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !829, metadata !DIExpression()), !dbg !843
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !844
  %op1 = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 40, !dbg !845
  %1 = load ptr, ptr %op1, align 8, !dbg !845
  store ptr %1, ptr %op, align 8, !dbg !846
  %2 = load ptr, ptr %op, align 8, !dbg !847
  %tobool = icmp ne ptr %2, null, !dbg !847
  br i1 %tobool, label %if.then, label %if.else29, !dbg !849

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !850
  %control_state = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 32, !dbg !853
  %4 = load ptr, ptr %control_state, align 8, !dbg !853
  %tobool2 = icmp ne ptr %4, null, !dbg !854
  br i1 %tobool2, label %land.lhs.true, label %if.end, !dbg !855

land.lhs.true:                                    ; preds = %if.then
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !856
  %control_state3 = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 32, !dbg !857
  %6 = load ptr, ptr %control_state3, align 8, !dbg !857
  %state = getelementptr inbounds %struct.acpi_common_state, ptr %6, i32 0, i32 4, !dbg !858
  %7 = load i16, ptr %state, align 4, !dbg !858
  %conv = zext i16 %7 to i32, !dbg !856
  %cmp = icmp eq i32 %conv, 193, !dbg !859
  br i1 %cmp, label %if.then5, label %if.end, !dbg !860

if.then5:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !861
  %9 = load ptr, ptr %out_op.addr, align 8, !dbg !863
  %call = call i32 @acpi_ds_exec_begin_op(ptr noundef %8, ptr noundef %9) #5, !dbg !864
  store i32 %call, ptr %status, align 4, !dbg !865
  %10 = load i32, ptr %status, align 4, !dbg !866
  store i32 %10, ptr %retval, align 4, !dbg !866
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !866

if.end:                                           ; preds = %land.lhs.true, %if.then
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !867
  %op_info = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 41, !dbg !869
  %12 = load ptr, ptr %op_info, align 8, !dbg !869
  %flags6 = getelementptr inbounds %struct.acpi_opcode_info, ptr %12, i32 0, i32 2, !dbg !870
  %13 = load i16, ptr %flags6, align 4, !dbg !870
  %conv7 = zext i16 %13 to i32, !dbg !867
  %and = and i32 %conv7, 256, !dbg !871
  %tobool8 = icmp ne i32 %and, 0, !dbg !871
  br i1 %tobool8, label %lor.lhs.false, label %land.lhs.true9, !dbg !872

land.lhs.true9:                                   ; preds = %if.end
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !873
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %14, i32 0, i32 3, !dbg !874
  %15 = load i16, ptr %opcode, align 2, !dbg !874
  %conv10 = zext i16 %15 to i32, !dbg !873
  %cmp11 = icmp ne i32 %conv10, 45, !dbg !875
  br i1 %cmp11, label %if.then18, label %lor.lhs.false, !dbg !876

lor.lhs.false:                                    ; preds = %land.lhs.true9, %if.end
  %16 = load ptr, ptr %walk_state.addr, align 8, !dbg !877
  %op_info13 = getelementptr inbounds %struct.acpi_walk_state, ptr %16, i32 0, i32 41, !dbg !878
  %17 = load ptr, ptr %op_info13, align 8, !dbg !878
  %flags14 = getelementptr inbounds %struct.acpi_opcode_info, ptr %17, i32 0, i32 2, !dbg !879
  %18 = load i16, ptr %flags14, align 4, !dbg !879
  %conv15 = zext i16 %18 to i32, !dbg !877
  %and16 = and i32 %conv15, 64, !dbg !880
  %tobool17 = icmp ne i32 %and16, 0, !dbg !880
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !881

if.then18:                                        ; preds = %lor.lhs.false, %land.lhs.true9
  store i32 0, ptr %retval, align 4, !dbg !882
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !882

if.end19:                                         ; preds = %lor.lhs.false
  %19 = load ptr, ptr %walk_state.addr, align 8, !dbg !884
  %opcode20 = getelementptr inbounds %struct.acpi_walk_state, ptr %19, i32 0, i32 3, !dbg !886
  %20 = load i16, ptr %opcode20, align 2, !dbg !886
  %conv21 = zext i16 %20 to i32, !dbg !884
  %cmp22 = icmp eq i32 %conv21, 45, !dbg !887
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !888

if.then24:                                        ; preds = %if.end19
  %21 = load ptr, ptr %op, align 8, !dbg !889
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %21, i32 0, i32 7, !dbg !891
  %22 = load ptr, ptr %value, align 8, !dbg !892
  store ptr %22, ptr %buffer_ptr, align 8, !dbg !893
  %23 = load ptr, ptr %buffer_ptr, align 8, !dbg !894
  %tobool25 = icmp ne ptr %23, null, !dbg !894
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !896

if.then26:                                        ; preds = %if.then24
  store i32 0, ptr %retval, align 4, !dbg !897
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !897

if.end27:                                         ; preds = %if.then24
  br label %if.end28, !dbg !899

if.else:                                          ; preds = %if.end19
  %24 = load ptr, ptr %op, align 8, !dbg !900
  %name = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %24, i32 0, i32 12, !dbg !900
  %25 = ptrtoint ptr %name to i64, !dbg !900
  %26 = inttoptr i64 %25 to ptr, !dbg !900
  store ptr %26, ptr %buffer_ptr, align 8, !dbg !902
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.end27
  br label %if.end31, !dbg !903

if.else29:                                        ; preds = %entry
  %27 = load ptr, ptr %walk_state.addr, align 8, !dbg !904
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, ptr %27, i32 0, i32 21, !dbg !906
  %call30 = call ptr @acpi_ps_get_next_namestring(ptr noundef %parser_state) #5, !dbg !907
  store ptr %call30, ptr %buffer_ptr, align 8, !dbg !908
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.end28
  %28 = load ptr, ptr %walk_state.addr, align 8, !dbg !909
  %op_info32 = getelementptr inbounds %struct.acpi_walk_state, ptr %28, i32 0, i32 41, !dbg !910
  %29 = load ptr, ptr %op_info32, align 8, !dbg !910
  %object_type33 = getelementptr inbounds %struct.acpi_opcode_info, ptr %29, i32 0, i32 3, !dbg !911
  %30 = load i8, ptr %object_type33, align 2, !dbg !911
  %conv34 = zext i8 %30 to i32, !dbg !909
  store i32 %conv34, ptr %object_type, align 4, !dbg !912
  %31 = load ptr, ptr %walk_state.addr, align 8, !dbg !913
  %opcode35 = getelementptr inbounds %struct.acpi_walk_state, ptr %31, i32 0, i32 3, !dbg !914
  %32 = load i16, ptr %opcode35, align 2, !dbg !914
  %conv36 = zext i16 %32 to i32, !dbg !913
  switch i32 %conv36, label %sw.default81 [
    i32 23425, label %sw.bb
    i32 23431, label %sw.bb
    i32 23430, label %sw.bb
    i32 45, label %sw.bb37
    i32 16, label %sw.bb39
  ], !dbg !915

sw.bb:                                            ; preds = %if.end31, %if.end31, %if.end31
  store ptr null, ptr %node, align 8, !dbg !916
  store i32 0, ptr %status, align 4, !dbg !918
  br label %sw.epilog128, !dbg !919

sw.bb37:                                          ; preds = %if.end31
  %33 = load ptr, ptr %walk_state.addr, align 8, !dbg !920
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, ptr %33, i32 0, i32 46, !dbg !921
  %34 = load ptr, ptr %scope_info, align 8, !dbg !921
  %35 = load ptr, ptr %buffer_ptr, align 8, !dbg !922
  %36 = load i32, ptr %object_type, align 4, !dbg !923
  %37 = load ptr, ptr %walk_state.addr, align 8, !dbg !924
  %call38 = call i32 @acpi_ns_lookup(ptr noundef %34, ptr noundef %35, i32 noundef %36, i32 noundef 3, i32 noundef 1, ptr noundef %37, ptr noundef %node) #5, !dbg !925
  store i32 %call38, ptr %status, align 4, !dbg !926
  br label %sw.epilog128, !dbg !927

sw.bb39:                                          ; preds = %if.end31
  %38 = load ptr, ptr %op, align 8, !dbg !928
  %tobool40 = icmp ne ptr %38, null, !dbg !928
  br i1 %tobool40, label %land.lhs.true41, label %if.else51, !dbg !930

land.lhs.true41:                                  ; preds = %sw.bb39
  %39 = load ptr, ptr %op, align 8, !dbg !931
  %node42 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %39, i32 0, i32 6, !dbg !932
  %40 = load ptr, ptr %node42, align 8, !dbg !932
  %41 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !933
  %cmp43 = icmp eq ptr %40, %41, !dbg !934
  br i1 %cmp43, label %if.then45, label %if.else51, !dbg !935

if.then45:                                        ; preds = %land.lhs.true41
  %42 = load ptr, ptr %op, align 8, !dbg !936
  %node46 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %42, i32 0, i32 6, !dbg !938
  %43 = load ptr, ptr %node46, align 8, !dbg !938
  store ptr %43, ptr %node, align 8, !dbg !939
  %44 = load ptr, ptr %node, align 8, !dbg !940
  %45 = load i32, ptr %object_type, align 4, !dbg !941
  %46 = load ptr, ptr %walk_state.addr, align 8, !dbg !942
  %call47 = call i32 @acpi_ds_scope_stack_push(ptr noundef %44, i32 noundef %45, ptr noundef %46) #5, !dbg !943
  store i32 %call47, ptr %status, align 4, !dbg !944
  %47 = load i32, ptr %status, align 4, !dbg !945
  %tobool48 = icmp ne i32 %47, 0, !dbg !945
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !947

if.then49:                                        ; preds = %if.then45
  %48 = load i32, ptr %status, align 4, !dbg !948
  store i32 %48, ptr %retval, align 4, !dbg !948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !948

if.end50:                                         ; preds = %if.then45
  br label %if.end58, !dbg !950

if.else51:                                        ; preds = %land.lhs.true41, %sw.bb39
  %49 = load ptr, ptr %walk_state.addr, align 8, !dbg !951
  %scope_info52 = getelementptr inbounds %struct.acpi_walk_state, ptr %49, i32 0, i32 46, !dbg !953
  %50 = load ptr, ptr %scope_info52, align 8, !dbg !953
  %51 = load ptr, ptr %buffer_ptr, align 8, !dbg !954
  %52 = load i32, ptr %object_type, align 4, !dbg !955
  %53 = load ptr, ptr %walk_state.addr, align 8, !dbg !956
  %call53 = call i32 @acpi_ns_lookup(ptr noundef %50, ptr noundef %51, i32 noundef %52, i32 noundef 3, i32 noundef 1, ptr noundef %53, ptr noundef %node) #5, !dbg !957
  store i32 %call53, ptr %status, align 4, !dbg !958
  %54 = load i32, ptr %status, align 4, !dbg !959
  %tobool54 = icmp ne i32 %54, 0, !dbg !959
  br i1 %tobool54, label %if.then55, label %if.end57, !dbg !961

if.then55:                                        ; preds = %if.else51
  %55 = load ptr, ptr %walk_state.addr, align 8, !dbg !962
  %scope_info56 = getelementptr inbounds %struct.acpi_walk_state, ptr %55, i32 0, i32 46, !dbg !962
  %56 = load ptr, ptr %scope_info56, align 8, !dbg !962
  %57 = load ptr, ptr %buffer_ptr, align 8, !dbg !962
  %58 = load i32, ptr %status, align 4, !dbg !962
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 163, ptr noundef %56, ptr noundef %57, i32 noundef %58) #5, !dbg !962
  %59 = load i32, ptr %status, align 4, !dbg !964
  store i32 %59, ptr %retval, align 4, !dbg !964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !964

if.end57:                                         ; preds = %if.else51
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end50
  %60 = load ptr, ptr %node, align 8, !dbg !965
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %60, i32 0, i32 2, !dbg !966
  %61 = load i8, ptr %type, align 1, !dbg !966
  %conv59 = zext i8 %61 to i32, !dbg !965
  switch i32 %conv59, label %sw.default [
    i32 0, label %sw.bb60
    i32 27, label %sw.bb60
    i32 6, label %sw.bb60
    i32 11, label %sw.bb60
    i32 12, label %sw.bb60
    i32 13, label %sw.bb60
    i32 1, label %sw.bb61
    i32 2, label %sw.bb61
    i32 3, label %sw.bb61
    i32 8, label %sw.bb69
  ], !dbg !967

sw.bb60:                                          ; preds = %if.end58, %if.end58, %if.end58, %if.end58, %if.end58, %if.end58
  br label %sw.epilog, !dbg !968

sw.bb61:                                          ; preds = %if.end58, %if.end58, %if.end58
  %62 = load ptr, ptr %node, align 8, !dbg !970
  %call62 = call ptr @acpi_ut_get_node_name(ptr noundef %62) #5, !dbg !970
  %63 = load ptr, ptr %node, align 8, !dbg !970
  %type63 = getelementptr inbounds %struct.acpi_namespace_node, ptr %63, i32 0, i32 2, !dbg !970
  %64 = load i8, ptr %type63, align 1, !dbg !970
  %conv64 = zext i8 %64 to i32, !dbg !970
  %call65 = call ptr @acpi_ut_get_type_name(i32 noundef %conv64) #5, !dbg !970
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 195, ptr noundef @.str, ptr noundef %call62, ptr noundef %call65) #5, !dbg !970
  %65 = load ptr, ptr %node, align 8, !dbg !971
  %type66 = getelementptr inbounds %struct.acpi_namespace_node, ptr %65, i32 0, i32 2, !dbg !972
  store i8 0, ptr %type66, align 1, !dbg !973
  %66 = load ptr, ptr %walk_state.addr, align 8, !dbg !974
  %scope_info67 = getelementptr inbounds %struct.acpi_walk_state, ptr %66, i32 0, i32 46, !dbg !975
  %67 = load ptr, ptr %scope_info67, align 8, !dbg !975
  %value68 = getelementptr inbounds %struct.acpi_common_state, ptr %67, i32 0, i32 3, !dbg !976
  store i16 0, ptr %value68, align 2, !dbg !977
  br label %sw.epilog, !dbg !978

sw.bb69:                                          ; preds = %if.end58
  %68 = load ptr, ptr %node, align 8, !dbg !979
  %69 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !981
  %cmp70 = icmp eq ptr %68, %69, !dbg !982
  br i1 %cmp70, label %land.lhs.true72, label %if.end76, !dbg !983

land.lhs.true72:                                  ; preds = %sw.bb69
  %70 = load ptr, ptr %walk_state.addr, align 8, !dbg !984
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, ptr %70, i32 0, i32 20, !dbg !985
  %71 = load i32, ptr %parse_flags, align 4, !dbg !985
  %and73 = and i32 %71, 1024, !dbg !986
  %tobool74 = icmp ne i32 %and73, 0, !dbg !986
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !987

if.then75:                                        ; preds = %land.lhs.true72
  br label %sw.epilog, !dbg !988

if.end76:                                         ; preds = %land.lhs.true72, %sw.bb69
  br label %sw.default, !dbg !990

sw.default:                                       ; preds = %if.end58, %if.end76
  %72 = load ptr, ptr %node, align 8, !dbg !991
  %type77 = getelementptr inbounds %struct.acpi_namespace_node, ptr %72, i32 0, i32 2, !dbg !991
  %73 = load i8, ptr %type77, align 1, !dbg !991
  %conv78 = zext i8 %73 to i32, !dbg !991
  %call79 = call ptr @acpi_ut_get_type_name(i32 noundef %conv78) #5, !dbg !991
  %74 = load ptr, ptr %node, align 8, !dbg !991
  %call80 = call ptr @acpi_ut_get_node_name(ptr noundef %74) #5, !dbg !991
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 223, ptr noundef @.str.1, ptr noundef %call79, ptr noundef %call80) #5, !dbg !991
  store i32 12291, ptr %retval, align 4, !dbg !992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !992

sw.epilog:                                        ; preds = %if.then75, %sw.bb61, %sw.bb60
  br label %sw.epilog128, !dbg !993

sw.default81:                                     ; preds = %if.end31
  %75 = load ptr, ptr %op, align 8, !dbg !994
  %tobool82 = icmp ne ptr %75, null, !dbg !994
  br i1 %tobool82, label %land.lhs.true83, label %if.end96, !dbg !996

land.lhs.true83:                                  ; preds = %sw.default81
  %76 = load ptr, ptr %op, align 8, !dbg !997
  %node84 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %76, i32 0, i32 6, !dbg !998
  %77 = load ptr, ptr %node84, align 8, !dbg !998
  %tobool85 = icmp ne ptr %77, null, !dbg !997
  br i1 %tobool85, label %if.then86, label %if.end96, !dbg !999

if.then86:                                        ; preds = %land.lhs.true83
  %78 = load ptr, ptr %op, align 8, !dbg !1000
  %node87 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %78, i32 0, i32 6, !dbg !1002
  %79 = load ptr, ptr %node87, align 8, !dbg !1002
  store ptr %79, ptr %node, align 8, !dbg !1003
  %80 = load i32, ptr %object_type, align 4, !dbg !1004
  %call88 = call i32 @acpi_ns_opens_scope(i32 noundef %80) #5, !dbg !1006
  %tobool89 = icmp ne i32 %call88, 0, !dbg !1006
  br i1 %tobool89, label %if.then90, label %if.end95, !dbg !1007

if.then90:                                        ; preds = %if.then86
  %81 = load ptr, ptr %node, align 8, !dbg !1008
  %82 = load i32, ptr %object_type, align 4, !dbg !1010
  %83 = load ptr, ptr %walk_state.addr, align 8, !dbg !1011
  %call91 = call i32 @acpi_ds_scope_stack_push(ptr noundef %81, i32 noundef %82, ptr noundef %83) #5, !dbg !1012
  store i32 %call91, ptr %status, align 4, !dbg !1013
  %84 = load i32, ptr %status, align 4, !dbg !1014
  %tobool92 = icmp ne i32 %84, 0, !dbg !1014
  br i1 %tobool92, label %if.then93, label %if.end94, !dbg !1016

if.then93:                                        ; preds = %if.then90
  %85 = load i32, ptr %status, align 4, !dbg !1017
  store i32 %85, ptr %retval, align 4, !dbg !1017
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1017

if.end94:                                         ; preds = %if.then90
  br label %if.end95, !dbg !1019

if.end95:                                         ; preds = %if.end94, %if.then86
  store i32 0, ptr %retval, align 4, !dbg !1020
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1020

if.end96:                                         ; preds = %land.lhs.true83, %sw.default81
  %86 = load ptr, ptr %walk_state.addr, align 8, !dbg !1021
  %deferred_node = getelementptr inbounds %struct.acpi_walk_state, ptr %86, i32 0, i32 33, !dbg !1023
  %87 = load ptr, ptr %deferred_node, align 8, !dbg !1023
  %tobool97 = icmp ne ptr %87, null, !dbg !1021
  br i1 %tobool97, label %if.then98, label %if.end100, !dbg !1024

if.then98:                                        ; preds = %if.end96
  %88 = load ptr, ptr %walk_state.addr, align 8, !dbg !1025
  %deferred_node99 = getelementptr inbounds %struct.acpi_walk_state, ptr %88, i32 0, i32 33, !dbg !1027
  %89 = load ptr, ptr %deferred_node99, align 8, !dbg !1027
  store ptr %89, ptr %node, align 8, !dbg !1028
  store i32 0, ptr %status, align 4, !dbg !1029
  br label %sw.epilog128, !dbg !1030

if.end100:                                        ; preds = %if.end96
  store i32 0, ptr %flags, align 4, !dbg !1031
  %90 = load ptr, ptr %walk_state.addr, align 8, !dbg !1032
  %pass_number = getelementptr inbounds %struct.acpi_walk_state, ptr %90, i32 0, i32 12, !dbg !1034
  %91 = load i8, ptr %pass_number, align 2, !dbg !1034
  %conv101 = zext i8 %91 to i32, !dbg !1032
  %cmp102 = icmp eq i32 %conv101, 3, !dbg !1035
  br i1 %cmp102, label %if.then104, label %if.end111, !dbg !1036

if.then104:                                       ; preds = %if.end100
  %92 = load i32, ptr %flags, align 4, !dbg !1037
  %or = or i32 %92, 8, !dbg !1037
  store i32 %or, ptr %flags, align 4, !dbg !1037
  %93 = load ptr, ptr %walk_state.addr, align 8, !dbg !1039
  %parse_flags105 = getelementptr inbounds %struct.acpi_walk_state, ptr %93, i32 0, i32 20, !dbg !1041
  %94 = load i32, ptr %parse_flags105, align 4, !dbg !1041
  %and106 = and i32 %94, 1024, !dbg !1042
  %tobool107 = icmp ne i32 %and106, 0, !dbg !1042
  br i1 %tobool107, label %if.end110, label %if.then108, !dbg !1043

if.then108:                                       ; preds = %if.then104
  %95 = load i32, ptr %flags, align 4, !dbg !1044
  %or109 = or i32 %95, 64, !dbg !1044
  store i32 %or109, ptr %flags, align 4, !dbg !1044
  br label %if.end110, !dbg !1046

if.end110:                                        ; preds = %if.then108, %if.then104
  br label %if.end111, !dbg !1047

if.end111:                                        ; preds = %if.end110, %if.end100
  %96 = load ptr, ptr %walk_state.addr, align 8, !dbg !1048
  %op_info112 = getelementptr inbounds %struct.acpi_walk_state, ptr %96, i32 0, i32 41, !dbg !1050
  %97 = load ptr, ptr %op_info112, align 8, !dbg !1050
  %flags113 = getelementptr inbounds %struct.acpi_opcode_info, ptr %97, i32 0, i32 2, !dbg !1051
  %98 = load i16, ptr %flags113, align 4, !dbg !1051
  %conv114 = zext i16 %98 to i32, !dbg !1048
  %and115 = and i32 %conv114, 64, !dbg !1052
  %tobool116 = icmp ne i32 %and115, 0, !dbg !1052
  br i1 %tobool116, label %if.then117, label %if.end119, !dbg !1053

if.then117:                                       ; preds = %if.end111
  %99 = load i32, ptr %flags, align 4, !dbg !1054
  %or118 = or i32 %99, 512, !dbg !1054
  store i32 %or118, ptr %flags, align 4, !dbg !1054
  br label %if.end119, !dbg !1056

if.end119:                                        ; preds = %if.then117, %if.end111
  %100 = load ptr, ptr %walk_state.addr, align 8, !dbg !1057
  %scope_info120 = getelementptr inbounds %struct.acpi_walk_state, ptr %100, i32 0, i32 46, !dbg !1058
  %101 = load ptr, ptr %scope_info120, align 8, !dbg !1058
  %102 = load ptr, ptr %buffer_ptr, align 8, !dbg !1059
  %103 = load i32, ptr %object_type, align 4, !dbg !1060
  %104 = load i32, ptr %flags, align 4, !dbg !1061
  %105 = load ptr, ptr %walk_state.addr, align 8, !dbg !1062
  %call121 = call i32 @acpi_ns_lookup(ptr noundef %101, ptr noundef %102, i32 noundef %103, i32 noundef 2, i32 noundef %104, ptr noundef %105, ptr noundef %node) #5, !dbg !1063
  store i32 %call121, ptr %status, align 4, !dbg !1064
  %106 = load i32, ptr %status, align 4, !dbg !1065
  %tobool122 = icmp ne i32 %106, 0, !dbg !1065
  br i1 %tobool122, label %if.end127, label %land.lhs.true123, !dbg !1067

land.lhs.true123:                                 ; preds = %if.end119
  %107 = load i32, ptr %flags, align 4, !dbg !1068
  %and124 = and i32 %107, 64, !dbg !1069
  %tobool125 = icmp ne i32 %and124, 0, !dbg !1069
  br i1 %tobool125, label %if.then126, label %if.end127, !dbg !1070

if.then126:                                       ; preds = %land.lhs.true123
  br label %if.end127, !dbg !1071

if.end127:                                        ; preds = %if.then126, %land.lhs.true123, %if.end119
  br label %sw.epilog128, !dbg !1073

sw.epilog128:                                     ; preds = %if.end127, %if.then98, %sw.epilog, %sw.bb37, %sw.bb
  %108 = load i32, ptr %status, align 4, !dbg !1074
  %tobool129 = icmp ne i32 %108, 0, !dbg !1074
  br i1 %tobool129, label %if.then130, label %if.end132, !dbg !1076

if.then130:                                       ; preds = %sw.epilog128
  %109 = load ptr, ptr %walk_state.addr, align 8, !dbg !1077
  %scope_info131 = getelementptr inbounds %struct.acpi_walk_state, ptr %109, i32 0, i32 46, !dbg !1077
  %110 = load ptr, ptr %scope_info131, align 8, !dbg !1077
  %111 = load ptr, ptr %buffer_ptr, align 8, !dbg !1077
  %112 = load i32, ptr %status, align 4, !dbg !1077
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 327, ptr noundef %110, ptr noundef %111, i32 noundef %112) #5, !dbg !1077
  %113 = load i32, ptr %status, align 4, !dbg !1079
  store i32 %113, ptr %retval, align 4, !dbg !1079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1079

if.end132:                                        ; preds = %sw.epilog128
  %114 = load ptr, ptr %op, align 8, !dbg !1080
  %tobool133 = icmp ne ptr %114, null, !dbg !1080
  br i1 %tobool133, label %if.end145, label %if.then134, !dbg !1082

if.then134:                                       ; preds = %if.end132
  %115 = load ptr, ptr %walk_state.addr, align 8, !dbg !1083
  %opcode135 = getelementptr inbounds %struct.acpi_walk_state, ptr %115, i32 0, i32 3, !dbg !1085
  %116 = load i16, ptr %opcode135, align 2, !dbg !1085
  %117 = load ptr, ptr %walk_state.addr, align 8, !dbg !1086
  %aml = getelementptr inbounds %struct.acpi_walk_state, ptr %117, i32 0, i32 16, !dbg !1087
  %118 = load ptr, ptr %aml, align 8, !dbg !1087
  %call136 = call ptr @acpi_ps_alloc_op(i16 noundef zeroext %116, ptr noundef %118) #5, !dbg !1088
  store ptr %call136, ptr %op, align 8, !dbg !1089
  %119 = load ptr, ptr %op, align 8, !dbg !1090
  %tobool137 = icmp ne ptr %119, null, !dbg !1090
  br i1 %tobool137, label %if.end139, label %if.then138, !dbg !1092

if.then138:                                       ; preds = %if.then134
  store i32 4, ptr %retval, align 4, !dbg !1093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1093

if.end139:                                        ; preds = %if.then134
  %120 = load ptr, ptr %node, align 8, !dbg !1095
  %tobool140 = icmp ne ptr %120, null, !dbg !1095
  br i1 %tobool140, label %if.then141, label %if.end144, !dbg !1097

if.then141:                                       ; preds = %if.end139
  %121 = load ptr, ptr %node, align 8, !dbg !1098
  %name142 = getelementptr inbounds %struct.acpi_namespace_node, ptr %121, i32 0, i32 4, !dbg !1100
  %122 = load i32, ptr %name142, align 4, !dbg !1101
  %123 = load ptr, ptr %op, align 8, !dbg !1102
  %name143 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %123, i32 0, i32 12, !dbg !1103
  store i32 %122, ptr %name143, align 4, !dbg !1104
  br label %if.end144, !dbg !1105

if.end144:                                        ; preds = %if.then141, %if.end139
  %124 = load ptr, ptr %op, align 8, !dbg !1106
  %125 = load ptr, ptr %out_op.addr, align 8, !dbg !1107
  store ptr %124, ptr %125, align 8, !dbg !1108
  br label %if.end145, !dbg !1109

if.end145:                                        ; preds = %if.end144, %if.end132
  %126 = load ptr, ptr %node, align 8, !dbg !1110
  %127 = load ptr, ptr %op, align 8, !dbg !1111
  %node146 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %127, i32 0, i32 6, !dbg !1112
  store ptr %126, ptr %node146, align 8, !dbg !1113
  %128 = load i32, ptr %status, align 4, !dbg !1114
  store i32 %128, ptr %retval, align 4, !dbg !1114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1114

cleanup:                                          ; preds = %if.end145, %if.then138, %if.then130, %if.end95, %if.then93, %sw.default, %if.then55, %if.then49, %if.then26, %if.then18, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #4, !dbg !1115
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer_ptr) #4, !dbg !1115
  call void @llvm.lifetime.end.p0(i64 4, ptr %object_type) #4, !dbg !1115
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1115
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1115
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #4, !dbg !1115
  %129 = load i32, ptr %retval, align 4, !dbg !1115
  ret i32 %129, !dbg !1115
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1116 dso_local i32 @acpi_ds_exec_begin_op(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1118 dso_local ptr @acpi_ps_get_next_namestring(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1123 dso_local i32 @acpi_ns_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1129 dso_local i32 @acpi_ds_scope_stack_push(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1132 dso_local void @acpi_ut_prefixed_namespace_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1137 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1141 dso_local ptr @acpi_ut_get_node_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1144 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1147 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1148 dso_local i32 @acpi_ns_opens_scope(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1151 dso_local ptr @acpi_ps_alloc_op(i16 noundef zeroext, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_load2_end_op(ptr noundef %walk_state) #0 align 16 !dbg !1154 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %op = alloca ptr, align 8
  %status = alloca i32, align 4
  %object_type = alloca i32, align 4
  %node = alloca ptr, align 8
  %arg = alloca ptr, align 8
  %new_node = alloca ptr, align 8
  %i = alloca i32, align 4
  %region_space = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1156, metadata !DIExpression()), !dbg !1166
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #4, !dbg !1167
  call void @llvm.dbg.declare(metadata ptr %op, metadata !1157, metadata !DIExpression()), !dbg !1168
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1169
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1158, metadata !DIExpression()), !dbg !1170
  store i32 0, ptr %status, align 4, !dbg !1170
  call void @llvm.lifetime.start.p0(i64 4, ptr %object_type) #4, !dbg !1171
  call void @llvm.dbg.declare(metadata ptr %object_type, metadata !1159, metadata !DIExpression()), !dbg !1172
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !1173
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1160, metadata !DIExpression()), !dbg !1174
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #4, !dbg !1175
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !1161, metadata !DIExpression()), !dbg !1176
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_node) #4, !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %new_node, metadata !1162, metadata !DIExpression()), !dbg !1178
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !1179
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1163, metadata !DIExpression()), !dbg !1180
  call void @llvm.lifetime.start.p0(i64 1, ptr %region_space) #4, !dbg !1181
  call void @llvm.dbg.declare(metadata ptr %region_space, metadata !1164, metadata !DIExpression()), !dbg !1182
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1183
  %op1 = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 40, !dbg !1184
  %1 = load ptr, ptr %op1, align 8, !dbg !1184
  store ptr %1, ptr %op, align 8, !dbg !1185
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1186
  %op_info = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 41, !dbg !1188
  %3 = load ptr, ptr %op_info, align 8, !dbg !1188
  %flags = getelementptr inbounds %struct.acpi_opcode_info, ptr %3, i32 0, i32 2, !dbg !1189
  %4 = load i16, ptr %flags, align 4, !dbg !1189
  %conv = zext i16 %4 to i32, !dbg !1186
  %and = and i32 %conv, 512, !dbg !1190
  %tobool = icmp ne i32 %and, 0, !dbg !1190
  br i1 %tobool, label %if.end, label %if.then, !dbg !1191

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup146, !dbg !1192

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %op, align 8, !dbg !1194
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %5, i32 0, i32 3, !dbg !1196
  %6 = load i16, ptr %aml_opcode, align 2, !dbg !1196
  %conv2 = zext i16 %6 to i32, !dbg !1194
  %cmp = icmp eq i32 %conv2, 16, !dbg !1197
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !1198

if.then4:                                         ; preds = %if.end
  br label %if.end5, !dbg !1199

if.end5:                                          ; preds = %if.then4, %if.end
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !1201
  %op_info6 = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 41, !dbg !1202
  %8 = load ptr, ptr %op_info6, align 8, !dbg !1202
  %object_type7 = getelementptr inbounds %struct.acpi_opcode_info, ptr %8, i32 0, i32 3, !dbg !1203
  %9 = load i8, ptr %object_type7, align 2, !dbg !1203
  %conv8 = zext i8 %9 to i32, !dbg !1201
  store i32 %conv8, ptr %object_type, align 4, !dbg !1204
  %10 = load ptr, ptr %op, align 8, !dbg !1205
  %node9 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %10, i32 0, i32 6, !dbg !1206
  %11 = load ptr, ptr %node9, align 8, !dbg !1206
  store ptr %11, ptr %node, align 8, !dbg !1207
  %12 = load ptr, ptr %node, align 8, !dbg !1208
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !1209
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %13, i32 0, i32 28, !dbg !1210
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !1209
  store ptr %12, ptr %arrayidx, align 8, !dbg !1211
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !1212
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, ptr %14, i32 0, i32 5, !dbg !1213
  store i8 1, ptr %num_operands, align 1, !dbg !1214
  %15 = load i32, ptr %object_type, align 4, !dbg !1215
  %call = call i32 @acpi_ns_opens_scope(i32 noundef %15) #5, !dbg !1217
  %tobool10 = icmp ne i32 %call, 0, !dbg !1217
  br i1 %tobool10, label %land.lhs.true, label %if.end20, !dbg !1218

land.lhs.true:                                    ; preds = %if.end5
  %16 = load ptr, ptr %op, align 8, !dbg !1219
  %aml_opcode11 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %16, i32 0, i32 3, !dbg !1220
  %17 = load i16, ptr %aml_opcode11, align 2, !dbg !1220
  %conv12 = zext i16 %17 to i32, !dbg !1219
  %cmp13 = icmp ne i32 %conv12, 53, !dbg !1221
  br i1 %cmp13, label %if.then15, label %if.end20, !dbg !1222

if.then15:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %walk_state.addr, align 8, !dbg !1223
  %call16 = call i32 @acpi_ds_scope_stack_pop(ptr noundef %18) #5, !dbg !1225
  store i32 %call16, ptr %status, align 4, !dbg !1226
  %19 = load i32, ptr %status, align 4, !dbg !1227
  %tobool17 = icmp ne i32 %19, 0, !dbg !1227
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !1229

if.then18:                                        ; preds = %if.then15
  br label %cleanup, !dbg !1230

if.end19:                                         ; preds = %if.then15
  br label %if.end20, !dbg !1232

if.end20:                                         ; preds = %if.end19, %land.lhs.true, %if.end5
  %20 = load ptr, ptr %op, align 8, !dbg !1233
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %20, i32 0, i32 7, !dbg !1234
  %21 = load ptr, ptr %value, align 8, !dbg !1235
  store ptr %21, ptr %arg, align 8, !dbg !1236
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !1237
  %op_info21 = getelementptr inbounds %struct.acpi_walk_state, ptr %22, i32 0, i32 41, !dbg !1238
  %23 = load ptr, ptr %op_info21, align 8, !dbg !1238
  %type = getelementptr inbounds %struct.acpi_opcode_info, ptr %23, i32 0, i32 5, !dbg !1239
  %24 = load i8, ptr %type, align 4, !dbg !1239
  %conv22 = zext i8 %24 to i32, !dbg !1237
  switch i32 %conv22, label %sw.default141 [
    i32 18, label %sw.bb
    i32 22, label %sw.bb27
    i32 23, label %sw.bb43
    i32 24, label %sw.bb71
    i32 7, label %sw.epilog142
    i32 9, label %sw.bb125
  ], !dbg !1240

sw.bb:                                            ; preds = %if.end20
  %25 = load ptr, ptr %op, align 8, !dbg !1241
  %26 = load ptr, ptr %walk_state.addr, align 8, !dbg !1243
  %call23 = call i32 @acpi_ds_create_buffer_field(ptr noundef %25, ptr noundef %26) #5, !dbg !1244
  store i32 %call23, ptr %status, align 4, !dbg !1245
  %27 = load i32, ptr %status, align 4, !dbg !1246
  %tobool24 = icmp ne i32 %27, 0, !dbg !1246
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1248

if.then25:                                        ; preds = %sw.bb
  %28 = load i32, ptr %status, align 4, !dbg !1249
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 477, i32 noundef %28, ptr noundef @.str.2) #5, !dbg !1249
  br label %cleanup, !dbg !1251

if.end26:                                         ; preds = %sw.bb
  br label %sw.epilog142, !dbg !1252

sw.bb27:                                          ; preds = %if.end20
  %29 = load ptr, ptr %walk_state.addr, align 8, !dbg !1253
  %method_node = getelementptr inbounds %struct.acpi_walk_state, ptr %29, i32 0, i32 38, !dbg !1255
  %30 = load ptr, ptr %method_node, align 8, !dbg !1255
  %tobool28 = icmp ne ptr %30, null, !dbg !1253
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !1256

if.then29:                                        ; preds = %sw.bb27
  %31 = load ptr, ptr %op, align 8, !dbg !1257
  %32 = load ptr, ptr %walk_state.addr, align 8, !dbg !1259
  %call30 = call i32 @acpi_ds_init_field_objects(ptr noundef %31, ptr noundef %32) #5, !dbg !1260
  store i32 %call30, ptr %status, align 4, !dbg !1261
  br label %if.end31, !dbg !1262

if.end31:                                         ; preds = %if.then29, %sw.bb27
  %33 = load ptr, ptr %op, align 8, !dbg !1263
  %aml_opcode32 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %33, i32 0, i32 3, !dbg !1264
  %34 = load i16, ptr %aml_opcode32, align 2, !dbg !1264
  %conv33 = zext i16 %34 to i32, !dbg !1263
  switch i32 %conv33, label %sw.default [
    i32 23430, label %sw.bb34
    i32 23431, label %sw.bb37
    i32 23425, label %sw.bb40
  ], !dbg !1265

sw.bb34:                                          ; preds = %if.end31
  %35 = load ptr, ptr %op, align 8, !dbg !1266
  %36 = load ptr, ptr %arg, align 8, !dbg !1268
  %node35 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %36, i32 0, i32 6, !dbg !1269
  %37 = load ptr, ptr %node35, align 8, !dbg !1269
  %38 = load ptr, ptr %walk_state.addr, align 8, !dbg !1270
  %call36 = call i32 @acpi_ds_create_index_field(ptr noundef %35, ptr noundef %37, ptr noundef %38) #5, !dbg !1271
  store i32 %call36, ptr %status, align 4, !dbg !1272
  br label %sw.epilog, !dbg !1273

sw.bb37:                                          ; preds = %if.end31
  %39 = load ptr, ptr %op, align 8, !dbg !1274
  %40 = load ptr, ptr %arg, align 8, !dbg !1275
  %node38 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %40, i32 0, i32 6, !dbg !1276
  %41 = load ptr, ptr %node38, align 8, !dbg !1276
  %42 = load ptr, ptr %walk_state.addr, align 8, !dbg !1277
  %call39 = call i32 @acpi_ds_create_bank_field(ptr noundef %39, ptr noundef %41, ptr noundef %42) #5, !dbg !1278
  store i32 %call39, ptr %status, align 4, !dbg !1279
  br label %sw.epilog, !dbg !1280

sw.bb40:                                          ; preds = %if.end31
  %43 = load ptr, ptr %op, align 8, !dbg !1281
  %44 = load ptr, ptr %arg, align 8, !dbg !1282
  %node41 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %44, i32 0, i32 6, !dbg !1283
  %45 = load ptr, ptr %node41, align 8, !dbg !1283
  %46 = load ptr, ptr %walk_state.addr, align 8, !dbg !1284
  %call42 = call i32 @acpi_ds_create_field(ptr noundef %43, ptr noundef %45, ptr noundef %46) #5, !dbg !1285
  store i32 %call42, ptr %status, align 4, !dbg !1286
  br label %sw.epilog, !dbg !1287

sw.default:                                       ; preds = %if.end31
  br label %sw.epilog, !dbg !1288

sw.epilog:                                        ; preds = %sw.default, %sw.bb40, %sw.bb37, %sw.bb34
  br label %sw.epilog142, !dbg !1289

sw.bb43:                                          ; preds = %if.end20
  %47 = load ptr, ptr %walk_state.addr, align 8, !dbg !1290
  %48 = load ptr, ptr %arg, align 8, !dbg !1291
  %call44 = call i32 @acpi_ds_create_operands(ptr noundef %47, ptr noundef %48) #5, !dbg !1292
  store i32 %call44, ptr %status, align 4, !dbg !1293
  %49 = load i32, ptr %status, align 4, !dbg !1294
  %tobool45 = icmp ne i32 %49, 0, !dbg !1294
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !1296

if.then46:                                        ; preds = %sw.bb43
  br label %cleanup, !dbg !1297

if.end47:                                         ; preds = %sw.bb43
  %50 = load ptr, ptr %op, align 8, !dbg !1299
  %aml_opcode48 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %50, i32 0, i32 3, !dbg !1300
  %51 = load i16, ptr %aml_opcode48, align 2, !dbg !1300
  %conv49 = zext i16 %51 to i32, !dbg !1299
  switch i32 %conv49, label %sw.default60 [
    i32 23427, label %sw.bb50
    i32 23428, label %sw.bb52
    i32 23297, label %sw.bb54
    i32 23298, label %sw.bb56
    i32 6, label %sw.bb58
  ], !dbg !1301

sw.bb50:                                          ; preds = %if.end47
  %52 = load ptr, ptr %walk_state.addr, align 8, !dbg !1302
  %call51 = call i32 @acpi_ex_create_processor(ptr noundef %52) #5, !dbg !1304
  store i32 %call51, ptr %status, align 4, !dbg !1305
  br label %sw.epilog61, !dbg !1306

sw.bb52:                                          ; preds = %if.end47
  %53 = load ptr, ptr %walk_state.addr, align 8, !dbg !1307
  %call53 = call i32 @acpi_ex_create_power_resource(ptr noundef %53) #5, !dbg !1308
  store i32 %call53, ptr %status, align 4, !dbg !1309
  br label %sw.epilog61, !dbg !1310

sw.bb54:                                          ; preds = %if.end47
  %54 = load ptr, ptr %walk_state.addr, align 8, !dbg !1311
  %call55 = call i32 @acpi_ex_create_mutex(ptr noundef %54) #5, !dbg !1312
  store i32 %call55, ptr %status, align 4, !dbg !1313
  br label %sw.epilog61, !dbg !1314

sw.bb56:                                          ; preds = %if.end47
  %55 = load ptr, ptr %walk_state.addr, align 8, !dbg !1315
  %call57 = call i32 @acpi_ex_create_event(ptr noundef %55) #5, !dbg !1316
  store i32 %call57, ptr %status, align 4, !dbg !1317
  br label %sw.epilog61, !dbg !1318

sw.bb58:                                          ; preds = %if.end47
  %56 = load ptr, ptr %walk_state.addr, align 8, !dbg !1319
  %call59 = call i32 @acpi_ex_create_alias(ptr noundef %56) #5, !dbg !1320
  store i32 %call59, ptr %status, align 4, !dbg !1321
  br label %sw.epilog61, !dbg !1322

sw.default60:                                     ; preds = %if.end47
  store i32 0, ptr %status, align 4, !dbg !1323
  br label %cleanup, !dbg !1324

sw.epilog61:                                      ; preds = %sw.bb58, %sw.bb56, %sw.bb54, %sw.bb52, %sw.bb50
  store i32 1, ptr %i, align 4, !dbg !1325
  br label %for.cond, !dbg !1327

for.cond:                                         ; preds = %for.inc, %sw.epilog61
  %57 = load i32, ptr %i, align 4, !dbg !1328
  %58 = load ptr, ptr %walk_state.addr, align 8, !dbg !1330
  %num_operands62 = getelementptr inbounds %struct.acpi_walk_state, ptr %58, i32 0, i32 5, !dbg !1331
  %59 = load i8, ptr %num_operands62, align 1, !dbg !1331
  %conv63 = zext i8 %59 to i32, !dbg !1330
  %cmp64 = icmp ult i32 %57, %conv63, !dbg !1332
  br i1 %cmp64, label %for.body, label %for.end, !dbg !1333

for.body:                                         ; preds = %for.cond
  %60 = load ptr, ptr %walk_state.addr, align 8, !dbg !1334
  %operands66 = getelementptr inbounds %struct.acpi_walk_state, ptr %60, i32 0, i32 28, !dbg !1336
  %61 = load i32, ptr %i, align 4, !dbg !1337
  %idxprom = zext i32 %61 to i64, !dbg !1334
  %arrayidx67 = getelementptr [9 x ptr], ptr %operands66, i64 0, i64 %idxprom, !dbg !1334
  %62 = load ptr, ptr %arrayidx67, align 8, !dbg !1334
  call void @acpi_ut_remove_reference(ptr noundef %62) #5, !dbg !1338
  %63 = load ptr, ptr %walk_state.addr, align 8, !dbg !1339
  %operands68 = getelementptr inbounds %struct.acpi_walk_state, ptr %63, i32 0, i32 28, !dbg !1340
  %64 = load i32, ptr %i, align 4, !dbg !1341
  %idxprom69 = zext i32 %64 to i64, !dbg !1339
  %arrayidx70 = getelementptr [9 x ptr], ptr %operands68, i64 0, i64 %idxprom69, !dbg !1339
  store ptr null, ptr %arrayidx70, align 8, !dbg !1342
  br label %for.inc, !dbg !1343

for.inc:                                          ; preds = %for.body
  %65 = load i32, ptr %i, align 4, !dbg !1344
  %inc = add i32 %65, 1, !dbg !1344
  store i32 %inc, ptr %i, align 4, !dbg !1344
  br label %for.cond, !dbg !1345, !llvm.loop !1346

for.end:                                          ; preds = %for.cond
  br label %sw.epilog142, !dbg !1350

sw.bb71:                                          ; preds = %if.end20
  %66 = load ptr, ptr %op, align 8, !dbg !1351
  %aml_opcode72 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %66, i32 0, i32 3, !dbg !1352
  %67 = load i16, ptr %aml_opcode72, align 2, !dbg !1352
  %conv73 = zext i16 %67 to i32, !dbg !1351
  switch i32 %conv73, label %sw.default123 [
    i32 23424, label %sw.bb74
    i32 23432, label %sw.bb74
    i32 8, label %sw.bb94
    i32 20, label %sw.bb99
  ], !dbg !1353

sw.bb74:                                          ; preds = %sw.bb71, %sw.bb71
  %68 = load ptr, ptr %op, align 8, !dbg !1354
  %aml_opcode75 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %68, i32 0, i32 3, !dbg !1357
  %69 = load i16, ptr %aml_opcode75, align 2, !dbg !1357
  %conv76 = zext i16 %69 to i32, !dbg !1354
  %cmp77 = icmp eq i32 %conv76, 23424, !dbg !1358
  br i1 %cmp77, label %if.then79, label %if.else, !dbg !1359

if.then79:                                        ; preds = %sw.bb74
  %70 = load ptr, ptr %op, align 8, !dbg !1360
  %value80 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %70, i32 0, i32 7, !dbg !1362
  %71 = load ptr, ptr %value80, align 8, !dbg !1363
  %value81 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %71, i32 0, i32 7, !dbg !1364
  %72 = load i64, ptr %value81, align 8, !dbg !1365
  %conv82 = trunc i64 %72 to i8, !dbg !1366
  store i8 %conv82, ptr %region_space, align 1, !dbg !1367
  br label %if.end83, !dbg !1368

if.else:                                          ; preds = %sw.bb74
  store i8 126, ptr %region_space, align 1, !dbg !1369
  br label %if.end83

if.end83:                                         ; preds = %if.else, %if.then79
  %73 = load ptr, ptr %walk_state.addr, align 8, !dbg !1371
  %method_node84 = getelementptr inbounds %struct.acpi_walk_state, ptr %73, i32 0, i32 38, !dbg !1373
  %74 = load ptr, ptr %method_node84, align 8, !dbg !1373
  %tobool85 = icmp ne ptr %74, null, !dbg !1371
  br i1 %tobool85, label %if.then86, label %if.end91, !dbg !1374

if.then86:                                        ; preds = %if.end83
  %75 = load ptr, ptr %op, align 8, !dbg !1375
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %75, i32 0, i32 10, !dbg !1377
  %76 = load ptr, ptr %data, align 8, !dbg !1377
  %77 = load ptr, ptr %op, align 8, !dbg !1378
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %77, i32 0, i32 11, !dbg !1379
  %78 = load i32, ptr %length, align 8, !dbg !1379
  %79 = load i8, ptr %region_space, align 1, !dbg !1380
  %80 = load ptr, ptr %walk_state.addr, align 8, !dbg !1381
  %call87 = call i32 @acpi_ex_create_region(ptr noundef %76, i32 noundef %78, i8 noundef zeroext %79, ptr noundef %80) #5, !dbg !1382
  store i32 %call87, ptr %status, align 4, !dbg !1383
  %81 = load i32, ptr %status, align 4, !dbg !1384
  %tobool88 = icmp ne i32 %81, 0, !dbg !1384
  br i1 %tobool88, label %if.then89, label %if.end90, !dbg !1386

if.then89:                                        ; preds = %if.then86
  %82 = load i32, ptr %status, align 4, !dbg !1387
  store i32 %82, ptr %retval, align 4, !dbg !1387
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup146, !dbg !1387

if.end90:                                         ; preds = %if.then86
  br label %if.end91, !dbg !1389

if.end91:                                         ; preds = %if.end90, %if.end83
  %83 = load ptr, ptr %node, align 8, !dbg !1390
  %call92 = call ptr @acpi_ns_get_attached_object(ptr noundef %83) #5, !dbg !1391
  %call93 = call i32 @acpi_ev_initialize_region(ptr noundef %call92) #5, !dbg !1392
  store i32 %call93, ptr %status, align 4, !dbg !1393
  br label %sw.epilog124, !dbg !1394

sw.bb94:                                          ; preds = %sw.bb71
  %84 = load ptr, ptr %walk_state.addr, align 8, !dbg !1395
  %85 = load ptr, ptr %node, align 8, !dbg !1396
  %86 = load ptr, ptr %op, align 8, !dbg !1397
  %call95 = call i32 @acpi_ds_create_node(ptr noundef %84, ptr noundef %85, ptr noundef %86) #5, !dbg !1398
  store i32 %call95, ptr %status, align 4, !dbg !1399
  %87 = load i32, ptr %status, align 4, !dbg !1400
  %tobool96 = icmp ne i32 %87, 0, !dbg !1400
  br i1 %tobool96, label %if.then97, label %if.end98, !dbg !1402

if.then97:                                        ; preds = %sw.bb94
  br label %cleanup, !dbg !1403

if.end98:                                         ; preds = %sw.bb94
  br label %sw.epilog124, !dbg !1405

sw.bb99:                                          ; preds = %sw.bb71
  %88 = load ptr, ptr %op, align 8, !dbg !1406
  %node100 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %88, i32 0, i32 6, !dbg !1408
  %89 = load ptr, ptr %node100, align 8, !dbg !1408
  %call101 = call ptr @acpi_ns_get_attached_object(ptr noundef %89) #5, !dbg !1409
  %tobool102 = icmp ne ptr %call101, null, !dbg !1409
  br i1 %tobool102, label %if.end122, label %if.then103, !dbg !1410

if.then103:                                       ; preds = %sw.bb99
  %90 = load ptr, ptr %op, align 8, !dbg !1411
  %node104 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %90, i32 0, i32 6, !dbg !1411
  %91 = load ptr, ptr %node104, align 8, !dbg !1411
  %92 = ptrtoint ptr %91 to i64, !dbg !1411
  %93 = inttoptr i64 %92 to ptr, !dbg !1411
  %94 = load ptr, ptr %walk_state.addr, align 8, !dbg !1413
  %operands105 = getelementptr inbounds %struct.acpi_walk_state, ptr %94, i32 0, i32 28, !dbg !1414
  %arrayidx106 = getelementptr [9 x ptr], ptr %operands105, i64 0, i64 0, !dbg !1413
  store ptr %93, ptr %arrayidx106, align 8, !dbg !1415
  %95 = load ptr, ptr %walk_state.addr, align 8, !dbg !1416
  %num_operands107 = getelementptr inbounds %struct.acpi_walk_state, ptr %95, i32 0, i32 5, !dbg !1417
  store i8 1, ptr %num_operands107, align 1, !dbg !1418
  %96 = load ptr, ptr %walk_state.addr, align 8, !dbg !1419
  %97 = load ptr, ptr %op, align 8, !dbg !1420
  %value108 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %97, i32 0, i32 7, !dbg !1421
  %98 = load ptr, ptr %value108, align 8, !dbg !1422
  %call109 = call i32 @acpi_ds_create_operands(ptr noundef %96, ptr noundef %98) #5, !dbg !1423
  store i32 %call109, ptr %status, align 4, !dbg !1424
  %99 = load i32, ptr %status, align 4, !dbg !1425
  %tobool110 = icmp ne i32 %99, 0, !dbg !1425
  br i1 %tobool110, label %if.end115, label %if.then111, !dbg !1427

if.then111:                                       ; preds = %if.then103
  %100 = load ptr, ptr %op, align 8, !dbg !1428
  %data112 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %100, i32 0, i32 10, !dbg !1430
  %101 = load ptr, ptr %data112, align 8, !dbg !1430
  %102 = load ptr, ptr %op, align 8, !dbg !1431
  %length113 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %102, i32 0, i32 11, !dbg !1432
  %103 = load i32, ptr %length113, align 8, !dbg !1432
  %104 = load ptr, ptr %walk_state.addr, align 8, !dbg !1433
  %call114 = call i32 @acpi_ex_create_method(ptr noundef %101, i32 noundef %103, ptr noundef %104) #5, !dbg !1434
  store i32 %call114, ptr %status, align 4, !dbg !1435
  br label %if.end115, !dbg !1436

if.end115:                                        ; preds = %if.then111, %if.then103
  %105 = load ptr, ptr %walk_state.addr, align 8, !dbg !1437
  %operands116 = getelementptr inbounds %struct.acpi_walk_state, ptr %105, i32 0, i32 28, !dbg !1438
  %arrayidx117 = getelementptr [9 x ptr], ptr %operands116, i64 0, i64 0, !dbg !1437
  store ptr null, ptr %arrayidx117, align 8, !dbg !1439
  %106 = load ptr, ptr %walk_state.addr, align 8, !dbg !1440
  %num_operands118 = getelementptr inbounds %struct.acpi_walk_state, ptr %106, i32 0, i32 5, !dbg !1441
  store i8 0, ptr %num_operands118, align 1, !dbg !1442
  %107 = load i32, ptr %status, align 4, !dbg !1443
  %tobool119 = icmp ne i32 %107, 0, !dbg !1443
  br i1 %tobool119, label %if.then120, label %if.end121, !dbg !1445

if.then120:                                       ; preds = %if.end115
  %108 = load i32, ptr %status, align 4, !dbg !1446
  store i32 %108, ptr %retval, align 4, !dbg !1446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup146, !dbg !1446

if.end121:                                        ; preds = %if.end115
  br label %if.end122, !dbg !1448

if.end122:                                        ; preds = %if.end121, %sw.bb99
  br label %sw.epilog124, !dbg !1449

sw.default123:                                    ; preds = %sw.bb71
  br label %sw.epilog124, !dbg !1450

sw.epilog124:                                     ; preds = %sw.default123, %if.end122, %if.end98, %if.end91
  br label %sw.epilog142, !dbg !1451

sw.bb125:                                         ; preds = %if.end20
  %109 = load ptr, ptr %walk_state.addr, align 8, !dbg !1452
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, ptr %109, i32 0, i32 46, !dbg !1453
  %110 = load ptr, ptr %scope_info, align 8, !dbg !1453
  %111 = load ptr, ptr %arg, align 8, !dbg !1454
  %value126 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %111, i32 0, i32 7, !dbg !1455
  %112 = load ptr, ptr %value126, align 8, !dbg !1456
  %113 = load ptr, ptr %walk_state.addr, align 8, !dbg !1457
  %call127 = call i32 @acpi_ns_lookup(ptr noundef %110, ptr noundef %112, i32 noundef 0, i32 noundef 2, i32 noundef 3, ptr noundef %113, ptr noundef %new_node) #5, !dbg !1458
  store i32 %call127, ptr %status, align 4, !dbg !1459
  %114 = load i32, ptr %status, align 4, !dbg !1460
  %tobool128 = icmp ne i32 %114, 0, !dbg !1460
  br i1 %tobool128, label %if.else137, label %if.then129, !dbg !1462

if.then129:                                       ; preds = %sw.bb125
  %115 = load ptr, ptr %new_node, align 8, !dbg !1463
  %type130 = getelementptr inbounds %struct.acpi_namespace_node, ptr %115, i32 0, i32 2, !dbg !1466
  %116 = load i8, ptr %type130, align 1, !dbg !1466
  %conv131 = zext i8 %116 to i32, !dbg !1463
  %cmp132 = icmp ne i32 %conv131, 8, !dbg !1467
  br i1 %cmp132, label %if.then134, label %if.end135, !dbg !1468

if.then134:                                       ; preds = %if.then129
  store i32 12291, ptr %status, align 4, !dbg !1469
  br label %if.end135, !dbg !1471

if.end135:                                        ; preds = %if.then134, %if.then129
  %117 = load ptr, ptr %new_node, align 8, !dbg !1472
  %118 = load ptr, ptr %op, align 8, !dbg !1473
  %node136 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %118, i32 0, i32 6, !dbg !1474
  store ptr %117, ptr %node136, align 8, !dbg !1475
  br label %if.end140, !dbg !1476

if.else137:                                       ; preds = %sw.bb125
  %119 = load ptr, ptr %walk_state.addr, align 8, !dbg !1477
  %scope_info138 = getelementptr inbounds %struct.acpi_walk_state, ptr %119, i32 0, i32 46, !dbg !1477
  %120 = load ptr, ptr %scope_info138, align 8, !dbg !1477
  %121 = load ptr, ptr %arg, align 8, !dbg !1477
  %value139 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %121, i32 0, i32 7, !dbg !1477
  %122 = load ptr, ptr %value139, align 8, !dbg !1477
  %123 = load i32, ptr %status, align 4, !dbg !1477
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 729, ptr noundef %120, ptr noundef %122, i32 noundef %123) #5, !dbg !1477
  br label %if.end140

if.end140:                                        ; preds = %if.else137, %if.end135
  br label %sw.epilog142, !dbg !1479

sw.default141:                                    ; preds = %if.end20
  br label %sw.epilog142, !dbg !1480

sw.epilog142:                                     ; preds = %sw.default141, %if.end140, %if.end20, %sw.epilog124, %for.end, %sw.epilog, %if.end26
  br label %cleanup, !dbg !1481

cleanup:                                          ; preds = %sw.epilog142, %if.then97, %sw.default60, %if.then46, %if.then25, %if.then18
  call void @llvm.dbg.label(metadata !1165), !dbg !1482
  %124 = load ptr, ptr %walk_state.addr, align 8, !dbg !1483
  %operands143 = getelementptr inbounds %struct.acpi_walk_state, ptr %124, i32 0, i32 28, !dbg !1484
  %arrayidx144 = getelementptr [9 x ptr], ptr %operands143, i64 0, i64 0, !dbg !1483
  store ptr null, ptr %arrayidx144, align 8, !dbg !1485
  %125 = load ptr, ptr %walk_state.addr, align 8, !dbg !1486
  %num_operands145 = getelementptr inbounds %struct.acpi_walk_state, ptr %125, i32 0, i32 5, !dbg !1487
  store i8 0, ptr %num_operands145, align 1, !dbg !1488
  %126 = load i32, ptr %status, align 4, !dbg !1489
  store i32 %126, ptr %retval, align 4, !dbg !1489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup146, !dbg !1489

cleanup146:                                       ; preds = %cleanup, %if.then120, %if.then89, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %region_space) #4, !dbg !1490
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !1490
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_node) #4, !dbg !1490
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #4, !dbg !1490
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1490
  call void @llvm.lifetime.end.p0(i64 4, ptr %object_type) #4, !dbg !1490
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1490
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #4, !dbg !1490
  %127 = load i32, ptr %retval, align 4, !dbg !1490
  ret i32 %127, !dbg !1490
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1491 dso_local i32 @acpi_ds_scope_stack_pop(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1492 dso_local i32 @acpi_ds_create_buffer_field(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1495 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1498 dso_local i32 @acpi_ds_init_field_objects(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1499 dso_local i32 @acpi_ds_create_index_field(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1502 dso_local i32 @acpi_ds_create_bank_field(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1503 dso_local i32 @acpi_ds_create_field(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1504 dso_local i32 @acpi_ds_create_operands(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1507 dso_local i32 @acpi_ex_create_processor(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1509 dso_local i32 @acpi_ex_create_power_resource(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1510 dso_local i32 @acpi_ex_create_mutex(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1511 dso_local i32 @acpi_ex_create_event(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1512 dso_local i32 @acpi_ex_create_alias(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1513 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1516 dso_local i32 @acpi_ex_create_region(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1519 dso_local i32 @acpi_ev_initialize_region(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1523 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1526 dso_local i32 @acpi_ds_create_node(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1529 dso_local i32 @acpi_ex_create_method(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 23, type: !49, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.dswload2.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22dswload2\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/dswload2.ll drivers/acpi/acpica/dswload2.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !33, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dswload2.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f86d16077c32804810da148be38fb11")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3)
!12 = !{!13, !18, !22, !24, !27, !28, !29}
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
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !25, line: 42, baseType: !26)
!25 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!26 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !27)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !19, line: 814, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!34, !39, !44, !0}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !3, line: 195, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 688, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 86)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !3, line: 223, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 584, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 73)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !3, line: 477, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 208, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 26)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 72, elements: !51)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!51 = !{!52}
!52 = !DISubrange(count: 9)
!53 = !{i32 7, !"Dwarf Version", i32 5}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 8, !"cf-protection-branch", i32 1}
!57 = !{i32 4, !"function_return_thunk_extern", i32 1}
!58 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!59 = !{i32 1, !"Code Model", i32 2}
!60 = !{i32 1, !"override-stack-alignment", i32 8}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = distinct !DISubprogram(name: "acpi_ds_load2_begin_op", scope: !3, file: !3, line: 38, type: !63, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !820)
!63 = !DISubroutineType(types: !64)
!64 = !{!18, !65, !819}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !67, line: 37, size: 9024, elements: !68)
!67 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !78, !79, !80, !81, !82, !83, !84, !85, !86, !88, !89, !90, !91, !92, !771, !772, !773, !774, !775, !779, !781, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !806, !807, !808, !809, !810, !811, !812, !813, !814, !817}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !66, file: !67, line: 38, baseType: !65, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !67, line: 39, baseType: !30, size: 8, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !66, file: !67, line: 40, baseType: !30, size: 8, offset: 72)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !66, file: !67, line: 41, baseType: !13, size: 16, offset: 80)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !66, file: !67, line: 42, baseType: !30, size: 8, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !66, file: !67, line: 43, baseType: !30, size: 8, offset: 104)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !66, file: !67, line: 44, baseType: !30, size: 8, offset: 112)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !66, file: !67, line: 45, baseType: !77, size: 16, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !13)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !66, file: !67, line: 46, baseType: !30, size: 8, offset: 144)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !66, file: !67, line: 47, baseType: !30, size: 8, offset: 152)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !66, file: !67, line: 48, baseType: !30, size: 8, offset: 160)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !66, file: !67, line: 49, baseType: !30, size: 8, offset: 168)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !66, file: !67, line: 50, baseType: !30, size: 8, offset: 176)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !66, file: !67, line: 51, baseType: !30, size: 8, offset: 184)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !66, file: !67, line: 52, baseType: !30, size: 8, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !66, file: !67, line: 53, baseType: !30, size: 8, offset: 200)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !66, file: !67, line: 54, baseType: !87, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !66, file: !67, line: 55, baseType: !20, size: 32, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !66, file: !67, line: 56, baseType: !20, size: 32, offset: 352)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !66, file: !67, line: 57, baseType: !20, size: 32, offset: 384)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !66, file: !67, line: 58, baseType: !20, size: 32, offset: 416)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !66, file: !67, line: 60, baseType: !93, size: 640, offset: 448)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 909, size: 640, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !668, !669, !769, !770}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !93, file: !6, line: 910, baseType: !87, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !93, file: !6, line: 911, baseType: !87, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !93, file: !6, line: 912, baseType: !87, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !93, file: !6, line: 913, baseType: !87, size: 64, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !93, file: !6, line: 914, baseType: !87, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !93, file: !6, line: 915, baseType: !101, size: 64, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 891, size: 1600, elements: !103)
!103 = !{!104, !611, !627}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !102, file: !6, line: 892, baseType: !105, size: 448)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 844, size: 448, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !601, !610}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !105, file: !6, line: 845, baseType: !101, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !105, file: !6, line: 845, baseType: !30, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !6, line: 845, baseType: !30, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !105, file: !6, line: 845, baseType: !13, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !105, file: !6, line: 845, baseType: !87, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !6, line: 845, baseType: !101, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !105, file: !6, line: 845, baseType: !114, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !116)
!116 = !{!117, !585, !586, !587, !588, !597, !598, !599, !600}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !115, file: !6, line: 134, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !120, line: 369, size: 576, elements: !121)
!120 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!121 = !{!122, !130, !146, !156, !169, !183, !192, !218, !247, !263, !276, !354, !366, !380, !390, !408, !430, !449, !468, !487, !504, !531, !548, !561, !575, !584}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !119, file: !120, line: 370, baseType: !123, size: 128)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !120, line: 73, size: 128, elements: !124)
!124 = !{!125, !126, !127, !128, !129}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !123, file: !120, line: 74, baseType: !118, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !123, file: !120, line: 74, baseType: !30, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !120, line: 74, baseType: !30, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !123, file: !120, line: 74, baseType: !13, size: 16, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !120, line: 74, baseType: !30, size: 8, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !119, file: !120, line: 371, baseType: !131, size: 192)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !120, line: 76, size: 192, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !138, !142}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !131, file: !120, line: 77, baseType: !118, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !131, file: !120, line: 77, baseType: !30, size: 8, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !120, line: 77, baseType: !30, size: 8, offset: 72)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !131, file: !120, line: 77, baseType: !13, size: 16, offset: 80)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !120, line: 77, baseType: !30, size: 8, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !131, file: !120, line: 77, baseType: !139, size: 24, offset: 104)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 3)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !131, file: !120, line: 78, baseType: !143, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !14, line: 23, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !16, line: 31, baseType: !145)
!145 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !119, file: !120, line: 372, baseType: !147, size: 256)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !120, line: 93, size: 256, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !147, file: !120, line: 94, baseType: !118, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !147, file: !120, line: 94, baseType: !30, size: 8, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !120, line: 94, baseType: !30, size: 8, offset: 72)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !147, file: !120, line: 94, baseType: !13, size: 16, offset: 80)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !120, line: 94, baseType: !30, size: 8, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !147, file: !120, line: 94, baseType: !22, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !147, file: !120, line: 94, baseType: !20, size: 32, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !119, file: !120, line: 373, baseType: !157, size: 384)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !120, line: 97, size: 384, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !157, file: !120, line: 98, baseType: !118, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !157, file: !120, line: 98, baseType: !30, size: 8, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !157, file: !120, line: 98, baseType: !30, size: 8, offset: 72)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !157, file: !120, line: 98, baseType: !13, size: 16, offset: 80)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !157, file: !120, line: 98, baseType: !30, size: 8, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !157, file: !120, line: 98, baseType: !87, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !157, file: !120, line: 98, baseType: !20, size: 32, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !157, file: !120, line: 99, baseType: !20, size: 32, offset: 224)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !157, file: !120, line: 100, baseType: !87, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !157, file: !120, line: 101, baseType: !114, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !119, file: !120, line: 374, baseType: !170, size: 384)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !120, line: 104, size: 384, elements: !171)
!171 = !{!172, !173, !174, !175, !176, !177, !178, !180, !181, !182}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !170, file: !120, line: 105, baseType: !118, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !170, file: !120, line: 105, baseType: !30, size: 8, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !170, file: !120, line: 105, baseType: !30, size: 8, offset: 72)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !170, file: !120, line: 105, baseType: !13, size: 16, offset: 80)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !170, file: !120, line: 105, baseType: !30, size: 8, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !170, file: !120, line: 105, baseType: !114, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !170, file: !120, line: 106, baseType: !179, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !170, file: !120, line: 107, baseType: !87, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !170, file: !120, line: 108, baseType: !20, size: 32, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !170, file: !120, line: 109, baseType: !20, size: 32, offset: 352)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !119, file: !120, line: 375, baseType: !184, size: 192)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !120, line: 118, size: 192, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !184, file: !120, line: 119, baseType: !118, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !184, file: !120, line: 119, baseType: !30, size: 8, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !184, file: !120, line: 119, baseType: !30, size: 8, offset: 72)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !184, file: !120, line: 119, baseType: !13, size: 16, offset: 80)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !184, file: !120, line: 119, baseType: !30, size: 8, offset: 96)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !184, file: !120, line: 119, baseType: !27, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !119, file: !120, line: 376, baseType: !193, size: 448)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !120, line: 144, size: 448, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !215, !216, !217}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !193, file: !120, line: 145, baseType: !118, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !193, file: !120, line: 145, baseType: !30, size: 8, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !193, file: !120, line: 145, baseType: !30, size: 8, offset: 72)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !193, file: !120, line: 145, baseType: !13, size: 16, offset: 80)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !120, line: 145, baseType: !30, size: 8, offset: 96)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !193, file: !120, line: 145, baseType: !30, size: 8, offset: 104)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !193, file: !120, line: 146, baseType: !30, size: 8, offset: 112)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !193, file: !120, line: 147, baseType: !30, size: 8, offset: 120)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !193, file: !120, line: 148, baseType: !118, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !193, file: !120, line: 149, baseType: !118, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !193, file: !120, line: 150, baseType: !87, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !193, file: !120, line: 154, baseType: !207, size: 64, offset: 320)
!207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !120, line: 151, size: 64, elements: !208)
!208 = !{!209, !214}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !207, file: !120, line: 152, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!18, !65}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !207, file: !120, line: 153, baseType: !118, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !193, file: !120, line: 156, baseType: !20, size: 32, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !193, file: !120, line: 157, baseType: !77, size: 16, offset: 416)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !193, file: !120, line: 158, baseType: !30, size: 8, offset: 432)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !119, file: !120, line: 377, baseType: !219, size: 576)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !120, line: 122, size: 576, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !243, !244, !245, !246}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !219, file: !120, line: 123, baseType: !118, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !219, file: !120, line: 123, baseType: !30, size: 8, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !219, file: !120, line: 123, baseType: !30, size: 8, offset: 72)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !219, file: !120, line: 123, baseType: !13, size: 16, offset: 80)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !120, line: 123, baseType: !30, size: 8, offset: 96)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !219, file: !120, line: 123, baseType: !30, size: 8, offset: 104)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !219, file: !120, line: 124, baseType: !13, size: 16, offset: 112)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !219, file: !120, line: 125, baseType: !27, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !219, file: !120, line: 126, baseType: !143, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !219, file: !120, line: 127, baseType: !231, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 634, size: 320, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !232, file: !6, line: 635, baseType: !27, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !232, file: !6, line: 635, baseType: !30, size: 8, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !232, file: !6, line: 635, baseType: !30, size: 8, offset: 72)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !232, file: !6, line: 635, baseType: !13, size: 16, offset: 80)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !232, file: !6, line: 635, baseType: !13, size: 16, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !232, file: !6, line: 636, baseType: !30, size: 8, offset: 112)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !232, file: !6, line: 637, baseType: !65, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !232, file: !6, line: 638, baseType: !118, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !232, file: !6, line: 639, baseType: !143, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !219, file: !120, line: 128, baseType: !118, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !120, line: 129, baseType: !118, size: 64, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !219, file: !120, line: 130, baseType: !114, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !219, file: !120, line: 131, baseType: !30, size: 8, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !119, file: !120, line: 378, baseType: !248, size: 512)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !120, line: 134, size: 512, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !261, !262}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !248, file: !120, line: 135, baseType: !118, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !248, file: !120, line: 135, baseType: !30, size: 8, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !248, file: !120, line: 135, baseType: !30, size: 8, offset: 72)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !248, file: !120, line: 135, baseType: !13, size: 16, offset: 80)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !248, file: !120, line: 135, baseType: !30, size: 8, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !248, file: !120, line: 135, baseType: !30, size: 8, offset: 104)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !248, file: !120, line: 136, baseType: !114, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !248, file: !120, line: 137, baseType: !118, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !248, file: !120, line: 138, baseType: !118, size: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !248, file: !120, line: 139, baseType: !260, size: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !143)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !248, file: !120, line: 140, baseType: !20, size: 32, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !248, file: !120, line: 141, baseType: !27, size: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !119, file: !120, line: 379, baseType: !264, size: 320)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !120, line: 185, size: 320, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !275}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !264, file: !120, line: 186, baseType: !118, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !264, file: !120, line: 186, baseType: !30, size: 8, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !264, file: !120, line: 186, baseType: !30, size: 8, offset: 72)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !264, file: !120, line: 186, baseType: !13, size: 16, offset: 80)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !264, file: !120, line: 186, baseType: !30, size: 8, offset: 96)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !264, file: !120, line: 186, baseType: !272, size: 128, offset: 128)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 128, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 2)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !264, file: !120, line: 186, baseType: !118, size: 64, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !119, file: !120, line: 380, baseType: !277, size: 384)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !120, line: 188, size: 384, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !277, file: !120, line: 189, baseType: !118, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !277, file: !120, line: 189, baseType: !30, size: 8, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !277, file: !120, line: 189, baseType: !30, size: 8, offset: 72)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !277, file: !120, line: 189, baseType: !13, size: 16, offset: 80)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !120, line: 189, baseType: !30, size: 8, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !277, file: !120, line: 190, baseType: !272, size: 128, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !277, file: !120, line: 190, baseType: !118, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !277, file: !120, line: 190, baseType: !287, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !289)
!289 = !{!290, !291, !292, !293, !301, !316, !348, !349, !350, !351, !352, !353}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !288, file: !6, line: 481, baseType: !114, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !288, file: !6, line: 482, baseType: !287, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !6, line: 483, baseType: !287, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !288, file: !6, line: 484, baseType: !294, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !296)
!296 = !{!297, !298, !299, !300}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !295, file: !6, line: 498, baseType: !294, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !6, line: 499, baseType: !294, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !295, file: !6, line: 500, baseType: !287, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !295, file: !6, line: 501, baseType: !20, size: 32, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !288, file: !6, line: 485, baseType: !302, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !304)
!304 = !{!305, !310, !311, !312, !313, !314, !315}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !303, file: !6, line: 467, baseType: !306, size: 128)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !307)
!307 = !{!308, !309}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !306, file: !6, line: 460, baseType: !30, size: 8)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !306, file: !6, line: 461, baseType: !143, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !303, file: !6, line: 468, baseType: !306, size: 128, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !303, file: !6, line: 469, baseType: !13, size: 16, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !303, file: !6, line: 470, baseType: !30, size: 8, offset: 272)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !303, file: !6, line: 471, baseType: !30, size: 8, offset: 280)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !303, file: !6, line: 472, baseType: !30, size: 8, offset: 288)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !303, file: !6, line: 473, baseType: !30, size: 8, offset: 296)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !288, file: !6, line: 486, baseType: !317, size: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !319)
!319 = !{!320, !343, !344, !345, !346, !347}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !318, file: !6, line: 449, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !322)
!322 = !{!323, !324, !337}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !321, file: !6, line: 439, baseType: !114, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !321, file: !6, line: 440, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !327)
!327 = !{!328, !333, !334, !335, !336}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !326, file: !6, line: 420, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1058, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!20, !28, !20, !27}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !326, file: !6, line: 421, baseType: !27, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !326, file: !6, line: 422, baseType: !114, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !326, file: !6, line: 423, baseType: !30, size: 8, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !326, file: !6, line: 424, baseType: !30, size: 8, offset: 200)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !321, file: !6, line: 441, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !339, file: !6, line: 430, baseType: !114, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !6, line: 431, baseType: !338, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !318, file: !6, line: 450, baseType: !302, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !6, line: 451, baseType: !30, size: 8, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !318, file: !6, line: 452, baseType: !30, size: 8, offset: 136)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !318, file: !6, line: 453, baseType: !30, size: 8, offset: 144)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !318, file: !6, line: 454, baseType: !30, size: 8, offset: 152)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !288, file: !6, line: 487, baseType: !143, size: 64, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !288, file: !6, line: 488, baseType: !20, size: 32, offset: 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !288, file: !6, line: 489, baseType: !13, size: 16, offset: 480)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !288, file: !6, line: 490, baseType: !13, size: 16, offset: 496)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !288, file: !6, line: 491, baseType: !30, size: 8, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !288, file: !6, line: 492, baseType: !30, size: 8, offset: 520)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !119, file: !120, line: 381, baseType: !355, size: 384)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !120, line: 193, size: 384, elements: !356)
!356 = !{!357, !358, !359, !360, !361, !362, !363, !364, !365}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !355, file: !120, line: 194, baseType: !118, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !355, file: !120, line: 194, baseType: !30, size: 8, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !355, file: !120, line: 194, baseType: !30, size: 8, offset: 72)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !355, file: !120, line: 194, baseType: !13, size: 16, offset: 80)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !355, file: !120, line: 194, baseType: !30, size: 8, offset: 96)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !355, file: !120, line: 194, baseType: !272, size: 128, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !355, file: !120, line: 194, baseType: !118, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !355, file: !120, line: 194, baseType: !20, size: 32, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !355, file: !120, line: 195, baseType: !20, size: 32, offset: 352)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !119, file: !120, line: 382, baseType: !367, size: 384)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !120, line: 198, size: 384, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377, !378}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !367, file: !120, line: 199, baseType: !118, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !367, file: !120, line: 199, baseType: !30, size: 8, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !367, file: !120, line: 199, baseType: !30, size: 8, offset: 72)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !367, file: !120, line: 199, baseType: !13, size: 16, offset: 80)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !367, file: !120, line: 199, baseType: !30, size: 8, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !367, file: !120, line: 201, baseType: !30, size: 8, offset: 104)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !367, file: !120, line: 202, baseType: !30, size: 8, offset: 112)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !367, file: !120, line: 203, baseType: !272, size: 128, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !367, file: !120, line: 203, baseType: !118, size: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !367, file: !120, line: 203, baseType: !379, size: 64, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !143)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !119, file: !120, line: 383, baseType: !381, size: 320)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !120, line: 206, size: 320, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388, !389}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !381, file: !120, line: 207, baseType: !118, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !381, file: !120, line: 207, baseType: !30, size: 8, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !381, file: !120, line: 207, baseType: !30, size: 8, offset: 72)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !381, file: !120, line: 207, baseType: !13, size: 16, offset: 80)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !381, file: !120, line: 207, baseType: !30, size: 8, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !381, file: !120, line: 207, baseType: !272, size: 128, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !381, file: !120, line: 207, baseType: !118, size: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !119, file: !120, line: 384, baseType: !391, size: 384)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !120, line: 234, size: 384, elements: !392)
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !391, file: !120, line: 235, baseType: !118, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !391, file: !120, line: 235, baseType: !30, size: 8, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !391, file: !120, line: 235, baseType: !30, size: 8, offset: 72)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !391, file: !120, line: 235, baseType: !13, size: 16, offset: 80)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !391, file: !120, line: 235, baseType: !30, size: 8, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !391, file: !120, line: 235, baseType: !30, size: 8, offset: 104)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !391, file: !120, line: 235, baseType: !30, size: 8, offset: 112)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !391, file: !120, line: 235, baseType: !30, size: 8, offset: 120)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !391, file: !120, line: 235, baseType: !114, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !391, file: !120, line: 235, baseType: !20, size: 32, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !391, file: !120, line: 235, baseType: !20, size: 32, offset: 224)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !391, file: !120, line: 235, baseType: !20, size: 32, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !391, file: !120, line: 235, baseType: !30, size: 8, offset: 288)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !391, file: !120, line: 235, baseType: !30, size: 8, offset: 296)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !391, file: !120, line: 235, baseType: !118, size: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !119, file: !120, line: 385, baseType: !409, size: 576)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !120, line: 238, size: 576, elements: !410)
!410 = !{!411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !409, file: !120, line: 239, baseType: !118, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !409, file: !120, line: 239, baseType: !30, size: 8, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !409, file: !120, line: 239, baseType: !30, size: 8, offset: 72)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !409, file: !120, line: 239, baseType: !13, size: 16, offset: 80)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !409, file: !120, line: 239, baseType: !30, size: 8, offset: 96)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !409, file: !120, line: 239, baseType: !30, size: 8, offset: 104)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !409, file: !120, line: 239, baseType: !30, size: 8, offset: 112)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !409, file: !120, line: 239, baseType: !30, size: 8, offset: 120)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !409, file: !120, line: 239, baseType: !114, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !409, file: !120, line: 239, baseType: !20, size: 32, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !409, file: !120, line: 239, baseType: !20, size: 32, offset: 224)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !409, file: !120, line: 239, baseType: !20, size: 32, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !409, file: !120, line: 239, baseType: !30, size: 8, offset: 288)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !409, file: !120, line: 239, baseType: !30, size: 8, offset: 296)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !409, file: !120, line: 239, baseType: !13, size: 16, offset: 304)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !409, file: !120, line: 240, baseType: !118, size: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !409, file: !120, line: 241, baseType: !87, size: 64, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !409, file: !120, line: 242, baseType: !13, size: 16, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !409, file: !120, line: 243, baseType: !87, size: 64, offset: 512)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !119, file: !120, line: 386, baseType: !431, size: 384)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !120, line: 263, size: 384, elements: !432)
!432 = !{!433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !431, file: !120, line: 264, baseType: !118, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !431, file: !120, line: 264, baseType: !30, size: 8, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !431, file: !120, line: 264, baseType: !30, size: 8, offset: 72)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !431, file: !120, line: 264, baseType: !13, size: 16, offset: 80)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !431, file: !120, line: 264, baseType: !30, size: 8, offset: 96)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !431, file: !120, line: 264, baseType: !30, size: 8, offset: 104)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !431, file: !120, line: 264, baseType: !30, size: 8, offset: 112)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !431, file: !120, line: 264, baseType: !30, size: 8, offset: 120)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !431, file: !120, line: 264, baseType: !114, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !431, file: !120, line: 264, baseType: !20, size: 32, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !431, file: !120, line: 264, baseType: !20, size: 32, offset: 224)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !431, file: !120, line: 264, baseType: !20, size: 32, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !431, file: !120, line: 264, baseType: !30, size: 8, offset: 288)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !431, file: !120, line: 264, baseType: !30, size: 8, offset: 296)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !431, file: !120, line: 264, baseType: !30, size: 8, offset: 304)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !431, file: !120, line: 265, baseType: !118, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !119, file: !120, line: 387, baseType: !450, size: 448)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !120, line: 246, size: 448, elements: !451)
!451 = !{!452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !450, file: !120, line: 247, baseType: !118, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !450, file: !120, line: 247, baseType: !30, size: 8, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !450, file: !120, line: 247, baseType: !30, size: 8, offset: 72)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !450, file: !120, line: 247, baseType: !13, size: 16, offset: 80)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !450, file: !120, line: 247, baseType: !30, size: 8, offset: 96)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !450, file: !120, line: 247, baseType: !30, size: 8, offset: 104)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !450, file: !120, line: 247, baseType: !30, size: 8, offset: 112)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !450, file: !120, line: 247, baseType: !30, size: 8, offset: 120)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !450, file: !120, line: 247, baseType: !114, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !450, file: !120, line: 247, baseType: !20, size: 32, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !450, file: !120, line: 247, baseType: !20, size: 32, offset: 224)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !450, file: !120, line: 247, baseType: !20, size: 32, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !450, file: !120, line: 247, baseType: !30, size: 8, offset: 288)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !450, file: !120, line: 247, baseType: !30, size: 8, offset: 296)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !450, file: !120, line: 247, baseType: !118, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !450, file: !120, line: 248, baseType: !118, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !119, file: !120, line: 388, baseType: !469, size: 448)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !120, line: 251, size: 448, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !469, file: !120, line: 252, baseType: !118, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !469, file: !120, line: 252, baseType: !30, size: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !469, file: !120, line: 252, baseType: !30, size: 8, offset: 72)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !469, file: !120, line: 252, baseType: !13, size: 16, offset: 80)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !120, line: 252, baseType: !30, size: 8, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !469, file: !120, line: 252, baseType: !30, size: 8, offset: 104)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !469, file: !120, line: 252, baseType: !30, size: 8, offset: 112)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !469, file: !120, line: 252, baseType: !30, size: 8, offset: 120)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !469, file: !120, line: 252, baseType: !114, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !469, file: !120, line: 252, baseType: !20, size: 32, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !469, file: !120, line: 252, baseType: !20, size: 32, offset: 224)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !469, file: !120, line: 252, baseType: !20, size: 32, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !469, file: !120, line: 252, baseType: !30, size: 8, offset: 288)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !469, file: !120, line: 252, baseType: !30, size: 8, offset: 296)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !469, file: !120, line: 257, baseType: !118, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !469, file: !120, line: 258, baseType: !118, size: 64, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !119, file: !120, line: 389, baseType: !488, size: 512)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !120, line: 274, size: 512, elements: !489)
!489 = !{!490, !491, !492, !493, !494, !495, !496, !497, !502, !503}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !488, file: !120, line: 275, baseType: !118, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !488, file: !120, line: 275, baseType: !30, size: 8, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !488, file: !120, line: 275, baseType: !30, size: 8, offset: 72)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !488, file: !120, line: 275, baseType: !13, size: 16, offset: 80)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !488, file: !120, line: 275, baseType: !30, size: 8, offset: 96)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !488, file: !120, line: 275, baseType: !114, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !488, file: !120, line: 276, baseType: !20, size: 32, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !488, file: !120, line: 277, baseType: !498, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1061, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !28, !20, !27}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !488, file: !120, line: 278, baseType: !27, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !488, file: !120, line: 279, baseType: !272, size: 128, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !119, file: !120, line: 390, baseType: !505, size: 576)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !120, line: 282, size: 576, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !512, !513, !514, !520, !521, !522, !523, !529, !530}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !505, file: !120, line: 283, baseType: !118, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !505, file: !120, line: 283, baseType: !30, size: 8, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !505, file: !120, line: 283, baseType: !30, size: 8, offset: 72)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !505, file: !120, line: 283, baseType: !13, size: 16, offset: 80)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !505, file: !120, line: 283, baseType: !30, size: 8, offset: 96)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !505, file: !120, line: 283, baseType: !30, size: 8, offset: 104)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !505, file: !120, line: 284, baseType: !30, size: 8, offset: 112)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !505, file: !120, line: 285, baseType: !515, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1093, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!18, !20, !260, !20, !519, !27, !27}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !505, file: !120, line: 286, baseType: !114, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !505, file: !120, line: 287, baseType: !27, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !505, file: !120, line: 288, baseType: !27, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !505, file: !120, line: 289, baseType: !524, size: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1126, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!18, !28, !20, !27, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !505, file: !120, line: 290, baseType: !118, size: 64, offset: 448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !120, line: 291, baseType: !118, size: 64, offset: 512)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !119, file: !120, line: 391, baseType: !532, size: 512)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !120, line: 309, size: 512, elements: !533)
!533 = !{!534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !532, file: !120, line: 310, baseType: !118, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !532, file: !120, line: 310, baseType: !30, size: 8, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !532, file: !120, line: 310, baseType: !30, size: 8, offset: 72)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !532, file: !120, line: 310, baseType: !13, size: 16, offset: 80)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !120, line: 310, baseType: !30, size: 8, offset: 96)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !532, file: !120, line: 310, baseType: !30, size: 8, offset: 104)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !532, file: !120, line: 311, baseType: !30, size: 8, offset: 112)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !532, file: !120, line: 312, baseType: !30, size: 8, offset: 120)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !532, file: !120, line: 313, baseType: !27, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !532, file: !120, line: 314, baseType: !114, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !532, file: !120, line: 315, baseType: !179, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !532, file: !120, line: 316, baseType: !87, size: 64, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !532, file: !120, line: 317, baseType: !87, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !532, file: !120, line: 318, baseType: !20, size: 32, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !119, file: !120, line: 392, baseType: !549, size: 448)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !120, line: 342, size: 448, elements: !550)
!550 = !{!551, !552, !553, !554, !555, !556, !557, !558, !559, !560}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !549, file: !120, line: 343, baseType: !118, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !549, file: !120, line: 343, baseType: !30, size: 8, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !549, file: !120, line: 343, baseType: !30, size: 8, offset: 72)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !549, file: !120, line: 343, baseType: !13, size: 16, offset: 80)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !549, file: !120, line: 343, baseType: !30, size: 8, offset: 96)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !549, file: !120, line: 343, baseType: !114, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !549, file: !120, line: 344, baseType: !114, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !549, file: !120, line: 345, baseType: !27, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !549, file: !120, line: 346, baseType: !87, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !549, file: !120, line: 347, baseType: !20, size: 32, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !119, file: !120, line: 393, baseType: !562, size: 256)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !120, line: 352, size: 256, elements: !563)
!563 = !{!564, !565, !566, !567, !568, !569, !574}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !562, file: !120, line: 353, baseType: !118, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !562, file: !120, line: 353, baseType: !30, size: 8, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !562, file: !120, line: 353, baseType: !30, size: 8, offset: 72)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !562, file: !120, line: 353, baseType: !13, size: 16, offset: 80)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !562, file: !120, line: 353, baseType: !30, size: 8, offset: 96)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !562, file: !120, line: 353, baseType: !570, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1064, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !28, !27}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !562, file: !120, line: 354, baseType: !27, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !119, file: !120, line: 394, baseType: !576, size: 192)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !120, line: 359, size: 192, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !576, file: !120, line: 360, baseType: !118, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !576, file: !120, line: 360, baseType: !30, size: 8, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !576, file: !120, line: 360, baseType: !30, size: 8, offset: 72)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !576, file: !120, line: 360, baseType: !13, size: 16, offset: 80)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !120, line: 360, baseType: !30, size: 8, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !576, file: !120, line: 360, baseType: !118, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !119, file: !120, line: 401, baseType: !115, size: 384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !115, file: !6, line: 135, baseType: !30, size: 8, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !6, line: 136, baseType: !30, size: 8, offset: 72)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !6, line: 137, baseType: !13, size: 16, offset: 80)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !115, file: !6, line: 138, baseType: !589, size: 32, offset: 96)
!589 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !590, line: 328, size: 32, elements: !591)
!590 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !589, file: !590, line: 329, baseType: !20, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !589, file: !590, line: 330, baseType: !594, size: 32)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 4)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !115, file: !6, line: 139, baseType: !114, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !115, file: !6, line: 140, baseType: !114, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !115, file: !6, line: 141, baseType: !114, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !115, file: !6, line: 142, baseType: !77, size: 16, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !105, file: !6, line: 845, baseType: !602, size: 64, offset: 320)
!602 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 732, size: 64, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !602, file: !6, line: 733, baseType: !143, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !602, file: !6, line: 734, baseType: !20, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !602, file: !6, line: 735, baseType: !22, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !602, file: !6, line: 736, baseType: !87, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !602, file: !6, line: 737, baseType: !22, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !602, file: !6, line: 738, baseType: !101, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !105, file: !6, line: 845, baseType: !30, size: 8, offset: 384)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !102, file: !6, line: 893, baseType: !612, size: 640)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 851, size: 640, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !612, file: !6, line: 852, baseType: !101, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !612, file: !6, line: 852, baseType: !30, size: 8, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !6, line: 852, baseType: !30, size: 8, offset: 72)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !612, file: !6, line: 852, baseType: !13, size: 16, offset: 80)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !612, file: !6, line: 852, baseType: !87, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !612, file: !6, line: 852, baseType: !101, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !612, file: !6, line: 852, baseType: !114, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !612, file: !6, line: 852, baseType: !602, size: 64, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !612, file: !6, line: 852, baseType: !30, size: 8, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !612, file: !6, line: 852, baseType: !22, size: 64, offset: 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !612, file: !6, line: 853, baseType: !87, size: 64, offset: 512)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !612, file: !6, line: 854, baseType: !20, size: 32, offset: 576)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !612, file: !6, line: 855, baseType: !20, size: 32, offset: 608)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !102, file: !6, line: 894, baseType: !628, size: 1600)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 862, size: 1600, elements: !629)
!629 = !{!630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !628, file: !6, line: 863, baseType: !101, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !628, file: !6, line: 863, baseType: !30, size: 8, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !628, file: !6, line: 863, baseType: !30, size: 8, offset: 72)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !628, file: !6, line: 863, baseType: !13, size: 16, offset: 80)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !628, file: !6, line: 863, baseType: !87, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !628, file: !6, line: 863, baseType: !101, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !628, file: !6, line: 863, baseType: !114, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !628, file: !6, line: 863, baseType: !602, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !628, file: !6, line: 863, baseType: !30, size: 8, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !628, file: !6, line: 863, baseType: !101, size: 64, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !628, file: !6, line: 864, baseType: !101, size: 64, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !628, file: !6, line: 865, baseType: !22, size: 64, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !628, file: !6, line: 866, baseType: !30, size: 8, offset: 640)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !628, file: !6, line: 867, baseType: !22, size: 64, offset: 704)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !628, file: !6, line: 868, baseType: !22, size: 64, offset: 768)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !628, file: !6, line: 869, baseType: !22, size: 64, offset: 832)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !628, file: !6, line: 870, baseType: !594, size: 32, offset: 896)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !628, file: !6, line: 871, baseType: !20, size: 32, offset: 928)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !628, file: !6, line: 872, baseType: !20, size: 32, offset: 960)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !628, file: !6, line: 873, baseType: !20, size: 32, offset: 992)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !628, file: !6, line: 874, baseType: !20, size: 32, offset: 1024)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !628, file: !6, line: 875, baseType: !20, size: 32, offset: 1056)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !628, file: !6, line: 876, baseType: !20, size: 32, offset: 1088)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !628, file: !6, line: 877, baseType: !20, size: 32, offset: 1120)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !628, file: !6, line: 878, baseType: !20, size: 32, offset: 1152)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !628, file: !6, line: 879, baseType: !20, size: 32, offset: 1184)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !628, file: !6, line: 880, baseType: !20, size: 32, offset: 1216)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !628, file: !6, line: 881, baseType: !20, size: 32, offset: 1248)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !628, file: !6, line: 882, baseType: !20, size: 32, offset: 1280)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !628, file: !6, line: 883, baseType: !20, size: 32, offset: 1312)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !628, file: !6, line: 884, baseType: !13, size: 16, offset: 1344)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !628, file: !6, line: 885, baseType: !30, size: 8, offset: 1360)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !628, file: !6, line: 886, baseType: !30, size: 8, offset: 1368)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !628, file: !6, line: 887, baseType: !30, size: 8, offset: 1376)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !628, file: !6, line: 888, baseType: !665, size: 160, offset: 1384)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !666)
!666 = !{!667}
!667 = !DISubrange(count: 20)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !93, file: !6, line: 916, baseType: !114, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !93, file: !6, line: 917, baseType: !670, size: 64, offset: 448)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 679, size: 640, elements: !672)
!672 = !{!673, !681, !694, !703, !712, !725, !739, !740, !752}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !671, file: !6, line: 680, baseType: !674, size: 128)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 575, size: 128, elements: !675)
!675 = !{!676, !677, !678, !679, !680}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !674, file: !6, line: 576, baseType: !27, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !674, file: !6, line: 576, baseType: !30, size: 8, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !6, line: 576, baseType: !30, size: 8, offset: 72)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !674, file: !6, line: 576, baseType: !13, size: 16, offset: 80)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !674, file: !6, line: 576, baseType: !13, size: 16, offset: 96)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !671, file: !6, line: 681, baseType: !682, size: 384)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 604, size: 384, elements: !683)
!683 = !{!684, !685, !686, !687, !688, !689, !690, !691, !692, !693}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !682, file: !6, line: 605, baseType: !27, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !682, file: !6, line: 605, baseType: !30, size: 8, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !682, file: !6, line: 605, baseType: !30, size: 8, offset: 72)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !682, file: !6, line: 605, baseType: !13, size: 16, offset: 80)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !682, file: !6, line: 605, baseType: !13, size: 16, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !682, file: !6, line: 606, baseType: !13, size: 16, offset: 112)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !682, file: !6, line: 607, baseType: !101, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !682, file: !6, line: 608, baseType: !87, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !682, file: !6, line: 609, baseType: !87, size: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !682, file: !6, line: 610, baseType: !143, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !671, file: !6, line: 682, baseType: !695, size: 192)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 582, size: 192, elements: !696)
!696 = !{!697, !698, !699, !700, !701, !702}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !695, file: !6, line: 583, baseType: !27, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !695, file: !6, line: 583, baseType: !30, size: 8, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !695, file: !6, line: 583, baseType: !30, size: 8, offset: 72)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !695, file: !6, line: 583, baseType: !13, size: 16, offset: 80)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !695, file: !6, line: 583, baseType: !13, size: 16, offset: 96)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !695, file: !6, line: 584, baseType: !118, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !671, file: !6, line: 683, baseType: !704, size: 192)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 616, size: 192, elements: !705)
!705 = !{!706, !707, !708, !709, !710, !711}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !6, line: 617, baseType: !27, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !704, file: !6, line: 617, baseType: !30, size: 8, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !6, line: 617, baseType: !30, size: 8, offset: 72)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !704, file: !6, line: 617, baseType: !13, size: 16, offset: 80)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !704, file: !6, line: 617, baseType: !13, size: 16, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !704, file: !6, line: 618, baseType: !114, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !671, file: !6, line: 684, baseType: !713, size: 448)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 621, size: 448, elements: !714)
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !723, !724}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !713, file: !6, line: 622, baseType: !27, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !713, file: !6, line: 622, baseType: !30, size: 8, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !713, file: !6, line: 622, baseType: !30, size: 8, offset: 72)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !713, file: !6, line: 622, baseType: !13, size: 16, offset: 80)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !713, file: !6, line: 622, baseType: !13, size: 16, offset: 96)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !713, file: !6, line: 623, baseType: !20, size: 32, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !713, file: !6, line: 624, baseType: !101, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !713, file: !6, line: 625, baseType: !87, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !713, file: !6, line: 626, baseType: !87, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !713, file: !6, line: 627, baseType: !20, size: 32, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !671, file: !6, line: 685, baseType: !726, size: 512)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 590, size: 512, elements: !727)
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !726, file: !6, line: 591, baseType: !27, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !726, file: !6, line: 591, baseType: !30, size: 8, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !726, file: !6, line: 591, baseType: !30, size: 8, offset: 72)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !726, file: !6, line: 591, baseType: !13, size: 16, offset: 80)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !726, file: !6, line: 591, baseType: !13, size: 16, offset: 96)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !726, file: !6, line: 592, baseType: !20, size: 32, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !726, file: !6, line: 593, baseType: !118, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !726, file: !6, line: 594, baseType: !118, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !726, file: !6, line: 595, baseType: !65, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !726, file: !6, line: 596, baseType: !27, size: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !726, file: !6, line: 597, baseType: !20, size: 32, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !671, file: !6, line: 686, baseType: !232, size: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !671, file: !6, line: 687, baseType: !741, size: 640)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 646, size: 640, elements: !742)
!742 = !{!743, !744, !745, !746, !747, !748}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !741, file: !6, line: 647, baseType: !27, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !741, file: !6, line: 647, baseType: !30, size: 8, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !741, file: !6, line: 647, baseType: !30, size: 8, offset: 72)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !741, file: !6, line: 647, baseType: !13, size: 16, offset: 80)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !741, file: !6, line: 647, baseType: !13, size: 16, offset: 96)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !741, file: !6, line: 648, baseType: !749, size: 512, offset: 128)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 512, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 8)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !671, file: !6, line: 688, baseType: !753, size: 320)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 669, size: 320, elements: !754)
!754 = !{!755, !756, !757, !758, !759, !760, !761, !762, !763}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !753, file: !6, line: 670, baseType: !27, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !753, file: !6, line: 670, baseType: !30, size: 8, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !753, file: !6, line: 670, baseType: !30, size: 8, offset: 72)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !753, file: !6, line: 670, baseType: !13, size: 16, offset: 80)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !753, file: !6, line: 670, baseType: !13, size: 16, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !753, file: !6, line: 671, baseType: !30, size: 8, offset: 112)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !753, file: !6, line: 672, baseType: !114, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !753, file: !6, line: 673, baseType: !118, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !753, file: !6, line: 674, baseType: !764, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 660, size: 128, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !765, file: !6, line: 661, baseType: !498, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !765, file: !6, line: 662, baseType: !27, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !93, file: !6, line: 918, baseType: !101, size: 64, offset: 512)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !93, file: !6, line: 919, baseType: !20, size: 32, offset: 576)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !66, file: !67, line: 61, baseType: !20, size: 32, offset: 1088)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !66, file: !67, line: 62, baseType: !20, size: 32, offset: 1120)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !66, file: !67, line: 63, baseType: !13, size: 16, offset: 1152)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !66, file: !67, line: 64, baseType: !30, size: 8, offset: 1168)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !66, file: !67, line: 66, baseType: !776, size: 2688, offset: 1216)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 2688, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 7)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !66, file: !67, line: 67, baseType: !780, size: 3072, offset: 3904)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 3072, elements: !750)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !66, file: !67, line: 68, baseType: !782, size: 576, offset: 6976)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 576, elements: !51)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !66, file: !67, line: 69, baseType: !179, size: 64, offset: 7552)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !66, file: !67, line: 71, baseType: !87, size: 64, offset: 7616)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !66, file: !67, line: 72, baseType: !179, size: 64, offset: 7680)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !66, file: !67, line: 73, baseType: !670, size: 64, offset: 7744)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !66, file: !67, line: 74, baseType: !114, size: 64, offset: 7808)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !66, file: !67, line: 75, baseType: !118, size: 64, offset: 7872)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !66, file: !67, line: 76, baseType: !114, size: 64, offset: 7936)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !66, file: !67, line: 77, baseType: !101, size: 64, offset: 8000)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !66, file: !67, line: 78, baseType: !118, size: 64, offset: 8064)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !66, file: !67, line: 79, baseType: !114, size: 64, offset: 8128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !66, file: !67, line: 80, baseType: !22, size: 64, offset: 8192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !66, file: !67, line: 81, baseType: !101, size: 64, offset: 8256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !66, file: !67, line: 82, baseType: !796, size: 64, offset: 8320)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 718, size: 128, elements: !799)
!799 = !{!800, !801, !802, !803, !804, !805}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !798, file: !6, line: 722, baseType: !20, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !798, file: !6, line: 723, baseType: !20, size: 32, offset: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !798, file: !6, line: 724, baseType: !13, size: 16, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !798, file: !6, line: 725, baseType: !30, size: 8, offset: 80)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !798, file: !6, line: 726, baseType: !30, size: 8, offset: 88)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !798, file: !6, line: 727, baseType: !30, size: 8, offset: 96)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !66, file: !67, line: 83, baseType: !101, size: 64, offset: 8384)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !66, file: !67, line: 84, baseType: !118, size: 64, offset: 8448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !66, file: !67, line: 85, baseType: !670, size: 64, offset: 8512)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !66, file: !67, line: 86, baseType: !118, size: 64, offset: 8576)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !66, file: !67, line: 87, baseType: !670, size: 64, offset: 8640)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !66, file: !67, line: 88, baseType: !101, size: 64, offset: 8704)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !66, file: !67, line: 89, baseType: !101, size: 64, offset: 8768)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !66, file: !67, line: 90, baseType: !231, size: 64, offset: 8832)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !66, file: !67, line: 91, baseType: !815, size: 64, offset: 8896)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 652, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !66, file: !67, line: 92, baseType: !818, size: 64, offset: 8960)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 656, baseType: !211)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!820 = !{!821, !822, !823, !824, !825, !826, !828, !829}
!821 = !DILocalVariable(name: "walk_state", arg: 1, scope: !62, file: !3, line: 38, type: !65)
!822 = !DILocalVariable(name: "out_op", arg: 2, scope: !62, file: !3, line: 39, type: !819)
!823 = !DILocalVariable(name: "op", scope: !62, file: !3, line: 41, type: !101)
!824 = !DILocalVariable(name: "node", scope: !62, file: !3, line: 42, type: !114)
!825 = !DILocalVariable(name: "status", scope: !62, file: !3, line: 43, type: !18)
!826 = !DILocalVariable(name: "object_type", scope: !62, file: !3, line: 44, type: !827)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 644, baseType: !20)
!828 = !DILocalVariable(name: "buffer_ptr", scope: !62, file: !3, line: 45, type: !22)
!829 = !DILocalVariable(name: "flags", scope: !62, file: !3, line: 46, type: !20)
!830 = !DILocation(line: 38, column: 48, scope: !62)
!831 = !DILocation(line: 39, column: 36, scope: !62)
!832 = !DILocation(line: 41, column: 2, scope: !62)
!833 = !DILocation(line: 41, column: 27, scope: !62)
!834 = !DILocation(line: 42, column: 2, scope: !62)
!835 = !DILocation(line: 42, column: 30, scope: !62)
!836 = !DILocation(line: 43, column: 2, scope: !62)
!837 = !DILocation(line: 43, column: 14, scope: !62)
!838 = !DILocation(line: 44, column: 2, scope: !62)
!839 = !DILocation(line: 44, column: 19, scope: !62)
!840 = !DILocation(line: 45, column: 2, scope: !62)
!841 = !DILocation(line: 45, column: 8, scope: !62)
!842 = !DILocation(line: 46, column: 2, scope: !62)
!843 = !DILocation(line: 46, column: 6, scope: !62)
!844 = !DILocation(line: 50, column: 7, scope: !62)
!845 = !DILocation(line: 50, column: 19, scope: !62)
!846 = !DILocation(line: 50, column: 5, scope: !62)
!847 = !DILocation(line: 54, column: 6, scope: !848)
!848 = distinct !DILexicalBlock(scope: !62, file: !3, line: 54, column: 6)
!849 = !DILocation(line: 54, column: 6, scope: !62)
!850 = !DILocation(line: 55, column: 8, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !3, line: 55, column: 7)
!852 = distinct !DILexicalBlock(scope: !848, file: !3, line: 54, column: 10)
!853 = !DILocation(line: 55, column: 20, scope: !851)
!854 = !DILocation(line: 55, column: 7, scope: !851)
!855 = !DILocation(line: 55, column: 35, scope: !851)
!856 = !DILocation(line: 56, column: 8, scope: !851)
!857 = !DILocation(line: 56, column: 20, scope: !851)
!858 = !DILocation(line: 56, column: 42, scope: !851)
!859 = !DILocation(line: 56, column: 48, scope: !851)
!860 = !DILocation(line: 55, column: 7, scope: !852)
!861 = !DILocation(line: 61, column: 35, scope: !862)
!862 = distinct !DILexicalBlock(scope: !851, file: !3, line: 57, column: 45)
!863 = !DILocation(line: 61, column: 47, scope: !862)
!864 = !DILocation(line: 61, column: 13, scope: !862)
!865 = !DILocation(line: 61, column: 11, scope: !862)
!866 = !DILocation(line: 62, column: 4, scope: !862)
!867 = !DILocation(line: 67, column: 10, scope: !868)
!868 = distinct !DILexicalBlock(scope: !852, file: !3, line: 67, column: 7)
!869 = !DILocation(line: 67, column: 22, scope: !868)
!870 = !DILocation(line: 67, column: 31, scope: !868)
!871 = !DILocation(line: 67, column: 37, scope: !868)
!872 = !DILocation(line: 67, column: 53, scope: !868)
!873 = !DILocation(line: 68, column: 9, scope: !868)
!874 = !DILocation(line: 68, column: 21, scope: !868)
!875 = !DILocation(line: 68, column: 28, scope: !868)
!876 = !DILocation(line: 68, column: 53, scope: !868)
!877 = !DILocation(line: 69, column: 10, scope: !868)
!878 = !DILocation(line: 69, column: 22, scope: !868)
!879 = !DILocation(line: 69, column: 31, scope: !868)
!880 = !DILocation(line: 69, column: 37, scope: !868)
!881 = !DILocation(line: 67, column: 7, scope: !852)
!882 = !DILocation(line: 70, column: 4, scope: !883)
!883 = distinct !DILexicalBlock(scope: !868, file: !3, line: 69, column: 52)
!884 = !DILocation(line: 75, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !852, file: !3, line: 75, column: 7)
!886 = !DILocation(line: 75, column: 19, scope: !885)
!887 = !DILocation(line: 75, column: 26, scope: !885)
!888 = !DILocation(line: 75, column: 7, scope: !852)
!889 = !DILocation(line: 79, column: 17, scope: !890)
!890 = distinct !DILexicalBlock(scope: !885, file: !3, line: 75, column: 50)
!891 = !DILocation(line: 79, column: 28, scope: !890)
!892 = !DILocation(line: 79, column: 34, scope: !890)
!893 = !DILocation(line: 79, column: 15, scope: !890)
!894 = !DILocation(line: 80, column: 9, scope: !895)
!895 = distinct !DILexicalBlock(scope: !890, file: !3, line: 80, column: 8)
!896 = !DILocation(line: 80, column: 8, scope: !890)
!897 = !DILocation(line: 84, column: 5, scope: !898)
!898 = distinct !DILexicalBlock(scope: !895, file: !3, line: 80, column: 21)
!899 = !DILocation(line: 86, column: 3, scope: !890)
!900 = !DILocation(line: 89, column: 17, scope: !901)
!901 = distinct !DILexicalBlock(scope: !885, file: !3, line: 86, column: 10)
!902 = !DILocation(line: 89, column: 15, scope: !901)
!903 = !DILocation(line: 91, column: 2, scope: !852)
!904 = !DILocation(line: 95, column: 36, scope: !905)
!905 = distinct !DILexicalBlock(scope: !848, file: !3, line: 91, column: 9)
!906 = !DILocation(line: 95, column: 48, scope: !905)
!907 = !DILocation(line: 95, column: 7, scope: !905)
!908 = !DILocation(line: 94, column: 14, scope: !905)
!909 = !DILocation(line: 100, column: 16, scope: !62)
!910 = !DILocation(line: 100, column: 28, scope: !62)
!911 = !DILocation(line: 100, column: 37, scope: !62)
!912 = !DILocation(line: 100, column: 14, scope: !62)
!913 = !DILocation(line: 106, column: 10, scope: !62)
!914 = !DILocation(line: 106, column: 22, scope: !62)
!915 = !DILocation(line: 106, column: 2, scope: !62)
!916 = !DILocation(line: 111, column: 8, scope: !917)
!917 = distinct !DILexicalBlock(scope: !62, file: !3, line: 106, column: 30)
!918 = !DILocation(line: 112, column: 10, scope: !917)
!919 = !DILocation(line: 113, column: 3, scope: !917)
!920 = !DILocation(line: 122, column: 22, scope: !917)
!921 = !DILocation(line: 122, column: 34, scope: !917)
!922 = !DILocation(line: 122, column: 46, scope: !917)
!923 = !DILocation(line: 123, column: 8, scope: !917)
!924 = !DILocation(line: 124, column: 31, scope: !917)
!925 = !DILocation(line: 122, column: 7, scope: !917)
!926 = !DILocation(line: 121, column: 10, scope: !917)
!927 = !DILocation(line: 125, column: 3, scope: !917)
!928 = !DILocation(line: 131, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !917, file: !3, line: 131, column: 7)
!930 = !DILocation(line: 131, column: 10, scope: !929)
!931 = !DILocation(line: 131, column: 14, scope: !929)
!932 = !DILocation(line: 131, column: 24, scope: !929)
!933 = !DILocation(line: 131, column: 32, scope: !929)
!934 = !DILocation(line: 131, column: 29, scope: !929)
!935 = !DILocation(line: 131, column: 7, scope: !917)
!936 = !DILocation(line: 132, column: 11, scope: !937)
!937 = distinct !DILexicalBlock(scope: !929, file: !3, line: 131, column: 53)
!938 = !DILocation(line: 132, column: 21, scope: !937)
!939 = !DILocation(line: 132, column: 9, scope: !937)
!940 = !DILocation(line: 135, column: 33, scope: !937)
!941 = !DILocation(line: 135, column: 39, scope: !937)
!942 = !DILocation(line: 136, column: 12, scope: !937)
!943 = !DILocation(line: 135, column: 8, scope: !937)
!944 = !DILocation(line: 134, column: 11, scope: !937)
!945 = !DILocation(line: 137, column: 8, scope: !946)
!946 = distinct !DILexicalBlock(scope: !937, file: !3, line: 137, column: 8)
!947 = !DILocation(line: 137, column: 8, scope: !937)
!948 = !DILocation(line: 138, column: 5, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !3, line: 137, column: 30)
!950 = !DILocation(line: 140, column: 3, scope: !937)
!951 = !DILocation(line: 147, column: 23, scope: !952)
!952 = distinct !DILexicalBlock(scope: !929, file: !3, line: 140, column: 10)
!953 = !DILocation(line: 147, column: 35, scope: !952)
!954 = !DILocation(line: 147, column: 47, scope: !952)
!955 = !DILocation(line: 148, column: 9, scope: !952)
!956 = !DILocation(line: 149, column: 32, scope: !952)
!957 = !DILocation(line: 147, column: 8, scope: !952)
!958 = !DILocation(line: 146, column: 11, scope: !952)
!959 = !DILocation(line: 151, column: 8, scope: !960)
!960 = distinct !DILexicalBlock(scope: !952, file: !3, line: 151, column: 8)
!961 = !DILocation(line: 151, column: 8, scope: !952)
!962 = !DILocation(line: 162, column: 5, scope: !963)
!963 = distinct !DILexicalBlock(scope: !960, file: !3, line: 151, column: 30)
!964 = !DILocation(line: 165, column: 5, scope: !963)
!965 = !DILocation(line: 173, column: 11, scope: !917)
!966 = !DILocation(line: 173, column: 17, scope: !917)
!967 = !DILocation(line: 173, column: 3, scope: !917)
!968 = !DILocation(line: 182, column: 4, scope: !969)
!969 = distinct !DILexicalBlock(scope: !917, file: !3, line: 173, column: 23)
!970 = !DILocation(line: 195, column: 4, scope: !969)
!971 = !DILocation(line: 201, column: 4, scope: !969)
!972 = !DILocation(line: 201, column: 10, scope: !969)
!973 = !DILocation(line: 201, column: 15, scope: !969)
!974 = !DILocation(line: 202, column: 4, scope: !969)
!975 = !DILocation(line: 202, column: 16, scope: !969)
!976 = !DILocation(line: 202, column: 35, scope: !969)
!977 = !DILocation(line: 202, column: 41, scope: !969)
!978 = !DILocation(line: 203, column: 4, scope: !969)
!979 = !DILocation(line: 211, column: 9, scope: !980)
!980 = distinct !DILexicalBlock(scope: !969, file: !3, line: 211, column: 8)
!981 = !DILocation(line: 211, column: 17, scope: !980)
!982 = !DILocation(line: 211, column: 14, scope: !980)
!983 = !DILocation(line: 211, column: 37, scope: !980)
!984 = !DILocation(line: 212, column: 9, scope: !980)
!985 = !DILocation(line: 213, column: 9, scope: !980)
!986 = !DILocation(line: 213, column: 21, scope: !980)
!987 = !DILocation(line: 211, column: 8, scope: !969)
!988 = !DILocation(line: 214, column: 5, scope: !989)
!989 = distinct !DILexicalBlock(scope: !980, file: !3, line: 213, column: 49)
!990 = !DILocation(line: 213, column: 46, scope: !980)
!991 = !DILocation(line: 223, column: 4, scope: !969)
!992 = !DILocation(line: 229, column: 4, scope: !969)
!993 = !DILocation(line: 231, column: 3, scope: !917)
!994 = !DILocation(line: 237, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !917, file: !3, line: 237, column: 7)
!996 = !DILocation(line: 237, column: 10, scope: !995)
!997 = !DILocation(line: 237, column: 13, scope: !995)
!998 = !DILocation(line: 237, column: 24, scope: !995)
!999 = !DILocation(line: 237, column: 7, scope: !917)
!1000 = !DILocation(line: 241, column: 11, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !995, file: !3, line: 237, column: 30)
!1002 = !DILocation(line: 241, column: 22, scope: !1001)
!1003 = !DILocation(line: 241, column: 9, scope: !1001)
!1004 = !DILocation(line: 243, column: 28, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 243, column: 8)
!1006 = !DILocation(line: 243, column: 8, scope: !1005)
!1007 = !DILocation(line: 243, column: 8, scope: !1001)
!1008 = !DILocation(line: 245, column: 34, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 243, column: 42)
!1010 = !DILocation(line: 245, column: 40, scope: !1009)
!1011 = !DILocation(line: 246, column: 13, scope: !1009)
!1012 = !DILocation(line: 245, column: 9, scope: !1009)
!1013 = !DILocation(line: 244, column: 12, scope: !1009)
!1014 = !DILocation(line: 247, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 247, column: 9)
!1016 = !DILocation(line: 247, column: 9, scope: !1009)
!1017 = !DILocation(line: 248, column: 6, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 247, column: 31)
!1019 = !DILocation(line: 250, column: 4, scope: !1009)
!1020 = !DILocation(line: 252, column: 4, scope: !1001)
!1021 = !DILocation(line: 263, column: 7, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !917, file: !3, line: 263, column: 7)
!1023 = !DILocation(line: 263, column: 19, scope: !1022)
!1024 = !DILocation(line: 263, column: 7, scope: !917)
!1025 = !DILocation(line: 267, column: 11, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 263, column: 34)
!1027 = !DILocation(line: 267, column: 23, scope: !1026)
!1028 = !DILocation(line: 267, column: 9, scope: !1026)
!1029 = !DILocation(line: 268, column: 11, scope: !1026)
!1030 = !DILocation(line: 269, column: 4, scope: !1026)
!1031 = !DILocation(line: 272, column: 9, scope: !917)
!1032 = !DILocation(line: 273, column: 7, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !917, file: !3, line: 273, column: 7)
!1034 = !DILocation(line: 273, column: 19, scope: !1033)
!1035 = !DILocation(line: 273, column: 31, scope: !1033)
!1036 = !DILocation(line: 273, column: 7, scope: !917)
!1037 = !DILocation(line: 277, column: 10, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 273, column: 54)
!1039 = !DILocation(line: 280, column: 9, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 279, column: 8)
!1041 = !DILocation(line: 281, column: 9, scope: !1040)
!1042 = !DILocation(line: 281, column: 21, scope: !1040)
!1043 = !DILocation(line: 279, column: 8, scope: !1038)
!1044 = !DILocation(line: 282, column: 11, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 281, column: 49)
!1046 = !DILocation(line: 283, column: 4, scope: !1045)
!1047 = !DILocation(line: 284, column: 3, scope: !1038)
!1048 = !DILocation(line: 306, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !917, file: !3, line: 306, column: 7)
!1050 = !DILocation(line: 306, column: 19, scope: !1049)
!1051 = !DILocation(line: 306, column: 28, scope: !1049)
!1052 = !DILocation(line: 306, column: 34, scope: !1049)
!1053 = !DILocation(line: 306, column: 7, scope: !917)
!1054 = !DILocation(line: 307, column: 10, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 306, column: 47)
!1056 = !DILocation(line: 308, column: 3, scope: !1055)
!1057 = !DILocation(line: 313, column: 22, scope: !917)
!1058 = !DILocation(line: 313, column: 34, scope: !917)
!1059 = !DILocation(line: 313, column: 46, scope: !917)
!1060 = !DILocation(line: 314, column: 8, scope: !917)
!1061 = !DILocation(line: 314, column: 44, scope: !917)
!1062 = !DILocation(line: 315, column: 8, scope: !917)
!1063 = !DILocation(line: 313, column: 7, scope: !917)
!1064 = !DILocation(line: 312, column: 10, scope: !917)
!1065 = !DILocation(line: 317, column: 7, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !917, file: !3, line: 317, column: 7)
!1067 = !DILocation(line: 317, column: 28, scope: !1066)
!1068 = !DILocation(line: 317, column: 32, scope: !1066)
!1069 = !DILocation(line: 317, column: 38, scope: !1066)
!1070 = !DILocation(line: 317, column: 7, scope: !917)
!1071 = !DILocation(line: 321, column: 3, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 317, column: 60)
!1073 = !DILocation(line: 322, column: 3, scope: !917)
!1074 = !DILocation(line: 325, column: 6, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !62, file: !3, line: 325, column: 6)
!1076 = !DILocation(line: 325, column: 6, scope: !62)
!1077 = !DILocation(line: 326, column: 3, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 325, column: 28)
!1079 = !DILocation(line: 328, column: 3, scope: !1078)
!1080 = !DILocation(line: 331, column: 7, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !62, file: !3, line: 331, column: 6)
!1082 = !DILocation(line: 331, column: 6, scope: !62)
!1083 = !DILocation(line: 335, column: 25, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 331, column: 11)
!1085 = !DILocation(line: 335, column: 37, scope: !1084)
!1086 = !DILocation(line: 335, column: 45, scope: !1084)
!1087 = !DILocation(line: 335, column: 57, scope: !1084)
!1088 = !DILocation(line: 335, column: 8, scope: !1084)
!1089 = !DILocation(line: 335, column: 6, scope: !1084)
!1090 = !DILocation(line: 336, column: 8, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 336, column: 7)
!1092 = !DILocation(line: 336, column: 7, scope: !1084)
!1093 = !DILocation(line: 337, column: 4, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 336, column: 12)
!1095 = !DILocation(line: 342, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 342, column: 7)
!1097 = !DILocation(line: 342, column: 7, scope: !1084)
!1098 = !DILocation(line: 343, column: 21, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 342, column: 13)
!1100 = !DILocation(line: 343, column: 27, scope: !1099)
!1101 = !DILocation(line: 343, column: 32, scope: !1099)
!1102 = !DILocation(line: 343, column: 4, scope: !1099)
!1103 = !DILocation(line: 343, column: 14, scope: !1099)
!1104 = !DILocation(line: 343, column: 19, scope: !1099)
!1105 = !DILocation(line: 344, column: 3, scope: !1099)
!1106 = !DILocation(line: 345, column: 13, scope: !1084)
!1107 = !DILocation(line: 345, column: 4, scope: !1084)
!1108 = !DILocation(line: 345, column: 11, scope: !1084)
!1109 = !DILocation(line: 346, column: 2, scope: !1084)
!1110 = !DILocation(line: 352, column: 20, scope: !62)
!1111 = !DILocation(line: 352, column: 2, scope: !62)
!1112 = !DILocation(line: 352, column: 13, scope: !62)
!1113 = !DILocation(line: 352, column: 18, scope: !62)
!1114 = !DILocation(line: 353, column: 2, scope: !62)
!1115 = !DILocation(line: 354, column: 1, scope: !62)
!1116 = !DISubprogram(name: "acpi_ds_exec_begin_op", scope: !1117, file: !1117, line: 76, type: !63, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1117 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1118 = !DISubprogram(name: "acpi_ps_get_next_namestring", scope: !1119, file: !1119, line: 54, type: !1120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1119 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!22, !1122}
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!1123 = !DISubprogram(name: "acpi_ns_lookup", scope: !1124, file: !1124, line: 118, type: !1125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1124 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!18, !670, !22, !827, !1127, !20, !65, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interpreter_mode", file: !6, line: 120, baseType: !5)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!1129 = !DISubprogram(name: "acpi_ds_scope_stack_push", scope: !1117, file: !1117, line: 277, type: !1130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!18, !114, !827, !65}
!1132 = !DISubprogram(name: "acpi_ut_prefixed_namespace_error", scope: !1133, file: !1133, line: 728, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1133 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !1136, !20, !670, !1136, !18}
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!1137 = !DISubprogram(name: "acpi_warning", scope: !1138, file: !1138, line: 912, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1138 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1139 = !DISubroutineType(types: !1140)
!1140 = !{null, !1136, !20, !1136, null}
!1141 = !DISubprogram(name: "acpi_ut_get_node_name", scope: !1133, file: !1133, line: 227, type: !1142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!1136, !27}
!1144 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !1133, file: !1133, line: 225, type: !1145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!1136, !827}
!1147 = !DISubprogram(name: "acpi_error", scope: !1138, file: !1138, line: 901, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1148 = !DISubprogram(name: "acpi_ns_opens_scope", scope: !1124, file: !1124, line: 251, type: !1149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!20, !827}
!1151 = !DISubprogram(name: "acpi_ps_alloc_op", scope: !1119, file: !1119, line: 204, type: !1152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!101, !13, !87}
!1154 = distinct !DISubprogram(name: "acpi_ds_load2_end_op", scope: !3, file: !3, line: 369, type: !212, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1155)
!1155 = !{!1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165}
!1156 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1154, file: !3, line: 369, type: !65)
!1157 = !DILocalVariable(name: "op", scope: !1154, file: !3, line: 371, type: !101)
!1158 = !DILocalVariable(name: "status", scope: !1154, file: !3, line: 372, type: !18)
!1159 = !DILocalVariable(name: "object_type", scope: !1154, file: !3, line: 373, type: !827)
!1160 = !DILocalVariable(name: "node", scope: !1154, file: !3, line: 374, type: !114)
!1161 = !DILocalVariable(name: "arg", scope: !1154, file: !3, line: 375, type: !101)
!1162 = !DILocalVariable(name: "new_node", scope: !1154, file: !3, line: 376, type: !114)
!1163 = !DILocalVariable(name: "i", scope: !1154, file: !3, line: 377, type: !20)
!1164 = !DILocalVariable(name: "region_space", scope: !1154, file: !3, line: 378, type: !30)
!1165 = !DILabel(scope: !1154, name: "cleanup", file: !3, line: 738)
!1166 = !DILocation(line: 369, column: 58, scope: !1154)
!1167 = !DILocation(line: 371, column: 2, scope: !1154)
!1168 = !DILocation(line: 371, column: 27, scope: !1154)
!1169 = !DILocation(line: 372, column: 2, scope: !1154)
!1170 = !DILocation(line: 372, column: 14, scope: !1154)
!1171 = !DILocation(line: 373, column: 2, scope: !1154)
!1172 = !DILocation(line: 373, column: 19, scope: !1154)
!1173 = !DILocation(line: 374, column: 2, scope: !1154)
!1174 = !DILocation(line: 374, column: 30, scope: !1154)
!1175 = !DILocation(line: 375, column: 2, scope: !1154)
!1176 = !DILocation(line: 375, column: 27, scope: !1154)
!1177 = !DILocation(line: 376, column: 2, scope: !1154)
!1178 = !DILocation(line: 376, column: 30, scope: !1154)
!1179 = !DILocation(line: 377, column: 2, scope: !1154)
!1180 = !DILocation(line: 377, column: 6, scope: !1154)
!1181 = !DILocation(line: 378, column: 2, scope: !1154)
!1182 = !DILocation(line: 378, column: 5, scope: !1154)
!1183 = !DILocation(line: 386, column: 7, scope: !1154)
!1184 = !DILocation(line: 386, column: 19, scope: !1154)
!1185 = !DILocation(line: 386, column: 5, scope: !1154)
!1186 = !DILocation(line: 392, column: 8, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 392, column: 6)
!1188 = !DILocation(line: 392, column: 20, scope: !1187)
!1189 = !DILocation(line: 392, column: 29, scope: !1187)
!1190 = !DILocation(line: 392, column: 35, scope: !1187)
!1191 = !DILocation(line: 392, column: 6, scope: !1154)
!1192 = !DILocation(line: 393, column: 3, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 392, column: 52)
!1194 = !DILocation(line: 396, column: 6, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 396, column: 6)
!1196 = !DILocation(line: 396, column: 17, scope: !1195)
!1197 = !DILocation(line: 396, column: 28, scope: !1195)
!1198 = !DILocation(line: 396, column: 6, scope: !1154)
!1199 = !DILocation(line: 400, column: 2, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 396, column: 45)
!1201 = !DILocation(line: 402, column: 16, scope: !1154)
!1202 = !DILocation(line: 402, column: 28, scope: !1154)
!1203 = !DILocation(line: 402, column: 37, scope: !1154)
!1204 = !DILocation(line: 402, column: 14, scope: !1154)
!1205 = !DILocation(line: 408, column: 9, scope: !1154)
!1206 = !DILocation(line: 408, column: 20, scope: !1154)
!1207 = !DILocation(line: 408, column: 7, scope: !1154)
!1208 = !DILocation(line: 414, column: 36, scope: !1154)
!1209 = !DILocation(line: 414, column: 2, scope: !1154)
!1210 = !DILocation(line: 414, column: 14, scope: !1154)
!1211 = !DILocation(line: 414, column: 26, scope: !1154)
!1212 = !DILocation(line: 415, column: 2, scope: !1154)
!1213 = !DILocation(line: 415, column: 14, scope: !1154)
!1214 = !DILocation(line: 415, column: 27, scope: !1154)
!1215 = !DILocation(line: 419, column: 26, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 419, column: 6)
!1217 = !DILocation(line: 419, column: 6, scope: !1216)
!1218 = !DILocation(line: 419, column: 39, scope: !1216)
!1219 = !DILocation(line: 420, column: 7, scope: !1216)
!1220 = !DILocation(line: 420, column: 18, scope: !1216)
!1221 = !DILocation(line: 420, column: 29, scope: !1216)
!1222 = !DILocation(line: 419, column: 6, scope: !1154)
!1223 = !DILocation(line: 425, column: 36, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 420, column: 56)
!1225 = !DILocation(line: 425, column: 12, scope: !1224)
!1226 = !DILocation(line: 425, column: 10, scope: !1224)
!1227 = !DILocation(line: 426, column: 7, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 426, column: 7)
!1229 = !DILocation(line: 426, column: 7, scope: !1224)
!1230 = !DILocation(line: 427, column: 4, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 426, column: 29)
!1232 = !DILocation(line: 429, column: 2, scope: !1224)
!1233 = !DILocation(line: 466, column: 8, scope: !1154)
!1234 = !DILocation(line: 466, column: 19, scope: !1154)
!1235 = !DILocation(line: 466, column: 25, scope: !1154)
!1236 = !DILocation(line: 466, column: 6, scope: !1154)
!1237 = !DILocation(line: 468, column: 10, scope: !1154)
!1238 = !DILocation(line: 468, column: 22, scope: !1154)
!1239 = !DILocation(line: 468, column: 31, scope: !1154)
!1240 = !DILocation(line: 468, column: 2, scope: !1154)
!1241 = !DILocation(line: 475, column: 40, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 468, column: 37)
!1243 = !DILocation(line: 475, column: 44, scope: !1242)
!1244 = !DILocation(line: 475, column: 12, scope: !1242)
!1245 = !DILocation(line: 475, column: 10, scope: !1242)
!1246 = !DILocation(line: 476, column: 7, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 476, column: 7)
!1248 = !DILocation(line: 476, column: 7, scope: !1242)
!1249 = !DILocation(line: 477, column: 4, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 476, column: 29)
!1251 = !DILocation(line: 479, column: 4, scope: !1250)
!1252 = !DILocation(line: 481, column: 3, scope: !1242)
!1253 = !DILocation(line: 487, column: 7, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 487, column: 7)
!1255 = !DILocation(line: 487, column: 19, scope: !1254)
!1256 = !DILocation(line: 487, column: 7, scope: !1242)
!1257 = !DILocation(line: 488, column: 40, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 487, column: 32)
!1259 = !DILocation(line: 488, column: 44, scope: !1258)
!1260 = !DILocation(line: 488, column: 13, scope: !1258)
!1261 = !DILocation(line: 488, column: 11, scope: !1258)
!1262 = !DILocation(line: 489, column: 3, scope: !1258)
!1263 = !DILocation(line: 491, column: 11, scope: !1242)
!1264 = !DILocation(line: 491, column: 22, scope: !1242)
!1265 = !DILocation(line: 491, column: 3, scope: !1242)
!1266 = !DILocation(line: 495, column: 35, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 491, column: 34)
!1268 = !DILocation(line: 496, column: 27, scope: !1267)
!1269 = !DILocation(line: 497, column: 14, scope: !1267)
!1270 = !DILocation(line: 497, column: 20, scope: !1267)
!1271 = !DILocation(line: 495, column: 8, scope: !1267)
!1272 = !DILocation(line: 494, column: 11, scope: !1267)
!1273 = !DILocation(line: 498, column: 4, scope: !1267)
!1274 = !DILocation(line: 503, column: 34, scope: !1267)
!1275 = !DILocation(line: 503, column: 38, scope: !1267)
!1276 = !DILocation(line: 503, column: 50, scope: !1267)
!1277 = !DILocation(line: 504, column: 13, scope: !1267)
!1278 = !DILocation(line: 503, column: 8, scope: !1267)
!1279 = !DILocation(line: 502, column: 11, scope: !1267)
!1280 = !DILocation(line: 505, column: 4, scope: !1267)
!1281 = !DILocation(line: 510, column: 29, scope: !1267)
!1282 = !DILocation(line: 510, column: 33, scope: !1267)
!1283 = !DILocation(line: 510, column: 45, scope: !1267)
!1284 = !DILocation(line: 511, column: 8, scope: !1267)
!1285 = !DILocation(line: 510, column: 8, scope: !1267)
!1286 = !DILocation(line: 509, column: 11, scope: !1267)
!1287 = !DILocation(line: 512, column: 4, scope: !1267)
!1288 = !DILocation(line: 517, column: 4, scope: !1267)
!1289 = !DILocation(line: 519, column: 3, scope: !1242)
!1290 = !DILocation(line: 523, column: 36, scope: !1242)
!1291 = !DILocation(line: 523, column: 48, scope: !1242)
!1292 = !DILocation(line: 523, column: 12, scope: !1242)
!1293 = !DILocation(line: 523, column: 10, scope: !1242)
!1294 = !DILocation(line: 524, column: 7, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 524, column: 7)
!1296 = !DILocation(line: 524, column: 7, scope: !1242)
!1297 = !DILocation(line: 525, column: 4, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 524, column: 29)
!1299 = !DILocation(line: 528, column: 11, scope: !1242)
!1300 = !DILocation(line: 528, column: 22, scope: !1242)
!1301 = !DILocation(line: 528, column: 3, scope: !1242)
!1302 = !DILocation(line: 531, column: 38, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 528, column: 34)
!1304 = !DILocation(line: 531, column: 13, scope: !1303)
!1305 = !DILocation(line: 531, column: 11, scope: !1303)
!1306 = !DILocation(line: 532, column: 4, scope: !1303)
!1307 = !DILocation(line: 536, column: 43, scope: !1303)
!1308 = !DILocation(line: 536, column: 13, scope: !1303)
!1309 = !DILocation(line: 536, column: 11, scope: !1303)
!1310 = !DILocation(line: 537, column: 4, scope: !1303)
!1311 = !DILocation(line: 541, column: 34, scope: !1303)
!1312 = !DILocation(line: 541, column: 13, scope: !1303)
!1313 = !DILocation(line: 541, column: 11, scope: !1303)
!1314 = !DILocation(line: 542, column: 4, scope: !1303)
!1315 = !DILocation(line: 546, column: 34, scope: !1303)
!1316 = !DILocation(line: 546, column: 13, scope: !1303)
!1317 = !DILocation(line: 546, column: 11, scope: !1303)
!1318 = !DILocation(line: 547, column: 4, scope: !1303)
!1319 = !DILocation(line: 551, column: 34, scope: !1303)
!1320 = !DILocation(line: 551, column: 13, scope: !1303)
!1321 = !DILocation(line: 551, column: 11, scope: !1303)
!1322 = !DILocation(line: 552, column: 4, scope: !1303)
!1323 = !DILocation(line: 558, column: 11, scope: !1303)
!1324 = !DILocation(line: 559, column: 4, scope: !1303)
!1325 = !DILocation(line: 564, column: 10, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 564, column: 3)
!1327 = !DILocation(line: 564, column: 8, scope: !1326)
!1328 = !DILocation(line: 564, column: 15, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 564, column: 3)
!1330 = !DILocation(line: 564, column: 19, scope: !1329)
!1331 = !DILocation(line: 564, column: 31, scope: !1329)
!1332 = !DILocation(line: 564, column: 17, scope: !1329)
!1333 = !DILocation(line: 564, column: 3, scope: !1326)
!1334 = !DILocation(line: 565, column: 29, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 564, column: 50)
!1336 = !DILocation(line: 565, column: 41, scope: !1335)
!1337 = !DILocation(line: 565, column: 50, scope: !1335)
!1338 = !DILocation(line: 565, column: 4, scope: !1335)
!1339 = !DILocation(line: 566, column: 4, scope: !1335)
!1340 = !DILocation(line: 566, column: 16, scope: !1335)
!1341 = !DILocation(line: 566, column: 25, scope: !1335)
!1342 = !DILocation(line: 566, column: 28, scope: !1335)
!1343 = !DILocation(line: 567, column: 3, scope: !1335)
!1344 = !DILocation(line: 564, column: 46, scope: !1329)
!1345 = !DILocation(line: 564, column: 3, scope: !1329)
!1346 = distinct !{!1346, !1333, !1347, !1348, !1349}
!1347 = !DILocation(line: 567, column: 3, scope: !1326)
!1348 = !{!"llvm.loop.mustprogress"}
!1349 = !{!"llvm.loop.unroll.disable"}
!1350 = !DILocation(line: 569, column: 3, scope: !1242)
!1351 = !DILocation(line: 573, column: 11, scope: !1242)
!1352 = !DILocation(line: 573, column: 22, scope: !1242)
!1353 = !DILocation(line: 573, column: 3, scope: !1242)
!1354 = !DILocation(line: 577, column: 8, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 577, column: 8)
!1356 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 573, column: 34)
!1357 = !DILocation(line: 577, column: 19, scope: !1355)
!1358 = !DILocation(line: 577, column: 30, scope: !1355)
!1359 = !DILocation(line: 577, column: 8, scope: !1356)
!1360 = !DILocation(line: 579, column: 11, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 577, column: 48)
!1362 = !DILocation(line: 579, column: 22, scope: !1361)
!1363 = !DILocation(line: 579, column: 28, scope: !1361)
!1364 = !DILocation(line: 579, column: 41, scope: !1361)
!1365 = !DILocation(line: 580, column: 10, scope: !1361)
!1366 = !DILocation(line: 578, column: 20, scope: !1361)
!1367 = !DILocation(line: 578, column: 18, scope: !1361)
!1368 = !DILocation(line: 581, column: 4, scope: !1361)
!1369 = !DILocation(line: 582, column: 18, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 581, column: 11)
!1371 = !DILocation(line: 597, column: 8, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 597, column: 8)
!1373 = !DILocation(line: 597, column: 20, scope: !1372)
!1374 = !DILocation(line: 597, column: 8, scope: !1356)
!1375 = !DILocation(line: 602, column: 36, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 597, column: 33)
!1377 = !DILocation(line: 602, column: 46, scope: !1376)
!1378 = !DILocation(line: 603, column: 15, scope: !1376)
!1379 = !DILocation(line: 603, column: 25, scope: !1376)
!1380 = !DILocation(line: 604, column: 15, scope: !1376)
!1381 = !DILocation(line: 605, column: 15, scope: !1376)
!1382 = !DILocation(line: 602, column: 14, scope: !1376)
!1383 = !DILocation(line: 602, column: 12, scope: !1376)
!1384 = !DILocation(line: 606, column: 9, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 606, column: 9)
!1386 = !DILocation(line: 606, column: 9, scope: !1376)
!1387 = !DILocation(line: 607, column: 6, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 606, column: 31)
!1389 = !DILocation(line: 609, column: 4, scope: !1376)
!1390 = !DILocation(line: 613, column: 37, scope: !1356)
!1391 = !DILocation(line: 613, column: 9, scope: !1356)
!1392 = !DILocation(line: 612, column: 8, scope: !1356)
!1393 = !DILocation(line: 611, column: 11, scope: !1356)
!1394 = !DILocation(line: 614, column: 4, scope: !1356)
!1395 = !DILocation(line: 618, column: 33, scope: !1356)
!1396 = !DILocation(line: 618, column: 45, scope: !1356)
!1397 = !DILocation(line: 618, column: 51, scope: !1356)
!1398 = !DILocation(line: 618, column: 13, scope: !1356)
!1399 = !DILocation(line: 618, column: 11, scope: !1356)
!1400 = !DILocation(line: 619, column: 8, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 619, column: 8)
!1402 = !DILocation(line: 619, column: 8, scope: !1356)
!1403 = !DILocation(line: 620, column: 5, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 619, column: 30)
!1405 = !DILocation(line: 642, column: 4, scope: !1356)
!1406 = !DILocation(line: 657, column: 37, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 657, column: 8)
!1408 = !DILocation(line: 657, column: 47, scope: !1407)
!1409 = !DILocation(line: 657, column: 9, scope: !1407)
!1410 = !DILocation(line: 657, column: 8, scope: !1356)
!1411 = !DILocation(line: 659, column: 9, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 657, column: 54)
!1413 = !DILocation(line: 658, column: 5, scope: !1412)
!1414 = !DILocation(line: 658, column: 17, scope: !1412)
!1415 = !DILocation(line: 658, column: 29, scope: !1412)
!1416 = !DILocation(line: 660, column: 5, scope: !1412)
!1417 = !DILocation(line: 660, column: 17, scope: !1412)
!1418 = !DILocation(line: 660, column: 30, scope: !1412)
!1419 = !DILocation(line: 663, column: 33, scope: !1412)
!1420 = !DILocation(line: 664, column: 12, scope: !1412)
!1421 = !DILocation(line: 664, column: 23, scope: !1412)
!1422 = !DILocation(line: 665, column: 12, scope: !1412)
!1423 = !DILocation(line: 663, column: 9, scope: !1412)
!1424 = !DILocation(line: 662, column: 12, scope: !1412)
!1425 = !DILocation(line: 666, column: 9, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 666, column: 9)
!1427 = !DILocation(line: 666, column: 9, scope: !1412)
!1428 = !DILocation(line: 668, column: 32, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 666, column: 31)
!1430 = !DILocation(line: 669, column: 11, scope: !1429)
!1431 = !DILocation(line: 670, column: 11, scope: !1429)
!1432 = !DILocation(line: 671, column: 11, scope: !1429)
!1433 = !DILocation(line: 672, column: 11, scope: !1429)
!1434 = !DILocation(line: 668, column: 10, scope: !1429)
!1435 = !DILocation(line: 667, column: 13, scope: !1429)
!1436 = !DILocation(line: 673, column: 5, scope: !1429)
!1437 = !DILocation(line: 675, column: 5, scope: !1412)
!1438 = !DILocation(line: 675, column: 17, scope: !1412)
!1439 = !DILocation(line: 675, column: 29, scope: !1412)
!1440 = !DILocation(line: 676, column: 5, scope: !1412)
!1441 = !DILocation(line: 676, column: 17, scope: !1412)
!1442 = !DILocation(line: 676, column: 30, scope: !1412)
!1443 = !DILocation(line: 678, column: 9, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 678, column: 9)
!1445 = !DILocation(line: 678, column: 9, scope: !1412)
!1446 = !DILocation(line: 679, column: 6, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 678, column: 31)
!1448 = !DILocation(line: 681, column: 4, scope: !1412)
!1449 = !DILocation(line: 682, column: 4, scope: !1356)
!1450 = !DILocation(line: 687, column: 4, scope: !1356)
!1451 = !DILocation(line: 689, column: 3, scope: !1242)
!1452 = !DILocation(line: 706, column: 22, scope: !1242)
!1453 = !DILocation(line: 706, column: 34, scope: !1242)
!1454 = !DILocation(line: 707, column: 8, scope: !1242)
!1455 = !DILocation(line: 707, column: 20, scope: !1242)
!1456 = !DILocation(line: 707, column: 26, scope: !1242)
!1457 = !DILocation(line: 710, column: 33, scope: !1242)
!1458 = !DILocation(line: 706, column: 7, scope: !1242)
!1459 = !DILocation(line: 705, column: 10, scope: !1242)
!1460 = !DILocation(line: 712, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 712, column: 7)
!1462 = !DILocation(line: 712, column: 7, scope: !1242)
!1463 = !DILocation(line: 718, column: 8, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 718, column: 8)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 712, column: 29)
!1466 = !DILocation(line: 718, column: 18, scope: !1464)
!1467 = !DILocation(line: 718, column: 23, scope: !1464)
!1468 = !DILocation(line: 718, column: 8, scope: !1465)
!1469 = !DILocation(line: 719, column: 12, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 718, column: 44)
!1471 = !DILocation(line: 720, column: 4, scope: !1470)
!1472 = !DILocation(line: 726, column: 22, scope: !1465)
!1473 = !DILocation(line: 726, column: 4, scope: !1465)
!1474 = !DILocation(line: 726, column: 15, scope: !1465)
!1475 = !DILocation(line: 726, column: 20, scope: !1465)
!1476 = !DILocation(line: 727, column: 3, scope: !1465)
!1477 = !DILocation(line: 728, column: 4, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 727, column: 10)
!1479 = !DILocation(line: 731, column: 3, scope: !1242)
!1480 = !DILocation(line: 735, column: 3, scope: !1242)
!1481 = !DILocation(line: 736, column: 2, scope: !1242)
!1482 = !DILocation(line: 738, column: 1, scope: !1154)
!1483 = !DILocation(line: 742, column: 2, scope: !1154)
!1484 = !DILocation(line: 742, column: 14, scope: !1154)
!1485 = !DILocation(line: 742, column: 26, scope: !1154)
!1486 = !DILocation(line: 743, column: 2, scope: !1154)
!1487 = !DILocation(line: 743, column: 14, scope: !1154)
!1488 = !DILocation(line: 743, column: 27, scope: !1154)
!1489 = !DILocation(line: 744, column: 2, scope: !1154)
!1490 = !DILocation(line: 745, column: 1, scope: !1154)
!1491 = !DISubprogram(name: "acpi_ds_scope_stack_pop", scope: !1117, file: !1117, line: 281, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1492 = !DISubprogram(name: "acpi_ds_create_buffer_field", scope: !1117, file: !1117, line: 100, type: !1493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!18, !101, !65}
!1495 = !DISubprogram(name: "acpi_exception", scope: !1138, file: !1138, line: 906, type: !1496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{null, !1136, !20, !18, !1136, null}
!1498 = !DISubprogram(name: "acpi_ds_init_field_objects", scope: !1117, file: !1117, line: 104, type: !1493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1499 = !DISubprogram(name: "acpi_ds_create_index_field", scope: !1117, file: !1117, line: 95, type: !1500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!18, !101, !114, !65}
!1502 = !DISubprogram(name: "acpi_ds_create_bank_field", scope: !1117, file: !1117, line: 90, type: !1500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1503 = !DISubprogram(name: "acpi_ds_create_field", scope: !1117, file: !1117, line: 85, type: !1500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1504 = !DISubprogram(name: "acpi_ds_create_operands", scope: !1117, file: !1117, line: 264, type: !1505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!18, !65, !101}
!1507 = !DISubprogram(name: "acpi_ex_create_processor", scope: !1508, file: !1508, line: 208, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1508 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1509 = !DISubprogram(name: "acpi_ex_create_power_resource", scope: !1508, file: !1508, line: 210, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1510 = !DISubprogram(name: "acpi_ex_create_mutex", scope: !1508, file: !1508, line: 206, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1511 = !DISubprogram(name: "acpi_ex_create_event", scope: !1508, file: !1508, line: 217, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1512 = !DISubprogram(name: "acpi_ex_create_alias", scope: !1508, file: !1508, line: 219, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1513 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1133, file: !1133, line: 369, type: !1514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{null, !118}
!1516 = !DISubprogram(name: "acpi_ex_create_region", scope: !1508, file: !1508, line: 213, type: !1517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!18, !87, !20, !30, !65}
!1519 = !DISubprogram(name: "acpi_ev_initialize_region", scope: !1520, file: !1520, line: 236, type: !1521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1520 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!18, !118}
!1523 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1124, file: !1124, line: 298, type: !1524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!118, !114}
!1526 = !DISubprogram(name: "acpi_ds_create_node", scope: !1117, file: !1117, line: 228, type: !1527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!18, !65, !114, !101}
!1529 = !DISubprogram(name: "acpi_ex_create_method", scope: !1508, file: !1508, line: 222, type: !1530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!18, !87, !20, !65}
