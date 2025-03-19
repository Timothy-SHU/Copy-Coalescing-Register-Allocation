; ModuleID = 'drivers/acpi/acpica/dsobject.c'
source_filename = "drivers/acpi/acpica/dsobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_scope_state = type { ptr, i8, i8, i16, i16, ptr }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_parse_obj_named = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8, ptr, ptr, i32, i32 }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }

@_acpi_module_name = internal constant [9 x i8] c"dsobject\00", align 1, !dbg !0
@.str = private unnamed_addr constant [51 x i8] c"Expecting bytelist, found AML opcode 0x%X in op %p\00", align 1, !dbg !820
@.str.1 = private unnamed_addr constant [29 x i8] c"Unknown constant opcode 0x%X\00", align 1, !dbg !825
@.str.2 = private unnamed_addr constant [69 x i8] c"Truncated 64-bit constant found in 32-bit table: %8.8X%8.8X => %8.8X\00", align 1, !dbg !830
@.str.3 = private unnamed_addr constant [26 x i8] c"Unknown Integer type 0x%X\00", align 1, !dbg !835
@.str.4 = private unnamed_addr constant [53 x i8] c"Unimplemented reference type for AML opcode: 0x%4.4X\00", align 1, !dbg !840
@.str.5 = private unnamed_addr constant [30 x i8] c"Unimplemented data type: 0x%X\00", align 1, !dbg !845
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !850

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_build_internal_object(ptr noundef %walk_state, ptr noundef %op, ptr noundef %obj_desc_ptr) #0 align 16 !dbg !866 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %obj_desc_ptr.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !870, metadata !DIExpression()), !dbg !876
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !871, metadata !DIExpression()), !dbg !877
  store ptr %obj_desc_ptr, ptr %obj_desc_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc_ptr.addr, metadata !872, metadata !DIExpression()), !dbg !878
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #14, !dbg !879
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !873, metadata !DIExpression()), !dbg !880
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !881
  call void @llvm.dbg.declare(metadata ptr %status, metadata !874, metadata !DIExpression()), !dbg !882
  %0 = load ptr, ptr %obj_desc_ptr.addr, align 8, !dbg !883
  store ptr null, ptr %0, align 8, !dbg !884
  %1 = load ptr, ptr %op.addr, align 8, !dbg !885
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %1, i32 0, i32 3, !dbg !887
  %2 = load i16, ptr %aml_opcode, align 2, !dbg !887
  %conv = zext i16 %2 to i32, !dbg !885
  %cmp = icmp eq i32 %conv, 45, !dbg !888
  br i1 %cmp, label %if.then, label %if.end20, !dbg !889

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %op.addr, align 8, !dbg !890
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %3, i32 0, i32 6, !dbg !893
  %4 = load ptr, ptr %node, align 8, !dbg !893
  %tobool = icmp ne ptr %4, null, !dbg !890
  br i1 %tobool, label %if.end19, label %if.then2, !dbg !894

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %op.addr, align 8, !dbg !895
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %5, i32 0, i32 0, !dbg !898
  %6 = load ptr, ptr %parent, align 8, !dbg !898
  %aml_opcode3 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %6, i32 0, i32 3, !dbg !899
  %7 = load i16, ptr %aml_opcode3, align 2, !dbg !899
  %conv4 = zext i16 %7 to i32, !dbg !895
  %cmp5 = icmp eq i32 %conv4, 18, !dbg !900
  br i1 %cmp5, label %if.then12, label %lor.lhs.false, !dbg !901

lor.lhs.false:                                    ; preds = %if.then2
  %8 = load ptr, ptr %op.addr, align 8, !dbg !902
  %parent7 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %8, i32 0, i32 0, !dbg !903
  %9 = load ptr, ptr %parent7, align 8, !dbg !903
  %aml_opcode8 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %9, i32 0, i32 3, !dbg !904
  %10 = load i16, ptr %aml_opcode8, align 2, !dbg !904
  %conv9 = zext i16 %10 to i32, !dbg !902
  %cmp10 = icmp eq i32 %conv9, 19, !dbg !905
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !906

if.then12:                                        ; preds = %lor.lhs.false, %if.then2
  br label %create_new_object, !dbg !907

if.else:                                          ; preds = %lor.lhs.false
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !909
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 46, !dbg !911
  %12 = load ptr, ptr %scope_info, align 8, !dbg !911
  %13 = load ptr, ptr %op.addr, align 8, !dbg !912
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %13, i32 0, i32 7, !dbg !913
  %14 = load ptr, ptr %value, align 8, !dbg !914
  %15 = load ptr, ptr %op.addr, align 8, !dbg !915
  %node13 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %15, i32 0, i32 6, !dbg !915
  %16 = ptrtoint ptr %node13 to i64, !dbg !915
  %17 = inttoptr i64 %16 to ptr, !dbg !915
  %call = call i32 @acpi_ns_lookup(ptr noundef %12, ptr noundef %14, i32 noundef 0, i32 noundef 3, i32 noundef 3, ptr noundef null, ptr noundef %17) #15, !dbg !916
  store i32 %call, ptr %status, align 4, !dbg !917
  %18 = load i32, ptr %status, align 4, !dbg !918
  %tobool14 = icmp ne i32 %18, 0, !dbg !918
  br i1 %tobool14, label %if.then15, label %if.end, !dbg !920

if.then15:                                        ; preds = %if.else
  %19 = load ptr, ptr %walk_state.addr, align 8, !dbg !921
  %scope_info16 = getelementptr inbounds %struct.acpi_walk_state, ptr %19, i32 0, i32 46, !dbg !921
  %20 = load ptr, ptr %scope_info16, align 8, !dbg !921
  %21 = load ptr, ptr %op.addr, align 8, !dbg !921
  %value17 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %21, i32 0, i32 7, !dbg !921
  %22 = load ptr, ptr %value17, align 8, !dbg !921
  %23 = load i32, ptr %status, align 4, !dbg !921
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 83, ptr noundef %20, ptr noundef %22, i32 noundef %23) #15, !dbg !921
  %24 = load i32, ptr %status, align 4, !dbg !923
  store i32 %24, ptr %retval, align 4, !dbg !923
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !923

if.end:                                           ; preds = %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end
  br label %if.end19, !dbg !924

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !925

if.end20:                                         ; preds = %if.end19, %entry
  br label %create_new_object, !dbg !926

create_new_object:                                ; preds = %if.end20, %if.then12
  call void @llvm.dbg.label(metadata !875), !dbg !927
  %25 = load ptr, ptr %op.addr, align 8, !dbg !928
  %aml_opcode21 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %25, i32 0, i32 3, !dbg !928
  %26 = load i16, ptr %aml_opcode21, align 2, !dbg !928
  %call22 = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %26) #15, !dbg !928
  %object_type = getelementptr inbounds %struct.acpi_opcode_info, ptr %call22, i32 0, i32 3, !dbg !928
  %27 = load i8, ptr %object_type, align 2, !dbg !928
  %conv23 = zext i8 %27 to i32, !dbg !928
  %call24 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 96, i32 noundef 64, i32 noundef %conv23) #15, !dbg !928
  store ptr %call24, ptr %obj_desc, align 8, !dbg !929
  %28 = load ptr, ptr %obj_desc, align 8, !dbg !930
  %tobool25 = icmp ne ptr %28, null, !dbg !930
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !932

if.then26:                                        ; preds = %create_new_object
  store i32 4, ptr %retval, align 4, !dbg !933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !933

if.end27:                                         ; preds = %create_new_object
  %29 = load ptr, ptr %walk_state.addr, align 8, !dbg !935
  %30 = load ptr, ptr %op.addr, align 8, !dbg !936
  %31 = load ptr, ptr %op.addr, align 8, !dbg !937
  %aml_opcode28 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %31, i32 0, i32 3, !dbg !938
  %32 = load i16, ptr %aml_opcode28, align 2, !dbg !938
  %call29 = call i32 @acpi_ds_init_object_from_op(ptr noundef %29, ptr noundef %30, i16 noundef zeroext %32, ptr noundef %obj_desc) #15, !dbg !939
  store i32 %call29, ptr %status, align 4, !dbg !940
  %33 = load i32, ptr %status, align 4, !dbg !941
  %tobool30 = icmp ne i32 %33, 0, !dbg !941
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !943

if.then31:                                        ; preds = %if.end27
  %34 = load ptr, ptr %obj_desc, align 8, !dbg !944
  call void @acpi_ut_remove_reference(ptr noundef %34) #15, !dbg !946
  %35 = load i32, ptr %status, align 4, !dbg !947
  store i32 %35, ptr %retval, align 4, !dbg !947
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !947

if.end32:                                         ; preds = %if.end27
  %36 = load ptr, ptr %op.addr, align 8, !dbg !948
  %parent33 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %36, i32 0, i32 0, !dbg !950
  %37 = load ptr, ptr %parent33, align 8, !dbg !950
  %aml_opcode34 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %37, i32 0, i32 3, !dbg !951
  %38 = load i16, ptr %aml_opcode34, align 2, !dbg !951
  %conv35 = zext i16 %38 to i32, !dbg !948
  %cmp36 = icmp eq i32 %conv35, 18, !dbg !952
  br i1 %cmp36, label %if.then44, label %lor.lhs.false38, !dbg !953

lor.lhs.false38:                                  ; preds = %if.end32
  %39 = load ptr, ptr %op.addr, align 8, !dbg !954
  %parent39 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %39, i32 0, i32 0, !dbg !955
  %40 = load ptr, ptr %parent39, align 8, !dbg !955
  %aml_opcode40 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %40, i32 0, i32 3, !dbg !956
  %41 = load i16, ptr %aml_opcode40, align 2, !dbg !956
  %conv41 = zext i16 %41 to i32, !dbg !954
  %cmp42 = icmp eq i32 %conv41, 19, !dbg !957
  br i1 %cmp42, label %if.then44, label %if.end58, !dbg !958

if.then44:                                        ; preds = %lor.lhs.false38, %if.end32
  %42 = load ptr, ptr %obj_desc, align 8, !dbg !959
  %resolved = getelementptr inbounds %struct.acpi_object_reference, ptr %42, i32 0, i32 7, !dbg !961
  store i8 1, ptr %resolved, align 1, !dbg !962
  %43 = load ptr, ptr %op.addr, align 8, !dbg !963
  %aml_opcode45 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %43, i32 0, i32 3, !dbg !965
  %44 = load i16, ptr %aml_opcode45, align 2, !dbg !965
  %conv46 = zext i16 %44 to i32, !dbg !963
  %cmp47 = icmp eq i32 %conv46, 45, !dbg !966
  br i1 %cmp47, label %land.lhs.true, label %if.end57, !dbg !967

land.lhs.true:                                    ; preds = %if.then44
  %45 = load ptr, ptr %obj_desc, align 8, !dbg !968
  %node49 = getelementptr inbounds %struct.acpi_object_reference, ptr %45, i32 0, i32 9, !dbg !969
  %46 = load ptr, ptr %node49, align 8, !dbg !969
  %tobool50 = icmp ne ptr %46, null, !dbg !968
  br i1 %tobool50, label %if.end57, label %if.then51, !dbg !970

if.then51:                                        ; preds = %land.lhs.true
  %47 = load ptr, ptr %walk_state.addr, align 8, !dbg !971
  %scope_info52 = getelementptr inbounds %struct.acpi_walk_state, ptr %47, i32 0, i32 46, !dbg !973
  %48 = load ptr, ptr %scope_info52, align 8, !dbg !973
  %node53 = getelementptr inbounds %struct.acpi_scope_state, ptr %48, i32 0, i32 5, !dbg !974
  %49 = load ptr, ptr %node53, align 8, !dbg !974
  %50 = load ptr, ptr %obj_desc, align 8, !dbg !975
  %node54 = getelementptr inbounds %struct.acpi_object_reference, ptr %50, i32 0, i32 9, !dbg !976
  store ptr %49, ptr %node54, align 8, !dbg !977
  %51 = load ptr, ptr %op.addr, align 8, !dbg !978
  %aml = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %51, i32 0, i32 4, !dbg !979
  %52 = load ptr, ptr %aml, align 8, !dbg !979
  %53 = load ptr, ptr %obj_desc, align 8, !dbg !980
  %aml55 = getelementptr inbounds %struct.acpi_object_reference, ptr %53, i32 0, i32 12, !dbg !981
  store ptr %52, ptr %aml55, align 8, !dbg !982
  %54 = load ptr, ptr %obj_desc, align 8, !dbg !983
  %resolved56 = getelementptr inbounds %struct.acpi_object_reference, ptr %54, i32 0, i32 7, !dbg !984
  store i8 0, ptr %resolved56, align 1, !dbg !985
  br label %if.end57, !dbg !986

if.end57:                                         ; preds = %if.then51, %land.lhs.true, %if.then44
  br label %if.end58, !dbg !987

if.end58:                                         ; preds = %if.end57, %lor.lhs.false38
  %55 = load ptr, ptr %obj_desc, align 8, !dbg !988
  %56 = load ptr, ptr %obj_desc_ptr.addr, align 8, !dbg !989
  store ptr %55, ptr %56, align 8, !dbg !990
  %57 = load i32, ptr %status, align 4, !dbg !991
  store i32 %57, ptr %retval, align 4, !dbg !991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !991

cleanup:                                          ; preds = %if.end58, %if.then31, %if.then26, %if.then15
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !992
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #14, !dbg !992
  %58 = load i32, ptr %retval, align 4, !dbg !992
  ret i32 %58, !dbg !992
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !993 dso_local i32 @acpi_ns_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !999 dso_local void @acpi_ut_prefixed_namespace_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1004 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1007 dso_local ptr @acpi_ps_get_opcode_info(i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_init_object_from_op(ptr noundef %walk_state, ptr noundef %op, i16 noundef zeroext %opcode, ptr noundef %ret_obj_desc) #0 align 16 !dbg !1011 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %opcode.addr = alloca i16, align 2
  %ret_obj_desc.addr = alloca ptr, align 8
  %op_info = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1015, metadata !DIExpression()), !dbg !1022
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1016, metadata !DIExpression()), !dbg !1023
  store i16 %opcode, ptr %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !1017, metadata !DIExpression()), !dbg !1024
  store ptr %ret_obj_desc, ptr %ret_obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_obj_desc.addr, metadata !1018, metadata !DIExpression()), !dbg !1025
  call void @llvm.lifetime.start.p0(i64 8, ptr %op_info) #14, !dbg !1026
  call void @llvm.dbg.declare(metadata ptr %op_info, metadata !1019, metadata !DIExpression()), !dbg !1027
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #14, !dbg !1028
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1020, metadata !DIExpression()), !dbg !1029
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !1030
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1021, metadata !DIExpression()), !dbg !1031
  store i32 0, ptr %status, align 4, !dbg !1031
  %0 = load ptr, ptr %ret_obj_desc.addr, align 8, !dbg !1032
  %1 = load ptr, ptr %0, align 8, !dbg !1033
  store ptr %1, ptr %obj_desc, align 8, !dbg !1034
  %2 = load i16, ptr %opcode.addr, align 2, !dbg !1035
  %call = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %2) #15, !dbg !1036
  store ptr %call, ptr %op_info, align 8, !dbg !1037
  %3 = load ptr, ptr %op_info, align 8, !dbg !1038
  %class = getelementptr inbounds %struct.acpi_opcode_info, ptr %3, i32 0, i32 4, !dbg !1040
  %4 = load i8, ptr %class, align 1, !dbg !1040
  %conv = zext i8 %4 to i32, !dbg !1038
  %cmp = icmp eq i32 %conv, 10, !dbg !1041
  br i1 %cmp, label %if.then, label %if.end, !dbg !1042

if.then:                                          ; preds = %entry
  store i32 8, ptr %retval, align 4, !dbg !1043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1043

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !1045
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %5, i32 0, i32 2, !dbg !1046
  %6 = load i8, ptr %type, align 1, !dbg !1046
  %conv2 = zext i8 %6 to i32, !dbg !1045
  switch i32 %conv2, label %sw.default90 [
    i32 3, label %sw.bb
    i32 4, label %sw.bb3
    i32 1, label %sw.bb14
    i32 2, label %sw.bb45
    i32 8, label %sw.epilog93
    i32 20, label %sw.bb54
  ], !dbg !1047

sw.bb:                                            ; preds = %if.end
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !1048
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 28, !dbg !1048
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !1048
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !1048
  %9 = ptrtoint ptr %8 to i64, !dbg !1048
  %10 = inttoptr i64 %9 to ptr, !dbg !1048
  %11 = load ptr, ptr %obj_desc, align 8, !dbg !1050
  %node = getelementptr inbounds %struct.acpi_object_buffer, ptr %11, i32 0, i32 9, !dbg !1051
  store ptr %10, ptr %node, align 8, !dbg !1052
  %12 = load ptr, ptr %op.addr, align 8, !dbg !1053
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %12, i32 0, i32 10, !dbg !1054
  %13 = load ptr, ptr %data, align 8, !dbg !1054
  %14 = load ptr, ptr %obj_desc, align 8, !dbg !1055
  %aml_start = getelementptr inbounds %struct.acpi_object_buffer, ptr %14, i32 0, i32 8, !dbg !1056
  store ptr %13, ptr %aml_start, align 8, !dbg !1057
  %15 = load ptr, ptr %op.addr, align 8, !dbg !1058
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %15, i32 0, i32 11, !dbg !1059
  %16 = load i32, ptr %length, align 8, !dbg !1059
  %17 = load ptr, ptr %obj_desc, align 8, !dbg !1060
  %aml_length = getelementptr inbounds %struct.acpi_object_buffer, ptr %17, i32 0, i32 7, !dbg !1061
  store i32 %16, ptr %aml_length, align 4, !dbg !1062
  br label %sw.epilog93, !dbg !1063

sw.bb3:                                           ; preds = %if.end
  %18 = load ptr, ptr %walk_state.addr, align 8, !dbg !1064
  %operands4 = getelementptr inbounds %struct.acpi_walk_state, ptr %18, i32 0, i32 28, !dbg !1064
  %arrayidx5 = getelementptr [9 x ptr], ptr %operands4, i64 0, i64 0, !dbg !1064
  %19 = load ptr, ptr %arrayidx5, align 8, !dbg !1064
  %20 = ptrtoint ptr %19 to i64, !dbg !1064
  %21 = inttoptr i64 %20 to ptr, !dbg !1064
  %22 = load ptr, ptr %obj_desc, align 8, !dbg !1065
  %node6 = getelementptr inbounds %struct.acpi_object_package, ptr %22, i32 0, i32 5, !dbg !1066
  store ptr %21, ptr %node6, align 8, !dbg !1067
  %23 = load ptr, ptr %op.addr, align 8, !dbg !1068
  %data7 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %23, i32 0, i32 10, !dbg !1070
  %24 = load ptr, ptr %data7, align 8, !dbg !1070
  %tobool = icmp ne ptr %24, null, !dbg !1068
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !1071

if.then8:                                         ; preds = %sw.bb3
  store i32 0, ptr %retval, align 4, !dbg !1072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1072

if.end9:                                          ; preds = %sw.bb3
  %25 = load ptr, ptr %op.addr, align 8, !dbg !1074
  %data10 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %25, i32 0, i32 10, !dbg !1075
  %26 = load ptr, ptr %data10, align 8, !dbg !1075
  %27 = load ptr, ptr %obj_desc, align 8, !dbg !1076
  %aml_start11 = getelementptr inbounds %struct.acpi_object_package, ptr %27, i32 0, i32 7, !dbg !1077
  store ptr %26, ptr %aml_start11, align 8, !dbg !1078
  %28 = load ptr, ptr %op.addr, align 8, !dbg !1079
  %length12 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %28, i32 0, i32 11, !dbg !1080
  %29 = load i32, ptr %length12, align 8, !dbg !1080
  %30 = load ptr, ptr %obj_desc, align 8, !dbg !1081
  %aml_length13 = getelementptr inbounds %struct.acpi_object_package, ptr %30, i32 0, i32 8, !dbg !1082
  store i32 %29, ptr %aml_length13, align 8, !dbg !1083
  br label %sw.epilog93, !dbg !1084

