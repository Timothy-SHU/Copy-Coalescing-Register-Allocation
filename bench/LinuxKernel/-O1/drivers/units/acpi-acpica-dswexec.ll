; ModuleID = 'drivers/acpi/acpica/dswexec.c'
source_filename = "drivers/acpi/acpica/dswexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_common_state = type { ptr, i8, i8, i16, i16 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%struct.acpi_control_state = type { ptr, i8, i8, i16, i16, i16, ptr, ptr, ptr, i64 }
%struct.acpi_parse_obj_named = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8, ptr, ptr, i32, i32 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_parse_obj_asl = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8, ptr, ptr, ptr, i8, ptr, ptr, ptr, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }

@_acpi_module_name = internal constant [8 x i8] c"dswexec\00", align 1, !dbg !0
@.str = private unnamed_addr constant [47 x i8] c"Could not get result from predicate evaluation\00", align 1, !dbg !783
@.str.1 = private unnamed_addr constant [33 x i8] c"No predicate ObjDesc=%p State=%p\00", align 1, !dbg !788
@.str.2 = private unnamed_addr constant [61 x i8] c"Bad predicate (not an integer) ObjDesc=%p State=%p Type=0x%X\00", align 1, !dbg !793
@.str.3 = private unnamed_addr constant [20 x i8] c"Unknown opcode 0x%X\00", align 1, !dbg !798
@acpi_gbl_op_type_dispatch = internal global [12 x ptr] [ptr @acpi_ex_opcode_0A_0T_1R, ptr @acpi_ex_opcode_1A_0T_0R, ptr @acpi_ex_opcode_1A_0T_1R, ptr null, ptr @acpi_ex_opcode_1A_1T_1R, ptr @acpi_ex_opcode_2A_0T_0R, ptr @acpi_ex_opcode_2A_0T_1R, ptr @acpi_ex_opcode_2A_1T_1R, ptr @acpi_ex_opcode_2A_2T_1R, ptr @acpi_ex_opcode_3A_0T_0R, ptr @acpi_ex_opcode_3A_1T_1R, ptr @acpi_ex_opcode_6A_0T_1R], align 16, !dbg !812
@.str.4 = private unnamed_addr constant [34 x i8] c"While resolving operands for [%s]\00", align 1, !dbg !800
@.str.5 = private unnamed_addr constant [28 x i8] c"Undefined opcode type Op=%p\00", align 1, !dbg !805
@.str.6 = private unnamed_addr constant [61 x i8] c"Unimplemented opcode, class=0x%X type=0x%X Opcode=0x%X Op=%p\00", align 1, !dbg !810

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_get_predicate_value(ptr noundef %walk_state, ptr noundef %result_obj) #0 align 16 !dbg !829 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %result_obj.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %local_obj_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !833, metadata !DIExpression()), !dbg !839
  store ptr %result_obj, ptr %result_obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result_obj.addr, metadata !834, metadata !DIExpression()), !dbg !840
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !841
  call void @llvm.dbg.declare(metadata ptr %status, metadata !835, metadata !DIExpression()), !dbg !842
  store i32 0, ptr %status, align 4, !dbg !842
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #5, !dbg !843
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !836, metadata !DIExpression()), !dbg !844
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_obj_desc) #5, !dbg !845
  call void @llvm.dbg.declare(metadata ptr %local_obj_desc, metadata !837, metadata !DIExpression()), !dbg !846
  store ptr null, ptr %local_obj_desc, align 8, !dbg !846
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !847
  %control_state = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 32, !dbg !848
  %1 = load ptr, ptr %control_state, align 8, !dbg !848
  %state = getelementptr inbounds %struct.acpi_common_state, ptr %1, i32 0, i32 4, !dbg !849
  store i16 0, ptr %state, align 4, !dbg !850
  %2 = load ptr, ptr %result_obj.addr, align 8, !dbg !851
  %tobool = icmp ne ptr %2, null, !dbg !851
  br i1 %tobool, label %if.then, label %if.else, !dbg !853

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !854
  %call = call i32 @acpi_ds_result_pop(ptr noundef %obj_desc, ptr noundef %3) #6, !dbg !856
  store i32 %call, ptr %status, align 4, !dbg !857
  %4 = load i32, ptr %status, align 4, !dbg !858
  %tobool1 = icmp ne i32 %4, 0, !dbg !858
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !860

if.then2:                                         ; preds = %if.then
  %5 = load i32, ptr %status, align 4, !dbg !861
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 72, i32 noundef %5, ptr noundef @.str) #6, !dbg !861
  %6 = load i32, ptr %status, align 4, !dbg !863
  store i32 %6, ptr %retval, align 4, !dbg !863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !863

if.end:                                           ; preds = %if.then
  br label %if.end13, !dbg !864

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !865
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !867
  %op = getelementptr inbounds %struct.acpi_walk_state, ptr %8, i32 0, i32 40, !dbg !868
  %9 = load ptr, ptr %op, align 8, !dbg !868
  %call3 = call i32 @acpi_ds_create_operand(ptr noundef %7, ptr noundef %9, i32 noundef 0) #6, !dbg !869
  store i32 %call3, ptr %status, align 4, !dbg !870
  %10 = load i32, ptr %status, align 4, !dbg !871
  %tobool4 = icmp ne i32 %10, 0, !dbg !871
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !873

if.then5:                                         ; preds = %if.else
  %11 = load i32, ptr %status, align 4, !dbg !874
  store i32 %11, ptr %retval, align 4, !dbg !874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !874

if.end6:                                          ; preds = %if.else
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !876
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 28, !dbg !877
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !876
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !878
  %call7 = call i32 @acpi_ex_resolve_to_value(ptr noundef %arrayidx, ptr noundef %13) #6, !dbg !879
  store i32 %call7, ptr %status, align 4, !dbg !880
  %14 = load i32, ptr %status, align 4, !dbg !881
  %tobool8 = icmp ne i32 %14, 0, !dbg !881
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !883

if.then9:                                         ; preds = %if.end6
  %15 = load i32, ptr %status, align 4, !dbg !884
  store i32 %15, ptr %retval, align 4, !dbg !884
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !884

if.end10:                                         ; preds = %if.end6
  %16 = load ptr, ptr %walk_state.addr, align 8, !dbg !886
  %operands11 = getelementptr inbounds %struct.acpi_walk_state, ptr %16, i32 0, i32 28, !dbg !887
  %arrayidx12 = getelementptr [9 x ptr], ptr %operands11, i64 0, i64 0, !dbg !886
  %17 = load ptr, ptr %arrayidx12, align 8, !dbg !886
  store ptr %17, ptr %obj_desc, align 8, !dbg !888
  br label %if.end13

if.end13:                                         ; preds = %if.end10, %if.end
  %18 = load ptr, ptr %obj_desc, align 8, !dbg !889
  %tobool14 = icmp ne ptr %18, null, !dbg !889
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !891

if.then15:                                        ; preds = %if.end13
  %19 = load ptr, ptr %obj_desc, align 8, !dbg !892
  %20 = load ptr, ptr %walk_state.addr, align 8, !dbg !892
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 94, ptr noundef @.str.1, ptr noundef %19, ptr noundef %20) #6, !dbg !892
  store i32 12290, ptr %retval, align 4, !dbg !894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !894

if.end16:                                         ; preds = %if.end13
  %21 = load ptr, ptr %obj_desc, align 8, !dbg !895
  %call17 = call i32 @acpi_ex_convert_to_integer(ptr noundef %21, ptr noundef %local_obj_desc, i32 noundef 1) #6, !dbg !896
  store i32 %call17, ptr %status, align 4, !dbg !897
  %22 = load i32, ptr %status, align 4, !dbg !898
  %tobool18 = icmp ne i32 %22, 0, !dbg !898
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !900

if.then19:                                        ; preds = %if.end16
  br label %cleanup, !dbg !901

if.end20:                                         ; preds = %if.end16
  %23 = load ptr, ptr %local_obj_desc, align 8, !dbg !903
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %23, i32 0, i32 2, !dbg !905
  %24 = load i8, ptr %type, align 1, !dbg !905
  %conv = zext i8 %24 to i32, !dbg !903
  %cmp = icmp ne i32 %conv, 1, !dbg !906
  br i1 %cmp, label %if.then22, label %if.end25, !dbg !907

if.then22:                                        ; preds = %if.end20
  %25 = load ptr, ptr %obj_desc, align 8, !dbg !908
  %26 = load ptr, ptr %walk_state.addr, align 8, !dbg !908
  %27 = load ptr, ptr %obj_desc, align 8, !dbg !908
  %type23 = getelementptr inbounds %struct.acpi_object_common, ptr %27, i32 0, i32 2, !dbg !908
  %28 = load i8, ptr %type23, align 1, !dbg !908
  %conv24 = zext i8 %28 to i32, !dbg !908
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 112, ptr noundef @.str.2, ptr noundef %25, ptr noundef %26, i32 noundef %conv24) #6, !dbg !908
  store i32 12291, ptr %status, align 4, !dbg !910
  br label %cleanup, !dbg !911

if.end25:                                         ; preds = %if.end20
  %29 = load ptr, ptr %local_obj_desc, align 8, !dbg !912
  %call26 = call zeroext i8 @acpi_ex_truncate_for32bit_table(ptr noundef %29) #6, !dbg !913
  %30 = load ptr, ptr %local_obj_desc, align 8, !dbg !914
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %30, i32 0, i32 6, !dbg !916
  %31 = load i64, ptr %value, align 8, !dbg !916
  %tobool27 = icmp ne i64 %31, 0, !dbg !914
  br i1 %tobool27, label %if.then28, label %if.else31, !dbg !917

if.then28:                                        ; preds = %if.end25
  %32 = load ptr, ptr %walk_state.addr, align 8, !dbg !918
  %control_state29 = getelementptr inbounds %struct.acpi_walk_state, ptr %32, i32 0, i32 32, !dbg !920
  %33 = load ptr, ptr %control_state29, align 8, !dbg !920
  %value30 = getelementptr inbounds %struct.acpi_common_state, ptr %33, i32 0, i32 3, !dbg !921
  store i16 1, ptr %value30, align 2, !dbg !922
  br label %if.end34, !dbg !923

if.else31:                                        ; preds = %if.end25
  %34 = load ptr, ptr %walk_state.addr, align 8, !dbg !924
  %control_state32 = getelementptr inbounds %struct.acpi_walk_state, ptr %34, i32 0, i32 32, !dbg !926
  %35 = load ptr, ptr %control_state32, align 8, !dbg !926
  %value33 = getelementptr inbounds %struct.acpi_common_state, ptr %35, i32 0, i32 3, !dbg !927
  store i16 0, ptr %value33, align 2, !dbg !928
  store i32 16389, ptr %status, align 4, !dbg !929
  br label %if.end34

if.end34:                                         ; preds = %if.else31, %if.then28
  %36 = load ptr, ptr %local_obj_desc, align 8, !dbg !930
  %37 = load ptr, ptr %walk_state.addr, align 8, !dbg !931
  %call35 = call zeroext i8 @acpi_ds_do_implicit_return(ptr noundef %36, ptr noundef %37, i8 noundef zeroext 1) #6, !dbg !932
  br label %cleanup, !dbg !933

cleanup:                                          ; preds = %if.end34, %if.then22, %if.then19
  call void @llvm.dbg.label(metadata !838), !dbg !934
  %38 = load ptr, ptr %local_obj_desc, align 8, !dbg !935
  %39 = load ptr, ptr %walk_state.addr, align 8, !dbg !936
  call void @acpi_db_display_result_object(ptr noundef %38, ptr noundef %39) #6, !dbg !937
  %40 = load ptr, ptr %local_obj_desc, align 8, !dbg !938
  %41 = load ptr, ptr %obj_desc, align 8, !dbg !940
  %cmp36 = icmp ne ptr %40, %41, !dbg !941
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !942

if.then38:                                        ; preds = %cleanup
  %42 = load ptr, ptr %local_obj_desc, align 8, !dbg !943
  call void @acpi_ut_remove_reference(ptr noundef %42) #6, !dbg !945
  br label %if.end39, !dbg !946

if.end39:                                         ; preds = %if.then38, %cleanup
  %43 = load ptr, ptr %obj_desc, align 8, !dbg !947
  call void @acpi_ut_remove_reference(ptr noundef %43) #6, !dbg !948
  %44 = load ptr, ptr %walk_state.addr, align 8, !dbg !949
  %control_state40 = getelementptr inbounds %struct.acpi_walk_state, ptr %44, i32 0, i32 32, !dbg !950
  %45 = load ptr, ptr %control_state40, align 8, !dbg !950
  %state41 = getelementptr inbounds %struct.acpi_common_state, ptr %45, i32 0, i32 4, !dbg !951
  store i16 192, ptr %state41, align 4, !dbg !952
  %46 = load i32, ptr %status, align 4, !dbg !953
  store i32 %46, ptr %retval, align 4, !dbg !953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !953

cleanup42:                                        ; preds = %if.end39, %if.then15, %if.then9, %if.then5, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_obj_desc) #5, !dbg !954
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #5, !dbg !954
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !954
  %47 = load i32, ptr %retval, align 4, !dbg !954
  ret i32 %47, !dbg !954
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !955 dso_local i32 @acpi_ds_result_pop(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !959 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !964 dso_local i32 @acpi_ds_create_operand(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !967 dso_local i32 @acpi_ex_resolve_to_value(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !969 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !972 dso_local i32 @acpi_ex_convert_to_integer(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !975 dso_local zeroext i8 @acpi_ex_truncate_for32bit_table(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !978 dso_local zeroext i8 @acpi_ds_do_implicit_return(ptr noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_db_display_result_object(ptr noundef %obj_desc, ptr noundef %walk_state) #4 align 16 !dbg !981 {
entry:
  %obj_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !986, metadata !DIExpression()), !dbg !988
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !987, metadata !DIExpression()), !dbg !988
  ret void, !dbg !988
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !989 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_exec_begin_op(ptr noundef %walk_state, ptr noundef %out_op) #0 align 16 !dbg !993 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %out_op.addr = alloca ptr, align 8
  %op = alloca ptr, align 8
  %status = alloca i32, align 4
  %opcode_class = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !995, metadata !DIExpression()), !dbg !1001
  store ptr %out_op, ptr %out_op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_op.addr, metadata !996, metadata !DIExpression()), !dbg !1002
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #5, !dbg !1003
  call void @llvm.dbg.declare(metadata ptr %op, metadata !997, metadata !DIExpression()), !dbg !1004
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1005
  call void @llvm.dbg.declare(metadata ptr %status, metadata !998, metadata !DIExpression()), !dbg !1006
  store i32 0, ptr %status, align 4, !dbg !1006
  call void @llvm.lifetime.start.p0(i64 4, ptr %opcode_class) #5, !dbg !1007
  call void @llvm.dbg.declare(metadata ptr %opcode_class, metadata !999, metadata !DIExpression()), !dbg !1008
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1009
  %op1 = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 40, !dbg !1010
  %1 = load ptr, ptr %op1, align 8, !dbg !1010
  store ptr %1, ptr %op, align 8, !dbg !1011
  %2 = load ptr, ptr %op, align 8, !dbg !1012
  %tobool = icmp ne ptr %2, null, !dbg !1012
  br i1 %tobool, label %if.end16, label %if.then, !dbg !1014

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1015
  %4 = load ptr, ptr %out_op.addr, align 8, !dbg !1017
  %call = call i32 @acpi_ds_load2_begin_op(ptr noundef %3, ptr noundef %4) #6, !dbg !1018
  store i32 %call, ptr %status, align 4, !dbg !1019
  %5 = load i32, ptr %status, align 4, !dbg !1020
  %tobool2 = icmp ne i32 %5, 0, !dbg !1020
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !1022

if.then3:                                         ; preds = %if.then
  br label %error_exit, !dbg !1023

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %out_op.addr, align 8, !dbg !1025
  %7 = load ptr, ptr %6, align 8, !dbg !1026
  store ptr %7, ptr %op, align 8, !dbg !1027
  %8 = load ptr, ptr %op, align 8, !dbg !1028
  %9 = load ptr, ptr %walk_state.addr, align 8, !dbg !1029
  %op4 = getelementptr inbounds %struct.acpi_walk_state, ptr %9, i32 0, i32 40, !dbg !1030
  store ptr %8, ptr %op4, align 8, !dbg !1031
  %10 = load ptr, ptr %op, align 8, !dbg !1032
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %10, i32 0, i32 3, !dbg !1033
  %11 = load i16, ptr %aml_opcode, align 2, !dbg !1033
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !1034
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 3, !dbg !1035
  store i16 %11, ptr %opcode, align 2, !dbg !1036
  %13 = load ptr, ptr %op, align 8, !dbg !1037
  %aml_opcode5 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %13, i32 0, i32 3, !dbg !1038
  %14 = load i16, ptr %aml_opcode5, align 2, !dbg !1038
  %call6 = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %14) #6, !dbg !1039
  %15 = load ptr, ptr %walk_state.addr, align 8, !dbg !1040
  %op_info = getelementptr inbounds %struct.acpi_walk_state, ptr %15, i32 0, i32 41, !dbg !1041
  store ptr %call6, ptr %op_info, align 8, !dbg !1042
  %16 = load ptr, ptr %walk_state.addr, align 8, !dbg !1043
  %op_info7 = getelementptr inbounds %struct.acpi_walk_state, ptr %16, i32 0, i32 41, !dbg !1045
  %17 = load ptr, ptr %op_info7, align 8, !dbg !1045
  %object_type = getelementptr inbounds %struct.acpi_opcode_info, ptr %17, i32 0, i32 3, !dbg !1046
  %18 = load i8, ptr %object_type, align 2, !dbg !1046
  %conv = zext i8 %18 to i32, !dbg !1043
  %call8 = call i32 @acpi_ns_opens_scope(i32 noundef %conv) #6, !dbg !1047
  %tobool9 = icmp ne i32 %call8, 0, !dbg !1047
  br i1 %tobool9, label %if.then10, label %if.end15, !dbg !1048

if.then10:                                        ; preds = %if.end
  %19 = load ptr, ptr %walk_state.addr, align 8, !dbg !1049
  %call11 = call i32 @acpi_ds_scope_stack_pop(ptr noundef %19) #6, !dbg !1051
  store i32 %call11, ptr %status, align 4, !dbg !1052
  %20 = load i32, ptr %status, align 4, !dbg !1053
  %tobool12 = icmp ne i32 %20, 0, !dbg !1053
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !1055

if.then13:                                        ; preds = %if.then10
  br label %error_exit, !dbg !1056

if.end14:                                         ; preds = %if.then10
  br label %if.end15, !dbg !1058

if.end15:                                         ; preds = %if.end14, %if.end
  br label %if.end16, !dbg !1059

if.end16:                                         ; preds = %if.end15, %entry
  %21 = load ptr, ptr %op, align 8, !dbg !1060
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !1062
  %origin = getelementptr inbounds %struct.acpi_walk_state, ptr %22, i32 0, i32 42, !dbg !1063
  %23 = load ptr, ptr %origin, align 8, !dbg !1063
  %cmp = icmp eq ptr %21, %23, !dbg !1064
  br i1 %cmp, label %if.then18, label %if.end22, !dbg !1065

if.then18:                                        ; preds = %if.end16
  %24 = load ptr, ptr %out_op.addr, align 8, !dbg !1066
  %tobool19 = icmp ne ptr %24, null, !dbg !1066
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1069

if.then20:                                        ; preds = %if.then18
  %25 = load ptr, ptr %op, align 8, !dbg !1070
  %26 = load ptr, ptr %out_op.addr, align 8, !dbg !1072
  store ptr %25, ptr %26, align 8, !dbg !1073
  br label %if.end21, !dbg !1074

if.end21:                                         ; preds = %if.then20, %if.then18
  store i32 0, ptr %retval, align 4, !dbg !1075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1075

if.end22:                                         ; preds = %if.end16
  %27 = load ptr, ptr %walk_state.addr, align 8, !dbg !1076
  %control_state = getelementptr inbounds %struct.acpi_walk_state, ptr %27, i32 0, i32 32, !dbg !1078
  %28 = load ptr, ptr %control_state, align 8, !dbg !1078
  %tobool23 = icmp ne ptr %28, null, !dbg !1079
  br i1 %tobool23, label %land.lhs.true, label %if.end32, !dbg !1080

land.lhs.true:                                    ; preds = %if.end22
  %29 = load ptr, ptr %walk_state.addr, align 8, !dbg !1081
  %control_state24 = getelementptr inbounds %struct.acpi_walk_state, ptr %29, i32 0, i32 32, !dbg !1082
  %30 = load ptr, ptr %control_state24, align 8, !dbg !1082
  %state = getelementptr inbounds %struct.acpi_common_state, ptr %30, i32 0, i32 4, !dbg !1083
  %31 = load i16, ptr %state, align 4, !dbg !1083
  %conv25 = zext i16 %31 to i32, !dbg !1081
  %cmp26 = icmp eq i32 %conv25, 193, !dbg !1084
  br i1 %cmp26, label %if.then28, label %if.end32, !dbg !1085

if.then28:                                        ; preds = %land.lhs.true
  %32 = load ptr, ptr %walk_state.addr, align 8, !dbg !1086
  %control_state29 = getelementptr inbounds %struct.acpi_walk_state, ptr %32, i32 0, i32 32, !dbg !1088
  %33 = load ptr, ptr %control_state29, align 8, !dbg !1088
  %state30 = getelementptr inbounds %struct.acpi_common_state, ptr %33, i32 0, i32 4, !dbg !1089
  store i16 194, ptr %state30, align 4, !dbg !1090
  %34 = load ptr, ptr %op, align 8, !dbg !1091
  %35 = load ptr, ptr %walk_state.addr, align 8, !dbg !1092
  %control_state31 = getelementptr inbounds %struct.acpi_walk_state, ptr %35, i32 0, i32 32, !dbg !1093
  %36 = load ptr, ptr %control_state31, align 8, !dbg !1093
  %predicate_op = getelementptr inbounds %struct.acpi_control_state, ptr %36, i32 0, i32 6, !dbg !1094
  store ptr %34, ptr %predicate_op, align 8, !dbg !1095
  br label %if.end32, !dbg !1096

if.end32:                                         ; preds = %if.then28, %land.lhs.true, %if.end22
  %37 = load ptr, ptr %walk_state.addr, align 8, !dbg !1097
  %op_info33 = getelementptr inbounds %struct.acpi_walk_state, ptr %37, i32 0, i32 41, !dbg !1098
  %38 = load ptr, ptr %op_info33, align 8, !dbg !1098
  %class = getelementptr inbounds %struct.acpi_opcode_info, ptr %38, i32 0, i32 4, !dbg !1099
  %39 = load i8, ptr %class, align 1, !dbg !1099
  %conv34 = zext i8 %39 to i32, !dbg !1097
  store i32 %conv34, ptr %opcode_class, align 4, !dbg !1100
  %40 = load ptr, ptr %op, align 8, !dbg !1101
  %aml_opcode35 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %40, i32 0, i32 3, !dbg !1103
  %41 = load i16, ptr %aml_opcode35, align 2, !dbg !1103
  %conv36 = zext i16 %41 to i32, !dbg !1101
  %cmp37 = icmp eq i32 %conv36, 45, !dbg !1104
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !1105

if.then39:                                        ; preds = %if.end32
  store i32 3, ptr %opcode_class, align 4, !dbg !1106
  br label %if.end40, !dbg !1108

if.end40:                                         ; preds = %if.then39, %if.end32
  %42 = load i32, ptr %opcode_class, align 4, !dbg !1109
  switch i32 %42, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb42
    i32 0, label %sw.bb60
    i32 1, label %sw.bb60
  ], !dbg !1110

