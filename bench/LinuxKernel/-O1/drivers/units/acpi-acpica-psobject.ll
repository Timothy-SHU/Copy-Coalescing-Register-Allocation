; ModuleID = 'drivers/acpi/acpica/psobject.c'
source_filename = "drivers/acpi/acpica/psobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_parse_obj_named = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8, ptr, ptr, i32, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%struct.acpi_pscope_state = type { ptr, i8, i8, i16, i16, i32, ptr, ptr, ptr, i32 }

@_acpi_module_name = internal constant [9 x i8] c"psobject\00", align 1, !dbg !0
@.str = private unnamed_addr constant [27 x i8] c"During name lookup/catalog\00", align 1, !dbg !28
@.str.1 = private unnamed_addr constant [41 x i8] c"Ignoring error and continuing table load\00", align 1, !dbg !34
@.str.2 = private unnamed_addr constant [55 x i8] c"Unknown opcode 0x%.2X at table offset 0x%.4X, ignoring\00", align 1, !dbg !39

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ps_build_named_op(ptr noundef %walk_state, ptr noundef %aml_op_start, ptr noundef %unnamed_op, ptr noundef %op) #0 align 16 !dbg !57 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %aml_op_start.addr = alloca ptr, align 8
  %unnamed_op.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %arg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !817, metadata !DIExpression()), !dbg !823
  store ptr %aml_op_start, ptr %aml_op_start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml_op_start.addr, metadata !818, metadata !DIExpression()), !dbg !824
  store ptr %unnamed_op, ptr %unnamed_op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unnamed_op.addr, metadata !819, metadata !DIExpression()), !dbg !825
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !820, metadata !DIExpression()), !dbg !826
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !827
  call void @llvm.dbg.declare(metadata ptr %status, metadata !821, metadata !DIExpression()), !dbg !828
  store i32 0, ptr %status, align 4, !dbg !828
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #4, !dbg !829
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !822, metadata !DIExpression()), !dbg !830
  store ptr null, ptr %arg, align 8, !dbg !830
  %0 = load ptr, ptr %unnamed_op.addr, align 8, !dbg !831
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 7, !dbg !832
  store ptr null, ptr %value, align 8, !dbg !833
  %1 = load ptr, ptr %unnamed_op.addr, align 8, !dbg !834
  %arg_list_length = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %1, i32 0, i32 8, !dbg !835
  store i8 0, ptr %arg_list_length, align 8, !dbg !836
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !837
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 3, !dbg !838
  %3 = load i16, ptr %opcode, align 2, !dbg !838
  %4 = load ptr, ptr %unnamed_op.addr, align 8, !dbg !839
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %4, i32 0, i32 3, !dbg !840
  store i16 %3, ptr %aml_opcode, align 2, !dbg !841
  br label %while.cond, !dbg !842

while.cond:                                       ; preds = %if.end, %entry
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !843
  %arg_types = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 17, !dbg !843
  %6 = load i32, ptr %arg_types, align 8, !dbg !843
  %and = and i32 %6, 31, !dbg !843
  %tobool = icmp ne i32 %and, 0, !dbg !843
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !844

land.rhs:                                         ; preds = %while.cond
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !845
  %arg_types1 = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 17, !dbg !845
  %8 = load i32, ptr %arg_types1, align 8, !dbg !845
  %and2 = and i32 %8, 31, !dbg !845
  %cmp = icmp ne i32 %and2, 8, !dbg !846
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !847
  br i1 %9, label %while.body, label %while.end, !dbg !842

while.body:                                       ; preds = %land.end
  %10 = load ptr, ptr %walk_state.addr, align 8, !dbg !848
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !850
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 21, !dbg !851
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !852
  %arg_types3 = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 17, !dbg !852
  %13 = load i32, ptr %arg_types3, align 8, !dbg !852
  %and4 = and i32 %13, 31, !dbg !852
  %call = call i32 @acpi_ps_get_next_arg(ptr noundef %10, ptr noundef %parser_state, i32 noundef %and4, ptr noundef %arg) #5, !dbg !853
  store i32 %call, ptr %status, align 4, !dbg !854
  %14 = load i32, ptr %status, align 4, !dbg !855
  %tobool5 = icmp ne i32 %14, 0, !dbg !855
  br i1 %tobool5, label %if.then, label %if.end, !dbg !857

if.then:                                          ; preds = %while.body
  %15 = load i32, ptr %status, align 4, !dbg !858
  store i32 %15, ptr %retval, align 4, !dbg !858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !858

if.end:                                           ; preds = %while.body
  %16 = load ptr, ptr %unnamed_op.addr, align 8, !dbg !860
  %17 = load ptr, ptr %arg, align 8, !dbg !861
  call void @acpi_ps_append_arg(ptr noundef %16, ptr noundef %17) #5, !dbg !862
  %18 = load ptr, ptr %walk_state.addr, align 8, !dbg !863
  %arg_types6 = getelementptr inbounds %struct.acpi_walk_state, ptr %18, i32 0, i32 17, !dbg !863
  %19 = load i32, ptr %arg_types6, align 8, !dbg !863
  %shr = lshr i32 %19, 5, !dbg !863
  store i32 %shr, ptr %arg_types6, align 8, !dbg !863
  br label %while.cond, !dbg !842, !llvm.loop !864

while.end:                                        ; preds = %land.end
  %20 = load ptr, ptr %walk_state.addr, align 8, !dbg !868
  %arg_types7 = getelementptr inbounds %struct.acpi_walk_state, ptr %20, i32 0, i32 17, !dbg !868
  %21 = load i32, ptr %arg_types7, align 8, !dbg !868
  %and8 = and i32 %21, 31, !dbg !868
  %tobool9 = icmp ne i32 %and8, 0, !dbg !868
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !870

if.then10:                                        ; preds = %while.end
  store i32 12290, ptr %retval, align 4, !dbg !871
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !871

if.end11:                                         ; preds = %while.end
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !873
  %arg_types12 = getelementptr inbounds %struct.acpi_walk_state, ptr %22, i32 0, i32 17, !dbg !873
  %23 = load i32, ptr %arg_types12, align 8, !dbg !873
  %shr13 = lshr i32 %23, 5, !dbg !873
  store i32 %shr13, ptr %arg_types12, align 8, !dbg !873
  %24 = load ptr, ptr %walk_state.addr, align 8, !dbg !874
  %op14 = getelementptr inbounds %struct.acpi_walk_state, ptr %24, i32 0, i32 40, !dbg !875
  store ptr null, ptr %op14, align 8, !dbg !876
  %25 = load ptr, ptr %walk_state.addr, align 8, !dbg !877
  %descending_callback = getelementptr inbounds %struct.acpi_walk_state, ptr %25, i32 0, i32 50, !dbg !878
  %26 = load ptr, ptr %descending_callback, align 8, !dbg !878
  %27 = load ptr, ptr %walk_state.addr, align 8, !dbg !879
  %28 = load ptr, ptr %op.addr, align 8, !dbg !880
  %call15 = call i32 %26(ptr noundef %27, ptr noundef %28) #5, !dbg !877
  store i32 %call15, ptr %status, align 4, !dbg !881
  %29 = load i32, ptr %status, align 4, !dbg !882
  %tobool16 = icmp ne i32 %29, 0, !dbg !882
  br i1 %tobool16, label %if.then17, label %if.end21, !dbg !884

if.then17:                                        ; preds = %if.end11
  %30 = load i32, ptr %status, align 4, !dbg !885
  %cmp18 = icmp ne i32 %30, 16387, !dbg !888
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !889

if.then19:                                        ; preds = %if.then17
  %31 = load i32, ptr %status, align 4, !dbg !890
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 220, i32 noundef %31, ptr noundef @.str) #5, !dbg !890
  br label %if.end20, !dbg !892

if.end20:                                         ; preds = %if.then19, %if.then17
  %32 = load i32, ptr %status, align 4, !dbg !893
  store i32 %32, ptr %retval, align 4, !dbg !893
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !893

if.end21:                                         ; preds = %if.end11
  %33 = load ptr, ptr %op.addr, align 8, !dbg !894
  %34 = load ptr, ptr %33, align 8, !dbg !896
  %tobool22 = icmp ne ptr %34, null, !dbg !896
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !897

if.then23:                                        ; preds = %if.end21
  store i32 16395, ptr %retval, align 4, !dbg !898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !898

if.end24:                                         ; preds = %if.end21
  %35 = load ptr, ptr %walk_state.addr, align 8, !dbg !900
  %36 = load ptr, ptr %op.addr, align 8, !dbg !901
  %37 = load ptr, ptr %36, align 8, !dbg !902
  %38 = load i32, ptr %status, align 4, !dbg !903
  %call25 = call i32 @acpi_ps_next_parse_state(ptr noundef %35, ptr noundef %37, i32 noundef %38) #5, !dbg !904
  store i32 %call25, ptr %status, align 4, !dbg !905
  %39 = load i32, ptr %status, align 4, !dbg !906
  %tobool26 = icmp ne i32 %39, 0, !dbg !906
  br i1 %tobool26, label %if.then27, label %if.end31, !dbg !908

if.then27:                                        ; preds = %if.end24
  %40 = load i32, ptr %status, align 4, !dbg !909
  %cmp28 = icmp eq i32 %40, 16386, !dbg !912
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !913

if.then29:                                        ; preds = %if.then27
  store i32 16396, ptr %status, align 4, !dbg !914
  br label %if.end30, !dbg !916

if.end30:                                         ; preds = %if.then29, %if.then27
  %41 = load i32, ptr %status, align 4, !dbg !917
  store i32 %41, ptr %retval, align 4, !dbg !917
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !917

if.end31:                                         ; preds = %if.end24
  %42 = load ptr, ptr %op.addr, align 8, !dbg !918
  %43 = load ptr, ptr %42, align 8, !dbg !919
  %44 = load ptr, ptr %unnamed_op.addr, align 8, !dbg !920
  %value32 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %44, i32 0, i32 7, !dbg !921
  %45 = load ptr, ptr %value32, align 8, !dbg !922
  call void @acpi_ps_append_arg(ptr noundef %43, ptr noundef %45) #5, !dbg !923
  %46 = load ptr, ptr %op.addr, align 8, !dbg !924
  %47 = load ptr, ptr %46, align 8, !dbg !926
  %aml_opcode33 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %47, i32 0, i32 3, !dbg !927
  %48 = load i16, ptr %aml_opcode33, align 2, !dbg !927
  %conv = zext i16 %48 to i32, !dbg !928
  %cmp34 = icmp eq i32 %conv, 23424, !dbg !929
  br i1 %cmp34, label %if.then40, label %lor.lhs.false, !dbg !930

lor.lhs.false:                                    ; preds = %if.end31
  %49 = load ptr, ptr %op.addr, align 8, !dbg !931
  %50 = load ptr, ptr %49, align 8, !dbg !932
  %aml_opcode36 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %50, i32 0, i32 3, !dbg !933
  %51 = load i16, ptr %aml_opcode36, align 2, !dbg !933
  %conv37 = zext i16 %51 to i32, !dbg !934
  %cmp38 = icmp eq i32 %conv37, 23432, !dbg !935
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !936

if.then40:                                        ; preds = %lor.lhs.false, %if.end31
  %52 = load ptr, ptr %aml_op_start.addr, align 8, !dbg !937
  %53 = load ptr, ptr %op.addr, align 8, !dbg !939
  %54 = load ptr, ptr %53, align 8, !dbg !940
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %54, i32 0, i32 10, !dbg !941
  store ptr %52, ptr %data, align 8, !dbg !942
  %55 = load ptr, ptr %op.addr, align 8, !dbg !943
  %56 = load ptr, ptr %55, align 8, !dbg !944
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %56, i32 0, i32 11, !dbg !945
  store i32 0, ptr %length, align 8, !dbg !946
  br label %if.end41, !dbg !947

if.end41:                                         ; preds = %if.then40, %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !948

cleanup:                                          ; preds = %if.end41, %if.end30, %if.then23, %if.end20, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #4, !dbg !949
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !949
  %57 = load i32, ptr %retval, align 4, !dbg !949
  ret i32 %57, !dbg !949
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !950 dso_local i32 @acpi_ps_get_next_arg(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !955 dso_local void @acpi_ps_append_arg(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !958 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !963 dso_local i32 @acpi_ps_next_parse_state(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ps_create_op(ptr noundef %walk_state, ptr noundef %aml_op_start, ptr noundef %new_op) #0 align 16 !dbg !966 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %aml_op_start.addr = alloca ptr, align 8
  %new_op.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %op = alloca ptr, align 8
  %named_op = alloca ptr, align 8
  %parent_scope = alloca ptr, align 8
  %argument_count = alloca i8, align 1
  %op_info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !970, metadata !DIExpression()), !dbg !979
  store ptr %aml_op_start, ptr %aml_op_start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml_op_start.addr, metadata !971, metadata !DIExpression()), !dbg !980
  store ptr %new_op, ptr %new_op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_op.addr, metadata !972, metadata !DIExpression()), !dbg !981
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !982
  call void @llvm.dbg.declare(metadata ptr %status, metadata !973, metadata !DIExpression()), !dbg !983
  store i32 0, ptr %status, align 4, !dbg !983
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #4, !dbg !984
  call void @llvm.dbg.declare(metadata ptr %op, metadata !974, metadata !DIExpression()), !dbg !985
  call void @llvm.lifetime.start.p0(i64 8, ptr %named_op) #4, !dbg !986
  call void @llvm.dbg.declare(metadata ptr %named_op, metadata !975, metadata !DIExpression()), !dbg !987
  store ptr null, ptr %named_op, align 8, !dbg !987
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_scope) #4, !dbg !988
  call void @llvm.dbg.declare(metadata ptr %parent_scope, metadata !976, metadata !DIExpression()), !dbg !989
  call void @llvm.lifetime.start.p0(i64 1, ptr %argument_count) #4, !dbg !990
  call void @llvm.dbg.declare(metadata ptr %argument_count, metadata !977, metadata !DIExpression()), !dbg !991
  call void @llvm.lifetime.start.p0(i64 8, ptr %op_info) #4, !dbg !992
  call void @llvm.dbg.declare(metadata ptr %op_info, metadata !978, metadata !DIExpression()), !dbg !993
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !994
  %call = call i32 @acpi_ps_get_aml_opcode(ptr noundef %0) #5, !dbg !995
  store i32 %call, ptr %status, align 4, !dbg !996
  %1 = load i32, ptr %status, align 4, !dbg !997
  %cmp = icmp eq i32 %1, 16395, !dbg !999
  br i1 %cmp, label %if.then, label %if.end, !dbg !1000

if.then:                                          ; preds = %entry
  store i32 16395, ptr %retval, align 4, !dbg !1001
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1001

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !1003
  %tobool = icmp ne i32 %2, 0, !dbg !1003
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !1005

if.then1:                                         ; preds = %if.end
  %3 = load i32, ptr %status, align 4, !dbg !1006
  store i32 %3, ptr %retval, align 4, !dbg !1006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1006

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !1008
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 3, !dbg !1009
  %5 = load i16, ptr %opcode, align 2, !dbg !1009
  %call3 = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %5) #5, !dbg !1010
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !1011
  %op_info4 = getelementptr inbounds %struct.acpi_walk_state, ptr %6, i32 0, i32 41, !dbg !1012
  store ptr %call3, ptr %op_info4, align 8, !dbg !1013
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !1014
  %opcode5 = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 3, !dbg !1015
  %8 = load i16, ptr %opcode5, align 2, !dbg !1015
  %9 = load ptr, ptr %aml_op_start.addr, align 8, !dbg !1016
  %call6 = call ptr @acpi_ps_alloc_op(i16 noundef zeroext %8, ptr noundef %9) #5, !dbg !1017
  store ptr %call6, ptr %op, align 8, !dbg !1018
  %10 = load ptr, ptr %op, align 8, !dbg !1019
  %tobool7 = icmp ne ptr %10, null, !dbg !1019
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1021

if.then8:                                         ; preds = %if.end2
  store i32 4, ptr %retval, align 4, !dbg !1022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1022

if.end9:                                          ; preds = %if.end2
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !1024
  %op_info10 = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 41, !dbg !1026
  %12 = load ptr, ptr %op_info10, align 8, !dbg !1026
  %flags = getelementptr inbounds %struct.acpi_opcode_info, ptr %12, i32 0, i32 2, !dbg !1027
  %13 = load i16, ptr %flags, align 4, !dbg !1027
  %conv = zext i16 %13 to i32, !dbg !1024
  %and = and i32 %conv, 64, !dbg !1028
  %tobool11 = icmp ne i32 %and, 0, !dbg !1028
  br i1 %tobool11, label %if.then12, label %if.end17, !dbg !1029

if.then12:                                        ; preds = %if.end9
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !1030
  %15 = load ptr, ptr %aml_op_start.addr, align 8, !dbg !1032
  %16 = load ptr, ptr %op, align 8, !dbg !1033
  %call13 = call i32 @acpi_ps_build_named_op(ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %named_op) #5, !dbg !1034
  store i32 %call13, ptr %status, align 4, !dbg !1035
  %17 = load ptr, ptr %op, align 8, !dbg !1036
  call void @acpi_ps_free_op(ptr noundef %17) #5, !dbg !1037
  %18 = load i32, ptr %status, align 4, !dbg !1038
  %tobool14 = icmp ne i32 %18, 0, !dbg !1038
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1040

if.then15:                                        ; preds = %if.then12
  %19 = load i32, ptr %status, align 4, !dbg !1041
  store i32 %19, ptr %retval, align 4, !dbg !1041
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1041

if.end16:                                         ; preds = %if.then12
  %20 = load ptr, ptr %named_op, align 8, !dbg !1043
  %21 = load ptr, ptr %new_op.addr, align 8, !dbg !1044
  store ptr %20, ptr %21, align 8, !dbg !1045
  store i32 0, ptr %retval, align 4, !dbg !1046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1046

if.end17:                                         ; preds = %if.end9
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !1047
  %op_info18 = getelementptr inbounds %struct.acpi_walk_state, ptr %22, i32 0, i32 41, !dbg !1049
  %23 = load ptr, ptr %op_info18, align 8, !dbg !1049
  %flags19 = getelementptr inbounds %struct.acpi_opcode_info, ptr %23, i32 0, i32 2, !dbg !1050
  %24 = load i16, ptr %flags19, align 4, !dbg !1050
  %conv20 = zext i16 %24 to i32, !dbg !1047
  %and21 = and i32 %conv20, 8, !dbg !1051
  %tobool22 = icmp ne i32 %and21, 0, !dbg !1051
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !1052

if.then23:                                        ; preds = %if.end17
  %25 = load ptr, ptr %aml_op_start.addr, align 8, !dbg !1053
  %26 = load ptr, ptr %op, align 8, !dbg !1055
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %26, i32 0, i32 10, !dbg !1056
  store ptr %25, ptr %data, align 8, !dbg !1057
  %27 = load ptr, ptr %op, align 8, !dbg !1058
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %27, i32 0, i32 11, !dbg !1059
  store i32 0, ptr %length, align 8, !dbg !1060
  br label %if.end24, !dbg !1061

if.end24:                                         ; preds = %if.then23, %if.end17
  %28 = load ptr, ptr %walk_state.addr, align 8, !dbg !1062
  %opcode25 = getelementptr inbounds %struct.acpi_walk_state, ptr %28, i32 0, i32 3, !dbg !1064
  %29 = load i16, ptr %opcode25, align 2, !dbg !1064
  %conv26 = zext i16 %29 to i32, !dbg !1062
  %cmp27 = icmp eq i32 %conv26, 23431, !dbg !1065
  br i1 %cmp27, label %if.then29, label %if.end32, !dbg !1066

if.then29:                                        ; preds = %if.end24
  %30 = load ptr, ptr %aml_op_start.addr, align 8, !dbg !1067
  %31 = load ptr, ptr %op, align 8, !dbg !1069
  %data30 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %31, i32 0, i32 10, !dbg !1070
  store ptr %30, ptr %data30, align 8, !dbg !1071
  %32 = load ptr, ptr %op, align 8, !dbg !1072
  %length31 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %32, i32 0, i32 11, !dbg !1073
  store i32 0, ptr %length31, align 8, !dbg !1074
  br label %if.end32, !dbg !1075

if.end32:                                         ; preds = %if.then29, %if.end24
  %33 = load ptr, ptr %walk_state.addr, align 8, !dbg !1076
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, ptr %33, i32 0, i32 21, !dbg !1077
  %call33 = call ptr @acpi_ps_get_parent_scope(ptr noundef %parser_state) #5, !dbg !1078
  store ptr %call33, ptr %parent_scope, align 8, !dbg !1079
  %34 = load ptr, ptr %parent_scope, align 8, !dbg !1080
  %35 = load ptr, ptr %op, align 8, !dbg !1081
  call void @acpi_ps_append_arg(ptr noundef %34, ptr noundef %35) #5, !dbg !1082
  %36 = load ptr, ptr %parent_scope, align 8, !dbg !1083
  %tobool34 = icmp ne ptr %36, null, !dbg !1083
  br i1 %tobool34, label %if.then35, label %if.end68, !dbg !1085

if.then35:                                        ; preds = %if.end32
  %37 = load ptr, ptr %parent_scope, align 8, !dbg !1086
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %37, i32 0, i32 3, !dbg !1088
  %38 = load i16, ptr %aml_opcode, align 2, !dbg !1088
  %call36 = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %38) #5, !dbg !1089
  store ptr %call36, ptr %op_info, align 8, !dbg !1090
  %39 = load ptr, ptr %op_info, align 8, !dbg !1091
  %flags37 = getelementptr inbounds %struct.acpi_opcode_info, ptr %39, i32 0, i32 2, !dbg !1093
  %40 = load i16, ptr %flags37, align 4, !dbg !1093
  %conv38 = zext i16 %40 to i32, !dbg !1091
  %and39 = and i32 %conv38, 2048, !dbg !1094
  %tobool40 = icmp ne i32 %and39, 0, !dbg !1094
  br i1 %tobool40, label %if.then41, label %if.else, !dbg !1095

