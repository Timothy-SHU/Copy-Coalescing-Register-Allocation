; ModuleID = 'drivers/acpi/acpica/dsopcode.c'
source_filename = "drivers/acpi/acpica/dsopcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_object_buffer_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, i8, ptr }
%struct.acpi_object_region = type { ptr, i8, i8, i16, i8, i8, ptr, ptr, ptr, i64, i32, ptr }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_object_bank_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, ptr, ptr }

@_acpi_module_name = internal constant [9 x i8] c"dsopcode\00", align 1, !dbg !0
@.str = private unnamed_addr constant [33 x i8] c"(%s) bad operand(s), status 0x%X\00", align 1, !dbg !808
@.str.1 = private unnamed_addr constant [54 x i8] c"Operation Region [%4.4s] has zero length (SpaceId %X)\00", align 1, !dbg !813
@.str.2 = private unnamed_addr constant [55 x i8] c"ACPI Table [%4.4s] OEM:(%s, %s) not found in RSDT/XSDT\00", align 1, !dbg !818
@.str.3 = private unnamed_addr constant [51 x i8] c"Missing child while evaluating opcode %4.4X, Op %p\00", align 1, !dbg !823
@.str.4 = private unnamed_addr constant [51 x i8] c"Target of Create Field is not a Buffer object - %s\00", align 1, !dbg !828
@.str.5 = private unnamed_addr constant [36 x i8] c"(%s) destination not a NS Node [%s]\00", align 1, !dbg !830
@.str.6 = private unnamed_addr constant [38 x i8] c"Attempt to CreateField of length zero\00", align 1, !dbg !835
@.str.7 = private unnamed_addr constant [37 x i8] c"Unknown field creation opcode 0x%02X\00", align 1, !dbg !840
@.str.8 = private unnamed_addr constant [81 x i8] c"Field [%4.4s] at bit offset/length %u/%u exceeds size of target Buffer (%u bits)\00", align 1, !dbg !845

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_initialize_region(ptr noundef %obj_handle) #0 align 16 !dbg !861 {
entry:
  %obj_handle.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %obj_handle, ptr %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_handle.addr, metadata !865, metadata !DIExpression()), !dbg !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !869
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !866, metadata !DIExpression()), !dbg !870
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !871
  call void @llvm.dbg.declare(metadata ptr %status, metadata !867, metadata !DIExpression()), !dbg !872
  %0 = load ptr, ptr %obj_handle.addr, align 8, !dbg !873
  %call = call ptr @acpi_ns_get_attached_object(ptr noundef %0) #5, !dbg !874
  store ptr %call, ptr %obj_desc, align 8, !dbg !875
  %1 = load ptr, ptr %obj_desc, align 8, !dbg !876
  %call1 = call i32 @acpi_ev_initialize_region(ptr noundef %1) #5, !dbg !877
  store i32 %call1, ptr %status, align 4, !dbg !878
  %2 = load i32, ptr %status, align 4, !dbg !879
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !880
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !880
  ret i32 %2, !dbg !881
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !882 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !886 dso_local i32 @acpi_ev_initialize_region(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_eval_buffer_field_operands(ptr noundef %walk_state, ptr noundef %op) #0 align 16 !dbg !890 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %node = alloca ptr, align 8
  %next_op = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !894, metadata !DIExpression()), !dbg !900
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !895, metadata !DIExpression()), !dbg !901
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !902
  call void @llvm.dbg.declare(metadata ptr %status, metadata !896, metadata !DIExpression()), !dbg !903
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !904
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !897, metadata !DIExpression()), !dbg !905
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !906
  call void @llvm.dbg.declare(metadata ptr %node, metadata !898, metadata !DIExpression()), !dbg !907
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_op) #4, !dbg !908
  call void @llvm.dbg.declare(metadata ptr %next_op, metadata !899, metadata !DIExpression()), !dbg !909
  %0 = load ptr, ptr %op.addr, align 8, !dbg !910
  %node1 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 6, !dbg !911
  %1 = load ptr, ptr %node1, align 8, !dbg !911
  store ptr %1, ptr %node, align 8, !dbg !912
  %2 = load ptr, ptr %op.addr, align 8, !dbg !913
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %2, i32 0, i32 7, !dbg !914
  %3 = load ptr, ptr %value, align 8, !dbg !915
  store ptr %3, ptr %next_op, align 8, !dbg !916
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !917
  %5 = load ptr, ptr %next_op, align 8, !dbg !918
  %call = call i32 @acpi_ds_create_operands(ptr noundef %4, ptr noundef %5) #5, !dbg !919
  store i32 %call, ptr %status, align 4, !dbg !920
  %6 = load i32, ptr %status, align 4, !dbg !921
  %tobool = icmp ne i32 %6, 0, !dbg !921
  br i1 %tobool, label %if.then, label %if.end, !dbg !923

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %status, align 4, !dbg !924
  store i32 %7, ptr %retval, align 4, !dbg !924
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !924

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %node, align 8, !dbg !926
  %call2 = call ptr @acpi_ns_get_attached_object(ptr noundef %8) #5, !dbg !927
  store ptr %call2, ptr %obj_desc, align 8, !dbg !928
  %9 = load ptr, ptr %obj_desc, align 8, !dbg !929
  %tobool3 = icmp ne ptr %9, null, !dbg !929
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !931

if.then4:                                         ; preds = %if.end
  store i32 6, ptr %retval, align 4, !dbg !932
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !932

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %op.addr, align 8, !dbg !934
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %10, i32 0, i32 3, !dbg !935
  %11 = load i16, ptr %aml_opcode, align 2, !dbg !935
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !936
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 28, !dbg !936
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !936
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, ptr %13, i32 0, i32 5, !dbg !936
  %14 = load i8, ptr %num_operands, align 1, !dbg !936
  %conv = zext i8 %14 to i32, !dbg !936
  %sub = sub i32 %conv, 1, !dbg !936
  %idxprom = sext i32 %sub to i64, !dbg !936
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 %idxprom, !dbg !936
  %15 = load ptr, ptr %walk_state.addr, align 8, !dbg !937
  %call6 = call i32 @acpi_ex_resolve_operands(i16 noundef zeroext %11, ptr noundef %arrayidx, ptr noundef %15) #5, !dbg !938
  store i32 %call6, ptr %status, align 4, !dbg !939
  %16 = load i32, ptr %status, align 4, !dbg !940
  %tobool7 = icmp ne i32 %16, 0, !dbg !940
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !942

if.then8:                                         ; preds = %if.end5
  %17 = load ptr, ptr %op.addr, align 8, !dbg !943
  %aml_opcode9 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %17, i32 0, i32 3, !dbg !943
  %18 = load i16, ptr %aml_opcode9, align 2, !dbg !943
  %call10 = call ptr @acpi_ps_get_opcode_name(i16 noundef zeroext %18) #5, !dbg !943
  %19 = load i32, ptr %status, align 4, !dbg !943
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 306, ptr noundef @.str, ptr noundef %call10, i32 noundef %19) #5, !dbg !943
  %20 = load i32, ptr %status, align 4, !dbg !945
  store i32 %20, ptr %retval, align 4, !dbg !945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !945

if.end11:                                         ; preds = %if.end5
  %21 = load ptr, ptr %op.addr, align 8, !dbg !946
  %aml_opcode12 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %21, i32 0, i32 3, !dbg !948
  %22 = load i16, ptr %aml_opcode12, align 2, !dbg !948
  %conv13 = zext i16 %22 to i32, !dbg !946
  %cmp = icmp eq i32 %conv13, 23315, !dbg !949
  br i1 %cmp, label %if.then15, label %if.else, !dbg !950

if.then15:                                        ; preds = %if.end11
  %23 = load ptr, ptr %op.addr, align 8, !dbg !951
  %aml_opcode16 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %23, i32 0, i32 3, !dbg !953
  %24 = load i16, ptr %aml_opcode16, align 2, !dbg !953
  %25 = load ptr, ptr %obj_desc, align 8, !dbg !954
  %26 = load ptr, ptr %walk_state.addr, align 8, !dbg !955
  %operands17 = getelementptr inbounds %struct.acpi_walk_state, ptr %26, i32 0, i32 28, !dbg !956
  %arrayidx18 = getelementptr [9 x ptr], ptr %operands17, i64 0, i64 0, !dbg !955
  %27 = load ptr, ptr %arrayidx18, align 8, !dbg !955
  %28 = load ptr, ptr %walk_state.addr, align 8, !dbg !957
  %operands19 = getelementptr inbounds %struct.acpi_walk_state, ptr %28, i32 0, i32 28, !dbg !958
  %arrayidx20 = getelementptr [9 x ptr], ptr %operands19, i64 0, i64 1, !dbg !957
  %29 = load ptr, ptr %arrayidx20, align 8, !dbg !957
  %30 = load ptr, ptr %walk_state.addr, align 8, !dbg !959
  %operands21 = getelementptr inbounds %struct.acpi_walk_state, ptr %30, i32 0, i32 28, !dbg !960
  %arrayidx22 = getelementptr [9 x ptr], ptr %operands21, i64 0, i64 2, !dbg !959
  %31 = load ptr, ptr %arrayidx22, align 8, !dbg !959
  %32 = load ptr, ptr %walk_state.addr, align 8, !dbg !961
  %operands23 = getelementptr inbounds %struct.acpi_walk_state, ptr %32, i32 0, i32 28, !dbg !962
  %arrayidx24 = getelementptr [9 x ptr], ptr %operands23, i64 0, i64 3, !dbg !961
  %33 = load ptr, ptr %arrayidx24, align 8, !dbg !961
  %call25 = call i32 @acpi_ds_init_buffer_field(i16 noundef zeroext %24, ptr noundef %25, ptr noundef %27, ptr noundef %29, ptr noundef %31, ptr noundef %33) #5, !dbg !963
  store i32 %call25, ptr %status, align 4, !dbg !964
  br label %if.end34, !dbg !965

if.else:                                          ; preds = %if.end11
  %34 = load ptr, ptr %op.addr, align 8, !dbg !966
  %aml_opcode26 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %34, i32 0, i32 3, !dbg !968
  %35 = load i16, ptr %aml_opcode26, align 2, !dbg !968
  %36 = load ptr, ptr %obj_desc, align 8, !dbg !969
  %37 = load ptr, ptr %walk_state.addr, align 8, !dbg !970
  %operands27 = getelementptr inbounds %struct.acpi_walk_state, ptr %37, i32 0, i32 28, !dbg !971
  %arrayidx28 = getelementptr [9 x ptr], ptr %operands27, i64 0, i64 0, !dbg !970
  %38 = load ptr, ptr %arrayidx28, align 8, !dbg !970
  %39 = load ptr, ptr %walk_state.addr, align 8, !dbg !972
  %operands29 = getelementptr inbounds %struct.acpi_walk_state, ptr %39, i32 0, i32 28, !dbg !973
  %arrayidx30 = getelementptr [9 x ptr], ptr %operands29, i64 0, i64 1, !dbg !972
  %40 = load ptr, ptr %arrayidx30, align 8, !dbg !972
  %41 = load ptr, ptr %walk_state.addr, align 8, !dbg !974
  %operands31 = getelementptr inbounds %struct.acpi_walk_state, ptr %41, i32 0, i32 28, !dbg !975
  %arrayidx32 = getelementptr [9 x ptr], ptr %operands31, i64 0, i64 2, !dbg !974
  %42 = load ptr, ptr %arrayidx32, align 8, !dbg !974
  %call33 = call i32 @acpi_ds_init_buffer_field(i16 noundef zeroext %35, ptr noundef %36, ptr noundef %38, ptr noundef %40, ptr noundef null, ptr noundef %42) #5, !dbg !976
  store i32 %call33, ptr %status, align 4, !dbg !977
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then15
  %43 = load i32, ptr %status, align 4, !dbg !978
  store i32 %43, ptr %retval, align 4, !dbg !978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !978

cleanup:                                          ; preds = %if.end34, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_op) #4, !dbg !979
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !979
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !979
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !979
  %44 = load i32, ptr %retval, align 4, !dbg !979
  ret i32 %44, !dbg !979
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !980 dso_local i32 @acpi_ds_create_operands(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !982 dso_local i32 @acpi_ex_resolve_operands(i16 noundef zeroext, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !986 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !991 dso_local ptr @acpi_ps_get_opcode_name(i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ds_init_buffer_field(i16 noundef zeroext %aml_opcode, ptr noundef %obj_desc, ptr noundef %buffer_desc, ptr noundef %offset_desc, ptr noundef %length_desc, ptr noundef %result_desc) #0 align 16 !dbg !995 {
entry:
  %aml_opcode.addr = alloca i16, align 2
  %obj_desc.addr = alloca ptr, align 8
  %buffer_desc.addr = alloca ptr, align 8
  %offset_desc.addr = alloca ptr, align 8
  %length_desc.addr = alloca ptr, align 8
  %result_desc.addr = alloca ptr, align 8
  %offset = alloca i32, align 4
  %bit_offset = alloca i32, align 4
  %bit_count = alloca i32, align 4
  %field_flags = alloca i8, align 1
  %status = alloca i32, align 4
  store i16 %aml_opcode, ptr %aml_opcode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %aml_opcode.addr, metadata !999, metadata !DIExpression()), !dbg !1011
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1000, metadata !DIExpression()), !dbg !1012
  store ptr %buffer_desc, ptr %buffer_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer_desc.addr, metadata !1001, metadata !DIExpression()), !dbg !1013
  store ptr %offset_desc, ptr %offset_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset_desc.addr, metadata !1002, metadata !DIExpression()), !dbg !1014
  store ptr %length_desc, ptr %length_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length_desc.addr, metadata !1003, metadata !DIExpression()), !dbg !1015
  store ptr %result_desc, ptr %result_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result_desc.addr, metadata !1004, metadata !DIExpression()), !dbg !1016
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #4, !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !1005, metadata !DIExpression()), !dbg !1018
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit_offset) #4, !dbg !1019
  call void @llvm.dbg.declare(metadata ptr %bit_offset, metadata !1006, metadata !DIExpression()), !dbg !1020
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit_count) #4, !dbg !1021
  call void @llvm.dbg.declare(metadata ptr %bit_count, metadata !1007, metadata !DIExpression()), !dbg !1022
  call void @llvm.lifetime.start.p0(i64 1, ptr %field_flags) #4, !dbg !1023
  call void @llvm.dbg.declare(metadata ptr %field_flags, metadata !1008, metadata !DIExpression()), !dbg !1024
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1025
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1009, metadata !DIExpression()), !dbg !1026
  %0 = load ptr, ptr %buffer_desc.addr, align 8, !dbg !1027
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 2, !dbg !1029
  %1 = load i8, ptr %type, align 1, !dbg !1029
  %conv = zext i8 %1 to i32, !dbg !1027
  %cmp = icmp ne i32 %conv, 3, !dbg !1030
  br i1 %cmp, label %if.then, label %if.end, !dbg !1031

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buffer_desc.addr, align 8, !dbg !1032
  %call = call ptr @acpi_ut_get_object_type_name(ptr noundef %2) #5, !dbg !1032
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 93, ptr noundef @.str.4, ptr noundef %call) #5, !dbg !1032
  store i32 12291, ptr %status, align 4, !dbg !1034
  br label %cleanup, !dbg !1035

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %result_desc.addr, align 8, !dbg !1036
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %3, i32 0, i32 1, !dbg !1036
  %4 = load i8, ptr %descriptor_type, align 8, !dbg !1036
  %conv2 = zext i8 %4 to i32, !dbg !1036
  %cmp3 = icmp ne i32 %conv2, 15, !dbg !1038
  br i1 %cmp3, label %if.then5, label %if.end8, !dbg !1039

if.then5:                                         ; preds = %if.end
  %5 = load i16, ptr %aml_opcode.addr, align 2, !dbg !1040
  %call6 = call ptr @acpi_ps_get_opcode_name(i16 noundef zeroext %5) #5, !dbg !1040
  %6 = load ptr, ptr %result_desc.addr, align 8, !dbg !1040
  %call7 = call ptr @acpi_ut_get_descriptor_name(ptr noundef %6) #5, !dbg !1040
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 107, ptr noundef @.str.5, ptr noundef %call6, ptr noundef %call7) #5, !dbg !1040
  store i32 12291, ptr %status, align 4, !dbg !1042
  br label %cleanup, !dbg !1043

if.end8:                                          ; preds = %if.end
  %7 = load ptr, ptr %offset_desc.addr, align 8, !dbg !1044
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %7, i32 0, i32 6, !dbg !1045
  %8 = load i64, ptr %value, align 8, !dbg !1045
  %conv9 = trunc i64 %8 to i32, !dbg !1046
  store i32 %conv9, ptr %offset, align 4, !dbg !1047
  %9 = load i16, ptr %aml_opcode.addr, align 2, !dbg !1048
  %conv10 = zext i16 %9 to i32, !dbg !1048
  switch i32 %conv10, label %sw.default [
    i32 23315, label %sw.bb
    i32 141, label %sw.bb17
    i32 140, label %sw.bb18
    i32 139, label %sw.bb19
    i32 138, label %sw.bb21
    i32 143, label %sw.bb23
  ], !dbg !1049

sw.bb:                                            ; preds = %if.end8
  store i8 1, ptr %field_flags, align 1, !dbg !1050
  %10 = load i32, ptr %offset, align 4, !dbg !1052
  store i32 %10, ptr %bit_offset, align 4, !dbg !1053
  %11 = load ptr, ptr %length_desc.addr, align 8, !dbg !1054
  %value11 = getelementptr inbounds %struct.acpi_object_integer, ptr %11, i32 0, i32 6, !dbg !1055
  %12 = load i64, ptr %value11, align 8, !dbg !1055
  %conv12 = trunc i64 %12 to i32, !dbg !1056
  store i32 %conv12, ptr %bit_count, align 4, !dbg !1057
  %13 = load i32, ptr %bit_count, align 4, !dbg !1058
  %cmp13 = icmp eq i32 %13, 0, !dbg !1060
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !1061

if.then15:                                        ; preds = %sw.bb
  call void (ptr, i32, ptr, ...) @acpi_bios_error(ptr noundef @_acpi_module_name, i32 noundef 133, ptr noundef @.str.6) #5, !dbg !1062
  store i32 12292, ptr %status, align 4, !dbg !1064
  br label %cleanup, !dbg !1065

if.end16:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !1066

sw.bb17:                                          ; preds = %if.end8
  %14 = load i32, ptr %offset, align 4, !dbg !1067
  store i32 %14, ptr %bit_offset, align 4, !dbg !1068
  store i32 1, ptr %bit_count, align 4, !dbg !1069
  store i8 1, ptr %field_flags, align 1, !dbg !1070
  br label %sw.epilog, !dbg !1071

sw.bb18:                                          ; preds = %if.end8
  %15 = load i32, ptr %offset, align 4, !dbg !1072
  %mul = mul i32 8, %15, !dbg !1073
  store i32 %mul, ptr %bit_offset, align 4, !dbg !1074
  store i32 8, ptr %bit_count, align 4, !dbg !1075
  store i8 1, ptr %field_flags, align 1, !dbg !1076
  br label %sw.epilog, !dbg !1077

sw.bb19:                                          ; preds = %if.end8
  %16 = load i32, ptr %offset, align 4, !dbg !1078
  %mul20 = mul i32 8, %16, !dbg !1079
  store i32 %mul20, ptr %bit_offset, align 4, !dbg !1080
  store i32 16, ptr %bit_count, align 4, !dbg !1081
  store i8 2, ptr %field_flags, align 1, !dbg !1082
  br label %sw.epilog, !dbg !1083

sw.bb21:                                          ; preds = %if.end8
  %17 = load i32, ptr %offset, align 4, !dbg !1084
  %mul22 = mul i32 8, %17, !dbg !1085
  store i32 %mul22, ptr %bit_offset, align 4, !dbg !1086
  store i32 32, ptr %bit_count, align 4, !dbg !1087
  store i8 3, ptr %field_flags, align 1, !dbg !1088
  br label %sw.epilog, !dbg !1089

sw.bb23:                                          ; preds = %if.end8
  %18 = load i32, ptr %offset, align 4, !dbg !1090
  %mul24 = mul i32 8, %18, !dbg !1091
  store i32 %mul24, ptr %bit_offset, align 4, !dbg !1092
  store i32 64, ptr %bit_count, align 4, !dbg !1093
  store i8 4, ptr %field_flags, align 1, !dbg !1094
  br label %sw.epilog, !dbg !1095

sw.default:                                       ; preds = %if.end8
  %19 = load i16, ptr %aml_opcode.addr, align 2, !dbg !1096
  %conv25 = zext i16 %19 to i32, !dbg !1096
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 187, ptr noundef @.str.7, i32 noundef %conv25) #5, !dbg !1096
  store i32 12289, ptr %status, align 4, !dbg !1097
  br label %cleanup, !dbg !1098

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb18, %sw.bb17, %if.end16
  %20 = load i32, ptr %bit_offset, align 4, !dbg !1099
  %21 = load i32, ptr %bit_count, align 4, !dbg !1101
  %add = add i32 %20, %21, !dbg !1102
  %22 = load ptr, ptr %buffer_desc.addr, align 8, !dbg !1103
  %length = getelementptr inbounds %struct.acpi_object_buffer, ptr %22, i32 0, i32 6, !dbg !1104
  %23 = load i32, ptr %length, align 8, !dbg !1104
  %mul26 = mul i32 8, %23, !dbg !1105
  %cmp27 = icmp ugt i32 %add, %mul26, !dbg !1106
  br i1 %cmp27, label %if.then29, label %if.end33, !dbg !1107