sw.bb:                                            ; preds = %if.end40
  %43 = load ptr, ptr %walk_state.addr, align 8, !dbg !1111
  %44 = load ptr, ptr %op, align 8, !dbg !1113
  %call41 = call i32 @acpi_ds_exec_begin_control_op(ptr noundef %43, ptr noundef %44) #6, !dbg !1114
  store i32 %call41, ptr %status, align 4, !dbg !1115
  br label %sw.epilog, !dbg !1116

sw.bb42:                                          ; preds = %if.end40
  %45 = load ptr, ptr %walk_state.addr, align 8, !dbg !1117
  %walk_type = getelementptr inbounds %struct.acpi_walk_state, ptr %45, i32 0, i32 2, !dbg !1119
  %46 = load i8, ptr %walk_type, align 1, !dbg !1119
  %conv43 = zext i8 %46 to i32, !dbg !1117
  %and = and i32 %conv43, 1, !dbg !1120
  %tobool44 = icmp ne i32 %and, 0, !dbg !1120
  br i1 %tobool44, label %if.then45, label %if.end59, !dbg !1121

if.then45:                                        ; preds = %sw.bb42
  %47 = load ptr, ptr %op, align 8, !dbg !1122
  %aml_opcode46 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %47, i32 0, i32 3, !dbg !1125
  %48 = load i16, ptr %aml_opcode46, align 2, !dbg !1125
  %conv47 = zext i16 %48 to i32, !dbg !1122
  %cmp48 = icmp ne i32 %conv47, 16, !dbg !1126
  br i1 %cmp48, label %if.then50, label %if.else, !dbg !1127

if.then50:                                        ; preds = %if.then45
  %49 = load ptr, ptr %walk_state.addr, align 8, !dbg !1128
  %call51 = call i32 @acpi_ds_load2_begin_op(ptr noundef %49, ptr noundef null) #6, !dbg !1130
  store i32 %call51, ptr %status, align 4, !dbg !1131
  br label %if.end58, !dbg !1132

if.else:                                          ; preds = %if.then45
  %50 = load ptr, ptr %op, align 8, !dbg !1133
  %node = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %50, i32 0, i32 6, !dbg !1135
  %51 = load ptr, ptr %node, align 8, !dbg !1135
  %52 = load ptr, ptr %op, align 8, !dbg !1136
  %node52 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %52, i32 0, i32 6, !dbg !1137
  %53 = load ptr, ptr %node52, align 8, !dbg !1137
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %53, i32 0, i32 2, !dbg !1138
  %54 = load i8, ptr %type, align 1, !dbg !1138
  %conv53 = zext i8 %54 to i32, !dbg !1136
  %55 = load ptr, ptr %walk_state.addr, align 8, !dbg !1139
  %call54 = call i32 @acpi_ds_scope_stack_push(ptr noundef %51, i32 noundef %conv53, ptr noundef %55) #6, !dbg !1140
  store i32 %call54, ptr %status, align 4, !dbg !1141
  %56 = load i32, ptr %status, align 4, !dbg !1142
  %tobool55 = icmp ne i32 %56, 0, !dbg !1142
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !1144

if.then56:                                        ; preds = %if.else
  %57 = load i32, ptr %status, align 4, !dbg !1145
  store i32 %57, ptr %retval, align 4, !dbg !1145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1145

if.end57:                                         ; preds = %if.else
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then50
  br label %if.end59, !dbg !1147

if.end59:                                         ; preds = %if.end58, %sw.bb42
  br label %sw.epilog, !dbg !1148

sw.bb60:                                          ; preds = %if.end40, %if.end40
  br label %sw.epilog, !dbg !1149

sw.default:                                       ; preds = %if.end40
  br label %sw.epilog, !dbg !1150

sw.epilog:                                        ; preds = %sw.default, %sw.bb60, %if.end59, %sw.bb
  %58 = load i32, ptr %status, align 4, !dbg !1151
  store i32 %58, ptr %retval, align 4, !dbg !1151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1151

error_exit:                                       ; preds = %if.then13, %if.then3
  call void @llvm.dbg.label(metadata !1000), !dbg !1152
  %59 = load i32, ptr %status, align 4, !dbg !1153
  %60 = load ptr, ptr %walk_state.addr, align 8, !dbg !1154
  %call61 = call i32 @acpi_ds_method_error(i32 noundef %59, ptr noundef %60) #6, !dbg !1155
  store i32 %call61, ptr %status, align 4, !dbg !1156
  %61 = load i32, ptr %status, align 4, !dbg !1157
  store i32 %61, ptr %retval, align 4, !dbg !1157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1157

cleanup:                                          ; preds = %error_exit, %sw.epilog, %if.then56, %if.end21
  call void @llvm.lifetime.end.p0(i64 4, ptr %opcode_class) #5, !dbg !1158
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1158
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #5, !dbg !1158
  %62 = load i32, ptr %retval, align 4, !dbg !1158
  ret i32 %62, !dbg !1158
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1159 dso_local i32 @acpi_ds_load2_begin_op(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1160 dso_local ptr @acpi_ps_get_opcode_info(i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1164 dso_local i32 @acpi_ns_opens_scope(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1169 dso_local i32 @acpi_ds_scope_stack_pop(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1170 dso_local i32 @acpi_ds_exec_begin_control_op(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1173 dso_local i32 @acpi_ds_scope_stack_push(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1176 dso_local i32 @acpi_ds_method_error(i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_exec_end_op(ptr noundef %walk_state) #0 align 16 !dbg !1179 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %op = alloca ptr, align 8
  %status = alloca i32, align 4
  %op_type = alloca i32, align 4
  %op_class = alloca i32, align 4
  %next_op = alloca ptr, align 8
  %first_arg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1181, metadata !DIExpression()), !dbg !1189
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #5, !dbg !1190
  call void @llvm.dbg.declare(metadata ptr %op, metadata !1182, metadata !DIExpression()), !dbg !1191
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1192
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1183, metadata !DIExpression()), !dbg !1193
  store i32 0, ptr %status, align 4, !dbg !1193
  call void @llvm.lifetime.start.p0(i64 4, ptr %op_type) #5, !dbg !1194
  call void @llvm.dbg.declare(metadata ptr %op_type, metadata !1184, metadata !DIExpression()), !dbg !1195
  call void @llvm.lifetime.start.p0(i64 4, ptr %op_class) #5, !dbg !1196
  call void @llvm.dbg.declare(metadata ptr %op_class, metadata !1185, metadata !DIExpression()), !dbg !1197
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_op) #5, !dbg !1198
  call void @llvm.dbg.declare(metadata ptr %next_op, metadata !1186, metadata !DIExpression()), !dbg !1199
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_arg) #5, !dbg !1200
  call void @llvm.dbg.declare(metadata ptr %first_arg, metadata !1187, metadata !DIExpression()), !dbg !1201
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1202
  %op1 = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 40, !dbg !1203
  %1 = load ptr, ptr %op1, align 8, !dbg !1203
  store ptr %1, ptr %op, align 8, !dbg !1204
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1205
  %op_info = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 41, !dbg !1206
  %3 = load ptr, ptr %op_info, align 8, !dbg !1206
  %type = getelementptr inbounds %struct.acpi_opcode_info, ptr %3, i32 0, i32 5, !dbg !1207
  %4 = load i8, ptr %type, align 4, !dbg !1207
  %conv = zext i8 %4 to i32, !dbg !1205
  store i32 %conv, ptr %op_type, align 4, !dbg !1208
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !1209
  %op_info2 = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 41, !dbg !1210
  %6 = load ptr, ptr %op_info2, align 8, !dbg !1210
  %class = getelementptr inbounds %struct.acpi_opcode_info, ptr %6, i32 0, i32 4, !dbg !1211
  %7 = load i8, ptr %class, align 1, !dbg !1211
  %conv3 = zext i8 %7 to i32, !dbg !1209
  store i32 %conv3, ptr %op_class, align 4, !dbg !1212
  %8 = load i32, ptr %op_class, align 4, !dbg !1213
  %cmp = icmp eq i32 %8, 10, !dbg !1215
  br i1 %cmp, label %if.then, label %if.end, !dbg !1216

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %op, align 8, !dbg !1217
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %9, i32 0, i32 3, !dbg !1217
  %10 = load i16, ptr %aml_opcode, align 2, !dbg !1217
  %conv5 = zext i16 %10 to i32, !dbg !1217
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 347, ptr noundef @.str.3, i32 noundef %conv5) #6, !dbg !1217
  store i32 14, ptr %retval, align 4, !dbg !1219
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup238, !dbg !1219

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %op, align 8, !dbg !1220
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %11, i32 0, i32 7, !dbg !1221
  %12 = load ptr, ptr %value, align 8, !dbg !1222
  store ptr %12, ptr %first_arg, align 8, !dbg !1223
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !1224
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, ptr %13, i32 0, i32 5, !dbg !1225
  store i8 0, ptr %num_operands, align 1, !dbg !1226
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !1227
  %operand_index = getelementptr inbounds %struct.acpi_walk_state, ptr %14, i32 0, i32 6, !dbg !1228
  store i8 0, ptr %operand_index, align 2, !dbg !1229
  %15 = load ptr, ptr %walk_state.addr, align 8, !dbg !1230
  %return_desc = getelementptr inbounds %struct.acpi_walk_state, ptr %15, i32 0, i32 45, !dbg !1231
  store ptr null, ptr %return_desc, align 8, !dbg !1232
  %16 = load ptr, ptr %walk_state.addr, align 8, !dbg !1233
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %16, i32 0, i32 43, !dbg !1234
  store ptr null, ptr %result_obj, align 8, !dbg !1235
  %17 = load ptr, ptr %walk_state.addr, align 8, !dbg !1236
  %18 = load ptr, ptr %op, align 8, !dbg !1237
  %19 = load i32, ptr %op_class, align 4, !dbg !1238
  %call = call i32 @acpi_db_single_step(ptr noundef %17, ptr noundef %18, i32 noundef %19) #6, !dbg !1239
  store i32 %call, ptr %status, align 4, !dbg !1240
  %20 = load i32, ptr %status, align 4, !dbg !1241
  %tobool = icmp ne i32 %20, 0, !dbg !1241
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !1243

if.then6:                                         ; preds = %if.end
  %21 = load i32, ptr %status, align 4, !dbg !1244
  store i32 %21, ptr %retval, align 4, !dbg !1244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup238, !dbg !1244

if.end7:                                          ; preds = %if.end
  %22 = load i32, ptr %op_class, align 4, !dbg !1246
  switch i32 %22, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb17
  ], !dbg !1247

sw.bb:                                            ; preds = %if.end7
  %23 = load ptr, ptr %walk_state.addr, align 8, !dbg !1248
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %23, i32 0, i32 3, !dbg !1251
  %24 = load i16, ptr %opcode, align 2, !dbg !1251
  %conv8 = zext i16 %24 to i32, !dbg !1248
  %cmp9 = icmp eq i32 %conv8, 45, !dbg !1252
  br i1 %cmp9, label %if.then11, label %if.end16, !dbg !1253

if.then11:                                        ; preds = %sw.bb
  %25 = load ptr, ptr %walk_state.addr, align 8, !dbg !1254
  %call12 = call i32 @acpi_ds_evaluate_name_path(ptr noundef %25) #6, !dbg !1256
  store i32 %call12, ptr %status, align 4, !dbg !1257
  %26 = load i32, ptr %status, align 4, !dbg !1258
  %tobool13 = icmp ne i32 %26, 0, !dbg !1258
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1260

if.then14:                                        ; preds = %if.then11
  br label %cleanup, !dbg !1261

if.end15:                                         ; preds = %if.then11
  br label %if.end16, !dbg !1263

if.end16:                                         ; preds = %if.end15, %sw.bb
  br label %sw.epilog207, !dbg !1264

sw.bb17:                                          ; preds = %if.end7
  %27 = load ptr, ptr %walk_state.addr, align 8, !dbg !1265
  %28 = load ptr, ptr %first_arg, align 8, !dbg !1266
  %call18 = call i32 @acpi_ds_create_operands(ptr noundef %27, ptr noundef %28) #6, !dbg !1267
  store i32 %call18, ptr %status, align 4, !dbg !1268
  %29 = load i32, ptr %status, align 4, !dbg !1269
  %tobool19 = icmp ne i32 %29, 0, !dbg !1269
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1271

if.then20:                                        ; preds = %sw.bb17
  br label %cleanup, !dbg !1272

if.end21:                                         ; preds = %sw.bb17
  %30 = load ptr, ptr %walk_state.addr, align 8, !dbg !1274
  %op_info22 = getelementptr inbounds %struct.acpi_walk_state, ptr %30, i32 0, i32 41, !dbg !1276
  %31 = load ptr, ptr %op_info22, align 8, !dbg !1276
  %flags = getelementptr inbounds %struct.acpi_opcode_info, ptr %31, i32 0, i32 2, !dbg !1277
  %32 = load i16, ptr %flags, align 4, !dbg !1277
  %conv23 = zext i16 %32 to i32, !dbg !1274
  %and = and i32 %conv23, 16384, !dbg !1278
  %tobool24 = icmp ne i32 %and, 0, !dbg !1278
  br i1 %tobool24, label %if.end35, label %land.lhs.true, !dbg !1279

land.lhs.true:                                    ; preds = %if.end21
  %33 = load ptr, ptr %walk_state.addr, align 8, !dbg !1280
  %op_info25 = getelementptr inbounds %struct.acpi_walk_state, ptr %33, i32 0, i32 41, !dbg !1281
  %34 = load ptr, ptr %op_info25, align 8, !dbg !1281
  %flags26 = getelementptr inbounds %struct.acpi_opcode_info, ptr %34, i32 0, i32 2, !dbg !1282
  %35 = load i16, ptr %flags26, align 4, !dbg !1282
  %conv27 = zext i16 %35 to i32, !dbg !1280
  %and28 = and i32 %conv27, 4096, !dbg !1283
  %tobool29 = icmp ne i32 %and28, 0, !dbg !1283
  br i1 %tobool29, label %if.then30, label %if.end35, !dbg !1284

if.then30:                                        ; preds = %land.lhs.true
  %36 = load ptr, ptr %walk_state.addr, align 8, !dbg !1285
  %opcode31 = getelementptr inbounds %struct.acpi_walk_state, ptr %36, i32 0, i32 3, !dbg !1287
  %37 = load i16, ptr %opcode31, align 2, !dbg !1287
  %38 = load ptr, ptr %walk_state.addr, align 8, !dbg !1288
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %38, i32 0, i32 28, !dbg !1289
  %39 = load ptr, ptr %walk_state.addr, align 8, !dbg !1290
  %num_operands32 = getelementptr inbounds %struct.acpi_walk_state, ptr %39, i32 0, i32 5, !dbg !1291
  %40 = load i8, ptr %num_operands32, align 1, !dbg !1291
  %conv33 = zext i8 %40 to i32, !dbg !1290
  %sub = sub i32 %conv33, 1, !dbg !1292
  %idxprom = sext i32 %sub to i64, !dbg !1288
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 %idxprom, !dbg !1288
  %41 = load ptr, ptr %walk_state.addr, align 8, !dbg !1293
  %call34 = call i32 @acpi_ex_resolve_operands(i16 noundef zeroext %37, ptr noundef %arrayidx, ptr noundef %41) #6, !dbg !1294
  store i32 %call34, ptr %status, align 4, !dbg !1295
  br label %if.end35, !dbg !1296

if.end35:                                         ; preds = %if.then30, %land.lhs.true, %if.end21
  %42 = load i32, ptr %status, align 4, !dbg !1297
  %tobool36 = icmp ne i32 %42, 0, !dbg !1297
  br i1 %tobool36, label %if.else, label %if.then37, !dbg !1299

if.then37:                                        ; preds = %if.end35
  %43 = load i32, ptr %op_type, align 4, !dbg !1300
  %idxprom38 = zext i32 %43 to i64, !dbg !1302
  %arrayidx39 = getelementptr [12 x ptr], ptr @acpi_gbl_op_type_dispatch, i64 0, i64 %idxprom38, !dbg !1302
  %44 = load ptr, ptr %arrayidx39, align 8, !dbg !1302
  %45 = load ptr, ptr %walk_state.addr, align 8, !dbg !1303
  %call40 = call i32 %44(ptr noundef %45) #6, !dbg !1302
  store i32 %call40, ptr %status, align 4, !dbg !1304
  br label %if.end87, !dbg !1305

if.else:                                          ; preds = %if.end35
  %46 = load i32, ptr %status, align 4, !dbg !1306
  %cmp41 = icmp eq i32 %46, 12293, !dbg !1309
  br i1 %cmp41, label %land.lhs.true43, label %if.else83, !dbg !1310

land.lhs.true43:                                  ; preds = %if.else
  %47 = load ptr, ptr %walk_state.addr, align 8, !dbg !1311
  %opcode44 = getelementptr inbounds %struct.acpi_walk_state, ptr %47, i32 0, i32 3, !dbg !1312
  %48 = load i16, ptr %opcode44, align 2, !dbg !1312
  %conv45 = zext i16 %48 to i32, !dbg !1311
  %cmp46 = icmp eq i32 %conv45, 112, !dbg !1313
  br i1 %cmp46, label %land.lhs.true48, label %if.else83, !dbg !1314

land.lhs.true48:                                  ; preds = %land.lhs.true43
  %49 = load ptr, ptr %walk_state.addr, align 8, !dbg !1315
  %operands49 = getelementptr inbounds %struct.acpi_walk_state, ptr %49, i32 0, i32 28, !dbg !1316
  %arrayidx50 = getelementptr [9 x ptr], ptr %operands49, i64 0, i64 0, !dbg !1315
  %50 = load ptr, ptr %arrayidx50, align 8, !dbg !1315
  %type51 = getelementptr inbounds %struct.acpi_object_common, ptr %50, i32 0, i32 2, !dbg !1317
  %51 = load i8, ptr %type51, align 1, !dbg !1317
  %conv52 = zext i8 %51 to i32, !dbg !1315
  %cmp53 = icmp eq i32 %conv52, 20, !dbg !1318
  br i1 %cmp53, label %land.lhs.true55, label %if.else83, !dbg !1319

land.lhs.true55:                                  ; preds = %land.lhs.true48
  %52 = load ptr, ptr %walk_state.addr, align 8, !dbg !1320
  %operands56 = getelementptr inbounds %struct.acpi_walk_state, ptr %52, i32 0, i32 28, !dbg !1321
  %arrayidx57 = getelementptr [9 x ptr], ptr %operands56, i64 0, i64 1, !dbg !1320
  %53 = load ptr, ptr %arrayidx57, align 8, !dbg !1320
  %type58 = getelementptr inbounds %struct.acpi_object_common, ptr %53, i32 0, i32 2, !dbg !1322
  %54 = load i8, ptr %type58, align 1, !dbg !1322
  %conv59 = zext i8 %54 to i32, !dbg !1320
  %cmp60 = icmp eq i32 %conv59, 20, !dbg !1323
  br i1 %cmp60, label %land.lhs.true62, label %if.else83, !dbg !1324

land.lhs.true62:                                  ; preds = %land.lhs.true55
  %55 = load ptr, ptr %walk_state.addr, align 8, !dbg !1325
  %operands63 = getelementptr inbounds %struct.acpi_walk_state, ptr %55, i32 0, i32 28, !dbg !1326
  %arrayidx64 = getelementptr [9 x ptr], ptr %operands63, i64 0, i64 0, !dbg !1325
  %56 = load ptr, ptr %arrayidx64, align 8, !dbg !1325
  %class65 = getelementptr inbounds %struct.acpi_object_reference, ptr %56, i32 0, i32 5, !dbg !1327
  %57 = load i8, ptr %class65, align 1, !dbg !1327
  %conv66 = zext i8 %57 to i32, !dbg !1325
  %58 = load ptr, ptr %walk_state.addr, align 8, !dbg !1328
  %operands67 = getelementptr inbounds %struct.acpi_walk_state, ptr %58, i32 0, i32 28, !dbg !1329
  %arrayidx68 = getelementptr [9 x ptr], ptr %operands67, i64 0, i64 1, !dbg !1328
  %59 = load ptr, ptr %arrayidx68, align 8, !dbg !1328
  %class69 = getelementptr inbounds %struct.acpi_object_reference, ptr %59, i32 0, i32 5, !dbg !1330
  %60 = load i8, ptr %class69, align 1, !dbg !1330
  %conv70 = zext i8 %60 to i32, !dbg !1328
  %cmp71 = icmp eq i32 %conv66, %conv70, !dbg !1331
  br i1 %cmp71, label %land.lhs.true73, label %if.else83, !dbg !1332

land.lhs.true73:                                  ; preds = %land.lhs.true62
  %61 = load ptr, ptr %walk_state.addr, align 8, !dbg !1333
  %operands74 = getelementptr inbounds %struct.acpi_walk_state, ptr %61, i32 0, i32 28, !dbg !1334
  %arrayidx75 = getelementptr [9 x ptr], ptr %operands74, i64 0, i64 0, !dbg !1333
  %62 = load ptr, ptr %arrayidx75, align 8, !dbg !1333
  %value76 = getelementptr inbounds %struct.acpi_object_reference, ptr %62, i32 0, i32 13, !dbg !1335
  %63 = load i32, ptr %value76, align 8, !dbg !1335
  %64 = load ptr, ptr %walk_state.addr, align 8, !dbg !1336
  %operands77 = getelementptr inbounds %struct.acpi_walk_state, ptr %64, i32 0, i32 28, !dbg !1337
  %arrayidx78 = getelementptr [9 x ptr], ptr %operands77, i64 0, i64 1, !dbg !1336
  %65 = load ptr, ptr %arrayidx78, align 8, !dbg !1336
  %value79 = getelementptr inbounds %struct.acpi_object_reference, ptr %65, i32 0, i32 13, !dbg !1338
  %66 = load i32, ptr %value79, align 8, !dbg !1338
  %cmp80 = icmp eq i32 %63, %66, !dbg !1339
  br i1 %cmp80, label %if.then82, label %if.else83, !dbg !1340

if.then82:                                        ; preds = %land.lhs.true73
  store i32 0, ptr %status, align 4, !dbg !1341
  br label %if.end86, !dbg !1343

if.else83:                                        ; preds = %land.lhs.true73, %land.lhs.true62, %land.lhs.true55, %land.lhs.true48, %land.lhs.true43, %if.else
  %67 = load i32, ptr %status, align 4, !dbg !1344
  %68 = load ptr, ptr %walk_state.addr, align 8, !dbg !1344
  %opcode84 = getelementptr inbounds %struct.acpi_walk_state, ptr %68, i32 0, i32 3, !dbg !1344
  %69 = load i16, ptr %opcode84, align 2, !dbg !1344
  %call85 = call ptr @acpi_ps_get_opcode_name(i16 noundef zeroext %69) #6, !dbg !1344
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 433, i32 noundef %67, ptr noundef @.str.4, ptr noundef %call85) #6, !dbg !1344
  br label %if.end86

