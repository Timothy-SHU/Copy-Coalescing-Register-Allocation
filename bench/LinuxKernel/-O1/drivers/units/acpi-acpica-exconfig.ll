; ModuleID = 'drivers/acpi/acpica/exconfig.c'
source_filename = "drivers/acpi/acpica/exconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }
%struct.acpi_scope_state = type { ptr, i8, i8, i16, i16, ptr }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_region = type { ptr, i8, i8, i16, i8, i8, ptr, ptr, ptr, i64, i32, ptr }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }

@acpi_gbl_root_node = external dso_local global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"Dynamic OEM Table Load:\00", align 1, !dbg !0
@_acpi_module_name = internal constant [9 x i8] c"exconfig\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [21 x i8] c"Type not integer: %X\00", align 1, !dbg !847
@.str.2 = private unnamed_addr constant [41 x i8] c"Received request to unload an ACPI table\00", align 1, !dbg !852
@.str.3 = private unnamed_addr constant [37 x i8] c"AML Unload operator is not supported\00", align 1, !dbg !857
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !862

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_load_table_op(ptr noundef %walk_state, ptr noundef %return_desc) #0 align 16 !dbg !875 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %return_desc.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %operand = alloca ptr, align 8
  %parent_node = alloca ptr, align 8
  %start_node = alloca ptr, align 8
  %parameter_node = alloca ptr, align 8
  %return_obj = alloca ptr, align 8
  %ddb_handle = alloca ptr, align 8
  %table_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !879, metadata !DIExpression()), !dbg !889
  store ptr %return_desc, ptr %return_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_desc.addr, metadata !880, metadata !DIExpression()), !dbg !890
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !891
  call void @llvm.dbg.declare(metadata ptr %status, metadata !881, metadata !DIExpression()), !dbg !892
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand) #13, !dbg !893
  call void @llvm.dbg.declare(metadata ptr %operand, metadata !882, metadata !DIExpression()), !dbg !894
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !895
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 28, !dbg !896
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !895
  store ptr %arrayidx, ptr %operand, align 8, !dbg !894
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_node) #13, !dbg !897
  call void @llvm.dbg.declare(metadata ptr %parent_node, metadata !883, metadata !DIExpression()), !dbg !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_node) #13, !dbg !899
  call void @llvm.dbg.declare(metadata ptr %start_node, metadata !884, metadata !DIExpression()), !dbg !900
  call void @llvm.lifetime.start.p0(i64 8, ptr %parameter_node) #13, !dbg !901
  call void @llvm.dbg.declare(metadata ptr %parameter_node, metadata !885, metadata !DIExpression()), !dbg !902
  store ptr null, ptr %parameter_node, align 8, !dbg !902
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_obj) #13, !dbg !903
  call void @llvm.dbg.declare(metadata ptr %return_obj, metadata !886, metadata !DIExpression()), !dbg !904
  call void @llvm.lifetime.start.p0(i64 8, ptr %ddb_handle) #13, !dbg !905
  call void @llvm.dbg.declare(metadata ptr %ddb_handle, metadata !887, metadata !DIExpression()), !dbg !906
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_index) #13, !dbg !907
  call void @llvm.dbg.declare(metadata ptr %table_index, metadata !888, metadata !DIExpression()), !dbg !908
  %call = call ptr @acpi_ut_create_integer_object(i64 noundef 0) #14, !dbg !909
  store ptr %call, ptr %return_obj, align 8, !dbg !910
  %1 = load ptr, ptr %return_obj, align 8, !dbg !911
  %tobool = icmp ne ptr %1, null, !dbg !911
  br i1 %tobool, label %if.end, label %if.then, !dbg !913

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !914

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %return_obj, align 8, !dbg !916
  %3 = load ptr, ptr %return_desc.addr, align 8, !dbg !917
  store ptr %2, ptr %3, align 8, !dbg !918
  call void @acpi_ex_exit_interpreter() #14, !dbg !919
  %4 = load ptr, ptr %operand, align 8, !dbg !920
  %arrayidx1 = getelementptr ptr, ptr %4, i64 0, !dbg !920
  %5 = load ptr, ptr %arrayidx1, align 8, !dbg !920
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %5, i32 0, i32 5, !dbg !921
  %6 = load ptr, ptr %pointer, align 8, !dbg !921
  %7 = load ptr, ptr %operand, align 8, !dbg !922
  %arrayidx2 = getelementptr ptr, ptr %7, i64 1, !dbg !922
  %8 = load ptr, ptr %arrayidx2, align 8, !dbg !922
  %pointer3 = getelementptr inbounds %struct.acpi_object_string, ptr %8, i32 0, i32 5, !dbg !923
  %9 = load ptr, ptr %pointer3, align 8, !dbg !923
  %10 = load ptr, ptr %operand, align 8, !dbg !924
  %arrayidx4 = getelementptr ptr, ptr %10, i64 2, !dbg !924
  %11 = load ptr, ptr %arrayidx4, align 8, !dbg !924
  %pointer5 = getelementptr inbounds %struct.acpi_object_string, ptr %11, i32 0, i32 5, !dbg !925
  %12 = load ptr, ptr %pointer5, align 8, !dbg !925
  %call6 = call i32 @acpi_tb_find_table(ptr noundef %6, ptr noundef %9, ptr noundef %12, ptr noundef %table_index) #14, !dbg !926
  store i32 %call6, ptr %status, align 4, !dbg !927
  call void @acpi_ex_enter_interpreter() #14, !dbg !928
  %13 = load i32, ptr %status, align 4, !dbg !929
  %tobool7 = icmp ne i32 %13, 0, !dbg !929
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !931

if.then8:                                         ; preds = %if.end
  %14 = load i32, ptr %status, align 4, !dbg !932
  %cmp = icmp ne i32 %14, 5, !dbg !935
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !936

if.then9:                                         ; preds = %if.then8
  %15 = load i32, ptr %status, align 4, !dbg !937
  store i32 %15, ptr %retval, align 4, !dbg !937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !937

if.end10:                                         ; preds = %if.then8
  store i32 0, ptr %retval, align 4, !dbg !939
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !939

if.end11:                                         ; preds = %if.end
  %16 = load ptr, ptr %walk_state.addr, align 8, !dbg !940
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, ptr %16, i32 0, i32 46, !dbg !941
  %17 = load ptr, ptr %scope_info, align 8, !dbg !941
  %node = getelementptr inbounds %struct.acpi_scope_state, ptr %17, i32 0, i32 5, !dbg !942
  %18 = load ptr, ptr %node, align 8, !dbg !942
  store ptr %18, ptr %start_node, align 8, !dbg !943
  %19 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !944
  store ptr %19, ptr %parent_node, align 8, !dbg !945
  %20 = load ptr, ptr %operand, align 8, !dbg !946
  %arrayidx12 = getelementptr ptr, ptr %20, i64 3, !dbg !946
  %21 = load ptr, ptr %arrayidx12, align 8, !dbg !946
  %length = getelementptr inbounds %struct.acpi_object_string, ptr %21, i32 0, i32 6, !dbg !948
  %22 = load i32, ptr %length, align 8, !dbg !948
  %cmp13 = icmp ugt i32 %22, 0, !dbg !949
  br i1 %cmp13, label %if.then14, label %if.end21, !dbg !950

if.then14:                                        ; preds = %if.end11
  %23 = load ptr, ptr %start_node, align 8, !dbg !951
  %24 = load ptr, ptr %operand, align 8, !dbg !953
  %arrayidx15 = getelementptr ptr, ptr %24, i64 3, !dbg !953
  %25 = load ptr, ptr %arrayidx15, align 8, !dbg !953
  %pointer16 = getelementptr inbounds %struct.acpi_object_string, ptr %25, i32 0, i32 5, !dbg !954
  %26 = load ptr, ptr %pointer16, align 8, !dbg !954
  %call17 = call i32 @acpi_ns_get_node_unlocked(ptr noundef %23, ptr noundef %26, i32 noundef 1, ptr noundef %parent_node) #14, !dbg !955
  store i32 %call17, ptr %status, align 4, !dbg !956
  %27 = load i32, ptr %status, align 4, !dbg !957
  %tobool18 = icmp ne i32 %27, 0, !dbg !957
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !959

if.then19:                                        ; preds = %if.then14
  %28 = load i32, ptr %status, align 4, !dbg !960
  store i32 %28, ptr %retval, align 4, !dbg !960
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !960

if.end20:                                         ; preds = %if.then14
  br label %if.end21, !dbg !962

if.end21:                                         ; preds = %if.end20, %if.end11
  %29 = load ptr, ptr %operand, align 8, !dbg !963
  %arrayidx22 = getelementptr ptr, ptr %29, i64 4, !dbg !963
  %30 = load ptr, ptr %arrayidx22, align 8, !dbg !963
  %length23 = getelementptr inbounds %struct.acpi_object_string, ptr %30, i32 0, i32 6, !dbg !965
  %31 = load i32, ptr %length23, align 8, !dbg !965
  %cmp24 = icmp ugt i32 %31, 0, !dbg !966
  br i1 %cmp24, label %if.then25, label %if.end45, !dbg !967

if.then25:                                        ; preds = %if.end21
  %32 = load ptr, ptr %operand, align 8, !dbg !968
  %arrayidx26 = getelementptr ptr, ptr %32, i64 4, !dbg !968
  %33 = load ptr, ptr %arrayidx26, align 8, !dbg !968
  %pointer27 = getelementptr inbounds %struct.acpi_object_string, ptr %33, i32 0, i32 5, !dbg !971
  %34 = load ptr, ptr %pointer27, align 8, !dbg !971
  %arrayidx28 = getelementptr i8, ptr %34, i64 0, !dbg !968
  %35 = load i8, ptr %arrayidx28, align 1, !dbg !968
  %conv = zext i8 %35 to i32, !dbg !968
  %cmp29 = icmp ne i32 %conv, 92, !dbg !972
  br i1 %cmp29, label %land.lhs.true, label %if.end38, !dbg !973

land.lhs.true:                                    ; preds = %if.then25
  %36 = load ptr, ptr %operand, align 8, !dbg !974
  %arrayidx31 = getelementptr ptr, ptr %36, i64 4, !dbg !974
  %37 = load ptr, ptr %arrayidx31, align 8, !dbg !974
  %pointer32 = getelementptr inbounds %struct.acpi_object_string, ptr %37, i32 0, i32 5, !dbg !975
  %38 = load ptr, ptr %pointer32, align 8, !dbg !975
  %arrayidx33 = getelementptr i8, ptr %38, i64 0, !dbg !974
  %39 = load i8, ptr %arrayidx33, align 1, !dbg !974
  %conv34 = zext i8 %39 to i32, !dbg !974
  %cmp35 = icmp ne i32 %conv34, 94, !dbg !976
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !977

if.then37:                                        ; preds = %land.lhs.true
  %40 = load ptr, ptr %parent_node, align 8, !dbg !978
  store ptr %40, ptr %start_node, align 8, !dbg !980
  br label %if.end38, !dbg !981

if.end38:                                         ; preds = %if.then37, %land.lhs.true, %if.then25
  %41 = load ptr, ptr %start_node, align 8, !dbg !982
  %42 = load ptr, ptr %operand, align 8, !dbg !983
  %arrayidx39 = getelementptr ptr, ptr %42, i64 4, !dbg !983
  %43 = load ptr, ptr %arrayidx39, align 8, !dbg !983
  %pointer40 = getelementptr inbounds %struct.acpi_object_string, ptr %43, i32 0, i32 5, !dbg !984
  %44 = load ptr, ptr %pointer40, align 8, !dbg !984
  %call41 = call i32 @acpi_ns_get_node_unlocked(ptr noundef %41, ptr noundef %44, i32 noundef 1, ptr noundef %parameter_node) #14, !dbg !985
  store i32 %call41, ptr %status, align 4, !dbg !986
  %45 = load i32, ptr %status, align 4, !dbg !987
  %tobool42 = icmp ne i32 %45, 0, !dbg !987
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !989

if.then43:                                        ; preds = %if.end38
  %46 = load i32, ptr %status, align 4, !dbg !990
  store i32 %46, ptr %retval, align 4, !dbg !990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !990

if.end44:                                         ; preds = %if.end38
  br label %if.end45, !dbg !992

if.end45:                                         ; preds = %if.end44, %if.end21
  call void (ptr, ...) @acpi_info(ptr noundef @.str) #14, !dbg !993
  call void @acpi_ex_exit_interpreter() #14, !dbg !994
  %47 = load i32, ptr %table_index, align 4, !dbg !995
  %48 = load ptr, ptr %parent_node, align 8, !dbg !996
  %call46 = call i32 @acpi_tb_load_table(i32 noundef %47, ptr noundef %48) #14, !dbg !997
  store i32 %call46, ptr %status, align 4, !dbg !998
  call void @acpi_ex_enter_interpreter() #14, !dbg !999
  %49 = load i32, ptr %status, align 4, !dbg !1000
  %tobool47 = icmp ne i32 %49, 0, !dbg !1000
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !1002

if.then48:                                        ; preds = %if.end45
  %50 = load i32, ptr %status, align 4, !dbg !1003
  store i32 %50, ptr %retval, align 4, !dbg !1003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1003

if.end49:                                         ; preds = %if.end45
  %51 = load i32, ptr %table_index, align 4, !dbg !1005
  %call50 = call i32 @acpi_ex_add_table(i32 noundef %51, ptr noundef %ddb_handle) #14, !dbg !1006
  store i32 %call50, ptr %status, align 4, !dbg !1007
  %52 = load i32, ptr %status, align 4, !dbg !1008
  %tobool51 = icmp ne i32 %52, 0, !dbg !1008
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !1010

if.then52:                                        ; preds = %if.end49
  %53 = load i32, ptr %status, align 4, !dbg !1011
  store i32 %53, ptr %retval, align 4, !dbg !1011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1011

if.end53:                                         ; preds = %if.end49
  call void @acpi_ex_exit_interpreter() #14, !dbg !1013
  %call54 = call i32 @acpi_ns_initialize_objects() #14, !dbg !1014
  call void @acpi_ex_enter_interpreter() #14, !dbg !1015
  %54 = load ptr, ptr %parameter_node, align 8, !dbg !1016
  %tobool55 = icmp ne ptr %54, null, !dbg !1016
  br i1 %tobool55, label %if.then56, label %if.end63, !dbg !1018

if.then56:                                        ; preds = %if.end53
  %55 = load ptr, ptr %operand, align 8, !dbg !1019
  %arrayidx57 = getelementptr ptr, ptr %55, i64 5, !dbg !1019
  %56 = load ptr, ptr %arrayidx57, align 8, !dbg !1019
  %57 = load ptr, ptr %parameter_node, align 8, !dbg !1021
  %58 = ptrtoint ptr %57 to i64, !dbg !1021
  %59 = inttoptr i64 %58 to ptr, !dbg !1021
  %60 = load ptr, ptr %walk_state.addr, align 8, !dbg !1022
  %call58 = call i32 @acpi_ex_store(ptr noundef %56, ptr noundef %59, ptr noundef %60) #14, !dbg !1023
  store i32 %call58, ptr %status, align 4, !dbg !1024
  %61 = load i32, ptr %status, align 4, !dbg !1025
  %tobool59 = icmp ne i32 %61, 0, !dbg !1025
  br i1 %tobool59, label %if.then60, label %if.end62, !dbg !1027

if.then60:                                        ; preds = %if.then56
  %62 = load ptr, ptr %ddb_handle, align 8, !dbg !1028
  %call61 = call i32 @acpi_ex_unload_table(ptr noundef %62) #14, !dbg !1030
  %63 = load ptr, ptr %ddb_handle, align 8, !dbg !1031
  call void @acpi_ut_remove_reference(ptr noundef %63) #14, !dbg !1032
  %64 = load i32, ptr %status, align 4, !dbg !1033
  store i32 %64, ptr %retval, align 4, !dbg !1033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1033

if.end62:                                         ; preds = %if.then56
  br label %if.end63, !dbg !1034

if.end63:                                         ; preds = %if.end62, %if.end53
  %65 = load ptr, ptr %ddb_handle, align 8, !dbg !1035
  call void @acpi_ut_remove_reference(ptr noundef %65) #14, !dbg !1036
  %66 = load ptr, ptr %return_obj, align 8, !dbg !1037
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %66, i32 0, i32 6, !dbg !1038
  store i64 -1, ptr %value, align 8, !dbg !1039
  %67 = load i32, ptr %status, align 4, !dbg !1040
  store i32 %67, ptr %retval, align 4, !dbg !1040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1040