if.then29:                                        ; preds = %sw.epilog
  store i32 12298, ptr %status, align 4, !dbg !1108
  %24 = load i32, ptr %status, align 4, !dbg !1110
  %25 = load ptr, ptr %result_desc.addr, align 8, !dbg !1110
  %call30 = call ptr @acpi_ut_get_node_name(ptr noundef %25) #5, !dbg !1110
  %26 = load i32, ptr %bit_offset, align 4, !dbg !1110
  %27 = load i32, ptr %bit_count, align 4, !dbg !1110
  %28 = load ptr, ptr %buffer_desc.addr, align 8, !dbg !1110
  %length31 = getelementptr inbounds %struct.acpi_object_buffer, ptr %28, i32 0, i32 6, !dbg !1110
  %29 = load i32, ptr %length31, align 8, !dbg !1110
  %mul32 = mul i32 8, %29, !dbg !1110
  call void (ptr, i32, i32, ptr, ...) @acpi_bios_exception(ptr noundef @_acpi_module_name, i32 noundef 198, i32 noundef %24, ptr noundef @.str.8, ptr noundef %call30, i32 noundef %26, i32 noundef %27, i32 noundef %mul32) #5, !dbg !1110
  br label %cleanup, !dbg !1111

if.end33:                                         ; preds = %sw.epilog
  %30 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1112
  %31 = load i8, ptr %field_flags, align 1, !dbg !1113
  %32 = load i32, ptr %bit_offset, align 4, !dbg !1114
  %33 = load i32, ptr %bit_count, align 4, !dbg !1115
  %call34 = call i32 @acpi_ex_prep_common_field_object(ptr noundef %30, i8 noundef zeroext %31, i8 noundef zeroext 0, i32 noundef %32, i32 noundef %33) #5, !dbg !1116
  store i32 %call34, ptr %status, align 4, !dbg !1117
  %34 = load i32, ptr %status, align 4, !dbg !1118
  %tobool = icmp ne i32 %34, 0, !dbg !1118
  br i1 %tobool, label %if.then35, label %if.end36, !dbg !1120

if.then35:                                        ; preds = %if.end33
  br label %cleanup, !dbg !1121

if.end36:                                         ; preds = %if.end33
  %35 = load ptr, ptr %buffer_desc.addr, align 8, !dbg !1123
  %36 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1124
  %buffer_obj = getelementptr inbounds %struct.acpi_object_buffer_field, ptr %36, i32 0, i32 15, !dbg !1125
  store ptr %35, ptr %buffer_obj, align 8, !dbg !1126
  %37 = load i16, ptr %aml_opcode.addr, align 2, !dbg !1127
  %conv37 = zext i16 %37 to i32, !dbg !1127
  %cmp38 = icmp eq i32 %conv37, 23315, !dbg !1128
  %conv39 = zext i1 %cmp38 to i32, !dbg !1128
  %conv40 = trunc i32 %conv39 to i8, !dbg !1127
  %38 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1129
  %is_create_field = getelementptr inbounds %struct.acpi_object_buffer_field, ptr %38, i32 0, i32 14, !dbg !1130
  store i8 %conv40, ptr %is_create_field, align 2, !dbg !1131
  %39 = load ptr, ptr %buffer_desc.addr, align 8, !dbg !1132
  %reference_count = getelementptr inbounds %struct.acpi_object_common, ptr %39, i32 0, i32 3, !dbg !1133
  %40 = load i16, ptr %reference_count, align 2, !dbg !1133
  %conv41 = zext i16 %40 to i32, !dbg !1132
  %41 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1134
  %reference_count42 = getelementptr inbounds %struct.acpi_object_common, ptr %41, i32 0, i32 3, !dbg !1135
  %42 = load i16, ptr %reference_count42, align 2, !dbg !1135
  %conv43 = zext i16 %42 to i32, !dbg !1134
  %add44 = add i32 %conv41, %conv43, !dbg !1136
  %conv45 = trunc i32 %add44 to i16, !dbg !1137
  %43 = load ptr, ptr %buffer_desc.addr, align 8, !dbg !1138
  %reference_count46 = getelementptr inbounds %struct.acpi_object_common, ptr %43, i32 0, i32 3, !dbg !1139
  store i16 %conv45, ptr %reference_count46, align 2, !dbg !1140
  br label %cleanup, !dbg !1138

cleanup:                                          ; preds = %if.end36, %if.then35, %if.then29, %sw.default, %if.then15, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !1010), !dbg !1141
  %44 = load ptr, ptr %offset_desc.addr, align 8, !dbg !1142
  call void @acpi_ut_remove_reference(ptr noundef %44) #5, !dbg !1143
  %45 = load ptr, ptr %buffer_desc.addr, align 8, !dbg !1144
  call void @acpi_ut_remove_reference(ptr noundef %45) #5, !dbg !1145
  %46 = load i16, ptr %aml_opcode.addr, align 2, !dbg !1146
  %conv47 = zext i16 %46 to i32, !dbg !1146
  %cmp48 = icmp eq i32 %conv47, 23315, !dbg !1148
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !1149

if.then50:                                        ; preds = %cleanup
  %47 = load ptr, ptr %length_desc.addr, align 8, !dbg !1150
  call void @acpi_ut_remove_reference(ptr noundef %47) #5, !dbg !1152
  br label %if.end51, !dbg !1153

if.end51:                                         ; preds = %if.then50, %cleanup
  %48 = load i32, ptr %status, align 4, !dbg !1154
  %tobool52 = icmp ne i32 %48, 0, !dbg !1154
  br i1 %tobool52, label %if.then53, label %if.else, !dbg !1156

if.then53:                                        ; preds = %if.end51
  %49 = load ptr, ptr %result_desc.addr, align 8, !dbg !1157
  call void @acpi_ut_remove_reference(ptr noundef %49) #5, !dbg !1159
  br label %if.end56, !dbg !1160

if.else:                                          ; preds = %if.end51
  %50 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1161
  %flags = getelementptr inbounds %struct.acpi_object_buffer_field, ptr %50, i32 0, i32 4, !dbg !1163
  %51 = load i8, ptr %flags, align 4, !dbg !1164
  %conv54 = zext i8 %51 to i32, !dbg !1164
  %or = or i32 %conv54, 4, !dbg !1164
  %conv55 = trunc i32 %or to i8, !dbg !1164
  store i8 %conv55, ptr %flags, align 4, !dbg !1164
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then53
  %52 = load i32, ptr %status, align 4, !dbg !1165
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1166
  call void @llvm.lifetime.end.p0(i64 1, ptr %field_flags) #4, !dbg !1166
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit_count) #4, !dbg !1166
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit_offset) #4, !dbg !1166
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #4, !dbg !1166
  ret i32 %52, !dbg !1165
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_eval_region_operands(ptr noundef %walk_state, ptr noundef %op) #0 align 16 !dbg !1167 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %operand_desc = alloca ptr, align 8
  %node = alloca ptr, align 8
  %next_op = alloca ptr, align 8
  %space_id = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1169, metadata !DIExpression()), !dbg !1177
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1170, metadata !DIExpression()), !dbg !1178
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1179
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1171, metadata !DIExpression()), !dbg !1180
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !1181
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1172, metadata !DIExpression()), !dbg !1182
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand_desc) #4, !dbg !1183
  call void @llvm.dbg.declare(metadata ptr %operand_desc, metadata !1173, metadata !DIExpression()), !dbg !1184
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !1185
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1174, metadata !DIExpression()), !dbg !1186
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_op) #4, !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %next_op, metadata !1175, metadata !DIExpression()), !dbg !1188
  call void @llvm.lifetime.start.p0(i64 1, ptr %space_id) #4, !dbg !1189
  call void @llvm.dbg.declare(metadata ptr %space_id, metadata !1176, metadata !DIExpression()), !dbg !1190
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1191
  %node1 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 6, !dbg !1192
  %1 = load ptr, ptr %node1, align 8, !dbg !1192
  store ptr %1, ptr %node, align 8, !dbg !1193
  %2 = load ptr, ptr %op.addr, align 8, !dbg !1194
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %2, i32 0, i32 7, !dbg !1195
  %3 = load ptr, ptr %value, align 8, !dbg !1196
  store ptr %3, ptr %next_op, align 8, !dbg !1197
  %4 = load ptr, ptr %next_op, align 8, !dbg !1198
  %value2 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %4, i32 0, i32 7, !dbg !1199
  %5 = load i64, ptr %value2, align 8, !dbg !1200
  %conv = trunc i64 %5 to i8, !dbg !1201
  store i8 %conv, ptr %space_id, align 1, !dbg !1202
  %6 = load ptr, ptr %next_op, align 8, !dbg !1203
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %6, i32 0, i32 5, !dbg !1204
  %7 = load ptr, ptr %next, align 8, !dbg !1204
  store ptr %7, ptr %next_op, align 8, !dbg !1205
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !1206
  %9 = load ptr, ptr %next_op, align 8, !dbg !1207
  %call = call i32 @acpi_ds_create_operands(ptr noundef %8, ptr noundef %9) #5, !dbg !1208
  store i32 %call, ptr %status, align 4, !dbg !1209
  %10 = load i32, ptr %status, align 4, !dbg !1210
  %tobool = icmp ne i32 %10, 0, !dbg !1210
  br i1 %tobool, label %if.then, label %if.end, !dbg !1212

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %status, align 4, !dbg !1213
  store i32 %11, ptr %retval, align 4, !dbg !1213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1213

if.end:                                           ; preds = %entry
  %12 = load ptr, ptr %op.addr, align 8, !dbg !1215
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %12, i32 0, i32 3, !dbg !1216
  %13 = load i16, ptr %aml_opcode, align 2, !dbg !1216
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !1217
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %14, i32 0, i32 28, !dbg !1217
  %15 = load ptr, ptr %walk_state.addr, align 8, !dbg !1217
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, ptr %15, i32 0, i32 5, !dbg !1217
  %16 = load i8, ptr %num_operands, align 1, !dbg !1217
  %conv3 = zext i8 %16 to i32, !dbg !1217
  %sub = sub i32 %conv3, 1, !dbg !1217
  %idxprom = sext i32 %sub to i64, !dbg !1217
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 %idxprom, !dbg !1217
  %17 = load ptr, ptr %walk_state.addr, align 8, !dbg !1218
  %call4 = call i32 @acpi_ex_resolve_operands(i16 noundef zeroext %13, ptr noundef %arrayidx, ptr noundef %17) #5, !dbg !1219
  store i32 %call4, ptr %status, align 4, !dbg !1220
  %18 = load i32, ptr %status, align 4, !dbg !1221
  %tobool5 = icmp ne i32 %18, 0, !dbg !1221
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1223

if.then6:                                         ; preds = %if.end
  %19 = load i32, ptr %status, align 4, !dbg !1224
  store i32 %19, ptr %retval, align 4, !dbg !1224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1224

if.end7:                                          ; preds = %if.end
  %20 = load ptr, ptr %node, align 8, !dbg !1226
  %call8 = call ptr @acpi_ns_get_attached_object(ptr noundef %20) #5, !dbg !1227
  store ptr %call8, ptr %obj_desc, align 8, !dbg !1228
  %21 = load ptr, ptr %obj_desc, align 8, !dbg !1229
  %tobool9 = icmp ne ptr %21, null, !dbg !1229
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !1231

if.then10:                                        ; preds = %if.end7
  store i32 6, ptr %retval, align 4, !dbg !1232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1232

if.end11:                                         ; preds = %if.end7
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !1234
  %operands12 = getelementptr inbounds %struct.acpi_walk_state, ptr %22, i32 0, i32 28, !dbg !1235
  %23 = load ptr, ptr %walk_state.addr, align 8, !dbg !1236
  %num_operands13 = getelementptr inbounds %struct.acpi_walk_state, ptr %23, i32 0, i32 5, !dbg !1237
  %24 = load i8, ptr %num_operands13, align 1, !dbg !1237
  %conv14 = zext i8 %24 to i32, !dbg !1236
  %sub15 = sub i32 %conv14, 1, !dbg !1238
  %idxprom16 = sext i32 %sub15 to i64, !dbg !1234
  %arrayidx17 = getelementptr [9 x ptr], ptr %operands12, i64 0, i64 %idxprom16, !dbg !1234
  %25 = load ptr, ptr %arrayidx17, align 8, !dbg !1234
  store ptr %25, ptr %operand_desc, align 8, !dbg !1239
  %26 = load ptr, ptr %operand_desc, align 8, !dbg !1240
  %value18 = getelementptr inbounds %struct.acpi_object_integer, ptr %26, i32 0, i32 6, !dbg !1241
  %27 = load i64, ptr %value18, align 8, !dbg !1241
  %conv19 = trunc i64 %27 to i32, !dbg !1242
  %28 = load ptr, ptr %obj_desc, align 8, !dbg !1243
  %length = getelementptr inbounds %struct.acpi_object_region, ptr %28, i32 0, i32 10, !dbg !1244
  store i32 %conv19, ptr %length, align 8, !dbg !1245
  %29 = load ptr, ptr %operand_desc, align 8, !dbg !1246
  call void @acpi_ut_remove_reference(ptr noundef %29) #5, !dbg !1247
  %30 = load ptr, ptr %obj_desc, align 8, !dbg !1248
  %length20 = getelementptr inbounds %struct.acpi_object_region, ptr %30, i32 0, i32 10, !dbg !1250
  %31 = load i32, ptr %length20, align 8, !dbg !1250
  %tobool21 = icmp ne i32 %31, 0, !dbg !1248
  br i1 %tobool21, label %if.end26, label %land.lhs.true, !dbg !1251

land.lhs.true:                                    ; preds = %if.end11
  %32 = load i8, ptr %space_id, align 1, !dbg !1252
  %conv22 = zext i8 %32 to i32, !dbg !1252
  %cmp = icmp slt i32 %conv22, 12, !dbg !1253
  br i1 %cmp, label %if.then24, label %if.end26, !dbg !1254

if.then24:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %node, align 8, !dbg !1255
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %33, i32 0, i32 4, !dbg !1255
  %arraydecay = getelementptr inbounds [4 x i8], ptr %name, i64 0, i64 0, !dbg !1255
  %34 = load i8, ptr %space_id, align 1, !dbg !1255
  %conv25 = zext i8 %34 to i32, !dbg !1255
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 414, ptr noundef @.str.1, ptr noundef %arraydecay, i32 noundef %conv25) #5, !dbg !1255
  br label %if.end26, !dbg !1257

if.end26:                                         ; preds = %if.then24, %land.lhs.true, %if.end11
  %35 = load ptr, ptr %walk_state.addr, align 8, !dbg !1258
  %operands27 = getelementptr inbounds %struct.acpi_walk_state, ptr %35, i32 0, i32 28, !dbg !1259
  %36 = load ptr, ptr %walk_state.addr, align 8, !dbg !1260
  %num_operands28 = getelementptr inbounds %struct.acpi_walk_state, ptr %36, i32 0, i32 5, !dbg !1261
  %37 = load i8, ptr %num_operands28, align 1, !dbg !1261
  %conv29 = zext i8 %37 to i32, !dbg !1260
  %sub30 = sub i32 %conv29, 2, !dbg !1262
  %idxprom31 = sext i32 %sub30 to i64, !dbg !1258
  %arrayidx32 = getelementptr [9 x ptr], ptr %operands27, i64 0, i64 %idxprom31, !dbg !1258
  %38 = load ptr, ptr %arrayidx32, align 8, !dbg !1258
  store ptr %38, ptr %operand_desc, align 8, !dbg !1263
  %39 = load ptr, ptr %operand_desc, align 8, !dbg !1264
  %value33 = getelementptr inbounds %struct.acpi_object_integer, ptr %39, i32 0, i32 6, !dbg !1265
  %40 = load i64, ptr %value33, align 8, !dbg !1265
  %41 = load ptr, ptr %obj_desc, align 8, !dbg !1266
  %address = getelementptr inbounds %struct.acpi_object_region, ptr %41, i32 0, i32 9, !dbg !1267
  store i64 %40, ptr %address, align 8, !dbg !1268
  %42 = load ptr, ptr %operand_desc, align 8, !dbg !1269
  call void @acpi_ut_remove_reference(ptr noundef %42) #5, !dbg !1270
  %43 = load ptr, ptr %obj_desc, align 8, !dbg !1271
  %space_id34 = getelementptr inbounds %struct.acpi_object_region, ptr %43, i32 0, i32 5, !dbg !1272
  %44 = load i8, ptr %space_id34, align 1, !dbg !1272
  %45 = load ptr, ptr %obj_desc, align 8, !dbg !1273
  %address35 = getelementptr inbounds %struct.acpi_object_region, ptr %45, i32 0, i32 9, !dbg !1274
  %46 = load i64, ptr %address35, align 8, !dbg !1274
  %47 = load ptr, ptr %obj_desc, align 8, !dbg !1275
  %length36 = getelementptr inbounds %struct.acpi_object_region, ptr %47, i32 0, i32 10, !dbg !1276
  %48 = load i32, ptr %length36, align 8, !dbg !1276
  %49 = load ptr, ptr %node, align 8, !dbg !1277
  %call37 = call i32 @acpi_ut_add_address_range(i8 noundef zeroext %44, i64 noundef %46, i32 noundef %48, ptr noundef %49) #5, !dbg !1278
  store i32 %call37, ptr %status, align 4, !dbg !1279
  %50 = load ptr, ptr %obj_desc, align 8, !dbg !1280
  %flags = getelementptr inbounds %struct.acpi_object_region, ptr %50, i32 0, i32 4, !dbg !1281
  %51 = load i8, ptr %flags, align 4, !dbg !1282
  %conv38 = zext i8 %51 to i32, !dbg !1282
  %or = or i32 %conv38, 4, !dbg !1282
  %conv39 = trunc i32 %or to i8, !dbg !1282
  store i8 %conv39, ptr %flags, align 4, !dbg !1282
  %52 = load i32, ptr %status, align 4, !dbg !1283
  store i32 %52, ptr %retval, align 4, !dbg !1283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1283

cleanup:                                          ; preds = %if.end26, %if.then10, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %space_id) #4, !dbg !1284
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_op) #4, !dbg !1284
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1284
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand_desc) #4, !dbg !1284
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !1284
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1284
  %53 = load i32, ptr %retval, align 4, !dbg !1284
  ret i32 %53, !dbg !1284
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1285 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1289 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1290 dso_local i32 @acpi_ut_add_address_range(i8 noundef zeroext, i64 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_eval_table_region_operands(ptr noundef %walk_state, ptr noundef %op) #0 align 16 !dbg !1293 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %operand = alloca ptr, align 8
  %node = alloca ptr, align 8
  %next_op = alloca ptr, align 8
  %table = alloca ptr, align 8
  %table_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1295, metadata !DIExpression()), !dbg !1321
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1296, metadata !DIExpression()), !dbg !1322
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1323
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1297, metadata !DIExpression()), !dbg !1324
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !1325
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1298, metadata !DIExpression()), !dbg !1326
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand) #4, !dbg !1327
  call void @llvm.dbg.declare(metadata ptr %operand, metadata !1299, metadata !DIExpression()), !dbg !1328
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !1329
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1300, metadata !DIExpression()), !dbg !1330
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_op) #4, !dbg !1331
  call void @llvm.dbg.declare(metadata ptr %next_op, metadata !1301, metadata !DIExpression()), !dbg !1332
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #4, !dbg !1333
  call void @llvm.dbg.declare(metadata ptr %table, metadata !1302, metadata !DIExpression()), !dbg !1334
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_index) #4, !dbg !1335
  call void @llvm.dbg.declare(metadata ptr %table_index, metadata !1319, metadata !DIExpression()), !dbg !1336
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1337
  %node1 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 6, !dbg !1338
  %1 = load ptr, ptr %node1, align 8, !dbg !1338
  store ptr %1, ptr %node, align 8, !dbg !1339
  %2 = load ptr, ptr %op.addr, align 8, !dbg !1340
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %2, i32 0, i32 7, !dbg !1341
  %3 = load ptr, ptr %value, align 8, !dbg !1342
  store ptr %3, ptr %next_op, align 8, !dbg !1343
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !1344
  %5 = load ptr, ptr %next_op, align 8, !dbg !1345
  %call = call i32 @acpi_ds_create_operands(ptr noundef %4, ptr noundef %5) #5, !dbg !1346
  store i32 %call, ptr %status, align 4, !dbg !1347
  %6 = load i32, ptr %status, align 4, !dbg !1348
  %tobool = icmp ne i32 %6, 0, !dbg !1348
  br i1 %tobool, label %if.then, label %if.end, !dbg !1350

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %status, align 4, !dbg !1351
  store i32 %7, ptr %retval, align 4, !dbg !1351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !1351

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !1353
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %8, i32 0, i32 28, !dbg !1354
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !1353
  store ptr %arrayidx, ptr %operand, align 8, !dbg !1355
  %9 = load ptr, ptr %op.addr, align 8, !dbg !1356
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %9, i32 0, i32 3, !dbg !1357
  %10 = load i16, ptr %aml_opcode, align 2, !dbg !1357
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !1358
  %operands2 = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 28, !dbg !1358
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !1358
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 5, !dbg !1358
  %13 = load i8, ptr %num_operands, align 1, !dbg !1358
  %conv = zext i8 %13 to i32, !dbg !1358
  %sub = sub i32 %conv, 1, !dbg !1358
  %idxprom = sext i32 %sub to i64, !dbg !1358
  %arrayidx3 = getelementptr [9 x ptr], ptr %operands2, i64 0, i64 %idxprom, !dbg !1358
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !1359
  %call4 = call i32 @acpi_ex_resolve_operands(i16 noundef zeroext %10, ptr noundef %arrayidx3, ptr noundef %14) #5, !dbg !1360
  store i32 %call4, ptr %status, align 4, !dbg !1361
  %15 = load i32, ptr %status, align 4, !dbg !1362
  %tobool5 = icmp ne i32 %15, 0, !dbg !1362
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1364