if.end86:                                         ; preds = %if.else83, %if.then82
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then37
  %70 = load ptr, ptr %walk_state.addr, align 8, !dbg !1346
  call void @acpi_ds_clear_operands(ptr noundef %70) #6, !dbg !1347
  %71 = load i32, ptr %status, align 4, !dbg !1348
  %tobool88 = icmp ne i32 %71, 0, !dbg !1348
  br i1 %tobool88, label %if.end95, label %land.lhs.true89, !dbg !1350

land.lhs.true89:                                  ; preds = %if.end87
  %72 = load ptr, ptr %walk_state.addr, align 8, !dbg !1351
  %result_obj90 = getelementptr inbounds %struct.acpi_walk_state, ptr %72, i32 0, i32 43, !dbg !1352
  %73 = load ptr, ptr %result_obj90, align 8, !dbg !1352
  %tobool91 = icmp ne ptr %73, null, !dbg !1351
  br i1 %tobool91, label %if.then92, label %if.end95, !dbg !1353

if.then92:                                        ; preds = %land.lhs.true89
  %74 = load ptr, ptr %walk_state.addr, align 8, !dbg !1354
  %result_obj93 = getelementptr inbounds %struct.acpi_walk_state, ptr %74, i32 0, i32 43, !dbg !1356
  %75 = load ptr, ptr %result_obj93, align 8, !dbg !1356
  %76 = load ptr, ptr %walk_state.addr, align 8, !dbg !1357
  %call94 = call i32 @acpi_ds_result_push(ptr noundef %75, ptr noundef %76) #6, !dbg !1358
  store i32 %call94, ptr %status, align 4, !dbg !1359
  br label %if.end95, !dbg !1360

if.end95:                                         ; preds = %if.then92, %land.lhs.true89, %if.end87
  br label %sw.epilog207, !dbg !1361

sw.default:                                       ; preds = %if.end7
  %77 = load i32, ptr %op_type, align 4, !dbg !1362
  switch i32 %77, label %sw.default203 [
    i32 20, label %sw.bb96
    i32 17, label %sw.bb98
    i32 18, label %sw.bb125
    i32 19, label %sw.bb134
    i32 22, label %sw.bb164
    i32 24, label %sw.bb164
    i32 23, label %sw.bb164
    i32 21, label %sw.bb164
    i32 26, label %sw.bb201
    i32 27, label %sw.bb202
  ], !dbg !1363

sw.bb96:                                          ; preds = %sw.default
  %78 = load ptr, ptr %walk_state.addr, align 8, !dbg !1364
  %79 = load ptr, ptr %op, align 8, !dbg !1366
  %call97 = call i32 @acpi_ds_exec_end_control_op(ptr noundef %78, ptr noundef %79) #6, !dbg !1367
  store i32 %call97, ptr %status, align 4, !dbg !1368
  br label %sw.epilog206, !dbg !1369

sw.bb98:                                          ; preds = %sw.default
  %80 = load ptr, ptr %op, align 8, !dbg !1370
  %parent = getelementptr inbounds %struct.acpi_parse_obj_asl, ptr %80, i32 0, i32 0, !dbg !1372
  %81 = load ptr, ptr %parent, align 8, !dbg !1372
  %tobool99 = icmp ne ptr %81, null, !dbg !1373
  br i1 %tobool99, label %land.lhs.true100, label %if.end116, !dbg !1374

land.lhs.true100:                                 ; preds = %sw.bb98
  %82 = load ptr, ptr %op, align 8, !dbg !1375
  %parent101 = getelementptr inbounds %struct.acpi_parse_obj_asl, ptr %82, i32 0, i32 0, !dbg !1376
  %83 = load ptr, ptr %parent101, align 8, !dbg !1376
  %aml_opcode102 = getelementptr inbounds %struct.acpi_parse_obj_asl, ptr %83, i32 0, i32 3, !dbg !1377
  %84 = load i16, ptr %aml_opcode102, align 2, !dbg !1377
  %conv103 = zext i16 %84 to i32, !dbg !1375
  %cmp104 = icmp eq i32 %conv103, 18, !dbg !1378
  br i1 %cmp104, label %if.then111, label %lor.lhs.false, !dbg !1379

lor.lhs.false:                                    ; preds = %land.lhs.true100
  %85 = load ptr, ptr %op, align 8, !dbg !1380
  %parent106 = getelementptr inbounds %struct.acpi_parse_obj_asl, ptr %85, i32 0, i32 0, !dbg !1381
  %86 = load ptr, ptr %parent106, align 8, !dbg !1381
  %aml_opcode107 = getelementptr inbounds %struct.acpi_parse_obj_asl, ptr %86, i32 0, i32 3, !dbg !1382
  %87 = load i16, ptr %aml_opcode107, align 2, !dbg !1382
  %conv108 = zext i16 %87 to i32, !dbg !1380
  %cmp109 = icmp eq i32 %conv108, 19, !dbg !1383
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !1384

if.then111:                                       ; preds = %lor.lhs.false, %land.lhs.true100
  %88 = load ptr, ptr %op, align 8, !dbg !1385
  %value112 = getelementptr inbounds %struct.acpi_parse_obj_asl, ptr %88, i32 0, i32 7, !dbg !1387
  %89 = load ptr, ptr %value112, align 8, !dbg !1388
  %node = getelementptr inbounds %struct.acpi_parse_obj_asl, ptr %89, i32 0, i32 6, !dbg !1389
  %90 = load ptr, ptr %node, align 8, !dbg !1389
  %91 = load ptr, ptr %op, align 8, !dbg !1390
  %node113 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %91, i32 0, i32 6, !dbg !1391
  store ptr %90, ptr %node113, align 8, !dbg !1392
  %92 = load ptr, ptr %op, align 8, !dbg !1393
  %value114 = getelementptr inbounds %struct.acpi_parse_obj_asl, ptr %92, i32 0, i32 7, !dbg !1394
  %93 = load ptr, ptr %value114, align 8, !dbg !1395
  %node115 = getelementptr inbounds %struct.acpi_parse_obj_asl, ptr %93, i32 0, i32 6, !dbg !1396
  %94 = load ptr, ptr %node115, align 8, !dbg !1396
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %94, i32 0, i32 0, !dbg !1397
  %95 = load ptr, ptr %object, align 8, !dbg !1397
  call void @acpi_ut_add_reference(ptr noundef %95) #6, !dbg !1398
  store i32 0, ptr %retval, align 4, !dbg !1399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup238, !dbg !1399

if.end116:                                        ; preds = %lor.lhs.false, %sw.bb98
  %96 = load ptr, ptr %first_arg, align 8, !dbg !1400
  store ptr %96, ptr %next_op, align 8, !dbg !1401
  %97 = load ptr, ptr %next_op, align 8, !dbg !1402
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %97, i32 0, i32 5, !dbg !1403
  %98 = load ptr, ptr %next, align 8, !dbg !1403
  store ptr %98, ptr %next_op, align 8, !dbg !1404
  %99 = load ptr, ptr %walk_state.addr, align 8, !dbg !1405
  %100 = load ptr, ptr %next_op, align 8, !dbg !1406
  %call117 = call i32 @acpi_ds_create_operands(ptr noundef %99, ptr noundef %100) #6, !dbg !1407
  store i32 %call117, ptr %status, align 4, !dbg !1408
  %101 = load i32, ptr %status, align 4, !dbg !1409
  %tobool118 = icmp ne i32 %101, 0, !dbg !1409
  br i1 %tobool118, label %if.then119, label %if.end120, !dbg !1411

if.then119:                                       ; preds = %if.end116
  br label %sw.epilog206, !dbg !1412

if.end120:                                        ; preds = %if.end116
  %102 = load ptr, ptr %walk_state.addr, align 8, !dbg !1414
  %call121 = call i32 @acpi_ds_resolve_operands(ptr noundef %102) #6, !dbg !1415
  store i32 %call121, ptr %status, align 4, !dbg !1416
  %103 = load i32, ptr %status, align 4, !dbg !1417
  %tobool122 = icmp ne i32 %103, 0, !dbg !1417
  br i1 %tobool122, label %if.then123, label %if.end124, !dbg !1419

if.then123:                                       ; preds = %if.end120
  %104 = load ptr, ptr %walk_state.addr, align 8, !dbg !1420
  call void @acpi_ds_clear_operands(ptr noundef %104) #6, !dbg !1422
  br label %sw.epilog206, !dbg !1423

if.end124:                                        ; preds = %if.end120
  store i32 16392, ptr %status, align 4, !dbg !1424
  %105 = load i32, ptr %status, align 4, !dbg !1425
  store i32 %105, ptr %retval, align 4, !dbg !1425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup238, !dbg !1425

sw.bb125:                                         ; preds = %sw.default
  %106 = load ptr, ptr %walk_state.addr, align 8, !dbg !1426
  %call126 = call i32 @acpi_ds_load2_end_op(ptr noundef %106) #6, !dbg !1427
  store i32 %call126, ptr %status, align 4, !dbg !1428
  %107 = load i32, ptr %status, align 4, !dbg !1429
  %tobool127 = icmp ne i32 %107, 0, !dbg !1429
  br i1 %tobool127, label %if.then128, label %if.end129, !dbg !1431

if.then128:                                       ; preds = %sw.bb125
  br label %sw.epilog206, !dbg !1432

if.end129:                                        ; preds = %sw.bb125
  %108 = load ptr, ptr %walk_state.addr, align 8, !dbg !1434
  %109 = load ptr, ptr %op, align 8, !dbg !1435
  %call130 = call i32 @acpi_ds_eval_buffer_field_operands(ptr noundef %108, ptr noundef %109) #6, !dbg !1436
  store i32 %call130, ptr %status, align 4, !dbg !1437
  %110 = load i32, ptr %status, align 4, !dbg !1438
  %tobool131 = icmp ne i32 %110, 0, !dbg !1438
  br i1 %tobool131, label %if.then132, label %if.end133, !dbg !1440

if.then132:                                       ; preds = %if.end129
  br label %sw.epilog206, !dbg !1441

if.end133:                                        ; preds = %if.end129
  br label %sw.epilog206, !dbg !1443

sw.bb134:                                         ; preds = %sw.default
  %111 = load ptr, ptr %op, align 8, !dbg !1444
  %parent135 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %111, i32 0, i32 0, !dbg !1445
  %112 = load ptr, ptr %parent135, align 8, !dbg !1445
  %aml_opcode136 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %112, i32 0, i32 3, !dbg !1446
  %113 = load i16, ptr %aml_opcode136, align 2, !dbg !1446
  %conv137 = zext i16 %113 to i32, !dbg !1444
  switch i32 %conv137, label %sw.default156 [
    i32 8, label %sw.bb138
    i32 55, label %sw.bb151
  ], !dbg !1447

sw.bb138:                                         ; preds = %sw.bb134
  %114 = load ptr, ptr %op, align 8, !dbg !1448
  %parent139 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %114, i32 0, i32 0, !dbg !1450
  %115 = load ptr, ptr %parent139, align 8, !dbg !1450
  %node140 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %115, i32 0, i32 6, !dbg !1451
  %116 = load ptr, ptr %node140, align 8, !dbg !1451
  %117 = load ptr, ptr %walk_state.addr, align 8, !dbg !1452
  %operands141 = getelementptr inbounds %struct.acpi_walk_state, ptr %117, i32 0, i32 28, !dbg !1453
  %arrayidx142 = getelementptr [9 x ptr], ptr %operands141, i64 0, i64 0, !dbg !1452
  store ptr %116, ptr %arrayidx142, align 8, !dbg !1454
  %118 = load ptr, ptr %walk_state.addr, align 8, !dbg !1455
  %num_operands143 = getelementptr inbounds %struct.acpi_walk_state, ptr %118, i32 0, i32 5, !dbg !1456
  store i8 1, ptr %num_operands143, align 1, !dbg !1457
  %119 = load ptr, ptr %walk_state.addr, align 8, !dbg !1458
  %120 = load ptr, ptr %op, align 8, !dbg !1459
  %parent144 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %120, i32 0, i32 0, !dbg !1460
  %121 = load ptr, ptr %parent144, align 8, !dbg !1460
  %node145 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %121, i32 0, i32 6, !dbg !1461
  %122 = load ptr, ptr %node145, align 8, !dbg !1461
  %123 = load ptr, ptr %op, align 8, !dbg !1462
  %parent146 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %123, i32 0, i32 0, !dbg !1463
  %124 = load ptr, ptr %parent146, align 8, !dbg !1463
  %call147 = call i32 @acpi_ds_create_node(ptr noundef %119, ptr noundef %122, ptr noundef %124) #6, !dbg !1464
  store i32 %call147, ptr %status, align 4, !dbg !1465
  %125 = load i32, ptr %status, align 4, !dbg !1466
  %tobool148 = icmp ne i32 %125, 0, !dbg !1466
  br i1 %tobool148, label %if.then149, label %if.end150, !dbg !1468

if.then149:                                       ; preds = %sw.bb138
  br label %sw.epilog, !dbg !1469

if.end150:                                        ; preds = %sw.bb138
  br label %sw.bb151, !dbg !1466

sw.bb151:                                         ; preds = %sw.bb134, %if.end150
  %126 = load ptr, ptr %walk_state.addr, align 8, !dbg !1471
  %127 = load ptr, ptr %op, align 8, !dbg !1472
  %128 = load ptr, ptr %op, align 8, !dbg !1473
  %parent152 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %128, i32 0, i32 0, !dbg !1474
  %129 = load ptr, ptr %parent152, align 8, !dbg !1474
  %node153 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %129, i32 0, i32 6, !dbg !1475
  %130 = load ptr, ptr %node153, align 8, !dbg !1475
  %call154 = call ptr @acpi_ns_get_attached_object(ptr noundef %130) #6, !dbg !1476
  %call155 = call i32 @acpi_ds_eval_data_object_operands(ptr noundef %126, ptr noundef %127, ptr noundef %call154) #6, !dbg !1477
  store i32 %call155, ptr %status, align 4, !dbg !1478
  br label %sw.epilog, !dbg !1479

sw.default156:                                    ; preds = %sw.bb134
  %131 = load ptr, ptr %walk_state.addr, align 8, !dbg !1480
  %132 = load ptr, ptr %op, align 8, !dbg !1481
  %call157 = call i32 @acpi_ds_eval_data_object_operands(ptr noundef %131, ptr noundef %132, ptr noundef null) #6, !dbg !1482
  store i32 %call157, ptr %status, align 4, !dbg !1483
  br label %sw.epilog, !dbg !1484

sw.epilog:                                        ; preds = %sw.default156, %sw.bb151, %if.then149
  %133 = load ptr, ptr %walk_state.addr, align 8, !dbg !1485
  %result_obj158 = getelementptr inbounds %struct.acpi_walk_state, ptr %133, i32 0, i32 43, !dbg !1487
  %134 = load ptr, ptr %result_obj158, align 8, !dbg !1487
  %tobool159 = icmp ne ptr %134, null, !dbg !1485
  br i1 %tobool159, label %if.then160, label %if.end163, !dbg !1488

if.then160:                                       ; preds = %sw.epilog
  %135 = load ptr, ptr %walk_state.addr, align 8, !dbg !1489
  %result_obj161 = getelementptr inbounds %struct.acpi_walk_state, ptr %135, i32 0, i32 43, !dbg !1491
  %136 = load ptr, ptr %result_obj161, align 8, !dbg !1491
  %137 = load ptr, ptr %walk_state.addr, align 8, !dbg !1492
  %call162 = call i32 @acpi_ds_result_push(ptr noundef %136, ptr noundef %137) #6, !dbg !1493
  store i32 %call162, ptr %status, align 4, !dbg !1494
  br label %if.end163, !dbg !1495

if.end163:                                        ; preds = %if.then160, %sw.epilog
  br label %sw.epilog206, !dbg !1496

sw.bb164:                                         ; preds = %sw.default, %sw.default, %sw.default, %sw.default
  %138 = load ptr, ptr %walk_state.addr, align 8, !dbg !1497
  %call165 = call i32 @acpi_ds_load2_end_op(ptr noundef %138) #6, !dbg !1498
  store i32 %call165, ptr %status, align 4, !dbg !1499
  %139 = load i32, ptr %status, align 4, !dbg !1500
  %tobool166 = icmp ne i32 %139, 0, !dbg !1500
  br i1 %tobool166, label %if.then167, label %if.end168, !dbg !1502

if.then167:                                       ; preds = %sw.bb164
  br label %sw.epilog206, !dbg !1503

if.end168:                                        ; preds = %sw.bb164
  %140 = load ptr, ptr %op, align 8, !dbg !1505
  %aml_opcode169 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %140, i32 0, i32 3, !dbg !1507
  %141 = load i16, ptr %aml_opcode169, align 2, !dbg !1507
  %conv170 = zext i16 %141 to i32, !dbg !1505
  %cmp171 = icmp eq i32 %conv170, 23424, !dbg !1508
  br i1 %cmp171, label %if.then173, label %if.else178, !dbg !1509

if.then173:                                       ; preds = %if.end168
  %142 = load ptr, ptr %walk_state.addr, align 8, !dbg !1510
  %143 = load ptr, ptr %op, align 8, !dbg !1512
  %call174 = call i32 @acpi_ds_eval_region_operands(ptr noundef %142, ptr noundef %143) #6, !dbg !1513
  store i32 %call174, ptr %status, align 4, !dbg !1514
  %144 = load i32, ptr %status, align 4, !dbg !1515
  %tobool175 = icmp ne i32 %144, 0, !dbg !1515
  br i1 %tobool175, label %if.then176, label %if.end177, !dbg !1517

if.then176:                                       ; preds = %if.then173
  br label %sw.epilog206, !dbg !1518

if.end177:                                        ; preds = %if.then173
  br label %if.end200, !dbg !1520

if.else178:                                       ; preds = %if.end168
  %145 = load ptr, ptr %op, align 8, !dbg !1521
  %aml_opcode179 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %145, i32 0, i32 3, !dbg !1523
  %146 = load i16, ptr %aml_opcode179, align 2, !dbg !1523
  %conv180 = zext i16 %146 to i32, !dbg !1521
  %cmp181 = icmp eq i32 %conv180, 23432, !dbg !1524
  br i1 %cmp181, label %if.then183, label %if.else188, !dbg !1525