sw.bb14:                                          ; preds = %if.end
  %31 = load ptr, ptr %op_info, align 8, !dbg !1085
  %type15 = getelementptr inbounds %struct.acpi_opcode_info, ptr %31, i32 0, i32 5, !dbg !1086
  %32 = load i8, ptr %type15, align 4, !dbg !1086
  %conv16 = zext i8 %32 to i32, !dbg !1085
  switch i32 %conv16, label %sw.default41 [
    i32 13, label %sw.bb17
    i32 12, label %sw.bb28
  ], !dbg !1087

sw.bb17:                                          ; preds = %sw.bb14
  %33 = load ptr, ptr %obj_desc, align 8, !dbg !1088
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %33, i32 0, i32 4, !dbg !1090
  store i8 1, ptr %flags, align 4, !dbg !1091
  %34 = load i16, ptr %opcode.addr, align 2, !dbg !1092
  %conv18 = zext i16 %34 to i32, !dbg !1092
  switch i32 %conv18, label %sw.default [
    i32 0, label %sw.bb19
    i32 1, label %sw.bb20
    i32 255, label %sw.bb22
    i32 23344, label %sw.bb25
  ], !dbg !1093

sw.bb19:                                          ; preds = %sw.bb17
  %35 = load ptr, ptr %obj_desc, align 8, !dbg !1094
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %35, i32 0, i32 6, !dbg !1096
  store i64 0, ptr %value, align 8, !dbg !1097
  br label %sw.epilog, !dbg !1098

sw.bb20:                                          ; preds = %sw.bb17
  %36 = load ptr, ptr %obj_desc, align 8, !dbg !1099
  %value21 = getelementptr inbounds %struct.acpi_object_integer, ptr %36, i32 0, i32 6, !dbg !1100
  store i64 1, ptr %value21, align 8, !dbg !1101
  br label %sw.epilog, !dbg !1102

sw.bb22:                                          ; preds = %sw.bb17
  %37 = load ptr, ptr %obj_desc, align 8, !dbg !1103
  %value23 = getelementptr inbounds %struct.acpi_object_integer, ptr %37, i32 0, i32 6, !dbg !1104
  store i64 -1, ptr %value23, align 8, !dbg !1105
  %38 = load ptr, ptr %obj_desc, align 8, !dbg !1106
  %call24 = call zeroext i8 @acpi_ex_truncate_for32bit_table(ptr noundef %38) #15, !dbg !1107
  br label %sw.epilog, !dbg !1108

sw.bb25:                                          ; preds = %sw.bb17
  %39 = load ptr, ptr %obj_desc, align 8, !dbg !1109
  %value26 = getelementptr inbounds %struct.acpi_object_integer, ptr %39, i32 0, i32 6, !dbg !1110
  store i64 539166248, ptr %value26, align 8, !dbg !1111
  br label %sw.epilog, !dbg !1112

sw.default:                                       ; preds = %sw.bb17
  %40 = load i16, ptr %opcode.addr, align 2, !dbg !1113
  %conv27 = zext i16 %40 to i32, !dbg !1113
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 414, ptr noundef @.str.1, i32 noundef %conv27) #15, !dbg !1113
  store i32 12291, ptr %status, align 4, !dbg !1114
  br label %sw.epilog, !dbg !1115

sw.epilog:                                        ; preds = %sw.default, %sw.bb25, %sw.bb22, %sw.bb20, %sw.bb19
  br label %sw.epilog44, !dbg !1116

sw.bb28:                                          ; preds = %sw.bb14
  %41 = load ptr, ptr %op.addr, align 8, !dbg !1117
  %value29 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %41, i32 0, i32 7, !dbg !1118
  %42 = load i64, ptr %value29, align 8, !dbg !1119
  %43 = load ptr, ptr %obj_desc, align 8, !dbg !1120
  %value30 = getelementptr inbounds %struct.acpi_object_integer, ptr %43, i32 0, i32 6, !dbg !1121
  store i64 %42, ptr %value30, align 8, !dbg !1122
  %44 = load ptr, ptr %obj_desc, align 8, !dbg !1123
  %call31 = call zeroext i8 @acpi_ex_truncate_for32bit_table(ptr noundef %44) #15, !dbg !1125
  %tobool32 = icmp ne i8 %call31, 0, !dbg !1125
  br i1 %tobool32, label %if.then33, label %if.end40, !dbg !1126

if.then33:                                        ; preds = %sw.bb28
  %45 = load ptr, ptr %op.addr, align 8, !dbg !1127
  %value34 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %45, i32 0, i32 7, !dbg !1127
  %46 = load i64, ptr %value34, align 8, !dbg !1127
  %shr = lshr i64 %46, 32, !dbg !1127
  %conv35 = trunc i64 %shr to i32, !dbg !1127
  %47 = load ptr, ptr %op.addr, align 8, !dbg !1127
  %value36 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %47, i32 0, i32 7, !dbg !1127
  %48 = load i64, ptr %value36, align 8, !dbg !1127
  %conv37 = trunc i64 %48 to i32, !dbg !1127
  %49 = load ptr, ptr %obj_desc, align 8, !dbg !1127
  %value38 = getelementptr inbounds %struct.acpi_object_integer, ptr %49, i32 0, i32 6, !dbg !1127
  %50 = load i64, ptr %value38, align 8, !dbg !1127
  %conv39 = trunc i64 %50 to i32, !dbg !1127
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 430, ptr noundef @.str.2, i32 noundef %conv35, i32 noundef %conv37, i32 noundef %conv39) #15, !dbg !1127
  br label %if.end40, !dbg !1129

if.end40:                                         ; preds = %if.then33, %sw.bb28
  br label %sw.epilog44, !dbg !1130

sw.default41:                                     ; preds = %sw.bb14
  %51 = load ptr, ptr %op_info, align 8, !dbg !1131
  %type42 = getelementptr inbounds %struct.acpi_opcode_info, ptr %51, i32 0, i32 5, !dbg !1131
  %52 = load i8, ptr %type42, align 4, !dbg !1131
  %conv43 = zext i8 %52 to i32, !dbg !1131
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 440, ptr noundef @.str.3, i32 noundef %conv43) #15, !dbg !1131
  store i32 12291, ptr %status, align 4, !dbg !1132
  br label %sw.epilog44, !dbg !1133

sw.epilog44:                                      ; preds = %sw.default41, %if.end40, %sw.epilog
  br label %sw.epilog93, !dbg !1134

sw.bb45:                                          ; preds = %if.end
  %53 = load ptr, ptr %op.addr, align 8, !dbg !1135
  %value46 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %53, i32 0, i32 7, !dbg !1136
  %54 = load ptr, ptr %value46, align 8, !dbg !1137
  %55 = load ptr, ptr %obj_desc, align 8, !dbg !1138
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %55, i32 0, i32 5, !dbg !1139
  store ptr %54, ptr %pointer, align 8, !dbg !1140
  %56 = load ptr, ptr %op.addr, align 8, !dbg !1141
  %value47 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %56, i32 0, i32 7, !dbg !1142
  %57 = load ptr, ptr %value47, align 8, !dbg !1143
  %call48 = call i64 @strlen(ptr noundef %57) #15, !dbg !1144
  %conv49 = trunc i64 %call48 to i32, !dbg !1145
  %58 = load ptr, ptr %obj_desc, align 8, !dbg !1146
  %length50 = getelementptr inbounds %struct.acpi_object_string, ptr %58, i32 0, i32 6, !dbg !1147
  store i32 %conv49, ptr %length50, align 8, !dbg !1148
  %59 = load ptr, ptr %obj_desc, align 8, !dbg !1149
  %flags51 = getelementptr inbounds %struct.acpi_object_common, ptr %59, i32 0, i32 4, !dbg !1150
  %60 = load i8, ptr %flags51, align 4, !dbg !1151
  %conv52 = zext i8 %60 to i32, !dbg !1151
  %or = or i32 %conv52, 2, !dbg !1151
  %conv53 = trunc i32 %or to i8, !dbg !1151
  store i8 %conv53, ptr %flags51, align 4, !dbg !1151
  br label %sw.epilog93, !dbg !1152

sw.bb54:                                          ; preds = %if.end
  %61 = load ptr, ptr %op_info, align 8, !dbg !1153
  %type55 = getelementptr inbounds %struct.acpi_opcode_info, ptr %61, i32 0, i32 5, !dbg !1154
  %62 = load i8, ptr %type55, align 4, !dbg !1154
  %conv56 = zext i8 %62 to i32, !dbg !1153
  switch i32 %conv56, label %sw.default71 [
    i32 15, label %sw.bb57
    i32 14, label %sw.bb63
  ], !dbg !1155

sw.bb57:                                          ; preds = %sw.bb54
  %63 = load i16, ptr %opcode.addr, align 2, !dbg !1156
  %conv58 = zext i16 %63 to i32, !dbg !1158
  %sub = sub i32 %conv58, 96, !dbg !1159
  %64 = load ptr, ptr %obj_desc, align 8, !dbg !1160
  %value59 = getelementptr inbounds %struct.acpi_object_reference, ptr %64, i32 0, i32 13, !dbg !1161
  store i32 %sub, ptr %value59, align 8, !dbg !1162
  %65 = load ptr, ptr %obj_desc, align 8, !dbg !1163
  %class60 = getelementptr inbounds %struct.acpi_object_reference, ptr %65, i32 0, i32 5, !dbg !1164
  store i8 0, ptr %class60, align 1, !dbg !1165
  %66 = load ptr, ptr %obj_desc, align 8, !dbg !1166
  %value61 = getelementptr inbounds %struct.acpi_object_reference, ptr %66, i32 0, i32 13, !dbg !1167
  %67 = load i32, ptr %value61, align 8, !dbg !1167
  %68 = load ptr, ptr %walk_state.addr, align 8, !dbg !1168
  %69 = load ptr, ptr %obj_desc, align 8, !dbg !1169
  %object = getelementptr inbounds %struct.acpi_object_reference, ptr %69, i32 0, i32 8, !dbg !1169
  %70 = ptrtoint ptr %object to i64, !dbg !1169
  %71 = inttoptr i64 %70 to ptr, !dbg !1169
  %call62 = call i32 @acpi_ds_method_data_get_node(i8 noundef zeroext 0, i32 noundef %67, ptr noundef %68, ptr noundef %71) #15, !dbg !1170
  store i32 %call62, ptr %status, align 4, !dbg !1171
  br label %sw.epilog89, !dbg !1172

sw.bb63:                                          ; preds = %sw.bb54
  %72 = load i16, ptr %opcode.addr, align 2, !dbg !1173
  %conv64 = zext i16 %72 to i32, !dbg !1174
  %sub65 = sub i32 %conv64, 104, !dbg !1175
  %73 = load ptr, ptr %obj_desc, align 8, !dbg !1176
  %value66 = getelementptr inbounds %struct.acpi_object_reference, ptr %73, i32 0, i32 13, !dbg !1177
  store i32 %sub65, ptr %value66, align 8, !dbg !1178
  %74 = load ptr, ptr %obj_desc, align 8, !dbg !1179
  %class67 = getelementptr inbounds %struct.acpi_object_reference, ptr %74, i32 0, i32 5, !dbg !1180
  store i8 1, ptr %class67, align 1, !dbg !1181
  %75 = load ptr, ptr %obj_desc, align 8, !dbg !1182
  %value68 = getelementptr inbounds %struct.acpi_object_reference, ptr %75, i32 0, i32 13, !dbg !1183
  %76 = load i32, ptr %value68, align 8, !dbg !1183
  %77 = load ptr, ptr %walk_state.addr, align 8, !dbg !1184
  %78 = load ptr, ptr %obj_desc, align 8, !dbg !1185
  %object69 = getelementptr inbounds %struct.acpi_object_reference, ptr %78, i32 0, i32 8, !dbg !1185
  %79 = ptrtoint ptr %object69 to i64, !dbg !1185
  %80 = inttoptr i64 %79 to ptr, !dbg !1185
  %call70 = call i32 @acpi_ds_method_data_get_node(i8 noundef zeroext 1, i32 noundef %76, ptr noundef %77, ptr noundef %80) #15, !dbg !1186
  store i32 %call70, ptr %status, align 4, !dbg !1187
  br label %sw.epilog89, !dbg !1188

sw.default71:                                     ; preds = %sw.bb54
  %81 = load ptr, ptr %op.addr, align 8, !dbg !1189
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %81, i32 0, i32 3, !dbg !1190
  %82 = load i16, ptr %aml_opcode, align 2, !dbg !1190
  %conv72 = zext i16 %82 to i32, !dbg !1189
  switch i32 %conv72, label %sw.default86 [
    i32 45, label %sw.bb73
    i32 23345, label %sw.bb84
  ], !dbg !1191

sw.bb73:                                          ; preds = %sw.default71
  %83 = load ptr, ptr %op.addr, align 8, !dbg !1192
  %node74 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %83, i32 0, i32 6, !dbg !1194
  %84 = load ptr, ptr %node74, align 8, !dbg !1194
  %85 = load ptr, ptr %obj_desc, align 8, !dbg !1195
  %node75 = getelementptr inbounds %struct.acpi_object_reference, ptr %85, i32 0, i32 9, !dbg !1196
  store ptr %84, ptr %node75, align 8, !dbg !1197
  %86 = load ptr, ptr %obj_desc, align 8, !dbg !1198
  %class76 = getelementptr inbounds %struct.acpi_object_reference, ptr %86, i32 0, i32 5, !dbg !1199
  store i8 5, ptr %class76, align 1, !dbg !1200
  %87 = load ptr, ptr %op.addr, align 8, !dbg !1201
  %node77 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %87, i32 0, i32 6, !dbg !1203
  %88 = load ptr, ptr %node77, align 8, !dbg !1203
  %tobool78 = icmp ne ptr %88, null, !dbg !1201
  br i1 %tobool78, label %if.then79, label %if.end83, !dbg !1204

if.then79:                                        ; preds = %sw.bb73
  %89 = load ptr, ptr %op.addr, align 8, !dbg !1205
  %node80 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %89, i32 0, i32 6, !dbg !1207
  %90 = load ptr, ptr %node80, align 8, !dbg !1207
  %object81 = getelementptr inbounds %struct.acpi_namespace_node, ptr %90, i32 0, i32 0, !dbg !1208
  %91 = load ptr, ptr %object81, align 8, !dbg !1208
  %92 = load ptr, ptr %obj_desc, align 8, !dbg !1209
  %object82 = getelementptr inbounds %struct.acpi_object_reference, ptr %92, i32 0, i32 8, !dbg !1210
  store ptr %91, ptr %object82, align 8, !dbg !1211
  br label %if.end83, !dbg !1212

if.end83:                                         ; preds = %if.then79, %sw.bb73
  br label %sw.epilog88, !dbg !1213

sw.bb84:                                          ; preds = %sw.default71
  %93 = load ptr, ptr %obj_desc, align 8, !dbg !1214
  %class85 = getelementptr inbounds %struct.acpi_object_reference, ptr %93, i32 0, i32 5, !dbg !1215
  store i8 6, ptr %class85, align 1, !dbg !1216
  br label %sw.epilog88, !dbg !1217

sw.default86:                                     ; preds = %sw.default71
  %94 = load i16, ptr %opcode.addr, align 2, !dbg !1218
  %conv87 = zext i16 %94 to i32, !dbg !1218
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 526, ptr noundef @.str.4, i32 noundef %conv87) #15, !dbg !1218
  store i32 12291, ptr %retval, align 4, !dbg !1219
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1219

sw.epilog88:                                      ; preds = %sw.bb84, %if.end83
  br label %sw.epilog89, !dbg !1220

sw.epilog89:                                      ; preds = %sw.epilog88, %sw.bb63, %sw.bb57
  br label %sw.epilog93, !dbg !1221

sw.default90:                                     ; preds = %if.end
  %95 = load ptr, ptr %obj_desc, align 8, !dbg !1222
  %type91 = getelementptr inbounds %struct.acpi_object_common, ptr %95, i32 0, i32 2, !dbg !1222
  %96 = load i8, ptr %type91, align 1, !dbg !1222
  %conv92 = zext i8 %96 to i32, !dbg !1222
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 537, ptr noundef @.str.5, i32 noundef %conv92) #15, !dbg !1222
  store i32 12291, ptr %status, align 4, !dbg !1223
  br label %sw.epilog93, !dbg !1224

sw.epilog93:                                      ; preds = %sw.default90, %sw.epilog89, %if.end, %sw.bb45, %sw.epilog44, %if.end9, %sw.bb
  %97 = load i32, ptr %status, align 4, !dbg !1225
  store i32 %97, ptr %retval, align 4, !dbg !1225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1225

cleanup:                                          ; preds = %sw.epilog93, %sw.default86, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1226
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #14, !dbg !1226
  call void @llvm.lifetime.end.p0(i64 8, ptr %op_info) #14, !dbg !1226
  %98 = load i32, ptr %retval, align 4, !dbg !1226
  ret i32 %98, !dbg !1226
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1227 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_build_internal_buffer_obj(ptr noundef %walk_state, ptr noundef %op, i32 noundef %buffer_length, ptr noundef %obj_desc_ptr) #0 align 16 !dbg !1230 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %buffer_length.addr = alloca i32, align 4
  %obj_desc_ptr.addr = alloca ptr, align 8
  %arg = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %byte_list = alloca ptr, align 8
  %byte_list_length = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1234, metadata !DIExpression()), !dbg !1242
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1235, metadata !DIExpression()), !dbg !1243
  store i32 %buffer_length, ptr %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buffer_length.addr, metadata !1236, metadata !DIExpression()), !dbg !1244
  store ptr %obj_desc_ptr, ptr %obj_desc_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc_ptr.addr, metadata !1237, metadata !DIExpression()), !dbg !1245
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #14, !dbg !1246
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !1238, metadata !DIExpression()), !dbg !1247
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #14, !dbg !1248
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1239, metadata !DIExpression()), !dbg !1249
  call void @llvm.lifetime.start.p0(i64 8, ptr %byte_list) #14, !dbg !1250
  call void @llvm.dbg.declare(metadata ptr %byte_list, metadata !1240, metadata !DIExpression()), !dbg !1251
  call void @llvm.lifetime.start.p0(i64 4, ptr %byte_list_length) #14, !dbg !1252
  call void @llvm.dbg.declare(metadata ptr %byte_list_length, metadata !1241, metadata !DIExpression()), !dbg !1253
  store i32 0, ptr %byte_list_length, align 4, !dbg !1253
  %0 = load ptr, ptr %obj_desc_ptr.addr, align 8, !dbg !1254
  %1 = load ptr, ptr %0, align 8, !dbg !1255
  store ptr %1, ptr %obj_desc, align 8, !dbg !1256
  %2 = load ptr, ptr %obj_desc, align 8, !dbg !1257
  %tobool = icmp ne ptr %2, null, !dbg !1257
  br i1 %tobool, label %if.end3, label %if.then, !dbg !1259

if.then:                                          ; preds = %entry
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 173, i32 noundef 64, i32 noundef 3) #15, !dbg !1260
  store ptr %call, ptr %obj_desc, align 8, !dbg !1262
  %3 = load ptr, ptr %obj_desc, align 8, !dbg !1263
  %4 = load ptr, ptr %obj_desc_ptr.addr, align 8, !dbg !1264
  store ptr %3, ptr %4, align 8, !dbg !1265
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !1266
  %tobool1 = icmp ne ptr %5, null, !dbg !1266
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !1268

if.then2:                                         ; preds = %if.then
  store i32 4, ptr %retval, align 4, !dbg !1269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1269

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !1271