if.then6:                                         ; preds = %if.end
  br label %cleanup, !dbg !1365

if.end7:                                          ; preds = %if.end
  %16 = load ptr, ptr %operand, align 8, !dbg !1367
  %arrayidx8 = getelementptr ptr, ptr %16, i64 0, !dbg !1367
  %17 = load ptr, ptr %arrayidx8, align 8, !dbg !1367
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %17, i32 0, i32 5, !dbg !1368
  %18 = load ptr, ptr %pointer, align 8, !dbg !1368
  %19 = load ptr, ptr %operand, align 8, !dbg !1369
  %arrayidx9 = getelementptr ptr, ptr %19, i64 1, !dbg !1369
  %20 = load ptr, ptr %arrayidx9, align 8, !dbg !1369
  %pointer10 = getelementptr inbounds %struct.acpi_object_string, ptr %20, i32 0, i32 5, !dbg !1370
  %21 = load ptr, ptr %pointer10, align 8, !dbg !1370
  %22 = load ptr, ptr %operand, align 8, !dbg !1371
  %arrayidx11 = getelementptr ptr, ptr %22, i64 2, !dbg !1371
  %23 = load ptr, ptr %arrayidx11, align 8, !dbg !1371
  %pointer12 = getelementptr inbounds %struct.acpi_object_string, ptr %23, i32 0, i32 5, !dbg !1372
  %24 = load ptr, ptr %pointer12, align 8, !dbg !1372
  %call13 = call i32 @acpi_tb_find_table(ptr noundef %18, ptr noundef %21, ptr noundef %24, ptr noundef %table_index) #5, !dbg !1373
  store i32 %call13, ptr %status, align 4, !dbg !1374
  %25 = load i32, ptr %status, align 4, !dbg !1375
  %tobool14 = icmp ne i32 %25, 0, !dbg !1375
  br i1 %tobool14, label %if.then15, label %if.end25, !dbg !1377

if.then15:                                        ; preds = %if.end7
  %26 = load i32, ptr %status, align 4, !dbg !1378
  %cmp = icmp eq i32 %26, 5, !dbg !1381
  br i1 %cmp, label %if.then17, label %if.end24, !dbg !1382

if.then17:                                        ; preds = %if.then15
  %27 = load ptr, ptr %operand, align 8, !dbg !1383
  %arrayidx18 = getelementptr ptr, ptr %27, i64 0, !dbg !1383
  %28 = load ptr, ptr %arrayidx18, align 8, !dbg !1383
  %pointer19 = getelementptr inbounds %struct.acpi_object_string, ptr %28, i32 0, i32 5, !dbg !1383
  %29 = load ptr, ptr %pointer19, align 8, !dbg !1383
  %30 = load ptr, ptr %operand, align 8, !dbg !1383
  %arrayidx20 = getelementptr ptr, ptr %30, i64 1, !dbg !1383
  %31 = load ptr, ptr %arrayidx20, align 8, !dbg !1383
  %pointer21 = getelementptr inbounds %struct.acpi_object_string, ptr %31, i32 0, i32 5, !dbg !1383
  %32 = load ptr, ptr %pointer21, align 8, !dbg !1383
  %33 = load ptr, ptr %operand, align 8, !dbg !1383
  %arrayidx22 = getelementptr ptr, ptr %33, i64 2, !dbg !1383
  %34 = load ptr, ptr %arrayidx22, align 8, !dbg !1383
  %pointer23 = getelementptr inbounds %struct.acpi_object_string, ptr %34, i32 0, i32 5, !dbg !1383
  %35 = load ptr, ptr %pointer23, align 8, !dbg !1383
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 512, ptr noundef @.str.2, ptr noundef %29, ptr noundef %32, ptr noundef %35) #5, !dbg !1383
  br label %if.end24, !dbg !1385

if.end24:                                         ; preds = %if.then17, %if.then15
  br label %cleanup, !dbg !1386

if.end25:                                         ; preds = %if.end7
  %36 = load i32, ptr %table_index, align 4, !dbg !1387
  %call26 = call i32 @acpi_get_table_by_index(i32 noundef %36, ptr noundef %table) #5, !dbg !1388
  store i32 %call26, ptr %status, align 4, !dbg !1389
  %37 = load i32, ptr %status, align 4, !dbg !1390
  %tobool27 = icmp ne i32 %37, 0, !dbg !1390
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !1392

if.then28:                                        ; preds = %if.end25
  br label %cleanup, !dbg !1393

if.end29:                                         ; preds = %if.end25
  %38 = load ptr, ptr %node, align 8, !dbg !1395
  %call30 = call ptr @acpi_ns_get_attached_object(ptr noundef %38) #5, !dbg !1396
  store ptr %call30, ptr %obj_desc, align 8, !dbg !1397
  %39 = load ptr, ptr %obj_desc, align 8, !dbg !1398
  %tobool31 = icmp ne ptr %39, null, !dbg !1398
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !1400

if.then32:                                        ; preds = %if.end29
  store i32 6, ptr %status, align 4, !dbg !1401
  br label %cleanup, !dbg !1403

if.end33:                                         ; preds = %if.end29
  %40 = load ptr, ptr %table, align 8, !dbg !1404
  %41 = ptrtoint ptr %40 to i64, !dbg !1404
  %42 = load ptr, ptr %obj_desc, align 8, !dbg !1405
  %address = getelementptr inbounds %struct.acpi_object_region, ptr %42, i32 0, i32 9, !dbg !1406
  store i64 %41, ptr %address, align 8, !dbg !1407
  %43 = load ptr, ptr %table, align 8, !dbg !1408
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %43, i32 0, i32 1, !dbg !1409
  %44 = load i32, ptr %length, align 1, !dbg !1409
  %45 = load ptr, ptr %obj_desc, align 8, !dbg !1410
  %length34 = getelementptr inbounds %struct.acpi_object_region, ptr %45, i32 0, i32 10, !dbg !1411
  store i32 %44, ptr %length34, align 8, !dbg !1412
  %46 = load ptr, ptr %table, align 8, !dbg !1413
  %47 = load ptr, ptr %obj_desc, align 8, !dbg !1414
  %pointer35 = getelementptr inbounds %struct.acpi_object_region, ptr %47, i32 0, i32 11, !dbg !1415
  store ptr %46, ptr %pointer35, align 8, !dbg !1416
  %48 = load ptr, ptr %obj_desc, align 8, !dbg !1417
  %flags = getelementptr inbounds %struct.acpi_object_region, ptr %48, i32 0, i32 4, !dbg !1418
  %49 = load i8, ptr %flags, align 4, !dbg !1419
  %conv36 = zext i8 %49 to i32, !dbg !1419
  %or = or i32 %conv36, 4, !dbg !1419
  %conv37 = trunc i32 %or to i8, !dbg !1419
  store i8 %conv37, ptr %flags, align 4, !dbg !1419
  br label %cleanup, !dbg !1417

cleanup:                                          ; preds = %if.end33, %if.then32, %if.then28, %if.end24, %if.then6
  call void @llvm.dbg.label(metadata !1320), !dbg !1420
  %50 = load ptr, ptr %operand, align 8, !dbg !1421
  %arrayidx38 = getelementptr ptr, ptr %50, i64 0, !dbg !1421
  %51 = load ptr, ptr %arrayidx38, align 8, !dbg !1421
  call void @acpi_ut_remove_reference(ptr noundef %51) #5, !dbg !1422
  %52 = load ptr, ptr %operand, align 8, !dbg !1423
  %arrayidx39 = getelementptr ptr, ptr %52, i64 1, !dbg !1423
  %53 = load ptr, ptr %arrayidx39, align 8, !dbg !1423
  call void @acpi_ut_remove_reference(ptr noundef %53) #5, !dbg !1424
  %54 = load ptr, ptr %operand, align 8, !dbg !1425
  %arrayidx40 = getelementptr ptr, ptr %54, i64 2, !dbg !1425
  %55 = load ptr, ptr %arrayidx40, align 8, !dbg !1425
  call void @acpi_ut_remove_reference(ptr noundef %55) #5, !dbg !1426
  %56 = load i32, ptr %status, align 4, !dbg !1427
  store i32 %56, ptr %retval, align 4, !dbg !1427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !1427

cleanup41:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_index) #4, !dbg !1428
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #4, !dbg !1428
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_op) #4, !dbg !1428
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1428
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand) #4, !dbg !1428
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !1428
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1428
  %57 = load i32, ptr %retval, align 4, !dbg !1428
  ret i32 %57, !dbg !1428
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1429 dso_local i32 @acpi_tb_find_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1434 dso_local i32 @acpi_get_table_by_index(i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_eval_data_object_operands(ptr noundef %walk_state, ptr noundef %op, ptr noundef %obj_desc) #0 align 16 !dbg !1438 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %obj_desc.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %arg_desc = alloca ptr, align 8
  %length = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1442, metadata !DIExpression()), !dbg !1448
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1443, metadata !DIExpression()), !dbg !1449
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1444, metadata !DIExpression()), !dbg !1450
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1451
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1445, metadata !DIExpression()), !dbg !1452
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg_desc) #4, !dbg !1453
  call void @llvm.dbg.declare(metadata ptr %arg_desc, metadata !1446, metadata !DIExpression()), !dbg !1454
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #4, !dbg !1455
  call void @llvm.dbg.declare(metadata ptr %length, metadata !1447, metadata !DIExpression()), !dbg !1456
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1457
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 5, !dbg !1458
  %1 = load i8, ptr %num_operands, align 1, !dbg !1458
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1459
  %operand_index = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 6, !dbg !1460
  store i8 %1, ptr %operand_index, align 2, !dbg !1461
  %3 = load ptr, ptr %op.addr, align 8, !dbg !1462
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %3, i32 0, i32 7, !dbg !1464
  %4 = load ptr, ptr %value, align 8, !dbg !1465
  %tobool = icmp ne ptr %4, null, !dbg !1462
  br i1 %tobool, label %if.end, label %if.then, !dbg !1466

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %op.addr, align 8, !dbg !1467
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %5, i32 0, i32 3, !dbg !1467
  %6 = load i16, ptr %aml_opcode, align 2, !dbg !1467
  %conv = zext i16 %6 to i32, !dbg !1467
  %7 = load ptr, ptr %op.addr, align 8, !dbg !1467
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 590, ptr noundef @.str.3, i32 noundef %conv, ptr noundef %7) #5, !dbg !1467
  store i32 0, ptr %retval, align 4, !dbg !1469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1469

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !1470
  %9 = load ptr, ptr %op.addr, align 8, !dbg !1471
  %value1 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %9, i32 0, i32 7, !dbg !1472
  %10 = load ptr, ptr %value1, align 8, !dbg !1473
  %call = call i32 @acpi_ds_create_operand(ptr noundef %8, ptr noundef %10, i32 noundef 1) #5, !dbg !1474
  store i32 %call, ptr %status, align 4, !dbg !1475
  %11 = load i32, ptr %status, align 4, !dbg !1476
  %tobool2 = icmp ne i32 %11, 0, !dbg !1476
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1478

if.then3:                                         ; preds = %if.end
  %12 = load i32, ptr %status, align 4, !dbg !1479
  store i32 %12, ptr %retval, align 4, !dbg !1479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1479

if.end4:                                          ; preds = %if.end
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !1481
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %13, i32 0, i32 3, !dbg !1482
  %14 = load i16, ptr %opcode, align 2, !dbg !1482
  %15 = load ptr, ptr %walk_state.addr, align 8, !dbg !1483
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %15, i32 0, i32 28, !dbg !1484
  %16 = load ptr, ptr %walk_state.addr, align 8, !dbg !1485
  %num_operands5 = getelementptr inbounds %struct.acpi_walk_state, ptr %16, i32 0, i32 5, !dbg !1486
  %17 = load i8, ptr %num_operands5, align 1, !dbg !1486
  %conv6 = zext i8 %17 to i32, !dbg !1485
  %sub = sub i32 %conv6, 1, !dbg !1487
  %idxprom = sext i32 %sub to i64, !dbg !1483
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 %idxprom, !dbg !1483
  %18 = load ptr, ptr %walk_state.addr, align 8, !dbg !1488
  %call7 = call i32 @acpi_ex_resolve_operands(i16 noundef zeroext %14, ptr noundef %arrayidx, ptr noundef %18) #5, !dbg !1489
  store i32 %call7, ptr %status, align 4, !dbg !1490
  %19 = load i32, ptr %status, align 4, !dbg !1491
  %tobool8 = icmp ne i32 %19, 0, !dbg !1491
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1493

if.then9:                                         ; preds = %if.end4
  %20 = load i32, ptr %status, align 4, !dbg !1494
  store i32 %20, ptr %retval, align 4, !dbg !1494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1494

if.end10:                                         ; preds = %if.end4
  %21 = load ptr, ptr %walk_state.addr, align 8, !dbg !1496
  %operands11 = getelementptr inbounds %struct.acpi_walk_state, ptr %21, i32 0, i32 28, !dbg !1497
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !1498
  %num_operands12 = getelementptr inbounds %struct.acpi_walk_state, ptr %22, i32 0, i32 5, !dbg !1499
  %23 = load i8, ptr %num_operands12, align 1, !dbg !1499
  %conv13 = zext i8 %23 to i32, !dbg !1498
  %sub14 = sub i32 %conv13, 1, !dbg !1500
  %idxprom15 = sext i32 %sub14 to i64, !dbg !1496
  %arrayidx16 = getelementptr [9 x ptr], ptr %operands11, i64 0, i64 %idxprom15, !dbg !1496
  %24 = load ptr, ptr %arrayidx16, align 8, !dbg !1496
  store ptr %24, ptr %arg_desc, align 8, !dbg !1501
  %25 = load ptr, ptr %arg_desc, align 8, !dbg !1502
  %value17 = getelementptr inbounds %struct.acpi_object_integer, ptr %25, i32 0, i32 6, !dbg !1503
  %26 = load i64, ptr %value17, align 8, !dbg !1503
  %conv18 = trunc i64 %26 to i32, !dbg !1504
  store i32 %conv18, ptr %length, align 4, !dbg !1505
  %27 = load ptr, ptr %walk_state.addr, align 8, !dbg !1506
  %call19 = call i32 @acpi_ds_obj_stack_pop(i32 noundef 1, ptr noundef %27) #5, !dbg !1507
  store i32 %call19, ptr %status, align 4, !dbg !1508
  %28 = load i32, ptr %status, align 4, !dbg !1509
  %tobool20 = icmp ne i32 %28, 0, !dbg !1509
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !1511

if.then21:                                        ; preds = %if.end10
  %29 = load i32, ptr %status, align 4, !dbg !1512
  store i32 %29, ptr %retval, align 4, !dbg !1512
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1512

if.end22:                                         ; preds = %if.end10
  %30 = load ptr, ptr %arg_desc, align 8, !dbg !1514
  call void @acpi_ut_remove_reference(ptr noundef %30) #5, !dbg !1515
  %31 = load ptr, ptr %op.addr, align 8, !dbg !1516
  %aml_opcode23 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %31, i32 0, i32 3, !dbg !1517
  %32 = load i16, ptr %aml_opcode23, align 2, !dbg !1517
  %conv24 = zext i16 %32 to i32, !dbg !1516
  switch i32 %conv24, label %sw.default [
    i32 17, label %sw.bb
    i32 18, label %sw.bb26
    i32 19, label %sw.bb26
  ], !dbg !1518

sw.bb:                                            ; preds = %if.end22
  %33 = load ptr, ptr %walk_state.addr, align 8, !dbg !1519
  %34 = load ptr, ptr %op.addr, align 8, !dbg !1521
  %35 = load i32, ptr %length, align 4, !dbg !1522
  %call25 = call i32 @acpi_ds_build_internal_buffer_obj(ptr noundef %33, ptr noundef %34, i32 noundef %35, ptr noundef %obj_desc.addr) #5, !dbg !1523
  store i32 %call25, ptr %status, align 4, !dbg !1524
  br label %sw.epilog, !dbg !1525

sw.bb26:                                          ; preds = %if.end22, %if.end22
  %36 = load ptr, ptr %walk_state.addr, align 8, !dbg !1526
  %37 = load ptr, ptr %op.addr, align 8, !dbg !1527
  %38 = load i32, ptr %length, align 4, !dbg !1528
  %call27 = call i32 @acpi_ds_build_internal_package_obj(ptr noundef %36, ptr noundef %37, i32 noundef %38, ptr noundef %obj_desc.addr) #5, !dbg !1529
  store i32 %call27, ptr %status, align 4, !dbg !1530
  br label %sw.epilog, !dbg !1531

sw.default:                                       ; preds = %if.end22
  store i32 12289, ptr %retval, align 4, !dbg !1532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1532

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb
  %39 = load i32, ptr %status, align 4, !dbg !1533
  %tobool28 = icmp ne i32 %39, 0, !dbg !1533
  br i1 %tobool28, label %if.end48, label %if.then29, !dbg !1535

if.then29:                                        ; preds = %sw.epilog
  %40 = load ptr, ptr %op.addr, align 8, !dbg !1536
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %40, i32 0, i32 0, !dbg !1539
  %41 = load ptr, ptr %parent, align 8, !dbg !1539
  %tobool30 = icmp ne ptr %41, null, !dbg !1536
  br i1 %tobool30, label %lor.lhs.false, label %if.then46, !dbg !1540

lor.lhs.false:                                    ; preds = %if.then29
  %42 = load ptr, ptr %op.addr, align 8, !dbg !1541
  %parent31 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %42, i32 0, i32 0, !dbg !1542
  %43 = load ptr, ptr %parent31, align 8, !dbg !1542
  %aml_opcode32 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %43, i32 0, i32 3, !dbg !1543
  %44 = load i16, ptr %aml_opcode32, align 2, !dbg !1543
  %conv33 = zext i16 %44 to i32, !dbg !1541
  %cmp = icmp ne i32 %conv33, 18, !dbg !1544
  br i1 %cmp, label %land.lhs.true, label %if.end47, !dbg !1545

land.lhs.true:                                    ; preds = %lor.lhs.false
  %45 = load ptr, ptr %op.addr, align 8, !dbg !1546
  %parent35 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %45, i32 0, i32 0, !dbg !1547
  %46 = load ptr, ptr %parent35, align 8, !dbg !1547
  %aml_opcode36 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %46, i32 0, i32 3, !dbg !1548
  %47 = load i16, ptr %aml_opcode36, align 2, !dbg !1548
  %conv37 = zext i16 %47 to i32, !dbg !1546
  %cmp38 = icmp ne i32 %conv37, 19, !dbg !1549
  br i1 %cmp38, label %land.lhs.true40, label %if.end47, !dbg !1550

land.lhs.true40:                                  ; preds = %land.lhs.true
  %48 = load ptr, ptr %op.addr, align 8, !dbg !1551
  %parent41 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %48, i32 0, i32 0, !dbg !1552
  %49 = load ptr, ptr %parent41, align 8, !dbg !1552
  %aml_opcode42 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %49, i32 0, i32 3, !dbg !1553
  %50 = load i16, ptr %aml_opcode42, align 2, !dbg !1553
  %conv43 = zext i16 %50 to i32, !dbg !1551
  %cmp44 = icmp ne i32 %conv43, 8, !dbg !1554
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !1555

if.then46:                                        ; preds = %land.lhs.true40, %if.then29
  %51 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1556
  %52 = load ptr, ptr %walk_state.addr, align 8, !dbg !1558
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %52, i32 0, i32 43, !dbg !1559
  store ptr %51, ptr %result_obj, align 8, !dbg !1560
  br label %if.end47, !dbg !1561

if.end47:                                         ; preds = %if.then46, %land.lhs.true40, %land.lhs.true, %lor.lhs.false
  br label %if.end48, !dbg !1562

if.end48:                                         ; preds = %if.end47, %sw.epilog
  %53 = load i32, ptr %status, align 4, !dbg !1563
  store i32 %53, ptr %retval, align 4, !dbg !1563
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1563