cleanup:                                          ; preds = %if.end63, %if.then60, %if.then52, %if.then48, %if.then43, %if.then19, %if.end10, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_index) #13, !dbg !1041
  call void @llvm.lifetime.end.p0(i64 8, ptr %ddb_handle) #13, !dbg !1041
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_obj) #13, !dbg !1041
  call void @llvm.lifetime.end.p0(i64 8, ptr %parameter_node) #13, !dbg !1041
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_node) #13, !dbg !1041
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_node) #13, !dbg !1041
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand) #13, !dbg !1041
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1041
  %68 = load i32, ptr %retval, align 4, !dbg !1041
  ret i32 %68, !dbg !1041
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1042 dso_local ptr @acpi_ut_create_integer_object(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1046 dso_local void @acpi_ex_exit_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1050 dso_local i32 @acpi_tb_find_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1055 dso_local void @acpi_ex_enter_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1056 dso_local i32 @acpi_ns_get_node_unlocked(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1062 dso_local void @acpi_info(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1066 dso_local i32 @acpi_tb_load_table(i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ex_add_table(i32 noundef %table_index, ptr noundef %ddb_handle) #0 align 16 !dbg !1069 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %ddb_handle.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %table_index, ptr %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !1073, metadata !DIExpression()), !dbg !1076
  store ptr %ddb_handle, ptr %ddb_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ddb_handle.addr, metadata !1074, metadata !DIExpression()), !dbg !1077
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #13, !dbg !1078
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1075, metadata !DIExpression()), !dbg !1079
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 54, i32 noundef 128, i32 noundef 20) #14, !dbg !1080
  store ptr %call, ptr %obj_desc, align 8, !dbg !1081
  %0 = load ptr, ptr %obj_desc, align 8, !dbg !1082
  %tobool = icmp ne ptr %0, null, !dbg !1082
  br i1 %tobool, label %if.end, label %if.then, !dbg !1084

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !1085
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1085

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %obj_desc, align 8, !dbg !1087
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %1, i32 0, i32 4, !dbg !1088
  %2 = load i8, ptr %flags, align 4, !dbg !1089
  %conv = zext i8 %2 to i32, !dbg !1089
  %or = or i32 %conv, 4, !dbg !1089
  %conv1 = trunc i32 %or to i8, !dbg !1089
  store i8 %conv1, ptr %flags, align 4, !dbg !1089
  %3 = load ptr, ptr %obj_desc, align 8, !dbg !1090
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %3, i32 0, i32 5, !dbg !1091
  store i8 4, ptr %class, align 1, !dbg !1092
  %4 = load i32, ptr %table_index.addr, align 4, !dbg !1093
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !1094
  %value = getelementptr inbounds %struct.acpi_object_reference, ptr %5, i32 0, i32 13, !dbg !1095
  store i32 %4, ptr %value, align 8, !dbg !1096
  %6 = load ptr, ptr %obj_desc, align 8, !dbg !1097
  %7 = load ptr, ptr %ddb_handle.addr, align 8, !dbg !1098
  store ptr %6, ptr %7, align 8, !dbg !1099
  store i32 0, ptr %retval, align 4, !dbg !1100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1100

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #13, !dbg !1101
  %8 = load i32, ptr %retval, align 4, !dbg !1101
  ret i32 %8, !dbg !1101
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1102 dso_local i32 @acpi_ns_initialize_objects() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1105 dso_local i32 @acpi_ex_store(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_unload_table(ptr noundef %ddb_handle) #0 align 16 !dbg !1108 {
entry:
  %retval = alloca i32, align 4
  %ddb_handle.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %table_desc = alloca ptr, align 8
  %table_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ddb_handle, ptr %ddb_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ddb_handle.addr, metadata !1112, metadata !DIExpression()), !dbg !1116
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1117
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1113, metadata !DIExpression()), !dbg !1118
  store i32 0, ptr %status, align 4, !dbg !1118
  call void @llvm.lifetime.start.p0(i64 8, ptr %table_desc) #13, !dbg !1119
  call void @llvm.dbg.declare(metadata ptr %table_desc, metadata !1114, metadata !DIExpression()), !dbg !1120
  %0 = load ptr, ptr %ddb_handle.addr, align 8, !dbg !1121
  store ptr %0, ptr %table_desc, align 8, !dbg !1120
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_index) #13, !dbg !1122
  call void @llvm.dbg.declare(metadata ptr %table_index, metadata !1115, metadata !DIExpression()), !dbg !1123
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 501, ptr noundef @.str.2) #14, !dbg !1124
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 511, i32 noundef 14, ptr noundef @.str.3) #14, !dbg !1125
  %1 = load ptr, ptr %ddb_handle.addr, align 8, !dbg !1126
  %tobool = icmp ne ptr %1, null, !dbg !1126
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1128

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %ddb_handle.addr, align 8, !dbg !1129
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %2, i32 0, i32 1, !dbg !1129
  %3 = load i8, ptr %descriptor_type, align 8, !dbg !1129
  %conv = zext i8 %3 to i32, !dbg !1129
  %cmp = icmp ne i32 %conv, 14, !dbg !1130
  br i1 %cmp, label %if.then, label %lor.lhs.false2, !dbg !1131

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %ddb_handle.addr, align 8, !dbg !1132
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %4, i32 0, i32 2, !dbg !1133
  %5 = load i8, ptr %type, align 1, !dbg !1133
  %conv3 = zext i8 %5 to i32, !dbg !1132
  %cmp4 = icmp ne i32 %conv3, 20, !dbg !1134
  br i1 %cmp4, label %if.then, label %lor.lhs.false6, !dbg !1135

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %ddb_handle.addr, align 8, !dbg !1136
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %6, i32 0, i32 4, !dbg !1137
  %7 = load i8, ptr %flags, align 4, !dbg !1137
  %conv7 = zext i8 %7 to i32, !dbg !1136
  %and = and i32 %conv7, 4, !dbg !1138
  %tobool8 = icmp ne i32 %and, 0, !dbg !1138
  br i1 %tobool8, label %if.end, label %if.then, !dbg !1139

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 12291, ptr %retval, align 4, !dbg !1140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1140

if.end:                                           ; preds = %lor.lhs.false6
  %8 = load ptr, ptr %table_desc, align 8, !dbg !1142
  %value = getelementptr inbounds %struct.acpi_object_reference, ptr %8, i32 0, i32 13, !dbg !1143
  %9 = load i32, ptr %value, align 8, !dbg !1143
  store i32 %9, ptr %table_index, align 4, !dbg !1144
  call void @acpi_ex_exit_interpreter() #14, !dbg !1145
  %10 = load i32, ptr %table_index, align 4, !dbg !1146
  %call = call i32 @acpi_tb_unload_table(i32 noundef %10) #14, !dbg !1147
  store i32 %call, ptr %status, align 4, !dbg !1148
  call void @acpi_ex_enter_interpreter() #14, !dbg !1149
  %11 = load i32, ptr %status, align 4, !dbg !1150
  %tobool9 = icmp ne i32 %11, 0, !dbg !1150
  br i1 %tobool9, label %if.end15, label %if.then10, !dbg !1152

if.then10:                                        ; preds = %if.end
  %12 = load ptr, ptr %ddb_handle.addr, align 8, !dbg !1153
  %flags11 = getelementptr inbounds %struct.acpi_object_common, ptr %12, i32 0, i32 4, !dbg !1155
  %13 = load i8, ptr %flags11, align 4, !dbg !1156
  %conv12 = zext i8 %13 to i32, !dbg !1156
  %and13 = and i32 %conv12, -5, !dbg !1156
  %conv14 = trunc i32 %and13 to i8, !dbg !1156
  store i8 %conv14, ptr %flags11, align 4, !dbg !1156
  br label %if.end15, !dbg !1157

if.end15:                                         ; preds = %if.then10, %if.end
  %14 = load i32, ptr %status, align 4, !dbg !1158
  store i32 %14, ptr %retval, align 4, !dbg !1158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1158

cleanup:                                          ; preds = %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_index) #13, !dbg !1159
  call void @llvm.lifetime.end.p0(i64 8, ptr %table_desc) #13, !dbg !1159
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1159
  %15 = load i32, ptr %retval, align 4, !dbg !1159
  ret i32 %15, !dbg !1159
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1160 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_load_op(ptr noundef %obj_desc, ptr noundef %target, ptr noundef %walk_state) #0 align 16 !dbg !1163 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %ddb_handle = alloca ptr, align 8
  %table_header = alloca ptr, align 8
  %table = alloca ptr, align 8
  %table_index = alloca i32, align 4
  %status = alloca i32, align 4
  %length = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1165, metadata !DIExpression()), !dbg !1174
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !1166, metadata !DIExpression()), !dbg !1175
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1167, metadata !DIExpression()), !dbg !1176
  call void @llvm.lifetime.start.p0(i64 8, ptr %ddb_handle) #13, !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %ddb_handle, metadata !1168, metadata !DIExpression()), !dbg !1178
  call void @llvm.lifetime.start.p0(i64 8, ptr %table_header) #13, !dbg !1179
  call void @llvm.dbg.declare(metadata ptr %table_header, metadata !1169, metadata !DIExpression()), !dbg !1180
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #13, !dbg !1181
  call void @llvm.dbg.declare(metadata ptr %table, metadata !1170, metadata !DIExpression()), !dbg !1182
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_index) #13, !dbg !1183
  call void @llvm.dbg.declare(metadata ptr %table_index, metadata !1171, metadata !DIExpression()), !dbg !1184
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1185
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1172, metadata !DIExpression()), !dbg !1186
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #13, !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %length, metadata !1173, metadata !DIExpression()), !dbg !1188
  %0 = load ptr, ptr %target.addr, align 8, !dbg !1189
  %descriptor_type = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 1, !dbg !1191
  %1 = load i8, ptr %descriptor_type, align 8, !dbg !1191
  %conv = zext i8 %1 to i32, !dbg !1189
  %cmp = icmp eq i32 %conv, 15, !dbg !1192
  br i1 %cmp, label %if.then, label %if.end, !dbg !1193

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %target.addr, align 8, !dbg !1194
  %3 = ptrtoint ptr %2 to i64, !dbg !1194
  %4 = inttoptr i64 %3 to ptr, !dbg !1194
  %call = call ptr @acpi_ns_get_attached_object(ptr noundef %4) #14, !dbg !1196
  store ptr %call, ptr %target.addr, align 8, !dbg !1197
  br label %if.end, !dbg !1198

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %target.addr, align 8, !dbg !1199
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %5, i32 0, i32 2, !dbg !1201
  %6 = load i8, ptr %type, align 1, !dbg !1201
  %conv2 = zext i8 %6 to i32, !dbg !1199
  %cmp3 = icmp ne i32 %conv2, 1, !dbg !1202
  br i1 %cmp3, label %if.then5, label %if.end8, !dbg !1203

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %target.addr, align 8, !dbg !1204
  %type6 = getelementptr inbounds %struct.acpi_object_common, ptr %7, i32 0, i32 2, !dbg !1204
  %8 = load i8, ptr %type6, align 1, !dbg !1204
  %conv7 = zext i8 %8 to i32, !dbg !1204
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 298, ptr noundef @.str.1, i32 noundef %conv7) #14, !dbg !1204
  store i32 12291, ptr %retval, align 4, !dbg !1206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1206

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %target.addr, align 8, !dbg !1207
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %9, i32 0, i32 6, !dbg !1208
  store i64 0, ptr %value, align 8, !dbg !1209
  %10 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1210
  %type9 = getelementptr inbounds %struct.acpi_object_common, ptr %10, i32 0, i32 2, !dbg !1211
  %11 = load i8, ptr %type9, align 1, !dbg !1211
  %conv10 = zext i8 %11 to i32, !dbg !1210
  switch i32 %conv10, label %sw.default [
    i32 10, label %sw.bb
    i32 3, label %sw.bb46
  ], !dbg !1212

sw.bb:                                            ; preds = %if.end8
  %12 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1213
  %space_id = getelementptr inbounds %struct.acpi_object_region, ptr %12, i32 0, i32 5, !dbg !1216
  %13 = load i8, ptr %space_id, align 1, !dbg !1216
  %conv11 = zext i8 %13 to i32, !dbg !1213
  %cmp12 = icmp ne i32 %conv11, 0, !dbg !1217
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !1218

if.then14:                                        ; preds = %sw.bb
  store i32 12291, ptr %retval, align 4, !dbg !1219
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1219

if.end15:                                         ; preds = %sw.bb
  %14 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1221
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %14, i32 0, i32 4, !dbg !1223
  %15 = load i8, ptr %flags, align 4, !dbg !1223
  %conv16 = zext i8 %15 to i32, !dbg !1221
  %and = and i32 %conv16, 4, !dbg !1224
  %tobool = icmp ne i32 %and, 0, !dbg !1224
  br i1 %tobool, label %if.end22, label %if.then17, !dbg !1225

if.then17:                                        ; preds = %if.end15
  %16 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1226
  %call18 = call i32 @acpi_ds_get_region_arguments(ptr noundef %16) #14, !dbg !1228
  store i32 %call18, ptr %status, align 4, !dbg !1229
  %17 = load i32, ptr %status, align 4, !dbg !1230
  %tobool19 = icmp ne i32 %17, 0, !dbg !1230
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1232

if.then20:                                        ; preds = %if.then17
  %18 = load i32, ptr %status, align 4, !dbg !1233
  store i32 %18, ptr %retval, align 4, !dbg !1233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1233

if.end21:                                         ; preds = %if.then17
  br label %if.end22, !dbg !1235

if.end22:                                         ; preds = %if.end21, %if.end15
  %call23 = call ptr @acpi_os_allocate(i64 noundef 36) #14, !dbg !1236
  store ptr %call23, ptr %table_header, align 8, !dbg !1237
  %19 = load ptr, ptr %table_header, align 8, !dbg !1238
  %tobool24 = icmp ne ptr %19, null, !dbg !1238
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !1240

if.then25:                                        ; preds = %if.end22
  store i32 4, ptr %retval, align 4, !dbg !1241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1241

if.end26:                                         ; preds = %if.end22
  %20 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1243
  %21 = load ptr, ptr %table_header, align 8, !dbg !1244
  %22 = ptrtoint ptr %21 to i64, !dbg !1244
  %23 = inttoptr i64 %22 to ptr, !dbg !1244
  %call27 = call i32 @acpi_ex_region_read(ptr noundef %20, i32 noundef 36, ptr noundef %23) #14, !dbg !1245
  store i32 %call27, ptr %status, align 4, !dbg !1246
  %24 = load ptr, ptr %table_header, align 8, !dbg !1247
  %length28 = getelementptr inbounds %struct.acpi_table_header, ptr %24, i32 0, i32 1, !dbg !1248
  %25 = load i32, ptr %length28, align 1, !dbg !1248
  store i32 %25, ptr %length, align 4, !dbg !1249
  %26 = load ptr, ptr %table_header, align 8, !dbg !1250
  call void @acpi_os_free(ptr noundef %26) #14, !dbg !1250
  %27 = load i32, ptr %status, align 4, !dbg !1251
  %tobool29 = icmp ne i32 %27, 0, !dbg !1251
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !1253

if.then30:                                        ; preds = %if.end26
  %28 = load i32, ptr %status, align 4, !dbg !1254
  store i32 %28, ptr %retval, align 4, !dbg !1254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1254

if.end31:                                         ; preds = %if.end26
  %29 = load i32, ptr %length, align 4, !dbg !1256
  %conv32 = zext i32 %29 to i64, !dbg !1256
  %cmp33 = icmp ult i64 %conv32, 36, !dbg !1258
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !1259

if.then35:                                        ; preds = %if.end31
  store i32 8197, ptr %retval, align 4, !dbg !1260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1260

if.end36:                                         ; preds = %if.end31
  %30 = load i32, ptr %length, align 4, !dbg !1262
  %conv37 = zext i32 %30 to i64, !dbg !1262
  %call38 = call ptr @acpi_os_allocate(i64 noundef %conv37) #14, !dbg !1262
  store ptr %call38, ptr %table, align 8, !dbg !1263
  %31 = load ptr, ptr %table, align 8, !dbg !1264
  %tobool39 = icmp ne ptr %31, null, !dbg !1264
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !1266

if.then40:                                        ; preds = %if.end36
  store i32 4, ptr %retval, align 4, !dbg !1267
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1267

if.end41:                                         ; preds = %if.end36
  %32 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1269
  %33 = load i32, ptr %length, align 4, !dbg !1270
  %34 = load ptr, ptr %table, align 8, !dbg !1271
  %35 = ptrtoint ptr %34 to i64, !dbg !1271
  %36 = inttoptr i64 %35 to ptr, !dbg !1271
  %call42 = call i32 @acpi_ex_region_read(ptr noundef %32, i32 noundef %33, ptr noundef %36) #14, !dbg !1272
  store i32 %call42, ptr %status, align 4, !dbg !1273
  %37 = load i32, ptr %status, align 4, !dbg !1274
  %tobool43 = icmp ne i32 %37, 0, !dbg !1274
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !1276

if.then44:                                        ; preds = %if.end41
  %38 = load ptr, ptr %table, align 8, !dbg !1277
  call void @acpi_os_free(ptr noundef %38) #14, !dbg !1277
  %39 = load i32, ptr %status, align 4, !dbg !1279
  store i32 %39, ptr %retval, align 4, !dbg !1279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1279

if.end45:                                         ; preds = %if.end41
  br label %sw.epilog, !dbg !1280

sw.bb46:                                          ; preds = %if.end8
  %40 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1281
  %length47 = getelementptr inbounds %struct.acpi_object_buffer, ptr %40, i32 0, i32 6, !dbg !1283
  %41 = load i32, ptr %length47, align 8, !dbg !1283
  %conv48 = zext i32 %41 to i64, !dbg !1281
  %cmp49 = icmp ult i64 %conv48, 36, !dbg !1284
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !1285

if.then51:                                        ; preds = %sw.bb46
  store i32 8197, ptr %retval, align 4, !dbg !1286
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1286

if.end52:                                         ; preds = %sw.bb46
  %42 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1288
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %42, i32 0, i32 5, !dbg !1288
  %43 = load ptr, ptr %pointer, align 8, !dbg !1288
  %44 = ptrtoint ptr %43 to i64, !dbg !1288
  %45 = inttoptr i64 %44 to ptr, !dbg !1288
  store ptr %45, ptr %table_header, align 8, !dbg !1289
  %46 = load ptr, ptr %table_header, align 8, !dbg !1290
  %length53 = getelementptr inbounds %struct.acpi_table_header, ptr %46, i32 0, i32 1, !dbg !1291
  %47 = load i32, ptr %length53, align 1, !dbg !1291
  store i32 %47, ptr %length, align 4, !dbg !1292
  %48 = load i32, ptr %length, align 4, !dbg !1293
  %49 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1295
  %length54 = getelementptr inbounds %struct.acpi_object_buffer, ptr %49, i32 0, i32 6, !dbg !1296
  %50 = load i32, ptr %length54, align 8, !dbg !1296
  %cmp55 = icmp ugt i32 %48, %50, !dbg !1297
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !1298

if.then57:                                        ; preds = %if.end52
  store i32 12298, ptr %retval, align 4, !dbg !1299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1299

if.end58:                                         ; preds = %if.end52
  %51 = load i32, ptr %length, align 4, !dbg !1301
  %conv59 = zext i32 %51 to i64, !dbg !1301
  %cmp60 = icmp ult i64 %conv59, 36, !dbg !1303
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !1304

if.then62:                                        ; preds = %if.end58
  store i32 8197, ptr %retval, align 4, !dbg !1305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1305

if.end63:                                         ; preds = %if.end58
  %52 = load i32, ptr %length, align 4, !dbg !1307
  %conv64 = zext i32 %52 to i64, !dbg !1307
  %call65 = call ptr @acpi_os_allocate(i64 noundef %conv64) #14, !dbg !1307
  store ptr %call65, ptr %table, align 8, !dbg !1308
  %53 = load ptr, ptr %table, align 8, !dbg !1309
  %tobool66 = icmp ne ptr %53, null, !dbg !1309
  br i1 %tobool66, label %if.end68, label %if.then67, !dbg !1311

if.then67:                                        ; preds = %if.end63
  store i32 4, ptr %retval, align 4, !dbg !1312
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1312

if.end68:                                         ; preds = %if.end63
  %54 = load ptr, ptr %table, align 8, !dbg !1314
  %55 = load ptr, ptr %table_header, align 8, !dbg !1315
  %56 = load i32, ptr %length, align 4, !dbg !1316
  %conv69 = zext i32 %56 to i64, !dbg !1316
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %54, ptr align 1 %55, i64 %conv69, i1 false), !dbg !1317
  br label %sw.epilog, !dbg !1318

sw.default:                                       ; preds = %if.end8
  store i32 12291, ptr %retval, align 4, !dbg !1319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1319

sw.epilog:                                        ; preds = %if.end68, %if.end45
  call void (ptr, ...) @acpi_info(ptr noundef @.str) #14, !dbg !1320
  call void @acpi_ex_exit_interpreter() #14, !dbg !1321
  %57 = load ptr, ptr %table, align 8, !dbg !1322
  %58 = ptrtoint ptr %57 to i64, !dbg !1322
  %59 = load ptr, ptr %table, align 8, !dbg !1323
  %call70 = call i32 @acpi_tb_install_and_load_table(i64 noundef %58, i8 noundef zeroext 2, ptr noundef %59, i8 noundef zeroext 1, ptr noundef %table_index) #14, !dbg !1324
  store i32 %call70, ptr %status, align 4, !dbg !1325
  call void @acpi_ex_enter_interpreter() #14, !dbg !1326
  %60 = load i32, ptr %status, align 4, !dbg !1327
  %tobool71 = icmp ne i32 %60, 0, !dbg !1327
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !1329