if.end3:                                          ; preds = %if.end, %entry
  %6 = load ptr, ptr %op.addr, align 8, !dbg !1272
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %6, i32 0, i32 7, !dbg !1273
  %7 = load ptr, ptr %value, align 8, !dbg !1274
  store ptr %7, ptr %arg, align 8, !dbg !1275
  %8 = load ptr, ptr %arg, align 8, !dbg !1276
  %next = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %8, i32 0, i32 5, !dbg !1277
  %9 = load ptr, ptr %next, align 8, !dbg !1277
  store ptr %9, ptr %byte_list, align 8, !dbg !1278
  %10 = load ptr, ptr %byte_list, align 8, !dbg !1279
  %tobool4 = icmp ne ptr %10, null, !dbg !1279
  br i1 %tobool4, label %if.then5, label %if.end13, !dbg !1281

if.then5:                                         ; preds = %if.end3
  %11 = load ptr, ptr %byte_list, align 8, !dbg !1282
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %11, i32 0, i32 3, !dbg !1285
  %12 = load i16, ptr %aml_opcode, align 2, !dbg !1285
  %conv = zext i16 %12 to i32, !dbg !1282
  %cmp = icmp ne i32 %conv, 51, !dbg !1286
  br i1 %cmp, label %if.then7, label %if.end10, !dbg !1287

if.then7:                                         ; preds = %if.then5
  %13 = load ptr, ptr %byte_list, align 8, !dbg !1288
  %aml_opcode8 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %13, i32 0, i32 3, !dbg !1288
  %14 = load i16, ptr %aml_opcode8, align 2, !dbg !1288
  %conv9 = zext i16 %14 to i32, !dbg !1288
  %15 = load ptr, ptr %byte_list, align 8, !dbg !1288
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 190, ptr noundef @.str, i32 noundef %conv9, ptr noundef %15) #15, !dbg !1288
  %16 = load ptr, ptr %obj_desc, align 8, !dbg !1290
  call void @acpi_ut_remove_reference(ptr noundef %16) #15, !dbg !1291
  store i32 8, ptr %retval, align 4, !dbg !1292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1292

if.end10:                                         ; preds = %if.then5
  %17 = load ptr, ptr %byte_list, align 8, !dbg !1293
  %value11 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %17, i32 0, i32 7, !dbg !1294
  %18 = load i64, ptr %value11, align 8, !dbg !1295
  %conv12 = trunc i64 %18 to i32, !dbg !1296
  store i32 %conv12, ptr %byte_list_length, align 4, !dbg !1297
  br label %if.end13, !dbg !1298

if.end13:                                         ; preds = %if.end10, %if.end3
  %19 = load i32, ptr %buffer_length.addr, align 4, !dbg !1299
  %20 = load ptr, ptr %obj_desc, align 8, !dbg !1300
  %length = getelementptr inbounds %struct.acpi_object_buffer, ptr %20, i32 0, i32 6, !dbg !1301
  store i32 %19, ptr %length, align 8, !dbg !1302
  %21 = load i32, ptr %byte_list_length, align 4, !dbg !1303
  %22 = load i32, ptr %buffer_length.addr, align 4, !dbg !1305
  %cmp14 = icmp ugt i32 %21, %22, !dbg !1306
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !1307

if.then16:                                        ; preds = %if.end13
  %23 = load i32, ptr %byte_list_length, align 4, !dbg !1308
  %24 = load ptr, ptr %obj_desc, align 8, !dbg !1310
  %length17 = getelementptr inbounds %struct.acpi_object_buffer, ptr %24, i32 0, i32 6, !dbg !1311
  store i32 %23, ptr %length17, align 8, !dbg !1312
  br label %if.end18, !dbg !1313

if.end18:                                         ; preds = %if.then16, %if.end13
  %25 = load ptr, ptr %obj_desc, align 8, !dbg !1314
  %length19 = getelementptr inbounds %struct.acpi_object_buffer, ptr %25, i32 0, i32 6, !dbg !1316
  %26 = load i32, ptr %length19, align 8, !dbg !1316
  %cmp20 = icmp eq i32 %26, 0, !dbg !1317
  br i1 %cmp20, label %if.then22, label %if.else, !dbg !1318

if.then22:                                        ; preds = %if.end18
  %27 = load ptr, ptr %obj_desc, align 8, !dbg !1319
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %27, i32 0, i32 5, !dbg !1321
  store ptr null, ptr %pointer, align 8, !dbg !1322
  br label %if.end36, !dbg !1323

if.else:                                          ; preds = %if.end18
  %28 = load ptr, ptr %obj_desc, align 8, !dbg !1324
  %length23 = getelementptr inbounds %struct.acpi_object_buffer, ptr %28, i32 0, i32 6, !dbg !1324
  %29 = load i32, ptr %length23, align 8, !dbg !1324
  %conv24 = zext i32 %29 to i64, !dbg !1324
  %call25 = call ptr @acpi_os_allocate_zeroed(i64 noundef %conv24) #15, !dbg !1324
  %30 = load ptr, ptr %obj_desc, align 8, !dbg !1326
  %pointer26 = getelementptr inbounds %struct.acpi_object_buffer, ptr %30, i32 0, i32 5, !dbg !1327
  store ptr %call25, ptr %pointer26, align 8, !dbg !1328
  %31 = load ptr, ptr %obj_desc, align 8, !dbg !1329
  %pointer27 = getelementptr inbounds %struct.acpi_object_buffer, ptr %31, i32 0, i32 5, !dbg !1331
  %32 = load ptr, ptr %pointer27, align 8, !dbg !1331
  %tobool28 = icmp ne ptr %32, null, !dbg !1329
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !1332

if.then29:                                        ; preds = %if.else
  %33 = load ptr, ptr %obj_desc, align 8, !dbg !1333
  call void @acpi_ut_delete_object_desc(ptr noundef %33) #15, !dbg !1335
  store i32 4, ptr %retval, align 4, !dbg !1336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1336

if.end30:                                         ; preds = %if.else
  %34 = load ptr, ptr %byte_list, align 8, !dbg !1337
  %tobool31 = icmp ne ptr %34, null, !dbg !1337
  br i1 %tobool31, label %if.then32, label %if.end35, !dbg !1339

if.then32:                                        ; preds = %if.end30
  %35 = load ptr, ptr %obj_desc, align 8, !dbg !1340
  %pointer33 = getelementptr inbounds %struct.acpi_object_buffer, ptr %35, i32 0, i32 5, !dbg !1342
  %36 = load ptr, ptr %pointer33, align 8, !dbg !1342
  %37 = load ptr, ptr %byte_list, align 8, !dbg !1343
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %37, i32 0, i32 10, !dbg !1344
  %38 = load ptr, ptr %data, align 8, !dbg !1344
  %39 = load i32, ptr %byte_list_length, align 4, !dbg !1345
  %conv34 = zext i32 %39 to i64, !dbg !1345
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %36, ptr align 1 %38, i64 %conv34, i1 false), !dbg !1346
  br label %if.end35, !dbg !1347

if.end35:                                         ; preds = %if.then32, %if.end30
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then22
  %40 = load ptr, ptr %obj_desc, align 8, !dbg !1348
  %flags = getelementptr inbounds %struct.acpi_object_buffer, ptr %40, i32 0, i32 4, !dbg !1349
  %41 = load i8, ptr %flags, align 4, !dbg !1350
  %conv37 = zext i8 %41 to i32, !dbg !1350
  %or = or i32 %conv37, 4, !dbg !1350
  %conv38 = trunc i32 %or to i8, !dbg !1350
  store i8 %conv38, ptr %flags, align 4, !dbg !1350
  %42 = load ptr, ptr %obj_desc, align 8, !dbg !1351
  %43 = ptrtoint ptr %42 to i64, !dbg !1351
  %44 = inttoptr i64 %43 to ptr, !dbg !1351
  %45 = load ptr, ptr %op.addr, align 8, !dbg !1352
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %45, i32 0, i32 6, !dbg !1353
  store ptr %44, ptr %node, align 8, !dbg !1354
  store i32 0, ptr %retval, align 4, !dbg !1355
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1355

cleanup:                                          ; preds = %if.end36, %if.then29, %if.then7, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %byte_list_length) #14, !dbg !1356
  call void @llvm.lifetime.end.p0(i64 8, ptr %byte_list) #14, !dbg !1356
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #14, !dbg !1356
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #14, !dbg !1356
  %46 = load i32, ptr %retval, align 4, !dbg !1356
  ret i32 %46, !dbg !1356
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1357 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !1361 {
entry:
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1366, metadata !DIExpression()), !dbg !1377
  %0 = load i64, ptr %size.addr, align 8, !dbg !1378
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #14, !dbg !1379
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1367, metadata !DIExpression()), !dbg !1379
  br label %do.body, !dbg !1379

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !1380
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1369, metadata !DIExpression()), !dbg !1380
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !1380
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1372, metadata !DIExpression()), !dbg !1380
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1380
  %conv = zext i1 %cmp to i32, !dbg !1380
  store i32 1, ptr %tmp, align 4, !dbg !1380
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !1381
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !1381
  %1 = load i32, ptr %tmp, align 4, !dbg !1380
  %call = call i64 @arch_local_save_flags() #15, !dbg !1381
  store i64 %call, ptr %_flags, align 8, !dbg !1381
  br label %do.cond, !dbg !1381

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1381

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #14, !dbg !1382
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1373, metadata !DIExpression()), !dbg !1382
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #14, !dbg !1382
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1376, metadata !DIExpression()), !dbg !1382
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1382
  %conv6 = zext i1 %cmp5 to i32, !dbg !1382
  store i32 1, ptr %tmp7, align 4, !dbg !1382
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #14, !dbg !1383
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #14, !dbg !1383
  %2 = load i32, ptr %tmp7, align 4, !dbg !1382
  %3 = load i64, ptr %_flags, align 8, !dbg !1383
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #15, !dbg !1383
  store i32 %call9, ptr %tmp8, align 4, !dbg !1383
  %4 = load i32, ptr %tmp8, align 4, !dbg !1383
  store i32 %4, ptr %tmp1, align 4, !dbg !1381
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #14, !dbg !1384
  %5 = load i32, ptr %tmp1, align 4, !dbg !1379
  %tobool = icmp ne i32 %5, 0, !dbg !1384
  %6 = zext i1 %tobool to i64, !dbg !1384
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1384
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #16, !dbg !1385
  ret ptr %call10, !dbg !1386
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1387 dso_local void @acpi_ut_delete_object_desc(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_create_node(ptr noundef %walk_state, ptr noundef %node, ptr noundef %op) #0 align 16 !dbg !1388 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1392, metadata !DIExpression()), !dbg !1397
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1393, metadata !DIExpression()), !dbg !1398
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1394, metadata !DIExpression()), !dbg !1399
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !1400
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1395, metadata !DIExpression()), !dbg !1401
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #14, !dbg !1402
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1396, metadata !DIExpression()), !dbg !1403
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1404
  %call = call ptr @acpi_ns_get_attached_object(ptr noundef %0) #15, !dbg !1406
  %tobool = icmp ne ptr %call, null, !dbg !1406
  br i1 %tobool, label %if.then, label %if.end, !dbg !1407

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1408

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %op.addr, align 8, !dbg !1410
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %1, i32 0, i32 7, !dbg !1412
  %2 = load ptr, ptr %value, align 8, !dbg !1413
  %tobool1 = icmp ne ptr %2, null, !dbg !1410
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1414

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1415

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1417
  %4 = load ptr, ptr %op.addr, align 8, !dbg !1418
  %value4 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %4, i32 0, i32 7, !dbg !1419
  %5 = load ptr, ptr %value4, align 8, !dbg !1420
  %call5 = call i32 @acpi_ds_build_internal_object(ptr noundef %3, ptr noundef %5, ptr noundef %obj_desc) #15, !dbg !1421
  store i32 %call5, ptr %status, align 4, !dbg !1422
  %6 = load i32, ptr %status, align 4, !dbg !1423
  %tobool6 = icmp ne i32 %6, 0, !dbg !1423
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1425

if.then7:                                         ; preds = %if.end3
  %7 = load i32, ptr %status, align 4, !dbg !1426
  store i32 %7, ptr %retval, align 4, !dbg !1426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1426