cleanup:                                          ; preds = %if.end48, %sw.default, %if.then21, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #4, !dbg !1564
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg_desc) #4, !dbg !1564
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1564
  %54 = load i32, ptr %retval, align 4, !dbg !1564
  ret i32 %54, !dbg !1564
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1565 dso_local i32 @acpi_ds_create_operand(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1568 dso_local i32 @acpi_ds_obj_stack_pop(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1571 dso_local i32 @acpi_ds_build_internal_buffer_obj(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1574 dso_local i32 @acpi_ds_build_internal_package_obj(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_eval_bank_field_operands(ptr noundef %walk_state, ptr noundef %op) #0 align 16 !dbg !1575 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %operand_desc = alloca ptr, align 8
  %node = alloca ptr, align 8
  %next_op = alloca ptr, align 8
  %arg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1577, metadata !DIExpression()), !dbg !1585
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1578, metadata !DIExpression()), !dbg !1586
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1587
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1579, metadata !DIExpression()), !dbg !1588
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !1589
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1580, metadata !DIExpression()), !dbg !1590
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand_desc) #4, !dbg !1591
  call void @llvm.dbg.declare(metadata ptr %operand_desc, metadata !1581, metadata !DIExpression()), !dbg !1592
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !1593
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1582, metadata !DIExpression()), !dbg !1594
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_op) #4, !dbg !1595
  call void @llvm.dbg.declare(metadata ptr %next_op, metadata !1583, metadata !DIExpression()), !dbg !1596
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #4, !dbg !1597
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !1584, metadata !DIExpression()), !dbg !1598
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1599
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 7, !dbg !1600
  %1 = load ptr, ptr %value, align 8, !dbg !1601
  store ptr %1, ptr %next_op, align 8, !dbg !1602
  %2 = load ptr, ptr %next_op, align 8, !dbg !1603
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %2, i32 0, i32 5, !dbg !1604
  %3 = load ptr, ptr %next, align 8, !dbg !1604
  store ptr %3, ptr %next_op, align 8, !dbg !1605
  %4 = load ptr, ptr %next_op, align 8, !dbg !1606
  %next1 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %4, i32 0, i32 5, !dbg !1607
  %5 = load ptr, ptr %next1, align 8, !dbg !1607
  store ptr %5, ptr %next_op, align 8, !dbg !1608
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !1609
  %operand_index = getelementptr inbounds %struct.acpi_walk_state, ptr %6, i32 0, i32 6, !dbg !1610
  store i8 0, ptr %operand_index, align 2, !dbg !1611
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !1612
  %8 = load ptr, ptr %next_op, align 8, !dbg !1613
  %call = call i32 @acpi_ds_create_operand(ptr noundef %7, ptr noundef %8, i32 noundef 0) #5, !dbg !1614
  store i32 %call, ptr %status, align 4, !dbg !1615
  %9 = load i32, ptr %status, align 4, !dbg !1616
  %tobool = icmp ne i32 %9, 0, !dbg !1616
  br i1 %tobool, label %if.then, label %if.end, !dbg !1618

if.then:                                          ; preds = %entry
  %10 = load i32, ptr %status, align 4, !dbg !1619
  store i32 %10, ptr %retval, align 4, !dbg !1619
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1619

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !1621
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 28, !dbg !1622
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !1621
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !1623
  %call2 = call i32 @acpi_ex_resolve_to_value(ptr noundef %arrayidx, ptr noundef %12) #5, !dbg !1624
  store i32 %call2, ptr %status, align 4, !dbg !1625
  %13 = load i32, ptr %status, align 4, !dbg !1626
  %tobool3 = icmp ne i32 %13, 0, !dbg !1626
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1628

if.then4:                                         ; preds = %if.end
  %14 = load i32, ptr %status, align 4, !dbg !1629
  store i32 %14, ptr %retval, align 4, !dbg !1629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1629

if.end5:                                          ; preds = %if.end
  %15 = load ptr, ptr %walk_state.addr, align 8, !dbg !1631
  %operands6 = getelementptr inbounds %struct.acpi_walk_state, ptr %15, i32 0, i32 28, !dbg !1632
  %arrayidx7 = getelementptr [9 x ptr], ptr %operands6, i64 0, i64 0, !dbg !1631
  %16 = load ptr, ptr %arrayidx7, align 8, !dbg !1631
  store ptr %16, ptr %operand_desc, align 8, !dbg !1633
  %17 = load ptr, ptr %op.addr, align 8, !dbg !1634
  %call8 = call ptr @acpi_ps_get_arg(ptr noundef %17, i32 noundef 4) #5, !dbg !1635
  store ptr %call8, ptr %arg, align 8, !dbg !1636
  br label %while.cond, !dbg !1637

while.cond:                                       ; preds = %if.end20, %if.end5
  %18 = load ptr, ptr %arg, align 8, !dbg !1638
  %tobool9 = icmp ne ptr %18, null, !dbg !1637
  br i1 %tobool9, label %while.body, label %while.end, !dbg !1637

while.body:                                       ; preds = %while.cond
  %19 = load ptr, ptr %arg, align 8, !dbg !1639
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %19, i32 0, i32 3, !dbg !1642
  %20 = load i16, ptr %aml_opcode, align 2, !dbg !1642
  %conv = zext i16 %20 to i32, !dbg !1639
  %cmp = icmp eq i32 %conv, 48, !dbg !1643
  br i1 %cmp, label %if.then11, label %if.end20, !dbg !1644

if.then11:                                        ; preds = %while.body
  %21 = load ptr, ptr %arg, align 8, !dbg !1645
  %node12 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %21, i32 0, i32 6, !dbg !1647
  %22 = load ptr, ptr %node12, align 8, !dbg !1647
  store ptr %22, ptr %node, align 8, !dbg !1648
  %23 = load ptr, ptr %node, align 8, !dbg !1649
  %call13 = call ptr @acpi_ns_get_attached_object(ptr noundef %23) #5, !dbg !1650
  store ptr %call13, ptr %obj_desc, align 8, !dbg !1651
  %24 = load ptr, ptr %obj_desc, align 8, !dbg !1652
  %tobool14 = icmp ne ptr %24, null, !dbg !1652
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !1654

if.then15:                                        ; preds = %if.then11
  store i32 6, ptr %retval, align 4, !dbg !1655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1655

if.end16:                                         ; preds = %if.then11
  %25 = load ptr, ptr %operand_desc, align 8, !dbg !1657
  %value17 = getelementptr inbounds %struct.acpi_object_integer, ptr %25, i32 0, i32 6, !dbg !1658
  %26 = load i64, ptr %value17, align 8, !dbg !1658
  %conv18 = trunc i64 %26 to i32, !dbg !1659
  %27 = load ptr, ptr %obj_desc, align 8, !dbg !1660
  %value19 = getelementptr inbounds %struct.acpi_object_bank_field, ptr %27, i32 0, i32 11, !dbg !1661
  store i32 %conv18, ptr %value19, align 8, !dbg !1662
  br label %if.end20, !dbg !1663

if.end20:                                         ; preds = %if.end16, %while.body
  %28 = load ptr, ptr %arg, align 8, !dbg !1664
  %next21 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %28, i32 0, i32 5, !dbg !1665
  %29 = load ptr, ptr %next21, align 8, !dbg !1665
  store ptr %29, ptr %arg, align 8, !dbg !1666
  br label %while.cond, !dbg !1637, !llvm.loop !1667

while.end:                                        ; preds = %while.cond
  %30 = load ptr, ptr %operand_desc, align 8, !dbg !1671
  call void @acpi_ut_remove_reference(ptr noundef %30) #5, !dbg !1672
  %31 = load i32, ptr %status, align 4, !dbg !1673
  store i32 %31, ptr %retval, align 4, !dbg !1673
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1673