if.then72:                                        ; preds = %sw.epilog
  %61 = load ptr, ptr %table, align 8, !dbg !1330
  call void @acpi_os_free(ptr noundef %61) #14, !dbg !1330
  %62 = load i32, ptr %status, align 4, !dbg !1332
  store i32 %62, ptr %retval, align 4, !dbg !1332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1332

if.end73:                                         ; preds = %sw.epilog
  %63 = load i32, ptr %table_index, align 4, !dbg !1333
  %call74 = call i32 @acpi_ex_add_table(i32 noundef %63, ptr noundef %ddb_handle) #14, !dbg !1334
  store i32 %call74, ptr %status, align 4, !dbg !1335
  %64 = load i32, ptr %status, align 4, !dbg !1336
  %tobool75 = icmp ne i32 %64, 0, !dbg !1336
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !1338

if.then76:                                        ; preds = %if.end73
  %65 = load i32, ptr %status, align 4, !dbg !1339
  store i32 %65, ptr %retval, align 4, !dbg !1339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1339

if.end77:                                         ; preds = %if.end73
  call void @acpi_ex_exit_interpreter() #14, !dbg !1341
  %call78 = call i32 @acpi_ns_initialize_objects() #14, !dbg !1342
  call void @acpi_ex_enter_interpreter() #14, !dbg !1343
  %66 = load ptr, ptr %ddb_handle, align 8, !dbg !1344
  call void @acpi_ut_remove_reference(ptr noundef %66) #14, !dbg !1345
  %67 = load ptr, ptr %target.addr, align 8, !dbg !1346
  %value79 = getelementptr inbounds %struct.acpi_object_integer, ptr %67, i32 0, i32 6, !dbg !1347
  store i64 -1, ptr %value79, align 8, !dbg !1348
  %68 = load i32, ptr %status, align 4, !dbg !1349
  store i32 %68, ptr %retval, align 4, !dbg !1349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1349

cleanup:                                          ; preds = %if.end77, %if.then76, %if.then72, %sw.default, %if.then67, %if.then62, %if.then57, %if.then51, %if.then44, %if.then40, %if.then35, %if.then30, %if.then25, %if.then20, %if.then14, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #13, !dbg !1350
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1350
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_index) #13, !dbg !1350
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #13, !dbg !1350
  call void @llvm.lifetime.end.p0(i64 8, ptr %table_header) #13, !dbg !1350
  call void @llvm.lifetime.end.p0(i64 8, ptr %ddb_handle) #13, !dbg !1350
  %69 = load i32, ptr %retval, align 4, !dbg !1350
  ret i32 %69, !dbg !1350
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1351 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1354 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1357 dso_local i32 @acpi_ds_get_region_arguments(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate(i64 noundef %size) #4 align 16 !dbg !1359 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1364, metadata !DIExpression()), !dbg !1375
  %0 = load i64, ptr %size.addr, align 8, !dbg !1376
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !1377
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1365, metadata !DIExpression()), !dbg !1377
  br label %do.body, !dbg !1377

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1378
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1367, metadata !DIExpression()), !dbg !1378
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1378
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1370, metadata !DIExpression()), !dbg !1378
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1378
  %conv = zext i1 %cmp to i32, !dbg !1378
  store i32 1, ptr %tmp, align 4, !dbg !1378
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1379
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1379
  %1 = load i32, ptr %tmp, align 4, !dbg !1378
  %call = call i64 @arch_local_save_flags() #14, !dbg !1379
  store i64 %call, ptr %_flags, align 8, !dbg !1379
  br label %do.cond, !dbg !1379

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1379

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !1380
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1371, metadata !DIExpression()), !dbg !1380
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !1380
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1374, metadata !DIExpression()), !dbg !1380
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1380
  %conv6 = zext i1 %cmp5 to i32, !dbg !1380
  store i32 1, ptr %tmp7, align 4, !dbg !1380
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !1381
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !1381
  %2 = load i32, ptr %tmp7, align 4, !dbg !1380
  %3 = load i64, ptr %_flags, align 8, !dbg !1381
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !1381
  store i32 %call9, ptr %tmp8, align 4, !dbg !1381
  %4 = load i32, ptr %tmp8, align 4, !dbg !1381
  store i32 %4, ptr %tmp1, align 4, !dbg !1379
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !1382
  %5 = load i32, ptr %tmp1, align 4, !dbg !1377
  %tobool = icmp ne i32 %5, 0, !dbg !1382
  %6 = zext i1 %tobool to i64, !dbg !1382
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1382
  %call10 = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !1383
  ret ptr %call10, !dbg !1384
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ex_region_read(ptr noundef %obj_desc, i32 noundef %length, ptr noundef %buffer) #0 align 16 !dbg !1385 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %value = alloca i64, align 8
  %region_offset = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1389, metadata !DIExpression()), !dbg !1396
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !1390, metadata !DIExpression()), !dbg !1397
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !1391, metadata !DIExpression()), !dbg !1398
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1399
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1392, metadata !DIExpression()), !dbg !1400
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #13, !dbg !1401
  call void @llvm.dbg.declare(metadata ptr %value, metadata !1393, metadata !DIExpression()), !dbg !1402
  call void @llvm.lifetime.start.p0(i64 4, ptr %region_offset) #13, !dbg !1403
  call void @llvm.dbg.declare(metadata ptr %region_offset, metadata !1394, metadata !DIExpression()), !dbg !1404
  store i32 0, ptr %region_offset, align 4, !dbg !1404
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1405
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1395, metadata !DIExpression()), !dbg !1406
  store i32 0, ptr %i, align 4, !dbg !1407
  br label %for.cond, !dbg !1409

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1410
  %1 = load i32, ptr %length.addr, align 4, !dbg !1412
  %cmp = icmp ult i32 %0, %1, !dbg !1413
  br i1 %cmp, label %for.body, label %for.end, !dbg !1414

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1415
  %3 = load i32, ptr %region_offset, align 4, !dbg !1417
  %call = call i32 @acpi_ev_address_space_dispatch(ptr noundef %2, ptr noundef null, i32 noundef 0, i32 noundef %3, i32 noundef 8, ptr noundef %value) #14, !dbg !1418
  store i32 %call, ptr %status, align 4, !dbg !1419
  %4 = load i32, ptr %status, align 4, !dbg !1420
  %tobool = icmp ne i32 %4, 0, !dbg !1420
  br i1 %tobool, label %if.then, label %if.end, !dbg !1422

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %status, align 4, !dbg !1423
  store i32 %5, ptr %retval, align 4, !dbg !1425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1425