if.end8:                                          ; preds = %if.end3
  %8 = load ptr, ptr %obj_desc, align 8, !dbg !1428
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %8, i32 0, i32 2, !dbg !1429
  %9 = load i8, ptr %type, align 1, !dbg !1429
  %10 = load ptr, ptr %node.addr, align 8, !dbg !1430
  %type9 = getelementptr inbounds %struct.acpi_namespace_node, ptr %10, i32 0, i32 2, !dbg !1431
  store i8 %9, ptr %type9, align 1, !dbg !1432
  %11 = load ptr, ptr %node.addr, align 8, !dbg !1433
  %12 = load ptr, ptr %obj_desc, align 8, !dbg !1434
  %13 = load ptr, ptr %node.addr, align 8, !dbg !1435
  %type10 = getelementptr inbounds %struct.acpi_namespace_node, ptr %13, i32 0, i32 2, !dbg !1436
  %14 = load i8, ptr %type10, align 1, !dbg !1436
  %conv = zext i8 %14 to i32, !dbg !1435
  %call11 = call i32 @acpi_ns_attach_object(ptr noundef %11, ptr noundef %12, i32 noundef %conv) #15, !dbg !1437
  store i32 %call11, ptr %status, align 4, !dbg !1438
  %15 = load ptr, ptr %obj_desc, align 8, !dbg !1439
  call void @acpi_ut_remove_reference(ptr noundef %15) #15, !dbg !1440
  %16 = load i32, ptr %status, align 4, !dbg !1441
  store i32 %16, ptr %retval, align 4, !dbg !1441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1441

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #14, !dbg !1442
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1442
  %17 = load i32, ptr %retval, align 4, !dbg !1442
  ret i32 %17, !dbg !1442
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1443 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1446 dso_local i32 @acpi_ns_attach_object(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1449 dso_local zeroext i8 @acpi_ex_truncate_for32bit_table(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1453 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1454 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1458 dso_local i32 @acpi_ds_method_data_get_node(i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !1462 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1470, metadata !DIExpression()), !dbg !1472
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1471, metadata !DIExpression()), !dbg !1473
  %0 = load i64, ptr %size.addr, align 8, !dbg !1474
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1475
  %or = or i32 %1, 256, !dbg !1476
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !1477
  ret ptr %call, !dbg !1478
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #7 align 16 !dbg !1479 {
entry:
  %call = call i64 @native_save_fl() #15, !dbg !1483
  ret i64 %call, !dbg !1484
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #7 align 16 !dbg !1485 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1490, metadata !DIExpression()), !dbg !1491
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1492
  %and = and i64 %0, 512, !dbg !1493
  %tobool = icmp ne i64 %and, 0, !dbg !1494
  %lnot = xor i1 %tobool, true, !dbg !1494
  %lnot.ext = zext i1 %lnot to i32, !dbg !1494
  ret i32 %lnot.ext, !dbg !1495
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !1496 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1498, metadata !DIExpression()), !dbg !1503
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1499, metadata !DIExpression()), !dbg !1504
  %0 = load i64, ptr %size.addr, align 8, !dbg !1505
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1506
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1507

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1508
  %tobool = icmp ne i64 %2, 0, !dbg !1508
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1509

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !1510
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1500, metadata !DIExpression()), !dbg !1511
  %3 = load i64, ptr %size.addr, align 8, !dbg !1512
  %cmp = icmp ugt i64 %3, 8192, !dbg !1514
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1515

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1516
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1517
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !1518
  store ptr %call, ptr %retval, align 8, !dbg !1519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1519

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1520
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !1520
  store i32 %call2, ptr %index, align 4, !dbg !1521
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1522
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1523
  %9 = ptrtoint ptr %8 to i64, !dbg !1523
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !1524
  %idxprom = zext i32 %call3 to i64, !dbg !1525
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1525
  %10 = load i32, ptr %index, align 4, !dbg !1526
  %idxprom4 = zext i32 %10 to i64, !dbg !1525
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1525
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1525
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1527
  %13 = load i64, ptr %size.addr, align 8, !dbg !1528
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !1529
  store ptr %call6, ptr %retval, align 8, !dbg !1530
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1530

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !1531
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1532
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1533
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !1534
  store ptr %call8, ptr %retval, align 8, !dbg !1535
  br label %return, !dbg !1535

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1536
  ret ptr %16, !dbg !1536
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1537 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !1538 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1544, metadata !DIExpression()), !dbg !1546
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1545, metadata !DIExpression()), !dbg !1547
  %0 = load i64, ptr %size.addr, align 8, !dbg !1548
  %tobool = icmp ne i64 %0, 0, !dbg !1548
  br i1 %tobool, label %if.end, label %if.then, !dbg !1550

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1551
  br label %return, !dbg !1551

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1552
  %cmp = icmp ule i64 %1, 8, !dbg !1554
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1555

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1556
  br label %return, !dbg !1556

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1557
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1559
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1560

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1561
  %cmp4 = icmp ule i64 %3, 96, !dbg !1562
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1563

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1564
  br label %return, !dbg !1564

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1565
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1567
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1568

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1569
  %cmp9 = icmp ule i64 %5, 192, !dbg !1570
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1571

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1572
  br label %return, !dbg !1572

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1573
  %cmp12 = icmp ule i64 %6, 8, !dbg !1575
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1576

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1577
  br label %return, !dbg !1577

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1578
  %cmp15 = icmp ule i64 %7, 16, !dbg !1580
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1581

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1582
  br label %return, !dbg !1582

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1583
  %cmp18 = icmp ule i64 %8, 32, !dbg !1585
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1586

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1587
  br label %return, !dbg !1587

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1588
  %cmp21 = icmp ule i64 %9, 64, !dbg !1590
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1591

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1592
  br label %return, !dbg !1592

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1593
  %cmp24 = icmp ule i64 %10, 128, !dbg !1595
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1596

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1597
  br label %return, !dbg !1597

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1598
  %cmp27 = icmp ule i64 %11, 256, !dbg !1600
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1601

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1602
  br label %return, !dbg !1602

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1603
  %cmp30 = icmp ule i64 %12, 512, !dbg !1605
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1606

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1607
  br label %return, !dbg !1607

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1608
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1610
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1611

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1612
  br label %return, !dbg !1612

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1613
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1615
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1616

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1617
  br label %return, !dbg !1617

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1618
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1620
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1621

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1622
  br label %return, !dbg !1622

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1623
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1625
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1626

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1627
  br label %return, !dbg !1627

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1628
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1630
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1631

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1632
  br label %return, !dbg !1632

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1633
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1635
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1636

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1637
  br label %return, !dbg !1637

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1638
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1640
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1641

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1642
  br label %return, !dbg !1642

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1643
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1645
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1646

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1647
  br label %return, !dbg !1647

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1648
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1650
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1651

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1652
  br label %return, !dbg !1652

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1653
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1655
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1656

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1657
  br label %return, !dbg !1657

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1658
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1660
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1661

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1662
  br label %return, !dbg !1662

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1663
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1665
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1666

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1667
  br label %return, !dbg !1667

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1668, !range !1670, !noundef !1671
  %tobool69 = trunc i8 %25 to i1, !dbg !1668
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1672

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1673

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #18, !dbg !1674, !srcloc !1677
  unreachable, !dbg !1674

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1678

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1679

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1680

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1682

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1680

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 480, i32 0, i64 12) #14, !dbg !1684, !srcloc !1686
  br label %do.end75, !dbg !1684

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1680

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1687
  br label %return, !dbg !1687

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1688
  ret i32 %26, !dbg !1688
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1689 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !1695 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1699, metadata !DIExpression()), !dbg !1701
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1700, metadata !DIExpression()), !dbg !1702
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1703
  %and = and i32 %0, 17, !dbg !1703
  %cmp = icmp eq i32 %and, 0, !dbg !1703
  %lnot = xor i1 %cmp, true, !dbg !1703
  %lnot1 = xor i1 %lnot, true, !dbg !1703
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1703
  %conv = sext i32 %lnot.ext to i64, !dbg !1703
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1703
  %tobool = icmp ne i64 %expval, 0, !dbg !1703
  br i1 %tobool, label %if.then, label %if.end, !dbg !1705

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1706
  br label %return, !dbg !1706

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1707
  %and2 = and i32 %1, 1, !dbg !1709
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1709
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1710

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1711
  br label %return, !dbg !1711

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1712
  br label %return, !dbg !1712

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1714
  ret i32 %2, !dbg !1714
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1715 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1716 dso_local void @__compiletime_assert_173() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #7 align 16 !dbg !1719 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !1722
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1721, metadata !DIExpression()), !dbg !1723
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #14, !dbg !1724, !srcloc !1725
  %0 = load i64, ptr %flags, align 8, !dbg !1726
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !1727
  ret i64 %0, !dbg !1728
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!857, !858, !859, !860, !861, !862, !863, !864}
!llvm.ident = !{!865}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !855, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.dsobject.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22dsobject\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/dsobject.ll drivers/acpi/acpica/dsobject.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !38, globals: !819, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dsobject.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0dea223a9babc2b0f2ea0e135085427a")
!4 = !{!5, !12, !23, !28}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 323, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22}
!15 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0)
!16 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1)
!17 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2)
!18 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3)
!19 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4)
!20 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5)
!21 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6)
!22 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 10, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "false", value: 0)
!27 = !DIEnumerator(name: "true", value: 1)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !29, line: 364, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!30 = !{!31, !32, !33, !34, !35, !36, !37}
!31 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!32 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!33 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!34 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!35 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!36 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!37 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!38 = !{!39, !44, !814, !153, !91, !817, !45, !76, !818, !816}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !40, line: 19, baseType: !41)
!40 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !42, line: 24, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !47)
!47 = !{!48, !801, !802, !803, !804, !810, !811, !812, !813}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !46, file: !6, line: 134, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !13, line: 369, size: 576, elements: !51)
!51 = !{!52, !63, !79, !93, !107, !121, !131, !450, !467, !483, !496, !574, !586, !600, !610, !628, !650, !669, !688, !707, !720, !747, !764, !777, !791, !800}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !50, file: !13, line: 370, baseType: !53, size: 128)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !13, line: 73, size: 128, elements: !54)
!54 = !{!55, !56, !60, !61, !62}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !53, file: !13, line: 74, baseType: !49, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !53, file: !13, line: 74, baseType: !57, size: 8, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !40, line: 17, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !42, line: 21, baseType: !59)
!59 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !13, line: 74, baseType: !57, size: 8, offset: 72)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !53, file: !13, line: 74, baseType: !39, size: 16, offset: 80)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !53, file: !13, line: 74, baseType: !57, size: 8, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !50, file: !13, line: 371, baseType: !64, size: 192)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !13, line: 76, size: 192, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !75}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !64, file: !13, line: 77, baseType: !49, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !64, file: !13, line: 77, baseType: !57, size: 8, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !13, line: 77, baseType: !57, size: 8, offset: 72)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !64, file: !13, line: 77, baseType: !39, size: 16, offset: 80)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !13, line: 77, baseType: !57, size: 8, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !64, file: !13, line: 77, baseType: !72, size: 24, offset: 104)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 24, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 3)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !64, file: !13, line: 78, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !40, line: 23, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !42, line: 31, baseType: !78)
!78 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !50, file: !13, line: 372, baseType: !80, size: 256)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !13, line: 93, size: 256, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !90}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !80, file: !13, line: 94, baseType: !49, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !13, line: 94, baseType: !57, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !13, line: 94, baseType: !57, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !80, file: !13, line: 94, baseType: !39, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !13, line: 94, baseType: !57, size: 8, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !80, file: !13, line: 94, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !80, file: !13, line: 94, baseType: !91, size: 32, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !40, line: 21, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !42, line: 27, baseType: !7)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !50, file: !13, line: 373, baseType: !94, size: 384)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !13, line: 97, size: 384, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101, !103, !104, !105, !106}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !94, file: !13, line: 98, baseType: !49, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !13, line: 98, baseType: !57, size: 8, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !13, line: 98, baseType: !57, size: 8, offset: 72)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !94, file: !13, line: 98, baseType: !39, size: 16, offset: 80)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !13, line: 98, baseType: !57, size: 8, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !94, file: !13, line: 98, baseType: !102, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !94, file: !13, line: 98, baseType: !91, size: 32, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !94, file: !13, line: 99, baseType: !91, size: 32, offset: 224)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !94, file: !13, line: 100, baseType: !102, size: 64, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !94, file: !13, line: 101, baseType: !45, size: 64, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !50, file: !13, line: 374, baseType: !108, size: 384)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !13, line: 104, size: 384, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115, !116, !118, !119, !120}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !108, file: !13, line: 105, baseType: !49, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !108, file: !13, line: 105, baseType: !57, size: 8, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !13, line: 105, baseType: !57, size: 8, offset: 72)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !108, file: !13, line: 105, baseType: !39, size: 16, offset: 80)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !13, line: 105, baseType: !57, size: 8, offset: 96)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !108, file: !13, line: 105, baseType: !45, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !108, file: !13, line: 106, baseType: !117, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !108, file: !13, line: 107, baseType: !102, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !108, file: !13, line: 108, baseType: !91, size: 32, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !108, file: !13, line: 109, baseType: !91, size: 32, offset: 352)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !50, file: !13, line: 375, baseType: !122, size: 192)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !13, line: 118, size: 192, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !122, file: !13, line: 119, baseType: !49, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !122, file: !13, line: 119, baseType: !57, size: 8, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !122, file: !13, line: 119, baseType: !57, size: 8, offset: 72)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !122, file: !13, line: 119, baseType: !39, size: 16, offset: 80)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !122, file: !13, line: 119, baseType: !57, size: 8, offset: 96)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !122, file: !13, line: 119, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !50, file: !13, line: 376, baseType: !132, size: 448)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !13, line: 144, size: 448, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !447, !448, !449}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !132, file: !13, line: 145, baseType: !49, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !132, file: !13, line: 145, baseType: !57, size: 8, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !13, line: 145, baseType: !57, size: 8, offset: 72)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !132, file: !13, line: 145, baseType: !39, size: 16, offset: 80)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !13, line: 145, baseType: !57, size: 8, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !132, file: !13, line: 145, baseType: !57, size: 8, offset: 104)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !132, file: !13, line: 146, baseType: !57, size: 8, offset: 112)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !132, file: !13, line: 147, baseType: !57, size: 8, offset: 120)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !132, file: !13, line: 148, baseType: !49, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !132, file: !13, line: 149, baseType: !49, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !132, file: !13, line: 150, baseType: !102, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !132, file: !13, line: 154, baseType: !146, size: 64, offset: 320)
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !132, file: !13, line: 151, size: 64, elements: !147)
!147 = !{!148, !446}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !146, file: !13, line: 152, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!153, !155}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !154, line: 421, baseType: !91)
!154 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !157, line: 37, size: 9024, elements: !158)
!157 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !392, !393, !394, !395, !396, !400, !402, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !429, !430, !431, !432, !433, !434, !435, !436, !438, !444}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !156, file: !157, line: 38, baseType: !155, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !156, file: !157, line: 39, baseType: !57, size: 8, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !156, file: !157, line: 40, baseType: !57, size: 8, offset: 72)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !156, file: !157, line: 41, baseType: !39, size: 16, offset: 80)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !156, file: !157, line: 42, baseType: !57, size: 8, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !156, file: !157, line: 43, baseType: !57, size: 8, offset: 104)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !156, file: !157, line: 44, baseType: !57, size: 8, offset: 112)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !156, file: !157, line: 45, baseType: !167, size: 16, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !154, line: 445, baseType: !39)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !156, file: !157, line: 46, baseType: !57, size: 8, offset: 144)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !156, file: !157, line: 47, baseType: !57, size: 8, offset: 152)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !156, file: !157, line: 48, baseType: !57, size: 8, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !156, file: !157, line: 49, baseType: !57, size: 8, offset: 168)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !156, file: !157, line: 50, baseType: !57, size: 8, offset: 176)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !156, file: !157, line: 51, baseType: !57, size: 8, offset: 184)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !156, file: !157, line: 52, baseType: !57, size: 8, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !156, file: !157, line: 53, baseType: !57, size: 8, offset: 200)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !156, file: !157, line: 54, baseType: !102, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !156, file: !157, line: 55, baseType: !91, size: 32, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !156, file: !157, line: 56, baseType: !91, size: 32, offset: 352)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !156, file: !157, line: 57, baseType: !91, size: 32, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !156, file: !157, line: 58, baseType: !91, size: 32, offset: 416)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !156, file: !157, line: 60, baseType: !182, size: 640, offset: 448)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 909, size: 640, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189, !273, !274, !390, !391}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !182, file: !6, line: 910, baseType: !102, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !182, file: !6, line: 911, baseType: !102, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !182, file: !6, line: 912, baseType: !102, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !182, file: !6, line: 913, baseType: !102, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !182, file: !6, line: 914, baseType: !102, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !182, file: !6, line: 915, baseType: !190, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 891, size: 1600, elements: !192)
!192 = !{!193, !213, !229}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !191, file: !6, line: 892, baseType: !194, size: 448)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 844, size: 448, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !212}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !194, file: !6, line: 845, baseType: !190, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !194, file: !6, line: 845, baseType: !57, size: 8, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !194, file: !6, line: 845, baseType: !57, size: 8, offset: 72)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !194, file: !6, line: 845, baseType: !39, size: 16, offset: 80)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !194, file: !6, line: 845, baseType: !102, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !6, line: 845, baseType: !190, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !194, file: !6, line: 845, baseType: !45, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !194, file: !6, line: 845, baseType: !204, size: 64, offset: 320)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 732, size: 64, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !204, file: !6, line: 733, baseType: !76, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !204, file: !6, line: 734, baseType: !91, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !204, file: !6, line: 735, baseType: !88, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !204, file: !6, line: 736, baseType: !102, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !204, file: !6, line: 737, baseType: !88, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !204, file: !6, line: 738, baseType: !190, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !194, file: !6, line: 845, baseType: !57, size: 8, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !191, file: !6, line: 893, baseType: !214, size: 640)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 851, size: 640, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !214, file: !6, line: 852, baseType: !190, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !214, file: !6, line: 852, baseType: !57, size: 8, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !214, file: !6, line: 852, baseType: !57, size: 8, offset: 72)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !214, file: !6, line: 852, baseType: !39, size: 16, offset: 80)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !214, file: !6, line: 852, baseType: !102, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !6, line: 852, baseType: !190, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !214, file: !6, line: 852, baseType: !45, size: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !214, file: !6, line: 852, baseType: !204, size: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !214, file: !6, line: 852, baseType: !57, size: 8, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !214, file: !6, line: 852, baseType: !88, size: 64, offset: 448)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !214, file: !6, line: 853, baseType: !102, size: 64, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !214, file: !6, line: 854, baseType: !91, size: 32, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !6, line: 855, baseType: !91, size: 32, offset: 608)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !191, file: !6, line: 894, baseType: !230, size: 1600)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 862, size: 1600, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !230, file: !6, line: 863, baseType: !190, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !230, file: !6, line: 863, baseType: !57, size: 8, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !230, file: !6, line: 863, baseType: !57, size: 8, offset: 72)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !230, file: !6, line: 863, baseType: !39, size: 16, offset: 80)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !230, file: !6, line: 863, baseType: !102, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !6, line: 863, baseType: !190, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !230, file: !6, line: 863, baseType: !45, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !230, file: !6, line: 863, baseType: !204, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !230, file: !6, line: 863, baseType: !57, size: 8, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !230, file: !6, line: 863, baseType: !190, size: 64, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !230, file: !6, line: 864, baseType: !190, size: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !230, file: !6, line: 865, baseType: !88, size: 64, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !230, file: !6, line: 866, baseType: !57, size: 8, offset: 640)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !230, file: !6, line: 867, baseType: !88, size: 64, offset: 704)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !230, file: !6, line: 868, baseType: !88, size: 64, offset: 768)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !230, file: !6, line: 869, baseType: !88, size: 64, offset: 832)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !230, file: !6, line: 870, baseType: !249, size: 32, offset: 896)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 32, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 4)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !230, file: !6, line: 871, baseType: !91, size: 32, offset: 928)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !230, file: !6, line: 872, baseType: !91, size: 32, offset: 960)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !230, file: !6, line: 873, baseType: !91, size: 32, offset: 992)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !230, file: !6, line: 874, baseType: !91, size: 32, offset: 1024)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !230, file: !6, line: 875, baseType: !91, size: 32, offset: 1056)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !230, file: !6, line: 876, baseType: !91, size: 32, offset: 1088)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !230, file: !6, line: 877, baseType: !91, size: 32, offset: 1120)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !230, file: !6, line: 878, baseType: !91, size: 32, offset: 1152)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !230, file: !6, line: 879, baseType: !91, size: 32, offset: 1184)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !230, file: !6, line: 880, baseType: !91, size: 32, offset: 1216)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !230, file: !6, line: 881, baseType: !91, size: 32, offset: 1248)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !230, file: !6, line: 882, baseType: !91, size: 32, offset: 1280)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !230, file: !6, line: 883, baseType: !91, size: 32, offset: 1312)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !230, file: !6, line: 884, baseType: !39, size: 16, offset: 1344)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !230, file: !6, line: 885, baseType: !57, size: 8, offset: 1360)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !230, file: !6, line: 886, baseType: !57, size: 8, offset: 1368)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !230, file: !6, line: 887, baseType: !57, size: 8, offset: 1376)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !230, file: !6, line: 888, baseType: !270, size: 160, offset: 1384)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 160, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 20)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !182, file: !6, line: 916, baseType: !45, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !182, file: !6, line: 917, baseType: !275, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 679, size: 640, elements: !277)
!277 = !{!278, !286, !299, !308, !317, !330, !344, !356, !368}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !276, file: !6, line: 680, baseType: !279, size: 128)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 575, size: 128, elements: !280)
!280 = !{!281, !282, !283, !284, !285}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !6, line: 576, baseType: !130, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !6, line: 576, baseType: !57, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !6, line: 576, baseType: !57, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !279, file: !6, line: 576, baseType: !39, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !279, file: !6, line: 576, baseType: !39, size: 16, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !276, file: !6, line: 681, baseType: !287, size: 384)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 604, size: 384, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !6, line: 605, baseType: !130, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !6, line: 605, baseType: !57, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !6, line: 605, baseType: !57, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !6, line: 605, baseType: !39, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !6, line: 605, baseType: !39, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !287, file: !6, line: 606, baseType: !39, size: 16, offset: 112)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !287, file: !6, line: 607, baseType: !190, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !287, file: !6, line: 608, baseType: !102, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !287, file: !6, line: 609, baseType: !102, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !287, file: !6, line: 610, baseType: !76, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !276, file: !6, line: 682, baseType: !300, size: 192)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 582, size: 192, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !6, line: 583, baseType: !130, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !6, line: 583, baseType: !57, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !6, line: 583, baseType: !57, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !6, line: 583, baseType: !39, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !6, line: 583, baseType: !39, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !300, file: !6, line: 584, baseType: !49, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !276, file: !6, line: 683, baseType: !309, size: 192)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 616, size: 192, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !6, line: 617, baseType: !130, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !6, line: 617, baseType: !57, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !6, line: 617, baseType: !57, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !6, line: 617, baseType: !39, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !309, file: !6, line: 617, baseType: !39, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !309, file: !6, line: 618, baseType: !45, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !276, file: !6, line: 684, baseType: !318, size: 448)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 621, size: 448, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !6, line: 622, baseType: !130, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !318, file: !6, line: 622, baseType: !57, size: 8, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !6, line: 622, baseType: !57, size: 8, offset: 72)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !318, file: !6, line: 622, baseType: !39, size: 16, offset: 80)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !318, file: !6, line: 622, baseType: !39, size: 16, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !318, file: !6, line: 623, baseType: !91, size: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !318, file: !6, line: 624, baseType: !190, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !318, file: !6, line: 625, baseType: !102, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !318, file: !6, line: 626, baseType: !102, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !318, file: !6, line: 627, baseType: !91, size: 32, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !276, file: !6, line: 685, baseType: !331, size: 512)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 590, size: 512, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !6, line: 591, baseType: !130, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !331, file: !6, line: 591, baseType: !57, size: 8, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !331, file: !6, line: 591, baseType: !57, size: 8, offset: 72)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !331, file: !6, line: 591, baseType: !39, size: 16, offset: 80)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !331, file: !6, line: 591, baseType: !39, size: 16, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !331, file: !6, line: 592, baseType: !91, size: 32, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !331, file: !6, line: 593, baseType: !49, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !331, file: !6, line: 594, baseType: !49, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !331, file: !6, line: 595, baseType: !155, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !331, file: !6, line: 596, baseType: !130, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !331, file: !6, line: 597, baseType: !91, size: 32, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !276, file: !6, line: 686, baseType: !345, size: 320)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 634, size: 320, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !6, line: 635, baseType: !130, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !345, file: !6, line: 635, baseType: !57, size: 8, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !345, file: !6, line: 635, baseType: !57, size: 8, offset: 72)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !345, file: !6, line: 635, baseType: !39, size: 16, offset: 80)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !345, file: !6, line: 635, baseType: !39, size: 16, offset: 96)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !345, file: !6, line: 636, baseType: !57, size: 8, offset: 112)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !345, file: !6, line: 637, baseType: !155, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !345, file: !6, line: 638, baseType: !49, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !345, file: !6, line: 639, baseType: !76, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !276, file: !6, line: 687, baseType: !357, size: 640)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 646, size: 640, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !6, line: 647, baseType: !130, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !357, file: !6, line: 647, baseType: !57, size: 8, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !6, line: 647, baseType: !57, size: 8, offset: 72)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !357, file: !6, line: 647, baseType: !39, size: 16, offset: 80)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !357, file: !6, line: 647, baseType: !39, size: 16, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !357, file: !6, line: 648, baseType: !365, size: 512, offset: 128)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 512, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 8)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !276, file: !6, line: 688, baseType: !369, size: 320)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 669, size: 320, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !6, line: 670, baseType: !130, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !369, file: !6, line: 670, baseType: !57, size: 8, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !6, line: 670, baseType: !57, size: 8, offset: 72)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !369, file: !6, line: 670, baseType: !39, size: 16, offset: 80)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !369, file: !6, line: 670, baseType: !39, size: 16, offset: 96)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !369, file: !6, line: 671, baseType: !57, size: 8, offset: 112)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !369, file: !6, line: 672, baseType: !45, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !369, file: !6, line: 673, baseType: !49, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !369, file: !6, line: 674, baseType: !380, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 660, size: 128, elements: !382)
!382 = !{!383, !389}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !381, file: !6, line: 661, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !154, line: 1061, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !388, !91, !130}
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !154, line: 424, baseType: !130)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !381, file: !6, line: 662, baseType: !130, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !182, file: !6, line: 918, baseType: !190, size: 64, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !182, file: !6, line: 919, baseType: !91, size: 32, offset: 576)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !156, file: !157, line: 61, baseType: !91, size: 32, offset: 1088)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !156, file: !157, line: 62, baseType: !91, size: 32, offset: 1120)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !156, file: !157, line: 63, baseType: !39, size: 16, offset: 1152)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !156, file: !157, line: 64, baseType: !57, size: 8, offset: 1168)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !156, file: !157, line: 66, baseType: !397, size: 2688, offset: 1216)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2688, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 7)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !156, file: !157, line: 67, baseType: !401, size: 3072, offset: 3904)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 3072, elements: !366)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !156, file: !157, line: 68, baseType: !403, size: 576, offset: 6976)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 576, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 9)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !156, file: !157, line: 69, baseType: !117, size: 64, offset: 7552)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !156, file: !157, line: 71, baseType: !102, size: 64, offset: 7616)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !156, file: !157, line: 72, baseType: !117, size: 64, offset: 7680)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !156, file: !157, line: 73, baseType: !275, size: 64, offset: 7744)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !156, file: !157, line: 74, baseType: !45, size: 64, offset: 7808)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !156, file: !157, line: 75, baseType: !49, size: 64, offset: 7872)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !156, file: !157, line: 76, baseType: !45, size: 64, offset: 7936)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !156, file: !157, line: 77, baseType: !190, size: 64, offset: 8000)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !156, file: !157, line: 78, baseType: !49, size: 64, offset: 8064)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !156, file: !157, line: 79, baseType: !45, size: 64, offset: 8128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !156, file: !157, line: 80, baseType: !88, size: 64, offset: 8192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !156, file: !157, line: 81, baseType: !190, size: 64, offset: 8256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !156, file: !157, line: 82, baseType: !419, size: 64, offset: 8320)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 718, size: 128, elements: !422)
!422 = !{!423, !424, !425, !426, !427, !428}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !421, file: !6, line: 722, baseType: !91, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !421, file: !6, line: 723, baseType: !91, size: 32, offset: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !421, file: !6, line: 724, baseType: !39, size: 16, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !421, file: !6, line: 725, baseType: !57, size: 8, offset: 80)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !421, file: !6, line: 726, baseType: !57, size: 8, offset: 88)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !421, file: !6, line: 727, baseType: !57, size: 8, offset: 96)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !156, file: !157, line: 83, baseType: !190, size: 64, offset: 8384)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !156, file: !157, line: 84, baseType: !49, size: 64, offset: 8448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !156, file: !157, line: 85, baseType: !275, size: 64, offset: 8512)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !156, file: !157, line: 86, baseType: !49, size: 64, offset: 8576)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !156, file: !157, line: 87, baseType: !275, size: 64, offset: 8640)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !156, file: !157, line: 88, baseType: !190, size: 64, offset: 8704)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !156, file: !157, line: 89, baseType: !190, size: 64, offset: 8768)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !156, file: !157, line: 90, baseType: !437, size: 64, offset: 8832)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !156, file: !157, line: 91, baseType: !439, size: 64, offset: 8896)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 652, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!153, !155, !443}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !156, file: !157, line: 92, baseType: !445, size: 64, offset: 8960)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 656, baseType: !150)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !146, file: !13, line: 153, baseType: !49, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !132, file: !13, line: 156, baseType: !91, size: 32, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !132, file: !13, line: 157, baseType: !167, size: 16, offset: 416)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !132, file: !13, line: 158, baseType: !57, size: 8, offset: 432)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !50, file: !13, line: 377, baseType: !451, size: 576)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !13, line: 122, size: 576, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !451, file: !13, line: 123, baseType: !49, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !451, file: !13, line: 123, baseType: !57, size: 8, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !451, file: !13, line: 123, baseType: !57, size: 8, offset: 72)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !451, file: !13, line: 123, baseType: !39, size: 16, offset: 80)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !451, file: !13, line: 123, baseType: !57, size: 8, offset: 96)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !451, file: !13, line: 123, baseType: !57, size: 8, offset: 104)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !451, file: !13, line: 124, baseType: !39, size: 16, offset: 112)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !451, file: !13, line: 125, baseType: !130, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !451, file: !13, line: 126, baseType: !76, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !451, file: !13, line: 127, baseType: !437, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !451, file: !13, line: 128, baseType: !49, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !451, file: !13, line: 129, baseType: !49, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !451, file: !13, line: 130, baseType: !45, size: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !451, file: !13, line: 131, baseType: !57, size: 8, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !50, file: !13, line: 378, baseType: !468, size: 512)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !13, line: 134, size: 512, elements: !469)
!469 = !{!470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !481, !482}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !468, file: !13, line: 135, baseType: !49, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !468, file: !13, line: 135, baseType: !57, size: 8, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !468, file: !13, line: 135, baseType: !57, size: 8, offset: 72)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !468, file: !13, line: 135, baseType: !39, size: 16, offset: 80)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !468, file: !13, line: 135, baseType: !57, size: 8, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !468, file: !13, line: 135, baseType: !57, size: 8, offset: 104)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !468, file: !13, line: 136, baseType: !45, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !468, file: !13, line: 137, baseType: !49, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !468, file: !13, line: 138, baseType: !49, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !468, file: !13, line: 139, baseType: !480, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !154, line: 129, baseType: !76)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !468, file: !13, line: 140, baseType: !91, size: 32, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !468, file: !13, line: 141, baseType: !130, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !50, file: !13, line: 379, baseType: !484, size: 320)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !13, line: 185, size: 320, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !491, !495}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !484, file: !13, line: 186, baseType: !49, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !484, file: !13, line: 186, baseType: !57, size: 8, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !484, file: !13, line: 186, baseType: !57, size: 8, offset: 72)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !484, file: !13, line: 186, baseType: !39, size: 16, offset: 80)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !13, line: 186, baseType: !57, size: 8, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !484, file: !13, line: 186, baseType: !492, size: 128, offset: 128)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 128, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 2)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !484, file: !13, line: 186, baseType: !49, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !50, file: !13, line: 380, baseType: !497, size: 384)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !13, line: 188, size: 384, elements: !498)
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !497, file: !13, line: 189, baseType: !49, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !497, file: !13, line: 189, baseType: !57, size: 8, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !497, file: !13, line: 189, baseType: !57, size: 8, offset: 72)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !497, file: !13, line: 189, baseType: !39, size: 16, offset: 80)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !497, file: !13, line: 189, baseType: !57, size: 8, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !497, file: !13, line: 190, baseType: !492, size: 128, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !497, file: !13, line: 190, baseType: !49, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !497, file: !13, line: 190, baseType: !507, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !509)
!509 = !{!510, !511, !512, !513, !521, !536, !568, !569, !570, !571, !572, !573}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !508, file: !6, line: 481, baseType: !45, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !508, file: !6, line: 482, baseType: !507, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !508, file: !6, line: 483, baseType: !507, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !508, file: !6, line: 484, baseType: !514, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !516)
!516 = !{!517, !518, !519, !520}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !515, file: !6, line: 498, baseType: !514, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !515, file: !6, line: 499, baseType: !514, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !515, file: !6, line: 500, baseType: !507, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !515, file: !6, line: 501, baseType: !91, size: 32, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !508, file: !6, line: 485, baseType: !522, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !524)
!524 = !{!525, !530, !531, !532, !533, !534, !535}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !523, file: !6, line: 467, baseType: !526, size: 128)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !526, file: !6, line: 460, baseType: !57, size: 8)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !526, file: !6, line: 461, baseType: !76, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !523, file: !6, line: 468, baseType: !526, size: 128, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !523, file: !6, line: 469, baseType: !39, size: 16, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !523, file: !6, line: 470, baseType: !57, size: 8, offset: 272)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !523, file: !6, line: 471, baseType: !57, size: 8, offset: 280)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !523, file: !6, line: 472, baseType: !57, size: 8, offset: 288)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !523, file: !6, line: 473, baseType: !57, size: 8, offset: 296)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !508, file: !6, line: 486, baseType: !537, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !539)
!539 = !{!540, !563, !564, !565, !566, !567}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !538, file: !6, line: 449, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !542)
!542 = !{!543, !544, !557}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !541, file: !6, line: 439, baseType: !45, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !541, file: !6, line: 440, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !547)
!547 = !{!548, !553, !554, !555, !556}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !546, file: !6, line: 420, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !154, line: 1058, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!91, !388, !91, !130}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !546, file: !6, line: 421, baseType: !130, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !546, file: !6, line: 422, baseType: !45, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !546, file: !6, line: 423, baseType: !57, size: 8, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !546, file: !6, line: 424, baseType: !57, size: 8, offset: 200)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !541, file: !6, line: 441, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !559, file: !6, line: 430, baseType: !45, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !559, file: !6, line: 431, baseType: !558, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !538, file: !6, line: 450, baseType: !522, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !538, file: !6, line: 451, baseType: !57, size: 8, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !538, file: !6, line: 452, baseType: !57, size: 8, offset: 136)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !538, file: !6, line: 453, baseType: !57, size: 8, offset: 144)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !538, file: !6, line: 454, baseType: !57, size: 8, offset: 152)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !508, file: !6, line: 487, baseType: !76, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !508, file: !6, line: 488, baseType: !91, size: 32, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !508, file: !6, line: 489, baseType: !39, size: 16, offset: 480)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !508, file: !6, line: 490, baseType: !39, size: 16, offset: 496)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !508, file: !6, line: 491, baseType: !57, size: 8, offset: 512)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !508, file: !6, line: 492, baseType: !57, size: 8, offset: 520)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !50, file: !13, line: 381, baseType: !575, size: 384)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !13, line: 193, size: 384, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !575, file: !13, line: 194, baseType: !49, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !575, file: !13, line: 194, baseType: !57, size: 8, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !575, file: !13, line: 194, baseType: !57, size: 8, offset: 72)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !575, file: !13, line: 194, baseType: !39, size: 16, offset: 80)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !13, line: 194, baseType: !57, size: 8, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !575, file: !13, line: 194, baseType: !492, size: 128, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !575, file: !13, line: 194, baseType: !49, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !575, file: !13, line: 194, baseType: !91, size: 32, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !575, file: !13, line: 195, baseType: !91, size: 32, offset: 352)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !50, file: !13, line: 382, baseType: !587, size: 384)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !13, line: 198, size: 384, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !587, file: !13, line: 199, baseType: !49, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !587, file: !13, line: 199, baseType: !57, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !13, line: 199, baseType: !57, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !587, file: !13, line: 199, baseType: !39, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !13, line: 199, baseType: !57, size: 8, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !587, file: !13, line: 201, baseType: !57, size: 8, offset: 104)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !587, file: !13, line: 202, baseType: !57, size: 8, offset: 112)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !587, file: !13, line: 203, baseType: !492, size: 128, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !587, file: !13, line: 203, baseType: !49, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !587, file: !13, line: 203, baseType: !599, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !154, line: 128, baseType: !76)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !50, file: !13, line: 383, baseType: !601, size: 320)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !13, line: 206, size: 320, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !601, file: !13, line: 207, baseType: !49, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !601, file: !13, line: 207, baseType: !57, size: 8, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !13, line: 207, baseType: !57, size: 8, offset: 72)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !601, file: !13, line: 207, baseType: !39, size: 16, offset: 80)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !601, file: !13, line: 207, baseType: !57, size: 8, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !601, file: !13, line: 207, baseType: !492, size: 128, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !601, file: !13, line: 207, baseType: !49, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !50, file: !13, line: 384, baseType: !611, size: 384)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !13, line: 234, size: 384, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !611, file: !13, line: 235, baseType: !49, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !611, file: !13, line: 235, baseType: !57, size: 8, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !611, file: !13, line: 235, baseType: !57, size: 8, offset: 72)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !611, file: !13, line: 235, baseType: !39, size: 16, offset: 80)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !611, file: !13, line: 235, baseType: !57, size: 8, offset: 96)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !611, file: !13, line: 235, baseType: !57, size: 8, offset: 104)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !611, file: !13, line: 235, baseType: !57, size: 8, offset: 112)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !611, file: !13, line: 235, baseType: !57, size: 8, offset: 120)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !611, file: !13, line: 235, baseType: !45, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !611, file: !13, line: 235, baseType: !91, size: 32, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !611, file: !13, line: 235, baseType: !91, size: 32, offset: 224)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !611, file: !13, line: 235, baseType: !91, size: 32, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !611, file: !13, line: 235, baseType: !57, size: 8, offset: 288)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !611, file: !13, line: 235, baseType: !57, size: 8, offset: 296)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !611, file: !13, line: 235, baseType: !49, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !50, file: !13, line: 385, baseType: !629, size: 576)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !13, line: 238, size: 576, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !629, file: !13, line: 239, baseType: !49, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !629, file: !13, line: 239, baseType: !57, size: 8, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !629, file: !13, line: 239, baseType: !57, size: 8, offset: 72)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !629, file: !13, line: 239, baseType: !39, size: 16, offset: 80)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !629, file: !13, line: 239, baseType: !57, size: 8, offset: 96)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !629, file: !13, line: 239, baseType: !57, size: 8, offset: 104)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !629, file: !13, line: 239, baseType: !57, size: 8, offset: 112)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !629, file: !13, line: 239, baseType: !57, size: 8, offset: 120)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !629, file: !13, line: 239, baseType: !45, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !629, file: !13, line: 239, baseType: !91, size: 32, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !629, file: !13, line: 239, baseType: !91, size: 32, offset: 224)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !629, file: !13, line: 239, baseType: !91, size: 32, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !629, file: !13, line: 239, baseType: !57, size: 8, offset: 288)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !629, file: !13, line: 239, baseType: !57, size: 8, offset: 296)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !629, file: !13, line: 239, baseType: !39, size: 16, offset: 304)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !629, file: !13, line: 240, baseType: !49, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !629, file: !13, line: 241, baseType: !102, size: 64, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !629, file: !13, line: 242, baseType: !39, size: 16, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !629, file: !13, line: 243, baseType: !102, size: 64, offset: 512)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !50, file: !13, line: 386, baseType: !651, size: 384)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !13, line: 263, size: 384, elements: !652)
!652 = !{!653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !651, file: !13, line: 264, baseType: !49, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !651, file: !13, line: 264, baseType: !57, size: 8, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !651, file: !13, line: 264, baseType: !57, size: 8, offset: 72)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !651, file: !13, line: 264, baseType: !39, size: 16, offset: 80)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !13, line: 264, baseType: !57, size: 8, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !651, file: !13, line: 264, baseType: !57, size: 8, offset: 104)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !651, file: !13, line: 264, baseType: !57, size: 8, offset: 112)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !651, file: !13, line: 264, baseType: !57, size: 8, offset: 120)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !651, file: !13, line: 264, baseType: !45, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !651, file: !13, line: 264, baseType: !91, size: 32, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !651, file: !13, line: 264, baseType: !91, size: 32, offset: 224)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !651, file: !13, line: 264, baseType: !91, size: 32, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !651, file: !13, line: 264, baseType: !57, size: 8, offset: 288)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !651, file: !13, line: 264, baseType: !57, size: 8, offset: 296)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !651, file: !13, line: 264, baseType: !57, size: 8, offset: 304)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !651, file: !13, line: 265, baseType: !49, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !50, file: !13, line: 387, baseType: !670, size: 448)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !13, line: 246, size: 448, elements: !671)
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !670, file: !13, line: 247, baseType: !49, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !670, file: !13, line: 247, baseType: !57, size: 8, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !670, file: !13, line: 247, baseType: !57, size: 8, offset: 72)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !670, file: !13, line: 247, baseType: !39, size: 16, offset: 80)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !13, line: 247, baseType: !57, size: 8, offset: 96)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !670, file: !13, line: 247, baseType: !57, size: 8, offset: 104)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !670, file: !13, line: 247, baseType: !57, size: 8, offset: 112)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !670, file: !13, line: 247, baseType: !57, size: 8, offset: 120)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !670, file: !13, line: 247, baseType: !45, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !670, file: !13, line: 247, baseType: !91, size: 32, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !670, file: !13, line: 247, baseType: !91, size: 32, offset: 224)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !670, file: !13, line: 247, baseType: !91, size: 32, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !670, file: !13, line: 247, baseType: !57, size: 8, offset: 288)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !670, file: !13, line: 247, baseType: !57, size: 8, offset: 296)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !670, file: !13, line: 247, baseType: !49, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !670, file: !13, line: 248, baseType: !49, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !50, file: !13, line: 388, baseType: !689, size: 448)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !13, line: 251, size: 448, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !689, file: !13, line: 252, baseType: !49, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !13, line: 252, baseType: !57, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !13, line: 252, baseType: !57, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !689, file: !13, line: 252, baseType: !39, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !13, line: 252, baseType: !57, size: 8, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !689, file: !13, line: 252, baseType: !57, size: 8, offset: 104)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !689, file: !13, line: 252, baseType: !57, size: 8, offset: 112)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !689, file: !13, line: 252, baseType: !57, size: 8, offset: 120)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !689, file: !13, line: 252, baseType: !45, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !689, file: !13, line: 252, baseType: !91, size: 32, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !689, file: !13, line: 252, baseType: !91, size: 32, offset: 224)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !689, file: !13, line: 252, baseType: !91, size: 32, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !689, file: !13, line: 252, baseType: !57, size: 8, offset: 288)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !689, file: !13, line: 252, baseType: !57, size: 8, offset: 296)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !689, file: !13, line: 257, baseType: !49, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !689, file: !13, line: 258, baseType: !49, size: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !50, file: !13, line: 389, baseType: !708, size: 512)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !13, line: 274, size: 512, elements: !709)
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !718, !719}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !708, file: !13, line: 275, baseType: !49, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !708, file: !13, line: 275, baseType: !57, size: 8, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !708, file: !13, line: 275, baseType: !57, size: 8, offset: 72)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !708, file: !13, line: 275, baseType: !39, size: 16, offset: 80)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !708, file: !13, line: 275, baseType: !57, size: 8, offset: 96)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !708, file: !13, line: 275, baseType: !45, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !708, file: !13, line: 276, baseType: !91, size: 32, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !708, file: !13, line: 277, baseType: !384, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !708, file: !13, line: 278, baseType: !130, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !708, file: !13, line: 279, baseType: !492, size: 128, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !50, file: !13, line: 390, baseType: !721, size: 576)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !13, line: 282, size: 576, elements: !722)
!722 = !{!723, !724, !725, !726, !727, !728, !729, !730, !736, !737, !738, !739, !745, !746}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !721, file: !13, line: 283, baseType: !49, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !721, file: !13, line: 283, baseType: !57, size: 8, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !721, file: !13, line: 283, baseType: !57, size: 8, offset: 72)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !721, file: !13, line: 283, baseType: !39, size: 16, offset: 80)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !721, file: !13, line: 283, baseType: !57, size: 8, offset: 96)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !721, file: !13, line: 283, baseType: !57, size: 8, offset: 104)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !721, file: !13, line: 284, baseType: !57, size: 8, offset: 112)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !721, file: !13, line: 285, baseType: !731, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !154, line: 1093, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!153, !91, !480, !91, !735, !130, !130}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !721, file: !13, line: 286, baseType: !45, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !721, file: !13, line: 287, baseType: !130, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !721, file: !13, line: 288, baseType: !130, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !721, file: !13, line: 289, baseType: !740, size: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !154, line: 1126, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!153, !388, !91, !130, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !721, file: !13, line: 290, baseType: !49, size: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !721, file: !13, line: 291, baseType: !49, size: 64, offset: 512)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !50, file: !13, line: 391, baseType: !748, size: 512)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !13, line: 309, size: 512, elements: !749)
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !748, file: !13, line: 310, baseType: !49, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !748, file: !13, line: 310, baseType: !57, size: 8, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !748, file: !13, line: 310, baseType: !57, size: 8, offset: 72)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !748, file: !13, line: 310, baseType: !39, size: 16, offset: 80)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !13, line: 310, baseType: !57, size: 8, offset: 96)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !748, file: !13, line: 310, baseType: !57, size: 8, offset: 104)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !748, file: !13, line: 311, baseType: !57, size: 8, offset: 112)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !748, file: !13, line: 312, baseType: !57, size: 8, offset: 120)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !748, file: !13, line: 313, baseType: !130, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !748, file: !13, line: 314, baseType: !45, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !748, file: !13, line: 315, baseType: !117, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !748, file: !13, line: 316, baseType: !102, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !748, file: !13, line: 317, baseType: !102, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !748, file: !13, line: 318, baseType: !91, size: 32, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !50, file: !13, line: 392, baseType: !765, size: 448)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !13, line: 342, size: 448, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775, !776}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !765, file: !13, line: 343, baseType: !49, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !765, file: !13, line: 343, baseType: !57, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !765, file: !13, line: 343, baseType: !57, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !765, file: !13, line: 343, baseType: !39, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !13, line: 343, baseType: !57, size: 8, offset: 96)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !765, file: !13, line: 343, baseType: !45, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !765, file: !13, line: 344, baseType: !45, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !765, file: !13, line: 345, baseType: !130, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !765, file: !13, line: 346, baseType: !102, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !765, file: !13, line: 347, baseType: !91, size: 32, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !50, file: !13, line: 393, baseType: !778, size: 256)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !13, line: 352, size: 256, elements: !779)
!779 = !{!780, !781, !782, !783, !784, !785, !790}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !778, file: !13, line: 353, baseType: !49, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !778, file: !13, line: 353, baseType: !57, size: 8, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !778, file: !13, line: 353, baseType: !57, size: 8, offset: 72)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !778, file: !13, line: 353, baseType: !39, size: 16, offset: 80)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !778, file: !13, line: 353, baseType: !57, size: 8, offset: 96)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !778, file: !13, line: 353, baseType: !786, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !154, line: 1064, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !388, !130}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !778, file: !13, line: 354, baseType: !130, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !50, file: !13, line: 394, baseType: !792, size: 192)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !13, line: 359, size: 192, elements: !793)
!793 = !{!794, !795, !796, !797, !798, !799}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !792, file: !13, line: 360, baseType: !49, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !792, file: !13, line: 360, baseType: !57, size: 8, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !792, file: !13, line: 360, baseType: !57, size: 8, offset: 72)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !792, file: !13, line: 360, baseType: !39, size: 16, offset: 80)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !792, file: !13, line: 360, baseType: !57, size: 8, offset: 96)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !792, file: !13, line: 360, baseType: !49, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !50, file: !13, line: 401, baseType: !46, size: 384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !46, file: !6, line: 135, baseType: !57, size: 8, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !46, file: !6, line: 136, baseType: !57, size: 8, offset: 72)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !46, file: !6, line: 137, baseType: !39, size: 16, offset: 80)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !46, file: !6, line: 138, baseType: !805, size: 32, offset: 96)
!805 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !806, line: 328, size: 32, elements: !807)
!806 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !805, file: !806, line: 329, baseType: !91, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !805, file: !806, line: 330, baseType: !249, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !46, file: !6, line: 139, baseType: !45, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !46, file: !6, line: 140, baseType: !45, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !46, file: !6, line: 141, baseType: !45, size: 64, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !46, file: !6, line: 142, baseType: !167, size: 16, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !815, line: 42, baseType: !816)
!815 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!816 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !154, line: 127, baseType: !76)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !815, line: 154, baseType: !7)
!819 = !{!820, !825, !830, !835, !840, !845, !0, !850}
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !3, line: 190, type: !822, isLocal: true, isDefinition: true)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 408, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 51)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(scope: null, file: !3, line: 414, type: !827, isLocal: true, isDefinition: true)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 232, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 29)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(scope: null, file: !3, line: 430, type: !832, isLocal: true, isDefinition: true)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 552, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 69)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !3, line: 440, type: !837, isLocal: true, isDefinition: true)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 208, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 26)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(scope: null, file: !3, line: 526, type: !842, isLocal: true, isDefinition: true)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 424, elements: !843)
!843 = !{!844}
!844 = !DISubrange(count: 53)
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(scope: null, file: !3, line: 537, type: !847, isLocal: true, isDefinition: true)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 240, elements: !848)
!848 = !{!849}
!849 = !DISubrange(count: 30)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(scope: null, file: !29, line: 480, type: !852, isLocal: true, isDefinition: true)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 168, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 21)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !856, size: 72, elements: !404)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!857 = !{i32 7, !"Dwarf Version", i32 5}
!858 = !{i32 2, !"Debug Info Version", i32 3}
!859 = !{i32 1, !"wchar_size", i32 2}
!860 = !{i32 8, !"cf-protection-branch", i32 1}
!861 = !{i32 4, !"function_return_thunk_extern", i32 1}
!862 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!863 = !{i32 1, !"Code Model", i32 2}
!864 = !{i32 1, !"override-stack-alignment", i32 8}
!865 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!866 = distinct !DISubprogram(name: "acpi_ds_build_internal_object", scope: !3, file: !3, line: 36, type: !867, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !869)
!867 = !DISubroutineType(types: !868)
!868 = !{!153, !155, !190, !117}
!869 = !{!870, !871, !872, !873, !874, !875}
!870 = !DILocalVariable(name: "walk_state", arg: 1, scope: !866, file: !3, line: 36, type: !155)
!871 = !DILocalVariable(name: "op", arg: 2, scope: !866, file: !3, line: 37, type: !190)
!872 = !DILocalVariable(name: "obj_desc_ptr", arg: 3, scope: !866, file: !3, line: 38, type: !117)
!873 = !DILocalVariable(name: "obj_desc", scope: !866, file: !3, line: 40, type: !49)
!874 = !DILocalVariable(name: "status", scope: !866, file: !3, line: 41, type: !153)
!875 = !DILabel(scope: !866, name: "create_new_object", file: !3, line: 90)
!876 = !DILocation(line: 36, column: 55, scope: !866)
!877 = !DILocation(line: 37, column: 35, scope: !866)
!878 = !DILocation(line: 38, column: 38, scope: !866)
!879 = !DILocation(line: 40, column: 2, scope: !866)
!880 = !DILocation(line: 40, column: 29, scope: !866)
!881 = !DILocation(line: 41, column: 2, scope: !866)
!882 = !DILocation(line: 41, column: 14, scope: !866)
!883 = !DILocation(line: 45, column: 3, scope: !866)
!884 = !DILocation(line: 45, column: 16, scope: !866)
!885 = !DILocation(line: 46, column: 6, scope: !886)
!886 = distinct !DILexicalBlock(scope: !866, file: !3, line: 46, column: 6)
!887 = !DILocation(line: 46, column: 17, scope: !886)
!888 = !DILocation(line: 46, column: 28, scope: !886)
!889 = !DILocation(line: 46, column: 6, scope: !866)
!890 = !DILocation(line: 52, column: 8, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !3, line: 52, column: 7)
!892 = distinct !DILexicalBlock(scope: !886, file: !3, line: 46, column: 52)
!893 = !DILocation(line: 52, column: 19, scope: !891)
!894 = !DILocation(line: 52, column: 7, scope: !892)
!895 = !DILocation(line: 56, column: 9, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !3, line: 56, column: 8)
!897 = distinct !DILexicalBlock(scope: !891, file: !3, line: 52, column: 25)
!898 = !DILocation(line: 56, column: 20, scope: !896)
!899 = !DILocation(line: 56, column: 35, scope: !896)
!900 = !DILocation(line: 56, column: 46, scope: !896)
!901 = !DILocation(line: 58, column: 8, scope: !896)
!902 = !DILocation(line: 58, column: 12, scope: !896)
!903 = !DILocation(line: 58, column: 23, scope: !896)
!904 = !DILocation(line: 58, column: 38, scope: !896)
!905 = !DILocation(line: 58, column: 49, scope: !896)
!906 = !DILocation(line: 56, column: 8, scope: !897)
!907 = !DILocation(line: 66, column: 5, scope: !908)
!908 = distinct !DILexicalBlock(scope: !896, file: !3, line: 59, column: 31)
!909 = !DILocation(line: 68, column: 29, scope: !910)
!910 = distinct !DILexicalBlock(scope: !896, file: !3, line: 67, column: 11)
!911 = !DILocation(line: 68, column: 41, scope: !910)
!912 = !DILocation(line: 69, column: 8, scope: !910)
!913 = !DILocation(line: 69, column: 19, scope: !910)
!914 = !DILocation(line: 69, column: 25, scope: !910)
!915 = !DILocation(line: 75, column: 8, scope: !910)
!916 = !DILocation(line: 68, column: 14, scope: !910)
!917 = !DILocation(line: 68, column: 12, scope: !910)
!918 = !DILocation(line: 79, column: 9, scope: !919)
!919 = distinct !DILexicalBlock(scope: !910, file: !3, line: 79, column: 9)
!920 = !DILocation(line: 79, column: 9, scope: !910)
!921 = !DILocation(line: 80, column: 6, scope: !922)
!922 = distinct !DILexicalBlock(scope: !919, file: !3, line: 79, column: 31)
!923 = !DILocation(line: 84, column: 6, scope: !922)
!924 = !DILocation(line: 87, column: 3, scope: !897)
!925 = !DILocation(line: 88, column: 2, scope: !892)
!926 = !DILocation(line: 46, column: 31, scope: !886)
!927 = !DILocation(line: 90, column: 1, scope: !866)
!928 = !DILocation(line: 94, column: 13, scope: !866)
!929 = !DILocation(line: 94, column: 11, scope: !866)
!930 = !DILocation(line: 97, column: 7, scope: !931)
!931 = distinct !DILexicalBlock(scope: !866, file: !3, line: 97, column: 6)
!932 = !DILocation(line: 97, column: 6, scope: !866)
!933 = !DILocation(line: 98, column: 3, scope: !934)
!934 = distinct !DILexicalBlock(scope: !931, file: !3, line: 97, column: 17)
!935 = !DILocation(line: 102, column: 34, scope: !866)
!936 = !DILocation(line: 102, column: 46, scope: !866)
!937 = !DILocation(line: 102, column: 50, scope: !866)
!938 = !DILocation(line: 102, column: 61, scope: !866)
!939 = !DILocation(line: 102, column: 6, scope: !866)
!940 = !DILocation(line: 101, column: 9, scope: !866)
!941 = !DILocation(line: 104, column: 6, scope: !942)
!942 = distinct !DILexicalBlock(scope: !866, file: !3, line: 104, column: 6)
!943 = !DILocation(line: 104, column: 6, scope: !866)
!944 = !DILocation(line: 105, column: 28, scope: !945)
!945 = distinct !DILexicalBlock(scope: !942, file: !3, line: 104, column: 28)
!946 = !DILocation(line: 105, column: 3, scope: !945)
!947 = !DILocation(line: 106, column: 3, scope: !945)
!948 = !DILocation(line: 113, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !866, file: !3, line: 113, column: 6)
!950 = !DILocation(line: 113, column: 18, scope: !949)
!951 = !DILocation(line: 113, column: 33, scope: !949)
!952 = !DILocation(line: 113, column: 44, scope: !949)
!953 = !DILocation(line: 113, column: 63, scope: !949)
!954 = !DILocation(line: 114, column: 7, scope: !949)
!955 = !DILocation(line: 114, column: 18, scope: !949)
!956 = !DILocation(line: 114, column: 33, scope: !949)
!957 = !DILocation(line: 114, column: 44, scope: !949)
!958 = !DILocation(line: 113, column: 6, scope: !866)
!959 = !DILocation(line: 115, column: 3, scope: !960)
!960 = distinct !DILexicalBlock(scope: !949, file: !3, line: 114, column: 73)
!961 = !DILocation(line: 115, column: 23, scope: !960)
!962 = !DILocation(line: 115, column: 32, scope: !960)
!963 = !DILocation(line: 117, column: 8, scope: !964)
!964 = distinct !DILexicalBlock(scope: !960, file: !3, line: 117, column: 7)
!965 = !DILocation(line: 117, column: 19, scope: !964)
!966 = !DILocation(line: 117, column: 30, scope: !964)
!967 = !DILocation(line: 117, column: 54, scope: !964)
!968 = !DILocation(line: 118, column: 8, scope: !964)
!969 = !DILocation(line: 118, column: 28, scope: !964)
!970 = !DILocation(line: 117, column: 7, scope: !960)
!971 = !DILocation(line: 124, column: 8, scope: !972)
!972 = distinct !DILexicalBlock(scope: !964, file: !3, line: 118, column: 34)
!973 = !DILocation(line: 124, column: 20, scope: !972)
!974 = !DILocation(line: 124, column: 38, scope: !972)
!975 = !DILocation(line: 123, column: 4, scope: !972)
!976 = !DILocation(line: 123, column: 24, scope: !972)
!977 = !DILocation(line: 123, column: 29, scope: !972)
!978 = !DILocation(line: 125, column: 30, scope: !972)
!979 = !DILocation(line: 125, column: 41, scope: !972)
!980 = !DILocation(line: 125, column: 4, scope: !972)
!981 = !DILocation(line: 125, column: 24, scope: !972)
!982 = !DILocation(line: 125, column: 28, scope: !972)
!983 = !DILocation(line: 126, column: 4, scope: !972)
!984 = !DILocation(line: 126, column: 24, scope: !972)
!985 = !DILocation(line: 126, column: 33, scope: !972)
!986 = !DILocation(line: 127, column: 3, scope: !972)
!987 = !DILocation(line: 128, column: 2, scope: !960)
!988 = !DILocation(line: 130, column: 18, scope: !866)
!989 = !DILocation(line: 130, column: 3, scope: !866)
!990 = !DILocation(line: 130, column: 16, scope: !866)
!991 = !DILocation(line: 131, column: 2, scope: !866)
!992 = !DILocation(line: 132, column: 1, scope: !866)
!993 = !DISubprogram(name: "acpi_ns_lookup", scope: !994, file: !994, line: 118, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!995 = !DISubroutineType(types: !996)
!996 = !{!153, !275, !88, !997, !998, !91, !155, !44}
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !154, line: 644, baseType: !91)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interpreter_mode", file: !6, line: 120, baseType: !5)
!999 = !DISubprogram(name: "acpi_ut_prefixed_namespace_error", scope: !1000, file: !1000, line: 728, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1000 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !1003, !91, !275, !1003, !153}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!1004 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !1000, file: !1000, line: 436, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!49, !1003, !91, !91, !997}
!1007 = !DISubprogram(name: "acpi_ps_get_opcode_info", scope: !1008, file: !1008, line: 108, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1008 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!419, !39}
!1011 = distinct !DISubprogram(name: "acpi_ds_init_object_from_op", scope: !3, file: !3, line: 319, type: !1012, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1014)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!153, !155, !190, !39, !117}
!1014 = !{!1015, !1016, !1017, !1018, !1019, !1020, !1021}
!1015 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1011, file: !3, line: 319, type: !155)
!1016 = !DILocalVariable(name: "op", arg: 2, scope: !1011, file: !3, line: 320, type: !190)
!1017 = !DILocalVariable(name: "opcode", arg: 3, scope: !1011, file: !3, line: 321, type: !39)
!1018 = !DILocalVariable(name: "ret_obj_desc", arg: 4, scope: !1011, file: !3, line: 322, type: !117)
!1019 = !DILocalVariable(name: "op_info", scope: !1011, file: !3, line: 324, type: !419)
!1020 = !DILocalVariable(name: "obj_desc", scope: !1011, file: !3, line: 325, type: !49)
!1021 = !DILocalVariable(name: "status", scope: !1011, file: !3, line: 326, type: !153)
!1022 = !DILocation(line: 319, column: 53, scope: !1011)
!1023 = !DILocation(line: 320, column: 33, scope: !1011)
!1024 = !DILocation(line: 321, column: 12, scope: !1011)
!1025 = !DILocation(line: 322, column: 36, scope: !1011)
!1026 = !DILocation(line: 324, column: 2, scope: !1011)
!1027 = !DILocation(line: 324, column: 33, scope: !1011)
!1028 = !DILocation(line: 325, column: 2, scope: !1011)
!1029 = !DILocation(line: 325, column: 29, scope: !1011)
!1030 = !DILocation(line: 326, column: 2, scope: !1011)
!1031 = !DILocation(line: 326, column: 14, scope: !1011)
!1032 = !DILocation(line: 330, column: 14, scope: !1011)
!1033 = !DILocation(line: 330, column: 13, scope: !1011)
!1034 = !DILocation(line: 330, column: 11, scope: !1011)
!1035 = !DILocation(line: 331, column: 36, scope: !1011)
!1036 = !DILocation(line: 331, column: 12, scope: !1011)
!1037 = !DILocation(line: 331, column: 10, scope: !1011)
!1038 = !DILocation(line: 332, column: 6, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 332, column: 6)
!1040 = !DILocation(line: 332, column: 15, scope: !1039)
!1041 = !DILocation(line: 332, column: 21, scope: !1039)
!1042 = !DILocation(line: 332, column: 6, scope: !1011)
!1043 = !DILocation(line: 336, column: 3, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 332, column: 43)
!1045 = !DILocation(line: 341, column: 10, scope: !1011)
!1046 = !DILocation(line: 341, column: 27, scope: !1011)
!1047 = !DILocation(line: 341, column: 2, scope: !1011)
!1048 = !DILocation(line: 347, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 341, column: 33)
!1050 = !DILocation(line: 346, column: 3, scope: !1049)
!1051 = !DILocation(line: 346, column: 20, scope: !1049)
!1052 = !DILocation(line: 346, column: 25, scope: !1049)
!1053 = !DILocation(line: 349, column: 32, scope: !1049)
!1054 = !DILocation(line: 349, column: 42, scope: !1049)
!1055 = !DILocation(line: 349, column: 3, scope: !1049)
!1056 = !DILocation(line: 349, column: 20, scope: !1049)
!1057 = !DILocation(line: 349, column: 30, scope: !1049)
!1058 = !DILocation(line: 350, column: 33, scope: !1049)
!1059 = !DILocation(line: 350, column: 43, scope: !1049)
!1060 = !DILocation(line: 350, column: 3, scope: !1049)
!1061 = !DILocation(line: 350, column: 20, scope: !1049)
!1062 = !DILocation(line: 350, column: 31, scope: !1049)
!1063 = !DILocation(line: 351, column: 3, scope: !1049)
!1064 = !DILocation(line: 362, column: 7, scope: !1049)
!1065 = !DILocation(line: 361, column: 3, scope: !1049)
!1066 = !DILocation(line: 361, column: 21, scope: !1049)
!1067 = !DILocation(line: 361, column: 26, scope: !1049)
!1068 = !DILocation(line: 365, column: 8, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 365, column: 7)
!1070 = !DILocation(line: 365, column: 18, scope: !1069)
!1071 = !DILocation(line: 365, column: 7, scope: !1049)
!1072 = !DILocation(line: 366, column: 4, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 365, column: 24)
!1074 = !DILocation(line: 369, column: 33, scope: !1049)
!1075 = !DILocation(line: 369, column: 43, scope: !1049)
!1076 = !DILocation(line: 369, column: 3, scope: !1049)
!1077 = !DILocation(line: 369, column: 21, scope: !1049)
!1078 = !DILocation(line: 369, column: 31, scope: !1049)
!1079 = !DILocation(line: 370, column: 34, scope: !1049)
!1080 = !DILocation(line: 370, column: 44, scope: !1049)
!1081 = !DILocation(line: 370, column: 3, scope: !1049)
!1082 = !DILocation(line: 370, column: 21, scope: !1049)
!1083 = !DILocation(line: 370, column: 32, scope: !1049)
!1084 = !DILocation(line: 371, column: 3, scope: !1049)
!1085 = !DILocation(line: 375, column: 11, scope: !1049)
!1086 = !DILocation(line: 375, column: 20, scope: !1049)
!1087 = !DILocation(line: 375, column: 3, scope: !1049)
!1088 = !DILocation(line: 385, column: 4, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 375, column: 26)
!1090 = !DILocation(line: 385, column: 21, scope: !1089)
!1091 = !DILocation(line: 385, column: 27, scope: !1089)
!1092 = !DILocation(line: 387, column: 12, scope: !1089)
!1093 = !DILocation(line: 387, column: 4, scope: !1089)
!1094 = !DILocation(line: 390, column: 5, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 387, column: 20)
!1096 = !DILocation(line: 390, column: 23, scope: !1095)
!1097 = !DILocation(line: 390, column: 29, scope: !1095)
!1098 = !DILocation(line: 391, column: 5, scope: !1095)
!1099 = !DILocation(line: 395, column: 5, scope: !1095)
!1100 = !DILocation(line: 395, column: 23, scope: !1095)
!1101 = !DILocation(line: 395, column: 29, scope: !1095)
!1102 = !DILocation(line: 396, column: 5, scope: !1095)
!1103 = !DILocation(line: 400, column: 5, scope: !1095)
!1104 = !DILocation(line: 400, column: 23, scope: !1095)
!1105 = !DILocation(line: 400, column: 29, scope: !1095)
!1106 = !DILocation(line: 404, column: 43, scope: !1095)
!1107 = !DILocation(line: 404, column: 11, scope: !1095)
!1108 = !DILocation(line: 405, column: 5, scope: !1095)
!1109 = !DILocation(line: 409, column: 5, scope: !1095)
!1110 = !DILocation(line: 409, column: 23, scope: !1095)
!1111 = !DILocation(line: 409, column: 29, scope: !1095)
!1112 = !DILocation(line: 410, column: 5, scope: !1095)
!1113 = !DILocation(line: 414, column: 5, scope: !1095)
!1114 = !DILocation(line: 417, column: 12, scope: !1095)
!1115 = !DILocation(line: 418, column: 5, scope: !1095)
!1116 = !DILocation(line: 420, column: 4, scope: !1089)
!1117 = !DILocation(line: 424, column: 30, scope: !1089)
!1118 = !DILocation(line: 424, column: 41, scope: !1089)
!1119 = !DILocation(line: 424, column: 47, scope: !1089)
!1120 = !DILocation(line: 424, column: 4, scope: !1089)
!1121 = !DILocation(line: 424, column: 22, scope: !1089)
!1122 = !DILocation(line: 424, column: 28, scope: !1089)
!1123 = !DILocation(line: 426, column: 40, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 426, column: 8)
!1125 = !DILocation(line: 426, column: 8, scope: !1124)
!1126 = !DILocation(line: 426, column: 8, scope: !1089)
!1127 = !DILocation(line: 430, column: 5, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 426, column: 51)
!1129 = !DILocation(line: 435, column: 4, scope: !1128)
!1130 = !DILocation(line: 436, column: 4, scope: !1089)
!1131 = !DILocation(line: 440, column: 4, scope: !1089)
!1132 = !DILocation(line: 442, column: 11, scope: !1089)
!1133 = !DILocation(line: 443, column: 4, scope: !1089)
!1134 = !DILocation(line: 445, column: 3, scope: !1049)
!1135 = !DILocation(line: 449, column: 30, scope: !1049)
!1136 = !DILocation(line: 449, column: 41, scope: !1049)
!1137 = !DILocation(line: 449, column: 47, scope: !1049)
!1138 = !DILocation(line: 449, column: 3, scope: !1049)
!1139 = !DILocation(line: 449, column: 20, scope: !1049)
!1140 = !DILocation(line: 449, column: 28, scope: !1049)
!1141 = !DILocation(line: 450, column: 41, scope: !1049)
!1142 = !DILocation(line: 450, column: 52, scope: !1049)
!1143 = !DILocation(line: 450, column: 58, scope: !1049)
!1144 = !DILocation(line: 450, column: 34, scope: !1049)
!1145 = !DILocation(line: 450, column: 29, scope: !1049)
!1146 = !DILocation(line: 450, column: 3, scope: !1049)
!1147 = !DILocation(line: 450, column: 20, scope: !1049)
!1148 = !DILocation(line: 450, column: 27, scope: !1049)
!1149 = !DILocation(line: 456, column: 3, scope: !1049)
!1150 = !DILocation(line: 456, column: 20, scope: !1049)
!1151 = !DILocation(line: 456, column: 26, scope: !1049)
!1152 = !DILocation(line: 457, column: 3, scope: !1049)
!1153 = !DILocation(line: 464, column: 11, scope: !1049)
!1154 = !DILocation(line: 464, column: 20, scope: !1049)
!1155 = !DILocation(line: 464, column: 3, scope: !1049)
!1156 = !DILocation(line: 470, column: 14, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 464, column: 26)
!1158 = !DILocation(line: 470, column: 9, scope: !1157)
!1159 = !DILocation(line: 470, column: 22, scope: !1157)
!1160 = !DILocation(line: 469, column: 4, scope: !1157)
!1161 = !DILocation(line: 469, column: 24, scope: !1157)
!1162 = !DILocation(line: 469, column: 30, scope: !1157)
!1163 = !DILocation(line: 471, column: 4, scope: !1157)
!1164 = !DILocation(line: 471, column: 24, scope: !1157)
!1165 = !DILocation(line: 471, column: 30, scope: !1157)
!1166 = !DILocation(line: 475, column: 9, scope: !1157)
!1167 = !DILocation(line: 476, column: 9, scope: !1157)
!1168 = !DILocation(line: 476, column: 16, scope: !1157)
!1169 = !DILocation(line: 477, column: 9, scope: !1157)
!1170 = !DILocation(line: 474, column: 8, scope: !1157)
!1171 = !DILocation(line: 473, column: 11, scope: !1157)
!1172 = !DILocation(line: 482, column: 4, scope: !1157)
!1173 = !DILocation(line: 489, column: 14, scope: !1157)
!1174 = !DILocation(line: 489, column: 9, scope: !1157)
!1175 = !DILocation(line: 489, column: 22, scope: !1157)
!1176 = !DILocation(line: 488, column: 4, scope: !1157)
!1177 = !DILocation(line: 488, column: 24, scope: !1157)
!1178 = !DILocation(line: 488, column: 30, scope: !1157)
!1179 = !DILocation(line: 490, column: 4, scope: !1157)
!1180 = !DILocation(line: 490, column: 24, scope: !1157)
!1181 = !DILocation(line: 490, column: 30, scope: !1157)
!1182 = !DILocation(line: 493, column: 14, scope: !1157)
!1183 = !DILocation(line: 494, column: 24, scope: !1157)
!1184 = !DILocation(line: 495, column: 14, scope: !1157)
!1185 = !DILocation(line: 496, column: 14, scope: !1157)
!1186 = !DILocation(line: 492, column: 13, scope: !1157)
!1187 = !DILocation(line: 492, column: 11, scope: !1157)
!1188 = !DILocation(line: 502, column: 4, scope: !1157)
!1189 = !DILocation(line: 506, column: 12, scope: !1157)
!1190 = !DILocation(line: 506, column: 23, scope: !1157)
!1191 = !DILocation(line: 506, column: 4, scope: !1157)
!1192 = !DILocation(line: 511, column: 32, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 506, column: 35)
!1194 = !DILocation(line: 511, column: 43, scope: !1193)
!1195 = !DILocation(line: 511, column: 5, scope: !1193)
!1196 = !DILocation(line: 511, column: 25, scope: !1193)
!1197 = !DILocation(line: 511, column: 30, scope: !1193)
!1198 = !DILocation(line: 512, column: 5, scope: !1193)
!1199 = !DILocation(line: 512, column: 25, scope: !1193)
!1200 = !DILocation(line: 512, column: 31, scope: !1193)
!1201 = !DILocation(line: 513, column: 9, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 513, column: 9)
!1203 = !DILocation(line: 513, column: 20, scope: !1202)
!1204 = !DILocation(line: 513, column: 9, scope: !1193)
!1205 = !DILocation(line: 515, column: 10, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 513, column: 26)
!1207 = !DILocation(line: 515, column: 21, scope: !1206)
!1208 = !DILocation(line: 515, column: 27, scope: !1206)
!1209 = !DILocation(line: 514, column: 6, scope: !1206)
!1210 = !DILocation(line: 514, column: 26, scope: !1206)
!1211 = !DILocation(line: 514, column: 33, scope: !1206)
!1212 = !DILocation(line: 516, column: 5, scope: !1206)
!1213 = !DILocation(line: 517, column: 5, scope: !1193)
!1214 = !DILocation(line: 521, column: 5, scope: !1193)
!1215 = !DILocation(line: 521, column: 25, scope: !1193)
!1216 = !DILocation(line: 521, column: 31, scope: !1193)
!1217 = !DILocation(line: 522, column: 5, scope: !1193)
!1218 = !DILocation(line: 526, column: 5, scope: !1193)
!1219 = !DILocation(line: 529, column: 5, scope: !1193)
!1220 = !DILocation(line: 531, column: 4, scope: !1157)
!1221 = !DILocation(line: 533, column: 3, scope: !1049)
!1222 = !DILocation(line: 537, column: 3, scope: !1049)
!1223 = !DILocation(line: 540, column: 10, scope: !1049)
!1224 = !DILocation(line: 541, column: 3, scope: !1049)
!1225 = !DILocation(line: 544, column: 2, scope: !1011)
!1226 = !DILocation(line: 545, column: 1, scope: !1011)
!1227 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1000, file: !1000, line: 369, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !49}
!1230 = distinct !DISubprogram(name: "acpi_ds_build_internal_buffer_obj", scope: !3, file: !3, line: 151, type: !1231, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1233)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!153, !155, !190, !91, !117}
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241}
!1234 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1230, file: !3, line: 151, type: !155)
!1235 = !DILocalVariable(name: "op", arg: 2, scope: !1230, file: !3, line: 152, type: !190)
!1236 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !1230, file: !3, line: 153, type: !91)
!1237 = !DILocalVariable(name: "obj_desc_ptr", arg: 4, scope: !1230, file: !3, line: 154, type: !117)
!1238 = !DILocalVariable(name: "arg", scope: !1230, file: !3, line: 156, type: !190)
!1239 = !DILocalVariable(name: "obj_desc", scope: !1230, file: !3, line: 157, type: !49)
!1240 = !DILocalVariable(name: "byte_list", scope: !1230, file: !3, line: 158, type: !190)
!1241 = !DILocalVariable(name: "byte_list_length", scope: !1230, file: !3, line: 159, type: !91)
!1242 = !DILocation(line: 151, column: 59, scope: !1230)
!1243 = !DILocation(line: 152, column: 32, scope: !1230)
!1244 = !DILocation(line: 153, column: 11, scope: !1230)
!1245 = !DILocation(line: 154, column: 35, scope: !1230)
!1246 = !DILocation(line: 156, column: 2, scope: !1230)
!1247 = !DILocation(line: 156, column: 27, scope: !1230)
!1248 = !DILocation(line: 157, column: 2, scope: !1230)
!1249 = !DILocation(line: 157, column: 29, scope: !1230)
!1250 = !DILocation(line: 158, column: 2, scope: !1230)
!1251 = !DILocation(line: 158, column: 27, scope: !1230)
!1252 = !DILocation(line: 159, column: 2, scope: !1230)
!1253 = !DILocation(line: 159, column: 6, scope: !1230)
!1254 = !DILocation(line: 168, column: 14, scope: !1230)
!1255 = !DILocation(line: 168, column: 13, scope: !1230)
!1256 = !DILocation(line: 168, column: 11, scope: !1230)
!1257 = !DILocation(line: 169, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 169, column: 6)
!1259 = !DILocation(line: 169, column: 6, scope: !1230)
!1260 = !DILocation(line: 173, column: 14, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 169, column: 17)
!1262 = !DILocation(line: 173, column: 12, scope: !1261)
!1263 = !DILocation(line: 174, column: 19, scope: !1261)
!1264 = !DILocation(line: 174, column: 4, scope: !1261)
!1265 = !DILocation(line: 174, column: 17, scope: !1261)
!1266 = !DILocation(line: 175, column: 8, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 175, column: 7)
!1268 = !DILocation(line: 175, column: 7, scope: !1261)
!1269 = !DILocation(line: 176, column: 4, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 175, column: 18)
!1271 = !DILocation(line: 178, column: 2, scope: !1261)
!1272 = !DILocation(line: 185, column: 8, scope: !1230)
!1273 = !DILocation(line: 185, column: 19, scope: !1230)
!1274 = !DILocation(line: 185, column: 25, scope: !1230)
!1275 = !DILocation(line: 185, column: 6, scope: !1230)
!1276 = !DILocation(line: 187, column: 14, scope: !1230)
!1277 = !DILocation(line: 187, column: 25, scope: !1230)
!1278 = !DILocation(line: 187, column: 12, scope: !1230)
!1279 = !DILocation(line: 188, column: 6, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 188, column: 6)
!1281 = !DILocation(line: 188, column: 6, scope: !1230)
!1282 = !DILocation(line: 189, column: 7, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 189, column: 7)
!1284 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 188, column: 17)
!1285 = !DILocation(line: 189, column: 25, scope: !1283)
!1286 = !DILocation(line: 189, column: 36, scope: !1283)
!1287 = !DILocation(line: 189, column: 7, scope: !1284)
!1288 = !DILocation(line: 190, column: 4, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 189, column: 60)
!1290 = !DILocation(line: 194, column: 29, scope: !1289)
!1291 = !DILocation(line: 194, column: 4, scope: !1289)
!1292 = !DILocation(line: 195, column: 4, scope: !1289)
!1293 = !DILocation(line: 198, column: 28, scope: !1284)
!1294 = !DILocation(line: 198, column: 46, scope: !1284)
!1295 = !DILocation(line: 198, column: 52, scope: !1284)
!1296 = !DILocation(line: 198, column: 22, scope: !1284)
!1297 = !DILocation(line: 198, column: 20, scope: !1284)
!1298 = !DILocation(line: 199, column: 2, scope: !1284)
!1299 = !DILocation(line: 206, column: 28, scope: !1230)
!1300 = !DILocation(line: 206, column: 2, scope: !1230)
!1301 = !DILocation(line: 206, column: 19, scope: !1230)
!1302 = !DILocation(line: 206, column: 26, scope: !1230)
!1303 = !DILocation(line: 207, column: 6, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 207, column: 6)
!1305 = !DILocation(line: 207, column: 25, scope: !1304)
!1306 = !DILocation(line: 207, column: 23, scope: !1304)
!1307 = !DILocation(line: 207, column: 6, scope: !1230)
!1308 = !DILocation(line: 208, column: 29, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 207, column: 40)
!1310 = !DILocation(line: 208, column: 3, scope: !1309)
!1311 = !DILocation(line: 208, column: 20, scope: !1309)
!1312 = !DILocation(line: 208, column: 27, scope: !1309)
!1313 = !DILocation(line: 209, column: 2, scope: !1309)
!1314 = !DILocation(line: 213, column: 6, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 213, column: 6)
!1316 = !DILocation(line: 213, column: 23, scope: !1315)
!1317 = !DILocation(line: 213, column: 30, scope: !1315)
!1318 = !DILocation(line: 213, column: 6, scope: !1230)
!1319 = !DILocation(line: 214, column: 3, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 213, column: 36)
!1321 = !DILocation(line: 214, column: 20, scope: !1320)
!1322 = !DILocation(line: 214, column: 28, scope: !1320)
!1323 = !DILocation(line: 217, column: 2, scope: !1320)
!1324 = !DILocation(line: 219, column: 7, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 217, column: 9)
!1326 = !DILocation(line: 218, column: 3, scope: !1325)
!1327 = !DILocation(line: 218, column: 20, scope: !1325)
!1328 = !DILocation(line: 218, column: 28, scope: !1325)
!1329 = !DILocation(line: 220, column: 8, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 220, column: 7)
!1331 = !DILocation(line: 220, column: 25, scope: !1330)
!1332 = !DILocation(line: 220, column: 7, scope: !1325)
!1333 = !DILocation(line: 221, column: 31, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 220, column: 34)
!1335 = !DILocation(line: 221, column: 4, scope: !1334)
!1336 = !DILocation(line: 222, column: 4, scope: !1334)
!1337 = !DILocation(line: 227, column: 7, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 227, column: 7)
!1339 = !DILocation(line: 227, column: 7, scope: !1325)
!1340 = !DILocation(line: 228, column: 11, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 227, column: 18)
!1342 = !DILocation(line: 228, column: 28, scope: !1341)
!1343 = !DILocation(line: 228, column: 37, scope: !1341)
!1344 = !DILocation(line: 228, column: 54, scope: !1341)
!1345 = !DILocation(line: 229, column: 11, scope: !1341)
!1346 = !DILocation(line: 228, column: 4, scope: !1341)
!1347 = !DILocation(line: 230, column: 3, scope: !1341)
!1348 = !DILocation(line: 233, column: 2, scope: !1230)
!1349 = !DILocation(line: 233, column: 19, scope: !1230)
!1350 = !DILocation(line: 233, column: 25, scope: !1230)
!1351 = !DILocation(line: 234, column: 20, scope: !1230)
!1352 = !DILocation(line: 234, column: 2, scope: !1230)
!1353 = !DILocation(line: 234, column: 13, scope: !1230)
!1354 = !DILocation(line: 234, column: 18, scope: !1230)
!1355 = !DILocation(line: 235, column: 2, scope: !1230)
!1356 = !DILocation(line: 236, column: 1, scope: !1230)
!1357 = !DISubprogram(name: "acpi_error", scope: !1358, file: !1358, line: 901, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1358 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1359 = !DISubroutineType(types: !1360)
!1360 = !{null, !1003, !91, !1003, null}
!1361 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1362, file: !1362, line: 55, type: !1363, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1365)
!1362 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!130, !817}
!1365 = !{!1366, !1367, !1369, !1372, !1373, !1376}
!1366 = !DILocalVariable(name: "size", arg: 1, scope: !1361, file: !1362, line: 55, type: !817)
!1367 = !DILocalVariable(name: "_flags", scope: !1368, file: !1362, line: 57, type: !816)
!1368 = distinct !DILexicalBlock(scope: !1361, file: !1362, line: 57, column: 23)
!1369 = !DILocalVariable(name: "__dummy", scope: !1370, file: !1362, line: 57, type: !816)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !1362, line: 57, column: 23)
!1371 = distinct !DILexicalBlock(scope: !1368, file: !1362, line: 57, column: 23)
!1372 = !DILocalVariable(name: "__dummy2", scope: !1370, file: !1362, line: 57, type: !816)
!1373 = !DILocalVariable(name: "__dummy", scope: !1374, file: !1362, line: 57, type: !816)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !1362, line: 57, column: 23)
!1375 = distinct !DILexicalBlock(scope: !1368, file: !1362, line: 57, column: 23)
!1376 = !DILocalVariable(name: "__dummy2", scope: !1374, file: !1362, line: 57, type: !816)
!1377 = !DILocation(line: 55, column: 55, scope: !1361)
!1378 = !DILocation(line: 57, column: 17, scope: !1361)
!1379 = !DILocation(line: 57, column: 23, scope: !1368)
!1380 = !DILocation(line: 57, column: 23, scope: !1370)
!1381 = !DILocation(line: 57, column: 23, scope: !1371)
!1382 = !DILocation(line: 57, column: 23, scope: !1374)
!1383 = !DILocation(line: 57, column: 23, scope: !1375)
!1384 = !DILocation(line: 57, column: 23, scope: !1361)
!1385 = !DILocation(line: 57, column: 9, scope: !1361)
!1386 = !DILocation(line: 57, column: 2, scope: !1361)
!1387 = !DISubprogram(name: "acpi_ut_delete_object_desc", scope: !1000, file: !1000, line: 449, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1388 = distinct !DISubprogram(name: "acpi_ds_create_node", scope: !3, file: !3, line: 253, type: !1389, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1391)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!153, !155, !45, !190}
!1391 = !{!1392, !1393, !1394, !1395, !1396}
!1392 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1388, file: !3, line: 253, type: !155)
!1393 = !DILocalVariable(name: "node", arg: 2, scope: !1388, file: !3, line: 254, type: !45)
!1394 = !DILocalVariable(name: "op", arg: 3, scope: !1388, file: !3, line: 255, type: !190)
!1395 = !DILocalVariable(name: "status", scope: !1388, file: !3, line: 257, type: !153)
!1396 = !DILocalVariable(name: "obj_desc", scope: !1388, file: !3, line: 258, type: !49)
!1397 = !DILocation(line: 253, column: 45, scope: !1388)
!1398 = !DILocation(line: 254, column: 35, scope: !1388)
!1399 = !DILocation(line: 255, column: 32, scope: !1388)
!1400 = !DILocation(line: 257, column: 2, scope: !1388)
!1401 = !DILocation(line: 257, column: 14, scope: !1388)
!1402 = !DILocation(line: 258, column: 2, scope: !1388)
!1403 = !DILocation(line: 258, column: 29, scope: !1388)
!1404 = !DILocation(line: 267, column: 34, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 267, column: 6)
!1406 = !DILocation(line: 267, column: 6, scope: !1405)
!1407 = !DILocation(line: 267, column: 6, scope: !1388)
!1408 = !DILocation(line: 268, column: 3, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 267, column: 41)
!1410 = !DILocation(line: 271, column: 7, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 271, column: 6)
!1412 = !DILocation(line: 271, column: 18, scope: !1411)
!1413 = !DILocation(line: 271, column: 24, scope: !1411)
!1414 = !DILocation(line: 271, column: 6, scope: !1388)
!1415 = !DILocation(line: 275, column: 3, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 271, column: 29)
!1417 = !DILocation(line: 281, column: 36, scope: !1388)
!1418 = !DILocation(line: 281, column: 48, scope: !1388)
!1419 = !DILocation(line: 281, column: 59, scope: !1388)
!1420 = !DILocation(line: 281, column: 65, scope: !1388)
!1421 = !DILocation(line: 281, column: 6, scope: !1388)
!1422 = !DILocation(line: 280, column: 9, scope: !1388)
!1423 = !DILocation(line: 283, column: 6, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 283, column: 6)
!1425 = !DILocation(line: 283, column: 6, scope: !1388)
!1426 = !DILocation(line: 284, column: 3, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 283, column: 28)
!1428 = !DILocation(line: 289, column: 15, scope: !1388)
!1429 = !DILocation(line: 289, column: 32, scope: !1388)
!1430 = !DILocation(line: 289, column: 2, scope: !1388)
!1431 = !DILocation(line: 289, column: 8, scope: !1388)
!1432 = !DILocation(line: 289, column: 13, scope: !1388)
!1433 = !DILocation(line: 293, column: 33, scope: !1388)
!1434 = !DILocation(line: 293, column: 39, scope: !1388)
!1435 = !DILocation(line: 293, column: 49, scope: !1388)
!1436 = !DILocation(line: 293, column: 55, scope: !1388)
!1437 = !DILocation(line: 293, column: 11, scope: !1388)
!1438 = !DILocation(line: 293, column: 9, scope: !1388)
!1439 = !DILocation(line: 297, column: 27, scope: !1388)
!1440 = !DILocation(line: 297, column: 2, scope: !1388)
!1441 = !DILocation(line: 298, column: 2, scope: !1388)
!1442 = !DILocation(line: 299, column: 1, scope: !1388)
!1443 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !994, file: !994, line: 298, type: !1444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!49, !45}
!1446 = !DISubprogram(name: "acpi_ns_attach_object", scope: !994, file: !994, line: 295, type: !1447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!153, !45, !49, !997}
!1449 = !DISubprogram(name: "acpi_ex_truncate_for32bit_table", scope: !1450, file: !1450, line: 468, type: !1451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1450 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!57, !49}
!1453 = !DISubprogram(name: "acpi_warning", scope: !1358, file: !1358, line: 912, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1454 = !DISubprogram(name: "strlen", scope: !1455, file: !1455, line: 128, type: !1456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1455 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!816, !1003}
!1458 = !DISubprogram(name: "acpi_ds_method_data_get_node", scope: !1459, file: !1459, line: 160, type: !1460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1459 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!153, !57, !91, !155, !44}
!1462 = distinct !DISubprogram(name: "kzalloc", scope: !29, file: !29, line: 719, type: !1463, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1469)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!130, !1465, !818}
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !815, line: 61, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1467, line: 72, baseType: !1468)
!1467 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1467, line: 16, baseType: !816)
!1469 = !{!1470, !1471}
!1470 = !DILocalVariable(name: "size", arg: 1, scope: !1462, file: !29, line: 719, type: !1465)
!1471 = !DILocalVariable(name: "flags", arg: 2, scope: !1462, file: !29, line: 719, type: !818)
!1472 = !DILocation(line: 719, column: 52, scope: !1462)
!1473 = !DILocation(line: 719, column: 64, scope: !1462)
!1474 = !DILocation(line: 721, column: 17, scope: !1462)
!1475 = !DILocation(line: 721, column: 23, scope: !1462)
!1476 = !DILocation(line: 721, column: 29, scope: !1462)
!1477 = !DILocation(line: 721, column: 9, scope: !1462)
!1478 = !DILocation(line: 721, column: 2, scope: !1462)
!1479 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1480, file: !1480, line: 65, type: !1481, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1480 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!816}
!1483 = !DILocation(line: 67, column: 9, scope: !1479)
!1484 = !DILocation(line: 67, column: 2, scope: !1479)
!1485 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1480, file: !1480, line: 120, type: !1486, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1489)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!1488, !816}
!1488 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1489 = !{!1490}
!1490 = !DILocalVariable(name: "flags", arg: 1, scope: !1485, file: !1480, line: 120, type: !816)
!1491 = !DILocation(line: 120, column: 67, scope: !1485)
!1492 = !DILocation(line: 122, column: 11, scope: !1485)
!1493 = !DILocation(line: 122, column: 17, scope: !1485)
!1494 = !DILocation(line: 122, column: 9, scope: !1485)
!1495 = !DILocation(line: 122, column: 2, scope: !1485)
!1496 = distinct !DISubprogram(name: "kmalloc", scope: !29, file: !29, line: 591, type: !1463, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1497)
!1497 = !{!1498, !1499, !1500}
!1498 = !DILocalVariable(name: "size", arg: 1, scope: !1496, file: !29, line: 591, type: !1465)
!1499 = !DILocalVariable(name: "flags", arg: 2, scope: !1496, file: !29, line: 591, type: !818)
!1500 = !DILocalVariable(name: "index", scope: !1501, file: !29, line: 594, type: !7)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !29, line: 593, column: 42)
!1502 = distinct !DILexicalBlock(scope: !1496, file: !29, line: 593, column: 6)
!1503 = !DILocation(line: 591, column: 61, scope: !1496)
!1504 = !DILocation(line: 591, column: 73, scope: !1496)
!1505 = !DILocation(line: 593, column: 27, scope: !1502)
!1506 = !DILocation(line: 593, column: 6, scope: !1502)
!1507 = !DILocation(line: 593, column: 33, scope: !1502)
!1508 = !DILocation(line: 593, column: 36, scope: !1502)
!1509 = !DILocation(line: 593, column: 6, scope: !1496)
!1510 = !DILocation(line: 594, column: 3, scope: !1501)
!1511 = !DILocation(line: 594, column: 16, scope: !1501)
!1512 = !DILocation(line: 596, column: 7, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1501, file: !29, line: 596, column: 7)
!1514 = !DILocation(line: 596, column: 12, scope: !1513)
!1515 = !DILocation(line: 596, column: 7, scope: !1501)
!1516 = !DILocation(line: 597, column: 25, scope: !1513)
!1517 = !DILocation(line: 597, column: 31, scope: !1513)
!1518 = !DILocation(line: 597, column: 11, scope: !1513)
!1519 = !DILocation(line: 597, column: 4, scope: !1513)
!1520 = !DILocation(line: 599, column: 11, scope: !1501)
!1521 = !DILocation(line: 599, column: 9, scope: !1501)
!1522 = !DILocation(line: 601, column: 33, scope: !1501)
!1523 = !DILocation(line: 601, column: 40, scope: !1501)
!1524 = !DILocation(line: 601, column: 20, scope: !1501)
!1525 = !DILocation(line: 601, column: 5, scope: !1501)
!1526 = !DILocation(line: 601, column: 51, scope: !1501)
!1527 = !DILocation(line: 602, column: 5, scope: !1501)
!1528 = !DILocation(line: 602, column: 12, scope: !1501)
!1529 = !DILocation(line: 600, column: 10, scope: !1501)
!1530 = !DILocation(line: 600, column: 3, scope: !1501)
!1531 = !DILocation(line: 603, column: 2, scope: !1502)
!1532 = !DILocation(line: 604, column: 19, scope: !1496)
!1533 = !DILocation(line: 604, column: 25, scope: !1496)
!1534 = !DILocation(line: 604, column: 9, scope: !1496)
!1535 = !DILocation(line: 604, column: 2, scope: !1496)
!1536 = !DILocation(line: 605, column: 1, scope: !1496)
!1537 = !DISubprogram(name: "kmalloc_large", scope: !29, file: !29, line: 531, type: !1463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1538 = distinct !DISubprogram(name: "__kmalloc_index", scope: !29, file: !29, line: 444, type: !1539, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1543)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!7, !1465, !1541}
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !815, line: 35, baseType: !1542)
!1542 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1543 = !{!1544, !1545}
!1544 = !DILocalVariable(name: "size", arg: 1, scope: !1538, file: !29, line: 444, type: !1465)
!1545 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1538, file: !29, line: 445, type: !1541)
!1546 = !DILocation(line: 444, column: 60, scope: !1538)
!1547 = !DILocation(line: 445, column: 16, scope: !1538)
!1548 = !DILocation(line: 447, column: 7, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 447, column: 6)
!1550 = !DILocation(line: 447, column: 6, scope: !1538)
!1551 = !DILocation(line: 448, column: 3, scope: !1549)
!1552 = !DILocation(line: 450, column: 6, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 450, column: 6)
!1554 = !DILocation(line: 450, column: 11, scope: !1553)
!1555 = !DILocation(line: 450, column: 6, scope: !1538)
!1556 = !DILocation(line: 451, column: 3, scope: !1553)
!1557 = !DILocation(line: 453, column: 32, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 453, column: 6)
!1559 = !DILocation(line: 453, column: 37, scope: !1558)
!1560 = !DILocation(line: 453, column: 42, scope: !1558)
!1561 = !DILocation(line: 453, column: 45, scope: !1558)
!1562 = !DILocation(line: 453, column: 50, scope: !1558)
!1563 = !DILocation(line: 453, column: 6, scope: !1538)
!1564 = !DILocation(line: 454, column: 3, scope: !1558)
!1565 = !DILocation(line: 455, column: 32, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 455, column: 6)
!1567 = !DILocation(line: 455, column: 37, scope: !1566)
!1568 = !DILocation(line: 455, column: 43, scope: !1566)
!1569 = !DILocation(line: 455, column: 46, scope: !1566)
!1570 = !DILocation(line: 455, column: 51, scope: !1566)
!1571 = !DILocation(line: 455, column: 6, scope: !1538)
!1572 = !DILocation(line: 456, column: 3, scope: !1566)
!1573 = !DILocation(line: 457, column: 6, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 457, column: 6)
!1575 = !DILocation(line: 457, column: 11, scope: !1574)
!1576 = !DILocation(line: 457, column: 6, scope: !1538)
!1577 = !DILocation(line: 457, column: 26, scope: !1574)
!1578 = !DILocation(line: 458, column: 6, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 458, column: 6)
!1580 = !DILocation(line: 458, column: 11, scope: !1579)
!1581 = !DILocation(line: 458, column: 6, scope: !1538)
!1582 = !DILocation(line: 458, column: 26, scope: !1579)
!1583 = !DILocation(line: 459, column: 6, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 459, column: 6)
!1585 = !DILocation(line: 459, column: 11, scope: !1584)
!1586 = !DILocation(line: 459, column: 6, scope: !1538)
!1587 = !DILocation(line: 459, column: 26, scope: !1584)
!1588 = !DILocation(line: 460, column: 6, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 460, column: 6)
!1590 = !DILocation(line: 460, column: 11, scope: !1589)
!1591 = !DILocation(line: 460, column: 6, scope: !1538)
!1592 = !DILocation(line: 460, column: 26, scope: !1589)
!1593 = !DILocation(line: 461, column: 6, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 461, column: 6)
!1595 = !DILocation(line: 461, column: 11, scope: !1594)
!1596 = !DILocation(line: 461, column: 6, scope: !1538)
!1597 = !DILocation(line: 461, column: 26, scope: !1594)
!1598 = !DILocation(line: 462, column: 6, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 462, column: 6)
!1600 = !DILocation(line: 462, column: 11, scope: !1599)
!1601 = !DILocation(line: 462, column: 6, scope: !1538)
!1602 = !DILocation(line: 462, column: 26, scope: !1599)
!1603 = !DILocation(line: 463, column: 6, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 463, column: 6)
!1605 = !DILocation(line: 463, column: 11, scope: !1604)
!1606 = !DILocation(line: 463, column: 6, scope: !1538)
!1607 = !DILocation(line: 463, column: 26, scope: !1604)
!1608 = !DILocation(line: 464, column: 6, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 464, column: 6)
!1610 = !DILocation(line: 464, column: 11, scope: !1609)
!1611 = !DILocation(line: 464, column: 6, scope: !1538)
!1612 = !DILocation(line: 464, column: 26, scope: !1609)
!1613 = !DILocation(line: 465, column: 6, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 465, column: 6)
!1615 = !DILocation(line: 465, column: 11, scope: !1614)
!1616 = !DILocation(line: 465, column: 6, scope: !1538)
!1617 = !DILocation(line: 465, column: 26, scope: !1614)
!1618 = !DILocation(line: 466, column: 6, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 466, column: 6)
!1620 = !DILocation(line: 466, column: 11, scope: !1619)
!1621 = !DILocation(line: 466, column: 6, scope: !1538)
!1622 = !DILocation(line: 466, column: 26, scope: !1619)
!1623 = !DILocation(line: 467, column: 6, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 467, column: 6)
!1625 = !DILocation(line: 467, column: 11, scope: !1624)
!1626 = !DILocation(line: 467, column: 6, scope: !1538)
!1627 = !DILocation(line: 467, column: 26, scope: !1624)
!1628 = !DILocation(line: 468, column: 6, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 468, column: 6)
!1630 = !DILocation(line: 468, column: 11, scope: !1629)
!1631 = !DILocation(line: 468, column: 6, scope: !1538)
!1632 = !DILocation(line: 468, column: 26, scope: !1629)
!1633 = !DILocation(line: 469, column: 6, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 469, column: 6)
!1635 = !DILocation(line: 469, column: 11, scope: !1634)
!1636 = !DILocation(line: 469, column: 6, scope: !1538)
!1637 = !DILocation(line: 469, column: 26, scope: !1634)
!1638 = !DILocation(line: 470, column: 6, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 470, column: 6)
!1640 = !DILocation(line: 470, column: 11, scope: !1639)
!1641 = !DILocation(line: 470, column: 6, scope: !1538)
!1642 = !DILocation(line: 470, column: 26, scope: !1639)
!1643 = !DILocation(line: 471, column: 6, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 471, column: 6)
!1645 = !DILocation(line: 471, column: 11, scope: !1644)
!1646 = !DILocation(line: 471, column: 6, scope: !1538)
!1647 = !DILocation(line: 471, column: 26, scope: !1644)
!1648 = !DILocation(line: 472, column: 6, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 472, column: 6)
!1650 = !DILocation(line: 472, column: 11, scope: !1649)
!1651 = !DILocation(line: 472, column: 6, scope: !1538)
!1652 = !DILocation(line: 472, column: 26, scope: !1649)
!1653 = !DILocation(line: 473, column: 6, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 473, column: 6)
!1655 = !DILocation(line: 473, column: 11, scope: !1654)
!1656 = !DILocation(line: 473, column: 6, scope: !1538)
!1657 = !DILocation(line: 473, column: 26, scope: !1654)
!1658 = !DILocation(line: 474, column: 6, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 474, column: 6)
!1660 = !DILocation(line: 474, column: 11, scope: !1659)
!1661 = !DILocation(line: 474, column: 6, scope: !1538)
!1662 = !DILocation(line: 474, column: 27, scope: !1659)
!1663 = !DILocation(line: 475, column: 6, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 475, column: 6)
!1665 = !DILocation(line: 475, column: 11, scope: !1664)
!1666 = !DILocation(line: 475, column: 6, scope: !1538)
!1667 = !DILocation(line: 475, column: 32, scope: !1664)
!1668 = !DILocation(line: 477, column: 50, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1538, file: !29, line: 477, column: 6)
!1670 = !{i8 0, i8 2}
!1671 = !{}
!1672 = !DILocation(line: 477, column: 6, scope: !1538)
!1673 = !DILocation(line: 478, column: 3, scope: !1669)
!1674 = !DILocation(line: 478, column: 3, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !29, line: 478, column: 3)
!1676 = distinct !DILexicalBlock(scope: !1669, file: !29, line: 478, column: 3)
!1677 = !{i32 -2143035078}
!1678 = !DILocation(line: 478, column: 3, scope: !1676)
!1679 = !DILocation(line: 480, column: 3, scope: !1669)
!1680 = !DILocation(line: 480, column: 3, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1669, file: !29, line: 480, column: 3)
!1682 = !DILocation(line: 480, column: 3, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1681, file: !29, line: 480, column: 3)
!1684 = !DILocation(line: 480, column: 3, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1681, file: !29, line: 480, column: 3)
!1686 = !{i64 2151932421, i64 2151932450, i64 2151932496, i64 2151932554, i64 2151932608, i64 2151932662, i64 2151932717, i64 2151932748}
!1687 = !DILocation(line: 483, column: 2, scope: !1538)
!1688 = !DILocation(line: 484, column: 1, scope: !1538)
!1689 = !DISubprogram(name: "kmalloc_trace", scope: !29, file: !29, line: 525, type: !1690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!130, !1692, !818, !1465}
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1694, line: 11, flags: DIFlagFwdDecl)
!1694 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1695 = distinct !DISubprogram(name: "kmalloc_type", scope: !29, file: !29, line: 401, type: !1696, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1698)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!28, !818, !816}
!1698 = !{!1699, !1700}
!1699 = !DILocalVariable(name: "flags", arg: 1, scope: !1695, file: !29, line: 401, type: !818)
!1700 = !DILocalVariable(name: "caller", arg: 2, scope: !1695, file: !29, line: 401, type: !816)
!1701 = !DILocation(line: 401, column: 67, scope: !1695)
!1702 = !DILocation(line: 401, column: 88, scope: !1695)
!1703 = !DILocation(line: 407, column: 6, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1695, file: !29, line: 407, column: 6)
!1705 = !DILocation(line: 407, column: 6, scope: !1695)
!1706 = !DILocation(line: 413, column: 3, scope: !1704)
!1707 = !DILocation(line: 423, column: 38, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1695, file: !29, line: 423, column: 6)
!1709 = !DILocation(line: 423, column: 44, scope: !1708)
!1710 = !DILocation(line: 423, column: 6, scope: !1695)
!1711 = !DILocation(line: 424, column: 3, scope: !1708)
!1712 = !DILocation(line: 426, column: 3, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1695, file: !29, line: 425, column: 6)
!1714 = !DILocation(line: 429, column: 1, scope: !1695)
!1715 = !DISubprogram(name: "__kmalloc", scope: !29, file: !29, line: 488, type: !1463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1716 = !DISubprogram(name: "__compiletime_assert_173", scope: !29, file: !29, line: 478, type: !1717, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{null}
!1719 = distinct !DISubprogram(name: "native_save_fl", scope: !1480, file: !1480, line: 17, type: !1481, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1720)
!1720 = !{!1721}
!1721 = !DILocalVariable(name: "flags", scope: !1719, file: !1480, line: 19, type: !816)
!1722 = !DILocation(line: 19, column: 2, scope: !1719)
!1723 = !DILocation(line: 19, column: 16, scope: !1719)
!1724 = !DILocation(line: 26, column: 2, scope: !1719)
!1725 = !{i64 1522340, i64 1522361}
!1726 = !DILocation(line: 32, column: 9, scope: !1719)
!1727 = !DILocation(line: 33, column: 1, scope: !1719)
!1728 = !DILocation(line: 32, column: 2, scope: !1719)