if.then183:                                       ; preds = %if.else178
  %147 = load ptr, ptr %walk_state.addr, align 8, !dbg !1526
  %148 = load ptr, ptr %op, align 8, !dbg !1528
  %call184 = call i32 @acpi_ds_eval_table_region_operands(ptr noundef %147, ptr noundef %148) #6, !dbg !1529
  store i32 %call184, ptr %status, align 4, !dbg !1530
  %149 = load i32, ptr %status, align 4, !dbg !1531
  %tobool185 = icmp ne i32 %149, 0, !dbg !1531
  br i1 %tobool185, label %if.then186, label %if.end187, !dbg !1533

if.then186:                                       ; preds = %if.then183
  br label %sw.epilog206, !dbg !1534

if.end187:                                        ; preds = %if.then183
  br label %if.end199, !dbg !1536

if.else188:                                       ; preds = %if.else178
  %150 = load ptr, ptr %op, align 8, !dbg !1537
  %aml_opcode189 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %150, i32 0, i32 3, !dbg !1539
  %151 = load i16, ptr %aml_opcode189, align 2, !dbg !1539
  %conv190 = zext i16 %151 to i32, !dbg !1537
  %cmp191 = icmp eq i32 %conv190, 23431, !dbg !1540
  br i1 %cmp191, label %if.then193, label %if.end198, !dbg !1541

if.then193:                                       ; preds = %if.else188
  %152 = load ptr, ptr %walk_state.addr, align 8, !dbg !1542
  %153 = load ptr, ptr %op, align 8, !dbg !1544
  %call194 = call i32 @acpi_ds_eval_bank_field_operands(ptr noundef %152, ptr noundef %153) #6, !dbg !1545
  store i32 %call194, ptr %status, align 4, !dbg !1546
  %154 = load i32, ptr %status, align 4, !dbg !1547
  %tobool195 = icmp ne i32 %154, 0, !dbg !1547
  br i1 %tobool195, label %if.then196, label %if.end197, !dbg !1549

if.then196:                                       ; preds = %if.then193
  br label %sw.epilog206, !dbg !1550

if.end197:                                        ; preds = %if.then193
  br label %if.end198, !dbg !1552

if.end198:                                        ; preds = %if.end197, %if.else188
  br label %if.end199

if.end199:                                        ; preds = %if.end198, %if.end187
  br label %if.end200

if.end200:                                        ; preds = %if.end199, %if.end177
  br label %sw.epilog206, !dbg !1553

sw.bb201:                                         ; preds = %sw.default
  %155 = load ptr, ptr %op, align 8, !dbg !1554
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 681, ptr noundef @.str.5, ptr noundef %155) #6, !dbg !1554
  store i32 14, ptr %retval, align 4, !dbg !1555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup238, !dbg !1555

sw.bb202:                                         ; preds = %sw.default
  br label %sw.epilog206, !dbg !1556

sw.default203:                                    ; preds = %sw.default
  %156 = load i32, ptr %op_class, align 4, !dbg !1557
  %157 = load i32, ptr %op_type, align 4, !dbg !1557
  %158 = load ptr, ptr %op, align 8, !dbg !1557
  %aml_opcode204 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %158, i32 0, i32 3, !dbg !1557
  %159 = load i16, ptr %aml_opcode204, align 2, !dbg !1557
  %conv205 = zext i16 %159 to i32, !dbg !1557
  %160 = load ptr, ptr %op, align 8, !dbg !1557
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 694, ptr noundef @.str.6, i32 noundef %156, i32 noundef %157, i32 noundef %conv205, ptr noundef %160) #6, !dbg !1557
  store i32 14, ptr %status, align 4, !dbg !1558
  br label %sw.epilog206, !dbg !1559

sw.epilog206:                                     ; preds = %sw.default203, %sw.bb202, %if.end200, %if.then196, %if.then186, %if.then176, %if.then167, %if.end163, %if.end133, %if.then132, %if.then128, %if.then123, %if.then119, %sw.bb96
  br label %sw.epilog207, !dbg !1560

sw.epilog207:                                     ; preds = %sw.epilog206, %if.end95, %if.end16
  %161 = load ptr, ptr %walk_state.addr, align 8, !dbg !1561
  %result_obj208 = getelementptr inbounds %struct.acpi_walk_state, ptr %161, i32 0, i32 43, !dbg !1562
  %162 = load ptr, ptr %result_obj208, align 8, !dbg !1562
  %call209 = call zeroext i8 @acpi_ex_truncate_for32bit_table(ptr noundef %162) #6, !dbg !1563
  %163 = load i32, ptr %status, align 4, !dbg !1564
  %tobool210 = icmp ne i32 %163, 0, !dbg !1564
  br i1 %tobool210, label %if.end226, label %land.lhs.true211, !dbg !1566

land.lhs.true211:                                 ; preds = %sw.epilog207
  %164 = load ptr, ptr %walk_state.addr, align 8, !dbg !1567
  %control_state = getelementptr inbounds %struct.acpi_walk_state, ptr %164, i32 0, i32 32, !dbg !1568
  %165 = load ptr, ptr %control_state, align 8, !dbg !1568
  %tobool212 = icmp ne ptr %165, null, !dbg !1569
  br i1 %tobool212, label %land.lhs.true213, label %if.end226, !dbg !1570

land.lhs.true213:                                 ; preds = %land.lhs.true211
  %166 = load ptr, ptr %walk_state.addr, align 8, !dbg !1571
  %control_state214 = getelementptr inbounds %struct.acpi_walk_state, ptr %166, i32 0, i32 32, !dbg !1572
  %167 = load ptr, ptr %control_state214, align 8, !dbg !1572
  %state = getelementptr inbounds %struct.acpi_common_state, ptr %167, i32 0, i32 4, !dbg !1573
  %168 = load i16, ptr %state, align 4, !dbg !1573
  %conv215 = zext i16 %168 to i32, !dbg !1571
  %cmp216 = icmp eq i32 %conv215, 194, !dbg !1574
  br i1 %cmp216, label %land.lhs.true218, label %if.end226, !dbg !1575

land.lhs.true218:                                 ; preds = %land.lhs.true213
  %169 = load ptr, ptr %walk_state.addr, align 8, !dbg !1576
  %control_state219 = getelementptr inbounds %struct.acpi_walk_state, ptr %169, i32 0, i32 32, !dbg !1577
  %170 = load ptr, ptr %control_state219, align 8, !dbg !1577
  %predicate_op = getelementptr inbounds %struct.acpi_control_state, ptr %170, i32 0, i32 6, !dbg !1578
  %171 = load ptr, ptr %predicate_op, align 8, !dbg !1578
  %172 = load ptr, ptr %op, align 8, !dbg !1579
  %cmp220 = icmp eq ptr %171, %172, !dbg !1580
  br i1 %cmp220, label %if.then222, label %if.end226, !dbg !1581

if.then222:                                       ; preds = %land.lhs.true218
  %173 = load ptr, ptr %walk_state.addr, align 8, !dbg !1582
  %174 = load ptr, ptr %walk_state.addr, align 8, !dbg !1584
  %result_obj223 = getelementptr inbounds %struct.acpi_walk_state, ptr %174, i32 0, i32 43, !dbg !1585
  %175 = load ptr, ptr %result_obj223, align 8, !dbg !1585
  %call224 = call i32 @acpi_ds_get_predicate_value(ptr noundef %173, ptr noundef %175) #6, !dbg !1586
  store i32 %call224, ptr %status, align 4, !dbg !1587
  %176 = load ptr, ptr %walk_state.addr, align 8, !dbg !1588
  %result_obj225 = getelementptr inbounds %struct.acpi_walk_state, ptr %176, i32 0, i32 43, !dbg !1589
  store ptr null, ptr %result_obj225, align 8, !dbg !1590
  br label %if.end226, !dbg !1591

if.end226:                                        ; preds = %if.then222, %land.lhs.true218, %land.lhs.true213, %land.lhs.true211, %sw.epilog207
  br label %cleanup, !dbg !1592

cleanup:                                          ; preds = %if.end226, %if.then20, %if.then14
  call void @llvm.dbg.label(metadata !1188), !dbg !1593
  %177 = load ptr, ptr %walk_state.addr, align 8, !dbg !1594
  %result_obj227 = getelementptr inbounds %struct.acpi_walk_state, ptr %177, i32 0, i32 43, !dbg !1596
  %178 = load ptr, ptr %result_obj227, align 8, !dbg !1596
  %tobool228 = icmp ne ptr %178, null, !dbg !1594
  br i1 %tobool228, label %if.then229, label %if.end232, !dbg !1597

if.then229:                                       ; preds = %cleanup
  %179 = load ptr, ptr %walk_state.addr, align 8, !dbg !1598
  %result_obj230 = getelementptr inbounds %struct.acpi_walk_state, ptr %179, i32 0, i32 43, !dbg !1600
  %180 = load ptr, ptr %result_obj230, align 8, !dbg !1600
  %181 = load ptr, ptr %walk_state.addr, align 8, !dbg !1601
  call void @acpi_db_display_result_object(ptr noundef %180, ptr noundef %181) #6, !dbg !1602
  %182 = load ptr, ptr %op, align 8, !dbg !1603
  %183 = load ptr, ptr %walk_state.addr, align 8, !dbg !1604
  %result_obj231 = getelementptr inbounds %struct.acpi_walk_state, ptr %183, i32 0, i32 43, !dbg !1605
  %184 = load ptr, ptr %result_obj231, align 8, !dbg !1605
  %185 = load ptr, ptr %walk_state.addr, align 8, !dbg !1606
  call void @acpi_ds_delete_result_if_not_used(ptr noundef %182, ptr noundef %184, ptr noundef %185) #6, !dbg !1607
  br label %if.end232, !dbg !1608

if.end232:                                        ; preds = %if.then229, %cleanup
  %186 = load i32, ptr %status, align 4, !dbg !1609
  %tobool233 = icmp ne i32 %186, 0, !dbg !1609
  br i1 %tobool233, label %if.then234, label %if.end236, !dbg !1611

if.then234:                                       ; preds = %if.end232
  %187 = load i32, ptr %status, align 4, !dbg !1612
  %188 = load ptr, ptr %walk_state.addr, align 8, !dbg !1614
  %call235 = call i32 @acpi_ds_method_error(i32 noundef %187, ptr noundef %188) #6, !dbg !1615
  store i32 %call235, ptr %status, align 4, !dbg !1616
  br label %if.end236, !dbg !1617

if.end236:                                        ; preds = %if.then234, %if.end232
  %189 = load ptr, ptr %walk_state.addr, align 8, !dbg !1618
  %num_operands237 = getelementptr inbounds %struct.acpi_walk_state, ptr %189, i32 0, i32 5, !dbg !1619
  store i8 0, ptr %num_operands237, align 1, !dbg !1620
  %190 = load i32, ptr %status, align 4, !dbg !1621
  store i32 %190, ptr %retval, align 4, !dbg !1621
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup238, !dbg !1621