if.then41:                                        ; preds = %if.then35
  %41 = load ptr, ptr %op_info, align 8, !dbg !1096
  %type = getelementptr inbounds %struct.acpi_opcode_info, ptr %41, i32 0, i32 5, !dbg !1098
  %42 = load i8, ptr %type, align 4, !dbg !1098
  %conv42 = zext i8 %42 to i32, !dbg !1096
  %call43 = call zeroext i8 @acpi_ps_get_argument_count(i32 noundef %conv42) #5, !dbg !1099
  store i8 %call43, ptr %argument_count, align 1, !dbg !1100
  %43 = load ptr, ptr %parent_scope, align 8, !dbg !1101
  %arg_list_length = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %43, i32 0, i32 8, !dbg !1103
  %44 = load i8, ptr %arg_list_length, align 8, !dbg !1103
  %conv44 = zext i8 %44 to i32, !dbg !1101
  %45 = load i8, ptr %argument_count, align 1, !dbg !1104
  %conv45 = zext i8 %45 to i32, !dbg !1104
  %cmp46 = icmp sgt i32 %conv44, %conv45, !dbg !1105
  br i1 %cmp46, label %if.then48, label %if.end52, !dbg !1106

if.then48:                                        ; preds = %if.then41
  %46 = load ptr, ptr %op, align 8, !dbg !1107
  %flags49 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %46, i32 0, i32 2, !dbg !1109
  %47 = load i8, ptr %flags49, align 1, !dbg !1110
  %conv50 = zext i8 %47 to i32, !dbg !1110
  %or = or i32 %conv50, 32, !dbg !1110
  %conv51 = trunc i32 %or to i8, !dbg !1110
  store i8 %conv51, ptr %flags49, align 1, !dbg !1110
  br label %if.end52, !dbg !1111

if.end52:                                         ; preds = %if.then48, %if.then41
  br label %if.end67, !dbg !1112

if.else:                                          ; preds = %if.then35
  %48 = load ptr, ptr %parent_scope, align 8, !dbg !1113
  %aml_opcode53 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %48, i32 0, i32 3, !dbg !1115
  %49 = load i16, ptr %aml_opcode53, align 2, !dbg !1115
  %conv54 = zext i16 %49 to i32, !dbg !1113
  %cmp55 = icmp eq i32 %conv54, 117, !dbg !1116
  br i1 %cmp55, label %if.then61, label %lor.lhs.false, !dbg !1117

lor.lhs.false:                                    ; preds = %if.else
  %50 = load ptr, ptr %parent_scope, align 8, !dbg !1118
  %aml_opcode57 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %50, i32 0, i32 3, !dbg !1119
  %51 = load i16, ptr %aml_opcode57, align 2, !dbg !1119
  %conv58 = zext i16 %51 to i32, !dbg !1118
  %cmp59 = icmp eq i32 %conv58, 118, !dbg !1120
  br i1 %cmp59, label %if.then61, label %if.end66, !dbg !1121

if.then61:                                        ; preds = %lor.lhs.false, %if.else
  %52 = load ptr, ptr %op, align 8, !dbg !1122
  %flags62 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %52, i32 0, i32 2, !dbg !1124
  %53 = load i8, ptr %flags62, align 1, !dbg !1125
  %conv63 = zext i8 %53 to i32, !dbg !1125
  %or64 = or i32 %conv63, 32, !dbg !1125
  %conv65 = trunc i32 %or64 to i8, !dbg !1125
  store i8 %conv65, ptr %flags62, align 1, !dbg !1125
  br label %if.end66, !dbg !1126

if.end66:                                         ; preds = %if.then61, %lor.lhs.false
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end52
  br label %if.end68, !dbg !1127

if.end68:                                         ; preds = %if.end67, %if.end32
  %54 = load ptr, ptr %walk_state.addr, align 8, !dbg !1128
  %descending_callback = getelementptr inbounds %struct.acpi_walk_state, ptr %54, i32 0, i32 50, !dbg !1130
  %55 = load ptr, ptr %descending_callback, align 8, !dbg !1130
  %cmp69 = icmp ne ptr %55, null, !dbg !1131
  br i1 %cmp69, label %if.then71, label %if.end80, !dbg !1132

if.then71:                                        ; preds = %if.end68
  %56 = load ptr, ptr %op, align 8, !dbg !1133
  %57 = load ptr, ptr %new_op.addr, align 8, !dbg !1135
  store ptr %56, ptr %57, align 8, !dbg !1136
  %58 = load ptr, ptr %walk_state.addr, align 8, !dbg !1137
  %op72 = getelementptr inbounds %struct.acpi_walk_state, ptr %58, i32 0, i32 40, !dbg !1138
  store ptr %56, ptr %op72, align 8, !dbg !1139
  %59 = load ptr, ptr %walk_state.addr, align 8, !dbg !1140
  %descending_callback73 = getelementptr inbounds %struct.acpi_walk_state, ptr %59, i32 0, i32 50, !dbg !1141
  %60 = load ptr, ptr %descending_callback73, align 8, !dbg !1141
  %61 = load ptr, ptr %walk_state.addr, align 8, !dbg !1142
  %call74 = call i32 %60(ptr noundef %61, ptr noundef %op) #5, !dbg !1140
  store i32 %call74, ptr %status, align 4, !dbg !1143
  %62 = load ptr, ptr %walk_state.addr, align 8, !dbg !1144
  %63 = load ptr, ptr %op, align 8, !dbg !1145
  %64 = load i32, ptr %status, align 4, !dbg !1146
  %call75 = call i32 @acpi_ps_next_parse_state(ptr noundef %62, ptr noundef %63, i32 noundef %64) #5, !dbg !1147
  store i32 %call75, ptr %status, align 4, !dbg !1148
  %65 = load i32, ptr %status, align 4, !dbg !1149
  %cmp76 = icmp eq i32 %65, 16386, !dbg !1151
  br i1 %cmp76, label %if.then78, label %if.end79, !dbg !1152

if.then78:                                        ; preds = %if.then71
  store i32 16396, ptr %status, align 4, !dbg !1153
  br label %if.end79, !dbg !1155

if.end79:                                         ; preds = %if.then78, %if.then71
  br label %if.end80, !dbg !1156

if.end80:                                         ; preds = %if.end79, %if.end68
  %66 = load i32, ptr %status, align 4, !dbg !1157
  store i32 %66, ptr %retval, align 4, !dbg !1157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1157

cleanup:                                          ; preds = %if.end80, %if.end16, %if.then15, %if.then8, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %op_info) #4, !dbg !1158
  call void @llvm.lifetime.end.p0(i64 1, ptr %argument_count) #4, !dbg !1158
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_scope) #4, !dbg !1158
  call void @llvm.lifetime.end.p0(i64 8, ptr %named_op) #4, !dbg !1158
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #4, !dbg !1158
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1158
  %67 = load i32, ptr %retval, align 4, !dbg !1158
  ret i32 %67, !dbg !1158
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ps_get_aml_opcode(ptr noundef %walk_state) #0 align 16 !dbg !1159 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %aml_offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1161, metadata !DIExpression()), !dbg !1163
  call void @llvm.lifetime.start.p0(i64 4, ptr %aml_offset) #4, !dbg !1164
  call void @llvm.dbg.declare(metadata ptr %aml_offset, metadata !1162, metadata !DIExpression()), !dbg !1164
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1165
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 21, !dbg !1166
  %aml = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state, i32 0, i32 1, !dbg !1167
  %1 = load ptr, ptr %aml, align 8, !dbg !1167
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1168
  %aml1 = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 16, !dbg !1169
  store ptr %1, ptr %aml1, align 8, !dbg !1170
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1171
  %parser_state2 = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 21, !dbg !1172
  %call = call zeroext i16 @acpi_ps_peek_opcode(ptr noundef %parser_state2) #5, !dbg !1173
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !1174
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 3, !dbg !1175
  store i16 %call, ptr %opcode, align 2, !dbg !1176
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !1177
  %opcode3 = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 3, !dbg !1178
  %6 = load i16, ptr %opcode3, align 2, !dbg !1178
  %call4 = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %6) #5, !dbg !1179
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !1180
  %op_info = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 41, !dbg !1181
  store ptr %call4, ptr %op_info, align 8, !dbg !1182
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !1183
  %op_info5 = getelementptr inbounds %struct.acpi_walk_state, ptr %8, i32 0, i32 41, !dbg !1184
  %9 = load ptr, ptr %op_info5, align 8, !dbg !1184
  %class = getelementptr inbounds %struct.acpi_opcode_info, ptr %9, i32 0, i32 4, !dbg !1185
  %10 = load i8, ptr %class, align 1, !dbg !1185
  %conv = zext i8 %10 to i32, !dbg !1183
  switch i32 %conv, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 10, label %sw.bb7
  ], !dbg !1186

sw.bb:                                            ; preds = %entry, %entry
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !1187
  %opcode6 = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 3, !dbg !1189
  store i16 45, ptr %opcode6, align 2, !dbg !1190
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !1191
  %arg_types = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 17, !dbg !1192
  store i32 9, ptr %arg_types, align 8, !dbg !1193
  br label %sw.epilog, !dbg !1194

sw.bb7:                                           ; preds = %entry
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !1195
  %pass_number = getelementptr inbounds %struct.acpi_walk_state, ptr %13, i32 0, i32 12, !dbg !1197
  %14 = load i8, ptr %pass_number, align 2, !dbg !1197
  %conv8 = zext i8 %14 to i32, !dbg !1195
  %cmp = icmp eq i32 %conv8, 2, !dbg !1198
  br i1 %cmp, label %if.then, label %if.end, !dbg !1199

if.then:                                          ; preds = %sw.bb7
  %15 = load ptr, ptr %walk_state.addr, align 8, !dbg !1200
  %aml10 = getelementptr inbounds %struct.acpi_walk_state, ptr %15, i32 0, i32 16, !dbg !1200
  %16 = load ptr, ptr %aml10, align 8, !dbg !1200
  %17 = ptrtoint ptr %16 to i64, !dbg !1200
  %18 = inttoptr i64 %17 to ptr, !dbg !1200
  %19 = load ptr, ptr %walk_state.addr, align 8, !dbg !1200
  %parser_state11 = getelementptr inbounds %struct.acpi_walk_state, ptr %19, i32 0, i32 21, !dbg !1200
  %aml_start = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state11, i32 0, i32 0, !dbg !1200
  %20 = load ptr, ptr %aml_start, align 8, !dbg !1200
  %21 = ptrtoint ptr %20 to i64, !dbg !1200
  %22 = inttoptr i64 %21 to ptr, !dbg !1200
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i64, !dbg !1200
  %sub.ptr.rhs.cast = ptrtoint ptr %22 to i64, !dbg !1200
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1200
  %conv12 = trunc i64 %sub.ptr.sub to i32, !dbg !1200
  store i32 %conv12, ptr %aml_offset, align 4, !dbg !1200
  %23 = load ptr, ptr %walk_state.addr, align 8, !dbg !1202
  %opcode13 = getelementptr inbounds %struct.acpi_walk_state, ptr %23, i32 0, i32 3, !dbg !1202
  %24 = load i16, ptr %opcode13, align 2, !dbg !1202
  %conv14 = zext i16 %24 to i32, !dbg !1202
  %25 = load i32, ptr %aml_offset, align 4, !dbg !1202
  %conv15 = zext i32 %25 to i64, !dbg !1202
  %add = add i64 %conv15, 36, !dbg !1202
  %conv16 = trunc i64 %add to i32, !dbg !1202
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 74, ptr noundef @.str.2, i32 noundef %conv14, i32 noundef %conv16) #5, !dbg !1202
  br label %if.end, !dbg !1203

if.end:                                           ; preds = %if.then, %sw.bb7
  %26 = load ptr, ptr %walk_state.addr, align 8, !dbg !1204
  %parser_state17 = getelementptr inbounds %struct.acpi_walk_state, ptr %26, i32 0, i32 21, !dbg !1205
  %aml18 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state17, i32 0, i32 1, !dbg !1206
  %27 = load ptr, ptr %aml18, align 8, !dbg !1207
  %incdec.ptr = getelementptr i8, ptr %27, i32 1, !dbg !1207
  store ptr %incdec.ptr, ptr %aml18, align 8, !dbg !1207
  %28 = load ptr, ptr %walk_state.addr, align 8, !dbg !1208
  %opcode19 = getelementptr inbounds %struct.acpi_walk_state, ptr %28, i32 0, i32 3, !dbg !1210
  %29 = load i16, ptr %opcode19, align 2, !dbg !1210
  %conv20 = zext i16 %29 to i32, !dbg !1208
  %cmp21 = icmp sgt i32 %conv20, 255, !dbg !1211
  br i1 %cmp21, label %if.then23, label %if.end27, !dbg !1212

if.then23:                                        ; preds = %if.end
  %30 = load ptr, ptr %walk_state.addr, align 8, !dbg !1213
  %parser_state24 = getelementptr inbounds %struct.acpi_walk_state, ptr %30, i32 0, i32 21, !dbg !1215
  %aml25 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state24, i32 0, i32 1, !dbg !1216
  %31 = load ptr, ptr %aml25, align 8, !dbg !1217
  %incdec.ptr26 = getelementptr i8, ptr %31, i32 1, !dbg !1217
  store ptr %incdec.ptr26, ptr %aml25, align 8, !dbg !1217
  br label %if.end27, !dbg !1218

if.end27:                                         ; preds = %if.then23, %if.end
  store i32 16395, ptr %retval, align 4, !dbg !1219
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1219

sw.default:                                       ; preds = %entry
  %32 = load ptr, ptr %walk_state.addr, align 8, !dbg !1220
  %opcode28 = getelementptr inbounds %struct.acpi_walk_state, ptr %32, i32 0, i32 3, !dbg !1221
  %33 = load i16, ptr %opcode28, align 2, !dbg !1221
  %conv29 = zext i16 %33 to i32, !dbg !1220
  %call30 = call i32 @acpi_ps_get_opcode_size(i32 noundef %conv29) #5, !dbg !1222
  %34 = load ptr, ptr %walk_state.addr, align 8, !dbg !1223
  %parser_state31 = getelementptr inbounds %struct.acpi_walk_state, ptr %34, i32 0, i32 21, !dbg !1224
  %aml32 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state31, i32 0, i32 1, !dbg !1225
  %35 = load ptr, ptr %aml32, align 8, !dbg !1226
  %idx.ext = zext i32 %call30 to i64, !dbg !1226
  %add.ptr = getelementptr i8, ptr %35, i64 %idx.ext, !dbg !1226
  store ptr %add.ptr, ptr %aml32, align 8, !dbg !1226
  %36 = load ptr, ptr %walk_state.addr, align 8, !dbg !1227
  %op_info33 = getelementptr inbounds %struct.acpi_walk_state, ptr %36, i32 0, i32 41, !dbg !1228
  %37 = load ptr, ptr %op_info33, align 8, !dbg !1228
  %parse_args = getelementptr inbounds %struct.acpi_opcode_info, ptr %37, i32 0, i32 0, !dbg !1229
  %38 = load i32, ptr %parse_args, align 4, !dbg !1229
  %39 = load ptr, ptr %walk_state.addr, align 8, !dbg !1230
  %arg_types34 = getelementptr inbounds %struct.acpi_walk_state, ptr %39, i32 0, i32 17, !dbg !1231
  store i32 %38, ptr %arg_types34, align 8, !dbg !1232
  br label %sw.epilog, !dbg !1233

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !1234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1234