if.end:                                           ; preds = %for.body
  %6 = load i64, ptr %value, align 8, !dbg !1426
  %conv = trunc i64 %6 to i8, !dbg !1427
  %7 = load ptr, ptr %buffer.addr, align 8, !dbg !1428
  store i8 %conv, ptr %7, align 1, !dbg !1429
  %8 = load ptr, ptr %buffer.addr, align 8, !dbg !1430
  %incdec.ptr = getelementptr i8, ptr %8, i32 1, !dbg !1430
  store ptr %incdec.ptr, ptr %buffer.addr, align 8, !dbg !1430
  %9 = load i32, ptr %region_offset, align 4, !dbg !1431
  %inc = add i32 %9, 1, !dbg !1431
  store i32 %inc, ptr %region_offset, align 4, !dbg !1431
  br label %for.inc, !dbg !1432

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !dbg !1433
  %inc1 = add i32 %10, 1, !dbg !1433
  store i32 %inc1, ptr %i, align 4, !dbg !1433
  br label %for.cond, !dbg !1434, !llvm.loop !1435

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1439

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1440
  call void @llvm.lifetime.end.p0(i64 4, ptr %region_offset) #13, !dbg !1440
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #13, !dbg !1440
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1440
  %11 = load i32, ptr %retval, align 4, !dbg !1440
  ret i32 %11, !dbg !1440
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1441 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1445, metadata !DIExpression()), !dbg !1446
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1447
  call void @kfree(ptr noundef %0) #14, !dbg !1448
  ret void, !dbg !1449
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1450 dso_local i32 @acpi_tb_install_and_load_table(i64 noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1453 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1454 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1457 dso_local i32 @acpi_tb_unload_table(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1460 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !1464 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1472, metadata !DIExpression()), !dbg !1477
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1473, metadata !DIExpression()), !dbg !1478
  %0 = load i64, ptr %size.addr, align 8, !dbg !1479
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1480
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1481

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1482
  %tobool = icmp ne i64 %2, 0, !dbg !1482
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1483

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1484
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1474, metadata !DIExpression()), !dbg !1485
  %3 = load i64, ptr %size.addr, align 8, !dbg !1486
  %cmp = icmp ugt i64 %3, 8192, !dbg !1488
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1489

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1490
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1491
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !1492
  store ptr %call, ptr %retval, align 8, !dbg !1493
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1493

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1494
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !1494
  store i32 %call2, ptr %index, align 4, !dbg !1495
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1496
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1497
  %9 = ptrtoint ptr %8 to i64, !dbg !1497
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !1498
  %idxprom = zext i32 %call3 to i64, !dbg !1499
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1499
  %10 = load i32, ptr %index, align 4, !dbg !1500
  %idxprom4 = zext i32 %10 to i64, !dbg !1499
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1499
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1499
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1501
  %13 = load i64, ptr %size.addr, align 8, !dbg !1502
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !1503
  store ptr %call6, ptr %retval, align 8, !dbg !1504
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1504

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1505
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1506
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1507
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !1508
  store ptr %call8, ptr %retval, align 8, !dbg !1509
  br label %return, !dbg !1509

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1510
  ret ptr %16, !dbg !1510
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #7 align 16 !dbg !1511 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !1515
  ret i64 %call, !dbg !1516
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #7 align 16 !dbg !1517 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1522, metadata !DIExpression()), !dbg !1523
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1524
  %and = and i64 %0, 512, !dbg !1525
  %tobool = icmp ne i64 %and, 0, !dbg !1526
  %lnot = xor i1 %tobool, true, !dbg !1526
  %lnot.ext = zext i1 %lnot to i32, !dbg !1526
  ret i32 %lnot.ext, !dbg !1527
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1528 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !1529 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1535, metadata !DIExpression()), !dbg !1537
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1536, metadata !DIExpression()), !dbg !1538
  %0 = load i64, ptr %size.addr, align 8, !dbg !1539
  %tobool = icmp ne i64 %0, 0, !dbg !1539
  br i1 %tobool, label %if.end, label %if.then, !dbg !1541

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1542
  br label %return, !dbg !1542

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1543
  %cmp = icmp ule i64 %1, 8, !dbg !1545
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1546

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1547
  br label %return, !dbg !1547

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1548
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1550
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1551

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1552
  %cmp4 = icmp ule i64 %3, 96, !dbg !1553
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1554

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1555
  br label %return, !dbg !1555

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1556
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1558
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1559

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1560
  %cmp9 = icmp ule i64 %5, 192, !dbg !1561
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1562

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1563
  br label %return, !dbg !1563

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1564
  %cmp12 = icmp ule i64 %6, 8, !dbg !1566
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1567

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1568
  br label %return, !dbg !1568

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1569
  %cmp15 = icmp ule i64 %7, 16, !dbg !1571
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1572

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1573
  br label %return, !dbg !1573

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1574
  %cmp18 = icmp ule i64 %8, 32, !dbg !1576
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1577

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1578
  br label %return, !dbg !1578

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1579
  %cmp21 = icmp ule i64 %9, 64, !dbg !1581
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1582

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1583
  br label %return, !dbg !1583

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1584
  %cmp24 = icmp ule i64 %10, 128, !dbg !1586
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1587

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1588
  br label %return, !dbg !1588

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1589
  %cmp27 = icmp ule i64 %11, 256, !dbg !1591
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1592

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1593
  br label %return, !dbg !1593

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1594
  %cmp30 = icmp ule i64 %12, 512, !dbg !1596
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1597

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1598
  br label %return, !dbg !1598

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1599
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1601
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1602

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1603
  br label %return, !dbg !1603

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1604
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1606
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1607

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1608
  br label %return, !dbg !1608

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1609
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1611
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1612

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1613
  br label %return, !dbg !1613

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1614
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1616
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1617

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1618
  br label %return, !dbg !1618

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1619
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1621
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1622

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1623
  br label %return, !dbg !1623

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1624
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1626
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1627

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1628
  br label %return, !dbg !1628

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1629
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1631
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1632

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1633
  br label %return, !dbg !1633

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1634
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1636
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1637

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1638
  br label %return, !dbg !1638

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1639
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1641
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1642

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1643
  br label %return, !dbg !1643

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1644
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1646
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1647

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1648
  br label %return, !dbg !1648

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1649
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1651
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1652

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1653
  br label %return, !dbg !1653

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1654
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1656
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1657

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1658
  br label %return, !dbg !1658

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1659, !range !1661, !noundef !1662
  %tobool69 = trunc i8 %25 to i1, !dbg !1659
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1663

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1664

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !1665, !srcloc !1668
  unreachable, !dbg !1665

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1669

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1670

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1671

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1673

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1671

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #13, !dbg !1675, !srcloc !1677
  br label %do.end75, !dbg !1675

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1671

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1678
  br label %return, !dbg !1678

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1679
  ret i32 %26, !dbg !1679
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1680 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !1686 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1690, metadata !DIExpression()), !dbg !1692
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1691, metadata !DIExpression()), !dbg !1693
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1694
  %and = and i32 %0, 17, !dbg !1694
  %cmp = icmp eq i32 %and, 0, !dbg !1694
  %lnot = xor i1 %cmp, true, !dbg !1694
  %lnot1 = xor i1 %lnot, true, !dbg !1694
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1694
  %conv = sext i32 %lnot.ext to i64, !dbg !1694
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1694
  %tobool = icmp ne i64 %expval, 0, !dbg !1694
  br i1 %tobool, label %if.then, label %if.end, !dbg !1696

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1697
  br label %return, !dbg !1697

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1698
  %and2 = and i32 %1, 1, !dbg !1700
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1700
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1701

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1702
  br label %return, !dbg !1702

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1703
  br label %return, !dbg !1703

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1705
  ret i32 %2, !dbg !1705
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1706 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1707 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #7 align 16 !dbg !1708 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1711
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1710, metadata !DIExpression()), !dbg !1712
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !1713, !srcloc !1714
  %0 = load i64, ptr %flags, align 8, !dbg !1715
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1716
  ret i64 %0, !dbg !1717
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1718 dso_local i32 @acpi_ev_address_space_dispatch(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1722 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!866, !867, !868, !869, !870, !871, !872, !873}
!llvm.ident = !{!874}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/exconfig.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "81d4fc9201f0b48c2c0629c7ad393fff")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 24)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !9, file: !2, line: 20, type: !864, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exconfig.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exconfig\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exconfig.ll drivers/acpi/acpica/exconfig.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !38, globals: !846, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !23, !28}
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
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 10, baseType: !13, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "false", value: 0)
!27 = !DIEnumerator(name: "true", value: 1)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !29, line: 364, baseType: !13, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!30 = !{!31, !32, !33, !34, !35, !36, !37}
!31 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!32 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!33 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!34 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!35 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!36 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!37 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!38 = !{!39, !44, !48, !51, !813, !103, !816, !817, !98, !818, !834, !148, !845, !815, !59}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !40, line: 23, baseType: !41)
!40 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !42, line: 31, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!43 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !45, line: 421, baseType: !46)
!45 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !40, line: 21, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !42, line: 27, baseType: !13)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !40, line: 19, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !42, line: 24, baseType: !50)
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !12, line: 369, size: 576, elements: !53)
!53 = !{!54, !65, !78, !89, !125, !139, !149, !462, !479, !495, !508, !586, !598, !612, !622, !640, !662, !681, !700, !719, !732, !759, !776, !789, !803, !812}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !52, file: !12, line: 370, baseType: !55, size: 128)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !12, line: 73, size: 128, elements: !56)
!56 = !{!57, !58, !62, !63, !64}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !55, file: !12, line: 74, baseType: !51, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !55, file: !12, line: 74, baseType: !59, size: 8, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !40, line: 17, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !42, line: 21, baseType: !61)
!61 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !55, file: !12, line: 74, baseType: !59, size: 8, offset: 72)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !55, file: !12, line: 74, baseType: !48, size: 16, offset: 80)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !55, file: !12, line: 74, baseType: !59, size: 8, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !52, file: !12, line: 371, baseType: !66, size: 192)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !12, line: 76, size: 192, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !77}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !66, file: !12, line: 77, baseType: !51, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !12, line: 77, baseType: !59, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !12, line: 77, baseType: !59, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !66, file: !12, line: 77, baseType: !48, size: 16, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !12, line: 77, baseType: !59, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !66, file: !12, line: 77, baseType: !74, size: 24, offset: 104)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 24, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !66, file: !12, line: 78, baseType: !39, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !52, file: !12, line: 372, baseType: !79, size: 256)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !12, line: 93, size: 256, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !88}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !79, file: !12, line: 94, baseType: !51, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !79, file: !12, line: 94, baseType: !59, size: 8, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !12, line: 94, baseType: !59, size: 8, offset: 72)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !79, file: !12, line: 94, baseType: !48, size: 16, offset: 80)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !12, line: 94, baseType: !59, size: 8, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !79, file: !12, line: 94, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !79, file: !12, line: 94, baseType: !46, size: 32, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !52, file: !12, line: 373, baseType: !90, size: 384)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !12, line: 97, size: 384, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !99, !100, !101, !102}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !90, file: !12, line: 98, baseType: !51, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !90, file: !12, line: 98, baseType: !59, size: 8, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !12, line: 98, baseType: !59, size: 8, offset: 72)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !90, file: !12, line: 98, baseType: !48, size: 16, offset: 80)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !90, file: !12, line: 98, baseType: !59, size: 8, offset: 96)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !90, file: !12, line: 98, baseType: !98, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !90, file: !12, line: 98, baseType: !46, size: 32, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !90, file: !12, line: 99, baseType: !46, size: 32, offset: 224)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !90, file: !12, line: 100, baseType: !98, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !90, file: !12, line: 101, baseType: !103, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !105, line: 133, size: 384, elements: !106)
!105 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!106 = !{!107, !108, !109, !110, !111, !120, !121, !122, !123}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !104, file: !105, line: 134, baseType: !51, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !104, file: !105, line: 135, baseType: !59, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !105, line: 136, baseType: !59, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !104, file: !105, line: 137, baseType: !48, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !104, file: !105, line: 138, baseType: !112, size: 32, offset: 96)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !113, line: 328, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!114 = !{!115, !116}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !112, file: !113, line: 329, baseType: !46, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !112, file: !113, line: 330, baseType: !117, size: 32)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 4)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !104, file: !105, line: 139, baseType: !103, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !104, file: !105, line: 140, baseType: !103, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !104, file: !105, line: 141, baseType: !103, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !104, file: !105, line: 142, baseType: !124, size: 16, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !45, line: 445, baseType: !48)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !52, file: !12, line: 374, baseType: !126, size: 384)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !12, line: 104, size: 384, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !136, !137, !138}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !126, file: !12, line: 105, baseType: !51, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !126, file: !12, line: 105, baseType: !59, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !12, line: 105, baseType: !59, size: 8, offset: 72)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !126, file: !12, line: 105, baseType: !48, size: 16, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !12, line: 105, baseType: !59, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !126, file: !12, line: 105, baseType: !103, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !126, file: !12, line: 106, baseType: !135, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !126, file: !12, line: 107, baseType: !98, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !126, file: !12, line: 108, baseType: !46, size: 32, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !126, file: !12, line: 109, baseType: !46, size: 32, offset: 352)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !52, file: !12, line: 375, baseType: !140, size: 192)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !12, line: 118, size: 192, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !140, file: !12, line: 119, baseType: !51, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !140, file: !12, line: 119, baseType: !59, size: 8, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !12, line: 119, baseType: !59, size: 8, offset: 72)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !140, file: !12, line: 119, baseType: !48, size: 16, offset: 80)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !12, line: 119, baseType: !59, size: 8, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !140, file: !12, line: 119, baseType: !148, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !52, file: !12, line: 376, baseType: !150, size: 448)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !12, line: 144, size: 448, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !459, !460, !461}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !150, file: !12, line: 145, baseType: !51, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !150, file: !12, line: 145, baseType: !59, size: 8, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !150, file: !12, line: 145, baseType: !59, size: 8, offset: 72)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !150, file: !12, line: 145, baseType: !48, size: 16, offset: 80)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !150, file: !12, line: 145, baseType: !59, size: 8, offset: 96)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !150, file: !12, line: 145, baseType: !59, size: 8, offset: 104)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !150, file: !12, line: 146, baseType: !59, size: 8, offset: 112)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !150, file: !12, line: 147, baseType: !59, size: 8, offset: 120)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !150, file: !12, line: 148, baseType: !51, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !150, file: !12, line: 149, baseType: !51, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !150, file: !12, line: 150, baseType: !98, size: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !150, file: !12, line: 154, baseType: !164, size: 64, offset: 320)
!164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !150, file: !12, line: 151, size: 64, elements: !165)
!165 = !{!166, !458}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !164, file: !12, line: 152, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !105, line: 248, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!44, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !173, line: 37, size: 9024, elements: !174)
!173 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !404, !405, !406, !407, !408, !412, !414, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !441, !442, !443, !444, !445, !446, !447, !448, !450, !456}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !173, line: 38, baseType: !171, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !172, file: !173, line: 39, baseType: !59, size: 8, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !172, file: !173, line: 40, baseType: !59, size: 8, offset: 72)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !172, file: !173, line: 41, baseType: !48, size: 16, offset: 80)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !172, file: !173, line: 42, baseType: !59, size: 8, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !172, file: !173, line: 43, baseType: !59, size: 8, offset: 104)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !172, file: !173, line: 44, baseType: !59, size: 8, offset: 112)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !172, file: !173, line: 45, baseType: !124, size: 16, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !172, file: !173, line: 46, baseType: !59, size: 8, offset: 144)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !172, file: !173, line: 47, baseType: !59, size: 8, offset: 152)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !172, file: !173, line: 48, baseType: !59, size: 8, offset: 160)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !172, file: !173, line: 49, baseType: !59, size: 8, offset: 168)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !172, file: !173, line: 50, baseType: !59, size: 8, offset: 176)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !172, file: !173, line: 51, baseType: !59, size: 8, offset: 184)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !172, file: !173, line: 52, baseType: !59, size: 8, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !172, file: !173, line: 53, baseType: !59, size: 8, offset: 200)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !172, file: !173, line: 54, baseType: !98, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !172, file: !173, line: 55, baseType: !46, size: 32, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !172, file: !173, line: 56, baseType: !46, size: 32, offset: 352)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !172, file: !173, line: 57, baseType: !46, size: 32, offset: 384)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !172, file: !173, line: 58, baseType: !46, size: 32, offset: 416)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !172, file: !173, line: 60, baseType: !197, size: 640, offset: 448)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !105, line: 909, size: 640, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !285, !286, !402, !403}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !197, file: !105, line: 910, baseType: !98, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !197, file: !105, line: 911, baseType: !98, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !197, file: !105, line: 912, baseType: !98, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !197, file: !105, line: 913, baseType: !98, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !197, file: !105, line: 914, baseType: !98, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !197, file: !105, line: 915, baseType: !205, size: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !105, line: 891, size: 1600, elements: !207)
!207 = !{!208, !228, !244}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !206, file: !105, line: 892, baseType: !209, size: 448)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !105, line: 844, size: 448, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !227}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !209, file: !105, line: 845, baseType: !205, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !209, file: !105, line: 845, baseType: !59, size: 8, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !209, file: !105, line: 845, baseType: !59, size: 8, offset: 72)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !209, file: !105, line: 845, baseType: !48, size: 16, offset: 80)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !209, file: !105, line: 845, baseType: !98, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !209, file: !105, line: 845, baseType: !205, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !209, file: !105, line: 845, baseType: !103, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !209, file: !105, line: 845, baseType: !219, size: 64, offset: 320)
!219 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !105, line: 732, size: 64, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !219, file: !105, line: 733, baseType: !39, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !219, file: !105, line: 734, baseType: !46, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !219, file: !105, line: 735, baseType: !87, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !219, file: !105, line: 736, baseType: !98, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !219, file: !105, line: 737, baseType: !87, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !219, file: !105, line: 738, baseType: !205, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !209, file: !105, line: 845, baseType: !59, size: 8, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !206, file: !105, line: 893, baseType: !229, size: 640)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !105, line: 851, size: 640, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !229, file: !105, line: 852, baseType: !205, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !229, file: !105, line: 852, baseType: !59, size: 8, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !229, file: !105, line: 852, baseType: !59, size: 8, offset: 72)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !229, file: !105, line: 852, baseType: !48, size: 16, offset: 80)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !229, file: !105, line: 852, baseType: !98, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !105, line: 852, baseType: !205, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !229, file: !105, line: 852, baseType: !103, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !229, file: !105, line: 852, baseType: !219, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !229, file: !105, line: 852, baseType: !59, size: 8, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !229, file: !105, line: 852, baseType: !87, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !229, file: !105, line: 853, baseType: !98, size: 64, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !229, file: !105, line: 854, baseType: !46, size: 32, offset: 576)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !229, file: !105, line: 855, baseType: !46, size: 32, offset: 608)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !206, file: !105, line: 894, baseType: !245, size: 1600)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !105, line: 862, size: 1600, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !245, file: !105, line: 863, baseType: !205, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !245, file: !105, line: 863, baseType: !59, size: 8, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !245, file: !105, line: 863, baseType: !59, size: 8, offset: 72)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !245, file: !105, line: 863, baseType: !48, size: 16, offset: 80)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !245, file: !105, line: 863, baseType: !98, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !105, line: 863, baseType: !205, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !245, file: !105, line: 863, baseType: !103, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !245, file: !105, line: 863, baseType: !219, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !245, file: !105, line: 863, baseType: !59, size: 8, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !245, file: !105, line: 863, baseType: !205, size: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !245, file: !105, line: 864, baseType: !205, size: 64, offset: 512)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !245, file: !105, line: 865, baseType: !87, size: 64, offset: 576)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !245, file: !105, line: 866, baseType: !59, size: 8, offset: 640)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !245, file: !105, line: 867, baseType: !87, size: 64, offset: 704)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !245, file: !105, line: 868, baseType: !87, size: 64, offset: 768)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !245, file: !105, line: 869, baseType: !87, size: 64, offset: 832)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !245, file: !105, line: 870, baseType: !117, size: 32, offset: 896)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !245, file: !105, line: 871, baseType: !46, size: 32, offset: 928)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !245, file: !105, line: 872, baseType: !46, size: 32, offset: 960)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !245, file: !105, line: 873, baseType: !46, size: 32, offset: 992)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !245, file: !105, line: 874, baseType: !46, size: 32, offset: 1024)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !245, file: !105, line: 875, baseType: !46, size: 32, offset: 1056)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !245, file: !105, line: 876, baseType: !46, size: 32, offset: 1088)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !245, file: !105, line: 877, baseType: !46, size: 32, offset: 1120)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !245, file: !105, line: 878, baseType: !46, size: 32, offset: 1152)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !245, file: !105, line: 879, baseType: !46, size: 32, offset: 1184)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !245, file: !105, line: 880, baseType: !46, size: 32, offset: 1216)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !245, file: !105, line: 881, baseType: !46, size: 32, offset: 1248)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !245, file: !105, line: 882, baseType: !46, size: 32, offset: 1280)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !245, file: !105, line: 883, baseType: !46, size: 32, offset: 1312)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !245, file: !105, line: 884, baseType: !48, size: 16, offset: 1344)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !245, file: !105, line: 885, baseType: !59, size: 8, offset: 1360)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !245, file: !105, line: 886, baseType: !59, size: 8, offset: 1368)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !245, file: !105, line: 887, baseType: !59, size: 8, offset: 1376)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !245, file: !105, line: 888, baseType: !282, size: 160, offset: 1384)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 20)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !197, file: !105, line: 916, baseType: !103, size: 64, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !197, file: !105, line: 917, baseType: !287, size: 64, offset: 448)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !105, line: 679, size: 640, elements: !289)
!289 = !{!290, !298, !311, !320, !329, !342, !356, !368, !380}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !288, file: !105, line: 680, baseType: !291, size: 128)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !105, line: 575, size: 128, elements: !292)
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !105, line: 576, baseType: !148, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !291, file: !105, line: 576, baseType: !59, size: 8, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !105, line: 576, baseType: !59, size: 8, offset: 72)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !291, file: !105, line: 576, baseType: !48, size: 16, offset: 80)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !105, line: 576, baseType: !48, size: 16, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !288, file: !105, line: 681, baseType: !299, size: 384)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !105, line: 604, size: 384, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306, !307, !308, !309, !310}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !105, line: 605, baseType: !148, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !299, file: !105, line: 605, baseType: !59, size: 8, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !105, line: 605, baseType: !59, size: 8, offset: 72)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !299, file: !105, line: 605, baseType: !48, size: 16, offset: 80)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !299, file: !105, line: 605, baseType: !48, size: 16, offset: 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !299, file: !105, line: 606, baseType: !48, size: 16, offset: 112)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !299, file: !105, line: 607, baseType: !205, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !299, file: !105, line: 608, baseType: !98, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !299, file: !105, line: 609, baseType: !98, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !299, file: !105, line: 610, baseType: !39, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !288, file: !105, line: 682, baseType: !312, size: 192)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !105, line: 582, size: 192, elements: !313)
!313 = !{!314, !315, !316, !317, !318, !319}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !312, file: !105, line: 583, baseType: !148, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !312, file: !105, line: 583, baseType: !59, size: 8, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !105, line: 583, baseType: !59, size: 8, offset: 72)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !312, file: !105, line: 583, baseType: !48, size: 16, offset: 80)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !312, file: !105, line: 583, baseType: !48, size: 16, offset: 96)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !312, file: !105, line: 584, baseType: !51, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !288, file: !105, line: 683, baseType: !321, size: 192)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !105, line: 616, size: 192, elements: !322)
!322 = !{!323, !324, !325, !326, !327, !328}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !105, line: 617, baseType: !148, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !321, file: !105, line: 617, baseType: !59, size: 8, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !105, line: 617, baseType: !59, size: 8, offset: 72)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !321, file: !105, line: 617, baseType: !48, size: 16, offset: 80)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !321, file: !105, line: 617, baseType: !48, size: 16, offset: 96)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !321, file: !105, line: 618, baseType: !103, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !288, file: !105, line: 684, baseType: !330, size: 448)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !105, line: 621, size: 448, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !105, line: 622, baseType: !148, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !330, file: !105, line: 622, baseType: !59, size: 8, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !105, line: 622, baseType: !59, size: 8, offset: 72)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !330, file: !105, line: 622, baseType: !48, size: 16, offset: 80)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !330, file: !105, line: 622, baseType: !48, size: 16, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !330, file: !105, line: 623, baseType: !46, size: 32, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !330, file: !105, line: 624, baseType: !205, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !330, file: !105, line: 625, baseType: !98, size: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !330, file: !105, line: 626, baseType: !98, size: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !330, file: !105, line: 627, baseType: !46, size: 32, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !288, file: !105, line: 685, baseType: !343, size: 512)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !105, line: 590, size: 512, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !105, line: 591, baseType: !148, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !343, file: !105, line: 591, baseType: !59, size: 8, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !105, line: 591, baseType: !59, size: 8, offset: 72)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !343, file: !105, line: 591, baseType: !48, size: 16, offset: 80)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !343, file: !105, line: 591, baseType: !48, size: 16, offset: 96)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !343, file: !105, line: 592, baseType: !46, size: 32, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !343, file: !105, line: 593, baseType: !51, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !343, file: !105, line: 594, baseType: !51, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !343, file: !105, line: 595, baseType: !171, size: 64, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !343, file: !105, line: 596, baseType: !148, size: 64, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !343, file: !105, line: 597, baseType: !46, size: 32, offset: 448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !288, file: !105, line: 686, baseType: !357, size: 320)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !105, line: 634, size: 320, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364, !365, !366, !367}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !105, line: 635, baseType: !148, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !357, file: !105, line: 635, baseType: !59, size: 8, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !105, line: 635, baseType: !59, size: 8, offset: 72)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !357, file: !105, line: 635, baseType: !48, size: 16, offset: 80)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !357, file: !105, line: 635, baseType: !48, size: 16, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !357, file: !105, line: 636, baseType: !59, size: 8, offset: 112)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !357, file: !105, line: 637, baseType: !171, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !357, file: !105, line: 638, baseType: !51, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !357, file: !105, line: 639, baseType: !39, size: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !288, file: !105, line: 687, baseType: !369, size: 640)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !105, line: 646, size: 640, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !105, line: 647, baseType: !148, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !369, file: !105, line: 647, baseType: !59, size: 8, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !105, line: 647, baseType: !59, size: 8, offset: 72)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !369, file: !105, line: 647, baseType: !48, size: 16, offset: 80)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !369, file: !105, line: 647, baseType: !48, size: 16, offset: 96)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !369, file: !105, line: 648, baseType: !377, size: 512, offset: 128)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 512, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 8)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !288, file: !105, line: 688, baseType: !381, size: 320)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !105, line: 669, size: 320, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !105, line: 670, baseType: !148, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !381, file: !105, line: 670, baseType: !59, size: 8, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !381, file: !105, line: 670, baseType: !59, size: 8, offset: 72)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !381, file: !105, line: 670, baseType: !48, size: 16, offset: 80)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !381, file: !105, line: 670, baseType: !48, size: 16, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !381, file: !105, line: 671, baseType: !59, size: 8, offset: 112)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !381, file: !105, line: 672, baseType: !103, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !381, file: !105, line: 673, baseType: !51, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !381, file: !105, line: 674, baseType: !392, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !105, line: 660, size: 128, elements: !394)
!394 = !{!395, !401}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !393, file: !105, line: 661, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !45, line: 1061, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !400, !46, !148}
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !45, line: 424, baseType: !148)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !393, file: !105, line: 662, baseType: !148, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !197, file: !105, line: 918, baseType: !205, size: 64, offset: 512)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !197, file: !105, line: 919, baseType: !46, size: 32, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !172, file: !173, line: 61, baseType: !46, size: 32, offset: 1088)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !172, file: !173, line: 62, baseType: !46, size: 32, offset: 1120)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !172, file: !173, line: 63, baseType: !48, size: 16, offset: 1152)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !172, file: !173, line: 64, baseType: !59, size: 8, offset: 1168)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !172, file: !173, line: 66, baseType: !409, size: 2688, offset: 1216)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 2688, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 7)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !172, file: !173, line: 67, baseType: !413, size: 3072, offset: 3904)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 3072, elements: !378)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !172, file: !173, line: 68, baseType: !415, size: 576, offset: 6976)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 576, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 9)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !172, file: !173, line: 69, baseType: !135, size: 64, offset: 7552)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !172, file: !173, line: 71, baseType: !98, size: 64, offset: 7616)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !172, file: !173, line: 72, baseType: !135, size: 64, offset: 7680)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !172, file: !173, line: 73, baseType: !287, size: 64, offset: 7744)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !172, file: !173, line: 74, baseType: !103, size: 64, offset: 7808)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !172, file: !173, line: 75, baseType: !51, size: 64, offset: 7872)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !172, file: !173, line: 76, baseType: !103, size: 64, offset: 7936)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !172, file: !173, line: 77, baseType: !205, size: 64, offset: 8000)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !172, file: !173, line: 78, baseType: !51, size: 64, offset: 8064)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !172, file: !173, line: 79, baseType: !103, size: 64, offset: 8128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !172, file: !173, line: 80, baseType: !87, size: 64, offset: 8192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !172, file: !173, line: 81, baseType: !205, size: 64, offset: 8256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !172, file: !173, line: 82, baseType: !431, size: 64, offset: 8320)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !105, line: 718, size: 128, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !440}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !433, file: !105, line: 722, baseType: !46, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !433, file: !105, line: 723, baseType: !46, size: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !433, file: !105, line: 724, baseType: !48, size: 16, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !433, file: !105, line: 725, baseType: !59, size: 8, offset: 80)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !433, file: !105, line: 726, baseType: !59, size: 8, offset: 88)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !433, file: !105, line: 727, baseType: !59, size: 8, offset: 96)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !172, file: !173, line: 83, baseType: !205, size: 64, offset: 8384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !172, file: !173, line: 84, baseType: !51, size: 64, offset: 8448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !172, file: !173, line: 85, baseType: !287, size: 64, offset: 8512)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !172, file: !173, line: 86, baseType: !51, size: 64, offset: 8576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !172, file: !173, line: 87, baseType: !287, size: 64, offset: 8640)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !172, file: !173, line: 88, baseType: !205, size: 64, offset: 8704)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !172, file: !173, line: 89, baseType: !205, size: 64, offset: 8768)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !172, file: !173, line: 90, baseType: !449, size: 64, offset: 8832)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !172, file: !173, line: 91, baseType: !451, size: 64, offset: 8896)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !105, line: 652, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!44, !171, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !172, file: !173, line: 92, baseType: !457, size: 64, offset: 8960)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !105, line: 656, baseType: !168)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !164, file: !12, line: 153, baseType: !51, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !150, file: !12, line: 156, baseType: !46, size: 32, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !150, file: !12, line: 157, baseType: !124, size: 16, offset: 416)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !150, file: !12, line: 158, baseType: !59, size: 8, offset: 432)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !52, file: !12, line: 377, baseType: !463, size: 576)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !12, line: 122, size: 576, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !463, file: !12, line: 123, baseType: !51, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !463, file: !12, line: 123, baseType: !59, size: 8, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !463, file: !12, line: 123, baseType: !59, size: 8, offset: 72)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !463, file: !12, line: 123, baseType: !48, size: 16, offset: 80)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !12, line: 123, baseType: !59, size: 8, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !463, file: !12, line: 123, baseType: !59, size: 8, offset: 104)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !463, file: !12, line: 124, baseType: !48, size: 16, offset: 112)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !463, file: !12, line: 125, baseType: !148, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !463, file: !12, line: 126, baseType: !39, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !463, file: !12, line: 127, baseType: !449, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !463, file: !12, line: 128, baseType: !51, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !463, file: !12, line: 129, baseType: !51, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !463, file: !12, line: 130, baseType: !103, size: 64, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !463, file: !12, line: 131, baseType: !59, size: 8, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !52, file: !12, line: 378, baseType: !480, size: 512)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !12, line: 134, size: 512, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !493, !494}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !480, file: !12, line: 135, baseType: !51, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !480, file: !12, line: 135, baseType: !59, size: 8, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !480, file: !12, line: 135, baseType: !59, size: 8, offset: 72)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !480, file: !12, line: 135, baseType: !48, size: 16, offset: 80)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !12, line: 135, baseType: !59, size: 8, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !480, file: !12, line: 135, baseType: !59, size: 8, offset: 104)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !480, file: !12, line: 136, baseType: !103, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !480, file: !12, line: 137, baseType: !51, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !480, file: !12, line: 138, baseType: !51, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !480, file: !12, line: 139, baseType: !492, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !45, line: 129, baseType: !39)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !480, file: !12, line: 140, baseType: !46, size: 32, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !480, file: !12, line: 141, baseType: !148, size: 64, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !52, file: !12, line: 379, baseType: !496, size: 320)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !12, line: 185, size: 320, elements: !497)
!497 = !{!498, !499, !500, !501, !502, !503, !507}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !496, file: !12, line: 186, baseType: !51, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !496, file: !12, line: 186, baseType: !59, size: 8, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !496, file: !12, line: 186, baseType: !59, size: 8, offset: 72)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !496, file: !12, line: 186, baseType: !48, size: 16, offset: 80)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !496, file: !12, line: 186, baseType: !59, size: 8, offset: 96)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !496, file: !12, line: 186, baseType: !504, size: 128, offset: 128)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 2)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !496, file: !12, line: 186, baseType: !51, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !52, file: !12, line: 380, baseType: !509, size: 384)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !12, line: 188, size: 384, elements: !510)
!510 = !{!511, !512, !513, !514, !515, !516, !517, !518}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !509, file: !12, line: 189, baseType: !51, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !509, file: !12, line: 189, baseType: !59, size: 8, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !509, file: !12, line: 189, baseType: !59, size: 8, offset: 72)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !509, file: !12, line: 189, baseType: !48, size: 16, offset: 80)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !509, file: !12, line: 189, baseType: !59, size: 8, offset: 96)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !509, file: !12, line: 190, baseType: !504, size: 128, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !509, file: !12, line: 190, baseType: !51, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !509, file: !12, line: 190, baseType: !519, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !105, line: 480, size: 576, elements: !521)
!521 = !{!522, !523, !524, !525, !533, !548, !580, !581, !582, !583, !584, !585}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !520, file: !105, line: 481, baseType: !103, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !520, file: !105, line: 482, baseType: !519, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !520, file: !105, line: 483, baseType: !519, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !520, file: !105, line: 484, baseType: !526, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !105, line: 497, size: 256, elements: !528)
!528 = !{!529, !530, !531, !532}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !527, file: !105, line: 498, baseType: !526, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !527, file: !105, line: 499, baseType: !526, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !527, file: !105, line: 500, baseType: !519, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !527, file: !105, line: 501, baseType: !46, size: 32, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !520, file: !105, line: 485, baseType: !534, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !105, line: 466, size: 320, elements: !536)
!536 = !{!537, !542, !543, !544, !545, !546, !547}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !535, file: !105, line: 467, baseType: !538, size: 128)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !105, line: 459, size: 128, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !538, file: !105, line: 460, baseType: !59, size: 8)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !538, file: !105, line: 461, baseType: !39, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !535, file: !105, line: 468, baseType: !538, size: 128, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !535, file: !105, line: 469, baseType: !48, size: 16, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !535, file: !105, line: 470, baseType: !59, size: 8, offset: 272)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !535, file: !105, line: 471, baseType: !59, size: 8, offset: 280)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !535, file: !105, line: 472, baseType: !59, size: 8, offset: 288)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !535, file: !105, line: 473, baseType: !59, size: 8, offset: 296)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !520, file: !105, line: 486, baseType: !549, size: 64, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !105, line: 448, size: 192, elements: !551)
!551 = !{!552, !575, !576, !577, !578, !579}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !550, file: !105, line: 449, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !105, line: 438, size: 64, elements: !554)
!554 = !{!555, !556, !569}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !553, file: !105, line: 439, baseType: !103, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !553, file: !105, line: 440, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !105, line: 419, size: 256, elements: !559)
!559 = !{!560, !565, !566, !567, !568}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !558, file: !105, line: 420, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !45, line: 1058, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!46, !400, !46, !148}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !558, file: !105, line: 421, baseType: !148, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !558, file: !105, line: 422, baseType: !103, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !558, file: !105, line: 423, baseType: !59, size: 8, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !558, file: !105, line: 424, baseType: !59, size: 8, offset: 200)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !553, file: !105, line: 441, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !105, line: 429, size: 128, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !571, file: !105, line: 430, baseType: !103, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !571, file: !105, line: 431, baseType: !570, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !550, file: !105, line: 450, baseType: !534, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !550, file: !105, line: 451, baseType: !59, size: 8, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !550, file: !105, line: 452, baseType: !59, size: 8, offset: 136)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !550, file: !105, line: 453, baseType: !59, size: 8, offset: 144)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !550, file: !105, line: 454, baseType: !59, size: 8, offset: 152)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !520, file: !105, line: 487, baseType: !39, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !520, file: !105, line: 488, baseType: !46, size: 32, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !520, file: !105, line: 489, baseType: !48, size: 16, offset: 480)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !520, file: !105, line: 490, baseType: !48, size: 16, offset: 496)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !520, file: !105, line: 491, baseType: !59, size: 8, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !520, file: !105, line: 492, baseType: !59, size: 8, offset: 520)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !52, file: !12, line: 381, baseType: !587, size: 384)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !12, line: 193, size: 384, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !587, file: !12, line: 194, baseType: !51, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !587, file: !12, line: 194, baseType: !59, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !12, line: 194, baseType: !59, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !587, file: !12, line: 194, baseType: !48, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !12, line: 194, baseType: !59, size: 8, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !587, file: !12, line: 194, baseType: !504, size: 128, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !587, file: !12, line: 194, baseType: !51, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !587, file: !12, line: 194, baseType: !46, size: 32, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !587, file: !12, line: 195, baseType: !46, size: 32, offset: 352)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !52, file: !12, line: 382, baseType: !599, size: 384)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !12, line: 198, size: 384, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !599, file: !12, line: 199, baseType: !51, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !12, line: 199, baseType: !59, size: 8, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !12, line: 199, baseType: !59, size: 8, offset: 72)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !599, file: !12, line: 199, baseType: !48, size: 16, offset: 80)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !12, line: 199, baseType: !59, size: 8, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !599, file: !12, line: 201, baseType: !59, size: 8, offset: 104)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !599, file: !12, line: 202, baseType: !59, size: 8, offset: 112)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !599, file: !12, line: 203, baseType: !504, size: 128, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !599, file: !12, line: 203, baseType: !51, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !599, file: !12, line: 203, baseType: !611, size: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !45, line: 128, baseType: !39)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !52, file: !12, line: 383, baseType: !613, size: 320)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !12, line: 206, size: 320, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !613, file: !12, line: 207, baseType: !51, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !613, file: !12, line: 207, baseType: !59, size: 8, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !613, file: !12, line: 207, baseType: !59, size: 8, offset: 72)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !613, file: !12, line: 207, baseType: !48, size: 16, offset: 80)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !12, line: 207, baseType: !59, size: 8, offset: 96)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !613, file: !12, line: 207, baseType: !504, size: 128, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !613, file: !12, line: 207, baseType: !51, size: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !52, file: !12, line: 384, baseType: !623, size: 384)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !12, line: 234, size: 384, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !623, file: !12, line: 235, baseType: !51, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !623, file: !12, line: 235, baseType: !59, size: 8, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !623, file: !12, line: 235, baseType: !59, size: 8, offset: 72)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !623, file: !12, line: 235, baseType: !48, size: 16, offset: 80)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !12, line: 235, baseType: !59, size: 8, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !623, file: !12, line: 235, baseType: !59, size: 8, offset: 104)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !623, file: !12, line: 235, baseType: !59, size: 8, offset: 112)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !623, file: !12, line: 235, baseType: !59, size: 8, offset: 120)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !623, file: !12, line: 235, baseType: !103, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !623, file: !12, line: 235, baseType: !46, size: 32, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !623, file: !12, line: 235, baseType: !46, size: 32, offset: 224)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !623, file: !12, line: 235, baseType: !46, size: 32, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !623, file: !12, line: 235, baseType: !59, size: 8, offset: 288)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !623, file: !12, line: 235, baseType: !59, size: 8, offset: 296)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !623, file: !12, line: 235, baseType: !51, size: 64, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !52, file: !12, line: 385, baseType: !641, size: 576)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !12, line: 238, size: 576, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !641, file: !12, line: 239, baseType: !51, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !641, file: !12, line: 239, baseType: !59, size: 8, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !641, file: !12, line: 239, baseType: !59, size: 8, offset: 72)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !641, file: !12, line: 239, baseType: !48, size: 16, offset: 80)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !641, file: !12, line: 239, baseType: !59, size: 8, offset: 96)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !641, file: !12, line: 239, baseType: !59, size: 8, offset: 104)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !641, file: !12, line: 239, baseType: !59, size: 8, offset: 112)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !641, file: !12, line: 239, baseType: !59, size: 8, offset: 120)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !641, file: !12, line: 239, baseType: !103, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !641, file: !12, line: 239, baseType: !46, size: 32, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !641, file: !12, line: 239, baseType: !46, size: 32, offset: 224)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !641, file: !12, line: 239, baseType: !46, size: 32, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !641, file: !12, line: 239, baseType: !59, size: 8, offset: 288)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !641, file: !12, line: 239, baseType: !59, size: 8, offset: 296)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !641, file: !12, line: 239, baseType: !48, size: 16, offset: 304)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !641, file: !12, line: 240, baseType: !51, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !641, file: !12, line: 241, baseType: !98, size: 64, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !641, file: !12, line: 242, baseType: !48, size: 16, offset: 448)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !641, file: !12, line: 243, baseType: !98, size: 64, offset: 512)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !52, file: !12, line: 386, baseType: !663, size: 384)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !12, line: 263, size: 384, elements: !664)
!664 = !{!665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !663, file: !12, line: 264, baseType: !51, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !663, file: !12, line: 264, baseType: !59, size: 8, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !663, file: !12, line: 264, baseType: !59, size: 8, offset: 72)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !663, file: !12, line: 264, baseType: !48, size: 16, offset: 80)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !663, file: !12, line: 264, baseType: !59, size: 8, offset: 96)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !663, file: !12, line: 264, baseType: !59, size: 8, offset: 104)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !663, file: !12, line: 264, baseType: !59, size: 8, offset: 112)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !663, file: !12, line: 264, baseType: !59, size: 8, offset: 120)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !663, file: !12, line: 264, baseType: !103, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !663, file: !12, line: 264, baseType: !46, size: 32, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !663, file: !12, line: 264, baseType: !46, size: 32, offset: 224)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !663, file: !12, line: 264, baseType: !46, size: 32, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !663, file: !12, line: 264, baseType: !59, size: 8, offset: 288)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !663, file: !12, line: 264, baseType: !59, size: 8, offset: 296)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !663, file: !12, line: 264, baseType: !59, size: 8, offset: 304)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !663, file: !12, line: 265, baseType: !51, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !52, file: !12, line: 387, baseType: !682, size: 448)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !12, line: 246, size: 448, elements: !683)
!683 = !{!684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !682, file: !12, line: 247, baseType: !51, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !682, file: !12, line: 247, baseType: !59, size: 8, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !682, file: !12, line: 247, baseType: !59, size: 8, offset: 72)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !682, file: !12, line: 247, baseType: !48, size: 16, offset: 80)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !682, file: !12, line: 247, baseType: !59, size: 8, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !682, file: !12, line: 247, baseType: !59, size: 8, offset: 104)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !682, file: !12, line: 247, baseType: !59, size: 8, offset: 112)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !682, file: !12, line: 247, baseType: !59, size: 8, offset: 120)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !682, file: !12, line: 247, baseType: !103, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !682, file: !12, line: 247, baseType: !46, size: 32, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !682, file: !12, line: 247, baseType: !46, size: 32, offset: 224)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !682, file: !12, line: 247, baseType: !46, size: 32, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !682, file: !12, line: 247, baseType: !59, size: 8, offset: 288)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !682, file: !12, line: 247, baseType: !59, size: 8, offset: 296)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !682, file: !12, line: 247, baseType: !51, size: 64, offset: 320)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !682, file: !12, line: 248, baseType: !51, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !52, file: !12, line: 388, baseType: !701, size: 448)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !12, line: 251, size: 448, elements: !702)
!702 = !{!703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !701, file: !12, line: 252, baseType: !51, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !701, file: !12, line: 252, baseType: !59, size: 8, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !701, file: !12, line: 252, baseType: !59, size: 8, offset: 72)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !701, file: !12, line: 252, baseType: !48, size: 16, offset: 80)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !701, file: !12, line: 252, baseType: !59, size: 8, offset: 96)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !701, file: !12, line: 252, baseType: !59, size: 8, offset: 104)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !701, file: !12, line: 252, baseType: !59, size: 8, offset: 112)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !701, file: !12, line: 252, baseType: !59, size: 8, offset: 120)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !701, file: !12, line: 252, baseType: !103, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !701, file: !12, line: 252, baseType: !46, size: 32, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !701, file: !12, line: 252, baseType: !46, size: 32, offset: 224)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !701, file: !12, line: 252, baseType: !46, size: 32, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !701, file: !12, line: 252, baseType: !59, size: 8, offset: 288)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !701, file: !12, line: 252, baseType: !59, size: 8, offset: 296)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !701, file: !12, line: 257, baseType: !51, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !701, file: !12, line: 258, baseType: !51, size: 64, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !52, file: !12, line: 389, baseType: !720, size: 512)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !12, line: 274, size: 512, elements: !721)
!721 = !{!722, !723, !724, !725, !726, !727, !728, !729, !730, !731}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !720, file: !12, line: 275, baseType: !51, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !720, file: !12, line: 275, baseType: !59, size: 8, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !720, file: !12, line: 275, baseType: !59, size: 8, offset: 72)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !720, file: !12, line: 275, baseType: !48, size: 16, offset: 80)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !720, file: !12, line: 275, baseType: !59, size: 8, offset: 96)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !720, file: !12, line: 275, baseType: !103, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !720, file: !12, line: 276, baseType: !46, size: 32, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !720, file: !12, line: 277, baseType: !396, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !720, file: !12, line: 278, baseType: !148, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !720, file: !12, line: 279, baseType: !504, size: 128, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !52, file: !12, line: 390, baseType: !733, size: 576)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !12, line: 282, size: 576, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !748, !749, !750, !751, !757, !758}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !733, file: !12, line: 283, baseType: !51, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !733, file: !12, line: 283, baseType: !59, size: 8, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !733, file: !12, line: 283, baseType: !59, size: 8, offset: 72)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !733, file: !12, line: 283, baseType: !48, size: 16, offset: 80)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !12, line: 283, baseType: !59, size: 8, offset: 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !733, file: !12, line: 283, baseType: !59, size: 8, offset: 104)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !733, file: !12, line: 284, baseType: !59, size: 8, offset: 112)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !733, file: !12, line: 285, baseType: !743, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !45, line: 1093, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!44, !46, !492, !46, !747, !148, !148}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !733, file: !12, line: 286, baseType: !103, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !733, file: !12, line: 287, baseType: !148, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !733, file: !12, line: 288, baseType: !148, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !733, file: !12, line: 289, baseType: !752, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !45, line: 1126, baseType: !753)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!44, !400, !46, !148, !756}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !733, file: !12, line: 290, baseType: !51, size: 64, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !733, file: !12, line: 291, baseType: !51, size: 64, offset: 512)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !52, file: !12, line: 391, baseType: !760, size: 512)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !12, line: 309, size: 512, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !760, file: !12, line: 310, baseType: !51, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !760, file: !12, line: 310, baseType: !59, size: 8, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !12, line: 310, baseType: !59, size: 8, offset: 72)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !760, file: !12, line: 310, baseType: !48, size: 16, offset: 80)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !12, line: 310, baseType: !59, size: 8, offset: 96)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !760, file: !12, line: 310, baseType: !59, size: 8, offset: 104)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !760, file: !12, line: 311, baseType: !59, size: 8, offset: 112)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !760, file: !12, line: 312, baseType: !59, size: 8, offset: 120)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !760, file: !12, line: 313, baseType: !148, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !760, file: !12, line: 314, baseType: !103, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !760, file: !12, line: 315, baseType: !135, size: 64, offset: 256)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !760, file: !12, line: 316, baseType: !98, size: 64, offset: 320)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !760, file: !12, line: 317, baseType: !98, size: 64, offset: 384)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !760, file: !12, line: 318, baseType: !46, size: 32, offset: 448)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !52, file: !12, line: 392, baseType: !777, size: 448)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !12, line: 342, size: 448, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !784, !785, !786, !787, !788}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !777, file: !12, line: 343, baseType: !51, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !777, file: !12, line: 343, baseType: !59, size: 8, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !777, file: !12, line: 343, baseType: !59, size: 8, offset: 72)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !777, file: !12, line: 343, baseType: !48, size: 16, offset: 80)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !12, line: 343, baseType: !59, size: 8, offset: 96)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !777, file: !12, line: 343, baseType: !103, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !777, file: !12, line: 344, baseType: !103, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !777, file: !12, line: 345, baseType: !148, size: 64, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !777, file: !12, line: 346, baseType: !98, size: 64, offset: 320)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !777, file: !12, line: 347, baseType: !46, size: 32, offset: 384)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !52, file: !12, line: 393, baseType: !790, size: 256)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !12, line: 352, size: 256, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !802}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !790, file: !12, line: 353, baseType: !51, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !790, file: !12, line: 353, baseType: !59, size: 8, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !790, file: !12, line: 353, baseType: !59, size: 8, offset: 72)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !790, file: !12, line: 353, baseType: !48, size: 16, offset: 80)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !12, line: 353, baseType: !59, size: 8, offset: 96)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !790, file: !12, line: 353, baseType: !798, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !45, line: 1064, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !400, !148}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !790, file: !12, line: 354, baseType: !148, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !52, file: !12, line: 394, baseType: !804, size: 192)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !12, line: 359, size: 192, elements: !805)
!805 = !{!806, !807, !808, !809, !810, !811}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !804, file: !12, line: 360, baseType: !51, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !804, file: !12, line: 360, baseType: !59, size: 8, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !804, file: !12, line: 360, baseType: !59, size: 8, offset: 72)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !804, file: !12, line: 360, baseType: !48, size: 16, offset: 80)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !804, file: !12, line: 360, baseType: !59, size: 8, offset: 96)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !804, file: !12, line: 360, baseType: !51, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !52, file: !12, line: 401, baseType: !104, size: 384)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !814, line: 42, baseType: !815)
!814 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!815 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !45, line: 814, baseType: !59)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !45, line: 127, baseType: !39)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !113, line: 68, size: 288, elements: !820)
!820 = !{!821, !822, !823, !824, !825, !829, !831, !832, !833}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !819, file: !113, line: 69, baseType: !117, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !819, file: !113, line: 70, baseType: !46, size: 32, offset: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !819, file: !113, line: 71, baseType: !59, size: 8, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !819, file: !113, line: 72, baseType: !59, size: 8, offset: 72)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !819, file: !113, line: 73, baseType: !826, size: 48, offset: 80)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !827)
!827 = !{!828}
!828 = !DISubrange(count: 6)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !819, file: !113, line: 74, baseType: !830, size: 64, offset: 128)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !378)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !819, file: !113, line: 75, baseType: !46, size: 32, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !819, file: !113, line: 76, baseType: !117, size: 32, offset: 224)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !819, file: !113, line: 77, baseType: !46, size: 32, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !12, line: 434, size: 1600, elements: !836)
!836 = !{!837, !842, !843, !844}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !835, file: !12, line: 435, baseType: !838, size: 128)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !12, line: 429, size: 128, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !838, file: !12, line: 430, baseType: !148, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !838, file: !12, line: 431, baseType: !59, size: 8, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !835, file: !12, line: 436, baseType: !52, size: 576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !835, file: !12, line: 437, baseType: !104, size: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !835, file: !12, line: 438, baseType: !206, size: 1600)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !814, line: 154, baseType: !13)
!846 = !{!0, !847, !852, !857, !7, !862}
!847 = !DIGlobalVariableExpression(var: !848, expr: !DIExpression())
!848 = distinct !DIGlobalVariable(scope: null, file: !2, line: 298, type: !849, isLocal: true, isDefinition: true)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !850)
!850 = !{!851}
!851 = !DISubrange(count: 21)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(scope: null, file: !2, line: 501, type: !854, isLocal: true, isDefinition: true)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !855)
!855 = !{!856}
!856 = !DISubrange(count: 41)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(scope: null, file: !2, line: 511, type: !859, isLocal: true, isDefinition: true)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !860)
!860 = !{!861}
!861 = !DISubrange(count: 37)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(scope: null, file: !29, line: 480, type: !849, isLocal: true, isDefinition: true)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 72, elements: !416)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!866 = !{i32 7, !"Dwarf Version", i32 5}
!867 = !{i32 2, !"Debug Info Version", i32 3}
!868 = !{i32 1, !"wchar_size", i32 2}
!869 = !{i32 8, !"cf-protection-branch", i32 1}
!870 = !{i32 4, !"function_return_thunk_extern", i32 1}
!871 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!872 = !{i32 1, !"Code Model", i32 2}
!873 = !{i32 1, !"override-stack-alignment", i32 8}
!874 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!875 = distinct !DISubprogram(name: "acpi_ex_load_table_op", scope: !2, file: !2, line: 82, type: !876, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !878)
!876 = !DISubroutineType(types: !877)
!877 = !{!44, !171, !135}
!878 = !{!879, !880, !881, !882, !883, !884, !885, !886, !887, !888}
!879 = !DILocalVariable(name: "walk_state", arg: 1, scope: !875, file: !2, line: 82, type: !171)
!880 = !DILocalVariable(name: "return_desc", arg: 2, scope: !875, file: !2, line: 83, type: !135)
!881 = !DILocalVariable(name: "status", scope: !875, file: !2, line: 85, type: !44)
!882 = !DILocalVariable(name: "operand", scope: !875, file: !2, line: 86, type: !135)
!883 = !DILocalVariable(name: "parent_node", scope: !875, file: !2, line: 87, type: !103)
!884 = !DILocalVariable(name: "start_node", scope: !875, file: !2, line: 88, type: !103)
!885 = !DILocalVariable(name: "parameter_node", scope: !875, file: !2, line: 89, type: !103)
!886 = !DILocalVariable(name: "return_obj", scope: !875, file: !2, line: 90, type: !51)
!887 = !DILocalVariable(name: "ddb_handle", scope: !875, file: !2, line: 91, type: !51)
!888 = !DILocalVariable(name: "table_index", scope: !875, file: !2, line: 92, type: !46)
!889 = !DILocation(line: 82, column: 47, scope: !875)
!890 = !DILocation(line: 83, column: 37, scope: !875)
!891 = !DILocation(line: 85, column: 2, scope: !875)
!892 = !DILocation(line: 85, column: 14, scope: !875)
!893 = !DILocation(line: 86, column: 2, scope: !875)
!894 = !DILocation(line: 86, column: 30, scope: !875)
!895 = !DILocation(line: 86, column: 41, scope: !875)
!896 = !DILocation(line: 86, column: 53, scope: !875)
!897 = !DILocation(line: 87, column: 2, scope: !875)
!898 = !DILocation(line: 87, column: 30, scope: !875)
!899 = !DILocation(line: 88, column: 2, scope: !875)
!900 = !DILocation(line: 88, column: 30, scope: !875)
!901 = !DILocation(line: 89, column: 2, scope: !875)
!902 = !DILocation(line: 89, column: 30, scope: !875)
!903 = !DILocation(line: 90, column: 2, scope: !875)
!904 = !DILocation(line: 90, column: 29, scope: !875)
!905 = !DILocation(line: 91, column: 2, scope: !875)
!906 = !DILocation(line: 91, column: 29, scope: !875)
!907 = !DILocation(line: 92, column: 2, scope: !875)
!908 = !DILocation(line: 92, column: 6, scope: !875)
!909 = !DILocation(line: 98, column: 15, scope: !875)
!910 = !DILocation(line: 98, column: 13, scope: !875)
!911 = !DILocation(line: 99, column: 7, scope: !912)
!912 = distinct !DILexicalBlock(scope: !875, file: !2, line: 99, column: 6)
!913 = !DILocation(line: 99, column: 6, scope: !875)
!914 = !DILocation(line: 100, column: 3, scope: !915)
!915 = distinct !DILexicalBlock(scope: !912, file: !2, line: 99, column: 19)
!916 = !DILocation(line: 103, column: 17, scope: !875)
!917 = !DILocation(line: 103, column: 3, scope: !875)
!918 = !DILocation(line: 103, column: 15, scope: !875)
!919 = !DILocation(line: 107, column: 2, scope: !875)
!920 = !DILocation(line: 108, column: 30, scope: !875)
!921 = !DILocation(line: 108, column: 49, scope: !875)
!922 = !DILocation(line: 109, column: 9, scope: !875)
!923 = !DILocation(line: 109, column: 28, scope: !875)
!924 = !DILocation(line: 110, column: 9, scope: !875)
!925 = !DILocation(line: 110, column: 28, scope: !875)
!926 = !DILocation(line: 108, column: 11, scope: !875)
!927 = !DILocation(line: 108, column: 9, scope: !875)
!928 = !DILocation(line: 111, column: 2, scope: !875)
!929 = !DILocation(line: 112, column: 6, scope: !930)
!930 = distinct !DILexicalBlock(scope: !875, file: !2, line: 112, column: 6)
!931 = !DILocation(line: 112, column: 6, scope: !875)
!932 = !DILocation(line: 113, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !2, line: 113, column: 7)
!934 = distinct !DILexicalBlock(scope: !930, file: !2, line: 112, column: 28)
!935 = !DILocation(line: 113, column: 14, scope: !933)
!936 = !DILocation(line: 113, column: 7, scope: !934)
!937 = !DILocation(line: 114, column: 4, scope: !938)
!938 = distinct !DILexicalBlock(scope: !933, file: !2, line: 113, column: 31)
!939 = !DILocation(line: 119, column: 3, scope: !934)
!940 = !DILocation(line: 124, column: 15, scope: !875)
!941 = !DILocation(line: 124, column: 27, scope: !875)
!942 = !DILocation(line: 124, column: 45, scope: !875)
!943 = !DILocation(line: 124, column: 13, scope: !875)
!944 = !DILocation(line: 125, column: 16, scope: !875)
!945 = !DILocation(line: 125, column: 14, scope: !875)
!946 = !DILocation(line: 129, column: 6, scope: !947)
!947 = distinct !DILexicalBlock(scope: !875, file: !2, line: 129, column: 6)
!948 = !DILocation(line: 129, column: 25, scope: !947)
!949 = !DILocation(line: 129, column: 32, scope: !947)
!950 = !DILocation(line: 129, column: 6, scope: !875)
!951 = !DILocation(line: 134, column: 38, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !2, line: 129, column: 37)
!953 = !DILocation(line: 135, column: 10, scope: !952)
!954 = !DILocation(line: 135, column: 29, scope: !952)
!955 = !DILocation(line: 134, column: 12, scope: !952)
!956 = !DILocation(line: 134, column: 10, scope: !952)
!957 = !DILocation(line: 138, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !952, file: !2, line: 138, column: 7)
!959 = !DILocation(line: 138, column: 7, scope: !952)
!960 = !DILocation(line: 139, column: 4, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !2, line: 138, column: 29)
!962 = !DILocation(line: 141, column: 2, scope: !952)
!963 = !DILocation(line: 145, column: 6, scope: !964)
!964 = distinct !DILexicalBlock(scope: !875, file: !2, line: 145, column: 6)
!965 = !DILocation(line: 145, column: 25, scope: !964)
!966 = !DILocation(line: 145, column: 32, scope: !964)
!967 = !DILocation(line: 145, column: 6, scope: !875)
!968 = !DILocation(line: 146, column: 8, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !2, line: 146, column: 7)
!970 = distinct !DILexicalBlock(scope: !964, file: !2, line: 145, column: 37)
!971 = !DILocation(line: 146, column: 27, scope: !969)
!972 = !DILocation(line: 146, column: 38, scope: !969)
!973 = !DILocation(line: 146, column: 58, scope: !969)
!974 = !DILocation(line: 147, column: 8, scope: !969)
!975 = !DILocation(line: 147, column: 27, scope: !969)
!976 = !DILocation(line: 147, column: 38, scope: !969)
!977 = !DILocation(line: 146, column: 7, scope: !970)
!978 = !DILocation(line: 152, column: 17, scope: !979)
!979 = distinct !DILexicalBlock(scope: !969, file: !2, line: 147, column: 61)
!980 = !DILocation(line: 152, column: 15, scope: !979)
!981 = !DILocation(line: 153, column: 3, scope: !979)
!982 = !DILocation(line: 157, column: 38, scope: !970)
!983 = !DILocation(line: 158, column: 10, scope: !970)
!984 = !DILocation(line: 158, column: 29, scope: !970)
!985 = !DILocation(line: 157, column: 12, scope: !970)
!986 = !DILocation(line: 157, column: 10, scope: !970)
!987 = !DILocation(line: 161, column: 7, scope: !988)
!988 = distinct !DILexicalBlock(scope: !970, file: !2, line: 161, column: 7)
!989 = !DILocation(line: 161, column: 7, scope: !970)
!990 = !DILocation(line: 162, column: 4, scope: !991)
!991 = distinct !DILexicalBlock(scope: !988, file: !2, line: 161, column: 29)
!992 = !DILocation(line: 164, column: 2, scope: !970)
!993 = !DILocation(line: 168, column: 2, scope: !875)
!994 = !DILocation(line: 169, column: 2, scope: !875)
!995 = !DILocation(line: 170, column: 30, scope: !875)
!996 = !DILocation(line: 170, column: 43, scope: !875)
!997 = !DILocation(line: 170, column: 11, scope: !875)
!998 = !DILocation(line: 170, column: 9, scope: !875)
!999 = !DILocation(line: 171, column: 2, scope: !875)
!1000 = !DILocation(line: 172, column: 6, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !875, file: !2, line: 172, column: 6)
!1002 = !DILocation(line: 172, column: 6, scope: !875)
!1003 = !DILocation(line: 173, column: 3, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 172, column: 28)
!1005 = !DILocation(line: 176, column: 29, scope: !875)
!1006 = !DILocation(line: 176, column: 11, scope: !875)
!1007 = !DILocation(line: 176, column: 9, scope: !875)
!1008 = !DILocation(line: 177, column: 6, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !875, file: !2, line: 177, column: 6)
!1010 = !DILocation(line: 177, column: 6, scope: !875)
!1011 = !DILocation(line: 178, column: 3, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 177, column: 28)
!1013 = !DILocation(line: 183, column: 2, scope: !875)
!1014 = !DILocation(line: 184, column: 2, scope: !875)
!1015 = !DILocation(line: 185, column: 2, scope: !875)
!1016 = !DILocation(line: 189, column: 6, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !875, file: !2, line: 189, column: 6)
!1018 = !DILocation(line: 189, column: 6, scope: !875)
!1019 = !DILocation(line: 193, column: 26, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 189, column: 22)
!1021 = !DILocation(line: 194, column: 12, scope: !1020)
!1022 = !DILocation(line: 196, column: 12, scope: !1020)
!1023 = !DILocation(line: 193, column: 12, scope: !1020)
!1024 = !DILocation(line: 193, column: 10, scope: !1020)
!1025 = !DILocation(line: 197, column: 7, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 197, column: 7)
!1027 = !DILocation(line: 197, column: 7, scope: !1020)
!1028 = !DILocation(line: 198, column: 31, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 197, column: 29)
!1030 = !DILocation(line: 198, column: 10, scope: !1029)
!1031 = !DILocation(line: 200, column: 29, scope: !1029)
!1032 = !DILocation(line: 200, column: 4, scope: !1029)
!1033 = !DILocation(line: 201, column: 4, scope: !1029)
!1034 = !DILocation(line: 203, column: 2, scope: !1020)
!1035 = !DILocation(line: 207, column: 27, scope: !875)
!1036 = !DILocation(line: 207, column: 2, scope: !875)
!1037 = !DILocation(line: 211, column: 2, scope: !875)
!1038 = !DILocation(line: 211, column: 22, scope: !875)
!1039 = !DILocation(line: 211, column: 28, scope: !875)
!1040 = !DILocation(line: 212, column: 2, scope: !875)
!1041 = !DILocation(line: 213, column: 1, scope: !875)
!1042 = !DISubprogram(name: "acpi_ut_create_integer_object", scope: !1043, file: !1043, line: 455, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1043 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!51, !39}
!1046 = !DISubprogram(name: "acpi_ex_exit_interpreter", scope: !1047, file: !1047, line: 466, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null}
!1050 = !DISubprogram(name: "acpi_tb_find_table", scope: !1051, file: !1051, line: 64, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1051 = !DIFile(filename: "drivers/acpi/acpica/actables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb0787ba059aac7511e633019dab5fb8")
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!44, !87, !87, !87, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1055 = !DISubprogram(name: "acpi_ex_enter_interpreter", scope: !1047, file: !1047, line: 464, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = !DISubprogram(name: "acpi_ns_get_node_unlocked", scope: !1057, file: !1057, line: 280, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1057 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!44, !103, !1060, !46, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1062 = !DISubprogram(name: "acpi_info", scope: !1063, file: !1063, line: 917, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !1060, null}
!1066 = !DISubprogram(name: "acpi_tb_load_table", scope: !1051, file: !1051, line: 96, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!44, !46, !103}
!1069 = distinct !DISubprogram(name: "acpi_ex_add_table", scope: !2, file: !2, line: 46, type: !1070, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1072)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!44, !46, !135}
!1072 = !{!1073, !1074, !1075}
!1073 = !DILocalVariable(name: "table_index", arg: 1, scope: !1069, file: !2, line: 46, type: !46)
!1074 = !DILocalVariable(name: "ddb_handle", arg: 2, scope: !1069, file: !2, line: 46, type: !135)
!1075 = !DILocalVariable(name: "obj_desc", scope: !1069, file: !2, line: 48, type: !51)
!1076 = !DILocation(line: 46, column: 23, scope: !1069)
!1077 = !DILocation(line: 46, column: 64, scope: !1069)
!1078 = !DILocation(line: 48, column: 2, scope: !1069)
!1079 = !DILocation(line: 48, column: 29, scope: !1069)
!1080 = !DILocation(line: 54, column: 13, scope: !1069)
!1081 = !DILocation(line: 54, column: 11, scope: !1069)
!1082 = !DILocation(line: 55, column: 7, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 55, column: 6)
!1084 = !DILocation(line: 55, column: 6, scope: !1069)
!1085 = !DILocation(line: 56, column: 3, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 55, column: 17)
!1087 = !DILocation(line: 61, column: 2, scope: !1069)
!1088 = !DILocation(line: 61, column: 19, scope: !1069)
!1089 = !DILocation(line: 61, column: 25, scope: !1069)
!1090 = !DILocation(line: 62, column: 2, scope: !1069)
!1091 = !DILocation(line: 62, column: 22, scope: !1069)
!1092 = !DILocation(line: 62, column: 28, scope: !1069)
!1093 = !DILocation(line: 63, column: 30, scope: !1069)
!1094 = !DILocation(line: 63, column: 2, scope: !1069)
!1095 = !DILocation(line: 63, column: 22, scope: !1069)
!1096 = !DILocation(line: 63, column: 28, scope: !1069)
!1097 = !DILocation(line: 64, column: 16, scope: !1069)
!1098 = !DILocation(line: 64, column: 3, scope: !1069)
!1099 = !DILocation(line: 64, column: 14, scope: !1069)
!1100 = !DILocation(line: 65, column: 2, scope: !1069)
!1101 = !DILocation(line: 66, column: 1, scope: !1069)
!1102 = !DISubprogram(name: "acpi_ns_initialize_objects", scope: !1057, file: !1057, line: 57, type: !1103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!44}
!1105 = !DISubprogram(name: "acpi_ex_store", scope: !1047, file: !1047, line: 407, type: !1106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!44, !51, !51, !171}
!1108 = distinct !DISubprogram(name: "acpi_ex_unload_table", scope: !2, file: !2, line: 488, type: !1109, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1111)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!44, !51}
!1111 = !{!1112, !1113, !1114, !1115}
!1112 = !DILocalVariable(name: "ddb_handle", arg: 1, scope: !1108, file: !2, line: 488, type: !51)
!1113 = !DILocalVariable(name: "status", scope: !1108, file: !2, line: 490, type: !44)
!1114 = !DILocalVariable(name: "table_desc", scope: !1108, file: !2, line: 491, type: !51)
!1115 = !DILocalVariable(name: "table_index", scope: !1108, file: !2, line: 492, type: !46)
!1116 = !DILocation(line: 488, column: 61, scope: !1108)
!1117 = !DILocation(line: 490, column: 2, scope: !1108)
!1118 = !DILocation(line: 490, column: 14, scope: !1108)
!1119 = !DILocation(line: 491, column: 2, scope: !1108)
!1120 = !DILocation(line: 491, column: 29, scope: !1108)
!1121 = !DILocation(line: 491, column: 42, scope: !1108)
!1122 = !DILocation(line: 492, column: 2, scope: !1108)
!1123 = !DILocation(line: 492, column: 6, scope: !1108)
!1124 = !DILocation(line: 501, column: 2, scope: !1108)
!1125 = !DILocation(line: 511, column: 2, scope: !1108)
!1126 = !DILocation(line: 524, column: 8, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 524, column: 6)
!1128 = !DILocation(line: 524, column: 20, scope: !1127)
!1129 = !DILocation(line: 525, column: 7, scope: !1127)
!1130 = !DILocation(line: 525, column: 44, scope: !1127)
!1131 = !DILocation(line: 525, column: 71, scope: !1127)
!1132 = !DILocation(line: 526, column: 7, scope: !1127)
!1133 = !DILocation(line: 526, column: 26, scope: !1127)
!1134 = !DILocation(line: 526, column: 31, scope: !1127)
!1135 = !DILocation(line: 526, column: 61, scope: !1127)
!1136 = !DILocation(line: 527, column: 9, scope: !1127)
!1137 = !DILocation(line: 527, column: 28, scope: !1127)
!1138 = !DILocation(line: 527, column: 34, scope: !1127)
!1139 = !DILocation(line: 524, column: 6, scope: !1108)
!1140 = !DILocation(line: 528, column: 3, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 527, column: 57)
!1142 = !DILocation(line: 533, column: 16, scope: !1108)
!1143 = !DILocation(line: 533, column: 38, scope: !1108)
!1144 = !DILocation(line: 533, column: 14, scope: !1108)
!1145 = !DILocation(line: 539, column: 2, scope: !1108)
!1146 = !DILocation(line: 540, column: 32, scope: !1108)
!1147 = !DILocation(line: 540, column: 11, scope: !1108)
!1148 = !DILocation(line: 540, column: 9, scope: !1108)
!1149 = !DILocation(line: 541, column: 2, scope: !1108)
!1150 = !DILocation(line: 547, column: 6, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 547, column: 6)
!1152 = !DILocation(line: 547, column: 6, scope: !1108)
!1153 = !DILocation(line: 548, column: 3, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 547, column: 28)
!1155 = !DILocation(line: 548, column: 22, scope: !1154)
!1156 = !DILocation(line: 548, column: 28, scope: !1154)
!1157 = !DILocation(line: 549, column: 2, scope: !1154)
!1158 = !DILocation(line: 550, column: 2, scope: !1108)
!1159 = !DILocation(line: 551, column: 1, scope: !1108)
!1160 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1043, file: !1043, line: 369, type: !1161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !51}
!1163 = distinct !DISubprogram(name: "acpi_ex_load_op", scope: !2, file: !2, line: 278, type: !1106, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173}
!1165 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1163, file: !2, line: 278, type: !51)
!1166 = !DILocalVariable(name: "target", arg: 2, scope: !1163, file: !2, line: 279, type: !51)
!1167 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1163, file: !2, line: 280, type: !171)
!1168 = !DILocalVariable(name: "ddb_handle", scope: !1163, file: !2, line: 282, type: !51)
!1169 = !DILocalVariable(name: "table_header", scope: !1163, file: !2, line: 283, type: !818)
!1170 = !DILocalVariable(name: "table", scope: !1163, file: !2, line: 284, type: !818)
!1171 = !DILocalVariable(name: "table_index", scope: !1163, file: !2, line: 285, type: !46)
!1172 = !DILocalVariable(name: "status", scope: !1163, file: !2, line: 286, type: !44)
!1173 = !DILocalVariable(name: "length", scope: !1163, file: !2, line: 287, type: !46)
!1174 = !DILocation(line: 278, column: 44, scope: !1163)
!1175 = !DILocation(line: 279, column: 30, scope: !1163)
!1176 = !DILocation(line: 280, column: 27, scope: !1163)
!1177 = !DILocation(line: 282, column: 2, scope: !1163)
!1178 = !DILocation(line: 282, column: 29, scope: !1163)
!1179 = !DILocation(line: 283, column: 2, scope: !1163)
!1180 = !DILocation(line: 283, column: 28, scope: !1163)
!1181 = !DILocation(line: 284, column: 2, scope: !1163)
!1182 = !DILocation(line: 284, column: 28, scope: !1163)
!1183 = !DILocation(line: 285, column: 2, scope: !1163)
!1184 = !DILocation(line: 285, column: 6, scope: !1163)
!1185 = !DILocation(line: 286, column: 2, scope: !1163)
!1186 = !DILocation(line: 286, column: 14, scope: !1163)
!1187 = !DILocation(line: 287, column: 2, scope: !1163)
!1188 = !DILocation(line: 287, column: 6, scope: !1163)
!1189 = !DILocation(line: 291, column: 6, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 291, column: 6)
!1191 = !DILocation(line: 291, column: 21, scope: !1190)
!1192 = !DILocation(line: 291, column: 37, scope: !1190)
!1193 = !DILocation(line: 291, column: 6, scope: !1163)
!1194 = !DILocation(line: 293, column: 35, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 291, column: 62)
!1196 = !DILocation(line: 293, column: 7, scope: !1195)
!1197 = !DILocation(line: 292, column: 10, scope: !1195)
!1198 = !DILocation(line: 296, column: 2, scope: !1195)
!1199 = !DILocation(line: 297, column: 6, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 297, column: 6)
!1201 = !DILocation(line: 297, column: 21, scope: !1200)
!1202 = !DILocation(line: 297, column: 26, scope: !1200)
!1203 = !DILocation(line: 297, column: 6, scope: !1163)
!1204 = !DILocation(line: 298, column: 3, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 297, column: 48)
!1206 = !DILocation(line: 300, column: 3, scope: !1205)
!1207 = !DILocation(line: 303, column: 2, scope: !1163)
!1208 = !DILocation(line: 303, column: 18, scope: !1163)
!1209 = !DILocation(line: 303, column: 24, scope: !1163)
!1210 = !DILocation(line: 307, column: 10, scope: !1163)
!1211 = !DILocation(line: 307, column: 27, scope: !1163)
!1212 = !DILocation(line: 307, column: 2, scope: !1163)
!1213 = !DILocation(line: 315, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 315, column: 7)
!1215 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 307, column: 33)
!1216 = !DILocation(line: 315, column: 24, scope: !1214)
!1217 = !DILocation(line: 315, column: 33, scope: !1214)
!1218 = !DILocation(line: 315, column: 7, scope: !1215)
!1219 = !DILocation(line: 316, column: 4, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 315, column: 66)
!1221 = !DILocation(line: 323, column: 9, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 323, column: 7)
!1223 = !DILocation(line: 323, column: 26, scope: !1222)
!1224 = !DILocation(line: 323, column: 32, scope: !1222)
!1225 = !DILocation(line: 323, column: 7, scope: !1215)
!1226 = !DILocation(line: 324, column: 42, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 323, column: 54)
!1228 = !DILocation(line: 324, column: 13, scope: !1227)
!1229 = !DILocation(line: 324, column: 11, scope: !1227)
!1230 = !DILocation(line: 325, column: 8, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !2, line: 325, column: 8)
!1232 = !DILocation(line: 325, column: 8, scope: !1227)
!1233 = !DILocation(line: 326, column: 5, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 325, column: 30)
!1235 = !DILocation(line: 328, column: 3, scope: !1227)
!1236 = !DILocation(line: 332, column: 18, scope: !1215)
!1237 = !DILocation(line: 332, column: 16, scope: !1215)
!1238 = !DILocation(line: 333, column: 8, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 333, column: 7)
!1240 = !DILocation(line: 333, column: 7, scope: !1215)
!1241 = !DILocation(line: 334, column: 4, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 333, column: 22)
!1243 = !DILocation(line: 338, column: 27, scope: !1215)
!1244 = !DILocation(line: 340, column: 6, scope: !1215)
!1245 = !DILocation(line: 338, column: 7, scope: !1215)
!1246 = !DILocation(line: 337, column: 10, scope: !1215)
!1247 = !DILocation(line: 341, column: 12, scope: !1215)
!1248 = !DILocation(line: 341, column: 26, scope: !1215)
!1249 = !DILocation(line: 341, column: 10, scope: !1215)
!1250 = !DILocation(line: 342, column: 3, scope: !1215)
!1251 = !DILocation(line: 344, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 344, column: 7)
!1253 = !DILocation(line: 344, column: 7, scope: !1215)
!1254 = !DILocation(line: 345, column: 4, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 344, column: 29)
!1256 = !DILocation(line: 350, column: 7, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 350, column: 7)
!1258 = !DILocation(line: 350, column: 14, scope: !1257)
!1259 = !DILocation(line: 350, column: 7, scope: !1215)
!1260 = !DILocation(line: 351, column: 4, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 350, column: 50)
!1262 = !DILocation(line: 372, column: 11, scope: !1215)
!1263 = !DILocation(line: 372, column: 9, scope: !1215)
!1264 = !DILocation(line: 373, column: 8, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 373, column: 7)
!1266 = !DILocation(line: 373, column: 7, scope: !1215)
!1267 = !DILocation(line: 374, column: 4, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 373, column: 15)
!1269 = !DILocation(line: 379, column: 32, scope: !1215)
!1270 = !DILocation(line: 379, column: 42, scope: !1215)
!1271 = !DILocation(line: 380, column: 11, scope: !1215)
!1272 = !DILocation(line: 379, column: 12, scope: !1215)
!1273 = !DILocation(line: 379, column: 10, scope: !1215)
!1274 = !DILocation(line: 381, column: 7, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 381, column: 7)
!1276 = !DILocation(line: 381, column: 7, scope: !1215)
!1277 = !DILocation(line: 382, column: 4, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 381, column: 29)
!1279 = !DILocation(line: 383, column: 4, scope: !1278)
!1280 = !DILocation(line: 385, column: 3, scope: !1215)
!1281 = !DILocation(line: 395, column: 7, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 395, column: 7)
!1283 = !DILocation(line: 395, column: 24, scope: !1282)
!1284 = !DILocation(line: 395, column: 31, scope: !1282)
!1285 = !DILocation(line: 395, column: 7, scope: !1215)
!1286 = !DILocation(line: 396, column: 4, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 395, column: 67)
!1288 = !DILocation(line: 402, column: 7, scope: !1215)
!1289 = !DILocation(line: 401, column: 16, scope: !1215)
!1290 = !DILocation(line: 404, column: 12, scope: !1215)
!1291 = !DILocation(line: 404, column: 26, scope: !1215)
!1292 = !DILocation(line: 404, column: 10, scope: !1215)
!1293 = !DILocation(line: 408, column: 7, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 408, column: 7)
!1295 = !DILocation(line: 408, column: 16, scope: !1294)
!1296 = !DILocation(line: 408, column: 33, scope: !1294)
!1297 = !DILocation(line: 408, column: 14, scope: !1294)
!1298 = !DILocation(line: 408, column: 7, scope: !1215)
!1299 = !DILocation(line: 409, column: 4, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 408, column: 41)
!1301 = !DILocation(line: 411, column: 7, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 411, column: 7)
!1303 = !DILocation(line: 411, column: 14, scope: !1302)
!1304 = !DILocation(line: 411, column: 7, scope: !1215)
!1305 = !DILocation(line: 412, column: 4, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 411, column: 50)
!1307 = !DILocation(line: 419, column: 11, scope: !1215)
!1308 = !DILocation(line: 419, column: 9, scope: !1215)
!1309 = !DILocation(line: 420, column: 8, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 420, column: 7)
!1311 = !DILocation(line: 420, column: 7, scope: !1215)
!1312 = !DILocation(line: 421, column: 4, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 420, column: 15)
!1314 = !DILocation(line: 424, column: 10, scope: !1215)
!1315 = !DILocation(line: 424, column: 17, scope: !1215)
!1316 = !DILocation(line: 424, column: 31, scope: !1215)
!1317 = !DILocation(line: 424, column: 3, scope: !1215)
!1318 = !DILocation(line: 425, column: 3, scope: !1215)
!1319 = !DILocation(line: 429, column: 3, scope: !1215)
!1320 = !DILocation(line: 434, column: 2, scope: !1163)
!1321 = !DILocation(line: 435, column: 2, scope: !1163)
!1322 = !DILocation(line: 436, column: 42, scope: !1163)
!1323 = !DILocation(line: 438, column: 7, scope: !1163)
!1324 = !DILocation(line: 436, column: 11, scope: !1163)
!1325 = !DILocation(line: 436, column: 9, scope: !1163)
!1326 = !DILocation(line: 439, column: 2, scope: !1163)
!1327 = !DILocation(line: 440, column: 6, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 440, column: 6)
!1329 = !DILocation(line: 440, column: 6, scope: !1163)
!1330 = !DILocation(line: 444, column: 3, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 440, column: 28)
!1332 = !DILocation(line: 445, column: 3, scope: !1331)
!1333 = !DILocation(line: 455, column: 29, scope: !1163)
!1334 = !DILocation(line: 455, column: 11, scope: !1163)
!1335 = !DILocation(line: 455, column: 9, scope: !1163)
!1336 = !DILocation(line: 456, column: 6, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 456, column: 6)
!1338 = !DILocation(line: 456, column: 6, scope: !1163)
!1339 = !DILocation(line: 457, column: 3, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1337, file: !2, line: 456, column: 28)
!1341 = !DILocation(line: 462, column: 2, scope: !1163)
!1342 = !DILocation(line: 463, column: 2, scope: !1163)
!1343 = !DILocation(line: 464, column: 2, scope: !1163)
!1344 = !DILocation(line: 468, column: 27, scope: !1163)
!1345 = !DILocation(line: 468, column: 2, scope: !1163)
!1346 = !DILocation(line: 472, column: 2, scope: !1163)
!1347 = !DILocation(line: 472, column: 18, scope: !1163)
!1348 = !DILocation(line: 472, column: 24, scope: !1163)
!1349 = !DILocation(line: 473, column: 2, scope: !1163)
!1350 = !DILocation(line: 474, column: 1, scope: !1163)
!1351 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1057, file: !1057, line: 298, type: !1352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!51, !103}
!1354 = !DISubprogram(name: "acpi_error", scope: !1063, file: !1063, line: 901, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{null, !1060, !46, !1060, null}
!1357 = !DISubprogram(name: "acpi_ds_get_region_arguments", scope: !1358, file: !1358, line: 25, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1358 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1359 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !1360, file: !1360, line: 50, type: !1361, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1363)
!1360 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!148, !817}
!1363 = !{!1364, !1365, !1367, !1370, !1371, !1374}
!1364 = !DILocalVariable(name: "size", arg: 1, scope: !1359, file: !1360, line: 50, type: !817)
!1365 = !DILocalVariable(name: "_flags", scope: !1366, file: !1360, line: 52, type: !815)
!1366 = distinct !DILexicalBlock(scope: !1359, file: !1360, line: 52, column: 23)
!1367 = !DILocalVariable(name: "__dummy", scope: !1368, file: !1360, line: 52, type: !815)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !1360, line: 52, column: 23)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !1360, line: 52, column: 23)
!1370 = !DILocalVariable(name: "__dummy2", scope: !1368, file: !1360, line: 52, type: !815)
!1371 = !DILocalVariable(name: "__dummy", scope: !1372, file: !1360, line: 52, type: !815)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !1360, line: 52, column: 23)
!1373 = distinct !DILexicalBlock(scope: !1366, file: !1360, line: 52, column: 23)
!1374 = !DILocalVariable(name: "__dummy2", scope: !1372, file: !1360, line: 52, type: !815)
!1375 = !DILocation(line: 50, column: 48, scope: !1359)
!1376 = !DILocation(line: 52, column: 17, scope: !1359)
!1377 = !DILocation(line: 52, column: 23, scope: !1366)
!1378 = !DILocation(line: 52, column: 23, scope: !1368)
!1379 = !DILocation(line: 52, column: 23, scope: !1369)
!1380 = !DILocation(line: 52, column: 23, scope: !1372)
!1381 = !DILocation(line: 52, column: 23, scope: !1373)
!1382 = !DILocation(line: 52, column: 23, scope: !1359)
!1383 = !DILocation(line: 52, column: 9, scope: !1359)
!1384 = !DILocation(line: 52, column: 2, scope: !1359)
!1385 = distinct !DISubprogram(name: "acpi_ex_region_read", scope: !2, file: !2, line: 231, type: !1386, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1388)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!44, !51, !46, !98}
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !1395}
!1389 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1385, file: !2, line: 231, type: !51)
!1390 = !DILocalVariable(name: "length", arg: 2, scope: !1385, file: !2, line: 231, type: !46)
!1391 = !DILocalVariable(name: "buffer", arg: 3, scope: !1385, file: !2, line: 231, type: !98)
!1392 = !DILocalVariable(name: "status", scope: !1385, file: !2, line: 233, type: !44)
!1393 = !DILocalVariable(name: "value", scope: !1385, file: !2, line: 234, type: !39)
!1394 = !DILocalVariable(name: "region_offset", scope: !1385, file: !2, line: 235, type: !46)
!1395 = !DILocalVariable(name: "i", scope: !1385, file: !2, line: 236, type: !46)
!1396 = !DILocation(line: 231, column: 48, scope: !1385)
!1397 = !DILocation(line: 231, column: 62, scope: !1385)
!1398 = !DILocation(line: 231, column: 74, scope: !1385)
!1399 = !DILocation(line: 233, column: 2, scope: !1385)
!1400 = !DILocation(line: 233, column: 14, scope: !1385)
!1401 = !DILocation(line: 234, column: 2, scope: !1385)
!1402 = !DILocation(line: 234, column: 6, scope: !1385)
!1403 = !DILocation(line: 235, column: 2, scope: !1385)
!1404 = !DILocation(line: 235, column: 6, scope: !1385)
!1405 = !DILocation(line: 236, column: 2, scope: !1385)
!1406 = !DILocation(line: 236, column: 6, scope: !1385)
!1407 = !DILocation(line: 240, column: 9, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 240, column: 2)
!1409 = !DILocation(line: 240, column: 7, scope: !1408)
!1410 = !DILocation(line: 240, column: 14, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 240, column: 2)
!1412 = !DILocation(line: 240, column: 18, scope: !1411)
!1413 = !DILocation(line: 240, column: 16, scope: !1411)
!1414 = !DILocation(line: 240, column: 2, scope: !1408)
!1415 = !DILocation(line: 242, column: 38, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 240, column: 31)
!1417 = !DILocation(line: 243, column: 10, scope: !1416)
!1418 = !DILocation(line: 242, column: 7, scope: !1416)
!1419 = !DILocation(line: 241, column: 10, scope: !1416)
!1420 = !DILocation(line: 244, column: 7, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 244, column: 7)
!1422 = !DILocation(line: 244, column: 7, scope: !1416)
!1423 = !DILocation(line: 245, column: 12, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !2, line: 244, column: 29)
!1425 = !DILocation(line: 245, column: 4, scope: !1424)
!1426 = !DILocation(line: 248, column: 17, scope: !1416)
!1427 = !DILocation(line: 248, column: 13, scope: !1416)
!1428 = !DILocation(line: 248, column: 4, scope: !1416)
!1429 = !DILocation(line: 248, column: 11, scope: !1416)
!1430 = !DILocation(line: 249, column: 9, scope: !1416)
!1431 = !DILocation(line: 250, column: 16, scope: !1416)
!1432 = !DILocation(line: 251, column: 2, scope: !1416)
!1433 = !DILocation(line: 240, column: 27, scope: !1411)
!1434 = !DILocation(line: 240, column: 2, scope: !1411)
!1435 = distinct !{!1435, !1414, !1436, !1437, !1438}
!1436 = !DILocation(line: 251, column: 2, scope: !1408)
!1437 = !{!"llvm.loop.mustprogress"}
!1438 = !{!"llvm.loop.unroll.disable"}
!1439 = !DILocation(line: 253, column: 2, scope: !1385)
!1440 = !DILocation(line: 254, column: 1, scope: !1385)
!1441 = distinct !DISubprogram(name: "acpi_os_free", scope: !1360, file: !1360, line: 60, type: !1442, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1444)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{null, !148}
!1444 = !{!1445}
!1445 = !DILocalVariable(name: "memory", arg: 1, scope: !1441, file: !1360, line: 60, type: !148)
!1446 = !DILocation(line: 60, column: 39, scope: !1441)
!1447 = !DILocation(line: 62, column: 8, scope: !1441)
!1448 = !DILocation(line: 62, column: 2, scope: !1441)
!1449 = !DILocation(line: 63, column: 1, scope: !1441)
!1450 = !DISubprogram(name: "acpi_tb_install_and_load_table", scope: !1051, file: !1051, line: 99, type: !1451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!44, !492, !59, !818, !59, !1054}
!1453 = !DISubprogram(name: "acpi_warning", scope: !1063, file: !1063, line: 912, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1454 = !DISubprogram(name: "acpi_exception", scope: !1063, file: !1063, line: 906, type: !1455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{null, !1060, !46, !44, !1060, null}
!1457 = !DISubprogram(name: "acpi_tb_unload_table", scope: !1051, file: !1051, line: 104, type: !1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!44, !46}
!1460 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !1043, file: !1043, line: 436, type: !1461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!51, !1060, !46, !46, !1463}
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !45, line: 644, baseType: !46)
!1464 = distinct !DISubprogram(name: "kmalloc", scope: !29, file: !29, line: 591, type: !1465, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1471)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!148, !1467, !845}
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !814, line: 61, baseType: !1468)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1469, line: 72, baseType: !1470)
!1469 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1469, line: 16, baseType: !815)
!1471 = !{!1472, !1473, !1474}
!1472 = !DILocalVariable(name: "size", arg: 1, scope: !1464, file: !29, line: 591, type: !1467)
!1473 = !DILocalVariable(name: "flags", arg: 2, scope: !1464, file: !29, line: 591, type: !845)
!1474 = !DILocalVariable(name: "index", scope: !1475, file: !29, line: 594, type: !13)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !29, line: 593, column: 42)
!1476 = distinct !DILexicalBlock(scope: !1464, file: !29, line: 593, column: 6)
!1477 = !DILocation(line: 591, column: 61, scope: !1464)
!1478 = !DILocation(line: 591, column: 73, scope: !1464)
!1479 = !DILocation(line: 593, column: 27, scope: !1476)
!1480 = !DILocation(line: 593, column: 6, scope: !1476)
!1481 = !DILocation(line: 593, column: 33, scope: !1476)
!1482 = !DILocation(line: 593, column: 36, scope: !1476)
!1483 = !DILocation(line: 593, column: 6, scope: !1464)
!1484 = !DILocation(line: 594, column: 3, scope: !1475)
!1485 = !DILocation(line: 594, column: 16, scope: !1475)
!1486 = !DILocation(line: 596, column: 7, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1475, file: !29, line: 596, column: 7)
!1488 = !DILocation(line: 596, column: 12, scope: !1487)
!1489 = !DILocation(line: 596, column: 7, scope: !1475)
!1490 = !DILocation(line: 597, column: 25, scope: !1487)
!1491 = !DILocation(line: 597, column: 31, scope: !1487)
!1492 = !DILocation(line: 597, column: 11, scope: !1487)
!1493 = !DILocation(line: 597, column: 4, scope: !1487)
!1494 = !DILocation(line: 599, column: 11, scope: !1475)
!1495 = !DILocation(line: 599, column: 9, scope: !1475)
!1496 = !DILocation(line: 601, column: 33, scope: !1475)
!1497 = !DILocation(line: 601, column: 40, scope: !1475)
!1498 = !DILocation(line: 601, column: 20, scope: !1475)
!1499 = !DILocation(line: 601, column: 5, scope: !1475)
!1500 = !DILocation(line: 601, column: 51, scope: !1475)
!1501 = !DILocation(line: 602, column: 5, scope: !1475)
!1502 = !DILocation(line: 602, column: 12, scope: !1475)
!1503 = !DILocation(line: 600, column: 10, scope: !1475)
!1504 = !DILocation(line: 600, column: 3, scope: !1475)
!1505 = !DILocation(line: 603, column: 2, scope: !1476)
!1506 = !DILocation(line: 604, column: 19, scope: !1464)
!1507 = !DILocation(line: 604, column: 25, scope: !1464)
!1508 = !DILocation(line: 604, column: 9, scope: !1464)
!1509 = !DILocation(line: 604, column: 2, scope: !1464)
!1510 = !DILocation(line: 605, column: 1, scope: !1464)
!1511 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1512, file: !1512, line: 65, type: !1513, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!1512 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!815}
!1515 = !DILocation(line: 67, column: 9, scope: !1511)
!1516 = !DILocation(line: 67, column: 2, scope: !1511)
!1517 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1512, file: !1512, line: 120, type: !1518, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1521)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!1520, !815}
!1520 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1521 = !{!1522}
!1522 = !DILocalVariable(name: "flags", arg: 1, scope: !1517, file: !1512, line: 120, type: !815)
!1523 = !DILocation(line: 120, column: 67, scope: !1517)
!1524 = !DILocation(line: 122, column: 11, scope: !1517)
!1525 = !DILocation(line: 122, column: 17, scope: !1517)
!1526 = !DILocation(line: 122, column: 9, scope: !1517)
!1527 = !DILocation(line: 122, column: 2, scope: !1517)
!1528 = !DISubprogram(name: "kmalloc_large", scope: !29, file: !29, line: 531, type: !1465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1529 = distinct !DISubprogram(name: "__kmalloc_index", scope: !29, file: !29, line: 444, type: !1530, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1534)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!13, !1467, !1532}
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !814, line: 35, baseType: !1533)
!1533 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1534 = !{!1535, !1536}
!1535 = !DILocalVariable(name: "size", arg: 1, scope: !1529, file: !29, line: 444, type: !1467)
!1536 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1529, file: !29, line: 445, type: !1532)
!1537 = !DILocation(line: 444, column: 60, scope: !1529)
!1538 = !DILocation(line: 445, column: 16, scope: !1529)
!1539 = !DILocation(line: 447, column: 7, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 447, column: 6)
!1541 = !DILocation(line: 447, column: 6, scope: !1529)
!1542 = !DILocation(line: 448, column: 3, scope: !1540)
!1543 = !DILocation(line: 450, column: 6, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 450, column: 6)
!1545 = !DILocation(line: 450, column: 11, scope: !1544)
!1546 = !DILocation(line: 450, column: 6, scope: !1529)
!1547 = !DILocation(line: 451, column: 3, scope: !1544)
!1548 = !DILocation(line: 453, column: 32, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 453, column: 6)
!1550 = !DILocation(line: 453, column: 37, scope: !1549)
!1551 = !DILocation(line: 453, column: 42, scope: !1549)
!1552 = !DILocation(line: 453, column: 45, scope: !1549)
!1553 = !DILocation(line: 453, column: 50, scope: !1549)
!1554 = !DILocation(line: 453, column: 6, scope: !1529)
!1555 = !DILocation(line: 454, column: 3, scope: !1549)
!1556 = !DILocation(line: 455, column: 32, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 455, column: 6)
!1558 = !DILocation(line: 455, column: 37, scope: !1557)
!1559 = !DILocation(line: 455, column: 43, scope: !1557)
!1560 = !DILocation(line: 455, column: 46, scope: !1557)
!1561 = !DILocation(line: 455, column: 51, scope: !1557)
!1562 = !DILocation(line: 455, column: 6, scope: !1529)
!1563 = !DILocation(line: 456, column: 3, scope: !1557)
!1564 = !DILocation(line: 457, column: 6, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 457, column: 6)
!1566 = !DILocation(line: 457, column: 11, scope: !1565)
!1567 = !DILocation(line: 457, column: 6, scope: !1529)
!1568 = !DILocation(line: 457, column: 26, scope: !1565)
!1569 = !DILocation(line: 458, column: 6, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 458, column: 6)
!1571 = !DILocation(line: 458, column: 11, scope: !1570)
!1572 = !DILocation(line: 458, column: 6, scope: !1529)
!1573 = !DILocation(line: 458, column: 26, scope: !1570)
!1574 = !DILocation(line: 459, column: 6, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 459, column: 6)
!1576 = !DILocation(line: 459, column: 11, scope: !1575)
!1577 = !DILocation(line: 459, column: 6, scope: !1529)
!1578 = !DILocation(line: 459, column: 26, scope: !1575)
!1579 = !DILocation(line: 460, column: 6, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 460, column: 6)
!1581 = !DILocation(line: 460, column: 11, scope: !1580)
!1582 = !DILocation(line: 460, column: 6, scope: !1529)
!1583 = !DILocation(line: 460, column: 26, scope: !1580)
!1584 = !DILocation(line: 461, column: 6, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 461, column: 6)
!1586 = !DILocation(line: 461, column: 11, scope: !1585)
!1587 = !DILocation(line: 461, column: 6, scope: !1529)
!1588 = !DILocation(line: 461, column: 26, scope: !1585)
!1589 = !DILocation(line: 462, column: 6, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 462, column: 6)
!1591 = !DILocation(line: 462, column: 11, scope: !1590)
!1592 = !DILocation(line: 462, column: 6, scope: !1529)
!1593 = !DILocation(line: 462, column: 26, scope: !1590)
!1594 = !DILocation(line: 463, column: 6, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 463, column: 6)
!1596 = !DILocation(line: 463, column: 11, scope: !1595)
!1597 = !DILocation(line: 463, column: 6, scope: !1529)
!1598 = !DILocation(line: 463, column: 26, scope: !1595)
!1599 = !DILocation(line: 464, column: 6, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 464, column: 6)
!1601 = !DILocation(line: 464, column: 11, scope: !1600)
!1602 = !DILocation(line: 464, column: 6, scope: !1529)
!1603 = !DILocation(line: 464, column: 26, scope: !1600)
!1604 = !DILocation(line: 465, column: 6, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 465, column: 6)
!1606 = !DILocation(line: 465, column: 11, scope: !1605)
!1607 = !DILocation(line: 465, column: 6, scope: !1529)
!1608 = !DILocation(line: 465, column: 26, scope: !1605)
!1609 = !DILocation(line: 466, column: 6, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 466, column: 6)
!1611 = !DILocation(line: 466, column: 11, scope: !1610)
!1612 = !DILocation(line: 466, column: 6, scope: !1529)
!1613 = !DILocation(line: 466, column: 26, scope: !1610)
!1614 = !DILocation(line: 467, column: 6, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 467, column: 6)
!1616 = !DILocation(line: 467, column: 11, scope: !1615)
!1617 = !DILocation(line: 467, column: 6, scope: !1529)
!1618 = !DILocation(line: 467, column: 26, scope: !1615)
!1619 = !DILocation(line: 468, column: 6, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 468, column: 6)
!1621 = !DILocation(line: 468, column: 11, scope: !1620)
!1622 = !DILocation(line: 468, column: 6, scope: !1529)
!1623 = !DILocation(line: 468, column: 26, scope: !1620)
!1624 = !DILocation(line: 469, column: 6, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 469, column: 6)
!1626 = !DILocation(line: 469, column: 11, scope: !1625)
!1627 = !DILocation(line: 469, column: 6, scope: !1529)
!1628 = !DILocation(line: 469, column: 26, scope: !1625)
!1629 = !DILocation(line: 470, column: 6, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 470, column: 6)
!1631 = !DILocation(line: 470, column: 11, scope: !1630)
!1632 = !DILocation(line: 470, column: 6, scope: !1529)
!1633 = !DILocation(line: 470, column: 26, scope: !1630)
!1634 = !DILocation(line: 471, column: 6, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 471, column: 6)
!1636 = !DILocation(line: 471, column: 11, scope: !1635)
!1637 = !DILocation(line: 471, column: 6, scope: !1529)
!1638 = !DILocation(line: 471, column: 26, scope: !1635)
!1639 = !DILocation(line: 472, column: 6, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 472, column: 6)
!1641 = !DILocation(line: 472, column: 11, scope: !1640)
!1642 = !DILocation(line: 472, column: 6, scope: !1529)
!1643 = !DILocation(line: 472, column: 26, scope: !1640)
!1644 = !DILocation(line: 473, column: 6, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 473, column: 6)
!1646 = !DILocation(line: 473, column: 11, scope: !1645)
!1647 = !DILocation(line: 473, column: 6, scope: !1529)
!1648 = !DILocation(line: 473, column: 26, scope: !1645)
!1649 = !DILocation(line: 474, column: 6, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 474, column: 6)
!1651 = !DILocation(line: 474, column: 11, scope: !1650)
!1652 = !DILocation(line: 474, column: 6, scope: !1529)
!1653 = !DILocation(line: 474, column: 27, scope: !1650)
!1654 = !DILocation(line: 475, column: 6, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 475, column: 6)
!1656 = !DILocation(line: 475, column: 11, scope: !1655)
!1657 = !DILocation(line: 475, column: 6, scope: !1529)
!1658 = !DILocation(line: 475, column: 32, scope: !1655)
!1659 = !DILocation(line: 477, column: 50, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1529, file: !29, line: 477, column: 6)
!1661 = !{i8 0, i8 2}
!1662 = !{}
!1663 = !DILocation(line: 477, column: 6, scope: !1529)
!1664 = !DILocation(line: 478, column: 3, scope: !1660)
!1665 = !DILocation(line: 478, column: 3, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !29, line: 478, column: 3)
!1667 = distinct !DILexicalBlock(scope: !1660, file: !29, line: 478, column: 3)
!1668 = !{i32 -2143034011}
!1669 = !DILocation(line: 478, column: 3, scope: !1667)
!1670 = !DILocation(line: 480, column: 3, scope: !1660)
!1671 = !DILocation(line: 480, column: 3, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1660, file: !29, line: 480, column: 3)
!1673 = !DILocation(line: 480, column: 3, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1672, file: !29, line: 480, column: 3)
!1675 = !DILocation(line: 480, column: 3, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1672, file: !29, line: 480, column: 3)
!1677 = !{i64 2151933488, i64 2151933517, i64 2151933563, i64 2151933621, i64 2151933675, i64 2151933729, i64 2151933784, i64 2151933815}
!1678 = !DILocation(line: 483, column: 2, scope: !1529)
!1679 = !DILocation(line: 484, column: 1, scope: !1529)
!1680 = !DISubprogram(name: "kmalloc_trace", scope: !29, file: !29, line: 525, type: !1681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!148, !1683, !845, !1467}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1685, line: 11, flags: DIFlagFwdDecl)
!1685 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1686 = distinct !DISubprogram(name: "kmalloc_type", scope: !29, file: !29, line: 401, type: !1687, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1689)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!28, !845, !815}
!1689 = !{!1690, !1691}
!1690 = !DILocalVariable(name: "flags", arg: 1, scope: !1686, file: !29, line: 401, type: !845)
!1691 = !DILocalVariable(name: "caller", arg: 2, scope: !1686, file: !29, line: 401, type: !815)
!1692 = !DILocation(line: 401, column: 67, scope: !1686)
!1693 = !DILocation(line: 401, column: 88, scope: !1686)
!1694 = !DILocation(line: 407, column: 6, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1686, file: !29, line: 407, column: 6)
!1696 = !DILocation(line: 407, column: 6, scope: !1686)
!1697 = !DILocation(line: 413, column: 3, scope: !1695)
!1698 = !DILocation(line: 423, column: 38, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1686, file: !29, line: 423, column: 6)
!1700 = !DILocation(line: 423, column: 44, scope: !1699)
!1701 = !DILocation(line: 423, column: 6, scope: !1686)
!1702 = !DILocation(line: 424, column: 3, scope: !1699)
!1703 = !DILocation(line: 426, column: 3, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1686, file: !29, line: 425, column: 6)
!1705 = !DILocation(line: 429, column: 1, scope: !1686)
!1706 = !DISubprogram(name: "__kmalloc", scope: !29, file: !29, line: 488, type: !1465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1707 = !DISubprogram(name: "__compiletime_assert_173", scope: !29, file: !29, line: 478, type: !1048, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1708 = distinct !DISubprogram(name: "native_save_fl", scope: !1512, file: !1512, line: 17, type: !1513, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1709)
!1709 = !{!1710}
!1710 = !DILocalVariable(name: "flags", scope: !1708, file: !1512, line: 19, type: !815)
!1711 = !DILocation(line: 19, column: 2, scope: !1708)
!1712 = !DILocation(line: 19, column: 16, scope: !1708)
!1713 = !DILocation(line: 26, column: 2, scope: !1708)
!1714 = !{i64 1523407, i64 1523428}
!1715 = !DILocation(line: 32, column: 9, scope: !1708)
!1716 = !DILocation(line: 33, column: 1, scope: !1708)
!1717 = !DILocation(line: 32, column: 2, scope: !1708)
!1718 = !DISubprogram(name: "acpi_ev_address_space_dispatch", scope: !1719, file: !1719, line: 176, type: !1720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1719 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!44, !51, !51, !46, !46, !46, !747}
!1722 = !DISubprogram(name: "kfree", scope: !29, file: !29, line: 227, type: !1723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{null, !1725}
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