cleanup238:                                       ; preds = %if.end236, %sw.bb201, %if.end124, %if.then111, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_arg) #5, !dbg !1622
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_op) #5, !dbg !1622
  call void @llvm.lifetime.end.p0(i64 4, ptr %op_class) #5, !dbg !1622
  call void @llvm.lifetime.end.p0(i64 4, ptr %op_type) #5, !dbg !1622
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1622
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #5, !dbg !1622
  %191 = load i32, ptr %retval, align 4, !dbg !1622
  ret i32 %191, !dbg !1622
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_db_single_step(ptr noundef %walk_state, ptr noundef %op, i32 noundef %op_type) #4 align 16 !dbg !1623 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %op_type.addr = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1625, metadata !DIExpression()), !dbg !1628
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1626, metadata !DIExpression()), !dbg !1628
  store i32 %op_type, ptr %op_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op_type.addr, metadata !1627, metadata !DIExpression()), !dbg !1628
  ret i32 0, !dbg !1628
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1629 dso_local i32 @acpi_ds_evaluate_name_path(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1630 dso_local i32 @acpi_ds_create_operands(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1631 dso_local i32 @acpi_ex_resolve_operands(i16 noundef zeroext, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1634 dso_local ptr @acpi_ps_get_opcode_name(i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1637 dso_local void @acpi_ds_clear_operands(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1640 dso_local i32 @acpi_ds_result_push(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1643 dso_local i32 @acpi_ds_exec_end_control_op(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1644 dso_local void @acpi_ut_add_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1645 dso_local i32 @acpi_ds_resolve_operands(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1646 dso_local i32 @acpi_ds_load2_end_op(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1647 dso_local i32 @acpi_ds_eval_buffer_field_operands(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1648 dso_local i32 @acpi_ds_create_node(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1651 dso_local i32 @acpi_ds_eval_data_object_operands(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1654 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1657 dso_local i32 @acpi_ds_eval_region_operands(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1658 dso_local i32 @acpi_ds_eval_table_region_operands(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1659 dso_local i32 @acpi_ds_eval_bank_field_operands(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1660 dso_local void @acpi_ds_delete_result_if_not_used(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ex_opcode_0A_0T_1R(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ex_opcode_1A_0T_0R(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ex_opcode_1A_0T_1R(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ex_opcode_1A_1T_1R(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ex_opcode_2A_0T_0R(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ex_opcode_2A_0T_1R(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ex_opcode_2A_1T_1R(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ex_opcode_2A_2T_1R(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ex_opcode_3A_0T_0R(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ex_opcode_3A_1T_1R(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ex_opcode_6A_0T_1R(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!820, !821, !822, !823, !824, !825, !826, !827}
!llvm.ident = !{!828}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 24, type: !818, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.dswexec.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22dswexec\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/dswexec.ll drivers/acpi/acpica/dswexec.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !782, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dswexec.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e09f75dbdb2ebdcae11d0731e3a4eae1")
!4 = !{!5, !12, !15, !100}
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
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !17, line: 133, size: 384, elements: !18)
!17 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!18 = !{!19, !769, !770, !771, !772, !778, !779, !780, !781}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !16, file: !17, line: 134, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !22, line: 369, size: 576, elements: !23)
!22 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!23 = !{!24, !35, !51, !63, !77, !91, !101, !418, !435, !451, !464, !542, !554, !568, !578, !596, !618, !637, !656, !675, !688, !715, !732, !745, !759, !768}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !21, file: !22, line: 370, baseType: !25, size: 128)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !22, line: 73, size: 128, elements: !26)
!26 = !{!27, !28, !32, !33, !34}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !25, file: !22, line: 74, baseType: !20, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !25, file: !22, line: 74, baseType: !29, size: 8, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !31)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !22, line: 74, baseType: !29, size: 8, offset: 72)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !25, file: !22, line: 74, baseType: !12, size: 16, offset: 80)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !25, file: !22, line: 74, baseType: !29, size: 8, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !21, file: !22, line: 371, baseType: !36, size: 192)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !22, line: 76, size: 192, elements: !37)
!37 = !{!38, !39, !40, !41, !42, !43, !47}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !36, file: !22, line: 77, baseType: !20, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !36, file: !22, line: 77, baseType: !29, size: 8, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !36, file: !22, line: 77, baseType: !29, size: 8, offset: 72)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !36, file: !22, line: 77, baseType: !12, size: 16, offset: 80)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !22, line: 77, baseType: !29, size: 8, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !36, file: !22, line: 77, baseType: !44, size: 24, offset: 104)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 24, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 3)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !36, file: !22, line: 78, baseType: !48, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !50)
!50 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !21, file: !22, line: 372, baseType: !52, size: 256)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !22, line: 93, size: 256, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !62}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !22, line: 94, baseType: !20, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !22, line: 94, baseType: !29, size: 8, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !22, line: 94, baseType: !29, size: 8, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !22, line: 94, baseType: !12, size: 16, offset: 80)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !22, line: 94, baseType: !29, size: 8, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !52, file: !22, line: 94, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !52, file: !22, line: 94, baseType: !7, size: 32, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !21, file: !22, line: 373, baseType: !64, size: 384)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !22, line: 97, size: 384, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !73, !74, !75, !76}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !64, file: !22, line: 98, baseType: !20, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !64, file: !22, line: 98, baseType: !29, size: 8, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !22, line: 98, baseType: !29, size: 8, offset: 72)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !64, file: !22, line: 98, baseType: !12, size: 16, offset: 80)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !22, line: 98, baseType: !29, size: 8, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !64, file: !22, line: 98, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !64, file: !22, line: 98, baseType: !7, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !64, file: !22, line: 99, baseType: !7, size: 32, offset: 224)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !64, file: !22, line: 100, baseType: !72, size: 64, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !64, file: !22, line: 101, baseType: !15, size: 64, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !21, file: !22, line: 374, baseType: !78, size: 384)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !22, line: 104, size: 384, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !88, !89, !90}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !78, file: !22, line: 105, baseType: !20, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !78, file: !22, line: 105, baseType: !29, size: 8, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !78, file: !22, line: 105, baseType: !29, size: 8, offset: 72)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !78, file: !22, line: 105, baseType: !12, size: 16, offset: 80)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !78, file: !22, line: 105, baseType: !29, size: 8, offset: 96)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !78, file: !22, line: 105, baseType: !15, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !78, file: !22, line: 106, baseType: !87, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !78, file: !22, line: 107, baseType: !72, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !78, file: !22, line: 108, baseType: !7, size: 32, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !78, file: !22, line: 109, baseType: !7, size: 32, offset: 352)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !21, file: !22, line: 375, baseType: !92, size: 192)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !22, line: 118, size: 192, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !92, file: !22, line: 119, baseType: !20, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !92, file: !22, line: 119, baseType: !29, size: 8, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !22, line: 119, baseType: !29, size: 8, offset: 72)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !92, file: !22, line: 119, baseType: !12, size: 16, offset: 80)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !92, file: !22, line: 119, baseType: !29, size: 8, offset: 96)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !92, file: !22, line: 119, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !21, file: !22, line: 376, baseType: !102, size: 448)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !22, line: 144, size: 448, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !415, !416, !417}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !102, file: !22, line: 145, baseType: !20, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !102, file: !22, line: 145, baseType: !29, size: 8, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !22, line: 145, baseType: !29, size: 8, offset: 72)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !102, file: !22, line: 145, baseType: !12, size: 16, offset: 80)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !22, line: 145, baseType: !29, size: 8, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !102, file: !22, line: 145, baseType: !29, size: 8, offset: 104)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !102, file: !22, line: 146, baseType: !29, size: 8, offset: 112)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !102, file: !22, line: 147, baseType: !29, size: 8, offset: 120)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !102, file: !22, line: 148, baseType: !20, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !102, file: !22, line: 149, baseType: !20, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !102, file: !22, line: 150, baseType: !72, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !102, file: !22, line: 154, baseType: !116, size: 64, offset: 320)
!116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !102, file: !22, line: 151, size: 64, elements: !117)
!117 = !{!118, !414}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !116, file: !22, line: 152, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !17, line: 248, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!5, !123}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !125, line: 37, size: 9024, elements: !126)
!125 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !360, !361, !362, !363, !364, !368, !370, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !397, !398, !399, !400, !401, !402, !403, !404, !406, !412}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !125, line: 38, baseType: !123, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !124, file: !125, line: 39, baseType: !29, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !124, file: !125, line: 40, baseType: !29, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !124, file: !125, line: 41, baseType: !12, size: 16, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !124, file: !125, line: 42, baseType: !29, size: 8, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !124, file: !125, line: 43, baseType: !29, size: 8, offset: 104)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !124, file: !125, line: 44, baseType: !29, size: 8, offset: 112)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !124, file: !125, line: 45, baseType: !135, size: 16, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !12)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !124, file: !125, line: 46, baseType: !29, size: 8, offset: 144)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !124, file: !125, line: 47, baseType: !29, size: 8, offset: 152)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !124, file: !125, line: 48, baseType: !29, size: 8, offset: 160)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !124, file: !125, line: 49, baseType: !29, size: 8, offset: 168)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !124, file: !125, line: 50, baseType: !29, size: 8, offset: 176)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !124, file: !125, line: 51, baseType: !29, size: 8, offset: 184)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !124, file: !125, line: 52, baseType: !29, size: 8, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !124, file: !125, line: 53, baseType: !29, size: 8, offset: 200)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !124, file: !125, line: 54, baseType: !72, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !124, file: !125, line: 55, baseType: !7, size: 32, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !124, file: !125, line: 56, baseType: !7, size: 32, offset: 352)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !124, file: !125, line: 57, baseType: !7, size: 32, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !124, file: !125, line: 58, baseType: !7, size: 32, offset: 416)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !124, file: !125, line: 60, baseType: !150, size: 640, offset: 448)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !17, line: 909, size: 640, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !241, !242, !358, !359}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !150, file: !17, line: 910, baseType: !72, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !150, file: !17, line: 911, baseType: !72, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !150, file: !17, line: 912, baseType: !72, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !150, file: !17, line: 913, baseType: !72, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !150, file: !17, line: 914, baseType: !72, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !150, file: !17, line: 915, baseType: !158, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !17, line: 891, size: 1600, elements: !160)
!160 = !{!161, !181, !197}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !159, file: !17, line: 892, baseType: !162, size: 448)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !17, line: 844, size: 448, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !180}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !162, file: !17, line: 845, baseType: !158, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !162, file: !17, line: 845, baseType: !29, size: 8, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !162, file: !17, line: 845, baseType: !29, size: 8, offset: 72)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !162, file: !17, line: 845, baseType: !12, size: 16, offset: 80)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !162, file: !17, line: 845, baseType: !72, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !17, line: 845, baseType: !158, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !162, file: !17, line: 845, baseType: !15, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !162, file: !17, line: 845, baseType: !172, size: 64, offset: 320)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !17, line: 732, size: 64, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !179}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !172, file: !17, line: 733, baseType: !48, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !172, file: !17, line: 734, baseType: !7, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !172, file: !17, line: 735, baseType: !60, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !172, file: !17, line: 736, baseType: !72, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !17, line: 737, baseType: !60, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !172, file: !17, line: 738, baseType: !158, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !162, file: !17, line: 845, baseType: !29, size: 8, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !159, file: !17, line: 893, baseType: !182, size: 640)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !17, line: 851, size: 640, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !182, file: !17, line: 852, baseType: !158, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !182, file: !17, line: 852, baseType: !29, size: 8, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !182, file: !17, line: 852, baseType: !29, size: 8, offset: 72)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !182, file: !17, line: 852, baseType: !12, size: 16, offset: 80)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !182, file: !17, line: 852, baseType: !72, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !17, line: 852, baseType: !158, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !182, file: !17, line: 852, baseType: !15, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !182, file: !17, line: 852, baseType: !172, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !182, file: !17, line: 852, baseType: !29, size: 8, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !182, file: !17, line: 852, baseType: !60, size: 64, offset: 448)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !182, file: !17, line: 853, baseType: !72, size: 64, offset: 512)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !182, file: !17, line: 854, baseType: !7, size: 32, offset: 576)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !17, line: 855, baseType: !7, size: 32, offset: 608)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !159, file: !17, line: 894, baseType: !198, size: 1600)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !17, line: 862, size: 1600, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !198, file: !17, line: 863, baseType: !158, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !17, line: 863, baseType: !29, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !17, line: 863, baseType: !29, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !198, file: !17, line: 863, baseType: !12, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !198, file: !17, line: 863, baseType: !72, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !17, line: 863, baseType: !158, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !198, file: !17, line: 863, baseType: !15, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !17, line: 863, baseType: !172, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !198, file: !17, line: 863, baseType: !29, size: 8, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !198, file: !17, line: 863, baseType: !158, size: 64, offset: 448)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !198, file: !17, line: 864, baseType: !158, size: 64, offset: 512)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !198, file: !17, line: 865, baseType: !60, size: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !198, file: !17, line: 866, baseType: !29, size: 8, offset: 640)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !198, file: !17, line: 867, baseType: !60, size: 64, offset: 704)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !198, file: !17, line: 868, baseType: !60, size: 64, offset: 768)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !198, file: !17, line: 869, baseType: !60, size: 64, offset: 832)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !198, file: !17, line: 870, baseType: !217, size: 32, offset: 896)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 32, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 4)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !198, file: !17, line: 871, baseType: !7, size: 32, offset: 928)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !198, file: !17, line: 872, baseType: !7, size: 32, offset: 960)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !198, file: !17, line: 873, baseType: !7, size: 32, offset: 992)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !198, file: !17, line: 874, baseType: !7, size: 32, offset: 1024)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !198, file: !17, line: 875, baseType: !7, size: 32, offset: 1056)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !198, file: !17, line: 876, baseType: !7, size: 32, offset: 1088)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !198, file: !17, line: 877, baseType: !7, size: 32, offset: 1120)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !198, file: !17, line: 878, baseType: !7, size: 32, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !198, file: !17, line: 879, baseType: !7, size: 32, offset: 1184)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !198, file: !17, line: 880, baseType: !7, size: 32, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !198, file: !17, line: 881, baseType: !7, size: 32, offset: 1248)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !198, file: !17, line: 882, baseType: !7, size: 32, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !198, file: !17, line: 883, baseType: !7, size: 32, offset: 1312)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !198, file: !17, line: 884, baseType: !12, size: 16, offset: 1344)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !198, file: !17, line: 885, baseType: !29, size: 8, offset: 1360)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !198, file: !17, line: 886, baseType: !29, size: 8, offset: 1368)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !198, file: !17, line: 887, baseType: !29, size: 8, offset: 1376)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !198, file: !17, line: 888, baseType: !238, size: 160, offset: 1384)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 160, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 20)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !150, file: !17, line: 916, baseType: !15, size: 64, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !150, file: !17, line: 917, baseType: !243, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !17, line: 679, size: 640, elements: !245)
!245 = !{!246, !254, !267, !276, !285, !298, !312, !324, !336}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !244, file: !17, line: 680, baseType: !247, size: 128)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !17, line: 575, size: 128, elements: !248)
!248 = !{!249, !250, !251, !252, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !247, file: !17, line: 576, baseType: !100, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !247, file: !17, line: 576, baseType: !29, size: 8, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !247, file: !17, line: 576, baseType: !29, size: 8, offset: 72)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !247, file: !17, line: 576, baseType: !12, size: 16, offset: 80)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !247, file: !17, line: 576, baseType: !12, size: 16, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !244, file: !17, line: 681, baseType: !255, size: 384)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !17, line: 604, size: 384, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !17, line: 605, baseType: !100, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !255, file: !17, line: 605, baseType: !29, size: 8, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !255, file: !17, line: 605, baseType: !29, size: 8, offset: 72)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !255, file: !17, line: 605, baseType: !12, size: 16, offset: 80)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !255, file: !17, line: 605, baseType: !12, size: 16, offset: 96)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !255, file: !17, line: 606, baseType: !12, size: 16, offset: 112)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !255, file: !17, line: 607, baseType: !158, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !255, file: !17, line: 608, baseType: !72, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !255, file: !17, line: 609, baseType: !72, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !255, file: !17, line: 610, baseType: !48, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !244, file: !17, line: 682, baseType: !268, size: 192)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !17, line: 582, size: 192, elements: !269)
!269 = !{!270, !271, !272, !273, !274, !275}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !17, line: 583, baseType: !100, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !268, file: !17, line: 583, baseType: !29, size: 8, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !17, line: 583, baseType: !29, size: 8, offset: 72)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !268, file: !17, line: 583, baseType: !12, size: 16, offset: 80)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !268, file: !17, line: 583, baseType: !12, size: 16, offset: 96)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !268, file: !17, line: 584, baseType: !20, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !244, file: !17, line: 683, baseType: !277, size: 192)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !17, line: 616, size: 192, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !277, file: !17, line: 617, baseType: !100, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !277, file: !17, line: 617, baseType: !29, size: 8, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !17, line: 617, baseType: !29, size: 8, offset: 72)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !277, file: !17, line: 617, baseType: !12, size: 16, offset: 80)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !277, file: !17, line: 617, baseType: !12, size: 16, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !277, file: !17, line: 618, baseType: !15, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !244, file: !17, line: 684, baseType: !286, size: 448)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !17, line: 621, size: 448, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !17, line: 622, baseType: !100, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !286, file: !17, line: 622, baseType: !29, size: 8, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !17, line: 622, baseType: !29, size: 8, offset: 72)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !286, file: !17, line: 622, baseType: !12, size: 16, offset: 80)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !286, file: !17, line: 622, baseType: !12, size: 16, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !286, file: !17, line: 623, baseType: !7, size: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !286, file: !17, line: 624, baseType: !158, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !286, file: !17, line: 625, baseType: !72, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !286, file: !17, line: 626, baseType: !72, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !286, file: !17, line: 627, baseType: !7, size: 32, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !244, file: !17, line: 685, baseType: !299, size: 512)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !17, line: 590, size: 512, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !17, line: 591, baseType: !100, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !299, file: !17, line: 591, baseType: !29, size: 8, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !17, line: 591, baseType: !29, size: 8, offset: 72)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !299, file: !17, line: 591, baseType: !12, size: 16, offset: 80)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !299, file: !17, line: 591, baseType: !12, size: 16, offset: 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !299, file: !17, line: 592, baseType: !7, size: 32, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !299, file: !17, line: 593, baseType: !20, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !299, file: !17, line: 594, baseType: !20, size: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !299, file: !17, line: 595, baseType: !123, size: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !299, file: !17, line: 596, baseType: !100, size: 64, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !299, file: !17, line: 597, baseType: !7, size: 32, offset: 448)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !244, file: !17, line: 686, baseType: !313, size: 320)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !17, line: 634, size: 320, elements: !314)
!314 = !{!315, !316, !317, !318, !319, !320, !321, !322, !323}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !313, file: !17, line: 635, baseType: !100, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !313, file: !17, line: 635, baseType: !29, size: 8, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !313, file: !17, line: 635, baseType: !29, size: 8, offset: 72)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !313, file: !17, line: 635, baseType: !12, size: 16, offset: 80)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !313, file: !17, line: 635, baseType: !12, size: 16, offset: 96)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !313, file: !17, line: 636, baseType: !29, size: 8, offset: 112)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !313, file: !17, line: 637, baseType: !123, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !313, file: !17, line: 638, baseType: !20, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !313, file: !17, line: 639, baseType: !48, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !244, file: !17, line: 687, baseType: !325, size: 640)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !17, line: 646, size: 640, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !17, line: 647, baseType: !100, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !325, file: !17, line: 647, baseType: !29, size: 8, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !17, line: 647, baseType: !29, size: 8, offset: 72)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !325, file: !17, line: 647, baseType: !12, size: 16, offset: 80)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !325, file: !17, line: 647, baseType: !12, size: 16, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !325, file: !17, line: 648, baseType: !333, size: 512, offset: 128)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 512, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 8)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !244, file: !17, line: 688, baseType: !337, size: 320)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !17, line: 669, size: 320, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !17, line: 670, baseType: !100, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !337, file: !17, line: 670, baseType: !29, size: 8, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !337, file: !17, line: 670, baseType: !29, size: 8, offset: 72)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !337, file: !17, line: 670, baseType: !12, size: 16, offset: 80)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !337, file: !17, line: 670, baseType: !12, size: 16, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !337, file: !17, line: 671, baseType: !29, size: 8, offset: 112)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !337, file: !17, line: 672, baseType: !15, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !337, file: !17, line: 673, baseType: !20, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !337, file: !17, line: 674, baseType: !348, size: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !17, line: 660, size: 128, elements: !350)
!350 = !{!351, !357}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !349, file: !17, line: 661, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !356, !7, !100}
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !100)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !349, file: !17, line: 662, baseType: !100, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !150, file: !17, line: 918, baseType: !158, size: 64, offset: 512)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !150, file: !17, line: 919, baseType: !7, size: 32, offset: 576)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !124, file: !125, line: 61, baseType: !7, size: 32, offset: 1088)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !124, file: !125, line: 62, baseType: !7, size: 32, offset: 1120)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !124, file: !125, line: 63, baseType: !12, size: 16, offset: 1152)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !124, file: !125, line: 64, baseType: !29, size: 8, offset: 1168)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !124, file: !125, line: 66, baseType: !365, size: 2688, offset: 1216)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 2688, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 7)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !124, file: !125, line: 67, baseType: !369, size: 3072, offset: 3904)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 3072, elements: !334)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !124, file: !125, line: 68, baseType: !371, size: 576, offset: 6976)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 576, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 9)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !124, file: !125, line: 69, baseType: !87, size: 64, offset: 7552)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !124, file: !125, line: 71, baseType: !72, size: 64, offset: 7616)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !124, file: !125, line: 72, baseType: !87, size: 64, offset: 7680)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !124, file: !125, line: 73, baseType: !243, size: 64, offset: 7744)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !124, file: !125, line: 74, baseType: !15, size: 64, offset: 7808)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !124, file: !125, line: 75, baseType: !20, size: 64, offset: 7872)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !124, file: !125, line: 76, baseType: !15, size: 64, offset: 7936)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !124, file: !125, line: 77, baseType: !158, size: 64, offset: 8000)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !124, file: !125, line: 78, baseType: !20, size: 64, offset: 8064)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !124, file: !125, line: 79, baseType: !15, size: 64, offset: 8128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !124, file: !125, line: 80, baseType: !60, size: 64, offset: 8192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !124, file: !125, line: 81, baseType: !158, size: 64, offset: 8256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !124, file: !125, line: 82, baseType: !387, size: 64, offset: 8320)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !17, line: 718, size: 128, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !389, file: !17, line: 722, baseType: !7, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !389, file: !17, line: 723, baseType: !7, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !17, line: 724, baseType: !12, size: 16, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !389, file: !17, line: 725, baseType: !29, size: 8, offset: 80)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !389, file: !17, line: 726, baseType: !29, size: 8, offset: 88)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !389, file: !17, line: 727, baseType: !29, size: 8, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !124, file: !125, line: 83, baseType: !158, size: 64, offset: 8384)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !124, file: !125, line: 84, baseType: !20, size: 64, offset: 8448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !124, file: !125, line: 85, baseType: !243, size: 64, offset: 8512)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !124, file: !125, line: 86, baseType: !20, size: 64, offset: 8576)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !124, file: !125, line: 87, baseType: !243, size: 64, offset: 8640)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !124, file: !125, line: 88, baseType: !158, size: 64, offset: 8704)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !124, file: !125, line: 89, baseType: !158, size: 64, offset: 8768)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !124, file: !125, line: 90, baseType: !405, size: 64, offset: 8832)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !124, file: !125, line: 91, baseType: !407, size: 64, offset: 8896)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !17, line: 652, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!5, !123, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !124, file: !125, line: 92, baseType: !413, size: 64, offset: 8960)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !17, line: 656, baseType: !120)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !116, file: !22, line: 153, baseType: !20, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !102, file: !22, line: 156, baseType: !7, size: 32, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !102, file: !22, line: 157, baseType: !135, size: 16, offset: 416)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !102, file: !22, line: 158, baseType: !29, size: 8, offset: 432)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !21, file: !22, line: 377, baseType: !419, size: 576)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !22, line: 122, size: 576, elements: !420)
!420 = !{!421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !419, file: !22, line: 123, baseType: !20, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !419, file: !22, line: 123, baseType: !29, size: 8, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !419, file: !22, line: 123, baseType: !29, size: 8, offset: 72)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !419, file: !22, line: 123, baseType: !12, size: 16, offset: 80)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !419, file: !22, line: 123, baseType: !29, size: 8, offset: 96)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !419, file: !22, line: 123, baseType: !29, size: 8, offset: 104)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !419, file: !22, line: 124, baseType: !12, size: 16, offset: 112)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !419, file: !22, line: 125, baseType: !100, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !419, file: !22, line: 126, baseType: !48, size: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !419, file: !22, line: 127, baseType: !405, size: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !419, file: !22, line: 128, baseType: !20, size: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !419, file: !22, line: 129, baseType: !20, size: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !419, file: !22, line: 130, baseType: !15, size: 64, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !419, file: !22, line: 131, baseType: !29, size: 8, offset: 512)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !21, file: !22, line: 378, baseType: !436, size: 512)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !22, line: 134, size: 512, elements: !437)
!437 = !{!438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !449, !450}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !436, file: !22, line: 135, baseType: !20, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !436, file: !22, line: 135, baseType: !29, size: 8, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !436, file: !22, line: 135, baseType: !29, size: 8, offset: 72)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !436, file: !22, line: 135, baseType: !12, size: 16, offset: 80)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !436, file: !22, line: 135, baseType: !29, size: 8, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !436, file: !22, line: 135, baseType: !29, size: 8, offset: 104)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !436, file: !22, line: 136, baseType: !15, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !436, file: !22, line: 137, baseType: !20, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !22, line: 138, baseType: !20, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !436, file: !22, line: 139, baseType: !448, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !48)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !436, file: !22, line: 140, baseType: !7, size: 32, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !436, file: !22, line: 141, baseType: !100, size: 64, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !21, file: !22, line: 379, baseType: !452, size: 320)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !22, line: 185, size: 320, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !463}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !22, line: 186, baseType: !20, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !22, line: 186, baseType: !29, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !22, line: 186, baseType: !29, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !22, line: 186, baseType: !12, size: 16, offset: 80)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !22, line: 186, baseType: !29, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !452, file: !22, line: 186, baseType: !460, size: 128, offset: 128)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 2)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !452, file: !22, line: 186, baseType: !20, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !21, file: !22, line: 380, baseType: !465, size: 384)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !22, line: 188, size: 384, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !465, file: !22, line: 189, baseType: !20, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !465, file: !22, line: 189, baseType: !29, size: 8, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !465, file: !22, line: 189, baseType: !29, size: 8, offset: 72)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !465, file: !22, line: 189, baseType: !12, size: 16, offset: 80)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !22, line: 189, baseType: !29, size: 8, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !465, file: !22, line: 190, baseType: !460, size: 128, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !465, file: !22, line: 190, baseType: !20, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !465, file: !22, line: 190, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !17, line: 480, size: 576, elements: !477)
!477 = !{!478, !479, !480, !481, !489, !504, !536, !537, !538, !539, !540, !541}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !476, file: !17, line: 481, baseType: !15, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !476, file: !17, line: 482, baseType: !475, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !17, line: 483, baseType: !475, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !476, file: !17, line: 484, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !17, line: 497, size: 256, elements: !484)
!484 = !{!485, !486, !487, !488}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !483, file: !17, line: 498, baseType: !482, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !483, file: !17, line: 499, baseType: !482, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !483, file: !17, line: 500, baseType: !475, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !483, file: !17, line: 501, baseType: !7, size: 32, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !476, file: !17, line: 485, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !17, line: 466, size: 320, elements: !492)
!492 = !{!493, !498, !499, !500, !501, !502, !503}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !491, file: !17, line: 467, baseType: !494, size: 128)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !17, line: 459, size: 128, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !494, file: !17, line: 460, baseType: !29, size: 8)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !494, file: !17, line: 461, baseType: !48, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !491, file: !17, line: 468, baseType: !494, size: 128, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !491, file: !17, line: 469, baseType: !12, size: 16, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !491, file: !17, line: 470, baseType: !29, size: 8, offset: 272)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !491, file: !17, line: 471, baseType: !29, size: 8, offset: 280)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !491, file: !17, line: 472, baseType: !29, size: 8, offset: 288)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !491, file: !17, line: 473, baseType: !29, size: 8, offset: 296)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !476, file: !17, line: 486, baseType: !505, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !17, line: 448, size: 192, elements: !507)
!507 = !{!508, !531, !532, !533, !534, !535}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !506, file: !17, line: 449, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !17, line: 438, size: 64, elements: !510)
!510 = !{!511, !512, !525}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !509, file: !17, line: 439, baseType: !15, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !509, file: !17, line: 440, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !17, line: 419, size: 256, elements: !515)
!515 = !{!516, !521, !522, !523, !524}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !514, file: !17, line: 420, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!7, !356, !7, !100}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !514, file: !17, line: 421, baseType: !100, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !514, file: !17, line: 422, baseType: !15, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !514, file: !17, line: 423, baseType: !29, size: 8, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !514, file: !17, line: 424, baseType: !29, size: 8, offset: 200)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !509, file: !17, line: 441, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !17, line: 429, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !527, file: !17, line: 430, baseType: !15, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !527, file: !17, line: 431, baseType: !526, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !506, file: !17, line: 450, baseType: !490, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !17, line: 451, baseType: !29, size: 8, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !506, file: !17, line: 452, baseType: !29, size: 8, offset: 136)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !506, file: !17, line: 453, baseType: !29, size: 8, offset: 144)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !506, file: !17, line: 454, baseType: !29, size: 8, offset: 152)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !476, file: !17, line: 487, baseType: !48, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !476, file: !17, line: 488, baseType: !7, size: 32, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !476, file: !17, line: 489, baseType: !12, size: 16, offset: 480)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !476, file: !17, line: 490, baseType: !12, size: 16, offset: 496)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !476, file: !17, line: 491, baseType: !29, size: 8, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !476, file: !17, line: 492, baseType: !29, size: 8, offset: 520)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !21, file: !22, line: 381, baseType: !543, size: 384)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !22, line: 193, size: 384, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !543, file: !22, line: 194, baseType: !20, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !543, file: !22, line: 194, baseType: !29, size: 8, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !543, file: !22, line: 194, baseType: !29, size: 8, offset: 72)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !543, file: !22, line: 194, baseType: !12, size: 16, offset: 80)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !22, line: 194, baseType: !29, size: 8, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !543, file: !22, line: 194, baseType: !460, size: 128, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !543, file: !22, line: 194, baseType: !20, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !543, file: !22, line: 194, baseType: !7, size: 32, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !543, file: !22, line: 195, baseType: !7, size: 32, offset: 352)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !21, file: !22, line: 382, baseType: !555, size: 384)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !22, line: 198, size: 384, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !555, file: !22, line: 199, baseType: !20, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !555, file: !22, line: 199, baseType: !29, size: 8, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !555, file: !22, line: 199, baseType: !29, size: 8, offset: 72)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !555, file: !22, line: 199, baseType: !12, size: 16, offset: 80)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !22, line: 199, baseType: !29, size: 8, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !555, file: !22, line: 201, baseType: !29, size: 8, offset: 104)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !555, file: !22, line: 202, baseType: !29, size: 8, offset: 112)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !555, file: !22, line: 203, baseType: !460, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !555, file: !22, line: 203, baseType: !20, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !555, file: !22, line: 203, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !48)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !21, file: !22, line: 383, baseType: !569, size: 320)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !22, line: 206, size: 320, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !22, line: 207, baseType: !20, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !22, line: 207, baseType: !29, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !22, line: 207, baseType: !29, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !22, line: 207, baseType: !12, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !22, line: 207, baseType: !29, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !569, file: !22, line: 207, baseType: !460, size: 128, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !569, file: !22, line: 207, baseType: !20, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !21, file: !22, line: 384, baseType: !579, size: 384)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !22, line: 234, size: 384, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !579, file: !22, line: 235, baseType: !20, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !579, file: !22, line: 235, baseType: !29, size: 8, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !22, line: 235, baseType: !29, size: 8, offset: 72)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !579, file: !22, line: 235, baseType: !12, size: 16, offset: 80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !22, line: 235, baseType: !29, size: 8, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !579, file: !22, line: 235, baseType: !29, size: 8, offset: 104)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !579, file: !22, line: 235, baseType: !29, size: 8, offset: 112)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !579, file: !22, line: 235, baseType: !29, size: 8, offset: 120)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !579, file: !22, line: 235, baseType: !15, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !579, file: !22, line: 235, baseType: !7, size: 32, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !579, file: !22, line: 235, baseType: !7, size: 32, offset: 224)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !579, file: !22, line: 235, baseType: !7, size: 32, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !579, file: !22, line: 235, baseType: !29, size: 8, offset: 288)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !579, file: !22, line: 235, baseType: !29, size: 8, offset: 296)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !579, file: !22, line: 235, baseType: !20, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !21, file: !22, line: 385, baseType: !597, size: 576)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !22, line: 238, size: 576, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !22, line: 239, baseType: !20, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !22, line: 239, baseType: !29, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !22, line: 239, baseType: !29, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !22, line: 239, baseType: !12, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !22, line: 239, baseType: !29, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !597, file: !22, line: 239, baseType: !29, size: 8, offset: 104)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !597, file: !22, line: 239, baseType: !29, size: 8, offset: 112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !597, file: !22, line: 239, baseType: !29, size: 8, offset: 120)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !22, line: 239, baseType: !15, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !597, file: !22, line: 239, baseType: !7, size: 32, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !597, file: !22, line: 239, baseType: !7, size: 32, offset: 224)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !597, file: !22, line: 239, baseType: !7, size: 32, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !597, file: !22, line: 239, baseType: !29, size: 8, offset: 288)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !597, file: !22, line: 239, baseType: !29, size: 8, offset: 296)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !597, file: !22, line: 239, baseType: !12, size: 16, offset: 304)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !597, file: !22, line: 240, baseType: !20, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !597, file: !22, line: 241, baseType: !72, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !597, file: !22, line: 242, baseType: !12, size: 16, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !597, file: !22, line: 243, baseType: !72, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !21, file: !22, line: 386, baseType: !619, size: 384)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !22, line: 263, size: 384, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !619, file: !22, line: 264, baseType: !20, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !619, file: !22, line: 264, baseType: !29, size: 8, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !22, line: 264, baseType: !29, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !619, file: !22, line: 264, baseType: !12, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !22, line: 264, baseType: !29, size: 8, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !619, file: !22, line: 264, baseType: !29, size: 8, offset: 104)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !619, file: !22, line: 264, baseType: !29, size: 8, offset: 112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !619, file: !22, line: 264, baseType: !29, size: 8, offset: 120)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !619, file: !22, line: 264, baseType: !15, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !619, file: !22, line: 264, baseType: !7, size: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !619, file: !22, line: 264, baseType: !7, size: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !619, file: !22, line: 264, baseType: !7, size: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !619, file: !22, line: 264, baseType: !29, size: 8, offset: 288)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !619, file: !22, line: 264, baseType: !29, size: 8, offset: 296)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !619, file: !22, line: 264, baseType: !29, size: 8, offset: 304)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !619, file: !22, line: 265, baseType: !20, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !21, file: !22, line: 387, baseType: !638, size: 448)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !22, line: 246, size: 448, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !638, file: !22, line: 247, baseType: !20, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !638, file: !22, line: 247, baseType: !29, size: 8, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !22, line: 247, baseType: !29, size: 8, offset: 72)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !638, file: !22, line: 247, baseType: !12, size: 16, offset: 80)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !22, line: 247, baseType: !29, size: 8, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !638, file: !22, line: 247, baseType: !29, size: 8, offset: 104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !638, file: !22, line: 247, baseType: !29, size: 8, offset: 112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !638, file: !22, line: 247, baseType: !29, size: 8, offset: 120)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !22, line: 247, baseType: !15, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !638, file: !22, line: 247, baseType: !7, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !638, file: !22, line: 247, baseType: !7, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !638, file: !22, line: 247, baseType: !7, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !638, file: !22, line: 247, baseType: !29, size: 8, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !638, file: !22, line: 247, baseType: !29, size: 8, offset: 296)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !638, file: !22, line: 247, baseType: !20, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !638, file: !22, line: 248, baseType: !20, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !21, file: !22, line: 388, baseType: !657, size: 448)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !22, line: 251, size: 448, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !657, file: !22, line: 252, baseType: !20, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !657, file: !22, line: 252, baseType: !29, size: 8, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !657, file: !22, line: 252, baseType: !29, size: 8, offset: 72)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !657, file: !22, line: 252, baseType: !12, size: 16, offset: 80)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !22, line: 252, baseType: !29, size: 8, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !657, file: !22, line: 252, baseType: !29, size: 8, offset: 104)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !657, file: !22, line: 252, baseType: !29, size: 8, offset: 112)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !657, file: !22, line: 252, baseType: !29, size: 8, offset: 120)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !657, file: !22, line: 252, baseType: !15, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !657, file: !22, line: 252, baseType: !7, size: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !657, file: !22, line: 252, baseType: !7, size: 32, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !657, file: !22, line: 252, baseType: !7, size: 32, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !657, file: !22, line: 252, baseType: !29, size: 8, offset: 288)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !657, file: !22, line: 252, baseType: !29, size: 8, offset: 296)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !657, file: !22, line: 257, baseType: !20, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !657, file: !22, line: 258, baseType: !20, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !21, file: !22, line: 389, baseType: !676, size: 512)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !22, line: 274, size: 512, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !676, file: !22, line: 275, baseType: !20, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !676, file: !22, line: 275, baseType: !29, size: 8, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !22, line: 275, baseType: !29, size: 8, offset: 72)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !676, file: !22, line: 275, baseType: !12, size: 16, offset: 80)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !22, line: 275, baseType: !29, size: 8, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !676, file: !22, line: 275, baseType: !15, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !676, file: !22, line: 276, baseType: !7, size: 32, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !676, file: !22, line: 277, baseType: !352, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !676, file: !22, line: 278, baseType: !100, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !22, line: 279, baseType: !460, size: 128, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !21, file: !22, line: 390, baseType: !689, size: 576)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !22, line: 282, size: 576, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !704, !705, !706, !707, !713, !714}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !689, file: !22, line: 283, baseType: !20, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !22, line: 283, baseType: !29, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !22, line: 283, baseType: !29, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !689, file: !22, line: 283, baseType: !12, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !22, line: 283, baseType: !29, size: 8, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !689, file: !22, line: 283, baseType: !29, size: 8, offset: 104)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !689, file: !22, line: 284, baseType: !29, size: 8, offset: 112)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !689, file: !22, line: 285, baseType: !699, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!5, !7, !448, !7, !703, !100, !100}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !689, file: !22, line: 286, baseType: !15, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !689, file: !22, line: 287, baseType: !100, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !689, file: !22, line: 288, baseType: !100, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !689, file: !22, line: 289, baseType: !708, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!5, !356, !7, !100, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !689, file: !22, line: 290, baseType: !20, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !22, line: 291, baseType: !20, size: 64, offset: 512)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !21, file: !22, line: 391, baseType: !716, size: 512)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !22, line: 309, size: 512, elements: !717)
!717 = !{!718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !716, file: !22, line: 310, baseType: !20, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !716, file: !22, line: 310, baseType: !29, size: 8, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !716, file: !22, line: 310, baseType: !29, size: 8, offset: 72)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !716, file: !22, line: 310, baseType: !12, size: 16, offset: 80)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !22, line: 310, baseType: !29, size: 8, offset: 96)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !716, file: !22, line: 310, baseType: !29, size: 8, offset: 104)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !716, file: !22, line: 311, baseType: !29, size: 8, offset: 112)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !716, file: !22, line: 312, baseType: !29, size: 8, offset: 120)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !716, file: !22, line: 313, baseType: !100, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !716, file: !22, line: 314, baseType: !15, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !716, file: !22, line: 315, baseType: !87, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !716, file: !22, line: 316, baseType: !72, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !716, file: !22, line: 317, baseType: !72, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !716, file: !22, line: 318, baseType: !7, size: 32, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !21, file: !22, line: 392, baseType: !733, size: 448)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !22, line: 342, size: 448, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743, !744}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !733, file: !22, line: 343, baseType: !20, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !733, file: !22, line: 343, baseType: !29, size: 8, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !733, file: !22, line: 343, baseType: !29, size: 8, offset: 72)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !733, file: !22, line: 343, baseType: !12, size: 16, offset: 80)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !22, line: 343, baseType: !29, size: 8, offset: 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !733, file: !22, line: 343, baseType: !15, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !733, file: !22, line: 344, baseType: !15, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !733, file: !22, line: 345, baseType: !100, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !733, file: !22, line: 346, baseType: !72, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !733, file: !22, line: 347, baseType: !7, size: 32, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !21, file: !22, line: 393, baseType: !746, size: 256)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !22, line: 352, size: 256, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753, !758}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !746, file: !22, line: 353, baseType: !20, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !746, file: !22, line: 353, baseType: !29, size: 8, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !746, file: !22, line: 353, baseType: !29, size: 8, offset: 72)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !746, file: !22, line: 353, baseType: !12, size: 16, offset: 80)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !22, line: 353, baseType: !29, size: 8, offset: 96)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !746, file: !22, line: 353, baseType: !754, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !356, !100}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !746, file: !22, line: 354, baseType: !100, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !21, file: !22, line: 394, baseType: !760, size: 192)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !22, line: 359, size: 192, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !760, file: !22, line: 360, baseType: !20, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !760, file: !22, line: 360, baseType: !29, size: 8, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !22, line: 360, baseType: !29, size: 8, offset: 72)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !760, file: !22, line: 360, baseType: !12, size: 16, offset: 80)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !22, line: 360, baseType: !29, size: 8, offset: 96)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !760, file: !22, line: 360, baseType: !20, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !21, file: !22, line: 401, baseType: !16, size: 384)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !16, file: !17, line: 135, baseType: !29, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !16, file: !17, line: 136, baseType: !29, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !16, file: !17, line: 137, baseType: !12, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !16, file: !17, line: 138, baseType: !773, size: 32, offset: 96)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !774, line: 328, size: 32, elements: !775)
!774 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !773, file: !774, line: 329, baseType: !7, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !773, file: !774, line: 330, baseType: !217, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !16, file: !17, line: 139, baseType: !15, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !16, file: !17, line: 140, baseType: !15, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !16, file: !17, line: 141, baseType: !15, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !16, file: !17, line: 142, baseType: !135, size: 16, offset: 320)
!782 = !{!783, !788, !793, !798, !800, !805, !810, !0, !812}
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !3, line: 72, type: !785, isLocal: true, isDefinition: true)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 376, elements: !786)
!786 = !{!787}
!787 = !DISubrange(count: 47)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !3, line: 94, type: !790, isLocal: true, isDefinition: true)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 264, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 33)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(scope: null, file: !3, line: 112, type: !795, isLocal: true, isDefinition: true)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 488, elements: !796)
!796 = !{!797}
!797 = !DISubrange(count: 61)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(scope: null, file: !3, line: 347, type: !238, isLocal: true, isDefinition: true)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(scope: null, file: !3, line: 433, type: !802, isLocal: true, isDefinition: true)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 272, elements: !803)
!803 = !{!804}
!804 = !DISubrange(count: 34)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !3, line: 681, type: !807, isLocal: true, isDefinition: true)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 224, elements: !808)
!808 = !{!809}
!809 = !DISubrange(count: 28)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !3, line: 694, type: !795, isLocal: true, isDefinition: true)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(name: "acpi_gbl_op_type_dispatch", scope: !2, file: !3, line: 29, type: !814, isLocal: true, isDefinition: true)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 768, elements: !816)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_execute_op", file: !17, line: 698, baseType: !120)
!816 = !{!817}
!817 = !DISubrange(count: 12)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 64, elements: !334)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!820 = !{i32 7, !"Dwarf Version", i32 5}
!821 = !{i32 2, !"Debug Info Version", i32 3}
!822 = !{i32 1, !"wchar_size", i32 2}
!823 = !{i32 8, !"cf-protection-branch", i32 1}
!824 = !{i32 4, !"function_return_thunk_extern", i32 1}
!825 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!826 = !{i32 1, !"Code Model", i32 2}
!827 = !{i32 1, !"override-stack-alignment", i32 8}
!828 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!829 = distinct !DISubprogram(name: "acpi_ds_get_predicate_value", scope: !3, file: !3, line: 58, type: !830, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{!5, !123, !20}
!832 = !{!833, !834, !835, !836, !837, !838}
!833 = !DILocalVariable(name: "walk_state", arg: 1, scope: !829, file: !3, line: 58, type: !123)
!834 = !DILocalVariable(name: "result_obj", arg: 2, scope: !829, file: !3, line: 59, type: !20)
!835 = !DILocalVariable(name: "status", scope: !829, file: !3, line: 61, type: !5)
!836 = !DILocalVariable(name: "obj_desc", scope: !829, file: !3, line: 62, type: !20)
!837 = !DILocalVariable(name: "local_obj_desc", scope: !829, file: !3, line: 63, type: !20)
!838 = !DILabel(scope: !829, name: "cleanup", file: !3, line: 143)
!839 = !DILocation(line: 58, column: 53, scope: !829)
!840 = !DILocation(line: 59, column: 35, scope: !829)
!841 = !DILocation(line: 61, column: 2, scope: !829)
!842 = !DILocation(line: 61, column: 14, scope: !829)
!843 = !DILocation(line: 62, column: 2, scope: !829)
!844 = !DILocation(line: 62, column: 29, scope: !829)
!845 = !DILocation(line: 63, column: 2, scope: !829)
!846 = !DILocation(line: 63, column: 29, scope: !829)
!847 = !DILocation(line: 67, column: 2, scope: !829)
!848 = !DILocation(line: 67, column: 14, scope: !829)
!849 = !DILocation(line: 67, column: 36, scope: !829)
!850 = !DILocation(line: 67, column: 42, scope: !829)
!851 = !DILocation(line: 69, column: 6, scope: !852)
!852 = distinct !DILexicalBlock(scope: !829, file: !3, line: 69, column: 6)
!853 = !DILocation(line: 69, column: 6, scope: !829)
!854 = !DILocation(line: 70, column: 42, scope: !855)
!855 = distinct !DILexicalBlock(scope: !852, file: !3, line: 69, column: 18)
!856 = !DILocation(line: 70, column: 12, scope: !855)
!857 = !DILocation(line: 70, column: 10, scope: !855)
!858 = !DILocation(line: 71, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !855, file: !3, line: 71, column: 7)
!860 = !DILocation(line: 71, column: 7, scope: !855)
!861 = !DILocation(line: 72, column: 4, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !3, line: 71, column: 29)
!863 = !DILocation(line: 75, column: 4, scope: !862)
!864 = !DILocation(line: 77, column: 2, scope: !855)
!865 = !DILocation(line: 78, column: 35, scope: !866)
!866 = distinct !DILexicalBlock(scope: !852, file: !3, line: 77, column: 9)
!867 = !DILocation(line: 78, column: 47, scope: !866)
!868 = !DILocation(line: 78, column: 59, scope: !866)
!869 = !DILocation(line: 78, column: 12, scope: !866)
!870 = !DILocation(line: 78, column: 10, scope: !866)
!871 = !DILocation(line: 79, column: 7, scope: !872)
!872 = distinct !DILexicalBlock(scope: !866, file: !3, line: 79, column: 7)
!873 = !DILocation(line: 79, column: 7, scope: !866)
!874 = !DILocation(line: 80, column: 4, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !3, line: 79, column: 29)
!876 = !DILocation(line: 84, column: 33, scope: !866)
!877 = !DILocation(line: 84, column: 45, scope: !866)
!878 = !DILocation(line: 85, column: 11, scope: !866)
!879 = !DILocation(line: 84, column: 7, scope: !866)
!880 = !DILocation(line: 83, column: 10, scope: !866)
!881 = !DILocation(line: 86, column: 7, scope: !882)
!882 = distinct !DILexicalBlock(scope: !866, file: !3, line: 86, column: 7)
!883 = !DILocation(line: 86, column: 7, scope: !866)
!884 = !DILocation(line: 87, column: 4, scope: !885)
!885 = distinct !DILexicalBlock(scope: !882, file: !3, line: 86, column: 29)
!886 = !DILocation(line: 90, column: 14, scope: !866)
!887 = !DILocation(line: 90, column: 26, scope: !866)
!888 = !DILocation(line: 90, column: 12, scope: !866)
!889 = !DILocation(line: 93, column: 7, scope: !890)
!890 = distinct !DILexicalBlock(scope: !829, file: !3, line: 93, column: 6)
!891 = !DILocation(line: 93, column: 6, scope: !829)
!892 = !DILocation(line: 94, column: 3, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !3, line: 93, column: 17)
!894 = !DILocation(line: 98, column: 3, scope: !893)
!895 = !DILocation(line: 105, column: 38, scope: !829)
!896 = !DILocation(line: 105, column: 11, scope: !829)
!897 = !DILocation(line: 105, column: 9, scope: !829)
!898 = !DILocation(line: 107, column: 6, scope: !899)
!899 = distinct !DILexicalBlock(scope: !829, file: !3, line: 107, column: 6)
!900 = !DILocation(line: 107, column: 6, scope: !829)
!901 = !DILocation(line: 108, column: 3, scope: !902)
!902 = distinct !DILexicalBlock(scope: !899, file: !3, line: 107, column: 28)
!903 = !DILocation(line: 111, column: 6, scope: !904)
!904 = distinct !DILexicalBlock(scope: !829, file: !3, line: 111, column: 6)
!905 = !DILocation(line: 111, column: 29, scope: !904)
!906 = !DILocation(line: 111, column: 34, scope: !904)
!907 = !DILocation(line: 111, column: 6, scope: !829)
!908 = !DILocation(line: 112, column: 3, scope: !909)
!909 = distinct !DILexicalBlock(scope: !904, file: !3, line: 111, column: 56)
!910 = !DILocation(line: 116, column: 10, scope: !909)
!911 = !DILocation(line: 117, column: 3, scope: !909)
!912 = !DILocation(line: 122, column: 40, scope: !829)
!913 = !DILocation(line: 122, column: 8, scope: !829)
!914 = !DILocation(line: 128, column: 6, scope: !915)
!915 = distinct !DILexicalBlock(scope: !829, file: !3, line: 128, column: 6)
!916 = !DILocation(line: 128, column: 30, scope: !915)
!917 = !DILocation(line: 128, column: 6, scope: !829)
!918 = !DILocation(line: 129, column: 3, scope: !919)
!919 = distinct !DILexicalBlock(scope: !915, file: !3, line: 128, column: 37)
!920 = !DILocation(line: 129, column: 15, scope: !919)
!921 = !DILocation(line: 129, column: 37, scope: !919)
!922 = !DILocation(line: 129, column: 43, scope: !919)
!923 = !DILocation(line: 130, column: 2, scope: !919)
!924 = !DILocation(line: 135, column: 3, scope: !925)
!925 = distinct !DILexicalBlock(scope: !915, file: !3, line: 130, column: 9)
!926 = !DILocation(line: 135, column: 15, scope: !925)
!927 = !DILocation(line: 135, column: 37, scope: !925)
!928 = !DILocation(line: 135, column: 43, scope: !925)
!929 = !DILocation(line: 136, column: 10, scope: !925)
!930 = !DILocation(line: 141, column: 35, scope: !829)
!931 = !DILocation(line: 141, column: 51, scope: !829)
!932 = !DILocation(line: 141, column: 8, scope: !829)
!933 = !DILocation(line: 141, column: 2, scope: !829)
!934 = !DILocation(line: 143, column: 1, scope: !829)
!935 = !DILocation(line: 152, column: 32, scope: !829)
!936 = !DILocation(line: 152, column: 48, scope: !829)
!937 = !DILocation(line: 152, column: 2, scope: !829)
!938 = !DILocation(line: 158, column: 6, scope: !939)
!939 = distinct !DILexicalBlock(scope: !829, file: !3, line: 158, column: 6)
!940 = !DILocation(line: 158, column: 24, scope: !939)
!941 = !DILocation(line: 158, column: 21, scope: !939)
!942 = !DILocation(line: 158, column: 6, scope: !829)
!943 = !DILocation(line: 159, column: 28, scope: !944)
!944 = distinct !DILexicalBlock(scope: !939, file: !3, line: 158, column: 34)
!945 = !DILocation(line: 159, column: 3, scope: !944)
!946 = !DILocation(line: 160, column: 2, scope: !944)
!947 = !DILocation(line: 161, column: 27, scope: !829)
!948 = !DILocation(line: 161, column: 2, scope: !829)
!949 = !DILocation(line: 163, column: 2, scope: !829)
!950 = !DILocation(line: 163, column: 14, scope: !829)
!951 = !DILocation(line: 163, column: 36, scope: !829)
!952 = !DILocation(line: 163, column: 42, scope: !829)
!953 = !DILocation(line: 164, column: 2, scope: !829)
!954 = !DILocation(line: 165, column: 1, scope: !829)
!955 = !DISubprogram(name: "acpi_ds_result_pop", scope: !956, file: !956, line: 329, type: !957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!956 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!957 = !DISubroutineType(types: !958)
!958 = !{!5, !87, !123}
!959 = !DISubprogram(name: "acpi_exception", scope: !960, file: !960, line: 906, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!960 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!961 = !DISubroutineType(types: !962)
!962 = !{null, !963, !7, !5, !963, null}
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!964 = !DISubprogram(name: "acpi_ds_create_operand", scope: !956, file: !956, line: 260, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!965 = !DISubroutineType(types: !966)
!966 = !{!5, !123, !158, !7}
!967 = !DISubprogram(name: "acpi_ex_resolve_to_value", scope: !968, file: !968, line: 357, type: !957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!968 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!969 = !DISubprogram(name: "acpi_error", scope: !960, file: !960, line: 901, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!970 = !DISubroutineType(types: !971)
!971 = !{null, !963, !7, !963, null}
!972 = !DISubprogram(name: "acpi_ex_convert_to_integer", scope: !968, file: !968, line: 69, type: !973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!973 = !DISubroutineType(types: !974)
!974 = !{!5, !20, !87, !7}
!975 = !DISubprogram(name: "acpi_ex_truncate_for32bit_table", scope: !968, file: !968, line: 468, type: !976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!976 = !DISubroutineType(types: !977)
!977 = !{!29, !20}
!978 = !DISubprogram(name: "acpi_ds_do_implicit_return", scope: !956, file: !956, line: 246, type: !979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!979 = !DISubroutineType(types: !980)
!980 = !{!29, !20, !123, !29}
!981 = distinct !DISubprogram(name: "acpi_db_display_result_object", scope: !982, file: !982, line: 164, type: !983, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !985)
!982 = !DIFile(filename: "drivers/acpi/acpica/acdebug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a2d892046e641bda42bdda5dae6db1e6")
!983 = !DISubroutineType(types: !984)
!984 = !{null, !20, !123}
!985 = !{!986, !987}
!986 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !981, file: !982, line: 164, type: !20)
!987 = !DILocalVariable(name: "walk_state", arg: 2, scope: !981, file: !982, line: 164, type: !123)
!988 = !DILocation(line: 164, column: 1, scope: !981)
!989 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !990, file: !990, line: 369, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!991 = !DISubroutineType(types: !992)
!992 = !{null, !20}
!993 = distinct !DISubprogram(name: "acpi_ds_exec_begin_op", scope: !3, file: !3, line: 183, type: !409, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !994)
!994 = !{!995, !996, !997, !998, !999, !1000}
!995 = !DILocalVariable(name: "walk_state", arg: 1, scope: !993, file: !3, line: 183, type: !123)
!996 = !DILocalVariable(name: "out_op", arg: 2, scope: !993, file: !3, line: 184, type: !411)
!997 = !DILocalVariable(name: "op", scope: !993, file: !3, line: 186, type: !158)
!998 = !DILocalVariable(name: "status", scope: !993, file: !3, line: 187, type: !5)
!999 = !DILocalVariable(name: "opcode_class", scope: !993, file: !3, line: 188, type: !7)
!1000 = !DILabel(scope: !993, name: "error_exit", file: !3, line: 308)
!1001 = !DILocation(line: 183, column: 47, scope: !993)
!1002 = !DILocation(line: 184, column: 35, scope: !993)
!1003 = !DILocation(line: 186, column: 2, scope: !993)
!1004 = !DILocation(line: 186, column: 27, scope: !993)
!1005 = !DILocation(line: 187, column: 2, scope: !993)
!1006 = !DILocation(line: 187, column: 14, scope: !993)
!1007 = !DILocation(line: 188, column: 2, scope: !993)
!1008 = !DILocation(line: 188, column: 6, scope: !993)
!1009 = !DILocation(line: 192, column: 7, scope: !993)
!1010 = !DILocation(line: 192, column: 19, scope: !993)
!1011 = !DILocation(line: 192, column: 5, scope: !993)
!1012 = !DILocation(line: 193, column: 7, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !993, file: !3, line: 193, column: 6)
!1014 = !DILocation(line: 193, column: 6, scope: !993)
!1015 = !DILocation(line: 194, column: 35, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 193, column: 11)
!1017 = !DILocation(line: 194, column: 47, scope: !1016)
!1018 = !DILocation(line: 194, column: 12, scope: !1016)
!1019 = !DILocation(line: 194, column: 10, scope: !1016)
!1020 = !DILocation(line: 195, column: 7, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 195, column: 7)
!1022 = !DILocation(line: 195, column: 7, scope: !1016)
!1023 = !DILocation(line: 196, column: 4, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 195, column: 29)
!1025 = !DILocation(line: 199, column: 9, scope: !1016)
!1026 = !DILocation(line: 199, column: 8, scope: !1016)
!1027 = !DILocation(line: 199, column: 6, scope: !1016)
!1028 = !DILocation(line: 200, column: 20, scope: !1016)
!1029 = !DILocation(line: 200, column: 3, scope: !1016)
!1030 = !DILocation(line: 200, column: 15, scope: !1016)
!1031 = !DILocation(line: 200, column: 18, scope: !1016)
!1032 = !DILocation(line: 201, column: 24, scope: !1016)
!1033 = !DILocation(line: 201, column: 35, scope: !1016)
!1034 = !DILocation(line: 201, column: 3, scope: !1016)
!1035 = !DILocation(line: 201, column: 15, scope: !1016)
!1036 = !DILocation(line: 201, column: 22, scope: !1016)
!1037 = !DILocation(line: 203, column: 31, scope: !1016)
!1038 = !DILocation(line: 203, column: 42, scope: !1016)
!1039 = !DILocation(line: 203, column: 7, scope: !1016)
!1040 = !DILocation(line: 202, column: 3, scope: !1016)
!1041 = !DILocation(line: 202, column: 15, scope: !1016)
!1042 = !DILocation(line: 202, column: 23, scope: !1016)
!1043 = !DILocation(line: 205, column: 27, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 205, column: 7)
!1045 = !DILocation(line: 205, column: 39, scope: !1044)
!1046 = !DILocation(line: 205, column: 48, scope: !1044)
!1047 = !DILocation(line: 205, column: 7, scope: !1044)
!1048 = !DILocation(line: 205, column: 7, scope: !1016)
!1049 = !DILocation(line: 213, column: 37, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 205, column: 62)
!1051 = !DILocation(line: 213, column: 13, scope: !1050)
!1052 = !DILocation(line: 213, column: 11, scope: !1050)
!1053 = !DILocation(line: 214, column: 8, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 214, column: 8)
!1055 = !DILocation(line: 214, column: 8, scope: !1050)
!1056 = !DILocation(line: 215, column: 5, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 214, column: 30)
!1058 = !DILocation(line: 217, column: 3, scope: !1050)
!1059 = !DILocation(line: 218, column: 2, scope: !1016)
!1060 = !DILocation(line: 220, column: 6, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !993, file: !3, line: 220, column: 6)
!1062 = !DILocation(line: 220, column: 12, scope: !1061)
!1063 = !DILocation(line: 220, column: 24, scope: !1061)
!1064 = !DILocation(line: 220, column: 9, scope: !1061)
!1065 = !DILocation(line: 220, column: 6, scope: !993)
!1066 = !DILocation(line: 221, column: 7, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 221, column: 7)
!1068 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 220, column: 32)
!1069 = !DILocation(line: 221, column: 7, scope: !1068)
!1070 = !DILocation(line: 222, column: 14, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 221, column: 15)
!1072 = !DILocation(line: 222, column: 5, scope: !1071)
!1073 = !DILocation(line: 222, column: 12, scope: !1071)
!1074 = !DILocation(line: 223, column: 3, scope: !1071)
!1075 = !DILocation(line: 225, column: 3, scope: !1068)
!1076 = !DILocation(line: 233, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !993, file: !3, line: 233, column: 6)
!1078 = !DILocation(line: 233, column: 19, scope: !1077)
!1079 = !DILocation(line: 233, column: 6, scope: !1077)
!1080 = !DILocation(line: 233, column: 34, scope: !1077)
!1081 = !DILocation(line: 234, column: 7, scope: !1077)
!1082 = !DILocation(line: 234, column: 19, scope: !1077)
!1083 = !DILocation(line: 234, column: 41, scope: !1077)
!1084 = !DILocation(line: 234, column: 47, scope: !1077)
!1085 = !DILocation(line: 233, column: 6, scope: !993)
!1086 = !DILocation(line: 240, column: 3, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 235, column: 44)
!1088 = !DILocation(line: 240, column: 15, scope: !1087)
!1089 = !DILocation(line: 240, column: 37, scope: !1087)
!1090 = !DILocation(line: 240, column: 43, scope: !1087)
!1091 = !DILocation(line: 245, column: 53, scope: !1087)
!1092 = !DILocation(line: 245, column: 3, scope: !1087)
!1093 = !DILocation(line: 245, column: 15, scope: !1087)
!1094 = !DILocation(line: 245, column: 38, scope: !1087)
!1095 = !DILocation(line: 245, column: 51, scope: !1087)
!1096 = !DILocation(line: 246, column: 2, scope: !1087)
!1097 = !DILocation(line: 248, column: 17, scope: !993)
!1098 = !DILocation(line: 248, column: 29, scope: !993)
!1099 = !DILocation(line: 248, column: 38, scope: !993)
!1100 = !DILocation(line: 248, column: 15, scope: !993)
!1101 = !DILocation(line: 252, column: 6, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !993, file: !3, line: 252, column: 6)
!1103 = !DILocation(line: 252, column: 17, scope: !1102)
!1104 = !DILocation(line: 252, column: 28, scope: !1102)
!1105 = !DILocation(line: 252, column: 6, scope: !993)
!1106 = !DILocation(line: 253, column: 16, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 252, column: 52)
!1108 = !DILocation(line: 254, column: 2, scope: !1107)
!1109 = !DILocation(line: 259, column: 10, scope: !993)
!1110 = !DILocation(line: 259, column: 2, scope: !993)
!1111 = !DILocation(line: 262, column: 42, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !993, file: !3, line: 259, column: 24)
!1113 = !DILocation(line: 262, column: 54, scope: !1112)
!1114 = !DILocation(line: 262, column: 12, scope: !1112)
!1115 = !DILocation(line: 262, column: 10, scope: !1112)
!1116 = !DILocation(line: 263, column: 3, scope: !1112)
!1117 = !DILocation(line: 267, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 267, column: 7)
!1119 = !DILocation(line: 267, column: 19, scope: !1118)
!1120 = !DILocation(line: 267, column: 29, scope: !1118)
!1121 = !DILocation(line: 267, column: 7, scope: !1112)
!1122 = !DILocation(line: 279, column: 8, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 279, column: 8)
!1124 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 267, column: 49)
!1125 = !DILocation(line: 279, column: 19, scope: !1123)
!1126 = !DILocation(line: 279, column: 30, scope: !1123)
!1127 = !DILocation(line: 279, column: 8, scope: !1124)
!1128 = !DILocation(line: 281, column: 32, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 279, column: 47)
!1130 = !DILocation(line: 281, column: 9, scope: !1129)
!1131 = !DILocation(line: 280, column: 12, scope: !1129)
!1132 = !DILocation(line: 282, column: 4, scope: !1129)
!1133 = !DILocation(line: 284, column: 34, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 282, column: 11)
!1135 = !DILocation(line: 284, column: 44, scope: !1134)
!1136 = !DILocation(line: 285, column: 13, scope: !1134)
!1137 = !DILocation(line: 285, column: 23, scope: !1134)
!1138 = !DILocation(line: 286, column: 13, scope: !1134)
!1139 = !DILocation(line: 286, column: 19, scope: !1134)
!1140 = !DILocation(line: 284, column: 9, scope: !1134)
!1141 = !DILocation(line: 283, column: 12, scope: !1134)
!1142 = !DILocation(line: 287, column: 9, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 287, column: 9)
!1144 = !DILocation(line: 287, column: 9, scope: !1134)
!1145 = !DILocation(line: 288, column: 6, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 287, column: 31)
!1147 = !DILocation(line: 291, column: 3, scope: !1124)
!1148 = !DILocation(line: 292, column: 3, scope: !1112)
!1149 = !DILocation(line: 297, column: 3, scope: !1112)
!1150 = !DILocation(line: 301, column: 3, scope: !1112)
!1151 = !DILocation(line: 306, column: 2, scope: !993)
!1152 = !DILocation(line: 308, column: 1, scope: !993)
!1153 = !DILocation(line: 309, column: 32, scope: !993)
!1154 = !DILocation(line: 309, column: 40, scope: !993)
!1155 = !DILocation(line: 309, column: 11, scope: !993)
!1156 = !DILocation(line: 309, column: 9, scope: !993)
!1157 = !DILocation(line: 310, column: 2, scope: !993)
!1158 = !DILocation(line: 311, column: 1, scope: !993)
!1159 = !DISubprogram(name: "acpi_ds_load2_begin_op", scope: !956, file: !956, line: 124, type: !409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1160 = !DISubprogram(name: "acpi_ps_get_opcode_info", scope: !1161, file: !1161, line: 108, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1161 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!387, !12}
!1164 = !DISubprogram(name: "acpi_ns_opens_scope", scope: !1165, file: !1165, line: 251, type: !1166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1165 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!7, !1168}
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !6, line: 644, baseType: !7)
!1169 = !DISubprogram(name: "acpi_ds_scope_stack_pop", scope: !956, file: !956, line: 281, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1170 = !DISubprogram(name: "acpi_ds_exec_begin_control_op", scope: !956, file: !956, line: 35, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!5, !123, !158}
!1173 = !DISubprogram(name: "acpi_ds_scope_stack_push", scope: !956, file: !956, line: 277, type: !1174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!5, !15, !1168, !123}
!1176 = !DISubprogram(name: "acpi_ds_method_error", scope: !956, file: !956, line: 193, type: !1177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!5, !5, !123}
!1179 = distinct !DISubprogram(name: "acpi_ds_exec_end_op", scope: !3, file: !3, line: 327, type: !121, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188}
!1181 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1179, file: !3, line: 327, type: !123)
!1182 = !DILocalVariable(name: "op", scope: !1179, file: !3, line: 329, type: !158)
!1183 = !DILocalVariable(name: "status", scope: !1179, file: !3, line: 330, type: !5)
!1184 = !DILocalVariable(name: "op_type", scope: !1179, file: !3, line: 331, type: !7)
!1185 = !DILocalVariable(name: "op_class", scope: !1179, file: !3, line: 332, type: !7)
!1186 = !DILocalVariable(name: "next_op", scope: !1179, file: !3, line: 333, type: !158)
!1187 = !DILocalVariable(name: "first_arg", scope: !1179, file: !3, line: 334, type: !158)
!1188 = !DILabel(scope: !1179, name: "cleanup", file: !3, line: 726)
!1189 = !DILocation(line: 327, column: 57, scope: !1179)
!1190 = !DILocation(line: 329, column: 2, scope: !1179)
!1191 = !DILocation(line: 329, column: 27, scope: !1179)
!1192 = !DILocation(line: 330, column: 2, scope: !1179)
!1193 = !DILocation(line: 330, column: 14, scope: !1179)
!1194 = !DILocation(line: 331, column: 2, scope: !1179)
!1195 = !DILocation(line: 331, column: 6, scope: !1179)
!1196 = !DILocation(line: 332, column: 2, scope: !1179)
!1197 = !DILocation(line: 332, column: 6, scope: !1179)
!1198 = !DILocation(line: 333, column: 2, scope: !1179)
!1199 = !DILocation(line: 333, column: 27, scope: !1179)
!1200 = !DILocation(line: 334, column: 2, scope: !1179)
!1201 = !DILocation(line: 334, column: 27, scope: !1179)
!1202 = !DILocation(line: 342, column: 7, scope: !1179)
!1203 = !DILocation(line: 342, column: 19, scope: !1179)
!1204 = !DILocation(line: 342, column: 5, scope: !1179)
!1205 = !DILocation(line: 343, column: 12, scope: !1179)
!1206 = !DILocation(line: 343, column: 24, scope: !1179)
!1207 = !DILocation(line: 343, column: 33, scope: !1179)
!1208 = !DILocation(line: 343, column: 10, scope: !1179)
!1209 = !DILocation(line: 344, column: 13, scope: !1179)
!1210 = !DILocation(line: 344, column: 25, scope: !1179)
!1211 = !DILocation(line: 344, column: 34, scope: !1179)
!1212 = !DILocation(line: 344, column: 11, scope: !1179)
!1213 = !DILocation(line: 346, column: 6, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 346, column: 6)
!1215 = !DILocation(line: 346, column: 15, scope: !1214)
!1216 = !DILocation(line: 346, column: 6, scope: !1179)
!1217 = !DILocation(line: 347, column: 3, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 346, column: 37)
!1219 = !DILocation(line: 349, column: 3, scope: !1218)
!1220 = !DILocation(line: 352, column: 14, scope: !1179)
!1221 = !DILocation(line: 352, column: 25, scope: !1179)
!1222 = !DILocation(line: 352, column: 31, scope: !1179)
!1223 = !DILocation(line: 352, column: 12, scope: !1179)
!1224 = !DILocation(line: 356, column: 2, scope: !1179)
!1225 = !DILocation(line: 356, column: 14, scope: !1179)
!1226 = !DILocation(line: 356, column: 27, scope: !1179)
!1227 = !DILocation(line: 357, column: 2, scope: !1179)
!1228 = !DILocation(line: 357, column: 14, scope: !1179)
!1229 = !DILocation(line: 357, column: 28, scope: !1179)
!1230 = !DILocation(line: 358, column: 2, scope: !1179)
!1231 = !DILocation(line: 358, column: 14, scope: !1179)
!1232 = !DILocation(line: 358, column: 26, scope: !1179)
!1233 = !DILocation(line: 359, column: 2, scope: !1179)
!1234 = !DILocation(line: 359, column: 14, scope: !1179)
!1235 = !DILocation(line: 359, column: 25, scope: !1179)
!1236 = !DILocation(line: 363, column: 31, scope: !1179)
!1237 = !DILocation(line: 363, column: 43, scope: !1179)
!1238 = !DILocation(line: 363, column: 47, scope: !1179)
!1239 = !DILocation(line: 363, column: 11, scope: !1179)
!1240 = !DILocation(line: 363, column: 9, scope: !1179)
!1241 = !DILocation(line: 364, column: 6, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 364, column: 6)
!1243 = !DILocation(line: 364, column: 6, scope: !1179)
!1244 = !DILocation(line: 365, column: 3, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 364, column: 28)
!1246 = !DILocation(line: 370, column: 10, scope: !1179)
!1247 = !DILocation(line: 370, column: 2, scope: !1179)
!1248 = !DILocation(line: 373, column: 7, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 373, column: 7)
!1250 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 370, column: 20)
!1251 = !DILocation(line: 373, column: 19, scope: !1249)
!1252 = !DILocation(line: 373, column: 26, scope: !1249)
!1253 = !DILocation(line: 373, column: 7, scope: !1250)
!1254 = !DILocation(line: 374, column: 40, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 373, column: 50)
!1256 = !DILocation(line: 374, column: 13, scope: !1255)
!1257 = !DILocation(line: 374, column: 11, scope: !1255)
!1258 = !DILocation(line: 375, column: 8, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 375, column: 8)
!1260 = !DILocation(line: 375, column: 8, scope: !1255)
!1261 = !DILocation(line: 376, column: 5, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 375, column: 30)
!1263 = !DILocation(line: 378, column: 3, scope: !1255)
!1264 = !DILocation(line: 379, column: 3, scope: !1250)
!1265 = !DILocation(line: 385, column: 36, scope: !1250)
!1266 = !DILocation(line: 385, column: 48, scope: !1250)
!1267 = !DILocation(line: 385, column: 12, scope: !1250)
!1268 = !DILocation(line: 385, column: 10, scope: !1250)
!1269 = !DILocation(line: 386, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 386, column: 7)
!1271 = !DILocation(line: 386, column: 7, scope: !1250)
!1272 = !DILocation(line: 387, column: 4, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 386, column: 29)
!1274 = !DILocation(line: 395, column: 9, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 395, column: 7)
!1276 = !DILocation(line: 395, column: 21, scope: !1275)
!1277 = !DILocation(line: 395, column: 30, scope: !1275)
!1278 = !DILocation(line: 395, column: 36, scope: !1275)
!1279 = !DILocation(line: 395, column: 62, scope: !1275)
!1280 = !DILocation(line: 396, column: 8, scope: !1275)
!1281 = !DILocation(line: 396, column: 20, scope: !1275)
!1282 = !DILocation(line: 396, column: 29, scope: !1275)
!1283 = !DILocation(line: 396, column: 35, scope: !1275)
!1284 = !DILocation(line: 395, column: 7, scope: !1250)
!1285 = !DILocation(line: 400, column: 38, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 396, column: 52)
!1287 = !DILocation(line: 400, column: 50, scope: !1286)
!1288 = !DILocation(line: 401, column: 12, scope: !1286)
!1289 = !DILocation(line: 402, column: 12, scope: !1286)
!1290 = !DILocation(line: 403, column: 13, scope: !1286)
!1291 = !DILocation(line: 404, column: 13, scope: !1286)
!1292 = !DILocation(line: 404, column: 26, scope: !1286)
!1293 = !DILocation(line: 405, column: 10, scope: !1286)
!1294 = !DILocation(line: 400, column: 13, scope: !1286)
!1295 = !DILocation(line: 400, column: 11, scope: !1286)
!1296 = !DILocation(line: 406, column: 3, scope: !1286)
!1297 = !DILocation(line: 408, column: 7, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 408, column: 7)
!1299 = !DILocation(line: 408, column: 7, scope: !1250)
!1300 = !DILocation(line: 415, column: 34, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 408, column: 29)
!1302 = !DILocation(line: 415, column: 8, scope: !1301)
!1303 = !DILocation(line: 415, column: 44, scope: !1301)
!1304 = !DILocation(line: 414, column: 11, scope: !1301)
!1305 = !DILocation(line: 416, column: 3, scope: !1301)
!1306 = !DILocation(line: 421, column: 9, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 421, column: 8)
!1308 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 416, column: 10)
!1309 = !DILocation(line: 421, column: 16, scope: !1307)
!1310 = !DILocation(line: 421, column: 47, scope: !1307)
!1311 = !DILocation(line: 422, column: 9, scope: !1307)
!1312 = !DILocation(line: 422, column: 21, scope: !1307)
!1313 = !DILocation(line: 422, column: 28, scope: !1307)
!1314 = !DILocation(line: 422, column: 45, scope: !1307)
!1315 = !DILocation(line: 423, column: 9, scope: !1307)
!1316 = !DILocation(line: 423, column: 21, scope: !1307)
!1317 = !DILocation(line: 423, column: 41, scope: !1307)
!1318 = !DILocation(line: 423, column: 46, scope: !1307)
!1319 = !DILocation(line: 425, column: 8, scope: !1307)
!1320 = !DILocation(line: 425, column: 12, scope: !1307)
!1321 = !DILocation(line: 425, column: 24, scope: !1307)
!1322 = !DILocation(line: 425, column: 44, scope: !1307)
!1323 = !DILocation(line: 425, column: 49, scope: !1307)
!1324 = !DILocation(line: 427, column: 8, scope: !1307)
!1325 = !DILocation(line: 427, column: 12, scope: !1307)
!1326 = !DILocation(line: 427, column: 24, scope: !1307)
!1327 = !DILocation(line: 427, column: 47, scope: !1307)
!1328 = !DILocation(line: 428, column: 5, scope: !1307)
!1329 = !DILocation(line: 428, column: 17, scope: !1307)
!1330 = !DILocation(line: 428, column: 40, scope: !1307)
!1331 = !DILocation(line: 427, column: 53, scope: !1307)
!1332 = !DILocation(line: 429, column: 8, scope: !1307)
!1333 = !DILocation(line: 429, column: 12, scope: !1307)
!1334 = !DILocation(line: 429, column: 24, scope: !1307)
!1335 = !DILocation(line: 429, column: 47, scope: !1307)
!1336 = !DILocation(line: 430, column: 5, scope: !1307)
!1337 = !DILocation(line: 430, column: 17, scope: !1307)
!1338 = !DILocation(line: 430, column: 40, scope: !1307)
!1339 = !DILocation(line: 429, column: 53, scope: !1307)
!1340 = !DILocation(line: 421, column: 8, scope: !1308)
!1341 = !DILocation(line: 431, column: 12, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 430, column: 48)
!1343 = !DILocation(line: 432, column: 4, scope: !1342)
!1344 = !DILocation(line: 433, column: 5, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 432, column: 11)
!1346 = !DILocation(line: 442, column: 26, scope: !1250)
!1347 = !DILocation(line: 442, column: 3, scope: !1250)
!1348 = !DILocation(line: 448, column: 7, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 448, column: 7)
!1350 = !DILocation(line: 448, column: 28, scope: !1349)
!1351 = !DILocation(line: 448, column: 31, scope: !1349)
!1352 = !DILocation(line: 448, column: 43, scope: !1349)
!1353 = !DILocation(line: 448, column: 7, scope: !1250)
!1354 = !DILocation(line: 450, column: 28, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 448, column: 55)
!1356 = !DILocation(line: 450, column: 40, scope: !1355)
!1357 = !DILocation(line: 451, column: 7, scope: !1355)
!1358 = !DILocation(line: 450, column: 8, scope: !1355)
!1359 = !DILocation(line: 449, column: 11, scope: !1355)
!1360 = !DILocation(line: 452, column: 3, scope: !1355)
!1361 = !DILocation(line: 453, column: 3, scope: !1250)
!1362 = !DILocation(line: 457, column: 11, scope: !1250)
!1363 = !DILocation(line: 457, column: 3, scope: !1250)
!1364 = !DILocation(line: 462, column: 41, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 457, column: 20)
!1366 = !DILocation(line: 462, column: 53, scope: !1365)
!1367 = !DILocation(line: 462, column: 13, scope: !1365)
!1368 = !DILocation(line: 462, column: 11, scope: !1365)
!1369 = !DILocation(line: 464, column: 4, scope: !1365)
!1370 = !DILocation(line: 472, column: 9, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 472, column: 8)
!1372 = !DILocation(line: 472, column: 17, scope: !1371)
!1373 = !DILocation(line: 472, column: 8, scope: !1371)
!1374 = !DILocation(line: 472, column: 25, scope: !1371)
!1375 = !DILocation(line: 473, column: 10, scope: !1371)
!1376 = !DILocation(line: 473, column: 18, scope: !1371)
!1377 = !DILocation(line: 473, column: 30, scope: !1371)
!1378 = !DILocation(line: 473, column: 41, scope: !1371)
!1379 = !DILocation(line: 474, column: 9, scope: !1371)
!1380 = !DILocation(line: 474, column: 13, scope: !1371)
!1381 = !DILocation(line: 474, column: 21, scope: !1371)
!1382 = !DILocation(line: 474, column: 33, scope: !1371)
!1383 = !DILocation(line: 474, column: 44, scope: !1371)
!1384 = !DILocation(line: 472, column: 8, scope: !1365)
!1385 = !DILocation(line: 481, column: 9, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 475, column: 33)
!1387 = !DILocation(line: 481, column: 17, scope: !1386)
!1388 = !DILocation(line: 481, column: 23, scope: !1386)
!1389 = !DILocation(line: 481, column: 32, scope: !1386)
!1390 = !DILocation(line: 480, column: 5, scope: !1386)
!1391 = !DILocation(line: 480, column: 16, scope: !1386)
!1392 = !DILocation(line: 480, column: 21, scope: !1386)
!1393 = !DILocation(line: 482, column: 27, scope: !1386)
!1394 = !DILocation(line: 482, column: 35, scope: !1386)
!1395 = !DILocation(line: 482, column: 41, scope: !1386)
!1396 = !DILocation(line: 483, column: 13, scope: !1386)
!1397 = !DILocation(line: 483, column: 19, scope: !1386)
!1398 = !DILocation(line: 482, column: 5, scope: !1386)
!1399 = !DILocation(line: 484, column: 5, scope: !1386)
!1400 = !DILocation(line: 496, column: 14, scope: !1365)
!1401 = !DILocation(line: 496, column: 12, scope: !1365)
!1402 = !DILocation(line: 500, column: 14, scope: !1365)
!1403 = !DILocation(line: 500, column: 30, scope: !1365)
!1404 = !DILocation(line: 500, column: 12, scope: !1365)
!1405 = !DILocation(line: 505, column: 37, scope: !1365)
!1406 = !DILocation(line: 505, column: 49, scope: !1365)
!1407 = !DILocation(line: 505, column: 13, scope: !1365)
!1408 = !DILocation(line: 505, column: 11, scope: !1365)
!1409 = !DILocation(line: 506, column: 8, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 506, column: 8)
!1411 = !DILocation(line: 506, column: 8, scope: !1365)
!1412 = !DILocation(line: 507, column: 5, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 506, column: 30)
!1414 = !DILocation(line: 515, column: 38, scope: !1365)
!1415 = !DILocation(line: 515, column: 13, scope: !1365)
!1416 = !DILocation(line: 515, column: 11, scope: !1365)
!1417 = !DILocation(line: 516, column: 8, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 516, column: 8)
!1419 = !DILocation(line: 516, column: 8, scope: !1365)
!1420 = !DILocation(line: 520, column: 28, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 516, column: 30)
!1422 = !DILocation(line: 520, column: 5, scope: !1421)
!1423 = !DILocation(line: 521, column: 5, scope: !1421)
!1424 = !DILocation(line: 528, column: 11, scope: !1365)
!1425 = !DILocation(line: 534, column: 4, scope: !1365)
!1426 = !DILocation(line: 542, column: 34, scope: !1365)
!1427 = !DILocation(line: 542, column: 13, scope: !1365)
!1428 = !DILocation(line: 542, column: 11, scope: !1365)
!1429 = !DILocation(line: 543, column: 8, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 543, column: 8)
!1431 = !DILocation(line: 543, column: 8, scope: !1365)
!1432 = !DILocation(line: 544, column: 5, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 543, column: 30)
!1434 = !DILocation(line: 548, column: 43, scope: !1365)
!1435 = !DILocation(line: 548, column: 55, scope: !1365)
!1436 = !DILocation(line: 548, column: 8, scope: !1365)
!1437 = !DILocation(line: 547, column: 11, scope: !1365)
!1438 = !DILocation(line: 549, column: 8, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 549, column: 8)
!1440 = !DILocation(line: 549, column: 8, scope: !1365)
!1441 = !DILocation(line: 550, column: 5, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 549, column: 30)
!1443 = !DILocation(line: 574, column: 4, scope: !1365)
!1444 = !DILocation(line: 584, column: 12, scope: !1365)
!1445 = !DILocation(line: 584, column: 23, scope: !1365)
!1446 = !DILocation(line: 584, column: 38, scope: !1365)
!1447 = !DILocation(line: 584, column: 4, scope: !1365)
!1448 = !DILocation(line: 591, column: 9, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 584, column: 50)
!1450 = !DILocation(line: 591, column: 20, scope: !1449)
!1451 = !DILocation(line: 591, column: 35, scope: !1449)
!1452 = !DILocation(line: 590, column: 5, scope: !1449)
!1453 = !DILocation(line: 590, column: 17, scope: !1449)
!1454 = !DILocation(line: 590, column: 29, scope: !1449)
!1455 = !DILocation(line: 592, column: 5, scope: !1449)
!1456 = !DILocation(line: 592, column: 17, scope: !1449)
!1457 = !DILocation(line: 592, column: 30, scope: !1449)
!1458 = !DILocation(line: 594, column: 34, scope: !1449)
!1459 = !DILocation(line: 595, column: 13, scope: !1449)
!1460 = !DILocation(line: 595, column: 24, scope: !1449)
!1461 = !DILocation(line: 596, column: 20, scope: !1449)
!1462 = !DILocation(line: 597, column: 13, scope: !1449)
!1463 = !DILocation(line: 597, column: 24, scope: !1449)
!1464 = !DILocation(line: 594, column: 14, scope: !1449)
!1465 = !DILocation(line: 594, column: 12, scope: !1449)
!1466 = !DILocation(line: 598, column: 9, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 598, column: 9)
!1468 = !DILocation(line: 598, column: 9, scope: !1449)
!1469 = !DILocation(line: 599, column: 6, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 598, column: 31)
!1471 = !DILocation(line: 608, column: 10, scope: !1449)
!1472 = !DILocation(line: 608, column: 22, scope: !1449)
!1473 = !DILocation(line: 609, column: 38, scope: !1449)
!1474 = !DILocation(line: 610, column: 10, scope: !1449)
!1475 = !DILocation(line: 611, column: 10, scope: !1449)
!1476 = !DILocation(line: 609, column: 10, scope: !1449)
!1477 = !DILocation(line: 607, column: 9, scope: !1449)
!1478 = !DILocation(line: 606, column: 12, scope: !1449)
!1479 = !DILocation(line: 612, column: 5, scope: !1449)
!1480 = !DILocation(line: 618, column: 10, scope: !1449)
!1481 = !DILocation(line: 618, column: 22, scope: !1449)
!1482 = !DILocation(line: 617, column: 9, scope: !1449)
!1483 = !DILocation(line: 616, column: 12, scope: !1449)
!1484 = !DILocation(line: 619, column: 5, scope: !1449)
!1485 = !DILocation(line: 626, column: 8, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 626, column: 8)
!1487 = !DILocation(line: 626, column: 20, scope: !1486)
!1488 = !DILocation(line: 626, column: 8, scope: !1365)
!1489 = !DILocation(line: 628, column: 29, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 626, column: 32)
!1491 = !DILocation(line: 628, column: 41, scope: !1490)
!1492 = !DILocation(line: 629, column: 8, scope: !1490)
!1493 = !DILocation(line: 628, column: 9, scope: !1490)
!1494 = !DILocation(line: 627, column: 12, scope: !1490)
!1495 = !DILocation(line: 630, column: 4, scope: !1490)
!1496 = !DILocation(line: 631, column: 4, scope: !1365)
!1497 = !DILocation(line: 638, column: 34, scope: !1365)
!1498 = !DILocation(line: 638, column: 13, scope: !1365)
!1499 = !DILocation(line: 638, column: 11, scope: !1365)
!1500 = !DILocation(line: 639, column: 8, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 639, column: 8)
!1502 = !DILocation(line: 639, column: 8, scope: !1365)
!1503 = !DILocation(line: 640, column: 5, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 639, column: 30)
!1505 = !DILocation(line: 643, column: 8, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 643, column: 8)
!1507 = !DILocation(line: 643, column: 19, scope: !1506)
!1508 = !DILocation(line: 643, column: 30, scope: !1506)
!1509 = !DILocation(line: 643, column: 8, scope: !1365)
!1510 = !DILocation(line: 649, column: 38, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 643, column: 48)
!1512 = !DILocation(line: 650, column: 10, scope: !1511)
!1513 = !DILocation(line: 649, column: 9, scope: !1511)
!1514 = !DILocation(line: 648, column: 12, scope: !1511)
!1515 = !DILocation(line: 651, column: 9, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 651, column: 9)
!1517 = !DILocation(line: 651, column: 9, scope: !1511)
!1518 = !DILocation(line: 652, column: 6, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 651, column: 31)
!1520 = !DILocation(line: 654, column: 4, scope: !1511)
!1521 = !DILocation(line: 654, column: 15, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 654, column: 15)
!1523 = !DILocation(line: 654, column: 26, scope: !1522)
!1524 = !DILocation(line: 654, column: 37, scope: !1522)
!1525 = !DILocation(line: 654, column: 15, scope: !1506)
!1526 = !DILocation(line: 661, column: 10, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 654, column: 60)
!1528 = !DILocation(line: 661, column: 22, scope: !1527)
!1529 = !DILocation(line: 660, column: 9, scope: !1527)
!1530 = !DILocation(line: 659, column: 12, scope: !1527)
!1531 = !DILocation(line: 662, column: 9, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 662, column: 9)
!1533 = !DILocation(line: 662, column: 9, scope: !1527)
!1534 = !DILocation(line: 663, column: 6, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 662, column: 31)
!1536 = !DILocation(line: 665, column: 4, scope: !1527)
!1537 = !DILocation(line: 665, column: 15, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 665, column: 15)
!1539 = !DILocation(line: 665, column: 26, scope: !1538)
!1540 = !DILocation(line: 665, column: 37, scope: !1538)
!1541 = !DILocation(line: 665, column: 15, scope: !1522)
!1542 = !DILocation(line: 671, column: 42, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 665, column: 59)
!1544 = !DILocation(line: 672, column: 14, scope: !1543)
!1545 = !DILocation(line: 671, column: 9, scope: !1543)
!1546 = !DILocation(line: 670, column: 12, scope: !1543)
!1547 = !DILocation(line: 673, column: 9, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 673, column: 9)
!1549 = !DILocation(line: 673, column: 9, scope: !1543)
!1550 = !DILocation(line: 674, column: 6, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 673, column: 31)
!1552 = !DILocation(line: 676, column: 4, scope: !1543)
!1553 = !DILocation(line: 677, column: 4, scope: !1365)
!1554 = !DILocation(line: 681, column: 4, scope: !1365)
!1555 = !DILocation(line: 683, column: 4, scope: !1365)
!1556 = !DILocation(line: 690, column: 4, scope: !1365)
!1557 = !DILocation(line: 694, column: 4, scope: !1365)
!1558 = !DILocation(line: 700, column: 11, scope: !1365)
!1559 = !DILocation(line: 701, column: 4, scope: !1365)
!1560 = !DILocation(line: 703, column: 2, scope: !1250)
!1561 = !DILocation(line: 709, column: 40, scope: !1179)
!1562 = !DILocation(line: 709, column: 52, scope: !1179)
!1563 = !DILocation(line: 709, column: 8, scope: !1179)
!1564 = !DILocation(line: 715, column: 7, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 715, column: 6)
!1566 = !DILocation(line: 715, column: 29, scope: !1565)
!1567 = !DILocation(line: 716, column: 7, scope: !1565)
!1568 = !DILocation(line: 716, column: 19, scope: !1565)
!1569 = !DILocation(line: 716, column: 6, scope: !1565)
!1570 = !DILocation(line: 716, column: 34, scope: !1565)
!1571 = !DILocation(line: 717, column: 7, scope: !1565)
!1572 = !DILocation(line: 717, column: 19, scope: !1565)
!1573 = !DILocation(line: 717, column: 41, scope: !1565)
!1574 = !DILocation(line: 717, column: 47, scope: !1565)
!1575 = !DILocation(line: 718, column: 41, scope: !1565)
!1576 = !DILocation(line: 719, column: 7, scope: !1565)
!1577 = !DILocation(line: 719, column: 19, scope: !1565)
!1578 = !DILocation(line: 719, column: 42, scope: !1565)
!1579 = !DILocation(line: 719, column: 58, scope: !1565)
!1580 = !DILocation(line: 719, column: 55, scope: !1565)
!1581 = !DILocation(line: 715, column: 6, scope: !1179)
!1582 = !DILocation(line: 721, column: 35, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 719, column: 63)
!1584 = !DILocation(line: 722, column: 7, scope: !1583)
!1585 = !DILocation(line: 722, column: 19, scope: !1583)
!1586 = !DILocation(line: 721, column: 7, scope: !1583)
!1587 = !DILocation(line: 720, column: 10, scope: !1583)
!1588 = !DILocation(line: 723, column: 3, scope: !1583)
!1589 = !DILocation(line: 723, column: 15, scope: !1583)
!1590 = !DILocation(line: 723, column: 26, scope: !1583)
!1591 = !DILocation(line: 724, column: 2, scope: !1583)
!1592 = !DILocation(line: 719, column: 60, scope: !1565)
!1593 = !DILocation(line: 726, column: 1, scope: !1179)
!1594 = !DILocation(line: 728, column: 6, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 728, column: 6)
!1596 = !DILocation(line: 728, column: 18, scope: !1595)
!1597 = !DILocation(line: 728, column: 6, scope: !1179)
!1598 = !DILocation(line: 732, column: 33, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 728, column: 30)
!1600 = !DILocation(line: 732, column: 45, scope: !1599)
!1601 = !DILocation(line: 733, column: 12, scope: !1599)
!1602 = !DILocation(line: 732, column: 3, scope: !1599)
!1603 = !DILocation(line: 740, column: 37, scope: !1599)
!1604 = !DILocation(line: 740, column: 41, scope: !1599)
!1605 = !DILocation(line: 740, column: 53, scope: !1599)
!1606 = !DILocation(line: 741, column: 9, scope: !1599)
!1607 = !DILocation(line: 740, column: 3, scope: !1599)
!1608 = !DILocation(line: 742, column: 2, scope: !1599)
!1609 = !DILocation(line: 752, column: 6, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 752, column: 6)
!1611 = !DILocation(line: 752, column: 6, scope: !1179)
!1612 = !DILocation(line: 753, column: 33, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 752, column: 28)
!1614 = !DILocation(line: 753, column: 41, scope: !1613)
!1615 = !DILocation(line: 753, column: 12, scope: !1613)
!1616 = !DILocation(line: 753, column: 10, scope: !1613)
!1617 = !DILocation(line: 754, column: 2, scope: !1613)
!1618 = !DILocation(line: 758, column: 2, scope: !1179)
!1619 = !DILocation(line: 758, column: 14, scope: !1179)
!1620 = !DILocation(line: 758, column: 27, scope: !1179)
!1621 = !DILocation(line: 759, column: 2, scope: !1179)
!1622 = !DILocation(line: 760, column: 1, scope: !1179)
!1623 = distinct !DISubprogram(name: "acpi_db_single_step", scope: !982, file: !982, line: 52, type: !965, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1624)
!1624 = !{!1625, !1626, !1627}
!1625 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1623, file: !982, line: 52, type: !123)
!1626 = !DILocalVariable(name: "op", arg: 2, scope: !1623, file: !982, line: 52, type: !158)
!1627 = !DILocalVariable(name: "op_type", arg: 3, scope: !1623, file: !982, line: 52, type: !7)
!1628 = !DILocation(line: 52, column: 1, scope: !1623)
!1629 = !DISubprogram(name: "acpi_ds_evaluate_name_path", scope: !956, file: !956, line: 271, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1630 = !DISubprogram(name: "acpi_ds_create_operands", scope: !956, file: !956, line: 264, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1631 = !DISubprogram(name: "acpi_ex_resolve_operands", scope: !968, file: !968, line: 377, type: !1632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!5, !12, !87, !123}
!1634 = !DISubprogram(name: "acpi_ps_get_opcode_name", scope: !1161, file: !1161, line: 110, type: !1635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!963, !12}
!1637 = !DISubprogram(name: "acpi_ds_clear_operands", scope: !956, file: !956, line: 269, type: !1638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !123}
!1640 = !DISubprogram(name: "acpi_ds_result_push", scope: !956, file: !956, line: 333, type: !1641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!5, !20, !123}
!1643 = !DISubprogram(name: "acpi_ds_exec_end_control_op", scope: !956, file: !956, line: 39, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1644 = !DISubprogram(name: "acpi_ut_add_reference", scope: !990, file: !990, line: 367, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1645 = !DISubprogram(name: "acpi_ds_resolve_operands", scope: !956, file: !956, line: 267, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1646 = !DISubprogram(name: "acpi_ds_load2_end_op", scope: !956, file: !956, line: 127, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1647 = !DISubprogram(name: "acpi_ds_eval_buffer_field_operands", scope: !956, file: !956, line: 46, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1648 = !DISubprogram(name: "acpi_ds_create_node", scope: !956, file: !956, line: 228, type: !1649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!5, !123, !15, !158}
!1651 = !DISubprogram(name: "acpi_ds_eval_data_object_operands", scope: !956, file: !956, line: 58, type: !1652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!5, !123, !158, !20}
!1654 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1165, file: !1165, line: 298, type: !1655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!20, !15}
!1657 = !DISubprogram(name: "acpi_ds_eval_region_operands", scope: !956, file: !956, line: 50, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1658 = !DISubprogram(name: "acpi_ds_eval_table_region_operands", scope: !956, file: !956, line: 54, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1659 = !DISubprogram(name: "acpi_ds_eval_bank_field_operands", scope: !956, file: !956, line: 63, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1660 = !DISubprogram(name: "acpi_ds_delete_result_if_not_used", scope: !956, file: !956, line: 255, type: !1661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !158, !20, !123}