cleanup:                                          ; preds = %sw.epilog, %if.end27
  call void @llvm.lifetime.end.p0(i64 4, ptr %aml_offset) #4, !dbg !1235
  %40 = load i32, ptr %retval, align 4, !dbg !1235
  ret i32 %40, !dbg !1235
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1236 dso_local ptr @acpi_ps_get_opcode_info(i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1239 dso_local ptr @acpi_ps_alloc_op(i16 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1242 dso_local void @acpi_ps_free_op(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1245 dso_local ptr @acpi_ps_get_parent_scope(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1248 dso_local zeroext i8 @acpi_ps_get_argument_count(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ps_complete_op(ptr noundef %walk_state, ptr noundef %op, i32 noundef %status) #0 align 16 !dbg !1251 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %status2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1255, metadata !DIExpression()), !dbg !1259
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1256, metadata !DIExpression()), !dbg !1260
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !1257, metadata !DIExpression()), !dbg !1261
  call void @llvm.lifetime.start.p0(i64 4, ptr %status2) #4, !dbg !1262
  call void @llvm.dbg.declare(metadata ptr %status2, metadata !1258, metadata !DIExpression()), !dbg !1263
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1264
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 21, !dbg !1265
  %scope = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state, i32 0, i32 7, !dbg !1266
  %1 = load ptr, ptr %scope, align 8, !dbg !1266
  %arg_count = getelementptr inbounds %struct.acpi_pscope_state, ptr %1, i32 0, i32 5, !dbg !1267
  %2 = load i32, ptr %arg_count, align 8, !dbg !1268
  %dec = add i32 %2, -1, !dbg !1268
  store i32 %dec, ptr %arg_count, align 8, !dbg !1268
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1269
  %4 = load ptr, ptr %op.addr, align 8, !dbg !1270
  %5 = load ptr, ptr %4, align 8, !dbg !1271
  %call = call i32 @acpi_ps_complete_this_op(ptr noundef %3, ptr noundef %5) #5, !dbg !1272
  store i32 %call, ptr %status2, align 4, !dbg !1273
  %6 = load i32, ptr %status2, align 4, !dbg !1274
  %tobool = icmp ne i32 %6, 0, !dbg !1274
  br i1 %tobool, label %if.then, label %if.end, !dbg !1276

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %status2, align 4, !dbg !1277
  store i32 %7, ptr %retval, align 4, !dbg !1277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1277

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %op.addr, align 8, !dbg !1279
  store ptr null, ptr %8, align 8, !dbg !1280
  %9 = load i32, ptr %status.addr, align 4, !dbg !1281
  switch i32 %9, label %sw.default [
    i32 0, label %sw.epilog
    i32 16392, label %sw.bb
    i32 16391, label %sw.bb1
    i32 16393, label %sw.bb17
    i32 16394, label %sw.bb17
    i32 16387, label %sw.bb37
  ], !dbg !1282

sw.bb:                                            ; preds = %if.end
  %10 = load ptr, ptr %walk_state.addr, align 8, !dbg !1283
  %prev_op = getelementptr inbounds %struct.acpi_walk_state, ptr %10, i32 0, i32 47, !dbg !1285
  store ptr null, ptr %prev_op, align 8, !dbg !1286
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !1287
  %arg_types = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 17, !dbg !1288
  %12 = load i32, ptr %arg_types, align 8, !dbg !1288
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !1289
  %prev_arg_types = getelementptr inbounds %struct.acpi_walk_state, ptr %13, i32 0, i32 22, !dbg !1290
  store i32 %12, ptr %prev_arg_types, align 8, !dbg !1291
  %14 = load i32, ptr %status.addr, align 4, !dbg !1292
  store i32 %14, ptr %retval, align 4, !dbg !1292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1292

sw.bb1:                                           ; preds = %if.end
  %15 = load ptr, ptr %walk_state.addr, align 8, !dbg !1293
  %parser_state2 = getelementptr inbounds %struct.acpi_walk_state, ptr %15, i32 0, i32 21, !dbg !1294
  %16 = load ptr, ptr %op.addr, align 8, !dbg !1295
  %17 = load ptr, ptr %walk_state.addr, align 8, !dbg !1296
  %arg_types3 = getelementptr inbounds %struct.acpi_walk_state, ptr %17, i32 0, i32 17, !dbg !1297
  %18 = load ptr, ptr %walk_state.addr, align 8, !dbg !1298
  %arg_count4 = getelementptr inbounds %struct.acpi_walk_state, ptr %18, i32 0, i32 23, !dbg !1299
  call void @acpi_ps_pop_scope(ptr noundef %parser_state2, ptr noundef %16, ptr noundef %arg_types3, ptr noundef %arg_count4) #5, !dbg !1300
  %19 = load ptr, ptr %op.addr, align 8, !dbg !1301
  %20 = load ptr, ptr %19, align 8, !dbg !1303
  %tobool5 = icmp ne ptr %20, null, !dbg !1303
  br i1 %tobool5, label %if.then6, label %if.end16, !dbg !1304

if.then6:                                         ; preds = %sw.bb1
  %21 = load ptr, ptr %op.addr, align 8, !dbg !1305
  %22 = load ptr, ptr %21, align 8, !dbg !1307
  %23 = load ptr, ptr %walk_state.addr, align 8, !dbg !1308
  %op7 = getelementptr inbounds %struct.acpi_walk_state, ptr %23, i32 0, i32 40, !dbg !1309
  store ptr %22, ptr %op7, align 8, !dbg !1310
  %24 = load ptr, ptr %op.addr, align 8, !dbg !1311
  %25 = load ptr, ptr %24, align 8, !dbg !1312
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %25, i32 0, i32 3, !dbg !1313
  %26 = load i16, ptr %aml_opcode, align 2, !dbg !1313
  %call8 = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %26) #5, !dbg !1314
  %27 = load ptr, ptr %walk_state.addr, align 8, !dbg !1315
  %op_info = getelementptr inbounds %struct.acpi_walk_state, ptr %27, i32 0, i32 41, !dbg !1316
  store ptr %call8, ptr %op_info, align 8, !dbg !1317
  %28 = load ptr, ptr %op.addr, align 8, !dbg !1318
  %29 = load ptr, ptr %28, align 8, !dbg !1319
  %aml_opcode9 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %29, i32 0, i32 3, !dbg !1320
  %30 = load i16, ptr %aml_opcode9, align 2, !dbg !1320
  %31 = load ptr, ptr %walk_state.addr, align 8, !dbg !1321
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %31, i32 0, i32 3, !dbg !1322
  store i16 %30, ptr %opcode, align 2, !dbg !1323
  %32 = load ptr, ptr %walk_state.addr, align 8, !dbg !1324
  %ascending_callback = getelementptr inbounds %struct.acpi_walk_state, ptr %32, i32 0, i32 51, !dbg !1325
  %33 = load ptr, ptr %ascending_callback, align 8, !dbg !1325
  %34 = load ptr, ptr %walk_state.addr, align 8, !dbg !1326
  %call10 = call i32 %33(ptr noundef %34) #5, !dbg !1324
  store i32 %call10, ptr %status.addr, align 4, !dbg !1327
  %35 = load ptr, ptr %walk_state.addr, align 8, !dbg !1328
  %36 = load ptr, ptr %op.addr, align 8, !dbg !1329
  %37 = load ptr, ptr %36, align 8, !dbg !1330
  %38 = load i32, ptr %status.addr, align 4, !dbg !1331
  %call11 = call i32 @acpi_ps_next_parse_state(ptr noundef %35, ptr noundef %37, i32 noundef %38) #5, !dbg !1332
  %39 = load ptr, ptr %walk_state.addr, align 8, !dbg !1333
  %40 = load ptr, ptr %op.addr, align 8, !dbg !1334
  %41 = load ptr, ptr %40, align 8, !dbg !1335
  %call12 = call i32 @acpi_ps_complete_this_op(ptr noundef %39, ptr noundef %41) #5, !dbg !1336
  store i32 %call12, ptr %status2, align 4, !dbg !1337
  %42 = load i32, ptr %status2, align 4, !dbg !1338
  %tobool13 = icmp ne i32 %42, 0, !dbg !1338
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1340

if.then14:                                        ; preds = %if.then6
  %43 = load i32, ptr %status2, align 4, !dbg !1341
  store i32 %43, ptr %retval, align 4, !dbg !1341
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1341

if.end15:                                         ; preds = %if.then6
  br label %if.end16, !dbg !1343

if.end16:                                         ; preds = %if.end15, %sw.bb1
  br label %sw.epilog, !dbg !1344

sw.bb17:                                          ; preds = %if.end, %if.end
  br label %while.cond, !dbg !1345

while.cond:                                       ; preds = %while.body, %sw.bb17
  %44 = load ptr, ptr %op.addr, align 8, !dbg !1346
  %45 = load ptr, ptr %44, align 8, !dbg !1347
  %tobool18 = icmp ne ptr %45, null, !dbg !1348
  br i1 %tobool18, label %lor.rhs, label %lor.end, !dbg !1349

lor.rhs:                                          ; preds = %while.cond
  %46 = load ptr, ptr %op.addr, align 8, !dbg !1350
  %47 = load ptr, ptr %46, align 8, !dbg !1351
  %aml_opcode19 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %47, i32 0, i32 3, !dbg !1352
  %48 = load i16, ptr %aml_opcode19, align 2, !dbg !1352
  %conv = zext i16 %48 to i32, !dbg !1353
  %cmp = icmp ne i32 %conv, 162, !dbg !1354
  br label %lor.end, !dbg !1349

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %49 = phi i1 [ true, %while.cond ], [ %cmp, %lor.rhs ]
  br i1 %49, label %while.body, label %while.end, !dbg !1345

while.body:                                       ; preds = %lor.end
  %50 = load ptr, ptr %walk_state.addr, align 8, !dbg !1355
  %parser_state21 = getelementptr inbounds %struct.acpi_walk_state, ptr %50, i32 0, i32 21, !dbg !1357
  %51 = load ptr, ptr %op.addr, align 8, !dbg !1358
  %52 = load ptr, ptr %walk_state.addr, align 8, !dbg !1359
  %arg_types22 = getelementptr inbounds %struct.acpi_walk_state, ptr %52, i32 0, i32 17, !dbg !1360
  %53 = load ptr, ptr %walk_state.addr, align 8, !dbg !1361
  %arg_count23 = getelementptr inbounds %struct.acpi_walk_state, ptr %53, i32 0, i32 23, !dbg !1362
  call void @acpi_ps_pop_scope(ptr noundef %parser_state21, ptr noundef %51, ptr noundef %arg_types22, ptr noundef %arg_count23) #5, !dbg !1363
  br label %while.cond, !dbg !1345, !llvm.loop !1364

while.end:                                        ; preds = %lor.end
  %54 = load ptr, ptr %op.addr, align 8, !dbg !1366
  %55 = load ptr, ptr %54, align 8, !dbg !1367
  %56 = load ptr, ptr %walk_state.addr, align 8, !dbg !1368
  %op24 = getelementptr inbounds %struct.acpi_walk_state, ptr %56, i32 0, i32 40, !dbg !1369
  store ptr %55, ptr %op24, align 8, !dbg !1370
  %57 = load ptr, ptr %op.addr, align 8, !dbg !1371
  %58 = load ptr, ptr %57, align 8, !dbg !1372
  %aml_opcode25 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %58, i32 0, i32 3, !dbg !1373
  %59 = load i16, ptr %aml_opcode25, align 2, !dbg !1373
  %call26 = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %59) #5, !dbg !1374
  %60 = load ptr, ptr %walk_state.addr, align 8, !dbg !1375
  %op_info27 = getelementptr inbounds %struct.acpi_walk_state, ptr %60, i32 0, i32 41, !dbg !1376
  store ptr %call26, ptr %op_info27, align 8, !dbg !1377
  %61 = load ptr, ptr %op.addr, align 8, !dbg !1378
  %62 = load ptr, ptr %61, align 8, !dbg !1379
  %aml_opcode28 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %62, i32 0, i32 3, !dbg !1380
  %63 = load i16, ptr %aml_opcode28, align 2, !dbg !1380
  %64 = load ptr, ptr %walk_state.addr, align 8, !dbg !1381
  %opcode29 = getelementptr inbounds %struct.acpi_walk_state, ptr %64, i32 0, i32 3, !dbg !1382
  store i16 %63, ptr %opcode29, align 2, !dbg !1383
  %65 = load ptr, ptr %walk_state.addr, align 8, !dbg !1384
  %ascending_callback30 = getelementptr inbounds %struct.acpi_walk_state, ptr %65, i32 0, i32 51, !dbg !1385
  %66 = load ptr, ptr %ascending_callback30, align 8, !dbg !1385
  %67 = load ptr, ptr %walk_state.addr, align 8, !dbg !1386
  %call31 = call i32 %66(ptr noundef %67) #5, !dbg !1384
  store i32 %call31, ptr %status.addr, align 4, !dbg !1387
  %68 = load ptr, ptr %walk_state.addr, align 8, !dbg !1388
  %69 = load ptr, ptr %op.addr, align 8, !dbg !1389
  %70 = load ptr, ptr %69, align 8, !dbg !1390
  %71 = load i32, ptr %status.addr, align 4, !dbg !1391
  %call32 = call i32 @acpi_ps_next_parse_state(ptr noundef %68, ptr noundef %70, i32 noundef %71) #5, !dbg !1392
  %72 = load ptr, ptr %walk_state.addr, align 8, !dbg !1393
  %73 = load ptr, ptr %op.addr, align 8, !dbg !1394
  %74 = load ptr, ptr %73, align 8, !dbg !1395
  %call33 = call i32 @acpi_ps_complete_this_op(ptr noundef %72, ptr noundef %74) #5, !dbg !1396
  store i32 %call33, ptr %status2, align 4, !dbg !1397
  %75 = load i32, ptr %status2, align 4, !dbg !1398
  %tobool34 = icmp ne i32 %75, 0, !dbg !1398
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !1400

if.then35:                                        ; preds = %while.end
  %76 = load i32, ptr %status2, align 4, !dbg !1401
  store i32 %76, ptr %retval, align 4, !dbg !1401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1401

if.end36:                                         ; preds = %while.end
  br label %sw.epilog, !dbg !1403

sw.bb37:                                          ; preds = %if.end
  br label %do.body, !dbg !1404

do.body:                                          ; preds = %do.cond, %sw.bb37
  %77 = load ptr, ptr %op.addr, align 8, !dbg !1405
  %78 = load ptr, ptr %77, align 8, !dbg !1408
  %tobool38 = icmp ne ptr %78, null, !dbg !1408
  br i1 %tobool38, label %if.then39, label %if.end45, !dbg !1409

if.then39:                                        ; preds = %do.body
  %79 = load ptr, ptr %walk_state.addr, align 8, !dbg !1410
  %80 = load ptr, ptr %op.addr, align 8, !dbg !1412
  %81 = load ptr, ptr %80, align 8, !dbg !1413
  %call40 = call i32 @acpi_ps_complete_this_op(ptr noundef %79, ptr noundef %81) #5, !dbg !1414
  store i32 %call40, ptr %status2, align 4, !dbg !1415
  %82 = load i32, ptr %status2, align 4, !dbg !1416
  %tobool41 = icmp ne i32 %82, 0, !dbg !1416
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !1418

if.then42:                                        ; preds = %if.then39
  %83 = load i32, ptr %status2, align 4, !dbg !1419
  store i32 %83, ptr %retval, align 4, !dbg !1419
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1419

if.end43:                                         ; preds = %if.then39
  %84 = load ptr, ptr %walk_state.addr, align 8, !dbg !1421
  %control_state = getelementptr inbounds %struct.acpi_walk_state, ptr %84, i32 0, i32 32, !dbg !1422
  %call44 = call ptr @acpi_ut_pop_generic_state(ptr noundef %control_state) #5, !dbg !1423
  call void @acpi_ut_delete_generic_state(ptr noundef %call44) #5, !dbg !1424
  br label %if.end45, !dbg !1425

if.end45:                                         ; preds = %if.end43, %do.body
  %85 = load ptr, ptr %walk_state.addr, align 8, !dbg !1426
  %parser_state46 = getelementptr inbounds %struct.acpi_walk_state, ptr %85, i32 0, i32 21, !dbg !1427
  %86 = load ptr, ptr %op.addr, align 8, !dbg !1428
  %87 = load ptr, ptr %walk_state.addr, align 8, !dbg !1429
  %arg_types47 = getelementptr inbounds %struct.acpi_walk_state, ptr %87, i32 0, i32 17, !dbg !1430
  %88 = load ptr, ptr %walk_state.addr, align 8, !dbg !1431
  %arg_count48 = getelementptr inbounds %struct.acpi_walk_state, ptr %88, i32 0, i32 23, !dbg !1432
  call void @acpi_ps_pop_scope(ptr noundef %parser_state46, ptr noundef %86, ptr noundef %arg_types47, ptr noundef %arg_count48) #5, !dbg !1433
  br label %do.cond, !dbg !1434

do.cond:                                          ; preds = %if.end45
  %89 = load ptr, ptr %op.addr, align 8, !dbg !1435
  %90 = load ptr, ptr %89, align 8, !dbg !1436
  %tobool49 = icmp ne ptr %90, null, !dbg !1434
  br i1 %tobool49, label %do.body, label %do.end, !dbg !1434, !llvm.loop !1437

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4, !dbg !1439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1439

sw.default:                                       ; preds = %if.end
  br label %do.body50, !dbg !1440

do.body50:                                        ; preds = %do.cond73, %sw.default
  %91 = load ptr, ptr %op.addr, align 8, !dbg !1441
  %92 = load ptr, ptr %91, align 8, !dbg !1444
  %tobool51 = icmp ne ptr %92, null, !dbg !1444
  br i1 %tobool51, label %if.then52, label %if.end69, !dbg !1445

if.then52:                                        ; preds = %do.body50
  %93 = load ptr, ptr %op.addr, align 8, !dbg !1446
  %94 = load ptr, ptr %93, align 8, !dbg !1449
  %aml_opcode53 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %94, i32 0, i32 3, !dbg !1450
  %95 = load i16, ptr %aml_opcode53, align 2, !dbg !1450
  %conv54 = zext i16 %95 to i32, !dbg !1451
  %cmp55 = icmp eq i32 %conv54, 23424, !dbg !1452
  br i1 %cmp55, label %if.then61, label %lor.lhs.false, !dbg !1453

lor.lhs.false:                                    ; preds = %if.then52
  %96 = load ptr, ptr %op.addr, align 8, !dbg !1454
  %97 = load ptr, ptr %96, align 8, !dbg !1455
  %aml_opcode57 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %97, i32 0, i32 3, !dbg !1456
  %98 = load i16, ptr %aml_opcode57, align 2, !dbg !1456
  %conv58 = zext i16 %98 to i32, !dbg !1457
  %cmp59 = icmp eq i32 %conv58, 23432, !dbg !1458
  br i1 %cmp59, label %if.then61, label %if.end64, !dbg !1459

if.then61:                                        ; preds = %lor.lhs.false, %if.then52
  %99 = load ptr, ptr %op.addr, align 8, !dbg !1460
  %100 = load ptr, ptr %99, align 8, !dbg !1462
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %100, i32 0, i32 6, !dbg !1463
  %101 = load ptr, ptr %node, align 8, !dbg !1463
  call void @acpi_ns_delete_children(ptr noundef %101) #5, !dbg !1464
  %102 = load ptr, ptr %op.addr, align 8, !dbg !1465
  %103 = load ptr, ptr %102, align 8, !dbg !1466
  %node62 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %103, i32 0, i32 6, !dbg !1467
  %104 = load ptr, ptr %node62, align 8, !dbg !1467
  call void @acpi_ns_remove_node(ptr noundef %104) #5, !dbg !1468
  %105 = load ptr, ptr %op.addr, align 8, !dbg !1469
  %106 = load ptr, ptr %105, align 8, !dbg !1470
  %node63 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %106, i32 0, i32 6, !dbg !1471
  store ptr null, ptr %node63, align 8, !dbg !1472
  %107 = load ptr, ptr %op.addr, align 8, !dbg !1473
  %108 = load ptr, ptr %107, align 8, !dbg !1474
  call void @acpi_ps_delete_parse_tree(ptr noundef %108) #5, !dbg !1475
  br label %if.end64, !dbg !1476

if.end64:                                         ; preds = %if.then61, %lor.lhs.false
  %109 = load ptr, ptr %walk_state.addr, align 8, !dbg !1477
  %110 = load ptr, ptr %op.addr, align 8, !dbg !1478
  %111 = load ptr, ptr %110, align 8, !dbg !1479
  %call65 = call i32 @acpi_ps_complete_this_op(ptr noundef %109, ptr noundef %111) #5, !dbg !1480
  store i32 %call65, ptr %status2, align 4, !dbg !1481
  %112 = load i32, ptr %status2, align 4, !dbg !1482
  %tobool66 = icmp ne i32 %112, 0, !dbg !1482
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !1484

if.then67:                                        ; preds = %if.end64
  %113 = load i32, ptr %status2, align 4, !dbg !1485
  store i32 %113, ptr %retval, align 4, !dbg !1485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1485

if.end68:                                         ; preds = %if.end64
  br label %if.end69, !dbg !1487

if.end69:                                         ; preds = %if.end68, %do.body50
  %114 = load ptr, ptr %walk_state.addr, align 8, !dbg !1488
  %parser_state70 = getelementptr inbounds %struct.acpi_walk_state, ptr %114, i32 0, i32 21, !dbg !1489
  %115 = load ptr, ptr %op.addr, align 8, !dbg !1490
  %116 = load ptr, ptr %walk_state.addr, align 8, !dbg !1491
  %arg_types71 = getelementptr inbounds %struct.acpi_walk_state, ptr %116, i32 0, i32 17, !dbg !1492
  %117 = load ptr, ptr %walk_state.addr, align 8, !dbg !1493
  %arg_count72 = getelementptr inbounds %struct.acpi_walk_state, ptr %117, i32 0, i32 23, !dbg !1494
  call void @acpi_ps_pop_scope(ptr noundef %parser_state70, ptr noundef %115, ptr noundef %arg_types71, ptr noundef %arg_count72) #5, !dbg !1495
  br label %do.cond73, !dbg !1496

do.cond73:                                        ; preds = %if.end69
  %118 = load ptr, ptr %op.addr, align 8, !dbg !1497
  %119 = load ptr, ptr %118, align 8, !dbg !1498
  %tobool74 = icmp ne ptr %119, null, !dbg !1496
  br i1 %tobool74, label %do.body50, label %do.end75, !dbg !1496, !llvm.loop !1499

do.end75:                                         ; preds = %do.cond73
  %120 = load ptr, ptr %walk_state.addr, align 8, !dbg !1501
  %prev_op76 = getelementptr inbounds %struct.acpi_walk_state, ptr %120, i32 0, i32 47, !dbg !1502
  store ptr null, ptr %prev_op76, align 8, !dbg !1503
  %121 = load ptr, ptr %walk_state.addr, align 8, !dbg !1504
  %arg_types77 = getelementptr inbounds %struct.acpi_walk_state, ptr %121, i32 0, i32 17, !dbg !1505
  %122 = load i32, ptr %arg_types77, align 8, !dbg !1505
  %123 = load ptr, ptr %walk_state.addr, align 8, !dbg !1506
  %prev_arg_types78 = getelementptr inbounds %struct.acpi_walk_state, ptr %123, i32 0, i32 22, !dbg !1507
  store i32 %122, ptr %prev_arg_types78, align 8, !dbg !1508
  %124 = load ptr, ptr %walk_state.addr, align 8, !dbg !1509
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, ptr %124, i32 0, i32 20, !dbg !1511
  %125 = load i32, ptr %parse_flags, align 4, !dbg !1511
  %and = and i32 %125, 1024, !dbg !1512
  %tobool79 = icmp ne i32 %and, 0, !dbg !1512
  br i1 %tobool79, label %if.then80, label %if.end81, !dbg !1513

if.then80:                                        ; preds = %do.end75
  call void (ptr, ...) @acpi_info(ptr noundef @.str.1) #5, !dbg !1514
  store i32 0, ptr %retval, align 4, !dbg !1516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1516

if.end81:                                         ; preds = %do.end75
  %126 = load i32, ptr %status.addr, align 4, !dbg !1517
  store i32 %126, ptr %retval, align 4, !dbg !1517
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1517

sw.epilog:                                        ; preds = %if.end36, %if.end16, %if.end
  %127 = load ptr, ptr %walk_state.addr, align 8, !dbg !1518
  %parser_state82 = getelementptr inbounds %struct.acpi_walk_state, ptr %127, i32 0, i32 21, !dbg !1520
  %call83 = call zeroext i8 @acpi_ps_has_completed_scope(ptr noundef %parser_state82) #5, !dbg !1521
  %tobool84 = icmp ne i8 %call83, 0, !dbg !1521
  br i1 %tobool84, label %if.then85, label %if.else, !dbg !1522

if.then85:                                        ; preds = %sw.epilog
  %128 = load ptr, ptr %walk_state.addr, align 8, !dbg !1523
  %parser_state86 = getelementptr inbounds %struct.acpi_walk_state, ptr %128, i32 0, i32 21, !dbg !1525
  %129 = load ptr, ptr %op.addr, align 8, !dbg !1526
  %130 = load ptr, ptr %walk_state.addr, align 8, !dbg !1527
  %arg_types87 = getelementptr inbounds %struct.acpi_walk_state, ptr %130, i32 0, i32 17, !dbg !1528
  %131 = load ptr, ptr %walk_state.addr, align 8, !dbg !1529
  %arg_count88 = getelementptr inbounds %struct.acpi_walk_state, ptr %131, i32 0, i32 23, !dbg !1530
  call void @acpi_ps_pop_scope(ptr noundef %parser_state86, ptr noundef %129, ptr noundef %arg_types87, ptr noundef %arg_count88) #5, !dbg !1531
  br label %if.end89, !dbg !1532

if.else:                                          ; preds = %sw.epilog
  %132 = load ptr, ptr %op.addr, align 8, !dbg !1533
  store ptr null, ptr %132, align 8, !dbg !1535
  br label %if.end89

if.end89:                                         ; preds = %if.else, %if.then85
  store i32 0, ptr %retval, align 4, !dbg !1536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1536

cleanup:                                          ; preds = %if.end89, %if.end81, %if.then80, %if.then67, %do.end, %if.then42, %if.then35, %if.then14, %sw.bb, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status2) #4, !dbg !1537
  %133 = load i32, ptr %retval, align 4, !dbg !1537
  ret i32 %133, !dbg !1537
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1538 dso_local i32 @acpi_ps_complete_this_op(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1541 dso_local void @acpi_ps_pop_scope(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1545 dso_local void @acpi_ut_delete_generic_state(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1549 dso_local ptr @acpi_ut_pop_generic_state(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1553 dso_local void @acpi_ns_delete_children(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1557 dso_local void @acpi_ns_remove_node(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1558 dso_local void @acpi_ps_delete_parse_tree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1559 dso_local void @acpi_info(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1562 dso_local zeroext i8 @acpi_ps_has_completed_scope(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ps_complete_final_op(ptr noundef %walk_state, ptr noundef %op, i32 noundef %status) #0 align 16 !dbg !1565 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %status2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1567, metadata !DIExpression()), !dbg !1571
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1568, metadata !DIExpression()), !dbg !1572
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !1569, metadata !DIExpression()), !dbg !1573
  call void @llvm.lifetime.start.p0(i64 4, ptr %status2) #4, !dbg !1574
  call void @llvm.dbg.declare(metadata ptr %status2, metadata !1570, metadata !DIExpression()), !dbg !1575
  br label %do.body, !dbg !1576

do.body:                                          ; preds = %do.cond38, %entry
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1577
  %tobool = icmp ne ptr %0, null, !dbg !1577
  br i1 %tobool, label %if.then, label %if.end34, !dbg !1580

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !1581
  %ascending_callback = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 51, !dbg !1584
  %2 = load ptr, ptr %ascending_callback, align 8, !dbg !1584
  %cmp = icmp ne ptr %2, null, !dbg !1585
  br i1 %cmp, label %if.then1, label %if.end29, !dbg !1586

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %op.addr, align 8, !dbg !1587
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !1589
  %op2 = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 40, !dbg !1590
  store ptr %3, ptr %op2, align 8, !dbg !1591
  %5 = load ptr, ptr %op.addr, align 8, !dbg !1592
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %5, i32 0, i32 3, !dbg !1593
  %6 = load i16, ptr %aml_opcode, align 2, !dbg !1593
  %call = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %6) #5, !dbg !1594
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !1595
  %op_info = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 41, !dbg !1596
  store ptr %call, ptr %op_info, align 8, !dbg !1597
  %8 = load ptr, ptr %op.addr, align 8, !dbg !1598
  %aml_opcode3 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %8, i32 0, i32 3, !dbg !1599
  %9 = load i16, ptr %aml_opcode3, align 2, !dbg !1599
  %10 = load ptr, ptr %walk_state.addr, align 8, !dbg !1600
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %10, i32 0, i32 3, !dbg !1601
  store i16 %9, ptr %opcode, align 2, !dbg !1602
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !1603
  %ascending_callback4 = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 51, !dbg !1604
  %12 = load ptr, ptr %ascending_callback4, align 8, !dbg !1604
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !1605
  %call5 = call i32 %12(ptr noundef %13) #5, !dbg !1603
  store i32 %call5, ptr %status.addr, align 4, !dbg !1606
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !1607
  %15 = load ptr, ptr %op.addr, align 8, !dbg !1608
  %16 = load i32, ptr %status.addr, align 4, !dbg !1609
  %call6 = call i32 @acpi_ps_next_parse_state(ptr noundef %14, ptr noundef %15, i32 noundef %16) #5, !dbg !1610
  store i32 %call6, ptr %status.addr, align 4, !dbg !1611
  %17 = load i32, ptr %status.addr, align 4, !dbg !1612
  %cmp7 = icmp eq i32 %17, 16386, !dbg !1614
  br i1 %cmp7, label %if.then8, label %if.end12, !dbg !1615

if.then8:                                         ; preds = %if.then1
  %18 = load ptr, ptr %walk_state.addr, align 8, !dbg !1616
  %call9 = call i32 @acpi_ps_complete_op(ptr noundef %18, ptr noundef %op.addr, i32 noundef 0) #5, !dbg !1618
  store i32 %call9, ptr %status.addr, align 4, !dbg !1619
  %19 = load i32, ptr %status.addr, align 4, !dbg !1620
  %tobool10 = icmp ne i32 %19, 0, !dbg !1620
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !1622

if.then11:                                        ; preds = %if.then8
  %20 = load i32, ptr %status.addr, align 4, !dbg !1623
  store i32 %20, ptr %retval, align 4, !dbg !1623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1623

if.end:                                           ; preds = %if.then8
  br label %if.end12, !dbg !1625

if.end12:                                         ; preds = %if.end, %if.then1
  %21 = load i32, ptr %status.addr, align 4, !dbg !1626
  %cmp13 = icmp eq i32 %21, 16387, !dbg !1628
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !1629

if.then14:                                        ; preds = %if.end12
  store i32 0, ptr %status.addr, align 4, !dbg !1630
  br label %do.body15, !dbg !1632

do.body15:                                        ; preds = %do.cond, %if.then14
  %22 = load ptr, ptr %op.addr, align 8, !dbg !1633
  %tobool16 = icmp ne ptr %22, null, !dbg !1633
  br i1 %tobool16, label %if.then17, label %if.end22, !dbg !1636

if.then17:                                        ; preds = %do.body15
  %23 = load ptr, ptr %walk_state.addr, align 8, !dbg !1637
  %24 = load ptr, ptr %op.addr, align 8, !dbg !1639
  %call18 = call i32 @acpi_ps_complete_this_op(ptr noundef %23, ptr noundef %24) #5, !dbg !1640
  store i32 %call18, ptr %status2, align 4, !dbg !1641
  %25 = load i32, ptr %status2, align 4, !dbg !1642
  %tobool19 = icmp ne i32 %25, 0, !dbg !1642
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1644

if.then20:                                        ; preds = %if.then17
  %26 = load i32, ptr %status2, align 4, !dbg !1645
  store i32 %26, ptr %retval, align 4, !dbg !1645
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1645

if.end21:                                         ; preds = %if.then17
  br label %if.end22, !dbg !1647

if.end22:                                         ; preds = %if.end21, %do.body15
  %27 = load ptr, ptr %walk_state.addr, align 8, !dbg !1648
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, ptr %27, i32 0, i32 21, !dbg !1649
  %28 = load ptr, ptr %walk_state.addr, align 8, !dbg !1650
  %arg_types = getelementptr inbounds %struct.acpi_walk_state, ptr %28, i32 0, i32 17, !dbg !1651
  %29 = load ptr, ptr %walk_state.addr, align 8, !dbg !1652
  %arg_count = getelementptr inbounds %struct.acpi_walk_state, ptr %29, i32 0, i32 23, !dbg !1653
  call void @acpi_ps_pop_scope(ptr noundef %parser_state, ptr noundef %op.addr, ptr noundef %arg_types, ptr noundef %arg_count) #5, !dbg !1654
  br label %do.cond, !dbg !1655

do.cond:                                          ; preds = %if.end22
  %30 = load ptr, ptr %op.addr, align 8, !dbg !1656
  %tobool23 = icmp ne ptr %30, null, !dbg !1655
  br i1 %tobool23, label %do.body15, label %do.end, !dbg !1655, !llvm.loop !1657

do.end:                                           ; preds = %do.cond
  %31 = load i32, ptr %status.addr, align 4, !dbg !1659
  store i32 %31, ptr %retval, align 4, !dbg !1659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1659

if.else:                                          ; preds = %if.end12
  %32 = load i32, ptr %status.addr, align 4, !dbg !1660
  %tobool24 = icmp ne i32 %32, 0, !dbg !1660
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !1662

if.then25:                                        ; preds = %if.else
  %33 = load ptr, ptr %walk_state.addr, align 8, !dbg !1663
  %34 = load ptr, ptr %op.addr, align 8, !dbg !1665
  %call26 = call i32 @acpi_ps_complete_this_op(ptr noundef %33, ptr noundef %34) #5, !dbg !1666
  %35 = load i32, ptr %status.addr, align 4, !dbg !1667
  store i32 %35, ptr %retval, align 4, !dbg !1667
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1667

if.end27:                                         ; preds = %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27
  br label %if.end29, !dbg !1668

if.end29:                                         ; preds = %if.end28, %if.then
  %36 = load ptr, ptr %walk_state.addr, align 8, !dbg !1669
  %37 = load ptr, ptr %op.addr, align 8, !dbg !1670
  %call30 = call i32 @acpi_ps_complete_this_op(ptr noundef %36, ptr noundef %37) #5, !dbg !1671
  store i32 %call30, ptr %status2, align 4, !dbg !1672
  %38 = load i32, ptr %status2, align 4, !dbg !1673
  %tobool31 = icmp ne i32 %38, 0, !dbg !1673
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !1675

if.then32:                                        ; preds = %if.end29
  %39 = load i32, ptr %status2, align 4, !dbg !1676
  store i32 %39, ptr %retval, align 4, !dbg !1676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1676

if.end33:                                         ; preds = %if.end29
  br label %if.end34, !dbg !1678

if.end34:                                         ; preds = %if.end33, %do.body
  %40 = load ptr, ptr %walk_state.addr, align 8, !dbg !1679
  %parser_state35 = getelementptr inbounds %struct.acpi_walk_state, ptr %40, i32 0, i32 21, !dbg !1680
  %41 = load ptr, ptr %walk_state.addr, align 8, !dbg !1681
  %arg_types36 = getelementptr inbounds %struct.acpi_walk_state, ptr %41, i32 0, i32 17, !dbg !1682
  %42 = load ptr, ptr %walk_state.addr, align 8, !dbg !1683
  %arg_count37 = getelementptr inbounds %struct.acpi_walk_state, ptr %42, i32 0, i32 23, !dbg !1684
  call void @acpi_ps_pop_scope(ptr noundef %parser_state35, ptr noundef %op.addr, ptr noundef %arg_types36, ptr noundef %arg_count37) #5, !dbg !1685
  br label %do.cond38, !dbg !1686

do.cond38:                                        ; preds = %if.end34
  %43 = load ptr, ptr %op.addr, align 8, !dbg !1687
  %tobool39 = icmp ne ptr %43, null, !dbg !1686
  br i1 %tobool39, label %do.body, label %do.end40, !dbg !1686, !llvm.loop !1688

do.end40:                                         ; preds = %do.cond38
  %44 = load i32, ptr %status.addr, align 4, !dbg !1690
  store i32 %44, ptr %retval, align 4, !dbg !1690
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1690

cleanup:                                          ; preds = %do.end40, %if.then32, %if.then25, %do.end, %if.then20, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %status2) #4, !dbg !1691
  %45 = load i32, ptr %retval, align 4, !dbg !1691
  ret i32 %45, !dbg !1691
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1692 dso_local zeroext i16 @acpi_ps_peek_opcode(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1695 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1698 dso_local i32 @acpi_ps_get_opcode_size(i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !44, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.psobject.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22psobject\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/psobject.ll drivers/acpi/acpica/psobject.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !27, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/psobject.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af05811144c7ba272bd6c2ffdb0ec37b")
!4 = !{!5, !7, !12, !15, !16, !20, !24}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !14)
!14 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !6, line: 127, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !19)
!19 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !23)
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !25, line: 42, baseType: !26)
!25 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!26 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!27 = !{!28, !34, !0, !39}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !3, line: 220, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 216, elements: !32)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !{!33}
!33 = !DISubrange(count: 27)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !3, line: 600, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 328, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 41)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !3, line: 74, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 440, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 55)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 72, elements: !46)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!46 = !{!47}
!47 = !DISubrange(count: 9)
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 8, !"cf-protection-branch", i32 1}
!52 = !{i32 4, !"function_return_thunk_extern", i32 1}
!53 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!54 = !{i32 1, !"Code Model", i32 2}
!55 = !{i32 1, !"override-stack-alignment", i32 8}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = distinct !DISubprogram(name: "acpi_ps_build_named_op", scope: !3, file: !3, line: 154, type: !58, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !816)
!58 = !DISubroutineType(types: !59)
!59 = !{!5, !60, !20, !96, !813}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !62, line: 37, size: 9024, elements: !63)
!62 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !765, !766, !767, !768, !769, !773, !775, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !800, !801, !802, !803, !804, !805, !806, !807, !808, !814}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !61, file: !62, line: 38, baseType: !60, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !61, file: !62, line: 39, baseType: !21, size: 8, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !61, file: !62, line: 40, baseType: !21, size: 8, offset: 72)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !61, file: !62, line: 41, baseType: !12, size: 16, offset: 80)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !61, file: !62, line: 42, baseType: !21, size: 8, offset: 96)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !61, file: !62, line: 43, baseType: !21, size: 8, offset: 104)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !61, file: !62, line: 44, baseType: !21, size: 8, offset: 112)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !61, file: !62, line: 45, baseType: !72, size: 16, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !12)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !61, file: !62, line: 46, baseType: !21, size: 8, offset: 144)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !61, file: !62, line: 47, baseType: !21, size: 8, offset: 152)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !61, file: !62, line: 48, baseType: !21, size: 8, offset: 160)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !61, file: !62, line: 49, baseType: !21, size: 8, offset: 168)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !61, file: !62, line: 50, baseType: !21, size: 8, offset: 176)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !61, file: !62, line: 51, baseType: !21, size: 8, offset: 184)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !61, file: !62, line: 52, baseType: !21, size: 8, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !61, file: !62, line: 53, baseType: !21, size: 8, offset: 200)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !61, file: !62, line: 54, baseType: !20, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !61, file: !62, line: 55, baseType: !7, size: 32, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !61, file: !62, line: 56, baseType: !7, size: 32, offset: 352)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !61, file: !62, line: 57, baseType: !7, size: 32, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !61, file: !62, line: 58, baseType: !7, size: 32, offset: 416)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !61, file: !62, line: 60, baseType: !87, size: 640, offset: 448)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !88, line: 909, size: 640, elements: !89)
!88 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!89 = !{!90, !91, !92, !93, !94, !95, !662, !663, !763, !764}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !87, file: !88, line: 910, baseType: !20, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !87, file: !88, line: 911, baseType: !20, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !87, file: !88, line: 912, baseType: !20, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !87, file: !88, line: 913, baseType: !20, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !87, file: !88, line: 914, baseType: !20, size: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !87, file: !88, line: 915, baseType: !96, size: 64, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !88, line: 891, size: 1600, elements: !98)
!98 = !{!99, !605, !621}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !97, file: !88, line: 892, baseType: !100, size: 448)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !88, line: 844, size: 448, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !595, !604}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !100, file: !88, line: 845, baseType: !96, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !100, file: !88, line: 845, baseType: !21, size: 8, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !88, line: 845, baseType: !21, size: 8, offset: 72)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !100, file: !88, line: 845, baseType: !12, size: 16, offset: 80)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !100, file: !88, line: 845, baseType: !20, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !88, line: 845, baseType: !96, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !100, file: !88, line: 845, baseType: !109, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !88, line: 133, size: 384, elements: !111)
!111 = !{!112, !579, !580, !581, !582, !591, !592, !593, !594}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !110, file: !88, line: 134, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !115, line: 369, size: 576, elements: !116)
!115 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!116 = !{!117, !125, !138, !149, !162, !176, !185, !211, !240, !256, !269, !348, !360, !374, !384, !402, !424, !443, !462, !481, !498, !525, !542, !555, !569, !578}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !114, file: !115, line: 370, baseType: !118, size: 128)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !115, line: 73, size: 128, elements: !119)
!119 = !{!120, !121, !122, !123, !124}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !118, file: !115, line: 74, baseType: !113, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !118, file: !115, line: 74, baseType: !21, size: 8, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !115, line: 74, baseType: !21, size: 8, offset: 72)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !118, file: !115, line: 74, baseType: !12, size: 16, offset: 80)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !115, line: 74, baseType: !21, size: 8, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !114, file: !115, line: 371, baseType: !126, size: 192)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !115, line: 76, size: 192, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !137}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !126, file: !115, line: 77, baseType: !113, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !126, file: !115, line: 77, baseType: !21, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !115, line: 77, baseType: !21, size: 8, offset: 72)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !126, file: !115, line: 77, baseType: !12, size: 16, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !115, line: 77, baseType: !21, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !126, file: !115, line: 77, baseType: !134, size: 24, offset: 104)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 24, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 3)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !126, file: !115, line: 78, baseType: !17, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !114, file: !115, line: 372, baseType: !139, size: 256)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !115, line: 93, size: 256, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !148}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !139, file: !115, line: 94, baseType: !113, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !115, line: 94, baseType: !21, size: 8, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !115, line: 94, baseType: !21, size: 8, offset: 72)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !139, file: !115, line: 94, baseType: !12, size: 16, offset: 80)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !115, line: 94, baseType: !21, size: 8, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !139, file: !115, line: 94, baseType: !147, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !139, file: !115, line: 94, baseType: !7, size: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !114, file: !115, line: 373, baseType: !150, size: 384)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !115, line: 97, size: 384, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !150, file: !115, line: 98, baseType: !113, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !150, file: !115, line: 98, baseType: !21, size: 8, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !150, file: !115, line: 98, baseType: !21, size: 8, offset: 72)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !150, file: !115, line: 98, baseType: !12, size: 16, offset: 80)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !150, file: !115, line: 98, baseType: !21, size: 8, offset: 96)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !150, file: !115, line: 98, baseType: !20, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !150, file: !115, line: 98, baseType: !7, size: 32, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !150, file: !115, line: 99, baseType: !7, size: 32, offset: 224)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !150, file: !115, line: 100, baseType: !20, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !150, file: !115, line: 101, baseType: !109, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !114, file: !115, line: 374, baseType: !163, size: 384)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !115, line: 104, size: 384, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !173, !174, !175}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !163, file: !115, line: 105, baseType: !113, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !163, file: !115, line: 105, baseType: !21, size: 8, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !163, file: !115, line: 105, baseType: !21, size: 8, offset: 72)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !163, file: !115, line: 105, baseType: !12, size: 16, offset: 80)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !115, line: 105, baseType: !21, size: 8, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !163, file: !115, line: 105, baseType: !109, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !163, file: !115, line: 106, baseType: !172, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !163, file: !115, line: 107, baseType: !20, size: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !163, file: !115, line: 108, baseType: !7, size: 32, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !163, file: !115, line: 109, baseType: !7, size: 32, offset: 352)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !114, file: !115, line: 375, baseType: !177, size: 192)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !115, line: 118, size: 192, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !177, file: !115, line: 119, baseType: !113, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !177, file: !115, line: 119, baseType: !21, size: 8, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !177, file: !115, line: 119, baseType: !21, size: 8, offset: 72)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !177, file: !115, line: 119, baseType: !12, size: 16, offset: 80)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !177, file: !115, line: 119, baseType: !21, size: 8, offset: 96)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !177, file: !115, line: 119, baseType: !15, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !114, file: !115, line: 376, baseType: !186, size: 448)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !115, line: 144, size: 448, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !208, !209, !210}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !186, file: !115, line: 145, baseType: !113, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !186, file: !115, line: 145, baseType: !21, size: 8, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !186, file: !115, line: 145, baseType: !21, size: 8, offset: 72)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !186, file: !115, line: 145, baseType: !12, size: 16, offset: 80)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !115, line: 145, baseType: !21, size: 8, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !186, file: !115, line: 145, baseType: !21, size: 8, offset: 104)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !186, file: !115, line: 146, baseType: !21, size: 8, offset: 112)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !186, file: !115, line: 147, baseType: !21, size: 8, offset: 120)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !186, file: !115, line: 148, baseType: !113, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !186, file: !115, line: 149, baseType: !113, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !186, file: !115, line: 150, baseType: !20, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !186, file: !115, line: 154, baseType: !200, size: 64, offset: 320)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !186, file: !115, line: 151, size: 64, elements: !201)
!201 = !{!202, !207}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !200, file: !115, line: 152, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !88, line: 248, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!5, !60}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !200, file: !115, line: 153, baseType: !113, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !186, file: !115, line: 156, baseType: !7, size: 32, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !186, file: !115, line: 157, baseType: !72, size: 16, offset: 416)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !186, file: !115, line: 158, baseType: !21, size: 8, offset: 432)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !114, file: !115, line: 377, baseType: !212, size: 576)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !115, line: 122, size: 576, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !236, !237, !238, !239}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !212, file: !115, line: 123, baseType: !113, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !212, file: !115, line: 123, baseType: !21, size: 8, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !212, file: !115, line: 123, baseType: !21, size: 8, offset: 72)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !212, file: !115, line: 123, baseType: !12, size: 16, offset: 80)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !212, file: !115, line: 123, baseType: !21, size: 8, offset: 96)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !212, file: !115, line: 123, baseType: !21, size: 8, offset: 104)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !212, file: !115, line: 124, baseType: !12, size: 16, offset: 112)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !212, file: !115, line: 125, baseType: !15, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !212, file: !115, line: 126, baseType: !17, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !212, file: !115, line: 127, baseType: !224, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !88, line: 634, size: 320, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !235}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !88, line: 635, baseType: !15, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !225, file: !88, line: 635, baseType: !21, size: 8, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !225, file: !88, line: 635, baseType: !21, size: 8, offset: 72)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !225, file: !88, line: 635, baseType: !12, size: 16, offset: 80)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !225, file: !88, line: 635, baseType: !12, size: 16, offset: 96)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !225, file: !88, line: 636, baseType: !21, size: 8, offset: 112)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !225, file: !88, line: 637, baseType: !60, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !225, file: !88, line: 638, baseType: !113, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !225, file: !88, line: 639, baseType: !17, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !212, file: !115, line: 128, baseType: !113, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !212, file: !115, line: 129, baseType: !113, size: 64, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !212, file: !115, line: 130, baseType: !109, size: 64, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !212, file: !115, line: 131, baseType: !21, size: 8, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !114, file: !115, line: 378, baseType: !241, size: 512)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !115, line: 134, size: 512, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !254, !255}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !241, file: !115, line: 135, baseType: !113, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !241, file: !115, line: 135, baseType: !21, size: 8, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !241, file: !115, line: 135, baseType: !21, size: 8, offset: 72)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !241, file: !115, line: 135, baseType: !12, size: 16, offset: 80)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !115, line: 135, baseType: !21, size: 8, offset: 96)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !241, file: !115, line: 135, baseType: !21, size: 8, offset: 104)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !241, file: !115, line: 136, baseType: !109, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !241, file: !115, line: 137, baseType: !113, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !115, line: 138, baseType: !113, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !241, file: !115, line: 139, baseType: !253, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !17)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !241, file: !115, line: 140, baseType: !7, size: 32, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !241, file: !115, line: 141, baseType: !15, size: 64, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !114, file: !115, line: 379, baseType: !257, size: 320)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !115, line: 185, size: 320, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !268}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !257, file: !115, line: 186, baseType: !113, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !257, file: !115, line: 186, baseType: !21, size: 8, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !257, file: !115, line: 186, baseType: !21, size: 8, offset: 72)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !257, file: !115, line: 186, baseType: !12, size: 16, offset: 80)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !115, line: 186, baseType: !21, size: 8, offset: 96)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !257, file: !115, line: 186, baseType: !265, size: 128, offset: 128)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 128, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 2)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !257, file: !115, line: 186, baseType: !113, size: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !114, file: !115, line: 380, baseType: !270, size: 384)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !115, line: 188, size: 384, elements: !271)
!271 = !{!272, !273, !274, !275, !276, !277, !278, !279}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !270, file: !115, line: 189, baseType: !113, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !270, file: !115, line: 189, baseType: !21, size: 8, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !270, file: !115, line: 189, baseType: !21, size: 8, offset: 72)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !270, file: !115, line: 189, baseType: !12, size: 16, offset: 80)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !270, file: !115, line: 189, baseType: !21, size: 8, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !270, file: !115, line: 190, baseType: !265, size: 128, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !270, file: !115, line: 190, baseType: !113, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !270, file: !115, line: 190, baseType: !280, size: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !88, line: 480, size: 576, elements: !282)
!282 = !{!283, !284, !285, !286, !294, !309, !342, !343, !344, !345, !346, !347}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !281, file: !88, line: 481, baseType: !109, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !281, file: !88, line: 482, baseType: !280, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !88, line: 483, baseType: !280, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !281, file: !88, line: 484, baseType: !287, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !88, line: 497, size: 256, elements: !289)
!289 = !{!290, !291, !292, !293}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !288, file: !88, line: 498, baseType: !287, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !88, line: 499, baseType: !287, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !288, file: !88, line: 500, baseType: !280, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !288, file: !88, line: 501, baseType: !7, size: 32, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !281, file: !88, line: 485, baseType: !295, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !88, line: 466, size: 320, elements: !297)
!297 = !{!298, !303, !304, !305, !306, !307, !308}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !296, file: !88, line: 467, baseType: !299, size: 128)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !88, line: 459, size: 128, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !299, file: !88, line: 460, baseType: !21, size: 8)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !299, file: !88, line: 461, baseType: !17, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !296, file: !88, line: 468, baseType: !299, size: 128, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !296, file: !88, line: 469, baseType: !12, size: 16, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !296, file: !88, line: 470, baseType: !21, size: 8, offset: 272)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !296, file: !88, line: 471, baseType: !21, size: 8, offset: 280)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !296, file: !88, line: 472, baseType: !21, size: 8, offset: 288)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !296, file: !88, line: 473, baseType: !21, size: 8, offset: 296)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !281, file: !88, line: 486, baseType: !310, size: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !88, line: 448, size: 192, elements: !312)
!312 = !{!313, !337, !338, !339, !340, !341}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !311, file: !88, line: 449, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !88, line: 438, size: 64, elements: !315)
!315 = !{!316, !317, !331}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !314, file: !88, line: 439, baseType: !109, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !314, file: !88, line: 440, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !88, line: 419, size: 256, elements: !320)
!320 = !{!321, !327, !328, !329, !330}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !319, file: !88, line: 420, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!7, !326, !7, !15}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !15)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !319, file: !88, line: 421, baseType: !15, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !319, file: !88, line: 422, baseType: !109, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !319, file: !88, line: 423, baseType: !21, size: 8, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !319, file: !88, line: 424, baseType: !21, size: 8, offset: 200)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !314, file: !88, line: 441, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !88, line: 429, size: 128, elements: !334)
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !333, file: !88, line: 430, baseType: !109, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !88, line: 431, baseType: !332, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !311, file: !88, line: 450, baseType: !295, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !88, line: 451, baseType: !21, size: 8, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !311, file: !88, line: 452, baseType: !21, size: 8, offset: 136)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !311, file: !88, line: 453, baseType: !21, size: 8, offset: 144)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !311, file: !88, line: 454, baseType: !21, size: 8, offset: 152)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !281, file: !88, line: 487, baseType: !17, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !281, file: !88, line: 488, baseType: !7, size: 32, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !281, file: !88, line: 489, baseType: !12, size: 16, offset: 480)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !281, file: !88, line: 490, baseType: !12, size: 16, offset: 496)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !281, file: !88, line: 491, baseType: !21, size: 8, offset: 512)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !281, file: !88, line: 492, baseType: !21, size: 8, offset: 520)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !114, file: !115, line: 381, baseType: !349, size: 384)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !115, line: 193, size: 384, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356, !357, !358, !359}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !349, file: !115, line: 194, baseType: !113, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !349, file: !115, line: 194, baseType: !21, size: 8, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !349, file: !115, line: 194, baseType: !21, size: 8, offset: 72)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !349, file: !115, line: 194, baseType: !12, size: 16, offset: 80)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !349, file: !115, line: 194, baseType: !21, size: 8, offset: 96)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !349, file: !115, line: 194, baseType: !265, size: 128, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !349, file: !115, line: 194, baseType: !113, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !349, file: !115, line: 194, baseType: !7, size: 32, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !349, file: !115, line: 195, baseType: !7, size: 32, offset: 352)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !114, file: !115, line: 382, baseType: !361, size: 384)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !115, line: 198, size: 384, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370, !371, !372}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !361, file: !115, line: 199, baseType: !113, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !361, file: !115, line: 199, baseType: !21, size: 8, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !361, file: !115, line: 199, baseType: !21, size: 8, offset: 72)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !361, file: !115, line: 199, baseType: !12, size: 16, offset: 80)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !115, line: 199, baseType: !21, size: 8, offset: 96)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !361, file: !115, line: 201, baseType: !21, size: 8, offset: 104)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !361, file: !115, line: 202, baseType: !21, size: 8, offset: 112)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !361, file: !115, line: 203, baseType: !265, size: 128, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !361, file: !115, line: 203, baseType: !113, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !361, file: !115, line: 203, baseType: !373, size: 64, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !17)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !114, file: !115, line: 383, baseType: !375, size: 320)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !115, line: 206, size: 320, elements: !376)
!376 = !{!377, !378, !379, !380, !381, !382, !383}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !375, file: !115, line: 207, baseType: !113, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !375, file: !115, line: 207, baseType: !21, size: 8, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !375, file: !115, line: 207, baseType: !21, size: 8, offset: 72)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !375, file: !115, line: 207, baseType: !12, size: 16, offset: 80)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !375, file: !115, line: 207, baseType: !21, size: 8, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !375, file: !115, line: 207, baseType: !265, size: 128, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !375, file: !115, line: 207, baseType: !113, size: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !114, file: !115, line: 384, baseType: !385, size: 384)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !115, line: 234, size: 384, elements: !386)
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !385, file: !115, line: 235, baseType: !113, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !385, file: !115, line: 235, baseType: !21, size: 8, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !385, file: !115, line: 235, baseType: !21, size: 8, offset: 72)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !385, file: !115, line: 235, baseType: !12, size: 16, offset: 80)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !385, file: !115, line: 235, baseType: !21, size: 8, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !385, file: !115, line: 235, baseType: !21, size: 8, offset: 104)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !385, file: !115, line: 235, baseType: !21, size: 8, offset: 112)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !385, file: !115, line: 235, baseType: !21, size: 8, offset: 120)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !385, file: !115, line: 235, baseType: !109, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !385, file: !115, line: 235, baseType: !7, size: 32, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !385, file: !115, line: 235, baseType: !7, size: 32, offset: 224)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !385, file: !115, line: 235, baseType: !7, size: 32, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !385, file: !115, line: 235, baseType: !21, size: 8, offset: 288)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !385, file: !115, line: 235, baseType: !21, size: 8, offset: 296)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !385, file: !115, line: 235, baseType: !113, size: 64, offset: 320)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !114, file: !115, line: 385, baseType: !403, size: 576)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !115, line: 238, size: 576, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !403, file: !115, line: 239, baseType: !113, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !403, file: !115, line: 239, baseType: !21, size: 8, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !403, file: !115, line: 239, baseType: !21, size: 8, offset: 72)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !403, file: !115, line: 239, baseType: !12, size: 16, offset: 80)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !403, file: !115, line: 239, baseType: !21, size: 8, offset: 96)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !403, file: !115, line: 239, baseType: !21, size: 8, offset: 104)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !403, file: !115, line: 239, baseType: !21, size: 8, offset: 112)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !403, file: !115, line: 239, baseType: !21, size: 8, offset: 120)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !403, file: !115, line: 239, baseType: !109, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !403, file: !115, line: 239, baseType: !7, size: 32, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !403, file: !115, line: 239, baseType: !7, size: 32, offset: 224)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !403, file: !115, line: 239, baseType: !7, size: 32, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !403, file: !115, line: 239, baseType: !21, size: 8, offset: 288)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !403, file: !115, line: 239, baseType: !21, size: 8, offset: 296)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !403, file: !115, line: 239, baseType: !12, size: 16, offset: 304)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !403, file: !115, line: 240, baseType: !113, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !403, file: !115, line: 241, baseType: !20, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !403, file: !115, line: 242, baseType: !12, size: 16, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !403, file: !115, line: 243, baseType: !20, size: 64, offset: 512)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !114, file: !115, line: 386, baseType: !425, size: 384)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !115, line: 263, size: 384, elements: !426)
!426 = !{!427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !425, file: !115, line: 264, baseType: !113, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !425, file: !115, line: 264, baseType: !21, size: 8, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !425, file: !115, line: 264, baseType: !21, size: 8, offset: 72)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !425, file: !115, line: 264, baseType: !12, size: 16, offset: 80)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !425, file: !115, line: 264, baseType: !21, size: 8, offset: 96)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !425, file: !115, line: 264, baseType: !21, size: 8, offset: 104)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !425, file: !115, line: 264, baseType: !21, size: 8, offset: 112)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !425, file: !115, line: 264, baseType: !21, size: 8, offset: 120)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !425, file: !115, line: 264, baseType: !109, size: 64, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !425, file: !115, line: 264, baseType: !7, size: 32, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !425, file: !115, line: 264, baseType: !7, size: 32, offset: 224)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !425, file: !115, line: 264, baseType: !7, size: 32, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !425, file: !115, line: 264, baseType: !21, size: 8, offset: 288)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !425, file: !115, line: 264, baseType: !21, size: 8, offset: 296)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !425, file: !115, line: 264, baseType: !21, size: 8, offset: 304)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !425, file: !115, line: 265, baseType: !113, size: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !114, file: !115, line: 387, baseType: !444, size: 448)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !115, line: 246, size: 448, elements: !445)
!445 = !{!446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !444, file: !115, line: 247, baseType: !113, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !444, file: !115, line: 247, baseType: !21, size: 8, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !444, file: !115, line: 247, baseType: !21, size: 8, offset: 72)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !444, file: !115, line: 247, baseType: !12, size: 16, offset: 80)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !444, file: !115, line: 247, baseType: !21, size: 8, offset: 96)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !444, file: !115, line: 247, baseType: !21, size: 8, offset: 104)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !444, file: !115, line: 247, baseType: !21, size: 8, offset: 112)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !444, file: !115, line: 247, baseType: !21, size: 8, offset: 120)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !444, file: !115, line: 247, baseType: !109, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !444, file: !115, line: 247, baseType: !7, size: 32, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !444, file: !115, line: 247, baseType: !7, size: 32, offset: 224)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !444, file: !115, line: 247, baseType: !7, size: 32, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !444, file: !115, line: 247, baseType: !21, size: 8, offset: 288)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !444, file: !115, line: 247, baseType: !21, size: 8, offset: 296)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !444, file: !115, line: 247, baseType: !113, size: 64, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !444, file: !115, line: 248, baseType: !113, size: 64, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !114, file: !115, line: 388, baseType: !463, size: 448)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !115, line: 251, size: 448, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !463, file: !115, line: 252, baseType: !113, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !463, file: !115, line: 252, baseType: !21, size: 8, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !463, file: !115, line: 252, baseType: !21, size: 8, offset: 72)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !463, file: !115, line: 252, baseType: !12, size: 16, offset: 80)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !115, line: 252, baseType: !21, size: 8, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !463, file: !115, line: 252, baseType: !21, size: 8, offset: 104)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !463, file: !115, line: 252, baseType: !21, size: 8, offset: 112)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !463, file: !115, line: 252, baseType: !21, size: 8, offset: 120)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !463, file: !115, line: 252, baseType: !109, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !463, file: !115, line: 252, baseType: !7, size: 32, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !463, file: !115, line: 252, baseType: !7, size: 32, offset: 224)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !463, file: !115, line: 252, baseType: !7, size: 32, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !463, file: !115, line: 252, baseType: !21, size: 8, offset: 288)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !463, file: !115, line: 252, baseType: !21, size: 8, offset: 296)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !463, file: !115, line: 257, baseType: !113, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !463, file: !115, line: 258, baseType: !113, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !114, file: !115, line: 389, baseType: !482, size: 512)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !115, line: 274, size: 512, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !489, !490, !491, !496, !497}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !482, file: !115, line: 275, baseType: !113, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !482, file: !115, line: 275, baseType: !21, size: 8, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !482, file: !115, line: 275, baseType: !21, size: 8, offset: 72)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !482, file: !115, line: 275, baseType: !12, size: 16, offset: 80)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !115, line: 275, baseType: !21, size: 8, offset: 96)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !482, file: !115, line: 275, baseType: !109, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !482, file: !115, line: 276, baseType: !7, size: 32, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !482, file: !115, line: 277, baseType: !492, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !326, !7, !15}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !482, file: !115, line: 278, baseType: !15, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !482, file: !115, line: 279, baseType: !265, size: 128, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !114, file: !115, line: 390, baseType: !499, size: 576)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !115, line: 282, size: 576, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508, !514, !515, !516, !517, !523, !524}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !499, file: !115, line: 283, baseType: !113, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !499, file: !115, line: 283, baseType: !21, size: 8, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !499, file: !115, line: 283, baseType: !21, size: 8, offset: 72)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !499, file: !115, line: 283, baseType: !12, size: 16, offset: 80)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !115, line: 283, baseType: !21, size: 8, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !499, file: !115, line: 283, baseType: !21, size: 8, offset: 104)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !499, file: !115, line: 284, baseType: !21, size: 8, offset: 112)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !499, file: !115, line: 285, baseType: !509, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!5, !7, !253, !7, !513, !15, !15}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !499, file: !115, line: 286, baseType: !109, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !499, file: !115, line: 287, baseType: !15, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !499, file: !115, line: 288, baseType: !15, size: 64, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !499, file: !115, line: 289, baseType: !518, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!5, !326, !7, !15, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !499, file: !115, line: 290, baseType: !113, size: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !499, file: !115, line: 291, baseType: !113, size: 64, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !114, file: !115, line: 391, baseType: !526, size: 512)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !115, line: 309, size: 512, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !526, file: !115, line: 310, baseType: !113, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !526, file: !115, line: 310, baseType: !21, size: 8, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !526, file: !115, line: 310, baseType: !21, size: 8, offset: 72)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !526, file: !115, line: 310, baseType: !12, size: 16, offset: 80)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !526, file: !115, line: 310, baseType: !21, size: 8, offset: 96)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !526, file: !115, line: 310, baseType: !21, size: 8, offset: 104)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !526, file: !115, line: 311, baseType: !21, size: 8, offset: 112)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !526, file: !115, line: 312, baseType: !21, size: 8, offset: 120)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !526, file: !115, line: 313, baseType: !15, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !526, file: !115, line: 314, baseType: !109, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !526, file: !115, line: 315, baseType: !172, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !526, file: !115, line: 316, baseType: !20, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !526, file: !115, line: 317, baseType: !20, size: 64, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !526, file: !115, line: 318, baseType: !7, size: 32, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !114, file: !115, line: 392, baseType: !543, size: 448)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !115, line: 342, size: 448, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553, !554}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !543, file: !115, line: 343, baseType: !113, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !543, file: !115, line: 343, baseType: !21, size: 8, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !543, file: !115, line: 343, baseType: !21, size: 8, offset: 72)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !543, file: !115, line: 343, baseType: !12, size: 16, offset: 80)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !115, line: 343, baseType: !21, size: 8, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !543, file: !115, line: 343, baseType: !109, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !543, file: !115, line: 344, baseType: !109, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !543, file: !115, line: 345, baseType: !15, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !543, file: !115, line: 346, baseType: !20, size: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !543, file: !115, line: 347, baseType: !7, size: 32, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !114, file: !115, line: 393, baseType: !556, size: 256)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !115, line: 352, size: 256, elements: !557)
!557 = !{!558, !559, !560, !561, !562, !563, !568}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !556, file: !115, line: 353, baseType: !113, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !556, file: !115, line: 353, baseType: !21, size: 8, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !556, file: !115, line: 353, baseType: !21, size: 8, offset: 72)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !556, file: !115, line: 353, baseType: !12, size: 16, offset: 80)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !556, file: !115, line: 353, baseType: !21, size: 8, offset: 96)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !556, file: !115, line: 353, baseType: !564, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !326, !15}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !556, file: !115, line: 354, baseType: !15, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !114, file: !115, line: 394, baseType: !570, size: 192)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !115, line: 359, size: 192, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !570, file: !115, line: 360, baseType: !113, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !570, file: !115, line: 360, baseType: !21, size: 8, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !570, file: !115, line: 360, baseType: !21, size: 8, offset: 72)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !570, file: !115, line: 360, baseType: !12, size: 16, offset: 80)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !570, file: !115, line: 360, baseType: !21, size: 8, offset: 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !570, file: !115, line: 360, baseType: !113, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !114, file: !115, line: 401, baseType: !110, size: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !110, file: !88, line: 135, baseType: !21, size: 8, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !88, line: 136, baseType: !21, size: 8, offset: 72)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !110, file: !88, line: 137, baseType: !12, size: 16, offset: 80)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !110, file: !88, line: 138, baseType: !583, size: 32, offset: 96)
!583 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !584, line: 328, size: 32, elements: !585)
!584 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !583, file: !584, line: 329, baseType: !7, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !583, file: !584, line: 330, baseType: !588, size: 32)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 4)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !110, file: !88, line: 139, baseType: !109, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !110, file: !88, line: 140, baseType: !109, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !110, file: !88, line: 141, baseType: !109, size: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !110, file: !88, line: 142, baseType: !72, size: 16, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !100, file: !88, line: 845, baseType: !596, size: 64, offset: 320)
!596 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !88, line: 732, size: 64, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !596, file: !88, line: 733, baseType: !17, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !596, file: !88, line: 734, baseType: !7, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !596, file: !88, line: 735, baseType: !147, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !596, file: !88, line: 736, baseType: !20, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !596, file: !88, line: 737, baseType: !147, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !596, file: !88, line: 738, baseType: !96, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !100, file: !88, line: 845, baseType: !21, size: 8, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !97, file: !88, line: 893, baseType: !606, size: 640)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !88, line: 851, size: 640, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !606, file: !88, line: 852, baseType: !96, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !606, file: !88, line: 852, baseType: !21, size: 8, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !606, file: !88, line: 852, baseType: !21, size: 8, offset: 72)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !606, file: !88, line: 852, baseType: !12, size: 16, offset: 80)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !606, file: !88, line: 852, baseType: !20, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !606, file: !88, line: 852, baseType: !96, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !606, file: !88, line: 852, baseType: !109, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !606, file: !88, line: 852, baseType: !596, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !606, file: !88, line: 852, baseType: !21, size: 8, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !606, file: !88, line: 852, baseType: !147, size: 64, offset: 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !606, file: !88, line: 853, baseType: !20, size: 64, offset: 512)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !606, file: !88, line: 854, baseType: !7, size: 32, offset: 576)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !606, file: !88, line: 855, baseType: !7, size: 32, offset: 608)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !97, file: !88, line: 894, baseType: !622, size: 1600)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !88, line: 862, size: 1600, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !622, file: !88, line: 863, baseType: !96, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !622, file: !88, line: 863, baseType: !21, size: 8, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !88, line: 863, baseType: !21, size: 8, offset: 72)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !622, file: !88, line: 863, baseType: !12, size: 16, offset: 80)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !622, file: !88, line: 863, baseType: !20, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !622, file: !88, line: 863, baseType: !96, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !622, file: !88, line: 863, baseType: !109, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !622, file: !88, line: 863, baseType: !596, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !622, file: !88, line: 863, baseType: !21, size: 8, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !622, file: !88, line: 863, baseType: !96, size: 64, offset: 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !622, file: !88, line: 864, baseType: !96, size: 64, offset: 512)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !622, file: !88, line: 865, baseType: !147, size: 64, offset: 576)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !622, file: !88, line: 866, baseType: !21, size: 8, offset: 640)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !622, file: !88, line: 867, baseType: !147, size: 64, offset: 704)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !622, file: !88, line: 868, baseType: !147, size: 64, offset: 768)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !622, file: !88, line: 869, baseType: !147, size: 64, offset: 832)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !622, file: !88, line: 870, baseType: !588, size: 32, offset: 896)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !622, file: !88, line: 871, baseType: !7, size: 32, offset: 928)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !622, file: !88, line: 872, baseType: !7, size: 32, offset: 960)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !622, file: !88, line: 873, baseType: !7, size: 32, offset: 992)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !622, file: !88, line: 874, baseType: !7, size: 32, offset: 1024)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !622, file: !88, line: 875, baseType: !7, size: 32, offset: 1056)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !622, file: !88, line: 876, baseType: !7, size: 32, offset: 1088)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !622, file: !88, line: 877, baseType: !7, size: 32, offset: 1120)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !622, file: !88, line: 878, baseType: !7, size: 32, offset: 1152)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !622, file: !88, line: 879, baseType: !7, size: 32, offset: 1184)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !622, file: !88, line: 880, baseType: !7, size: 32, offset: 1216)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !622, file: !88, line: 881, baseType: !7, size: 32, offset: 1248)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !622, file: !88, line: 882, baseType: !7, size: 32, offset: 1280)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !622, file: !88, line: 883, baseType: !7, size: 32, offset: 1312)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !622, file: !88, line: 884, baseType: !12, size: 16, offset: 1344)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !622, file: !88, line: 885, baseType: !21, size: 8, offset: 1360)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !622, file: !88, line: 886, baseType: !21, size: 8, offset: 1368)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !622, file: !88, line: 887, baseType: !21, size: 8, offset: 1376)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !622, file: !88, line: 888, baseType: !659, size: 160, offset: 1384)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !660)
!660 = !{!661}
!661 = !DISubrange(count: 20)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !87, file: !88, line: 916, baseType: !109, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !87, file: !88, line: 917, baseType: !664, size: 64, offset: 448)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !88, line: 679, size: 640, elements: !666)
!666 = !{!667, !675, !688, !697, !706, !719, !733, !734, !746}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !665, file: !88, line: 680, baseType: !668, size: 128)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !88, line: 575, size: 128, elements: !669)
!669 = !{!670, !671, !672, !673, !674}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !668, file: !88, line: 576, baseType: !15, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !668, file: !88, line: 576, baseType: !21, size: 8, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !88, line: 576, baseType: !21, size: 8, offset: 72)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !668, file: !88, line: 576, baseType: !12, size: 16, offset: 80)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !668, file: !88, line: 576, baseType: !12, size: 16, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !665, file: !88, line: 681, baseType: !676, size: 384)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !88, line: 604, size: 384, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !88, line: 605, baseType: !15, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !676, file: !88, line: 605, baseType: !21, size: 8, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !88, line: 605, baseType: !21, size: 8, offset: 72)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !676, file: !88, line: 605, baseType: !12, size: 16, offset: 80)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !676, file: !88, line: 605, baseType: !12, size: 16, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !676, file: !88, line: 606, baseType: !12, size: 16, offset: 112)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !676, file: !88, line: 607, baseType: !96, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !676, file: !88, line: 608, baseType: !20, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !676, file: !88, line: 609, baseType: !20, size: 64, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !676, file: !88, line: 610, baseType: !17, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !665, file: !88, line: 682, baseType: !689, size: 192)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !88, line: 582, size: 192, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !88, line: 583, baseType: !15, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !88, line: 583, baseType: !21, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !88, line: 583, baseType: !21, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !689, file: !88, line: 583, baseType: !12, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !689, file: !88, line: 583, baseType: !12, size: 16, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !689, file: !88, line: 584, baseType: !113, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !665, file: !88, line: 683, baseType: !698, size: 192)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !88, line: 616, size: 192, elements: !699)
!699 = !{!700, !701, !702, !703, !704, !705}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !698, file: !88, line: 617, baseType: !15, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !698, file: !88, line: 617, baseType: !21, size: 8, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !88, line: 617, baseType: !21, size: 8, offset: 72)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !698, file: !88, line: 617, baseType: !12, size: 16, offset: 80)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !698, file: !88, line: 617, baseType: !12, size: 16, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !698, file: !88, line: 618, baseType: !109, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !665, file: !88, line: 684, baseType: !707, size: 448)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !88, line: 621, size: 448, elements: !708)
!708 = !{!709, !710, !711, !712, !713, !714, !715, !716, !717, !718}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !707, file: !88, line: 622, baseType: !15, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !707, file: !88, line: 622, baseType: !21, size: 8, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !88, line: 622, baseType: !21, size: 8, offset: 72)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !707, file: !88, line: 622, baseType: !12, size: 16, offset: 80)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !707, file: !88, line: 622, baseType: !12, size: 16, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !707, file: !88, line: 623, baseType: !7, size: 32, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !707, file: !88, line: 624, baseType: !96, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !707, file: !88, line: 625, baseType: !20, size: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !707, file: !88, line: 626, baseType: !20, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !707, file: !88, line: 627, baseType: !7, size: 32, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !665, file: !88, line: 685, baseType: !720, size: 512)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !88, line: 590, size: 512, elements: !721)
!721 = !{!722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !720, file: !88, line: 591, baseType: !15, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !720, file: !88, line: 591, baseType: !21, size: 8, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !720, file: !88, line: 591, baseType: !21, size: 8, offset: 72)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !720, file: !88, line: 591, baseType: !12, size: 16, offset: 80)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !720, file: !88, line: 591, baseType: !12, size: 16, offset: 96)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !720, file: !88, line: 592, baseType: !7, size: 32, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !720, file: !88, line: 593, baseType: !113, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !720, file: !88, line: 594, baseType: !113, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !720, file: !88, line: 595, baseType: !60, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !720, file: !88, line: 596, baseType: !15, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !720, file: !88, line: 597, baseType: !7, size: 32, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !665, file: !88, line: 686, baseType: !225, size: 320)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !665, file: !88, line: 687, baseType: !735, size: 640)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !88, line: 646, size: 640, elements: !736)
!736 = !{!737, !738, !739, !740, !741, !742}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !735, file: !88, line: 647, baseType: !15, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !735, file: !88, line: 647, baseType: !21, size: 8, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !88, line: 647, baseType: !21, size: 8, offset: 72)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !735, file: !88, line: 647, baseType: !12, size: 16, offset: 80)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !735, file: !88, line: 647, baseType: !12, size: 16, offset: 96)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !735, file: !88, line: 648, baseType: !743, size: 512, offset: 128)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 512, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 8)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !665, file: !88, line: 688, baseType: !747, size: 320)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !88, line: 669, size: 320, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !755, !756, !757}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !747, file: !88, line: 670, baseType: !15, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !747, file: !88, line: 670, baseType: !21, size: 8, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !88, line: 670, baseType: !21, size: 8, offset: 72)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !747, file: !88, line: 670, baseType: !12, size: 16, offset: 80)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !747, file: !88, line: 670, baseType: !12, size: 16, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !747, file: !88, line: 671, baseType: !21, size: 8, offset: 112)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !747, file: !88, line: 672, baseType: !109, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !747, file: !88, line: 673, baseType: !113, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !747, file: !88, line: 674, baseType: !758, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !88, line: 660, size: 128, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !759, file: !88, line: 661, baseType: !492, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !759, file: !88, line: 662, baseType: !15, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !87, file: !88, line: 918, baseType: !96, size: 64, offset: 512)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !87, file: !88, line: 919, baseType: !7, size: 32, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !61, file: !62, line: 61, baseType: !7, size: 32, offset: 1088)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !61, file: !62, line: 62, baseType: !7, size: 32, offset: 1120)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !61, file: !62, line: 63, baseType: !12, size: 16, offset: 1152)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !61, file: !62, line: 64, baseType: !21, size: 8, offset: 1168)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !61, file: !62, line: 66, baseType: !770, size: 2688, offset: 1216)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 2688, elements: !771)
!771 = !{!772}
!772 = !DISubrange(count: 7)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !61, file: !62, line: 67, baseType: !774, size: 3072, offset: 3904)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 3072, elements: !744)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !61, file: !62, line: 68, baseType: !776, size: 576, offset: 6976)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 576, elements: !46)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !61, file: !62, line: 69, baseType: !172, size: 64, offset: 7552)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !61, file: !62, line: 71, baseType: !20, size: 64, offset: 7616)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !61, file: !62, line: 72, baseType: !172, size: 64, offset: 7680)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !61, file: !62, line: 73, baseType: !664, size: 64, offset: 7744)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !61, file: !62, line: 74, baseType: !109, size: 64, offset: 7808)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !61, file: !62, line: 75, baseType: !113, size: 64, offset: 7872)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !61, file: !62, line: 76, baseType: !109, size: 64, offset: 7936)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !61, file: !62, line: 77, baseType: !96, size: 64, offset: 8000)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !61, file: !62, line: 78, baseType: !113, size: 64, offset: 8064)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !61, file: !62, line: 79, baseType: !109, size: 64, offset: 8128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !61, file: !62, line: 80, baseType: !147, size: 64, offset: 8192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !61, file: !62, line: 81, baseType: !96, size: 64, offset: 8256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !61, file: !62, line: 82, baseType: !790, size: 64, offset: 8320)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !792)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !88, line: 718, size: 128, elements: !793)
!793 = !{!794, !795, !796, !797, !798, !799}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !792, file: !88, line: 722, baseType: !7, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !792, file: !88, line: 723, baseType: !7, size: 32, offset: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !792, file: !88, line: 724, baseType: !12, size: 16, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !792, file: !88, line: 725, baseType: !21, size: 8, offset: 80)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !792, file: !88, line: 726, baseType: !21, size: 8, offset: 88)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !792, file: !88, line: 727, baseType: !21, size: 8, offset: 96)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !61, file: !62, line: 83, baseType: !96, size: 64, offset: 8384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !61, file: !62, line: 84, baseType: !113, size: 64, offset: 8448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !61, file: !62, line: 85, baseType: !664, size: 64, offset: 8512)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !61, file: !62, line: 86, baseType: !113, size: 64, offset: 8576)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !61, file: !62, line: 87, baseType: !664, size: 64, offset: 8640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !61, file: !62, line: 88, baseType: !96, size: 64, offset: 8704)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !61, file: !62, line: 89, baseType: !96, size: 64, offset: 8768)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !61, file: !62, line: 90, baseType: !224, size: 64, offset: 8832)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !61, file: !62, line: 91, baseType: !809, size: 64, offset: 8896)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !88, line: 652, baseType: !810)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!5, !60, !813}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !61, file: !62, line: 92, baseType: !815, size: 64, offset: 8960)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !88, line: 656, baseType: !204)
!816 = !{!817, !818, !819, !820, !821, !822}
!817 = !DILocalVariable(name: "walk_state", arg: 1, scope: !57, file: !3, line: 154, type: !60)
!818 = !DILocalVariable(name: "aml_op_start", arg: 2, scope: !57, file: !3, line: 155, type: !20)
!819 = !DILocalVariable(name: "unnamed_op", arg: 3, scope: !57, file: !3, line: 156, type: !96)
!820 = !DILocalVariable(name: "op", arg: 4, scope: !57, file: !3, line: 157, type: !813)
!821 = !DILocalVariable(name: "status", scope: !57, file: !3, line: 159, type: !5)
!822 = !DILocalVariable(name: "arg", scope: !57, file: !3, line: 160, type: !96)
!823 = !DILocation(line: 154, column: 48, scope: !57)
!824 = !DILocation(line: 155, column: 14, scope: !57)
!825 = !DILocation(line: 156, column: 35, scope: !57)
!826 = !DILocation(line: 157, column: 36, scope: !57)
!827 = !DILocation(line: 159, column: 2, scope: !57)
!828 = !DILocation(line: 159, column: 14, scope: !57)
!829 = !DILocation(line: 160, column: 2, scope: !57)
!830 = !DILocation(line: 160, column: 27, scope: !57)
!831 = !DILocation(line: 164, column: 2, scope: !57)
!832 = !DILocation(line: 164, column: 21, scope: !57)
!833 = !DILocation(line: 164, column: 31, scope: !57)
!834 = !DILocation(line: 165, column: 2, scope: !57)
!835 = !DILocation(line: 165, column: 21, scope: !57)
!836 = !DILocation(line: 165, column: 37, scope: !57)
!837 = !DILocation(line: 166, column: 34, scope: !57)
!838 = !DILocation(line: 166, column: 46, scope: !57)
!839 = !DILocation(line: 166, column: 2, scope: !57)
!840 = !DILocation(line: 166, column: 21, scope: !57)
!841 = !DILocation(line: 166, column: 32, scope: !57)
!842 = !DILocation(line: 172, column: 2, scope: !57)
!843 = !DILocation(line: 172, column: 9, scope: !57)
!844 = !DILocation(line: 172, column: 53, scope: !57)
!845 = !DILocation(line: 173, column: 10, scope: !57)
!846 = !DILocation(line: 173, column: 54, scope: !57)
!847 = !DILocation(line: 0, scope: !57)
!848 = !DILocation(line: 176, column: 28, scope: !849)
!849 = distinct !DILexicalBlock(scope: !57, file: !3, line: 173, column: 69)
!850 = !DILocation(line: 177, column: 9, scope: !849)
!851 = !DILocation(line: 177, column: 21, scope: !849)
!852 = !DILocation(line: 178, column: 7, scope: !849)
!853 = !DILocation(line: 176, column: 7, scope: !849)
!854 = !DILocation(line: 175, column: 10, scope: !849)
!855 = !DILocation(line: 180, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !849, file: !3, line: 180, column: 7)
!857 = !DILocation(line: 180, column: 7, scope: !849)
!858 = !DILocation(line: 181, column: 4, scope: !859)
!859 = distinct !DILexicalBlock(scope: !856, file: !3, line: 180, column: 29)
!860 = !DILocation(line: 184, column: 22, scope: !849)
!861 = !DILocation(line: 184, column: 34, scope: !849)
!862 = !DILocation(line: 184, column: 3, scope: !849)
!863 = !DILocation(line: 185, column: 3, scope: !849)
!864 = distinct !{!864, !842, !865, !866, !867}
!865 = !DILocation(line: 186, column: 2, scope: !57)
!866 = !{!"llvm.loop.mustprogress"}
!867 = !{!"llvm.loop.unroll.disable"}
!868 = !DILocation(line: 203, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !57, file: !3, line: 203, column: 6)
!870 = !DILocation(line: 203, column: 6, scope: !57)
!871 = !DILocation(line: 204, column: 3, scope: !872)
!872 = distinct !DILexicalBlock(scope: !869, file: !3, line: 203, column: 52)
!873 = !DILocation(line: 209, column: 2, scope: !57)
!874 = !DILocation(line: 215, column: 2, scope: !57)
!875 = !DILocation(line: 215, column: 14, scope: !57)
!876 = !DILocation(line: 215, column: 17, scope: !57)
!877 = !DILocation(line: 217, column: 11, scope: !57)
!878 = !DILocation(line: 217, column: 23, scope: !57)
!879 = !DILocation(line: 217, column: 43, scope: !57)
!880 = !DILocation(line: 217, column: 55, scope: !57)
!881 = !DILocation(line: 217, column: 9, scope: !57)
!882 = !DILocation(line: 218, column: 6, scope: !883)
!883 = distinct !DILexicalBlock(scope: !57, file: !3, line: 218, column: 6)
!884 = !DILocation(line: 218, column: 6, scope: !57)
!885 = !DILocation(line: 219, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 219, column: 7)
!887 = distinct !DILexicalBlock(scope: !883, file: !3, line: 218, column: 28)
!888 = !DILocation(line: 219, column: 14, scope: !886)
!889 = !DILocation(line: 219, column: 7, scope: !887)
!890 = !DILocation(line: 220, column: 4, scope: !891)
!891 = distinct !DILexicalBlock(scope: !886, file: !3, line: 219, column: 36)
!892 = !DILocation(line: 222, column: 3, scope: !891)
!893 = !DILocation(line: 223, column: 3, scope: !887)
!894 = !DILocation(line: 226, column: 8, scope: !895)
!895 = distinct !DILexicalBlock(scope: !57, file: !3, line: 226, column: 6)
!896 = !DILocation(line: 226, column: 7, scope: !895)
!897 = !DILocation(line: 226, column: 6, scope: !57)
!898 = !DILocation(line: 227, column: 3, scope: !899)
!899 = distinct !DILexicalBlock(scope: !895, file: !3, line: 226, column: 12)
!900 = !DILocation(line: 230, column: 36, scope: !57)
!901 = !DILocation(line: 230, column: 49, scope: !57)
!902 = !DILocation(line: 230, column: 48, scope: !57)
!903 = !DILocation(line: 230, column: 53, scope: !57)
!904 = !DILocation(line: 230, column: 11, scope: !57)
!905 = !DILocation(line: 230, column: 9, scope: !57)
!906 = !DILocation(line: 231, column: 6, scope: !907)
!907 = distinct !DILexicalBlock(scope: !57, file: !3, line: 231, column: 6)
!908 = !DILocation(line: 231, column: 6, scope: !57)
!909 = !DILocation(line: 232, column: 7, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !3, line: 232, column: 7)
!911 = distinct !DILexicalBlock(scope: !907, file: !3, line: 231, column: 28)
!912 = !DILocation(line: 232, column: 14, scope: !910)
!913 = !DILocation(line: 232, column: 7, scope: !911)
!914 = !DILocation(line: 233, column: 11, scope: !915)
!915 = distinct !DILexicalBlock(scope: !910, file: !3, line: 232, column: 34)
!916 = !DILocation(line: 234, column: 3, scope: !915)
!917 = !DILocation(line: 235, column: 3, scope: !911)
!918 = !DILocation(line: 238, column: 22, scope: !57)
!919 = !DILocation(line: 238, column: 21, scope: !57)
!920 = !DILocation(line: 238, column: 26, scope: !57)
!921 = !DILocation(line: 238, column: 45, scope: !57)
!922 = !DILocation(line: 238, column: 51, scope: !57)
!923 = !DILocation(line: 238, column: 2, scope: !57)
!924 = !DILocation(line: 264, column: 8, scope: !925)
!925 = distinct !DILexicalBlock(scope: !57, file: !3, line: 264, column: 6)
!926 = !DILocation(line: 264, column: 7, scope: !925)
!927 = !DILocation(line: 264, column: 20, scope: !925)
!928 = !DILocation(line: 264, column: 6, scope: !925)
!929 = !DILocation(line: 264, column: 31, scope: !925)
!930 = !DILocation(line: 264, column: 48, scope: !925)
!931 = !DILocation(line: 265, column: 8, scope: !925)
!932 = !DILocation(line: 265, column: 7, scope: !925)
!933 = !DILocation(line: 265, column: 20, scope: !925)
!934 = !DILocation(line: 265, column: 6, scope: !925)
!935 = !DILocation(line: 265, column: 31, scope: !925)
!936 = !DILocation(line: 264, column: 6, scope: !57)
!937 = !DILocation(line: 276, column: 23, scope: !938)
!938 = distinct !DILexicalBlock(scope: !925, file: !3, line: 265, column: 54)
!939 = !DILocation(line: 276, column: 5, scope: !938)
!940 = !DILocation(line: 276, column: 4, scope: !938)
!941 = !DILocation(line: 276, column: 16, scope: !938)
!942 = !DILocation(line: 276, column: 21, scope: !938)
!943 = !DILocation(line: 277, column: 5, scope: !938)
!944 = !DILocation(line: 277, column: 4, scope: !938)
!945 = !DILocation(line: 277, column: 16, scope: !938)
!946 = !DILocation(line: 277, column: 23, scope: !938)
!947 = !DILocation(line: 278, column: 2, scope: !938)
!948 = !DILocation(line: 280, column: 2, scope: !57)
!949 = !DILocation(line: 281, column: 1, scope: !57)
!950 = !DISubprogram(name: "acpi_ps_get_next_arg", scope: !951, file: !951, line: 72, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!951 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!952 = !DISubroutineType(types: !953)
!953 = !{!5, !60, !954, !7, !813}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!955 = !DISubprogram(name: "acpi_ps_append_arg", scope: !951, file: !951, line: 164, type: !956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !96, !96}
!958 = !DISubprogram(name: "acpi_exception", scope: !959, file: !959, line: 906, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!960 = !DISubroutineType(types: !961)
!961 = !{null, !962, !7, !5, !962, null}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!963 = !DISubprogram(name: "acpi_ps_next_parse_state", scope: !951, file: !951, line: 128, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!964 = !DISubroutineType(types: !965)
!965 = !{!5, !60, !96, !5}
!966 = distinct !DISubprogram(name: "acpi_ps_create_op", scope: !3, file: !3, line: 298, type: !967, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{!5, !60, !20, !813}
!969 = !{!970, !971, !972, !973, !974, !975, !976, !977, !978}
!970 = !DILocalVariable(name: "walk_state", arg: 1, scope: !966, file: !3, line: 298, type: !60)
!971 = !DILocalVariable(name: "aml_op_start", arg: 2, scope: !966, file: !3, line: 299, type: !20)
!972 = !DILocalVariable(name: "new_op", arg: 3, scope: !966, file: !3, line: 299, type: !813)
!973 = !DILocalVariable(name: "status", scope: !966, file: !3, line: 301, type: !5)
!974 = !DILocalVariable(name: "op", scope: !966, file: !3, line: 302, type: !96)
!975 = !DILocalVariable(name: "named_op", scope: !966, file: !3, line: 303, type: !96)
!976 = !DILocalVariable(name: "parent_scope", scope: !966, file: !3, line: 304, type: !96)
!977 = !DILocalVariable(name: "argument_count", scope: !966, file: !3, line: 305, type: !21)
!978 = !DILocalVariable(name: "op_info", scope: !966, file: !3, line: 306, type: !790)
!979 = !DILocation(line: 298, column: 43, scope: !966)
!980 = !DILocation(line: 299, column: 9, scope: !966)
!981 = !DILocation(line: 299, column: 49, scope: !966)
!982 = !DILocation(line: 301, column: 2, scope: !966)
!983 = !DILocation(line: 301, column: 14, scope: !966)
!984 = !DILocation(line: 302, column: 2, scope: !966)
!985 = !DILocation(line: 302, column: 27, scope: !966)
!986 = !DILocation(line: 303, column: 2, scope: !966)
!987 = !DILocation(line: 303, column: 27, scope: !966)
!988 = !DILocation(line: 304, column: 2, scope: !966)
!989 = !DILocation(line: 304, column: 27, scope: !966)
!990 = !DILocation(line: 305, column: 2, scope: !966)
!991 = !DILocation(line: 305, column: 5, scope: !966)
!992 = !DILocation(line: 306, column: 2, scope: !966)
!993 = !DILocation(line: 306, column: 33, scope: !966)
!994 = !DILocation(line: 310, column: 34, scope: !966)
!995 = !DILocation(line: 310, column: 11, scope: !966)
!996 = !DILocation(line: 310, column: 9, scope: !966)
!997 = !DILocation(line: 311, column: 6, scope: !998)
!998 = distinct !DILexicalBlock(scope: !966, file: !3, line: 311, column: 6)
!999 = !DILocation(line: 311, column: 13, scope: !998)
!1000 = !DILocation(line: 311, column: 6, scope: !966)
!1001 = !DILocation(line: 312, column: 3, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !998, file: !3, line: 311, column: 40)
!1003 = !DILocation(line: 314, column: 6, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !966, file: !3, line: 314, column: 6)
!1005 = !DILocation(line: 314, column: 6, scope: !966)
!1006 = !DILocation(line: 315, column: 3, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 314, column: 28)
!1008 = !DILocation(line: 320, column: 48, scope: !966)
!1009 = !DILocation(line: 320, column: 60, scope: !966)
!1010 = !DILocation(line: 320, column: 24, scope: !966)
!1011 = !DILocation(line: 320, column: 2, scope: !966)
!1012 = !DILocation(line: 320, column: 14, scope: !966)
!1013 = !DILocation(line: 320, column: 22, scope: !966)
!1014 = !DILocation(line: 321, column: 24, scope: !966)
!1015 = !DILocation(line: 321, column: 36, scope: !966)
!1016 = !DILocation(line: 321, column: 44, scope: !966)
!1017 = !DILocation(line: 321, column: 7, scope: !966)
!1018 = !DILocation(line: 321, column: 5, scope: !966)
!1019 = !DILocation(line: 322, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !966, file: !3, line: 322, column: 6)
!1021 = !DILocation(line: 322, column: 6, scope: !966)
!1022 = !DILocation(line: 323, column: 3, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 322, column: 11)
!1024 = !DILocation(line: 326, column: 6, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !966, file: !3, line: 326, column: 6)
!1026 = !DILocation(line: 326, column: 18, scope: !1025)
!1027 = !DILocation(line: 326, column: 27, scope: !1025)
!1028 = !DILocation(line: 326, column: 33, scope: !1025)
!1029 = !DILocation(line: 326, column: 6, scope: !966)
!1030 = !DILocation(line: 328, column: 30, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 326, column: 46)
!1032 = !DILocation(line: 328, column: 42, scope: !1031)
!1033 = !DILocation(line: 328, column: 56, scope: !1031)
!1034 = !DILocation(line: 328, column: 7, scope: !1031)
!1035 = !DILocation(line: 327, column: 10, scope: !1031)
!1036 = !DILocation(line: 330, column: 19, scope: !1031)
!1037 = !DILocation(line: 330, column: 3, scope: !1031)
!1038 = !DILocation(line: 351, column: 7, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 351, column: 7)
!1040 = !DILocation(line: 351, column: 7, scope: !1031)
!1041 = !DILocation(line: 352, column: 4, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 351, column: 29)
!1043 = !DILocation(line: 355, column: 13, scope: !1031)
!1044 = !DILocation(line: 355, column: 4, scope: !1031)
!1045 = !DILocation(line: 355, column: 11, scope: !1031)
!1046 = !DILocation(line: 356, column: 3, scope: !1031)
!1047 = !DILocation(line: 361, column: 6, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !966, file: !3, line: 361, column: 6)
!1049 = !DILocation(line: 361, column: 18, scope: !1048)
!1050 = !DILocation(line: 361, column: 27, scope: !1048)
!1051 = !DILocation(line: 361, column: 33, scope: !1048)
!1052 = !DILocation(line: 361, column: 6, scope: !966)
!1053 = !DILocation(line: 366, column: 20, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 361, column: 47)
!1055 = !DILocation(line: 366, column: 3, scope: !1054)
!1056 = !DILocation(line: 366, column: 13, scope: !1054)
!1057 = !DILocation(line: 366, column: 18, scope: !1054)
!1058 = !DILocation(line: 367, column: 3, scope: !1054)
!1059 = !DILocation(line: 367, column: 13, scope: !1054)
!1060 = !DILocation(line: 367, column: 20, scope: !1054)
!1061 = !DILocation(line: 368, column: 2, scope: !1054)
!1062 = !DILocation(line: 370, column: 6, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !966, file: !3, line: 370, column: 6)
!1064 = !DILocation(line: 370, column: 18, scope: !1063)
!1065 = !DILocation(line: 370, column: 25, scope: !1063)
!1066 = !DILocation(line: 370, column: 6, scope: !966)
!1067 = !DILocation(line: 375, column: 20, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 370, column: 47)
!1069 = !DILocation(line: 375, column: 3, scope: !1068)
!1070 = !DILocation(line: 375, column: 13, scope: !1068)
!1071 = !DILocation(line: 375, column: 18, scope: !1068)
!1072 = !DILocation(line: 376, column: 3, scope: !1068)
!1073 = !DILocation(line: 376, column: 13, scope: !1068)
!1074 = !DILocation(line: 376, column: 20, scope: !1068)
!1075 = !DILocation(line: 377, column: 2, scope: !1068)
!1076 = !DILocation(line: 379, column: 44, scope: !966)
!1077 = !DILocation(line: 379, column: 56, scope: !966)
!1078 = !DILocation(line: 379, column: 17, scope: !966)
!1079 = !DILocation(line: 379, column: 15, scope: !966)
!1080 = !DILocation(line: 380, column: 21, scope: !966)
!1081 = !DILocation(line: 380, column: 35, scope: !966)
!1082 = !DILocation(line: 380, column: 2, scope: !966)
!1083 = !DILocation(line: 382, column: 6, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !966, file: !3, line: 382, column: 6)
!1085 = !DILocation(line: 382, column: 6, scope: !966)
!1086 = !DILocation(line: 384, column: 31, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 382, column: 20)
!1088 = !DILocation(line: 384, column: 52, scope: !1087)
!1089 = !DILocation(line: 384, column: 7, scope: !1087)
!1090 = !DILocation(line: 383, column: 11, scope: !1087)
!1091 = !DILocation(line: 385, column: 7, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 385, column: 7)
!1093 = !DILocation(line: 385, column: 16, scope: !1092)
!1094 = !DILocation(line: 385, column: 22, scope: !1092)
!1095 = !DILocation(line: 385, column: 7, scope: !1087)
!1096 = !DILocation(line: 387, column: 35, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 385, column: 40)
!1098 = !DILocation(line: 387, column: 44, scope: !1097)
!1099 = !DILocation(line: 387, column: 8, scope: !1097)
!1100 = !DILocation(line: 386, column: 19, scope: !1097)
!1101 = !DILocation(line: 388, column: 8, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 388, column: 8)
!1103 = !DILocation(line: 388, column: 29, scope: !1102)
!1104 = !DILocation(line: 389, column: 8, scope: !1102)
!1105 = !DILocation(line: 388, column: 45, scope: !1102)
!1106 = !DILocation(line: 388, column: 8, scope: !1097)
!1107 = !DILocation(line: 390, column: 5, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 389, column: 24)
!1109 = !DILocation(line: 390, column: 16, scope: !1108)
!1110 = !DILocation(line: 390, column: 22, scope: !1108)
!1111 = !DILocation(line: 391, column: 4, scope: !1108)
!1112 = !DILocation(line: 392, column: 3, scope: !1097)
!1113 = !DILocation(line: 398, column: 13, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 398, column: 12)
!1115 = !DILocation(line: 398, column: 34, scope: !1114)
!1116 = !DILocation(line: 398, column: 45, scope: !1114)
!1117 = !DILocation(line: 399, column: 5, scope: !1114)
!1118 = !DILocation(line: 399, column: 9, scope: !1114)
!1119 = !DILocation(line: 399, column: 30, scope: !1114)
!1120 = !DILocation(line: 399, column: 41, scope: !1114)
!1121 = !DILocation(line: 398, column: 12, scope: !1092)
!1122 = !DILocation(line: 401, column: 4, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 400, column: 28)
!1124 = !DILocation(line: 401, column: 15, scope: !1123)
!1125 = !DILocation(line: 401, column: 21, scope: !1123)
!1126 = !DILocation(line: 402, column: 3, scope: !1123)
!1127 = !DILocation(line: 403, column: 2, scope: !1087)
!1128 = !DILocation(line: 405, column: 6, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !966, file: !3, line: 405, column: 6)
!1130 = !DILocation(line: 405, column: 18, scope: !1129)
!1131 = !DILocation(line: 405, column: 38, scope: !1129)
!1132 = !DILocation(line: 405, column: 6, scope: !966)
!1133 = !DILocation(line: 410, column: 30, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 405, column: 47)
!1135 = !DILocation(line: 410, column: 21, scope: !1134)
!1136 = !DILocation(line: 410, column: 28, scope: !1134)
!1137 = !DILocation(line: 410, column: 3, scope: !1134)
!1138 = !DILocation(line: 410, column: 15, scope: !1134)
!1139 = !DILocation(line: 410, column: 18, scope: !1134)
!1140 = !DILocation(line: 412, column: 12, scope: !1134)
!1141 = !DILocation(line: 412, column: 24, scope: !1134)
!1142 = !DILocation(line: 412, column: 44, scope: !1134)
!1143 = !DILocation(line: 412, column: 10, scope: !1134)
!1144 = !DILocation(line: 413, column: 37, scope: !1134)
!1145 = !DILocation(line: 413, column: 49, scope: !1134)
!1146 = !DILocation(line: 413, column: 53, scope: !1134)
!1147 = !DILocation(line: 413, column: 12, scope: !1134)
!1148 = !DILocation(line: 413, column: 10, scope: !1134)
!1149 = !DILocation(line: 414, column: 7, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 414, column: 7)
!1151 = !DILocation(line: 414, column: 14, scope: !1150)
!1152 = !DILocation(line: 414, column: 7, scope: !1134)
!1153 = !DILocation(line: 415, column: 11, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 414, column: 34)
!1155 = !DILocation(line: 416, column: 3, scope: !1154)
!1156 = !DILocation(line: 417, column: 2, scope: !1134)
!1157 = !DILocation(line: 419, column: 2, scope: !966)
!1158 = !DILocation(line: 420, column: 1, scope: !966)
!1159 = distinct !DISubprogram(name: "acpi_ps_get_aml_opcode", scope: !3, file: !3, line: 35, type: !205, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1160)
!1160 = !{!1161, !1162}
!1161 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1159, file: !3, line: 35, type: !60)
!1162 = !DILocalVariable(name: "aml_offset", scope: !1159, file: !3, line: 37, type: !7)
!1163 = !DILocation(line: 35, column: 67, scope: !1159)
!1164 = !DILocation(line: 37, column: 2, scope: !1159)
!1165 = !DILocation(line: 41, column: 20, scope: !1159)
!1166 = !DILocation(line: 41, column: 32, scope: !1159)
!1167 = !DILocation(line: 41, column: 45, scope: !1159)
!1168 = !DILocation(line: 41, column: 2, scope: !1159)
!1169 = !DILocation(line: 41, column: 14, scope: !1159)
!1170 = !DILocation(line: 41, column: 18, scope: !1159)
!1171 = !DILocation(line: 42, column: 45, scope: !1159)
!1172 = !DILocation(line: 42, column: 57, scope: !1159)
!1173 = !DILocation(line: 42, column: 23, scope: !1159)
!1174 = !DILocation(line: 42, column: 2, scope: !1159)
!1175 = !DILocation(line: 42, column: 14, scope: !1159)
!1176 = !DILocation(line: 42, column: 21, scope: !1159)
!1177 = !DILocation(line: 50, column: 48, scope: !1159)
!1178 = !DILocation(line: 50, column: 60, scope: !1159)
!1179 = !DILocation(line: 50, column: 24, scope: !1159)
!1180 = !DILocation(line: 50, column: 2, scope: !1159)
!1181 = !DILocation(line: 50, column: 14, scope: !1159)
!1182 = !DILocation(line: 50, column: 22, scope: !1159)
!1183 = !DILocation(line: 52, column: 10, scope: !1159)
!1184 = !DILocation(line: 52, column: 22, scope: !1159)
!1185 = !DILocation(line: 52, column: 31, scope: !1159)
!1186 = !DILocation(line: 52, column: 2, scope: !1159)
!1187 = !DILocation(line: 59, column: 3, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 52, column: 38)
!1189 = !DILocation(line: 59, column: 15, scope: !1188)
!1190 = !DILocation(line: 59, column: 22, scope: !1188)
!1191 = !DILocation(line: 60, column: 3, scope: !1188)
!1192 = !DILocation(line: 60, column: 15, scope: !1188)
!1193 = !DILocation(line: 60, column: 25, scope: !1188)
!1194 = !DILocation(line: 61, column: 3, scope: !1188)
!1195 = !DILocation(line: 67, column: 7, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 67, column: 7)
!1197 = !DILocation(line: 67, column: 19, scope: !1196)
!1198 = !DILocation(line: 67, column: 31, scope: !1196)
!1199 = !DILocation(line: 67, column: 7, scope: !1188)
!1200 = !DILocation(line: 68, column: 4, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 67, column: 37)
!1202 = !DILocation(line: 74, column: 4, scope: !1201)
!1203 = !DILocation(line: 114, column: 3, scope: !1201)
!1204 = !DILocation(line: 118, column: 3, scope: !1188)
!1205 = !DILocation(line: 118, column: 15, scope: !1188)
!1206 = !DILocation(line: 118, column: 28, scope: !1188)
!1207 = !DILocation(line: 118, column: 31, scope: !1188)
!1208 = !DILocation(line: 119, column: 7, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 119, column: 7)
!1210 = !DILocation(line: 119, column: 19, scope: !1209)
!1211 = !DILocation(line: 119, column: 26, scope: !1209)
!1212 = !DILocation(line: 119, column: 7, scope: !1188)
!1213 = !DILocation(line: 120, column: 4, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 119, column: 34)
!1215 = !DILocation(line: 120, column: 16, scope: !1214)
!1216 = !DILocation(line: 120, column: 29, scope: !1214)
!1217 = !DILocation(line: 120, column: 32, scope: !1214)
!1218 = !DILocation(line: 121, column: 3, scope: !1214)
!1219 = !DILocation(line: 123, column: 3, scope: !1188)
!1220 = !DILocation(line: 130, column: 31, scope: !1188)
!1221 = !DILocation(line: 130, column: 43, scope: !1188)
!1222 = !DILocation(line: 130, column: 7, scope: !1188)
!1223 = !DILocation(line: 129, column: 3, scope: !1188)
!1224 = !DILocation(line: 129, column: 15, scope: !1188)
!1225 = !DILocation(line: 129, column: 28, scope: !1188)
!1226 = !DILocation(line: 129, column: 32, scope: !1188)
!1227 = !DILocation(line: 131, column: 27, scope: !1188)
!1228 = !DILocation(line: 131, column: 39, scope: !1188)
!1229 = !DILocation(line: 131, column: 48, scope: !1188)
!1230 = !DILocation(line: 131, column: 3, scope: !1188)
!1231 = !DILocation(line: 131, column: 15, scope: !1188)
!1232 = !DILocation(line: 131, column: 25, scope: !1188)
!1233 = !DILocation(line: 132, column: 3, scope: !1188)
!1234 = !DILocation(line: 135, column: 2, scope: !1159)
!1235 = !DILocation(line: 136, column: 1, scope: !1159)
!1236 = !DISubprogram(name: "acpi_ps_get_opcode_info", scope: !951, file: !951, line: 108, type: !1237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!790, !12}
!1239 = !DISubprogram(name: "acpi_ps_alloc_op", scope: !951, file: !951, line: 204, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!96, !12, !20}
!1242 = !DISubprogram(name: "acpi_ps_free_op", scope: !951, file: !951, line: 206, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{null, !96}
!1245 = !DISubprogram(name: "acpi_ps_get_parent_scope", scope: !951, file: !951, line: 144, type: !1246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!96, !954}
!1248 = !DISubprogram(name: "acpi_ps_get_argument_count", scope: !951, file: !951, line: 112, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!21, !7}
!1251 = distinct !DISubprogram(name: "acpi_ps_complete_op", scope: !3, file: !3, line: 437, type: !1252, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1254)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!5, !60, !813, !5}
!1254 = !{!1255, !1256, !1257, !1258}
!1255 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1251, file: !3, line: 437, type: !60)
!1256 = !DILocalVariable(name: "op", arg: 2, scope: !1251, file: !3, line: 438, type: !813)
!1257 = !DILocalVariable(name: "status", arg: 3, scope: !1251, file: !3, line: 438, type: !5)
!1258 = !DILocalVariable(name: "status2", scope: !1251, file: !3, line: 440, type: !5)
!1259 = !DILocation(line: 437, column: 45, scope: !1251)
!1260 = !DILocation(line: 438, column: 33, scope: !1251)
!1261 = !DILocation(line: 438, column: 49, scope: !1251)
!1262 = !DILocation(line: 440, column: 2, scope: !1251)
!1263 = !DILocation(line: 440, column: 14, scope: !1251)
!1264 = !DILocation(line: 447, column: 2, scope: !1251)
!1265 = !DILocation(line: 447, column: 14, scope: !1251)
!1266 = !DILocation(line: 447, column: 27, scope: !1251)
!1267 = !DILocation(line: 447, column: 46, scope: !1251)
!1268 = !DILocation(line: 447, column: 55, scope: !1251)
!1269 = !DILocation(line: 451, column: 37, scope: !1251)
!1270 = !DILocation(line: 451, column: 50, scope: !1251)
!1271 = !DILocation(line: 451, column: 49, scope: !1251)
!1272 = !DILocation(line: 451, column: 12, scope: !1251)
!1273 = !DILocation(line: 451, column: 10, scope: !1251)
!1274 = !DILocation(line: 452, column: 6, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 452, column: 6)
!1276 = !DILocation(line: 452, column: 6, scope: !1251)
!1277 = !DILocation(line: 453, column: 3, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 452, column: 29)
!1279 = !DILocation(line: 456, column: 3, scope: !1251)
!1280 = !DILocation(line: 456, column: 6, scope: !1251)
!1281 = !DILocation(line: 458, column: 10, scope: !1251)
!1282 = !DILocation(line: 458, column: 2, scope: !1251)
!1283 = !DILocation(line: 467, column: 3, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 458, column: 18)
!1285 = !DILocation(line: 467, column: 15, scope: !1284)
!1286 = !DILocation(line: 467, column: 23, scope: !1284)
!1287 = !DILocation(line: 468, column: 32, scope: !1284)
!1288 = !DILocation(line: 468, column: 44, scope: !1284)
!1289 = !DILocation(line: 468, column: 3, scope: !1284)
!1290 = !DILocation(line: 468, column: 15, scope: !1284)
!1291 = !DILocation(line: 468, column: 30, scope: !1284)
!1292 = !DILocation(line: 469, column: 3, scope: !1284)
!1293 = !DILocation(line: 473, column: 23, scope: !1284)
!1294 = !DILocation(line: 473, column: 35, scope: !1284)
!1295 = !DILocation(line: 473, column: 50, scope: !1284)
!1296 = !DILocation(line: 474, column: 8, scope: !1284)
!1297 = !DILocation(line: 474, column: 20, scope: !1284)
!1298 = !DILocation(line: 475, column: 8, scope: !1284)
!1299 = !DILocation(line: 475, column: 20, scope: !1284)
!1300 = !DILocation(line: 473, column: 3, scope: !1284)
!1301 = !DILocation(line: 477, column: 8, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 477, column: 7)
!1303 = !DILocation(line: 477, column: 7, scope: !1302)
!1304 = !DILocation(line: 477, column: 7, scope: !1284)
!1305 = !DILocation(line: 478, column: 22, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 477, column: 12)
!1307 = !DILocation(line: 478, column: 21, scope: !1306)
!1308 = !DILocation(line: 478, column: 4, scope: !1306)
!1309 = !DILocation(line: 478, column: 16, scope: !1306)
!1310 = !DILocation(line: 478, column: 19, scope: !1306)
!1311 = !DILocation(line: 480, column: 34, scope: !1306)
!1312 = !DILocation(line: 480, column: 33, scope: !1306)
!1313 = !DILocation(line: 480, column: 46, scope: !1306)
!1314 = !DILocation(line: 480, column: 8, scope: !1306)
!1315 = !DILocation(line: 479, column: 4, scope: !1306)
!1316 = !DILocation(line: 479, column: 16, scope: !1306)
!1317 = !DILocation(line: 479, column: 24, scope: !1306)
!1318 = !DILocation(line: 481, column: 27, scope: !1306)
!1319 = !DILocation(line: 481, column: 26, scope: !1306)
!1320 = !DILocation(line: 481, column: 39, scope: !1306)
!1321 = !DILocation(line: 481, column: 4, scope: !1306)
!1322 = !DILocation(line: 481, column: 16, scope: !1306)
!1323 = !DILocation(line: 481, column: 23, scope: !1306)
!1324 = !DILocation(line: 483, column: 13, scope: !1306)
!1325 = !DILocation(line: 483, column: 25, scope: !1306)
!1326 = !DILocation(line: 483, column: 44, scope: !1306)
!1327 = !DILocation(line: 483, column: 11, scope: !1306)
!1328 = !DILocation(line: 484, column: 35, scope: !1306)
!1329 = !DILocation(line: 484, column: 48, scope: !1306)
!1330 = !DILocation(line: 484, column: 47, scope: !1306)
!1331 = !DILocation(line: 484, column: 52, scope: !1306)
!1332 = !DILocation(line: 484, column: 10, scope: !1306)
!1333 = !DILocation(line: 486, column: 39, scope: !1306)
!1334 = !DILocation(line: 486, column: 52, scope: !1306)
!1335 = !DILocation(line: 486, column: 51, scope: !1306)
!1336 = !DILocation(line: 486, column: 14, scope: !1306)
!1337 = !DILocation(line: 486, column: 12, scope: !1306)
!1338 = !DILocation(line: 487, column: 8, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 487, column: 8)
!1340 = !DILocation(line: 487, column: 8, scope: !1306)
!1341 = !DILocation(line: 488, column: 5, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 487, column: 31)
!1343 = !DILocation(line: 490, column: 3, scope: !1306)
!1344 = !DILocation(line: 492, column: 3, scope: !1284)
!1345 = !DILocation(line: 499, column: 3, scope: !1284)
!1346 = !DILocation(line: 499, column: 13, scope: !1284)
!1347 = !DILocation(line: 499, column: 12, scope: !1284)
!1348 = !DILocation(line: 499, column: 11, scope: !1284)
!1349 = !DILocation(line: 499, column: 17, scope: !1284)
!1350 = !DILocation(line: 499, column: 23, scope: !1284)
!1351 = !DILocation(line: 499, column: 22, scope: !1284)
!1352 = !DILocation(line: 499, column: 35, scope: !1284)
!1353 = !DILocation(line: 499, column: 21, scope: !1284)
!1354 = !DILocation(line: 499, column: 46, scope: !1284)
!1355 = !DILocation(line: 500, column: 24, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 499, column: 64)
!1357 = !DILocation(line: 500, column: 36, scope: !1356)
!1358 = !DILocation(line: 500, column: 51, scope: !1356)
!1359 = !DILocation(line: 501, column: 9, scope: !1356)
!1360 = !DILocation(line: 501, column: 21, scope: !1356)
!1361 = !DILocation(line: 502, column: 9, scope: !1356)
!1362 = !DILocation(line: 502, column: 21, scope: !1356)
!1363 = !DILocation(line: 500, column: 4, scope: !1356)
!1364 = distinct !{!1364, !1345, !1365, !866, !867}
!1365 = !DILocation(line: 503, column: 3, scope: !1284)
!1366 = !DILocation(line: 507, column: 21, scope: !1284)
!1367 = !DILocation(line: 507, column: 20, scope: !1284)
!1368 = !DILocation(line: 507, column: 3, scope: !1284)
!1369 = !DILocation(line: 507, column: 15, scope: !1284)
!1370 = !DILocation(line: 507, column: 18, scope: !1284)
!1371 = !DILocation(line: 509, column: 33, scope: !1284)
!1372 = !DILocation(line: 509, column: 32, scope: !1284)
!1373 = !DILocation(line: 509, column: 45, scope: !1284)
!1374 = !DILocation(line: 509, column: 7, scope: !1284)
!1375 = !DILocation(line: 508, column: 3, scope: !1284)
!1376 = !DILocation(line: 508, column: 15, scope: !1284)
!1377 = !DILocation(line: 508, column: 23, scope: !1284)
!1378 = !DILocation(line: 510, column: 26, scope: !1284)
!1379 = !DILocation(line: 510, column: 25, scope: !1284)
!1380 = !DILocation(line: 510, column: 38, scope: !1284)
!1381 = !DILocation(line: 510, column: 3, scope: !1284)
!1382 = !DILocation(line: 510, column: 15, scope: !1284)
!1383 = !DILocation(line: 510, column: 22, scope: !1284)
!1384 = !DILocation(line: 512, column: 12, scope: !1284)
!1385 = !DILocation(line: 512, column: 24, scope: !1284)
!1386 = !DILocation(line: 512, column: 43, scope: !1284)
!1387 = !DILocation(line: 512, column: 10, scope: !1284)
!1388 = !DILocation(line: 513, column: 34, scope: !1284)
!1389 = !DILocation(line: 513, column: 47, scope: !1284)
!1390 = !DILocation(line: 513, column: 46, scope: !1284)
!1391 = !DILocation(line: 513, column: 51, scope: !1284)
!1392 = !DILocation(line: 513, column: 9, scope: !1284)
!1393 = !DILocation(line: 515, column: 38, scope: !1284)
!1394 = !DILocation(line: 515, column: 51, scope: !1284)
!1395 = !DILocation(line: 515, column: 50, scope: !1284)
!1396 = !DILocation(line: 515, column: 13, scope: !1284)
!1397 = !DILocation(line: 515, column: 11, scope: !1284)
!1398 = !DILocation(line: 516, column: 7, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 516, column: 7)
!1400 = !DILocation(line: 516, column: 7, scope: !1284)
!1401 = !DILocation(line: 517, column: 4, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 516, column: 30)
!1403 = !DILocation(line: 520, column: 3, scope: !1284)
!1404 = !DILocation(line: 525, column: 3, scope: !1284)
!1405 = !DILocation(line: 526, column: 9, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 526, column: 8)
!1407 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 525, column: 6)
!1408 = !DILocation(line: 526, column: 8, scope: !1406)
!1409 = !DILocation(line: 526, column: 8, scope: !1407)
!1410 = !DILocation(line: 528, column: 34, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 526, column: 13)
!1412 = !DILocation(line: 528, column: 47, scope: !1411)
!1413 = !DILocation(line: 528, column: 46, scope: !1411)
!1414 = !DILocation(line: 528, column: 9, scope: !1411)
!1415 = !DILocation(line: 527, column: 13, scope: !1411)
!1416 = !DILocation(line: 529, column: 9, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 529, column: 9)
!1418 = !DILocation(line: 529, column: 9, scope: !1411)
!1419 = !DILocation(line: 530, column: 6, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 529, column: 32)
!1421 = !DILocation(line: 535, column: 12, scope: !1411)
!1422 = !DILocation(line: 535, column: 24, scope: !1411)
!1423 = !DILocation(line: 534, column: 10, scope: !1411)
!1424 = !DILocation(line: 533, column: 5, scope: !1411)
!1425 = !DILocation(line: 536, column: 4, scope: !1411)
!1426 = !DILocation(line: 538, column: 24, scope: !1407)
!1427 = !DILocation(line: 538, column: 36, scope: !1407)
!1428 = !DILocation(line: 538, column: 51, scope: !1407)
!1429 = !DILocation(line: 539, column: 9, scope: !1407)
!1430 = !DILocation(line: 539, column: 21, scope: !1407)
!1431 = !DILocation(line: 540, column: 9, scope: !1407)
!1432 = !DILocation(line: 540, column: 21, scope: !1407)
!1433 = !DILocation(line: 538, column: 4, scope: !1407)
!1434 = !DILocation(line: 542, column: 3, scope: !1407)
!1435 = !DILocation(line: 542, column: 13, scope: !1284)
!1436 = !DILocation(line: 542, column: 12, scope: !1284)
!1437 = distinct !{!1437, !1404, !1438, !866, !867}
!1438 = !DILocation(line: 542, column: 15, scope: !1284)
!1439 = !DILocation(line: 544, column: 3, scope: !1284)
!1440 = !DILocation(line: 548, column: 3, scope: !1284)
!1441 = !DILocation(line: 549, column: 9, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 549, column: 8)
!1443 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 548, column: 6)
!1444 = !DILocation(line: 549, column: 8, scope: !1442)
!1445 = !DILocation(line: 549, column: 8, scope: !1443)
!1446 = !DILocation(line: 555, column: 12, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 555, column: 9)
!1448 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 549, column: 13)
!1449 = !DILocation(line: 555, column: 11, scope: !1447)
!1450 = !DILocation(line: 555, column: 24, scope: !1447)
!1451 = !DILocation(line: 555, column: 10, scope: !1447)
!1452 = !DILocation(line: 555, column: 35, scope: !1447)
!1453 = !DILocation(line: 556, column: 9, scope: !1447)
!1454 = !DILocation(line: 556, column: 15, scope: !1447)
!1455 = !DILocation(line: 556, column: 14, scope: !1447)
!1456 = !DILocation(line: 556, column: 27, scope: !1447)
!1457 = !DILocation(line: 556, column: 13, scope: !1447)
!1458 = !DILocation(line: 556, column: 38, scope: !1447)
!1459 = !DILocation(line: 555, column: 9, scope: !1448)
!1460 = !DILocation(line: 558, column: 32, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 557, column: 27)
!1462 = !DILocation(line: 558, column: 31, scope: !1461)
!1463 = !DILocation(line: 559, column: 9, scope: !1461)
!1464 = !DILocation(line: 558, column: 6, scope: !1461)
!1465 = !DILocation(line: 560, column: 28, scope: !1461)
!1466 = !DILocation(line: 560, column: 27, scope: !1461)
!1467 = !DILocation(line: 560, column: 40, scope: !1461)
!1468 = !DILocation(line: 560, column: 6, scope: !1461)
!1469 = !DILocation(line: 561, column: 8, scope: !1461)
!1470 = !DILocation(line: 561, column: 7, scope: !1461)
!1471 = !DILocation(line: 561, column: 20, scope: !1461)
!1472 = !DILocation(line: 561, column: 25, scope: !1461)
!1473 = !DILocation(line: 562, column: 33, scope: !1461)
!1474 = !DILocation(line: 562, column: 32, scope: !1461)
!1475 = !DILocation(line: 562, column: 6, scope: !1461)
!1476 = !DILocation(line: 563, column: 5, scope: !1461)
!1477 = !DILocation(line: 566, column: 34, scope: !1448)
!1478 = !DILocation(line: 566, column: 47, scope: !1448)
!1479 = !DILocation(line: 566, column: 46, scope: !1448)
!1480 = !DILocation(line: 566, column: 9, scope: !1448)
!1481 = !DILocation(line: 565, column: 13, scope: !1448)
!1482 = !DILocation(line: 567, column: 9, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 567, column: 9)
!1484 = !DILocation(line: 567, column: 9, scope: !1448)
!1485 = !DILocation(line: 568, column: 6, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 567, column: 32)
!1487 = !DILocation(line: 570, column: 4, scope: !1448)
!1488 = !DILocation(line: 572, column: 24, scope: !1443)
!1489 = !DILocation(line: 572, column: 36, scope: !1443)
!1490 = !DILocation(line: 572, column: 51, scope: !1443)
!1491 = !DILocation(line: 573, column: 9, scope: !1443)
!1492 = !DILocation(line: 573, column: 21, scope: !1443)
!1493 = !DILocation(line: 574, column: 9, scope: !1443)
!1494 = !DILocation(line: 574, column: 21, scope: !1443)
!1495 = !DILocation(line: 572, column: 4, scope: !1443)
!1496 = !DILocation(line: 576, column: 3, scope: !1443)
!1497 = !DILocation(line: 576, column: 13, scope: !1284)
!1498 = !DILocation(line: 576, column: 12, scope: !1284)
!1499 = distinct !{!1499, !1440, !1500, !866, !867}
!1500 = !DILocation(line: 576, column: 15, scope: !1284)
!1501 = !DILocation(line: 588, column: 3, scope: !1284)
!1502 = !DILocation(line: 588, column: 15, scope: !1284)
!1503 = !DILocation(line: 588, column: 23, scope: !1284)
!1504 = !DILocation(line: 589, column: 32, scope: !1284)
!1505 = !DILocation(line: 589, column: 44, scope: !1284)
!1506 = !DILocation(line: 589, column: 3, scope: !1284)
!1507 = !DILocation(line: 589, column: 15, scope: !1284)
!1508 = !DILocation(line: 589, column: 30, scope: !1284)
!1509 = !DILocation(line: 591, column: 7, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 591, column: 7)
!1511 = !DILocation(line: 591, column: 19, scope: !1510)
!1512 = !DILocation(line: 591, column: 31, scope: !1510)
!1513 = !DILocation(line: 591, column: 7, scope: !1284)
!1514 = !DILocation(line: 600, column: 4, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 591, column: 58)
!1516 = !DILocation(line: 601, column: 4, scope: !1515)
!1517 = !DILocation(line: 603, column: 3, scope: !1284)
!1518 = !DILocation(line: 608, column: 36, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 608, column: 6)
!1520 = !DILocation(line: 608, column: 48, scope: !1519)
!1521 = !DILocation(line: 608, column: 6, scope: !1519)
!1522 = !DILocation(line: 608, column: 6, scope: !1251)
!1523 = !DILocation(line: 609, column: 23, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 608, column: 64)
!1525 = !DILocation(line: 609, column: 35, scope: !1524)
!1526 = !DILocation(line: 609, column: 50, scope: !1524)
!1527 = !DILocation(line: 610, column: 8, scope: !1524)
!1528 = !DILocation(line: 610, column: 20, scope: !1524)
!1529 = !DILocation(line: 611, column: 8, scope: !1524)
!1530 = !DILocation(line: 611, column: 20, scope: !1524)
!1531 = !DILocation(line: 609, column: 3, scope: !1524)
!1532 = !DILocation(line: 613, column: 2, scope: !1524)
!1533 = !DILocation(line: 614, column: 4, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 613, column: 9)
!1535 = !DILocation(line: 614, column: 7, scope: !1534)
!1536 = !DILocation(line: 617, column: 2, scope: !1251)
!1537 = !DILocation(line: 618, column: 1, scope: !1251)
!1538 = !DISubprogram(name: "acpi_ps_complete_this_op", scope: !951, file: !951, line: 124, type: !1539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!5, !60, !96}
!1541 = !DISubprogram(name: "acpi_ps_pop_scope", scope: !951, file: !951, line: 150, type: !1542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{null, !954, !813, !1544, !1544}
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1545 = !DISubprogram(name: "acpi_ut_delete_generic_state", scope: !1546, file: !1546, line: 531, type: !1547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1546 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1547 = !DISubroutineType(types: !1548)
!1548 = !{null, !664}
!1549 = !DISubprogram(name: "acpi_ut_pop_generic_state", scope: !1546, file: !1546, line: 510, type: !1550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!664, !1552}
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!1553 = !DISubprogram(name: "acpi_ns_delete_children", scope: !1554, file: !1554, line: 142, type: !1555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1554 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1555 = !DISubroutineType(types: !1556)
!1556 = !{null, !109}
!1557 = !DISubprogram(name: "acpi_ns_remove_node", scope: !1554, file: !1554, line: 133, type: !1555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1558 = !DISubprogram(name: "acpi_ps_delete_parse_tree", scope: !951, file: !951, line: 195, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1559 = !DISubprogram(name: "acpi_info", scope: !959, file: !959, line: 917, type: !1560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{null, !962, null}
!1562 = !DISubprogram(name: "acpi_ps_has_completed_scope", scope: !951, file: !951, line: 147, type: !1563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!21, !954}
!1565 = distinct !DISubprogram(name: "acpi_ps_complete_final_op", scope: !3, file: !3, line: 636, type: !964, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1566)
!1566 = !{!1567, !1568, !1569, !1570}
!1567 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1565, file: !3, line: 636, type: !60)
!1568 = !DILocalVariable(name: "op", arg: 2, scope: !1565, file: !3, line: 637, type: !96)
!1569 = !DILocalVariable(name: "status", arg: 3, scope: !1565, file: !3, line: 637, type: !5)
!1570 = !DILocalVariable(name: "status2", scope: !1565, file: !3, line: 639, type: !5)
!1571 = !DILocation(line: 636, column: 51, scope: !1565)
!1572 = !DILocation(line: 637, column: 31, scope: !1565)
!1573 = !DILocation(line: 637, column: 47, scope: !1565)
!1574 = !DILocation(line: 639, column: 2, scope: !1565)
!1575 = !DILocation(line: 639, column: 14, scope: !1565)
!1576 = !DILocation(line: 651, column: 2, scope: !1565)
!1577 = !DILocation(line: 652, column: 7, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 652, column: 7)
!1579 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 651, column: 5)
!1580 = !DILocation(line: 652, column: 7, scope: !1579)
!1581 = !DILocation(line: 653, column: 8, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 653, column: 8)
!1583 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 652, column: 11)
!1584 = !DILocation(line: 653, column: 20, scope: !1582)
!1585 = !DILocation(line: 653, column: 39, scope: !1582)
!1586 = !DILocation(line: 653, column: 8, scope: !1583)
!1587 = !DILocation(line: 654, column: 22, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 653, column: 48)
!1589 = !DILocation(line: 654, column: 5, scope: !1588)
!1590 = !DILocation(line: 654, column: 17, scope: !1588)
!1591 = !DILocation(line: 654, column: 20, scope: !1588)
!1592 = !DILocation(line: 656, column: 33, scope: !1588)
!1593 = !DILocation(line: 657, column: 12, scope: !1588)
!1594 = !DILocation(line: 656, column: 9, scope: !1588)
!1595 = !DILocation(line: 655, column: 5, scope: !1588)
!1596 = !DILocation(line: 655, column: 17, scope: !1588)
!1597 = !DILocation(line: 655, column: 25, scope: !1588)
!1598 = !DILocation(line: 658, column: 26, scope: !1588)
!1599 = !DILocation(line: 658, column: 37, scope: !1588)
!1600 = !DILocation(line: 658, column: 5, scope: !1588)
!1601 = !DILocation(line: 658, column: 17, scope: !1588)
!1602 = !DILocation(line: 658, column: 24, scope: !1588)
!1603 = !DILocation(line: 661, column: 9, scope: !1588)
!1604 = !DILocation(line: 661, column: 21, scope: !1588)
!1605 = !DILocation(line: 661, column: 40, scope: !1588)
!1606 = !DILocation(line: 660, column: 12, scope: !1588)
!1607 = !DILocation(line: 663, column: 34, scope: !1588)
!1608 = !DILocation(line: 663, column: 46, scope: !1588)
!1609 = !DILocation(line: 664, column: 13, scope: !1588)
!1610 = !DILocation(line: 663, column: 9, scope: !1588)
!1611 = !DILocation(line: 662, column: 12, scope: !1588)
!1612 = !DILocation(line: 665, column: 9, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 665, column: 9)
!1614 = !DILocation(line: 665, column: 16, scope: !1613)
!1615 = !DILocation(line: 665, column: 9, scope: !1588)
!1616 = !DILocation(line: 667, column: 30, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 665, column: 36)
!1618 = !DILocation(line: 667, column: 10, scope: !1617)
!1619 = !DILocation(line: 666, column: 13, scope: !1617)
!1620 = !DILocation(line: 669, column: 10, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 669, column: 10)
!1622 = !DILocation(line: 669, column: 10, scope: !1617)
!1623 = !DILocation(line: 670, column: 7, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 669, column: 32)
!1625 = !DILocation(line: 672, column: 5, scope: !1617)
!1626 = !DILocation(line: 674, column: 9, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 674, column: 9)
!1628 = !DILocation(line: 674, column: 16, scope: !1627)
!1629 = !DILocation(line: 674, column: 9, scope: !1588)
!1630 = !DILocation(line: 675, column: 13, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 674, column: 38)
!1632 = !DILocation(line: 678, column: 6, scope: !1631)
!1633 = !DILocation(line: 679, column: 11, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 679, column: 11)
!1635 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 678, column: 9)
!1636 = !DILocation(line: 679, column: 11, scope: !1635)
!1637 = !DILocation(line: 682, column: 13, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 679, column: 15)
!1639 = !DILocation(line: 682, column: 25, scope: !1638)
!1640 = !DILocation(line: 681, column: 12, scope: !1638)
!1641 = !DILocation(line: 680, column: 16, scope: !1638)
!1642 = !DILocation(line: 683, column: 12, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 683, column: 12)
!1644 = !DILocation(line: 683, column: 12, scope: !1638)
!1645 = !DILocation(line: 685, column: 9, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 684, column: 23)
!1647 = !DILocation(line: 688, column: 7, scope: !1638)
!1648 = !DILocation(line: 691, column: 12, scope: !1635)
!1649 = !DILocation(line: 692, column: 12, scope: !1635)
!1650 = !DILocation(line: 694, column: 12, scope: !1635)
!1651 = !DILocation(line: 695, column: 11, scope: !1635)
!1652 = !DILocation(line: 696, column: 12, scope: !1635)
!1653 = !DILocation(line: 697, column: 11, scope: !1635)
!1654 = !DILocation(line: 690, column: 7, scope: !1635)
!1655 = !DILocation(line: 699, column: 6, scope: !1635)
!1656 = !DILocation(line: 699, column: 15, scope: !1631)
!1657 = distinct !{!1657, !1632, !1658, !866, !867}
!1658 = !DILocation(line: 699, column: 17, scope: !1631)
!1659 = !DILocation(line: 701, column: 6, scope: !1631)
!1660 = !DILocation(line: 704, column: 14, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 704, column: 14)
!1662 = !DILocation(line: 704, column: 14, scope: !1627)
!1663 = !DILocation(line: 709, column: 35, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 704, column: 36)
!1665 = !DILocation(line: 710, column: 14, scope: !1664)
!1666 = !DILocation(line: 709, column: 10, scope: !1664)
!1667 = !DILocation(line: 711, column: 6, scope: !1664)
!1668 = !DILocation(line: 713, column: 4, scope: !1588)
!1669 = !DILocation(line: 715, column: 39, scope: !1583)
!1670 = !DILocation(line: 715, column: 51, scope: !1583)
!1671 = !DILocation(line: 715, column: 14, scope: !1583)
!1672 = !DILocation(line: 715, column: 12, scope: !1583)
!1673 = !DILocation(line: 716, column: 8, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 716, column: 8)
!1675 = !DILocation(line: 716, column: 8, scope: !1583)
!1676 = !DILocation(line: 717, column: 5, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 716, column: 31)
!1678 = !DILocation(line: 719, column: 3, scope: !1583)
!1679 = !DILocation(line: 721, column: 23, scope: !1579)
!1680 = !DILocation(line: 721, column: 35, scope: !1579)
!1681 = !DILocation(line: 722, column: 8, scope: !1579)
!1682 = !DILocation(line: 722, column: 20, scope: !1579)
!1683 = !DILocation(line: 723, column: 8, scope: !1579)
!1684 = !DILocation(line: 723, column: 20, scope: !1579)
!1685 = !DILocation(line: 721, column: 3, scope: !1579)
!1686 = !DILocation(line: 725, column: 2, scope: !1579)
!1687 = !DILocation(line: 725, column: 11, scope: !1565)
!1688 = distinct !{!1688, !1576, !1689, !866, !867}
!1689 = !DILocation(line: 725, column: 13, scope: !1565)
!1690 = !DILocation(line: 727, column: 2, scope: !1565)
!1691 = !DILocation(line: 728, column: 1, scope: !1565)
!1692 = !DISubprogram(name: "acpi_ps_peek_opcode", scope: !951, file: !951, line: 121, type: !1693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!12, !954}
!1695 = !DISubprogram(name: "acpi_error", scope: !959, file: !959, line: 901, type: !1696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{null, !962, !7, !962, null}
!1698 = !DISubprogram(name: "acpi_ps_get_opcode_size", scope: !951, file: !951, line: 119, type: !1699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!7, !7}