cleanup:                                          ; preds = %while.end, %if.then15, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #4, !dbg !1674
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_op) #4, !dbg !1674
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1674
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand_desc) #4, !dbg !1674
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !1674
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1674
  %32 = load i32, ptr %retval, align 4, !dbg !1674
  ret i32 %32, !dbg !1674
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1675 dso_local i32 @acpi_ex_resolve_to_value(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1678 dso_local ptr @acpi_ps_get_arg(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1681 dso_local ptr @acpi_ut_get_object_type_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1684 dso_local ptr @acpi_ut_get_descriptor_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1687 dso_local void @acpi_bios_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1688 dso_local void @acpi_bios_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1691 dso_local ptr @acpi_ut_get_node_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1692 dso_local i32 @acpi_ex_prep_common_field_object(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!852, !853, !854, !855, !856, !857, !858, !859}
!llvm.ident = !{!860}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 21, type: !850, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.dsopcode.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22dsopcode\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/dsopcode.ll drivers/acpi/acpica/dsopcode.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !15, globals: !807, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dsopcode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "db68f63d742b32988f851a4edcb03411")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 404, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/amlcode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d3d08f7f5f071008a4fa29b292f7f44b")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "AML_FIELD_ACCESS_ANY", value: 0)
!10 = !DIEnumerator(name: "AML_FIELD_ACCESS_BYTE", value: 1)
!11 = !DIEnumerator(name: "AML_FIELD_ACCESS_WORD", value: 2)
!12 = !DIEnumerator(name: "AML_FIELD_ACCESS_DWORD", value: 3)
!13 = !DIEnumerator(name: "AML_FIELD_ACCESS_QWORD", value: 4)
!14 = !DIEnumerator(name: "AML_FIELD_ACCESS_BUFFER", value: 5)
!15 = !{!16, !22, !25, !18, !29, !33, !36, !44}
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !17, line: 421, baseType: !18)
!17 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !19, line: 21, baseType: !20)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !21, line: 27, baseType: !7)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !19, line: 19, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !21, line: 24, baseType: !24)
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !17, line: 814, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !19, line: 17, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !21, line: 21, baseType: !28)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !17, line: 129, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !19, line: 23, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !21, line: 31, baseType: !32)
!32 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !34, line: 42, baseType: !35)
!34 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !38, line: 434, size: 1600, elements: !39)
!38 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!39 = !{!40, !46, !805, !806}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !37, file: !38, line: 435, baseType: !41, size: 128)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !38, line: 429, size: 128, elements: !42)
!42 = !{!43, !45}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !41, file: !38, line: 430, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !41, file: !38, line: 431, baseType: !26, size: 8, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !37, file: !38, line: 436, baseType: !47, size: 576)
!47 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !38, line: 369, size: 576, elements: !48)
!48 = !{!49, !58, !71, !83, !119, !133, !142, !455, !472, !487, !500, !578, !590, !604, !614, !632, !654, !673, !692, !711, !724, !751, !768, !781, !795, !804}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !47, file: !38, line: 370, baseType: !50, size: 128)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !38, line: 73, size: 128, elements: !51)
!51 = !{!52, !54, !55, !56, !57}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !50, file: !38, line: 74, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !50, file: !38, line: 74, baseType: !26, size: 8, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !38, line: 74, baseType: !26, size: 8, offset: 72)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !50, file: !38, line: 74, baseType: !22, size: 16, offset: 80)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !38, line: 74, baseType: !26, size: 8, offset: 96)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !47, file: !38, line: 371, baseType: !59, size: 192)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !38, line: 76, size: 192, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !70}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !59, file: !38, line: 77, baseType: !53, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !59, file: !38, line: 77, baseType: !26, size: 8, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !59, file: !38, line: 77, baseType: !26, size: 8, offset: 72)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !59, file: !38, line: 77, baseType: !22, size: 16, offset: 80)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !59, file: !38, line: 77, baseType: !26, size: 8, offset: 96)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !59, file: !38, line: 77, baseType: !67, size: 24, offset: 104)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 3)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !59, file: !38, line: 78, baseType: !30, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !47, file: !38, line: 372, baseType: !72, size: 256)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !38, line: 93, size: 256, elements: !73)
!73 = !{!74, !75, !76, !77, !78, !79, !82}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !72, file: !38, line: 94, baseType: !53, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !72, file: !38, line: 94, baseType: !26, size: 8, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !38, line: 94, baseType: !26, size: 8, offset: 72)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !72, file: !38, line: 94, baseType: !22, size: 16, offset: 80)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !72, file: !38, line: 94, baseType: !26, size: 8, offset: 96)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !72, file: !38, line: 94, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !72, file: !38, line: 94, baseType: !18, size: 32, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !47, file: !38, line: 373, baseType: !84, size: 384)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !38, line: 97, size: 384, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91, !93, !94, !95, !96}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !84, file: !38, line: 98, baseType: !53, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !84, file: !38, line: 98, baseType: !26, size: 8, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !38, line: 98, baseType: !26, size: 8, offset: 72)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !84, file: !38, line: 98, baseType: !22, size: 16, offset: 80)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !38, line: 98, baseType: !26, size: 8, offset: 96)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !84, file: !38, line: 98, baseType: !92, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !84, file: !38, line: 98, baseType: !18, size: 32, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !84, file: !38, line: 99, baseType: !18, size: 32, offset: 224)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !84, file: !38, line: 100, baseType: !92, size: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !84, file: !38, line: 101, baseType: !97, size: 64, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !99, line: 133, size: 384, elements: !100)
!99 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!100 = !{!101, !102, !103, !104, !105, !114, !115, !116, !117}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !98, file: !99, line: 134, baseType: !53, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !98, file: !99, line: 135, baseType: !26, size: 8, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !99, line: 136, baseType: !26, size: 8, offset: 72)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !98, file: !99, line: 137, baseType: !22, size: 16, offset: 80)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !99, line: 138, baseType: !106, size: 32, offset: 96)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !107, line: 328, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !106, file: !107, line: 329, baseType: !18, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !106, file: !107, line: 330, baseType: !111, size: 32)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 32, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 4)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !98, file: !99, line: 139, baseType: !97, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !98, file: !99, line: 140, baseType: !97, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !98, file: !99, line: 141, baseType: !97, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !98, file: !99, line: 142, baseType: !118, size: 16, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !17, line: 445, baseType: !22)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !47, file: !38, line: 374, baseType: !120, size: 384)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !38, line: 104, size: 384, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !130, !131, !132}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !120, file: !38, line: 105, baseType: !53, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !120, file: !38, line: 105, baseType: !26, size: 8, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !38, line: 105, baseType: !26, size: 8, offset: 72)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !120, file: !38, line: 105, baseType: !22, size: 16, offset: 80)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !38, line: 105, baseType: !26, size: 8, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !120, file: !38, line: 105, baseType: !97, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !120, file: !38, line: 106, baseType: !129, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !120, file: !38, line: 107, baseType: !92, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !120, file: !38, line: 108, baseType: !18, size: 32, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !120, file: !38, line: 109, baseType: !18, size: 32, offset: 352)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !47, file: !38, line: 375, baseType: !134, size: 192)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !38, line: 118, size: 192, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !134, file: !38, line: 119, baseType: !53, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !134, file: !38, line: 119, baseType: !26, size: 8, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !38, line: 119, baseType: !26, size: 8, offset: 72)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !134, file: !38, line: 119, baseType: !22, size: 16, offset: 80)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !38, line: 119, baseType: !26, size: 8, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !134, file: !38, line: 119, baseType: !44, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !47, file: !38, line: 376, baseType: !143, size: 448)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !38, line: 144, size: 448, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !452, !453, !454}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !143, file: !38, line: 145, baseType: !53, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !143, file: !38, line: 145, baseType: !26, size: 8, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !38, line: 145, baseType: !26, size: 8, offset: 72)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !143, file: !38, line: 145, baseType: !22, size: 16, offset: 80)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !143, file: !38, line: 145, baseType: !26, size: 8, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !143, file: !38, line: 145, baseType: !26, size: 8, offset: 104)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !143, file: !38, line: 146, baseType: !26, size: 8, offset: 112)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !143, file: !38, line: 147, baseType: !26, size: 8, offset: 120)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !143, file: !38, line: 148, baseType: !53, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !143, file: !38, line: 149, baseType: !53, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !143, file: !38, line: 150, baseType: !92, size: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !143, file: !38, line: 154, baseType: !157, size: 64, offset: 320)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !38, line: 151, size: 64, elements: !158)
!158 = !{!159, !451}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !157, file: !38, line: 152, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !99, line: 248, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!16, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !166, line: 37, size: 9024, elements: !167)
!166 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !397, !398, !399, !400, !401, !405, !407, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !434, !435, !436, !437, !438, !439, !440, !441, !443, !449}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !165, file: !166, line: 38, baseType: !164, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !165, file: !166, line: 39, baseType: !26, size: 8, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !165, file: !166, line: 40, baseType: !26, size: 8, offset: 72)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !165, file: !166, line: 41, baseType: !22, size: 16, offset: 80)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !165, file: !166, line: 42, baseType: !26, size: 8, offset: 96)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !165, file: !166, line: 43, baseType: !26, size: 8, offset: 104)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !165, file: !166, line: 44, baseType: !26, size: 8, offset: 112)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !165, file: !166, line: 45, baseType: !118, size: 16, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !165, file: !166, line: 46, baseType: !26, size: 8, offset: 144)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !165, file: !166, line: 47, baseType: !26, size: 8, offset: 152)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !165, file: !166, line: 48, baseType: !26, size: 8, offset: 160)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !165, file: !166, line: 49, baseType: !26, size: 8, offset: 168)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !165, file: !166, line: 50, baseType: !26, size: 8, offset: 176)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !165, file: !166, line: 51, baseType: !26, size: 8, offset: 184)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !165, file: !166, line: 52, baseType: !26, size: 8, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !165, file: !166, line: 53, baseType: !26, size: 8, offset: 200)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !165, file: !166, line: 54, baseType: !92, size: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !165, file: !166, line: 55, baseType: !18, size: 32, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !165, file: !166, line: 56, baseType: !18, size: 32, offset: 352)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !165, file: !166, line: 57, baseType: !18, size: 32, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !165, file: !166, line: 58, baseType: !18, size: 32, offset: 416)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !165, file: !166, line: 60, baseType: !190, size: 640, offset: 448)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !99, line: 909, size: 640, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !278, !279, !395, !396}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !190, file: !99, line: 910, baseType: !92, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !190, file: !99, line: 911, baseType: !92, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !190, file: !99, line: 912, baseType: !92, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !190, file: !99, line: 913, baseType: !92, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !190, file: !99, line: 914, baseType: !92, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !190, file: !99, line: 915, baseType: !198, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !99, line: 891, size: 1600, elements: !200)
!200 = !{!201, !221, !237}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !199, file: !99, line: 892, baseType: !202, size: 448)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !99, line: 844, size: 448, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !220}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !202, file: !99, line: 845, baseType: !198, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !202, file: !99, line: 845, baseType: !26, size: 8, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !99, line: 845, baseType: !26, size: 8, offset: 72)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !202, file: !99, line: 845, baseType: !22, size: 16, offset: 80)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !202, file: !99, line: 845, baseType: !92, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !99, line: 845, baseType: !198, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !202, file: !99, line: 845, baseType: !97, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !202, file: !99, line: 845, baseType: !212, size: 64, offset: 320)
!212 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !99, line: 732, size: 64, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !212, file: !99, line: 733, baseType: !30, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !212, file: !99, line: 734, baseType: !18, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !212, file: !99, line: 735, baseType: !80, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !212, file: !99, line: 736, baseType: !92, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !99, line: 737, baseType: !80, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !212, file: !99, line: 738, baseType: !198, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !202, file: !99, line: 845, baseType: !26, size: 8, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !199, file: !99, line: 893, baseType: !222, size: 640)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !99, line: 851, size: 640, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !222, file: !99, line: 852, baseType: !198, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !222, file: !99, line: 852, baseType: !26, size: 8, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !222, file: !99, line: 852, baseType: !26, size: 8, offset: 72)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !222, file: !99, line: 852, baseType: !22, size: 16, offset: 80)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !222, file: !99, line: 852, baseType: !92, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !99, line: 852, baseType: !198, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !222, file: !99, line: 852, baseType: !97, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !222, file: !99, line: 852, baseType: !212, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !222, file: !99, line: 852, baseType: !26, size: 8, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !222, file: !99, line: 852, baseType: !80, size: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !222, file: !99, line: 853, baseType: !92, size: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !222, file: !99, line: 854, baseType: !18, size: 32, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !222, file: !99, line: 855, baseType: !18, size: 32, offset: 608)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !199, file: !99, line: 894, baseType: !238, size: 1600)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !99, line: 862, size: 1600, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !238, file: !99, line: 863, baseType: !198, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !238, file: !99, line: 863, baseType: !26, size: 8, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !99, line: 863, baseType: !26, size: 8, offset: 72)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !238, file: !99, line: 863, baseType: !22, size: 16, offset: 80)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !238, file: !99, line: 863, baseType: !92, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !238, file: !99, line: 863, baseType: !198, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !238, file: !99, line: 863, baseType: !97, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !238, file: !99, line: 863, baseType: !212, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !238, file: !99, line: 863, baseType: !26, size: 8, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !238, file: !99, line: 863, baseType: !198, size: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !238, file: !99, line: 864, baseType: !198, size: 64, offset: 512)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !238, file: !99, line: 865, baseType: !80, size: 64, offset: 576)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !238, file: !99, line: 866, baseType: !26, size: 8, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !238, file: !99, line: 867, baseType: !80, size: 64, offset: 704)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !238, file: !99, line: 868, baseType: !80, size: 64, offset: 768)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !238, file: !99, line: 869, baseType: !80, size: 64, offset: 832)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !238, file: !99, line: 870, baseType: !111, size: 32, offset: 896)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !238, file: !99, line: 871, baseType: !18, size: 32, offset: 928)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !238, file: !99, line: 872, baseType: !18, size: 32, offset: 960)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !238, file: !99, line: 873, baseType: !18, size: 32, offset: 992)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !238, file: !99, line: 874, baseType: !18, size: 32, offset: 1024)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !238, file: !99, line: 875, baseType: !18, size: 32, offset: 1056)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !238, file: !99, line: 876, baseType: !18, size: 32, offset: 1088)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !238, file: !99, line: 877, baseType: !18, size: 32, offset: 1120)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !238, file: !99, line: 878, baseType: !18, size: 32, offset: 1152)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !238, file: !99, line: 879, baseType: !18, size: 32, offset: 1184)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !238, file: !99, line: 880, baseType: !18, size: 32, offset: 1216)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !238, file: !99, line: 881, baseType: !18, size: 32, offset: 1248)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !238, file: !99, line: 882, baseType: !18, size: 32, offset: 1280)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !238, file: !99, line: 883, baseType: !18, size: 32, offset: 1312)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !238, file: !99, line: 884, baseType: !22, size: 16, offset: 1344)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !238, file: !99, line: 885, baseType: !26, size: 8, offset: 1360)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !238, file: !99, line: 886, baseType: !26, size: 8, offset: 1368)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !238, file: !99, line: 887, baseType: !26, size: 8, offset: 1376)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !238, file: !99, line: 888, baseType: !275, size: 160, offset: 1384)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 160, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 20)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !190, file: !99, line: 916, baseType: !97, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !190, file: !99, line: 917, baseType: !280, size: 64, offset: 448)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !99, line: 679, size: 640, elements: !282)
!282 = !{!283, !291, !304, !313, !322, !335, !349, !361, !373}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !281, file: !99, line: 680, baseType: !284, size: 128)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !99, line: 575, size: 128, elements: !285)
!285 = !{!286, !287, !288, !289, !290}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !284, file: !99, line: 576, baseType: !44, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !284, file: !99, line: 576, baseType: !26, size: 8, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !284, file: !99, line: 576, baseType: !26, size: 8, offset: 72)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !284, file: !99, line: 576, baseType: !22, size: 16, offset: 80)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !284, file: !99, line: 576, baseType: !22, size: 16, offset: 96)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !281, file: !99, line: 681, baseType: !292, size: 384)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !99, line: 604, size: 384, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299, !300, !301, !302, !303}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !99, line: 605, baseType: !44, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !292, file: !99, line: 605, baseType: !26, size: 8, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !99, line: 605, baseType: !26, size: 8, offset: 72)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !292, file: !99, line: 605, baseType: !22, size: 16, offset: 80)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !292, file: !99, line: 605, baseType: !22, size: 16, offset: 96)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !292, file: !99, line: 606, baseType: !22, size: 16, offset: 112)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !292, file: !99, line: 607, baseType: !198, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !292, file: !99, line: 608, baseType: !92, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !292, file: !99, line: 609, baseType: !92, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !292, file: !99, line: 610, baseType: !30, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !281, file: !99, line: 682, baseType: !305, size: 192)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !99, line: 582, size: 192, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !99, line: 583, baseType: !44, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !305, file: !99, line: 583, baseType: !26, size: 8, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !99, line: 583, baseType: !26, size: 8, offset: 72)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !99, line: 583, baseType: !22, size: 16, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !305, file: !99, line: 583, baseType: !22, size: 16, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !305, file: !99, line: 584, baseType: !53, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !281, file: !99, line: 683, baseType: !314, size: 192)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !99, line: 616, size: 192, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !99, line: 617, baseType: !44, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !314, file: !99, line: 617, baseType: !26, size: 8, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !99, line: 617, baseType: !26, size: 8, offset: 72)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !314, file: !99, line: 617, baseType: !22, size: 16, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !99, line: 617, baseType: !22, size: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !314, file: !99, line: 618, baseType: !97, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !281, file: !99, line: 684, baseType: !323, size: 448)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !99, line: 621, size: 448, elements: !324)
!324 = !{!325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !99, line: 622, baseType: !44, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !323, file: !99, line: 622, baseType: !26, size: 8, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !323, file: !99, line: 622, baseType: !26, size: 8, offset: 72)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !323, file: !99, line: 622, baseType: !22, size: 16, offset: 80)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !323, file: !99, line: 622, baseType: !22, size: 16, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !323, file: !99, line: 623, baseType: !18, size: 32, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !323, file: !99, line: 624, baseType: !198, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !323, file: !99, line: 625, baseType: !92, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !323, file: !99, line: 626, baseType: !92, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !323, file: !99, line: 627, baseType: !18, size: 32, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !281, file: !99, line: 685, baseType: !336, size: 512)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !99, line: 590, size: 512, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !99, line: 591, baseType: !44, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !99, line: 591, baseType: !26, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !99, line: 591, baseType: !26, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !336, file: !99, line: 591, baseType: !22, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !99, line: 591, baseType: !22, size: 16, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !336, file: !99, line: 592, baseType: !18, size: 32, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !336, file: !99, line: 593, baseType: !53, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !336, file: !99, line: 594, baseType: !53, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !336, file: !99, line: 595, baseType: !164, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !336, file: !99, line: 596, baseType: !44, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !336, file: !99, line: 597, baseType: !18, size: 32, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !281, file: !99, line: 686, baseType: !350, size: 320)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !99, line: 634, size: 320, elements: !351)
!351 = !{!352, !353, !354, !355, !356, !357, !358, !359, !360}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !99, line: 635, baseType: !44, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !350, file: !99, line: 635, baseType: !26, size: 8, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !350, file: !99, line: 635, baseType: !26, size: 8, offset: 72)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !350, file: !99, line: 635, baseType: !22, size: 16, offset: 80)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !350, file: !99, line: 635, baseType: !22, size: 16, offset: 96)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !350, file: !99, line: 636, baseType: !26, size: 8, offset: 112)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !350, file: !99, line: 637, baseType: !164, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !350, file: !99, line: 638, baseType: !53, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !350, file: !99, line: 639, baseType: !30, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !281, file: !99, line: 687, baseType: !362, size: 640)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !99, line: 646, size: 640, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !369}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !99, line: 647, baseType: !44, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !362, file: !99, line: 647, baseType: !26, size: 8, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !362, file: !99, line: 647, baseType: !26, size: 8, offset: 72)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !362, file: !99, line: 647, baseType: !22, size: 16, offset: 80)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !362, file: !99, line: 647, baseType: !22, size: 16, offset: 96)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !362, file: !99, line: 648, baseType: !370, size: 512, offset: 128)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 512, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 8)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !281, file: !99, line: 688, baseType: !374, size: 320)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !99, line: 669, size: 320, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383, !384}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !99, line: 670, baseType: !44, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !374, file: !99, line: 670, baseType: !26, size: 8, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !374, file: !99, line: 670, baseType: !26, size: 8, offset: 72)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !374, file: !99, line: 670, baseType: !22, size: 16, offset: 80)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !374, file: !99, line: 670, baseType: !22, size: 16, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !374, file: !99, line: 671, baseType: !26, size: 8, offset: 112)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !374, file: !99, line: 672, baseType: !97, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !374, file: !99, line: 673, baseType: !53, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !374, file: !99, line: 674, baseType: !385, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !99, line: 660, size: 128, elements: !387)
!387 = !{!388, !394}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !386, file: !99, line: 661, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !17, line: 1061, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393, !18, !44}
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !17, line: 424, baseType: !44)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !386, file: !99, line: 662, baseType: !44, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !190, file: !99, line: 918, baseType: !198, size: 64, offset: 512)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !190, file: !99, line: 919, baseType: !18, size: 32, offset: 576)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !165, file: !166, line: 61, baseType: !18, size: 32, offset: 1088)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !165, file: !166, line: 62, baseType: !18, size: 32, offset: 1120)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !165, file: !166, line: 63, baseType: !22, size: 16, offset: 1152)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !165, file: !166, line: 64, baseType: !26, size: 8, offset: 1168)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !165, file: !166, line: 66, baseType: !402, size: 2688, offset: 1216)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 2688, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 7)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !165, file: !166, line: 67, baseType: !406, size: 3072, offset: 3904)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 3072, elements: !371)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !165, file: !166, line: 68, baseType: !408, size: 576, offset: 6976)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 576, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 9)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !165, file: !166, line: 69, baseType: !129, size: 64, offset: 7552)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !165, file: !166, line: 71, baseType: !92, size: 64, offset: 7616)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !165, file: !166, line: 72, baseType: !129, size: 64, offset: 7680)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !165, file: !166, line: 73, baseType: !280, size: 64, offset: 7744)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !165, file: !166, line: 74, baseType: !97, size: 64, offset: 7808)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !165, file: !166, line: 75, baseType: !53, size: 64, offset: 7872)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !165, file: !166, line: 76, baseType: !97, size: 64, offset: 7936)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !165, file: !166, line: 77, baseType: !198, size: 64, offset: 8000)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !165, file: !166, line: 78, baseType: !53, size: 64, offset: 8064)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !165, file: !166, line: 79, baseType: !97, size: 64, offset: 8128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !165, file: !166, line: 80, baseType: !80, size: 64, offset: 8192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !165, file: !166, line: 81, baseType: !198, size: 64, offset: 8256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !165, file: !166, line: 82, baseType: !424, size: 64, offset: 8320)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !99, line: 718, size: 128, elements: !427)
!427 = !{!428, !429, !430, !431, !432, !433}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !426, file: !99, line: 722, baseType: !18, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !426, file: !99, line: 723, baseType: !18, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !99, line: 724, baseType: !22, size: 16, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !426, file: !99, line: 725, baseType: !26, size: 8, offset: 80)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !426, file: !99, line: 726, baseType: !26, size: 8, offset: 88)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !426, file: !99, line: 727, baseType: !26, size: 8, offset: 96)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !165, file: !166, line: 83, baseType: !198, size: 64, offset: 8384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !165, file: !166, line: 84, baseType: !53, size: 64, offset: 8448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !165, file: !166, line: 85, baseType: !280, size: 64, offset: 8512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !165, file: !166, line: 86, baseType: !53, size: 64, offset: 8576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !165, file: !166, line: 87, baseType: !280, size: 64, offset: 8640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !165, file: !166, line: 88, baseType: !198, size: 64, offset: 8704)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !165, file: !166, line: 89, baseType: !198, size: 64, offset: 8768)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !165, file: !166, line: 90, baseType: !442, size: 64, offset: 8832)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !165, file: !166, line: 91, baseType: !444, size: 64, offset: 8896)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !99, line: 652, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!16, !164, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !165, file: !166, line: 92, baseType: !450, size: 64, offset: 8960)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !99, line: 656, baseType: !161)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !157, file: !38, line: 153, baseType: !53, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !143, file: !38, line: 156, baseType: !18, size: 32, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !143, file: !38, line: 157, baseType: !118, size: 16, offset: 416)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !143, file: !38, line: 158, baseType: !26, size: 8, offset: 432)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !47, file: !38, line: 377, baseType: !456, size: 576)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !38, line: 122, size: 576, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !456, file: !38, line: 123, baseType: !53, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !456, file: !38, line: 123, baseType: !26, size: 8, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !456, file: !38, line: 123, baseType: !26, size: 8, offset: 72)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !456, file: !38, line: 123, baseType: !22, size: 16, offset: 80)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !38, line: 123, baseType: !26, size: 8, offset: 96)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !456, file: !38, line: 123, baseType: !26, size: 8, offset: 104)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !456, file: !38, line: 124, baseType: !22, size: 16, offset: 112)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !456, file: !38, line: 125, baseType: !44, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !456, file: !38, line: 126, baseType: !30, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !456, file: !38, line: 127, baseType: !442, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !456, file: !38, line: 128, baseType: !53, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !456, file: !38, line: 129, baseType: !53, size: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !456, file: !38, line: 130, baseType: !97, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !456, file: !38, line: 131, baseType: !26, size: 8, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !47, file: !38, line: 378, baseType: !473, size: 512)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !38, line: 134, size: 512, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !473, file: !38, line: 135, baseType: !53, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !473, file: !38, line: 135, baseType: !26, size: 8, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !473, file: !38, line: 135, baseType: !26, size: 8, offset: 72)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !473, file: !38, line: 135, baseType: !22, size: 16, offset: 80)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !473, file: !38, line: 135, baseType: !26, size: 8, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !473, file: !38, line: 135, baseType: !26, size: 8, offset: 104)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !473, file: !38, line: 136, baseType: !97, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !473, file: !38, line: 137, baseType: !53, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !473, file: !38, line: 138, baseType: !53, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !473, file: !38, line: 139, baseType: !29, size: 64, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !473, file: !38, line: 140, baseType: !18, size: 32, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !473, file: !38, line: 141, baseType: !44, size: 64, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !47, file: !38, line: 379, baseType: !488, size: 320)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !38, line: 185, size: 320, elements: !489)
!489 = !{!490, !491, !492, !493, !494, !495, !499}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !488, file: !38, line: 186, baseType: !53, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !488, file: !38, line: 186, baseType: !26, size: 8, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !488, file: !38, line: 186, baseType: !26, size: 8, offset: 72)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !488, file: !38, line: 186, baseType: !22, size: 16, offset: 80)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !488, file: !38, line: 186, baseType: !26, size: 8, offset: 96)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !488, file: !38, line: 186, baseType: !496, size: 128, offset: 128)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 128, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 2)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !488, file: !38, line: 186, baseType: !53, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !47, file: !38, line: 380, baseType: !501, size: 384)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !38, line: 188, size: 384, elements: !502)
!502 = !{!503, !504, !505, !506, !507, !508, !509, !510}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !501, file: !38, line: 189, baseType: !53, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !501, file: !38, line: 189, baseType: !26, size: 8, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !501, file: !38, line: 189, baseType: !26, size: 8, offset: 72)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !501, file: !38, line: 189, baseType: !22, size: 16, offset: 80)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !501, file: !38, line: 189, baseType: !26, size: 8, offset: 96)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !501, file: !38, line: 190, baseType: !496, size: 128, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !501, file: !38, line: 190, baseType: !53, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !501, file: !38, line: 190, baseType: !511, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !99, line: 480, size: 576, elements: !513)
!513 = !{!514, !515, !516, !517, !525, !540, !572, !573, !574, !575, !576, !577}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !512, file: !99, line: 481, baseType: !97, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !512, file: !99, line: 482, baseType: !511, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !512, file: !99, line: 483, baseType: !511, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !512, file: !99, line: 484, baseType: !518, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !99, line: 497, size: 256, elements: !520)
!520 = !{!521, !522, !523, !524}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !519, file: !99, line: 498, baseType: !518, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !519, file: !99, line: 499, baseType: !518, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !519, file: !99, line: 500, baseType: !511, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !519, file: !99, line: 501, baseType: !18, size: 32, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !512, file: !99, line: 485, baseType: !526, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !99, line: 466, size: 320, elements: !528)
!528 = !{!529, !534, !535, !536, !537, !538, !539}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !527, file: !99, line: 467, baseType: !530, size: 128)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !99, line: 459, size: 128, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !530, file: !99, line: 460, baseType: !26, size: 8)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !530, file: !99, line: 461, baseType: !30, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !527, file: !99, line: 468, baseType: !530, size: 128, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !527, file: !99, line: 469, baseType: !22, size: 16, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !527, file: !99, line: 470, baseType: !26, size: 8, offset: 272)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !527, file: !99, line: 471, baseType: !26, size: 8, offset: 280)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !527, file: !99, line: 472, baseType: !26, size: 8, offset: 288)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !527, file: !99, line: 473, baseType: !26, size: 8, offset: 296)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !512, file: !99, line: 486, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !99, line: 448, size: 192, elements: !543)
!543 = !{!544, !567, !568, !569, !570, !571}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !542, file: !99, line: 449, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !99, line: 438, size: 64, elements: !546)
!546 = !{!547, !548, !561}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !545, file: !99, line: 439, baseType: !97, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !545, file: !99, line: 440, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !99, line: 419, size: 256, elements: !551)
!551 = !{!552, !557, !558, !559, !560}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !550, file: !99, line: 420, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !17, line: 1058, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!18, !393, !18, !44}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !550, file: !99, line: 421, baseType: !44, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !550, file: !99, line: 422, baseType: !97, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !550, file: !99, line: 423, baseType: !26, size: 8, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !550, file: !99, line: 424, baseType: !26, size: 8, offset: 200)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !545, file: !99, line: 441, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !99, line: 429, size: 128, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !563, file: !99, line: 430, baseType: !97, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !563, file: !99, line: 431, baseType: !562, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !542, file: !99, line: 450, baseType: !526, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !542, file: !99, line: 451, baseType: !26, size: 8, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !542, file: !99, line: 452, baseType: !26, size: 8, offset: 136)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !542, file: !99, line: 453, baseType: !26, size: 8, offset: 144)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !542, file: !99, line: 454, baseType: !26, size: 8, offset: 152)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !512, file: !99, line: 487, baseType: !30, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !512, file: !99, line: 488, baseType: !18, size: 32, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !512, file: !99, line: 489, baseType: !22, size: 16, offset: 480)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !512, file: !99, line: 490, baseType: !22, size: 16, offset: 496)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !512, file: !99, line: 491, baseType: !26, size: 8, offset: 512)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !512, file: !99, line: 492, baseType: !26, size: 8, offset: 520)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !47, file: !38, line: 381, baseType: !579, size: 384)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !38, line: 193, size: 384, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !579, file: !38, line: 194, baseType: !53, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !579, file: !38, line: 194, baseType: !26, size: 8, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !38, line: 194, baseType: !26, size: 8, offset: 72)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !579, file: !38, line: 194, baseType: !22, size: 16, offset: 80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !38, line: 194, baseType: !26, size: 8, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !579, file: !38, line: 194, baseType: !496, size: 128, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !579, file: !38, line: 194, baseType: !53, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !579, file: !38, line: 194, baseType: !18, size: 32, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !579, file: !38, line: 195, baseType: !18, size: 32, offset: 352)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !47, file: !38, line: 382, baseType: !591, size: 384)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !38, line: 198, size: 384, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !591, file: !38, line: 199, baseType: !53, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !591, file: !38, line: 199, baseType: !26, size: 8, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !591, file: !38, line: 199, baseType: !26, size: 8, offset: 72)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !591, file: !38, line: 199, baseType: !22, size: 16, offset: 80)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !38, line: 199, baseType: !26, size: 8, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !591, file: !38, line: 201, baseType: !26, size: 8, offset: 104)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !591, file: !38, line: 202, baseType: !26, size: 8, offset: 112)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !591, file: !38, line: 203, baseType: !496, size: 128, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !591, file: !38, line: 203, baseType: !53, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !591, file: !38, line: 203, baseType: !603, size: 64, offset: 320)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !17, line: 128, baseType: !30)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !47, file: !38, line: 383, baseType: !605, size: 320)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !38, line: 206, size: 320, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612, !613}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !605, file: !38, line: 207, baseType: !53, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !605, file: !38, line: 207, baseType: !26, size: 8, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !605, file: !38, line: 207, baseType: !26, size: 8, offset: 72)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !605, file: !38, line: 207, baseType: !22, size: 16, offset: 80)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !605, file: !38, line: 207, baseType: !26, size: 8, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !605, file: !38, line: 207, baseType: !496, size: 128, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !605, file: !38, line: 207, baseType: !53, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !47, file: !38, line: 384, baseType: !615, size: 384)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !38, line: 234, size: 384, elements: !616)
!616 = !{!617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !615, file: !38, line: 235, baseType: !53, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !615, file: !38, line: 235, baseType: !26, size: 8, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !615, file: !38, line: 235, baseType: !26, size: 8, offset: 72)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !615, file: !38, line: 235, baseType: !22, size: 16, offset: 80)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !615, file: !38, line: 235, baseType: !26, size: 8, offset: 96)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !615, file: !38, line: 235, baseType: !26, size: 8, offset: 104)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !615, file: !38, line: 235, baseType: !26, size: 8, offset: 112)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !615, file: !38, line: 235, baseType: !26, size: 8, offset: 120)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !615, file: !38, line: 235, baseType: !97, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !615, file: !38, line: 235, baseType: !18, size: 32, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !615, file: !38, line: 235, baseType: !18, size: 32, offset: 224)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !615, file: !38, line: 235, baseType: !18, size: 32, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !615, file: !38, line: 235, baseType: !26, size: 8, offset: 288)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !615, file: !38, line: 235, baseType: !26, size: 8, offset: 296)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !615, file: !38, line: 235, baseType: !53, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !47, file: !38, line: 385, baseType: !633, size: 576)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !38, line: 238, size: 576, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !633, file: !38, line: 239, baseType: !53, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !633, file: !38, line: 239, baseType: !26, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !38, line: 239, baseType: !26, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !633, file: !38, line: 239, baseType: !22, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !38, line: 239, baseType: !26, size: 8, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !633, file: !38, line: 239, baseType: !26, size: 8, offset: 104)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !633, file: !38, line: 239, baseType: !26, size: 8, offset: 112)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !633, file: !38, line: 239, baseType: !26, size: 8, offset: 120)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !633, file: !38, line: 239, baseType: !97, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !633, file: !38, line: 239, baseType: !18, size: 32, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !633, file: !38, line: 239, baseType: !18, size: 32, offset: 224)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !633, file: !38, line: 239, baseType: !18, size: 32, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !633, file: !38, line: 239, baseType: !26, size: 8, offset: 288)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !633, file: !38, line: 239, baseType: !26, size: 8, offset: 296)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !633, file: !38, line: 239, baseType: !22, size: 16, offset: 304)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !633, file: !38, line: 240, baseType: !53, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !633, file: !38, line: 241, baseType: !92, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !633, file: !38, line: 242, baseType: !22, size: 16, offset: 448)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !633, file: !38, line: 243, baseType: !92, size: 64, offset: 512)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !47, file: !38, line: 386, baseType: !655, size: 384)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !38, line: 263, size: 384, elements: !656)
!656 = !{!657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !655, file: !38, line: 264, baseType: !53, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !655, file: !38, line: 264, baseType: !26, size: 8, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !655, file: !38, line: 264, baseType: !26, size: 8, offset: 72)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !655, file: !38, line: 264, baseType: !22, size: 16, offset: 80)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !38, line: 264, baseType: !26, size: 8, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !655, file: !38, line: 264, baseType: !26, size: 8, offset: 104)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !655, file: !38, line: 264, baseType: !26, size: 8, offset: 112)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !655, file: !38, line: 264, baseType: !26, size: 8, offset: 120)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !655, file: !38, line: 264, baseType: !97, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !655, file: !38, line: 264, baseType: !18, size: 32, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !655, file: !38, line: 264, baseType: !18, size: 32, offset: 224)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !655, file: !38, line: 264, baseType: !18, size: 32, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !655, file: !38, line: 264, baseType: !26, size: 8, offset: 288)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !655, file: !38, line: 264, baseType: !26, size: 8, offset: 296)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !655, file: !38, line: 264, baseType: !26, size: 8, offset: 304)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !655, file: !38, line: 265, baseType: !53, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !47, file: !38, line: 387, baseType: !674, size: 448)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !38, line: 246, size: 448, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !674, file: !38, line: 247, baseType: !53, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !674, file: !38, line: 247, baseType: !26, size: 8, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !674, file: !38, line: 247, baseType: !26, size: 8, offset: 72)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !674, file: !38, line: 247, baseType: !22, size: 16, offset: 80)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !38, line: 247, baseType: !26, size: 8, offset: 96)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !674, file: !38, line: 247, baseType: !26, size: 8, offset: 104)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !674, file: !38, line: 247, baseType: !26, size: 8, offset: 112)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !674, file: !38, line: 247, baseType: !26, size: 8, offset: 120)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !674, file: !38, line: 247, baseType: !97, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !674, file: !38, line: 247, baseType: !18, size: 32, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !674, file: !38, line: 247, baseType: !18, size: 32, offset: 224)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !674, file: !38, line: 247, baseType: !18, size: 32, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !674, file: !38, line: 247, baseType: !26, size: 8, offset: 288)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !674, file: !38, line: 247, baseType: !26, size: 8, offset: 296)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !674, file: !38, line: 247, baseType: !53, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !674, file: !38, line: 248, baseType: !53, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !47, file: !38, line: 388, baseType: !693, size: 448)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !38, line: 251, size: 448, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !693, file: !38, line: 252, baseType: !53, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !693, file: !38, line: 252, baseType: !26, size: 8, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !693, file: !38, line: 252, baseType: !26, size: 8, offset: 72)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !693, file: !38, line: 252, baseType: !22, size: 16, offset: 80)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !38, line: 252, baseType: !26, size: 8, offset: 96)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !693, file: !38, line: 252, baseType: !26, size: 8, offset: 104)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !693, file: !38, line: 252, baseType: !26, size: 8, offset: 112)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !693, file: !38, line: 252, baseType: !26, size: 8, offset: 120)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !693, file: !38, line: 252, baseType: !97, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !693, file: !38, line: 252, baseType: !18, size: 32, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !693, file: !38, line: 252, baseType: !18, size: 32, offset: 224)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !693, file: !38, line: 252, baseType: !18, size: 32, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !693, file: !38, line: 252, baseType: !26, size: 8, offset: 288)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !693, file: !38, line: 252, baseType: !26, size: 8, offset: 296)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !693, file: !38, line: 257, baseType: !53, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !693, file: !38, line: 258, baseType: !53, size: 64, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !47, file: !38, line: 389, baseType: !712, size: 512)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !38, line: 274, size: 512, elements: !713)
!713 = !{!714, !715, !716, !717, !718, !719, !720, !721, !722, !723}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !712, file: !38, line: 275, baseType: !53, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !712, file: !38, line: 275, baseType: !26, size: 8, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !712, file: !38, line: 275, baseType: !26, size: 8, offset: 72)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !712, file: !38, line: 275, baseType: !22, size: 16, offset: 80)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !712, file: !38, line: 275, baseType: !26, size: 8, offset: 96)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !712, file: !38, line: 275, baseType: !97, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !712, file: !38, line: 276, baseType: !18, size: 32, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !712, file: !38, line: 277, baseType: !389, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !712, file: !38, line: 278, baseType: !44, size: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !712, file: !38, line: 279, baseType: !496, size: 128, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !47, file: !38, line: 390, baseType: !725, size: 576)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !38, line: 282, size: 576, elements: !726)
!726 = !{!727, !728, !729, !730, !731, !732, !733, !734, !740, !741, !742, !743, !749, !750}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !725, file: !38, line: 283, baseType: !53, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !725, file: !38, line: 283, baseType: !26, size: 8, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !725, file: !38, line: 283, baseType: !26, size: 8, offset: 72)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !725, file: !38, line: 283, baseType: !22, size: 16, offset: 80)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !725, file: !38, line: 283, baseType: !26, size: 8, offset: 96)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !725, file: !38, line: 283, baseType: !26, size: 8, offset: 104)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !725, file: !38, line: 284, baseType: !26, size: 8, offset: 112)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !725, file: !38, line: 285, baseType: !735, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !17, line: 1093, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!16, !18, !29, !18, !739, !44, !44}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !725, file: !38, line: 286, baseType: !97, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !725, file: !38, line: 287, baseType: !44, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !725, file: !38, line: 288, baseType: !44, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !725, file: !38, line: 289, baseType: !744, size: 64, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !17, line: 1126, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!16, !393, !18, !44, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !725, file: !38, line: 290, baseType: !53, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !725, file: !38, line: 291, baseType: !53, size: 64, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !47, file: !38, line: 391, baseType: !752, size: 512)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !38, line: 309, size: 512, elements: !753)
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !752, file: !38, line: 310, baseType: !53, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !752, file: !38, line: 310, baseType: !26, size: 8, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !752, file: !38, line: 310, baseType: !26, size: 8, offset: 72)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !752, file: !38, line: 310, baseType: !22, size: 16, offset: 80)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !752, file: !38, line: 310, baseType: !26, size: 8, offset: 96)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !752, file: !38, line: 310, baseType: !26, size: 8, offset: 104)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !752, file: !38, line: 311, baseType: !26, size: 8, offset: 112)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !752, file: !38, line: 312, baseType: !26, size: 8, offset: 120)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !752, file: !38, line: 313, baseType: !44, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !752, file: !38, line: 314, baseType: !97, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !752, file: !38, line: 315, baseType: !129, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !752, file: !38, line: 316, baseType: !92, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !752, file: !38, line: 317, baseType: !92, size: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !752, file: !38, line: 318, baseType: !18, size: 32, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !47, file: !38, line: 392, baseType: !769, size: 448)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !38, line: 342, size: 448, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !776, !777, !778, !779, !780}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !769, file: !38, line: 343, baseType: !53, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !769, file: !38, line: 343, baseType: !26, size: 8, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !769, file: !38, line: 343, baseType: !26, size: 8, offset: 72)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !769, file: !38, line: 343, baseType: !22, size: 16, offset: 80)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !769, file: !38, line: 343, baseType: !26, size: 8, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !769, file: !38, line: 343, baseType: !97, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !769, file: !38, line: 344, baseType: !97, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !769, file: !38, line: 345, baseType: !44, size: 64, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !769, file: !38, line: 346, baseType: !92, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !769, file: !38, line: 347, baseType: !18, size: 32, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !47, file: !38, line: 393, baseType: !782, size: 256)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !38, line: 352, size: 256, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !794}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !782, file: !38, line: 353, baseType: !53, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !782, file: !38, line: 353, baseType: !26, size: 8, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !782, file: !38, line: 353, baseType: !26, size: 8, offset: 72)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !782, file: !38, line: 353, baseType: !22, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !38, line: 353, baseType: !26, size: 8, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !782, file: !38, line: 353, baseType: !790, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !17, line: 1064, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !393, !44}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !782, file: !38, line: 354, baseType: !44, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !47, file: !38, line: 394, baseType: !796, size: 192)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !38, line: 359, size: 192, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !796, file: !38, line: 360, baseType: !53, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !796, file: !38, line: 360, baseType: !26, size: 8, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !796, file: !38, line: 360, baseType: !26, size: 8, offset: 72)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !796, file: !38, line: 360, baseType: !22, size: 16, offset: 80)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !38, line: 360, baseType: !26, size: 8, offset: 96)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !796, file: !38, line: 360, baseType: !53, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !47, file: !38, line: 401, baseType: !98, size: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !37, file: !38, line: 437, baseType: !98, size: 384)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !37, file: !38, line: 438, baseType: !199, size: 1600)
!807 = !{!808, !813, !818, !823, !0, !828, !830, !835, !840, !845}
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !3, line: 306, type: !810, isLocal: true, isDefinition: true)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 264, elements: !811)
!811 = !{!812}
!812 = !DISubrange(count: 33)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !3, line: 414, type: !815, isLocal: true, isDefinition: true)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 432, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 54)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !3, line: 512, type: !820, isLocal: true, isDefinition: true)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 440, elements: !821)
!821 = !{!822}
!822 = !DISubrange(count: 55)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !3, line: 590, type: !825, isLocal: true, isDefinition: true)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 408, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 51)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !825, isLocal: true, isDefinition: true)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !832, isLocal: true, isDefinition: true)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 288, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 36)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !3, line: 133, type: !837, isLocal: true, isDefinition: true)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 304, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 38)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(scope: null, file: !3, line: 187, type: !842, isLocal: true, isDefinition: true)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 296, elements: !843)
!843 = !{!844}
!844 = !DISubrange(count: 37)
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !847, isLocal: true, isDefinition: true)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 648, elements: !848)
!848 = !{!849}
!849 = !DISubrange(count: 81)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !851, size: 72, elements: !409)
!851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!852 = !{i32 7, !"Dwarf Version", i32 5}
!853 = !{i32 2, !"Debug Info Version", i32 3}
!854 = !{i32 1, !"wchar_size", i32 2}
!855 = !{i32 8, !"cf-protection-branch", i32 1}
!856 = !{i32 4, !"function_return_thunk_extern", i32 1}
!857 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!858 = !{i32 1, !"Code Model", i32 2}
!859 = !{i32 1, !"override-stack-alignment", i32 8}
!860 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!861 = distinct !DISubprogram(name: "acpi_ds_initialize_region", scope: !3, file: !3, line: 44, type: !862, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !864)
!862 = !DISubroutineType(types: !863)
!863 = !{!16, !393}
!864 = !{!865, !866, !867}
!865 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !861, file: !3, line: 44, type: !393)
!866 = !DILocalVariable(name: "obj_desc", scope: !861, file: !3, line: 46, type: !53)
!867 = !DILocalVariable(name: "status", scope: !861, file: !3, line: 47, type: !16)
!868 = !DILocation(line: 44, column: 51, scope: !861)
!869 = !DILocation(line: 46, column: 2, scope: !861)
!870 = !DILocation(line: 46, column: 29, scope: !861)
!871 = !DILocation(line: 47, column: 2, scope: !861)
!872 = !DILocation(line: 47, column: 14, scope: !861)
!873 = !DILocation(line: 49, column: 41, scope: !861)
!874 = !DILocation(line: 49, column: 13, scope: !861)
!875 = !DILocation(line: 49, column: 11, scope: !861)
!876 = !DILocation(line: 53, column: 37, scope: !861)
!877 = !DILocation(line: 53, column: 11, scope: !861)
!878 = !DILocation(line: 53, column: 9, scope: !861)
!879 = !DILocation(line: 54, column: 10, scope: !861)
!880 = !DILocation(line: 55, column: 1, scope: !861)
!881 = !DILocation(line: 54, column: 2, scope: !861)
!882 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !883, file: !883, line: 298, type: !884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!883 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!884 = !DISubroutineType(types: !885)
!885 = !{!53, !97}
!886 = !DISubprogram(name: "acpi_ev_initialize_region", scope: !887, file: !887, line: 236, type: !888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!887 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!888 = !DISubroutineType(types: !889)
!889 = !{!16, !53}
!890 = distinct !DISubprogram(name: "acpi_ds_eval_buffer_field_operands", scope: !3, file: !3, line: 268, type: !891, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !893)
!891 = !DISubroutineType(types: !892)
!892 = !{!16, !164, !198}
!893 = !{!894, !895, !896, !897, !898, !899}
!894 = !DILocalVariable(name: "walk_state", arg: 1, scope: !890, file: !3, line: 268, type: !164)
!895 = !DILocalVariable(name: "op", arg: 2, scope: !890, file: !3, line: 269, type: !198)
!896 = !DILocalVariable(name: "status", scope: !890, file: !3, line: 271, type: !16)
!897 = !DILocalVariable(name: "obj_desc", scope: !890, file: !3, line: 272, type: !53)
!898 = !DILocalVariable(name: "node", scope: !890, file: !3, line: 273, type: !97)
!899 = !DILocalVariable(name: "next_op", scope: !890, file: !3, line: 274, type: !198)
!900 = !DILocation(line: 268, column: 60, scope: !890)
!901 = !DILocation(line: 269, column: 33, scope: !890)
!902 = !DILocation(line: 271, column: 2, scope: !890)
!903 = !DILocation(line: 271, column: 14, scope: !890)
!904 = !DILocation(line: 272, column: 2, scope: !890)
!905 = !DILocation(line: 272, column: 29, scope: !890)
!906 = !DILocation(line: 273, column: 2, scope: !890)
!907 = !DILocation(line: 273, column: 30, scope: !890)
!908 = !DILocation(line: 274, column: 2, scope: !890)
!909 = !DILocation(line: 274, column: 27, scope: !890)
!910 = !DILocation(line: 282, column: 9, scope: !890)
!911 = !DILocation(line: 282, column: 20, scope: !890)
!912 = !DILocation(line: 282, column: 7, scope: !890)
!913 = !DILocation(line: 286, column: 12, scope: !890)
!914 = !DILocation(line: 286, column: 23, scope: !890)
!915 = !DILocation(line: 286, column: 29, scope: !890)
!916 = !DILocation(line: 286, column: 10, scope: !890)
!917 = !DILocation(line: 290, column: 35, scope: !890)
!918 = !DILocation(line: 290, column: 47, scope: !890)
!919 = !DILocation(line: 290, column: 11, scope: !890)
!920 = !DILocation(line: 290, column: 9, scope: !890)
!921 = !DILocation(line: 291, column: 6, scope: !922)
!922 = distinct !DILexicalBlock(scope: !890, file: !3, line: 291, column: 6)
!923 = !DILocation(line: 291, column: 6, scope: !890)
!924 = !DILocation(line: 292, column: 3, scope: !925)
!925 = distinct !DILexicalBlock(scope: !922, file: !3, line: 291, column: 28)
!926 = !DILocation(line: 295, column: 41, scope: !890)
!927 = !DILocation(line: 295, column: 13, scope: !890)
!928 = !DILocation(line: 295, column: 11, scope: !890)
!929 = !DILocation(line: 296, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !890, file: !3, line: 296, column: 6)
!931 = !DILocation(line: 296, column: 6, scope: !890)
!932 = !DILocation(line: 297, column: 3, scope: !933)
!933 = distinct !DILexicalBlock(scope: !930, file: !3, line: 296, column: 17)
!934 = !DILocation(line: 303, column: 31, scope: !890)
!935 = !DILocation(line: 303, column: 42, scope: !890)
!936 = !DILocation(line: 303, column: 54, scope: !890)
!937 = !DILocation(line: 304, column: 10, scope: !890)
!938 = !DILocation(line: 303, column: 6, scope: !890)
!939 = !DILocation(line: 302, column: 9, scope: !890)
!940 = !DILocation(line: 305, column: 6, scope: !941)
!941 = distinct !DILexicalBlock(scope: !890, file: !3, line: 305, column: 6)
!942 = !DILocation(line: 305, column: 6, scope: !890)
!943 = !DILocation(line: 306, column: 3, scope: !944)
!944 = distinct !DILexicalBlock(scope: !941, file: !3, line: 305, column: 28)
!945 = !DILocation(line: 310, column: 3, scope: !944)
!946 = !DILocation(line: 315, column: 6, scope: !947)
!947 = distinct !DILexicalBlock(scope: !890, file: !3, line: 315, column: 6)
!948 = !DILocation(line: 315, column: 17, scope: !947)
!949 = !DILocation(line: 315, column: 28, scope: !947)
!950 = !DILocation(line: 315, column: 6, scope: !890)
!951 = !DILocation(line: 320, column: 33, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !3, line: 315, column: 52)
!953 = !DILocation(line: 320, column: 44, scope: !952)
!954 = !DILocation(line: 320, column: 56, scope: !952)
!955 = !DILocation(line: 321, column: 12, scope: !952)
!956 = !DILocation(line: 321, column: 24, scope: !952)
!957 = !DILocation(line: 322, column: 12, scope: !952)
!958 = !DILocation(line: 322, column: 24, scope: !952)
!959 = !DILocation(line: 323, column: 12, scope: !952)
!960 = !DILocation(line: 323, column: 24, scope: !952)
!961 = !DILocation(line: 324, column: 12, scope: !952)
!962 = !DILocation(line: 324, column: 24, scope: !952)
!963 = !DILocation(line: 320, column: 7, scope: !952)
!964 = !DILocation(line: 319, column: 10, scope: !952)
!965 = !DILocation(line: 325, column: 2, scope: !952)
!966 = !DILocation(line: 329, column: 33, scope: !967)
!967 = distinct !DILexicalBlock(scope: !947, file: !3, line: 325, column: 9)
!968 = !DILocation(line: 329, column: 44, scope: !967)
!969 = !DILocation(line: 329, column: 56, scope: !967)
!970 = !DILocation(line: 330, column: 12, scope: !967)
!971 = !DILocation(line: 330, column: 24, scope: !967)
!972 = !DILocation(line: 331, column: 12, scope: !967)
!973 = !DILocation(line: 331, column: 24, scope: !967)
!974 = !DILocation(line: 332, column: 12, scope: !967)
!975 = !DILocation(line: 332, column: 24, scope: !967)
!976 = !DILocation(line: 329, column: 7, scope: !967)
!977 = !DILocation(line: 328, column: 10, scope: !967)
!978 = !DILocation(line: 335, column: 2, scope: !890)
!979 = !DILocation(line: 336, column: 1, scope: !890)
!980 = !DISubprogram(name: "acpi_ds_create_operands", scope: !981, file: !981, line: 264, type: !891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!981 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!982 = !DISubprogram(name: "acpi_ex_resolve_operands", scope: !983, file: !983, line: 377, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!983 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!984 = !DISubroutineType(types: !985)
!985 = !{!16, !22, !129, !164}
!986 = !DISubprogram(name: "acpi_error", scope: !987, file: !987, line: 901, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!987 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!988 = !DISubroutineType(types: !989)
!989 = !{null, !990, !18, !990, null}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!991 = !DISubprogram(name: "acpi_ps_get_opcode_name", scope: !992, file: !992, line: 110, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!992 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!993 = !DISubroutineType(types: !994)
!994 = !{!990, !22}
!995 = distinct !DISubprogram(name: "acpi_ds_init_buffer_field", scope: !3, file: !3, line: 75, type: !996, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !998)
!996 = !DISubroutineType(types: !997)
!997 = !{!16, !22, !53, !53, !53, !53, !53}
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010}
!999 = !DILocalVariable(name: "aml_opcode", arg: 1, scope: !995, file: !3, line: 75, type: !22)
!1000 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !995, file: !3, line: 76, type: !53)
!1001 = !DILocalVariable(name: "buffer_desc", arg: 3, scope: !995, file: !3, line: 77, type: !53)
!1002 = !DILocalVariable(name: "offset_desc", arg: 4, scope: !995, file: !3, line: 78, type: !53)
!1003 = !DILocalVariable(name: "length_desc", arg: 5, scope: !995, file: !3, line: 79, type: !53)
!1004 = !DILocalVariable(name: "result_desc", arg: 6, scope: !995, file: !3, line: 80, type: !53)
!1005 = !DILocalVariable(name: "offset", scope: !995, file: !3, line: 82, type: !18)
!1006 = !DILocalVariable(name: "bit_offset", scope: !995, file: !3, line: 83, type: !18)
!1007 = !DILocalVariable(name: "bit_count", scope: !995, file: !3, line: 84, type: !18)
!1008 = !DILocalVariable(name: "field_flags", scope: !995, file: !3, line: 85, type: !26)
!1009 = !DILocalVariable(name: "status", scope: !995, file: !3, line: 86, type: !16)
!1010 = !DILabel(scope: !995, name: "cleanup", file: !3, line: 229)
!1011 = !DILocation(line: 75, column: 31, scope: !995)
!1012 = !DILocation(line: 76, column: 33, scope: !995)
!1013 = !DILocation(line: 77, column: 33, scope: !995)
!1014 = !DILocation(line: 78, column: 33, scope: !995)
!1015 = !DILocation(line: 79, column: 33, scope: !995)
!1016 = !DILocation(line: 80, column: 33, scope: !995)
!1017 = !DILocation(line: 82, column: 2, scope: !995)
!1018 = !DILocation(line: 82, column: 6, scope: !995)
!1019 = !DILocation(line: 83, column: 2, scope: !995)
!1020 = !DILocation(line: 83, column: 6, scope: !995)
!1021 = !DILocation(line: 84, column: 2, scope: !995)
!1022 = !DILocation(line: 84, column: 6, scope: !995)
!1023 = !DILocation(line: 85, column: 2, scope: !995)
!1024 = !DILocation(line: 85, column: 5, scope: !995)
!1025 = !DILocation(line: 86, column: 2, scope: !995)
!1026 = !DILocation(line: 86, column: 14, scope: !995)
!1027 = !DILocation(line: 92, column: 6, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !995, file: !3, line: 92, column: 6)
!1029 = !DILocation(line: 92, column: 26, scope: !1028)
!1030 = !DILocation(line: 92, column: 31, scope: !1028)
!1031 = !DILocation(line: 92, column: 6, scope: !995)
!1032 = !DILocation(line: 93, column: 3, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 92, column: 52)
!1034 = !DILocation(line: 97, column: 10, scope: !1033)
!1035 = !DILocation(line: 98, column: 3, scope: !1033)
!1036 = !DILocation(line: 106, column: 6, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !995, file: !3, line: 106, column: 6)
!1038 = !DILocation(line: 106, column: 44, scope: !1037)
!1039 = !DILocation(line: 106, column: 6, scope: !995)
!1040 = !DILocation(line: 107, column: 3, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 106, column: 69)
!1042 = !DILocation(line: 112, column: 10, scope: !1041)
!1043 = !DILocation(line: 113, column: 3, scope: !1041)
!1044 = !DILocation(line: 116, column: 17, scope: !995)
!1045 = !DILocation(line: 116, column: 38, scope: !995)
!1046 = !DILocation(line: 116, column: 11, scope: !995)
!1047 = !DILocation(line: 116, column: 9, scope: !995)
!1048 = !DILocation(line: 121, column: 10, scope: !995)
!1049 = !DILocation(line: 121, column: 2, scope: !995)
!1050 = !DILocation(line: 126, column: 15, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !995, file: !3, line: 121, column: 22)
!1052 = !DILocation(line: 127, column: 16, scope: !1051)
!1053 = !DILocation(line: 127, column: 14, scope: !1051)
!1054 = !DILocation(line: 128, column: 21, scope: !1051)
!1055 = !DILocation(line: 128, column: 42, scope: !1051)
!1056 = !DILocation(line: 128, column: 15, scope: !1051)
!1057 = !DILocation(line: 128, column: 13, scope: !1051)
!1058 = !DILocation(line: 132, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 132, column: 7)
!1060 = !DILocation(line: 132, column: 17, scope: !1059)
!1061 = !DILocation(line: 132, column: 7, scope: !1051)
!1062 = !DILocation(line: 133, column: 4, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 132, column: 23)
!1064 = !DILocation(line: 135, column: 11, scope: !1063)
!1065 = !DILocation(line: 136, column: 4, scope: !1063)
!1066 = !DILocation(line: 138, column: 3, scope: !1051)
!1067 = !DILocation(line: 144, column: 16, scope: !1051)
!1068 = !DILocation(line: 144, column: 14, scope: !1051)
!1069 = !DILocation(line: 145, column: 13, scope: !1051)
!1070 = !DILocation(line: 146, column: 15, scope: !1051)
!1071 = !DILocation(line: 147, column: 3, scope: !1051)
!1072 = !DILocation(line: 153, column: 20, scope: !1051)
!1073 = !DILocation(line: 153, column: 18, scope: !1051)
!1074 = !DILocation(line: 153, column: 14, scope: !1051)
!1075 = !DILocation(line: 154, column: 13, scope: !1051)
!1076 = !DILocation(line: 155, column: 15, scope: !1051)
!1077 = !DILocation(line: 156, column: 3, scope: !1051)
!1078 = !DILocation(line: 162, column: 20, scope: !1051)
!1079 = !DILocation(line: 162, column: 18, scope: !1051)
!1080 = !DILocation(line: 162, column: 14, scope: !1051)
!1081 = !DILocation(line: 163, column: 13, scope: !1051)
!1082 = !DILocation(line: 164, column: 15, scope: !1051)
!1083 = !DILocation(line: 165, column: 3, scope: !1051)
!1084 = !DILocation(line: 171, column: 20, scope: !1051)
!1085 = !DILocation(line: 171, column: 18, scope: !1051)
!1086 = !DILocation(line: 171, column: 14, scope: !1051)
!1087 = !DILocation(line: 172, column: 13, scope: !1051)
!1088 = !DILocation(line: 173, column: 15, scope: !1051)
!1089 = !DILocation(line: 174, column: 3, scope: !1051)
!1090 = !DILocation(line: 180, column: 20, scope: !1051)
!1091 = !DILocation(line: 180, column: 18, scope: !1051)
!1092 = !DILocation(line: 180, column: 14, scope: !1051)
!1093 = !DILocation(line: 181, column: 13, scope: !1051)
!1094 = !DILocation(line: 182, column: 15, scope: !1051)
!1095 = !DILocation(line: 183, column: 3, scope: !1051)
!1096 = !DILocation(line: 187, column: 3, scope: !1051)
!1097 = !DILocation(line: 190, column: 10, scope: !1051)
!1098 = !DILocation(line: 191, column: 3, scope: !1051)
!1099 = !DILocation(line: 196, column: 7, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !995, file: !3, line: 196, column: 6)
!1101 = !DILocation(line: 196, column: 20, scope: !1100)
!1102 = !DILocation(line: 196, column: 18, scope: !1100)
!1103 = !DILocation(line: 196, column: 43, scope: !1100)
!1104 = !DILocation(line: 196, column: 63, scope: !1100)
!1105 = !DILocation(line: 196, column: 36, scope: !1100)
!1106 = !DILocation(line: 196, column: 31, scope: !1100)
!1107 = !DILocation(line: 196, column: 6, scope: !995)
!1108 = !DILocation(line: 197, column: 10, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 196, column: 72)
!1110 = !DILocation(line: 198, column: 3, scope: !1109)
!1111 = !DILocation(line: 204, column: 3, scope: !1109)
!1112 = !DILocation(line: 213, column: 39, scope: !995)
!1113 = !DILocation(line: 213, column: 49, scope: !995)
!1114 = !DILocation(line: 214, column: 11, scope: !995)
!1115 = !DILocation(line: 214, column: 23, scope: !995)
!1116 = !DILocation(line: 213, column: 6, scope: !995)
!1117 = !DILocation(line: 212, column: 9, scope: !995)
!1118 = !DILocation(line: 215, column: 6, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !995, file: !3, line: 215, column: 6)
!1120 = !DILocation(line: 215, column: 6, scope: !995)
!1121 = !DILocation(line: 216, column: 3, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 215, column: 28)
!1123 = !DILocation(line: 219, column: 38, scope: !995)
!1124 = !DILocation(line: 219, column: 2, scope: !995)
!1125 = !DILocation(line: 219, column: 25, scope: !995)
!1126 = !DILocation(line: 219, column: 36, scope: !995)
!1127 = !DILocation(line: 221, column: 6, scope: !995)
!1128 = !DILocation(line: 221, column: 17, scope: !995)
!1129 = !DILocation(line: 220, column: 2, scope: !995)
!1130 = !DILocation(line: 220, column: 25, scope: !995)
!1131 = !DILocation(line: 220, column: 41, scope: !995)
!1132 = !DILocation(line: 226, column: 7, scope: !995)
!1133 = !DILocation(line: 226, column: 27, scope: !995)
!1134 = !DILocation(line: 227, column: 7, scope: !995)
!1135 = !DILocation(line: 227, column: 24, scope: !995)
!1136 = !DILocation(line: 226, column: 43, scope: !995)
!1137 = !DILocation(line: 225, column: 40, scope: !995)
!1138 = !DILocation(line: 225, column: 2, scope: !995)
!1139 = !DILocation(line: 225, column: 22, scope: !995)
!1140 = !DILocation(line: 225, column: 38, scope: !995)
!1141 = !DILocation(line: 229, column: 1, scope: !995)
!1142 = !DILocation(line: 233, column: 27, scope: !995)
!1143 = !DILocation(line: 233, column: 2, scope: !995)
!1144 = !DILocation(line: 234, column: 27, scope: !995)
!1145 = !DILocation(line: 234, column: 2, scope: !995)
!1146 = !DILocation(line: 236, column: 6, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !995, file: !3, line: 236, column: 6)
!1148 = !DILocation(line: 236, column: 17, scope: !1147)
!1149 = !DILocation(line: 236, column: 6, scope: !995)
!1150 = !DILocation(line: 237, column: 28, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 236, column: 41)
!1152 = !DILocation(line: 237, column: 3, scope: !1151)
!1153 = !DILocation(line: 238, column: 2, scope: !1151)
!1154 = !DILocation(line: 242, column: 6, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !995, file: !3, line: 242, column: 6)
!1156 = !DILocation(line: 242, column: 6, scope: !995)
!1157 = !DILocation(line: 243, column: 28, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 242, column: 28)
!1159 = !DILocation(line: 243, column: 3, scope: !1158)
!1160 = !DILocation(line: 244, column: 2, scope: !1158)
!1161 = !DILocation(line: 247, column: 3, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 244, column: 9)
!1163 = !DILocation(line: 247, column: 26, scope: !1162)
!1164 = !DILocation(line: 247, column: 32, scope: !1162)
!1165 = !DILocation(line: 250, column: 2, scope: !995)
!1166 = !DILocation(line: 251, column: 1, scope: !995)
!1167 = distinct !DISubprogram(name: "acpi_ds_eval_region_operands", scope: !3, file: !3, line: 353, type: !891, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1168)
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176}
!1169 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1167, file: !3, line: 353, type: !164)
!1170 = !DILocalVariable(name: "op", arg: 2, scope: !1167, file: !3, line: 354, type: !198)
!1171 = !DILocalVariable(name: "status", scope: !1167, file: !3, line: 356, type: !16)
!1172 = !DILocalVariable(name: "obj_desc", scope: !1167, file: !3, line: 357, type: !53)
!1173 = !DILocalVariable(name: "operand_desc", scope: !1167, file: !3, line: 358, type: !53)
!1174 = !DILocalVariable(name: "node", scope: !1167, file: !3, line: 359, type: !97)
!1175 = !DILocalVariable(name: "next_op", scope: !1167, file: !3, line: 360, type: !198)
!1176 = !DILocalVariable(name: "space_id", scope: !1167, file: !3, line: 361, type: !25)
!1177 = !DILocation(line: 353, column: 54, scope: !1167)
!1178 = !DILocation(line: 354, column: 34, scope: !1167)
!1179 = !DILocation(line: 356, column: 2, scope: !1167)
!1180 = !DILocation(line: 356, column: 14, scope: !1167)
!1181 = !DILocation(line: 357, column: 2, scope: !1167)
!1182 = !DILocation(line: 357, column: 29, scope: !1167)
!1183 = !DILocation(line: 358, column: 2, scope: !1167)
!1184 = !DILocation(line: 358, column: 29, scope: !1167)
!1185 = !DILocation(line: 359, column: 2, scope: !1167)
!1186 = !DILocation(line: 359, column: 30, scope: !1167)
!1187 = !DILocation(line: 360, column: 2, scope: !1167)
!1188 = !DILocation(line: 360, column: 27, scope: !1167)
!1189 = !DILocation(line: 361, column: 2, scope: !1167)
!1190 = !DILocation(line: 361, column: 22, scope: !1167)
!1191 = !DILocation(line: 369, column: 9, scope: !1167)
!1192 = !DILocation(line: 369, column: 20, scope: !1167)
!1193 = !DILocation(line: 369, column: 7, scope: !1167)
!1194 = !DILocation(line: 373, column: 12, scope: !1167)
!1195 = !DILocation(line: 373, column: 23, scope: !1167)
!1196 = !DILocation(line: 373, column: 29, scope: !1167)
!1197 = !DILocation(line: 373, column: 10, scope: !1167)
!1198 = !DILocation(line: 374, column: 34, scope: !1167)
!1199 = !DILocation(line: 374, column: 50, scope: !1167)
!1200 = !DILocation(line: 374, column: 56, scope: !1167)
!1201 = !DILocation(line: 374, column: 13, scope: !1167)
!1202 = !DILocation(line: 374, column: 11, scope: !1167)
!1203 = !DILocation(line: 378, column: 12, scope: !1167)
!1204 = !DILocation(line: 378, column: 28, scope: !1167)
!1205 = !DILocation(line: 378, column: 10, scope: !1167)
!1206 = !DILocation(line: 382, column: 35, scope: !1167)
!1207 = !DILocation(line: 382, column: 47, scope: !1167)
!1208 = !DILocation(line: 382, column: 11, scope: !1167)
!1209 = !DILocation(line: 382, column: 9, scope: !1167)
!1210 = !DILocation(line: 383, column: 6, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 383, column: 6)
!1212 = !DILocation(line: 383, column: 6, scope: !1167)
!1213 = !DILocation(line: 384, column: 3, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 383, column: 28)
!1215 = !DILocation(line: 390, column: 31, scope: !1167)
!1216 = !DILocation(line: 390, column: 42, scope: !1167)
!1217 = !DILocation(line: 390, column: 54, scope: !1167)
!1218 = !DILocation(line: 391, column: 10, scope: !1167)
!1219 = !DILocation(line: 390, column: 6, scope: !1167)
!1220 = !DILocation(line: 389, column: 9, scope: !1167)
!1221 = !DILocation(line: 392, column: 6, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 392, column: 6)
!1223 = !DILocation(line: 392, column: 6, scope: !1167)
!1224 = !DILocation(line: 393, column: 3, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 392, column: 28)
!1226 = !DILocation(line: 396, column: 41, scope: !1167)
!1227 = !DILocation(line: 396, column: 13, scope: !1167)
!1228 = !DILocation(line: 396, column: 11, scope: !1167)
!1229 = !DILocation(line: 397, column: 7, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 397, column: 6)
!1231 = !DILocation(line: 397, column: 6, scope: !1167)
!1232 = !DILocation(line: 398, column: 3, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 397, column: 17)
!1234 = !DILocation(line: 405, column: 17, scope: !1167)
!1235 = !DILocation(line: 405, column: 29, scope: !1167)
!1236 = !DILocation(line: 405, column: 38, scope: !1167)
!1237 = !DILocation(line: 405, column: 50, scope: !1167)
!1238 = !DILocation(line: 405, column: 63, scope: !1167)
!1239 = !DILocation(line: 405, column: 15, scope: !1167)
!1240 = !DILocation(line: 407, column: 34, scope: !1167)
!1241 = !DILocation(line: 407, column: 56, scope: !1167)
!1242 = !DILocation(line: 407, column: 28, scope: !1167)
!1243 = !DILocation(line: 407, column: 2, scope: !1167)
!1244 = !DILocation(line: 407, column: 19, scope: !1167)
!1245 = !DILocation(line: 407, column: 26, scope: !1167)
!1246 = !DILocation(line: 408, column: 27, scope: !1167)
!1247 = !DILocation(line: 408, column: 2, scope: !1167)
!1248 = !DILocation(line: 412, column: 7, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 412, column: 6)
!1250 = !DILocation(line: 412, column: 24, scope: !1249)
!1251 = !DILocation(line: 413, column: 6, scope: !1249)
!1252 = !DILocation(line: 413, column: 10, scope: !1249)
!1253 = !DILocation(line: 413, column: 19, scope: !1249)
!1254 = !DILocation(line: 412, column: 6, scope: !1167)
!1255 = !DILocation(line: 414, column: 3, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 413, column: 51)
!1257 = !DILocation(line: 417, column: 2, scope: !1256)
!1258 = !DILocation(line: 423, column: 17, scope: !1167)
!1259 = !DILocation(line: 423, column: 29, scope: !1167)
!1260 = !DILocation(line: 423, column: 38, scope: !1167)
!1261 = !DILocation(line: 423, column: 50, scope: !1167)
!1262 = !DILocation(line: 423, column: 63, scope: !1167)
!1263 = !DILocation(line: 423, column: 15, scope: !1167)
!1264 = !DILocation(line: 426, column: 6, scope: !1167)
!1265 = !DILocation(line: 426, column: 28, scope: !1167)
!1266 = !DILocation(line: 425, column: 2, scope: !1167)
!1267 = !DILocation(line: 425, column: 19, scope: !1167)
!1268 = !DILocation(line: 425, column: 27, scope: !1167)
!1269 = !DILocation(line: 427, column: 27, scope: !1167)
!1270 = !DILocation(line: 427, column: 2, scope: !1167)
!1271 = !DILocation(line: 434, column: 37, scope: !1167)
!1272 = !DILocation(line: 434, column: 54, scope: !1167)
!1273 = !DILocation(line: 435, column: 9, scope: !1167)
!1274 = !DILocation(line: 435, column: 26, scope: !1167)
!1275 = !DILocation(line: 436, column: 9, scope: !1167)
!1276 = !DILocation(line: 436, column: 26, scope: !1167)
!1277 = !DILocation(line: 436, column: 34, scope: !1167)
!1278 = !DILocation(line: 434, column: 11, scope: !1167)
!1279 = !DILocation(line: 434, column: 9, scope: !1167)
!1280 = !DILocation(line: 440, column: 2, scope: !1167)
!1281 = !DILocation(line: 440, column: 19, scope: !1167)
!1282 = !DILocation(line: 440, column: 25, scope: !1167)
!1283 = !DILocation(line: 441, column: 2, scope: !1167)
!1284 = !DILocation(line: 442, column: 1, scope: !1167)
!1285 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1286, file: !1286, line: 369, type: !1287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1286 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !53}
!1289 = !DISubprogram(name: "acpi_warning", scope: !987, file: !987, line: 912, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1290 = !DISubprogram(name: "acpi_ut_add_address_range", scope: !1286, file: !1286, line: 689, type: !1291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!16, !25, !29, !18, !97}
!1293 = distinct !DISubprogram(name: "acpi_ds_eval_table_region_operands", scope: !3, file: !3, line: 460, type: !891, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1294)
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1319, !1320}
!1295 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1293, file: !3, line: 460, type: !164)
!1296 = !DILocalVariable(name: "op", arg: 2, scope: !1293, file: !3, line: 461, type: !198)
!1297 = !DILocalVariable(name: "status", scope: !1293, file: !3, line: 463, type: !16)
!1298 = !DILocalVariable(name: "obj_desc", scope: !1293, file: !3, line: 464, type: !53)
!1299 = !DILocalVariable(name: "operand", scope: !1293, file: !3, line: 465, type: !129)
!1300 = !DILocalVariable(name: "node", scope: !1293, file: !3, line: 466, type: !97)
!1301 = !DILocalVariable(name: "next_op", scope: !1293, file: !3, line: 467, type: !198)
!1302 = !DILocalVariable(name: "table", scope: !1293, file: !3, line: 468, type: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !107, line: 68, size: 288, elements: !1305)
!1305 = !{!1306, !1307, !1308, !1309, !1310, !1314, !1316, !1317, !1318}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1304, file: !107, line: 69, baseType: !111, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1304, file: !107, line: 70, baseType: !18, size: 32, offset: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !1304, file: !107, line: 71, baseType: !26, size: 8, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !1304, file: !107, line: 72, baseType: !26, size: 8, offset: 72)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !1304, file: !107, line: 73, baseType: !1311, size: 48, offset: 80)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 48, elements: !1312)
!1312 = !{!1313}
!1313 = !DISubrange(count: 6)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !1304, file: !107, line: 74, baseType: !1315, size: 64, offset: 128)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !371)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !1304, file: !107, line: 75, baseType: !18, size: 32, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !1304, file: !107, line: 76, baseType: !111, size: 32, offset: 224)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !1304, file: !107, line: 77, baseType: !18, size: 32, offset: 256)
!1319 = !DILocalVariable(name: "table_index", scope: !1293, file: !3, line: 469, type: !18)
!1320 = !DILabel(scope: !1293, name: "cleanup", file: !3, line: 545)
!1321 = !DILocation(line: 460, column: 60, scope: !1293)
!1322 = !DILocation(line: 461, column: 33, scope: !1293)
!1323 = !DILocation(line: 463, column: 2, scope: !1293)
!1324 = !DILocation(line: 463, column: 14, scope: !1293)
!1325 = !DILocation(line: 464, column: 2, scope: !1293)
!1326 = !DILocation(line: 464, column: 29, scope: !1293)
!1327 = !DILocation(line: 465, column: 2, scope: !1293)
!1328 = !DILocation(line: 465, column: 30, scope: !1293)
!1329 = !DILocation(line: 466, column: 2, scope: !1293)
!1330 = !DILocation(line: 466, column: 30, scope: !1293)
!1331 = !DILocation(line: 467, column: 2, scope: !1293)
!1332 = !DILocation(line: 467, column: 27, scope: !1293)
!1333 = !DILocation(line: 468, column: 2, scope: !1293)
!1334 = !DILocation(line: 468, column: 28, scope: !1293)
!1335 = !DILocation(line: 469, column: 2, scope: !1293)
!1336 = !DILocation(line: 469, column: 6, scope: !1293)
!1337 = !DILocation(line: 477, column: 9, scope: !1293)
!1338 = !DILocation(line: 477, column: 20, scope: !1293)
!1339 = !DILocation(line: 477, column: 7, scope: !1293)
!1340 = !DILocation(line: 481, column: 12, scope: !1293)
!1341 = !DILocation(line: 481, column: 23, scope: !1293)
!1342 = !DILocation(line: 481, column: 29, scope: !1293)
!1343 = !DILocation(line: 481, column: 10, scope: !1293)
!1344 = !DILocation(line: 487, column: 35, scope: !1293)
!1345 = !DILocation(line: 487, column: 47, scope: !1293)
!1346 = !DILocation(line: 487, column: 11, scope: !1293)
!1347 = !DILocation(line: 487, column: 9, scope: !1293)
!1348 = !DILocation(line: 488, column: 6, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 488, column: 6)
!1350 = !DILocation(line: 488, column: 6, scope: !1293)
!1351 = !DILocation(line: 489, column: 3, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 488, column: 28)
!1353 = !DILocation(line: 492, column: 13, scope: !1293)
!1354 = !DILocation(line: 492, column: 25, scope: !1293)
!1355 = !DILocation(line: 492, column: 10, scope: !1293)
!1356 = !DILocation(line: 499, column: 31, scope: !1293)
!1357 = !DILocation(line: 499, column: 42, scope: !1293)
!1358 = !DILocation(line: 499, column: 54, scope: !1293)
!1359 = !DILocation(line: 500, column: 10, scope: !1293)
!1360 = !DILocation(line: 499, column: 6, scope: !1293)
!1361 = !DILocation(line: 498, column: 9, scope: !1293)
!1362 = !DILocation(line: 501, column: 6, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 501, column: 6)
!1364 = !DILocation(line: 501, column: 6, scope: !1293)
!1365 = !DILocation(line: 502, column: 3, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 501, column: 28)
!1367 = !DILocation(line: 507, column: 30, scope: !1293)
!1368 = !DILocation(line: 507, column: 49, scope: !1293)
!1369 = !DILocation(line: 508, column: 9, scope: !1293)
!1370 = !DILocation(line: 508, column: 28, scope: !1293)
!1371 = !DILocation(line: 509, column: 9, scope: !1293)
!1372 = !DILocation(line: 509, column: 28, scope: !1293)
!1373 = !DILocation(line: 507, column: 11, scope: !1293)
!1374 = !DILocation(line: 507, column: 9, scope: !1293)
!1375 = !DILocation(line: 510, column: 6, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 510, column: 6)
!1377 = !DILocation(line: 510, column: 6, scope: !1293)
!1378 = !DILocation(line: 511, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 511, column: 7)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 510, column: 28)
!1381 = !DILocation(line: 511, column: 14, scope: !1379)
!1382 = !DILocation(line: 511, column: 7, scope: !1380)
!1383 = !DILocation(line: 512, column: 4, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 511, column: 31)
!1385 = !DILocation(line: 517, column: 3, scope: !1384)
!1386 = !DILocation(line: 518, column: 3, scope: !1380)
!1387 = !DILocation(line: 521, column: 35, scope: !1293)
!1388 = !DILocation(line: 521, column: 11, scope: !1293)
!1389 = !DILocation(line: 521, column: 9, scope: !1293)
!1390 = !DILocation(line: 522, column: 6, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 522, column: 6)
!1392 = !DILocation(line: 522, column: 6, scope: !1293)
!1393 = !DILocation(line: 523, column: 3, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 522, column: 28)
!1395 = !DILocation(line: 526, column: 41, scope: !1293)
!1396 = !DILocation(line: 526, column: 13, scope: !1293)
!1397 = !DILocation(line: 526, column: 11, scope: !1293)
!1398 = !DILocation(line: 527, column: 7, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 527, column: 6)
!1400 = !DILocation(line: 527, column: 6, scope: !1293)
!1401 = !DILocation(line: 528, column: 10, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 527, column: 17)
!1403 = !DILocation(line: 529, column: 3, scope: !1402)
!1404 = !DILocation(line: 532, column: 29, scope: !1293)
!1405 = !DILocation(line: 532, column: 2, scope: !1293)
!1406 = !DILocation(line: 532, column: 19, scope: !1293)
!1407 = !DILocation(line: 532, column: 27, scope: !1293)
!1408 = !DILocation(line: 533, column: 28, scope: !1293)
!1409 = !DILocation(line: 533, column: 35, scope: !1293)
!1410 = !DILocation(line: 533, column: 2, scope: !1293)
!1411 = !DILocation(line: 533, column: 19, scope: !1293)
!1412 = !DILocation(line: 533, column: 26, scope: !1293)
!1413 = !DILocation(line: 534, column: 29, scope: !1293)
!1414 = !DILocation(line: 534, column: 2, scope: !1293)
!1415 = !DILocation(line: 534, column: 19, scope: !1293)
!1416 = !DILocation(line: 534, column: 27, scope: !1293)
!1417 = !DILocation(line: 543, column: 2, scope: !1293)
!1418 = !DILocation(line: 543, column: 19, scope: !1293)
!1419 = !DILocation(line: 543, column: 25, scope: !1293)
!1420 = !DILocation(line: 545, column: 1, scope: !1293)
!1421 = !DILocation(line: 546, column: 27, scope: !1293)
!1422 = !DILocation(line: 546, column: 2, scope: !1293)
!1423 = !DILocation(line: 547, column: 27, scope: !1293)
!1424 = !DILocation(line: 547, column: 2, scope: !1293)
!1425 = !DILocation(line: 548, column: 27, scope: !1293)
!1426 = !DILocation(line: 548, column: 2, scope: !1293)
!1427 = !DILocation(line: 550, column: 2, scope: !1293)
!1428 = !DILocation(line: 551, column: 1, scope: !1293)
!1429 = !DISubprogram(name: "acpi_tb_find_table", scope: !1430, file: !1430, line: 64, type: !1431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1430 = !DIFile(filename: "drivers/acpi/acpica/actables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb0787ba059aac7511e633019dab5fb8")
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!16, !80, !80, !80, !1433}
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1434 = !DISubprogram(name: "acpi_get_table_by_index", scope: !987, file: !987, line: 495, type: !1435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!16, !18, !1437}
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1438 = distinct !DISubprogram(name: "acpi_ds_eval_data_object_operands", scope: !3, file: !3, line: 569, type: !1439, scopeLine: 572, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1441)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!16, !164, !198, !53}
!1441 = !{!1442, !1443, !1444, !1445, !1446, !1447}
!1442 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1438, file: !3, line: 569, type: !164)
!1443 = !DILocalVariable(name: "op", arg: 2, scope: !1438, file: !3, line: 570, type: !198)
!1444 = !DILocalVariable(name: "obj_desc", arg: 3, scope: !1438, file: !3, line: 571, type: !53)
!1445 = !DILocalVariable(name: "status", scope: !1438, file: !3, line: 573, type: !16)
!1446 = !DILocalVariable(name: "arg_desc", scope: !1438, file: !3, line: 574, type: !53)
!1447 = !DILocalVariable(name: "length", scope: !1438, file: !3, line: 575, type: !18)
!1448 = !DILocation(line: 569, column: 59, scope: !1438)
!1449 = !DILocation(line: 570, column: 32, scope: !1438)
!1450 = !DILocation(line: 571, column: 34, scope: !1438)
!1451 = !DILocation(line: 573, column: 2, scope: !1438)
!1452 = !DILocation(line: 573, column: 14, scope: !1438)
!1453 = !DILocation(line: 574, column: 2, scope: !1438)
!1454 = !DILocation(line: 574, column: 29, scope: !1438)
!1455 = !DILocation(line: 575, column: 2, scope: !1438)
!1456 = !DILocation(line: 575, column: 6, scope: !1438)
!1457 = !DILocation(line: 585, column: 30, scope: !1438)
!1458 = !DILocation(line: 585, column: 42, scope: !1438)
!1459 = !DILocation(line: 585, column: 2, scope: !1438)
!1460 = !DILocation(line: 585, column: 14, scope: !1438)
!1461 = !DILocation(line: 585, column: 28, scope: !1438)
!1462 = !DILocation(line: 589, column: 7, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 589, column: 6)
!1464 = !DILocation(line: 589, column: 18, scope: !1463)
!1465 = !DILocation(line: 589, column: 24, scope: !1463)
!1466 = !DILocation(line: 589, column: 6, scope: !1438)
!1467 = !DILocation(line: 590, column: 3, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 589, column: 29)
!1469 = !DILocation(line: 593, column: 3, scope: !1468)
!1470 = !DILocation(line: 596, column: 34, scope: !1438)
!1471 = !DILocation(line: 596, column: 46, scope: !1438)
!1472 = !DILocation(line: 596, column: 57, scope: !1438)
!1473 = !DILocation(line: 596, column: 63, scope: !1438)
!1474 = !DILocation(line: 596, column: 11, scope: !1438)
!1475 = !DILocation(line: 596, column: 9, scope: !1438)
!1476 = !DILocation(line: 597, column: 6, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 597, column: 6)
!1478 = !DILocation(line: 597, column: 6, scope: !1438)
!1479 = !DILocation(line: 598, column: 3, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 597, column: 28)
!1481 = !DILocation(line: 601, column: 36, scope: !1438)
!1482 = !DILocation(line: 601, column: 48, scope: !1438)
!1483 = !DILocation(line: 602, column: 10, scope: !1438)
!1484 = !DILocation(line: 603, column: 10, scope: !1438)
!1485 = !DILocation(line: 603, column: 19, scope: !1438)
!1486 = !DILocation(line: 603, column: 31, scope: !1438)
!1487 = !DILocation(line: 603, column: 44, scope: !1438)
!1488 = !DILocation(line: 604, column: 17, scope: !1438)
!1489 = !DILocation(line: 601, column: 11, scope: !1438)
!1490 = !DILocation(line: 601, column: 9, scope: !1438)
!1491 = !DILocation(line: 605, column: 6, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 605, column: 6)
!1493 = !DILocation(line: 605, column: 6, scope: !1438)
!1494 = !DILocation(line: 606, column: 3, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 605, column: 28)
!1496 = !DILocation(line: 611, column: 13, scope: !1438)
!1497 = !DILocation(line: 611, column: 25, scope: !1438)
!1498 = !DILocation(line: 611, column: 34, scope: !1438)
!1499 = !DILocation(line: 611, column: 46, scope: !1438)
!1500 = !DILocation(line: 611, column: 59, scope: !1438)
!1501 = !DILocation(line: 611, column: 11, scope: !1438)
!1502 = !DILocation(line: 612, column: 17, scope: !1438)
!1503 = !DILocation(line: 612, column: 35, scope: !1438)
!1504 = !DILocation(line: 612, column: 11, scope: !1438)
!1505 = !DILocation(line: 612, column: 9, scope: !1438)
!1506 = !DILocation(line: 616, column: 36, scope: !1438)
!1507 = !DILocation(line: 616, column: 11, scope: !1438)
!1508 = !DILocation(line: 616, column: 9, scope: !1438)
!1509 = !DILocation(line: 617, column: 6, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 617, column: 6)
!1511 = !DILocation(line: 617, column: 6, scope: !1438)
!1512 = !DILocation(line: 618, column: 3, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 617, column: 28)
!1514 = !DILocation(line: 621, column: 27, scope: !1438)
!1515 = !DILocation(line: 621, column: 2, scope: !1438)
!1516 = !DILocation(line: 626, column: 10, scope: !1438)
!1517 = !DILocation(line: 626, column: 21, scope: !1438)
!1518 = !DILocation(line: 626, column: 2, scope: !1438)
!1519 = !DILocation(line: 630, column: 41, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 626, column: 33)
!1521 = !DILocation(line: 630, column: 53, scope: !1520)
!1522 = !DILocation(line: 630, column: 57, scope: !1520)
!1523 = !DILocation(line: 630, column: 7, scope: !1520)
!1524 = !DILocation(line: 629, column: 10, scope: !1520)
!1525 = !DILocation(line: 632, column: 3, scope: !1520)
!1526 = !DILocation(line: 638, column: 42, scope: !1520)
!1527 = !DILocation(line: 638, column: 54, scope: !1520)
!1528 = !DILocation(line: 638, column: 58, scope: !1520)
!1529 = !DILocation(line: 638, column: 7, scope: !1520)
!1530 = !DILocation(line: 637, column: 10, scope: !1520)
!1531 = !DILocation(line: 640, column: 3, scope: !1520)
!1532 = !DILocation(line: 644, column: 3, scope: !1520)
!1533 = !DILocation(line: 647, column: 6, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 647, column: 6)
!1535 = !DILocation(line: 647, column: 6, scope: !1438)
!1536 = !DILocation(line: 653, column: 9, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 653, column: 7)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 647, column: 28)
!1539 = !DILocation(line: 653, column: 20, scope: !1537)
!1540 = !DILocation(line: 653, column: 28, scope: !1537)
!1541 = !DILocation(line: 654, column: 9, scope: !1537)
!1542 = !DILocation(line: 654, column: 20, scope: !1537)
!1543 = !DILocation(line: 654, column: 35, scope: !1537)
!1544 = !DILocation(line: 654, column: 46, scope: !1537)
!1545 = !DILocation(line: 654, column: 65, scope: !1537)
!1546 = !DILocation(line: 655, column: 9, scope: !1537)
!1547 = !DILocation(line: 655, column: 20, scope: !1537)
!1548 = !DILocation(line: 655, column: 35, scope: !1537)
!1549 = !DILocation(line: 655, column: 46, scope: !1537)
!1550 = !DILocation(line: 657, column: 8, scope: !1537)
!1551 = !DILocation(line: 657, column: 12, scope: !1537)
!1552 = !DILocation(line: 657, column: 23, scope: !1537)
!1553 = !DILocation(line: 657, column: 38, scope: !1537)
!1554 = !DILocation(line: 657, column: 49, scope: !1537)
!1555 = !DILocation(line: 653, column: 7, scope: !1538)
!1556 = !DILocation(line: 659, column: 29, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 658, column: 20)
!1558 = !DILocation(line: 659, column: 4, scope: !1557)
!1559 = !DILocation(line: 659, column: 16, scope: !1557)
!1560 = !DILocation(line: 659, column: 27, scope: !1557)
!1561 = !DILocation(line: 660, column: 3, scope: !1557)
!1562 = !DILocation(line: 661, column: 2, scope: !1538)
!1563 = !DILocation(line: 663, column: 2, scope: !1438)
!1564 = !DILocation(line: 664, column: 1, scope: !1438)
!1565 = !DISubprogram(name: "acpi_ds_create_operand", scope: !981, file: !981, line: 260, type: !1566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!16, !164, !198, !18}
!1568 = !DISubprogram(name: "acpi_ds_obj_stack_pop", scope: !981, file: !981, line: 292, type: !1569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!16, !18, !164}
!1571 = !DISubprogram(name: "acpi_ds_build_internal_buffer_obj", scope: !981, file: !981, line: 211, type: !1572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!16, !164, !198, !18, !129}
!1574 = !DISubprogram(name: "acpi_ds_build_internal_package_obj", scope: !981, file: !981, line: 217, type: !1572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1575 = distinct !DISubprogram(name: "acpi_ds_eval_bank_field_operands", scope: !3, file: !3, line: 681, type: !891, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1576)
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584}
!1577 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1575, file: !3, line: 681, type: !164)
!1578 = !DILocalVariable(name: "op", arg: 2, scope: !1575, file: !3, line: 682, type: !198)
!1579 = !DILocalVariable(name: "status", scope: !1575, file: !3, line: 684, type: !16)
!1580 = !DILocalVariable(name: "obj_desc", scope: !1575, file: !3, line: 685, type: !53)
!1581 = !DILocalVariable(name: "operand_desc", scope: !1575, file: !3, line: 686, type: !53)
!1582 = !DILocalVariable(name: "node", scope: !1575, file: !3, line: 687, type: !97)
!1583 = !DILocalVariable(name: "next_op", scope: !1575, file: !3, line: 688, type: !198)
!1584 = !DILocalVariable(name: "arg", scope: !1575, file: !3, line: 689, type: !198)
!1585 = !DILocation(line: 681, column: 58, scope: !1575)
!1586 = !DILocation(line: 682, column: 31, scope: !1575)
!1587 = !DILocation(line: 684, column: 2, scope: !1575)
!1588 = !DILocation(line: 684, column: 14, scope: !1575)
!1589 = !DILocation(line: 685, column: 2, scope: !1575)
!1590 = !DILocation(line: 685, column: 29, scope: !1575)
!1591 = !DILocation(line: 686, column: 2, scope: !1575)
!1592 = !DILocation(line: 686, column: 29, scope: !1575)
!1593 = !DILocation(line: 687, column: 2, scope: !1575)
!1594 = !DILocation(line: 687, column: 30, scope: !1575)
!1595 = !DILocation(line: 688, column: 2, scope: !1575)
!1596 = !DILocation(line: 688, column: 27, scope: !1575)
!1597 = !DILocation(line: 689, column: 2, scope: !1575)
!1598 = !DILocation(line: 689, column: 27, scope: !1575)
!1599 = !DILocation(line: 700, column: 12, scope: !1575)
!1600 = !DILocation(line: 700, column: 23, scope: !1575)
!1601 = !DILocation(line: 700, column: 29, scope: !1575)
!1602 = !DILocation(line: 700, column: 10, scope: !1575)
!1603 = !DILocation(line: 704, column: 12, scope: !1575)
!1604 = !DILocation(line: 704, column: 28, scope: !1575)
!1605 = !DILocation(line: 704, column: 10, scope: !1575)
!1606 = !DILocation(line: 708, column: 12, scope: !1575)
!1607 = !DILocation(line: 708, column: 28, scope: !1575)
!1608 = !DILocation(line: 708, column: 10, scope: !1575)
!1609 = !DILocation(line: 716, column: 2, scope: !1575)
!1610 = !DILocation(line: 716, column: 14, scope: !1575)
!1611 = !DILocation(line: 716, column: 28, scope: !1575)
!1612 = !DILocation(line: 718, column: 34, scope: !1575)
!1613 = !DILocation(line: 718, column: 46, scope: !1575)
!1614 = !DILocation(line: 718, column: 11, scope: !1575)
!1615 = !DILocation(line: 718, column: 9, scope: !1575)
!1616 = !DILocation(line: 719, column: 6, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 719, column: 6)
!1618 = !DILocation(line: 719, column: 6, scope: !1575)
!1619 = !DILocation(line: 720, column: 3, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 719, column: 28)
!1621 = !DILocation(line: 723, column: 37, scope: !1575)
!1622 = !DILocation(line: 723, column: 49, scope: !1575)
!1623 = !DILocation(line: 723, column: 62, scope: !1575)
!1624 = !DILocation(line: 723, column: 11, scope: !1575)
!1625 = !DILocation(line: 723, column: 9, scope: !1575)
!1626 = !DILocation(line: 724, column: 6, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 724, column: 6)
!1628 = !DILocation(line: 724, column: 6, scope: !1575)
!1629 = !DILocation(line: 725, column: 3, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 724, column: 28)
!1631 = !DILocation(line: 734, column: 17, scope: !1575)
!1632 = !DILocation(line: 734, column: 29, scope: !1575)
!1633 = !DILocation(line: 734, column: 15, scope: !1575)
!1634 = !DILocation(line: 738, column: 24, scope: !1575)
!1635 = !DILocation(line: 738, column: 8, scope: !1575)
!1636 = !DILocation(line: 738, column: 6, scope: !1575)
!1637 = !DILocation(line: 739, column: 2, scope: !1575)
!1638 = !DILocation(line: 739, column: 9, scope: !1575)
!1639 = !DILocation(line: 743, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 743, column: 7)
!1641 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 739, column: 14)
!1642 = !DILocation(line: 743, column: 19, scope: !1640)
!1643 = !DILocation(line: 743, column: 30, scope: !1640)
!1644 = !DILocation(line: 743, column: 7, scope: !1641)
!1645 = !DILocation(line: 744, column: 11, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 743, column: 56)
!1647 = !DILocation(line: 744, column: 23, scope: !1646)
!1648 = !DILocation(line: 744, column: 9, scope: !1646)
!1649 = !DILocation(line: 746, column: 43, scope: !1646)
!1650 = !DILocation(line: 746, column: 15, scope: !1646)
!1651 = !DILocation(line: 746, column: 13, scope: !1646)
!1652 = !DILocation(line: 747, column: 9, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 747, column: 8)
!1654 = !DILocation(line: 747, column: 8, scope: !1646)
!1655 = !DILocation(line: 748, column: 5, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 747, column: 19)
!1657 = !DILocation(line: 752, column: 14, scope: !1646)
!1658 = !DILocation(line: 752, column: 36, scope: !1646)
!1659 = !DILocation(line: 752, column: 8, scope: !1646)
!1660 = !DILocation(line: 751, column: 4, scope: !1646)
!1661 = !DILocation(line: 751, column: 25, scope: !1646)
!1662 = !DILocation(line: 751, column: 31, scope: !1646)
!1663 = !DILocation(line: 753, column: 3, scope: !1646)
!1664 = !DILocation(line: 757, column: 9, scope: !1641)
!1665 = !DILocation(line: 757, column: 21, scope: !1641)
!1666 = !DILocation(line: 757, column: 7, scope: !1641)
!1667 = distinct !{!1667, !1637, !1668, !1669, !1670}
!1668 = !DILocation(line: 758, column: 2, scope: !1575)
!1669 = !{!"llvm.loop.mustprogress"}
!1670 = !{!"llvm.loop.unroll.disable"}
!1671 = !DILocation(line: 760, column: 27, scope: !1575)
!1672 = !DILocation(line: 760, column: 2, scope: !1575)
!1673 = !DILocation(line: 761, column: 2, scope: !1575)
!1674 = !DILocation(line: 762, column: 1, scope: !1575)
!1675 = !DISubprogram(name: "acpi_ex_resolve_to_value", scope: !983, file: !983, line: 357, type: !1676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!16, !129, !164}
!1678 = !DISubprogram(name: "acpi_ps_get_arg", scope: !992, file: !992, line: 169, type: !1679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!198, !198, !18}
!1681 = !DISubprogram(name: "acpi_ut_get_object_type_name", scope: !1286, file: !1286, line: 233, type: !1682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!990, !53}
!1684 = !DISubprogram(name: "acpi_ut_get_descriptor_name", scope: !1286, file: !1286, line: 229, type: !1685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!990, !44}
!1687 = !DISubprogram(name: "acpi_bios_error", scope: !987, file: !987, line: 920, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1688 = !DISubprogram(name: "acpi_bios_exception", scope: !987, file: !987, line: 925, type: !1689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{null, !990, !18, !16, !990, null}
!1691 = !DISubprogram(name: "acpi_ut_get_node_name", scope: !1286, file: !1286, line: 227, type: !1685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1692 = !DISubprogram(name: "acpi_ex_prep_common_field_object", scope: !983, file: !983, line: 266, type: !1693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!16, !53, !26, !26, !18, !18}
