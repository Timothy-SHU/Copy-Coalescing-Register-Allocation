; ModuleID = 'drivers/acpi/acpica/psxface.c'
source_filename = "drivers/acpi/acpica/psxface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i8, i8, i8 }
%struct.acpi_object_method = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, %union.anon, i32, i16, i8 }
%union.anon = type { ptr }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }

@acpi_gbl_trace_method_name = external dso_local global ptr, align 8
@acpi_gbl_trace_flags = external dso_local global i32, align 4
@acpi_gbl_trace_dbg_level = external dso_local global i32, align 4
@acpi_gbl_trace_dbg_layer = external dso_local global i32, align 4
@acpi_gbl_enable_interpreter_slack = external dso_local global i8, align 1
@acpi_gbl_root_node = external dso_local global ptr, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_debug_trace(ptr noundef %name, i32 noundef %debug_level, i32 noundef %debug_layer, i32 noundef %flags) #0 align 16 !dbg !32 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %debug_level.addr = alloca i32, align 4
  %debug_layer.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !39, metadata !DIExpression()), !dbg !44
  store i32 %debug_level, ptr %debug_level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %debug_level.addr, metadata !40, metadata !DIExpression()), !dbg !45
  store i32 %debug_layer, ptr %debug_layer.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %debug_layer.addr, metadata !41, metadata !DIExpression()), !dbg !46
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !42, metadata !DIExpression()), !dbg !47
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !48
  call void @llvm.dbg.declare(metadata ptr %status, metadata !43, metadata !DIExpression()), !dbg !49
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #5, !dbg !50
  store i32 %call, ptr %status, align 4, !dbg !51
  %0 = load i32, ptr %status, align 4, !dbg !52
  %tobool = icmp ne i32 %0, 0, !dbg !52
  br i1 %tobool, label %if.then, label %if.end, !dbg !54

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !55
  store i32 %1, ptr %retval, align 4, !dbg !57
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !57

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8, !dbg !58
  store ptr %2, ptr @acpi_gbl_trace_method_name, align 8, !dbg !59
  %3 = load i32, ptr %flags.addr, align 4, !dbg !60
  store i32 %3, ptr @acpi_gbl_trace_flags, align 4, !dbg !61
  %4 = load i32, ptr %debug_level.addr, align 4, !dbg !62
  store i32 %4, ptr @acpi_gbl_trace_dbg_level, align 4, !dbg !63
  %5 = load i32, ptr %debug_layer.addr, align 4, !dbg !64
  store i32 %5, ptr @acpi_gbl_trace_dbg_layer, align 4, !dbg !65
  store i32 0, ptr %status, align 4, !dbg !66
  %call1 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #5, !dbg !67
  %6 = load i32, ptr %status, align 4, !dbg !68
  store i32 %6, ptr %retval, align 4, !dbg !69
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !69

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !70
  %7 = load i32, ptr %retval, align 4, !dbg !70
  ret i32 %7, !dbg !70
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !71 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !76 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ps_execute_method(ptr noundef %info) #0 align 16 !dbg !77 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %op = alloca ptr, align 8
  %walk_state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !907, metadata !DIExpression()), !dbg !912
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !913
  call void @llvm.dbg.declare(metadata ptr %status, metadata !908, metadata !DIExpression()), !dbg !914
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #4, !dbg !915
  call void @llvm.dbg.declare(metadata ptr %op, metadata !909, metadata !DIExpression()), !dbg !916
  call void @llvm.lifetime.start.p0(i64 8, ptr %walk_state) #4, !dbg !917
  call void @llvm.dbg.declare(metadata ptr %walk_state, metadata !910, metadata !DIExpression()), !dbg !918
  call void @acpi_tb_check_dsdt_header() #5, !dbg !919
  %0 = load ptr, ptr %info.addr, align 8, !dbg !920
  %tobool = icmp ne ptr %0, null, !dbg !920
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !922

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %info.addr, align 8, !dbg !923
  %node = getelementptr inbounds %struct.acpi_evaluate_info, ptr %1, i32 0, i32 3, !dbg !924
  %2 = load ptr, ptr %node, align 8, !dbg !924
  %tobool1 = icmp ne ptr %2, null, !dbg !923
  br i1 %tobool1, label %if.end, label %if.then, !dbg !925

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 10, ptr %retval, align 4, !dbg !926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !926

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %info.addr, align 8, !dbg !928
  %node2 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %3, i32 0, i32 3, !dbg !929
  %4 = load ptr, ptr %node2, align 8, !dbg !929
  %5 = load ptr, ptr %info.addr, align 8, !dbg !930
  %obj_desc = getelementptr inbounds %struct.acpi_evaluate_info, ptr %5, i32 0, i32 4, !dbg !931
  %6 = load ptr, ptr %obj_desc, align 8, !dbg !931
  %call = call i32 @acpi_ds_begin_method_execution(ptr noundef %4, ptr noundef %6, ptr noundef null) #5, !dbg !932
  store i32 %call, ptr %status, align 4, !dbg !933
  %7 = load i32, ptr %status, align 4, !dbg !934
  %tobool3 = icmp ne i32 %7, 0, !dbg !934
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !936

if.then4:                                         ; preds = %if.end
  %8 = load i32, ptr %status, align 4, !dbg !937
  store i32 %8, ptr %retval, align 4, !dbg !937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !937

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %info.addr, align 8, !dbg !939
  call void @acpi_ps_update_parameter_list(ptr noundef %9, i16 noundef zeroext 0) #5, !dbg !940
  %10 = load ptr, ptr %info.addr, align 8, !dbg !941
  %obj_desc6 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %10, i32 0, i32 4, !dbg !942
  %11 = load ptr, ptr %obj_desc6, align 8, !dbg !942
  %aml_start = getelementptr inbounds %struct.acpi_object_method, ptr %11, i32 0, i32 10, !dbg !943
  %12 = load ptr, ptr %aml_start, align 8, !dbg !943
  %call7 = call ptr @acpi_ps_create_scope_op(ptr noundef %12) #5, !dbg !944
  store ptr %call7, ptr %op, align 8, !dbg !945
  %13 = load ptr, ptr %op, align 8, !dbg !946
  %tobool8 = icmp ne ptr %13, null, !dbg !946
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !948

if.then9:                                         ; preds = %if.end5
  store i32 4, ptr %status, align 4, !dbg !949
  br label %cleanup, !dbg !951

if.end10:                                         ; preds = %if.end5
  %14 = load ptr, ptr %info.addr, align 8, !dbg !952
  %pass_number = getelementptr inbounds %struct.acpi_evaluate_info, ptr %14, i32 0, i32 13, !dbg !953
  store i8 3, ptr %pass_number, align 4, !dbg !954
  %15 = load ptr, ptr %info.addr, align 8, !dbg !955
  %obj_desc11 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %15, i32 0, i32 4, !dbg !956
  %16 = load ptr, ptr %obj_desc11, align 8, !dbg !956
  %owner_id = getelementptr inbounds %struct.acpi_object_method, ptr %16, i32 0, i32 13, !dbg !957
  %17 = load i16, ptr %owner_id, align 4, !dbg !957
  %call12 = call ptr @acpi_ds_create_walk_state(i16 noundef zeroext %17, ptr noundef null, ptr noundef null, ptr noundef null) #5, !dbg !958
  store ptr %call12, ptr %walk_state, align 8, !dbg !959
  %18 = load ptr, ptr %walk_state, align 8, !dbg !960
  %tobool13 = icmp ne ptr %18, null, !dbg !960
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !962

if.then14:                                        ; preds = %if.end10
  store i32 4, ptr %status, align 4, !dbg !963
  br label %cleanup, !dbg !965

if.end15:                                         ; preds = %if.end10
  %19 = load ptr, ptr %walk_state, align 8, !dbg !966
  %20 = load ptr, ptr %op, align 8, !dbg !967
  %21 = load ptr, ptr %info.addr, align 8, !dbg !968
  %node16 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %21, i32 0, i32 3, !dbg !969
  %22 = load ptr, ptr %node16, align 8, !dbg !969
  %23 = load ptr, ptr %info.addr, align 8, !dbg !970
  %obj_desc17 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %23, i32 0, i32 4, !dbg !971
  %24 = load ptr, ptr %obj_desc17, align 8, !dbg !971
  %aml_start18 = getelementptr inbounds %struct.acpi_object_method, ptr %24, i32 0, i32 10, !dbg !972
  %25 = load ptr, ptr %aml_start18, align 8, !dbg !972
  %26 = load ptr, ptr %info.addr, align 8, !dbg !973
  %obj_desc19 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %26, i32 0, i32 4, !dbg !974
  %27 = load ptr, ptr %obj_desc19, align 8, !dbg !974
  %aml_length = getelementptr inbounds %struct.acpi_object_method, ptr %27, i32 0, i32 12, !dbg !975
  %28 = load i32, ptr %aml_length, align 8, !dbg !975
  %29 = load ptr, ptr %info.addr, align 8, !dbg !976
  %30 = load ptr, ptr %info.addr, align 8, !dbg !977
  %pass_number20 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %30, i32 0, i32 13, !dbg !978
  %31 = load i8, ptr %pass_number20, align 4, !dbg !978
  %call21 = call i32 @acpi_ds_init_aml_walk(ptr noundef %19, ptr noundef %20, ptr noundef %22, ptr noundef %25, i32 noundef %28, ptr noundef %29, i8 noundef zeroext %31) #5, !dbg !979
  store i32 %call21, ptr %status, align 4, !dbg !980
  %32 = load i32, ptr %status, align 4, !dbg !981
  %tobool22 = icmp ne i32 %32, 0, !dbg !981
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !983

if.then23:                                        ; preds = %if.end15
  %33 = load ptr, ptr %walk_state, align 8, !dbg !984
  call void @acpi_ds_delete_walk_state(ptr noundef %33) #5, !dbg !986
  br label %cleanup, !dbg !987

if.end24:                                         ; preds = %if.end15
  %34 = load ptr, ptr %info.addr, align 8, !dbg !988
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %34, i32 0, i32 5, !dbg !989
  %35 = load ptr, ptr %full_pathname, align 8, !dbg !989
  %36 = load ptr, ptr %walk_state, align 8, !dbg !990
  %method_pathname = getelementptr inbounds %struct.acpi_walk_state, ptr %36, i32 0, i32 39, !dbg !991
  store ptr %35, ptr %method_pathname, align 8, !dbg !992
  %37 = load ptr, ptr %walk_state, align 8, !dbg !993
  %method_is_nested = getelementptr inbounds %struct.acpi_walk_state, ptr %37, i32 0, i32 25, !dbg !994
  store i8 0, ptr %method_is_nested, align 2, !dbg !995
  %38 = load ptr, ptr %info.addr, align 8, !dbg !996
  %obj_desc25 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %38, i32 0, i32 4, !dbg !998
  %39 = load ptr, ptr %obj_desc25, align 8, !dbg !998
  %info_flags = getelementptr inbounds %struct.acpi_object_method, ptr %39, i32 0, i32 5, !dbg !999
  %40 = load i8, ptr %info_flags, align 1, !dbg !999
  %conv = zext i8 %40 to i32, !dbg !996
  %and = and i32 %conv, 1, !dbg !1000
  %tobool26 = icmp ne i32 %and, 0, !dbg !1000
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !1001

if.then27:                                        ; preds = %if.end24
  %41 = load ptr, ptr %walk_state, align 8, !dbg !1002
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, ptr %41, i32 0, i32 20, !dbg !1004
  %42 = load i32, ptr %parse_flags, align 4, !dbg !1005
  %or = or i32 %42, 1024, !dbg !1005
  store i32 %or, ptr %parse_flags, align 4, !dbg !1005
  br label %if.end28, !dbg !1006

if.end28:                                         ; preds = %if.then27, %if.end24
  %43 = load ptr, ptr %info.addr, align 8, !dbg !1007
  %obj_desc29 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %43, i32 0, i32 4, !dbg !1009
  %44 = load ptr, ptr %obj_desc29, align 8, !dbg !1009
  %info_flags30 = getelementptr inbounds %struct.acpi_object_method, ptr %44, i32 0, i32 5, !dbg !1010
  %45 = load i8, ptr %info_flags30, align 1, !dbg !1010
  %conv31 = zext i8 %45 to i32, !dbg !1007
  %and32 = and i32 %conv31, 2, !dbg !1011
  %tobool33 = icmp ne i32 %and32, 0, !dbg !1011
  br i1 %tobool33, label %if.then34, label %if.end37, !dbg !1012

if.then34:                                        ; preds = %if.end28
  %46 = load ptr, ptr %info.addr, align 8, !dbg !1013
  %obj_desc35 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %46, i32 0, i32 4, !dbg !1015
  %47 = load ptr, ptr %obj_desc35, align 8, !dbg !1015
  %dispatch = getelementptr inbounds %struct.acpi_object_method, ptr %47, i32 0, i32 11, !dbg !1016
  %48 = load ptr, ptr %dispatch, align 8, !dbg !1017
  %49 = load ptr, ptr %walk_state, align 8, !dbg !1018
  %call36 = call i32 %48(ptr noundef %49) #5, !dbg !1013
  store i32 %call36, ptr %status, align 4, !dbg !1019
  %50 = load ptr, ptr %walk_state, align 8, !dbg !1020
  %return_desc = getelementptr inbounds %struct.acpi_walk_state, ptr %50, i32 0, i32 45, !dbg !1021
  %51 = load ptr, ptr %return_desc, align 8, !dbg !1021
  %52 = load ptr, ptr %info.addr, align 8, !dbg !1022
  %return_object = getelementptr inbounds %struct.acpi_evaluate_info, ptr %52, i32 0, i32 7, !dbg !1023
  store ptr %51, ptr %return_object, align 8, !dbg !1024
  %53 = load ptr, ptr %walk_state, align 8, !dbg !1025
  call void @acpi_ds_scope_stack_clear(ptr noundef %53) #5, !dbg !1026
  %54 = load ptr, ptr %walk_state, align 8, !dbg !1027
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, ptr %54, i32 0, i32 21, !dbg !1028
  call void @acpi_ps_cleanup_scope(ptr noundef %parser_state) #5, !dbg !1029
  %55 = load ptr, ptr %walk_state, align 8, !dbg !1030
  %method_desc = getelementptr inbounds %struct.acpi_walk_state, ptr %55, i32 0, i32 37, !dbg !1031
  %56 = load ptr, ptr %method_desc, align 8, !dbg !1031
  %57 = load ptr, ptr %walk_state, align 8, !dbg !1032
  call void @acpi_ds_terminate_control_method(ptr noundef %56, ptr noundef %57) #5, !dbg !1033
  %58 = load ptr, ptr %walk_state, align 8, !dbg !1034
  call void @acpi_ds_delete_walk_state(ptr noundef %58) #5, !dbg !1035
  br label %cleanup, !dbg !1036

if.end37:                                         ; preds = %if.end28
  %59 = load i8, ptr @acpi_gbl_enable_interpreter_slack, align 1, !dbg !1037
  %tobool38 = icmp ne i8 %59, 0, !dbg !1037
  br i1 %tobool38, label %if.then39, label %if.end45, !dbg !1039

if.then39:                                        ; preds = %if.end37
  %call40 = call ptr @acpi_ut_create_integer_object(i64 noundef 0) #5, !dbg !1040
  %60 = load ptr, ptr %walk_state, align 8, !dbg !1042
  %implicit_return_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %60, i32 0, i32 34, !dbg !1043
  store ptr %call40, ptr %implicit_return_obj, align 8, !dbg !1044
  %61 = load ptr, ptr %walk_state, align 8, !dbg !1045
  %implicit_return_obj41 = getelementptr inbounds %struct.acpi_walk_state, ptr %61, i32 0, i32 34, !dbg !1047
  %62 = load ptr, ptr %implicit_return_obj41, align 8, !dbg !1047
  %tobool42 = icmp ne ptr %62, null, !dbg !1045
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !1048

if.then43:                                        ; preds = %if.then39
  store i32 4, ptr %status, align 4, !dbg !1049
  %63 = load ptr, ptr %walk_state, align 8, !dbg !1051
  call void @acpi_ds_delete_walk_state(ptr noundef %63) #5, !dbg !1052
  br label %cleanup, !dbg !1053

if.end44:                                         ; preds = %if.then39
  br label %if.end45, !dbg !1054

if.end45:                                         ; preds = %if.end44, %if.end37
  %64 = load ptr, ptr %walk_state, align 8, !dbg !1055
  %call46 = call i32 @acpi_ps_parse_aml(ptr noundef %64) #5, !dbg !1056
  store i32 %call46, ptr %status, align 4, !dbg !1057
  br label %cleanup, !dbg !1058

cleanup:                                          ; preds = %if.end45, %if.then43, %if.then34, %if.then23, %if.then14, %if.then9
  call void @llvm.dbg.label(metadata !911), !dbg !1059
  %65 = load ptr, ptr %op, align 8, !dbg !1060
  call void @acpi_ps_delete_parse_tree(ptr noundef %65) #5, !dbg !1061
  %66 = load ptr, ptr %info.addr, align 8, !dbg !1062
  call void @acpi_ps_update_parameter_list(ptr noundef %66, i16 noundef zeroext 1) #5, !dbg !1063
  %67 = load i32, ptr %status, align 4, !dbg !1064
  %tobool47 = icmp ne i32 %67, 0, !dbg !1064
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !1066

if.then48:                                        ; preds = %cleanup
  %68 = load i32, ptr %status, align 4, !dbg !1067
  store i32 %68, ptr %retval, align 4, !dbg !1067
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !1067

if.end49:                                         ; preds = %cleanup
  %69 = load ptr, ptr %info.addr, align 8, !dbg !1069
  %return_object50 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %69, i32 0, i32 7, !dbg !1071
  %70 = load ptr, ptr %return_object50, align 8, !dbg !1071
  %tobool51 = icmp ne ptr %70, null, !dbg !1069
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !1072

if.then52:                                        ; preds = %if.end49
  store i32 16385, ptr %status, align 4, !dbg !1073
  br label %if.end53, !dbg !1075

if.end53:                                         ; preds = %if.then52, %if.end49
  %71 = load i32, ptr %status, align 4, !dbg !1076
  store i32 %71, ptr %retval, align 4, !dbg !1076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !1076

cleanup54:                                        ; preds = %if.end53, %if.then48, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %walk_state) #4, !dbg !1077
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #4, !dbg !1077
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1077
  %72 = load i32, ptr %retval, align 4, !dbg !1077
  ret i32 %72, !dbg !1077
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1078 dso_local void @acpi_tb_check_dsdt_header() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1082 dso_local i32 @acpi_ds_begin_method_execution(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ps_update_parameter_list(ptr noundef %info, i16 noundef zeroext %action) #0 align 16 !dbg !1086 {
entry:
  %info.addr = alloca ptr, align 8
  %action.addr = alloca i16, align 2
  %i = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1090, metadata !DIExpression()), !dbg !1093
  store i16 %action, ptr %action.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !1091, metadata !DIExpression()), !dbg !1094
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !1095
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1092, metadata !DIExpression()), !dbg !1096
  %0 = load ptr, ptr %info.addr, align 8, !dbg !1097
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, ptr %0, i32 0, i32 2, !dbg !1099
  %1 = load ptr, ptr %parameters, align 8, !dbg !1099
  %tobool = icmp ne ptr %1, null, !dbg !1097
  br i1 %tobool, label %if.then, label %if.end, !dbg !1100

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !1101
  br label %for.cond, !dbg !1104

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load ptr, ptr %info.addr, align 8, !dbg !1105
  %parameters1 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %2, i32 0, i32 2, !dbg !1107
  %3 = load ptr, ptr %parameters1, align 8, !dbg !1107
  %4 = load i32, ptr %i, align 4, !dbg !1108
  %idxprom = zext i32 %4 to i64, !dbg !1105
  %arrayidx = getelementptr ptr, ptr %3, i64 %idxprom, !dbg !1105
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1105
  %tobool2 = icmp ne ptr %5, null, !dbg !1109
  br i1 %tobool2, label %for.body, label %for.end, !dbg !1109

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %info.addr, align 8, !dbg !1110
  %parameters3 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %6, i32 0, i32 2, !dbg !1112
  %7 = load ptr, ptr %parameters3, align 8, !dbg !1112
  %8 = load i32, ptr %i, align 4, !dbg !1113
  %idxprom4 = zext i32 %8 to i64, !dbg !1110
  %arrayidx5 = getelementptr ptr, ptr %7, i64 %idxprom4, !dbg !1110
  %9 = load ptr, ptr %arrayidx5, align 8, !dbg !1110
  %10 = load i16, ptr %action.addr, align 2, !dbg !1114
  %call = call i32 @acpi_ut_update_object_reference(ptr noundef %9, i16 noundef zeroext %10) #5, !dbg !1115
  br label %for.inc, !dbg !1116

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !1117
  %inc = add i32 %11, 1, !dbg !1117
  store i32 %inc, ptr %i, align 4, !dbg !1117
  br label %for.cond, !dbg !1118, !llvm.loop !1119

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !1123

if.end:                                           ; preds = %for.end, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !1124
  ret void, !dbg !1124
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1125 dso_local ptr @acpi_ps_create_scope_op(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1129 dso_local ptr @acpi_ds_create_walk_state(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1132 dso_local i32 @acpi_ds_init_aml_walk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1135 dso_local void @acpi_ds_delete_walk_state(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1138 dso_local void @acpi_ds_scope_stack_clear(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1139 dso_local void @acpi_ps_cleanup_scope(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1143 dso_local void @acpi_ds_terminate_control_method(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1146 dso_local ptr @acpi_ut_create_integer_object(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1149 dso_local i32 @acpi_ps_parse_aml(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1150 dso_local void @acpi_ps_delete_parse_tree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ps_execute_table(ptr noundef %info) #0 align 16 !dbg !1153 {
entry:
  %info.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %op = alloca ptr, align 8
  %walk_state = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1155, metadata !DIExpression()), !dbg !1160
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1161
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1156, metadata !DIExpression()), !dbg !1162
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #4, !dbg !1163
  call void @llvm.dbg.declare(metadata ptr %op, metadata !1157, metadata !DIExpression()), !dbg !1164
  store ptr null, ptr %op, align 8, !dbg !1164
  call void @llvm.lifetime.start.p0(i64 8, ptr %walk_state) #4, !dbg !1165
  call void @llvm.dbg.declare(metadata ptr %walk_state, metadata !1158, metadata !DIExpression()), !dbg !1166
  store ptr null, ptr %walk_state, align 8, !dbg !1166
  %0 = load ptr, ptr %info.addr, align 8, !dbg !1167
  %obj_desc = getelementptr inbounds %struct.acpi_evaluate_info, ptr %0, i32 0, i32 4, !dbg !1168
  %1 = load ptr, ptr %obj_desc, align 8, !dbg !1168
  %aml_start = getelementptr inbounds %struct.acpi_object_method, ptr %1, i32 0, i32 10, !dbg !1169
  %2 = load ptr, ptr %aml_start, align 8, !dbg !1169
  %call = call ptr @acpi_ps_create_scope_op(ptr noundef %2) #5, !dbg !1170
  store ptr %call, ptr %op, align 8, !dbg !1171
  %3 = load ptr, ptr %op, align 8, !dbg !1172
  %tobool = icmp ne ptr %3, null, !dbg !1172
  br i1 %tobool, label %if.end, label %if.then, !dbg !1174

if.then:                                          ; preds = %entry
  store i32 4, ptr %status, align 4, !dbg !1175
  br label %cleanup, !dbg !1177

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %info.addr, align 8, !dbg !1178
  %obj_desc1 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %4, i32 0, i32 4, !dbg !1179
  %5 = load ptr, ptr %obj_desc1, align 8, !dbg !1179
  %owner_id = getelementptr inbounds %struct.acpi_object_method, ptr %5, i32 0, i32 13, !dbg !1180
  %6 = load i16, ptr %owner_id, align 4, !dbg !1180
  %call2 = call ptr @acpi_ds_create_walk_state(i16 noundef zeroext %6, ptr noundef null, ptr noundef null, ptr noundef null) #5, !dbg !1181
  store ptr %call2, ptr %walk_state, align 8, !dbg !1182
  %7 = load ptr, ptr %walk_state, align 8, !dbg !1183
  %tobool3 = icmp ne ptr %7, null, !dbg !1183
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1185

if.then4:                                         ; preds = %if.end
  store i32 4, ptr %status, align 4, !dbg !1186
  br label %cleanup, !dbg !1188

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %walk_state, align 8, !dbg !1189
  %9 = load ptr, ptr %op, align 8, !dbg !1190
  %10 = load ptr, ptr %info.addr, align 8, !dbg !1191
  %node = getelementptr inbounds %struct.acpi_evaluate_info, ptr %10, i32 0, i32 3, !dbg !1192
  %11 = load ptr, ptr %node, align 8, !dbg !1192
  %12 = load ptr, ptr %info.addr, align 8, !dbg !1193
  %obj_desc6 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %12, i32 0, i32 4, !dbg !1194
  %13 = load ptr, ptr %obj_desc6, align 8, !dbg !1194
  %aml_start7 = getelementptr inbounds %struct.acpi_object_method, ptr %13, i32 0, i32 10, !dbg !1195
  %14 = load ptr, ptr %aml_start7, align 8, !dbg !1195
  %15 = load ptr, ptr %info.addr, align 8, !dbg !1196
  %obj_desc8 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %15, i32 0, i32 4, !dbg !1197
  %16 = load ptr, ptr %obj_desc8, align 8, !dbg !1197
  %aml_length = getelementptr inbounds %struct.acpi_object_method, ptr %16, i32 0, i32 12, !dbg !1198
  %17 = load i32, ptr %aml_length, align 8, !dbg !1198
  %18 = load ptr, ptr %info.addr, align 8, !dbg !1199
  %19 = load ptr, ptr %info.addr, align 8, !dbg !1200
  %pass_number = getelementptr inbounds %struct.acpi_evaluate_info, ptr %19, i32 0, i32 13, !dbg !1201
  %20 = load i8, ptr %pass_number, align 4, !dbg !1201
  %call9 = call i32 @acpi_ds_init_aml_walk(ptr noundef %8, ptr noundef %9, ptr noundef %11, ptr noundef %14, i32 noundef %17, ptr noundef %18, i8 noundef zeroext %20) #5, !dbg !1202
  store i32 %call9, ptr %status, align 4, !dbg !1203
  %21 = load i32, ptr %status, align 4, !dbg !1204
  %tobool10 = icmp ne i32 %21, 0, !dbg !1204
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !1206

if.then11:                                        ; preds = %if.end5
  br label %cleanup, !dbg !1207

if.end12:                                         ; preds = %if.end5
  %22 = load ptr, ptr %info.addr, align 8, !dbg !1209
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %22, i32 0, i32 5, !dbg !1210
  %23 = load ptr, ptr %full_pathname, align 8, !dbg !1210
  %24 = load ptr, ptr %walk_state, align 8, !dbg !1211
  %method_pathname = getelementptr inbounds %struct.acpi_walk_state, ptr %24, i32 0, i32 39, !dbg !1212
  store ptr %23, ptr %method_pathname, align 8, !dbg !1213
  %25 = load ptr, ptr %walk_state, align 8, !dbg !1214
  %method_is_nested = getelementptr inbounds %struct.acpi_walk_state, ptr %25, i32 0, i32 25, !dbg !1215
  store i8 0, ptr %method_is_nested, align 2, !dbg !1216
  %26 = load ptr, ptr %info.addr, align 8, !dbg !1217
  %obj_desc13 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %26, i32 0, i32 4, !dbg !1219
  %27 = load ptr, ptr %obj_desc13, align 8, !dbg !1219
  %info_flags = getelementptr inbounds %struct.acpi_object_method, ptr %27, i32 0, i32 5, !dbg !1220
  %28 = load i8, ptr %info_flags, align 1, !dbg !1220
  %conv = zext i8 %28 to i32, !dbg !1217
  %and = and i32 %conv, 1, !dbg !1221
  %tobool14 = icmp ne i32 %and, 0, !dbg !1221
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1222

if.then15:                                        ; preds = %if.end12
  %29 = load ptr, ptr %walk_state, align 8, !dbg !1223
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, ptr %29, i32 0, i32 20, !dbg !1225
  %30 = load i32, ptr %parse_flags, align 4, !dbg !1226
  %or = or i32 %30, 1024, !dbg !1226
  store i32 %or, ptr %parse_flags, align 4, !dbg !1226
  br label %if.end16, !dbg !1227

if.end16:                                         ; preds = %if.then15, %if.end12
  %31 = load ptr, ptr %info.addr, align 8, !dbg !1228
  %node17 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %31, i32 0, i32 3, !dbg !1230
  %32 = load ptr, ptr %node17, align 8, !dbg !1230
  %tobool18 = icmp ne ptr %32, null, !dbg !1228
  br i1 %tobool18, label %land.lhs.true, label %if.end27, !dbg !1231

land.lhs.true:                                    ; preds = %if.end16
  %33 = load ptr, ptr %info.addr, align 8, !dbg !1232
  %node19 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %33, i32 0, i32 3, !dbg !1233
  %34 = load ptr, ptr %node19, align 8, !dbg !1233
  %35 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1234
  %cmp = icmp ne ptr %34, %35, !dbg !1235
  br i1 %cmp, label %if.then21, label %if.end27, !dbg !1236

if.then21:                                        ; preds = %land.lhs.true
  %36 = load ptr, ptr %info.addr, align 8, !dbg !1237
  %node22 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %36, i32 0, i32 3, !dbg !1239
  %37 = load ptr, ptr %node22, align 8, !dbg !1239
  %38 = load ptr, ptr %walk_state, align 8, !dbg !1240
  %call23 = call i32 @acpi_ds_scope_stack_push(ptr noundef %37, i32 noundef 8, ptr noundef %38) #5, !dbg !1241
  store i32 %call23, ptr %status, align 4, !dbg !1242
  %39 = load i32, ptr %status, align 4, !dbg !1243
  %tobool24 = icmp ne i32 %39, 0, !dbg !1243
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1245

if.then25:                                        ; preds = %if.then21
  br label %cleanup, !dbg !1246

if.end26:                                         ; preds = %if.then21
  br label %if.end27, !dbg !1248

if.end27:                                         ; preds = %if.end26, %land.lhs.true, %if.end16
  call void @acpi_ex_enter_interpreter() #5, !dbg !1249
  %40 = load ptr, ptr %walk_state, align 8, !dbg !1250
  %call28 = call i32 @acpi_ps_parse_aml(ptr noundef %40) #5, !dbg !1251
  store i32 %call28, ptr %status, align 4, !dbg !1252
  call void @acpi_ex_exit_interpreter() #5, !dbg !1253
  store ptr null, ptr %walk_state, align 8, !dbg !1254
  br label %cleanup, !dbg !1255

cleanup:                                          ; preds = %if.end27, %if.then25, %if.then11, %if.then4, %if.then
  call void @llvm.dbg.label(metadata !1159), !dbg !1256
  %41 = load ptr, ptr %walk_state, align 8, !dbg !1257
  %tobool29 = icmp ne ptr %41, null, !dbg !1257
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !1259

if.then30:                                        ; preds = %cleanup
  %42 = load ptr, ptr %walk_state, align 8, !dbg !1260
  call void @acpi_ds_delete_walk_state(ptr noundef %42) #5, !dbg !1262
  br label %if.end31, !dbg !1263

if.end31:                                         ; preds = %if.then30, %cleanup
  %43 = load ptr, ptr %op, align 8, !dbg !1264
  %tobool32 = icmp ne ptr %43, null, !dbg !1264
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !1266

if.then33:                                        ; preds = %if.end31
  %44 = load ptr, ptr %op, align 8, !dbg !1267
  call void @acpi_ps_delete_parse_tree(ptr noundef %44) #5, !dbg !1269
  br label %if.end34, !dbg !1270

if.end34:                                         ; preds = %if.then33, %if.end31
  %45 = load i32, ptr %status, align 4, !dbg !1271
  call void @llvm.lifetime.end.p0(i64 8, ptr %walk_state) #4, !dbg !1272
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #4, !dbg !1272
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1272
  ret i32 %45, !dbg !1271
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1273 dso_local i32 @acpi_ds_scope_stack_push(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1277 dso_local void @acpi_ex_enter_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1279 dso_local void @acpi_ex_exit_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1280 dso_local i32 @acpi_ut_update_object_reference(ptr noundef, i16 noundef zeroext) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.psxface.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22psxface\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/psxface.ll drivers/acpi/acpica/psxface.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/psxface.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8acbf62482b2f3be46e6f39f0894afc8")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 116, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1)
!8 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2)
!9 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3)
!10 = !{!11, !17, !20}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !12, line: 421, baseType: !13)
!12 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !5)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !19)
!19 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !14, line: 23, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !16, line: 31, baseType: !22)
!22 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 8, !"cf-protection-branch", i32 1}
!27 = !{i32 4, !"function_return_thunk_extern", i32 1}
!28 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!29 = !{i32 1, !"Code Model", i32 2}
!30 = !{i32 1, !"override-stack-alignment", i32 8}
!31 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!32 = distinct !DISubprogram(name: "acpi_debug_trace", scope: !1, file: !1, line: 42, type: !33, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !38)
!33 = !DISubroutineType(types: !34)
!34 = !{!11, !35, !13, !13, !13}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !{!39, !40, !41, !42, !43}
!39 = !DILocalVariable(name: "name", arg: 1, scope: !32, file: !1, line: 42, type: !35)
!40 = !DILocalVariable(name: "debug_level", arg: 2, scope: !32, file: !1, line: 42, type: !13)
!41 = !DILocalVariable(name: "debug_layer", arg: 3, scope: !32, file: !1, line: 42, type: !13)
!42 = !DILocalVariable(name: "flags", arg: 4, scope: !32, file: !1, line: 42, type: !13)
!43 = !DILocalVariable(name: "status", scope: !32, file: !1, line: 44, type: !11)
!44 = !DILocation(line: 42, column: 30, scope: !32)
!45 = !DILocation(line: 42, column: 40, scope: !32)
!46 = !DILocation(line: 42, column: 57, scope: !32)
!47 = !DILocation(line: 42, column: 74, scope: !32)
!48 = !DILocation(line: 44, column: 2, scope: !32)
!49 = !DILocation(line: 44, column: 14, scope: !32)
!50 = !DILocation(line: 46, column: 11, scope: !32)
!51 = !DILocation(line: 46, column: 9, scope: !32)
!52 = !DILocation(line: 47, column: 6, scope: !53)
!53 = distinct !DILexicalBlock(scope: !32, file: !1, line: 47, column: 6)
!54 = !DILocation(line: 47, column: 6, scope: !32)
!55 = !DILocation(line: 48, column: 11, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 47, column: 28)
!57 = !DILocation(line: 48, column: 3, scope: !56)
!58 = !DILocation(line: 51, column: 31, scope: !32)
!59 = !DILocation(line: 51, column: 29, scope: !32)
!60 = !DILocation(line: 52, column: 25, scope: !32)
!61 = !DILocation(line: 52, column: 23, scope: !32)
!62 = !DILocation(line: 53, column: 29, scope: !32)
!63 = !DILocation(line: 53, column: 27, scope: !32)
!64 = !DILocation(line: 54, column: 29, scope: !32)
!65 = !DILocation(line: 54, column: 27, scope: !32)
!66 = !DILocation(line: 55, column: 9, scope: !32)
!67 = !DILocation(line: 57, column: 8, scope: !32)
!68 = !DILocation(line: 58, column: 10, scope: !32)
!69 = !DILocation(line: 58, column: 2, scope: !32)
!70 = !DILocation(line: 59, column: 1, scope: !32)
!71 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !72, file: !72, line: 646, type: !73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!72 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!73 = !DISubroutineType(types: !74)
!74 = !{!11, !75}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !4, line: 17, baseType: !13)
!76 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !72, file: !72, line: 648, type: !73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!77 = distinct !DISubprogram(name: "acpi_ps_execute_method", scope: !1, file: !1, line: 84, type: !78, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !906)
!78 = !DISubroutineType(types: !79)
!79 = !{!11, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !82, line: 152, size: 704, elements: !83)
!82 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!83 = !{!84, !846, !847, !848, !849, !850, !851, !897, !898, !899, !900, !901, !902, !903, !904, !905}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !81, file: !82, line: 155, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !4, line: 133, size: 384, elements: !87)
!87 = !{!88, !833, !834, !835, !836, !842, !843, !844, !845}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !86, file: !4, line: 134, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !91, line: 369, size: 576, elements: !92)
!91 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!92 = !{!93, !104, !117, !128, !142, !156, !166, !482, !499, !515, !528, !606, !618, !632, !642, !660, !682, !701, !720, !739, !752, !779, !796, !809, !823, !832}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !90, file: !91, line: 370, baseType: !94, size: 128)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !91, line: 73, size: 128, elements: !95)
!95 = !{!96, !97, !101, !102, !103}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !94, file: !91, line: 74, baseType: !89, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !91, line: 74, baseType: !98, size: 8, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !100)
!100 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !91, line: 74, baseType: !98, size: 8, offset: 72)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !94, file: !91, line: 74, baseType: !17, size: 16, offset: 80)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !91, line: 74, baseType: !98, size: 8, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !90, file: !91, line: 371, baseType: !105, size: 192)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !91, line: 76, size: 192, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !116}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !105, file: !91, line: 77, baseType: !89, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !105, file: !91, line: 77, baseType: !98, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !91, line: 77, baseType: !98, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !105, file: !91, line: 77, baseType: !17, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !91, line: 77, baseType: !98, size: 8, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !105, file: !91, line: 77, baseType: !113, size: 24, offset: 104)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 24, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 3)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !105, file: !91, line: 78, baseType: !20, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !90, file: !91, line: 372, baseType: !118, size: 256)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !91, line: 93, size: 256, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125, !127}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !118, file: !91, line: 94, baseType: !89, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !118, file: !91, line: 94, baseType: !98, size: 8, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !91, line: 94, baseType: !98, size: 8, offset: 72)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !118, file: !91, line: 94, baseType: !17, size: 16, offset: 80)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !91, line: 94, baseType: !98, size: 8, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !118, file: !91, line: 94, baseType: !126, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !118, file: !91, line: 94, baseType: !13, size: 32, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !90, file: !91, line: 373, baseType: !129, size: 384)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !91, line: 97, size: 384, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !138, !139, !140, !141}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !129, file: !91, line: 98, baseType: !89, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !129, file: !91, line: 98, baseType: !98, size: 8, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !91, line: 98, baseType: !98, size: 8, offset: 72)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !129, file: !91, line: 98, baseType: !17, size: 16, offset: 80)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !91, line: 98, baseType: !98, size: 8, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !129, file: !91, line: 98, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !129, file: !91, line: 98, baseType: !13, size: 32, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !129, file: !91, line: 99, baseType: !13, size: 32, offset: 224)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !129, file: !91, line: 100, baseType: !137, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !129, file: !91, line: 101, baseType: !85, size: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !90, file: !91, line: 374, baseType: !143, size: 384)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !91, line: 104, size: 384, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !153, !154, !155}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !143, file: !91, line: 105, baseType: !89, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !143, file: !91, line: 105, baseType: !98, size: 8, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !91, line: 105, baseType: !98, size: 8, offset: 72)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !143, file: !91, line: 105, baseType: !17, size: 16, offset: 80)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !143, file: !91, line: 105, baseType: !98, size: 8, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !143, file: !91, line: 105, baseType: !85, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !143, file: !91, line: 106, baseType: !152, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !143, file: !91, line: 107, baseType: !137, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !143, file: !91, line: 108, baseType: !13, size: 32, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !143, file: !91, line: 109, baseType: !13, size: 32, offset: 352)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !90, file: !91, line: 375, baseType: !157, size: 192)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !91, line: 118, size: 192, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !157, file: !91, line: 119, baseType: !89, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !157, file: !91, line: 119, baseType: !98, size: 8, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !157, file: !91, line: 119, baseType: !98, size: 8, offset: 72)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !157, file: !91, line: 119, baseType: !17, size: 16, offset: 80)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !157, file: !91, line: 119, baseType: !98, size: 8, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !157, file: !91, line: 119, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !90, file: !91, line: 376, baseType: !167, size: 448)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !91, line: 144, size: 448, elements: !168)
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !479, !480, !481}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !167, file: !91, line: 145, baseType: !89, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !167, file: !91, line: 145, baseType: !98, size: 8, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !167, file: !91, line: 145, baseType: !98, size: 8, offset: 72)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !167, file: !91, line: 145, baseType: !17, size: 16, offset: 80)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !167, file: !91, line: 145, baseType: !98, size: 8, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !167, file: !91, line: 145, baseType: !98, size: 8, offset: 104)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !167, file: !91, line: 146, baseType: !98, size: 8, offset: 112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !167, file: !91, line: 147, baseType: !98, size: 8, offset: 120)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !167, file: !91, line: 148, baseType: !89, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !167, file: !91, line: 149, baseType: !89, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !167, file: !91, line: 150, baseType: !137, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !167, file: !91, line: 154, baseType: !181, size: 64, offset: 320)
!181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !91, line: 151, size: 64, elements: !182)
!182 = !{!183, !478}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !181, file: !91, line: 152, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !4, line: 248, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!11, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !82, line: 37, size: 9024, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !424, !425, !426, !427, !428, !432, !434, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !461, !462, !463, !464, !465, !466, !467, !468, !470, !476}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !82, line: 38, baseType: !188, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !189, file: !82, line: 39, baseType: !98, size: 8, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !189, file: !82, line: 40, baseType: !98, size: 8, offset: 72)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !189, file: !82, line: 41, baseType: !17, size: 16, offset: 80)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !189, file: !82, line: 42, baseType: !98, size: 8, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !189, file: !82, line: 43, baseType: !98, size: 8, offset: 104)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !189, file: !82, line: 44, baseType: !98, size: 8, offset: 112)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !189, file: !82, line: 45, baseType: !199, size: 16, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !12, line: 445, baseType: !17)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !189, file: !82, line: 46, baseType: !98, size: 8, offset: 144)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !189, file: !82, line: 47, baseType: !98, size: 8, offset: 152)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !189, file: !82, line: 48, baseType: !98, size: 8, offset: 160)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !189, file: !82, line: 49, baseType: !98, size: 8, offset: 168)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !189, file: !82, line: 50, baseType: !98, size: 8, offset: 176)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !189, file: !82, line: 51, baseType: !98, size: 8, offset: 184)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !189, file: !82, line: 52, baseType: !98, size: 8, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !189, file: !82, line: 53, baseType: !98, size: 8, offset: 200)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !189, file: !82, line: 54, baseType: !137, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !189, file: !82, line: 55, baseType: !13, size: 32, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !189, file: !82, line: 56, baseType: !13, size: 32, offset: 352)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !189, file: !82, line: 57, baseType: !13, size: 32, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !189, file: !82, line: 58, baseType: !13, size: 32, offset: 416)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !189, file: !82, line: 60, baseType: !214, size: 640, offset: 448)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !4, line: 909, size: 640, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !305, !306, !422, !423}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !214, file: !4, line: 910, baseType: !137, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !214, file: !4, line: 911, baseType: !137, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !214, file: !4, line: 912, baseType: !137, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !214, file: !4, line: 913, baseType: !137, size: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !214, file: !4, line: 914, baseType: !137, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !214, file: !4, line: 915, baseType: !222, size: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !4, line: 891, size: 1600, elements: !224)
!224 = !{!225, !245, !261}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !223, file: !4, line: 892, baseType: !226, size: 448)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !4, line: 844, size: 448, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !244}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !226, file: !4, line: 845, baseType: !222, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !226, file: !4, line: 845, baseType: !98, size: 8, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !226, file: !4, line: 845, baseType: !98, size: 8, offset: 72)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !226, file: !4, line: 845, baseType: !17, size: 16, offset: 80)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !226, file: !4, line: 845, baseType: !137, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !4, line: 845, baseType: !222, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !226, file: !4, line: 845, baseType: !85, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !226, file: !4, line: 845, baseType: !236, size: 64, offset: 320)
!236 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !4, line: 732, size: 64, elements: !237)
!237 = !{!238, !239, !240, !241, !242, !243}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !236, file: !4, line: 733, baseType: !20, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !236, file: !4, line: 734, baseType: !13, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !236, file: !4, line: 735, baseType: !126, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !236, file: !4, line: 736, baseType: !137, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !4, line: 737, baseType: !126, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !236, file: !4, line: 738, baseType: !222, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !226, file: !4, line: 845, baseType: !98, size: 8, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !223, file: !4, line: 893, baseType: !246, size: 640)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !4, line: 851, size: 640, elements: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !246, file: !4, line: 852, baseType: !222, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !246, file: !4, line: 852, baseType: !98, size: 8, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !246, file: !4, line: 852, baseType: !98, size: 8, offset: 72)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !246, file: !4, line: 852, baseType: !17, size: 16, offset: 80)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !246, file: !4, line: 852, baseType: !137, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !246, file: !4, line: 852, baseType: !222, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !246, file: !4, line: 852, baseType: !85, size: 64, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !246, file: !4, line: 852, baseType: !236, size: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !246, file: !4, line: 852, baseType: !98, size: 8, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !246, file: !4, line: 852, baseType: !126, size: 64, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !246, file: !4, line: 853, baseType: !137, size: 64, offset: 512)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !246, file: !4, line: 854, baseType: !13, size: 32, offset: 576)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !246, file: !4, line: 855, baseType: !13, size: 32, offset: 608)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !223, file: !4, line: 894, baseType: !262, size: 1600)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !4, line: 862, size: 1600, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !262, file: !4, line: 863, baseType: !222, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !262, file: !4, line: 863, baseType: !98, size: 8, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !262, file: !4, line: 863, baseType: !98, size: 8, offset: 72)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !262, file: !4, line: 863, baseType: !17, size: 16, offset: 80)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !262, file: !4, line: 863, baseType: !137, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !262, file: !4, line: 863, baseType: !222, size: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !262, file: !4, line: 863, baseType: !85, size: 64, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !262, file: !4, line: 863, baseType: !236, size: 64, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !262, file: !4, line: 863, baseType: !98, size: 8, offset: 384)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !262, file: !4, line: 863, baseType: !222, size: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !262, file: !4, line: 864, baseType: !222, size: 64, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !262, file: !4, line: 865, baseType: !126, size: 64, offset: 576)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !262, file: !4, line: 866, baseType: !98, size: 8, offset: 640)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !262, file: !4, line: 867, baseType: !126, size: 64, offset: 704)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !262, file: !4, line: 868, baseType: !126, size: 64, offset: 768)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !262, file: !4, line: 869, baseType: !126, size: 64, offset: 832)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !262, file: !4, line: 870, baseType: !281, size: 32, offset: 896)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 4)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !262, file: !4, line: 871, baseType: !13, size: 32, offset: 928)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !262, file: !4, line: 872, baseType: !13, size: 32, offset: 960)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !262, file: !4, line: 873, baseType: !13, size: 32, offset: 992)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !262, file: !4, line: 874, baseType: !13, size: 32, offset: 1024)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !262, file: !4, line: 875, baseType: !13, size: 32, offset: 1056)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !262, file: !4, line: 876, baseType: !13, size: 32, offset: 1088)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !262, file: !4, line: 877, baseType: !13, size: 32, offset: 1120)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !262, file: !4, line: 878, baseType: !13, size: 32, offset: 1152)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !262, file: !4, line: 879, baseType: !13, size: 32, offset: 1184)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !262, file: !4, line: 880, baseType: !13, size: 32, offset: 1216)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !262, file: !4, line: 881, baseType: !13, size: 32, offset: 1248)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !262, file: !4, line: 882, baseType: !13, size: 32, offset: 1280)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !262, file: !4, line: 883, baseType: !13, size: 32, offset: 1312)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !262, file: !4, line: 884, baseType: !17, size: 16, offset: 1344)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !262, file: !4, line: 885, baseType: !98, size: 8, offset: 1360)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !262, file: !4, line: 886, baseType: !98, size: 8, offset: 1368)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !262, file: !4, line: 887, baseType: !98, size: 8, offset: 1376)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !262, file: !4, line: 888, baseType: !302, size: 160, offset: 1384)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 160, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 20)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !214, file: !4, line: 916, baseType: !85, size: 64, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !214, file: !4, line: 917, baseType: !307, size: 64, offset: 448)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !4, line: 679, size: 640, elements: !309)
!309 = !{!310, !318, !331, !340, !349, !362, !376, !388, !400}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !308, file: !4, line: 680, baseType: !311, size: 128)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !4, line: 575, size: 128, elements: !312)
!312 = !{!313, !314, !315, !316, !317}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !4, line: 576, baseType: !165, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !311, file: !4, line: 576, baseType: !98, size: 8, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !4, line: 576, baseType: !98, size: 8, offset: 72)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !311, file: !4, line: 576, baseType: !17, size: 16, offset: 80)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !311, file: !4, line: 576, baseType: !17, size: 16, offset: 96)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !308, file: !4, line: 681, baseType: !319, size: 384)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !4, line: 604, size: 384, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !4, line: 605, baseType: !165, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !4, line: 605, baseType: !98, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !4, line: 605, baseType: !98, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !4, line: 605, baseType: !17, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !4, line: 605, baseType: !17, size: 16, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !319, file: !4, line: 606, baseType: !17, size: 16, offset: 112)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !319, file: !4, line: 607, baseType: !222, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !319, file: !4, line: 608, baseType: !137, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !319, file: !4, line: 609, baseType: !137, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !319, file: !4, line: 610, baseType: !20, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !308, file: !4, line: 682, baseType: !332, size: 192)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !4, line: 582, size: 192, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !4, line: 583, baseType: !165, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !4, line: 583, baseType: !98, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !4, line: 583, baseType: !98, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !4, line: 583, baseType: !17, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !332, file: !4, line: 583, baseType: !17, size: 16, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !332, file: !4, line: 584, baseType: !89, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !308, file: !4, line: 683, baseType: !341, size: 192)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !4, line: 616, size: 192, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !4, line: 617, baseType: !165, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !341, file: !4, line: 617, baseType: !98, size: 8, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !341, file: !4, line: 617, baseType: !98, size: 8, offset: 72)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !341, file: !4, line: 617, baseType: !17, size: 16, offset: 80)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !341, file: !4, line: 617, baseType: !17, size: 16, offset: 96)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !341, file: !4, line: 618, baseType: !85, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !308, file: !4, line: 684, baseType: !350, size: 448)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !4, line: 621, size: 448, elements: !351)
!351 = !{!352, !353, !354, !355, !356, !357, !358, !359, !360, !361}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !4, line: 622, baseType: !165, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !350, file: !4, line: 622, baseType: !98, size: 8, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !350, file: !4, line: 622, baseType: !98, size: 8, offset: 72)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !350, file: !4, line: 622, baseType: !17, size: 16, offset: 80)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !350, file: !4, line: 622, baseType: !17, size: 16, offset: 96)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !350, file: !4, line: 623, baseType: !13, size: 32, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !350, file: !4, line: 624, baseType: !222, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !350, file: !4, line: 625, baseType: !137, size: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !350, file: !4, line: 626, baseType: !137, size: 64, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !350, file: !4, line: 627, baseType: !13, size: 32, offset: 384)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !308, file: !4, line: 685, baseType: !363, size: 512)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !4, line: 590, size: 512, elements: !364)
!364 = !{!365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !363, file: !4, line: 591, baseType: !165, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !363, file: !4, line: 591, baseType: !98, size: 8, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !363, file: !4, line: 591, baseType: !98, size: 8, offset: 72)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !363, file: !4, line: 591, baseType: !17, size: 16, offset: 80)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !363, file: !4, line: 591, baseType: !17, size: 16, offset: 96)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !363, file: !4, line: 592, baseType: !13, size: 32, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !363, file: !4, line: 593, baseType: !89, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !363, file: !4, line: 594, baseType: !89, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !363, file: !4, line: 595, baseType: !188, size: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !363, file: !4, line: 596, baseType: !165, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !363, file: !4, line: 597, baseType: !13, size: 32, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !308, file: !4, line: 686, baseType: !377, size: 320)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !4, line: 634, size: 320, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !4, line: 635, baseType: !165, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !377, file: !4, line: 635, baseType: !98, size: 8, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !377, file: !4, line: 635, baseType: !98, size: 8, offset: 72)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !377, file: !4, line: 635, baseType: !17, size: 16, offset: 80)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !377, file: !4, line: 635, baseType: !17, size: 16, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !377, file: !4, line: 636, baseType: !98, size: 8, offset: 112)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !377, file: !4, line: 637, baseType: !188, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !377, file: !4, line: 638, baseType: !89, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !377, file: !4, line: 639, baseType: !20, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !308, file: !4, line: 687, baseType: !389, size: 640)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !4, line: 646, size: 640, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !4, line: 647, baseType: !165, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !389, file: !4, line: 647, baseType: !98, size: 8, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !4, line: 647, baseType: !98, size: 8, offset: 72)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !389, file: !4, line: 647, baseType: !17, size: 16, offset: 80)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !389, file: !4, line: 647, baseType: !17, size: 16, offset: 96)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !389, file: !4, line: 648, baseType: !397, size: 512, offset: 128)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 512, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 8)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !308, file: !4, line: 688, baseType: !401, size: 320)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !4, line: 669, size: 320, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !409, !410, !411}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !401, file: !4, line: 670, baseType: !165, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !401, file: !4, line: 670, baseType: !98, size: 8, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !401, file: !4, line: 670, baseType: !98, size: 8, offset: 72)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !401, file: !4, line: 670, baseType: !17, size: 16, offset: 80)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !401, file: !4, line: 670, baseType: !17, size: 16, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !401, file: !4, line: 671, baseType: !98, size: 8, offset: 112)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !401, file: !4, line: 672, baseType: !85, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !401, file: !4, line: 673, baseType: !89, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !401, file: !4, line: 674, baseType: !412, size: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !4, line: 660, size: 128, elements: !414)
!414 = !{!415, !421}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !413, file: !4, line: 661, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !12, line: 1061, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !420, !13, !165}
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !12, line: 424, baseType: !165)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !413, file: !4, line: 662, baseType: !165, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !214, file: !4, line: 918, baseType: !222, size: 64, offset: 512)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !214, file: !4, line: 919, baseType: !13, size: 32, offset: 576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !189, file: !82, line: 61, baseType: !13, size: 32, offset: 1088)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !189, file: !82, line: 62, baseType: !13, size: 32, offset: 1120)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !189, file: !82, line: 63, baseType: !17, size: 16, offset: 1152)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !189, file: !82, line: 64, baseType: !98, size: 8, offset: 1168)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !189, file: !82, line: 66, baseType: !429, size: 2688, offset: 1216)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 2688, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 7)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !189, file: !82, line: 67, baseType: !433, size: 3072, offset: 3904)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 3072, elements: !398)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !189, file: !82, line: 68, baseType: !435, size: 576, offset: 6976)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 576, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 9)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !189, file: !82, line: 69, baseType: !152, size: 64, offset: 7552)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !189, file: !82, line: 71, baseType: !137, size: 64, offset: 7616)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !189, file: !82, line: 72, baseType: !152, size: 64, offset: 7680)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !189, file: !82, line: 73, baseType: !307, size: 64, offset: 7744)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !189, file: !82, line: 74, baseType: !85, size: 64, offset: 7808)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !189, file: !82, line: 75, baseType: !89, size: 64, offset: 7872)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !189, file: !82, line: 76, baseType: !85, size: 64, offset: 7936)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !189, file: !82, line: 77, baseType: !222, size: 64, offset: 8000)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !189, file: !82, line: 78, baseType: !89, size: 64, offset: 8064)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !189, file: !82, line: 79, baseType: !85, size: 64, offset: 8128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !189, file: !82, line: 80, baseType: !126, size: 64, offset: 8192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !189, file: !82, line: 81, baseType: !222, size: 64, offset: 8256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !189, file: !82, line: 82, baseType: !451, size: 64, offset: 8320)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !4, line: 718, size: 128, elements: !454)
!454 = !{!455, !456, !457, !458, !459, !460}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !453, file: !4, line: 722, baseType: !13, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !453, file: !4, line: 723, baseType: !13, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !453, file: !4, line: 724, baseType: !17, size: 16, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !453, file: !4, line: 725, baseType: !98, size: 8, offset: 80)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !453, file: !4, line: 726, baseType: !98, size: 8, offset: 88)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !453, file: !4, line: 727, baseType: !98, size: 8, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !189, file: !82, line: 83, baseType: !222, size: 64, offset: 8384)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !189, file: !82, line: 84, baseType: !89, size: 64, offset: 8448)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !189, file: !82, line: 85, baseType: !307, size: 64, offset: 8512)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !189, file: !82, line: 86, baseType: !89, size: 64, offset: 8576)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !189, file: !82, line: 87, baseType: !307, size: 64, offset: 8640)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !189, file: !82, line: 88, baseType: !222, size: 64, offset: 8704)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !189, file: !82, line: 89, baseType: !222, size: 64, offset: 8768)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !189, file: !82, line: 90, baseType: !469, size: 64, offset: 8832)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !189, file: !82, line: 91, baseType: !471, size: 64, offset: 8896)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !4, line: 652, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!11, !188, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !189, file: !82, line: 92, baseType: !477, size: 64, offset: 8960)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !4, line: 656, baseType: !185)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !181, file: !91, line: 153, baseType: !89, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !167, file: !91, line: 156, baseType: !13, size: 32, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !167, file: !91, line: 157, baseType: !199, size: 16, offset: 416)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !167, file: !91, line: 158, baseType: !98, size: 8, offset: 432)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !90, file: !91, line: 377, baseType: !483, size: 576)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !91, line: 122, size: 576, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !483, file: !91, line: 123, baseType: !89, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !483, file: !91, line: 123, baseType: !98, size: 8, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !483, file: !91, line: 123, baseType: !98, size: 8, offset: 72)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !483, file: !91, line: 123, baseType: !17, size: 16, offset: 80)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !483, file: !91, line: 123, baseType: !98, size: 8, offset: 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !483, file: !91, line: 123, baseType: !98, size: 8, offset: 104)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !483, file: !91, line: 124, baseType: !17, size: 16, offset: 112)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !483, file: !91, line: 125, baseType: !165, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !483, file: !91, line: 126, baseType: !20, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !483, file: !91, line: 127, baseType: !469, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !483, file: !91, line: 128, baseType: !89, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !483, file: !91, line: 129, baseType: !89, size: 64, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !483, file: !91, line: 130, baseType: !85, size: 64, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !483, file: !91, line: 131, baseType: !98, size: 8, offset: 512)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !90, file: !91, line: 378, baseType: !500, size: 512)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !91, line: 134, size: 512, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !513, !514}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !500, file: !91, line: 135, baseType: !89, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !500, file: !91, line: 135, baseType: !98, size: 8, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !500, file: !91, line: 135, baseType: !98, size: 8, offset: 72)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !500, file: !91, line: 135, baseType: !17, size: 16, offset: 80)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !91, line: 135, baseType: !98, size: 8, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !500, file: !91, line: 135, baseType: !98, size: 8, offset: 104)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !500, file: !91, line: 136, baseType: !85, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !500, file: !91, line: 137, baseType: !89, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !500, file: !91, line: 138, baseType: !89, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !500, file: !91, line: 139, baseType: !512, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !12, line: 129, baseType: !20)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !500, file: !91, line: 140, baseType: !13, size: 32, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !500, file: !91, line: 141, baseType: !165, size: 64, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !90, file: !91, line: 379, baseType: !516, size: 320)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !91, line: 185, size: 320, elements: !517)
!517 = !{!518, !519, !520, !521, !522, !523, !527}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !516, file: !91, line: 186, baseType: !89, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !516, file: !91, line: 186, baseType: !98, size: 8, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !516, file: !91, line: 186, baseType: !98, size: 8, offset: 72)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !516, file: !91, line: 186, baseType: !17, size: 16, offset: 80)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !516, file: !91, line: 186, baseType: !98, size: 8, offset: 96)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !516, file: !91, line: 186, baseType: !524, size: 128, offset: 128)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 128, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 2)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !516, file: !91, line: 186, baseType: !89, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !90, file: !91, line: 380, baseType: !529, size: 384)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !91, line: 188, size: 384, elements: !530)
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !529, file: !91, line: 189, baseType: !89, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !529, file: !91, line: 189, baseType: !98, size: 8, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !529, file: !91, line: 189, baseType: !98, size: 8, offset: 72)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !529, file: !91, line: 189, baseType: !17, size: 16, offset: 80)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !91, line: 189, baseType: !98, size: 8, offset: 96)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !529, file: !91, line: 190, baseType: !524, size: 128, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !529, file: !91, line: 190, baseType: !89, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !529, file: !91, line: 190, baseType: !539, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !4, line: 480, size: 576, elements: !541)
!541 = !{!542, !543, !544, !545, !553, !568, !600, !601, !602, !603, !604, !605}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !540, file: !4, line: 481, baseType: !85, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !540, file: !4, line: 482, baseType: !539, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !540, file: !4, line: 483, baseType: !539, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !540, file: !4, line: 484, baseType: !546, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !4, line: 497, size: 256, elements: !548)
!548 = !{!549, !550, !551, !552}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !547, file: !4, line: 498, baseType: !546, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !547, file: !4, line: 499, baseType: !546, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !547, file: !4, line: 500, baseType: !539, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !547, file: !4, line: 501, baseType: !13, size: 32, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !540, file: !4, line: 485, baseType: !554, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !4, line: 466, size: 320, elements: !556)
!556 = !{!557, !562, !563, !564, !565, !566, !567}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !555, file: !4, line: 467, baseType: !558, size: 128)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !4, line: 459, size: 128, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !558, file: !4, line: 460, baseType: !98, size: 8)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !558, file: !4, line: 461, baseType: !20, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !555, file: !4, line: 468, baseType: !558, size: 128, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !555, file: !4, line: 469, baseType: !17, size: 16, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !555, file: !4, line: 470, baseType: !98, size: 8, offset: 272)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !555, file: !4, line: 471, baseType: !98, size: 8, offset: 280)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !555, file: !4, line: 472, baseType: !98, size: 8, offset: 288)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !555, file: !4, line: 473, baseType: !98, size: 8, offset: 296)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !540, file: !4, line: 486, baseType: !569, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !4, line: 448, size: 192, elements: !571)
!571 = !{!572, !595, !596, !597, !598, !599}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !570, file: !4, line: 449, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !4, line: 438, size: 64, elements: !574)
!574 = !{!575, !576, !589}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !573, file: !4, line: 439, baseType: !85, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !573, file: !4, line: 440, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !4, line: 419, size: 256, elements: !579)
!579 = !{!580, !585, !586, !587, !588}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !578, file: !4, line: 420, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !12, line: 1058, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!13, !420, !13, !165}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !578, file: !4, line: 421, baseType: !165, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !578, file: !4, line: 422, baseType: !85, size: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !578, file: !4, line: 423, baseType: !98, size: 8, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !578, file: !4, line: 424, baseType: !98, size: 8, offset: 200)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !573, file: !4, line: 441, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !4, line: 429, size: 128, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !591, file: !4, line: 430, baseType: !85, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !591, file: !4, line: 431, baseType: !590, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !570, file: !4, line: 450, baseType: !554, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !570, file: !4, line: 451, baseType: !98, size: 8, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !570, file: !4, line: 452, baseType: !98, size: 8, offset: 136)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !570, file: !4, line: 453, baseType: !98, size: 8, offset: 144)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !570, file: !4, line: 454, baseType: !98, size: 8, offset: 152)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !540, file: !4, line: 487, baseType: !20, size: 64, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !540, file: !4, line: 488, baseType: !13, size: 32, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !540, file: !4, line: 489, baseType: !17, size: 16, offset: 480)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !540, file: !4, line: 490, baseType: !17, size: 16, offset: 496)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !540, file: !4, line: 491, baseType: !98, size: 8, offset: 512)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !540, file: !4, line: 492, baseType: !98, size: 8, offset: 520)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !90, file: !91, line: 381, baseType: !607, size: 384)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !91, line: 193, size: 384, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614, !615, !616, !617}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !607, file: !91, line: 194, baseType: !89, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !607, file: !91, line: 194, baseType: !98, size: 8, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !607, file: !91, line: 194, baseType: !98, size: 8, offset: 72)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !607, file: !91, line: 194, baseType: !17, size: 16, offset: 80)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !607, file: !91, line: 194, baseType: !98, size: 8, offset: 96)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !607, file: !91, line: 194, baseType: !524, size: 128, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !607, file: !91, line: 194, baseType: !89, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !607, file: !91, line: 194, baseType: !13, size: 32, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !607, file: !91, line: 195, baseType: !13, size: 32, offset: 352)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !90, file: !91, line: 382, baseType: !619, size: 384)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !91, line: 198, size: 384, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !619, file: !91, line: 199, baseType: !89, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !619, file: !91, line: 199, baseType: !98, size: 8, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !91, line: 199, baseType: !98, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !619, file: !91, line: 199, baseType: !17, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !91, line: 199, baseType: !98, size: 8, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !619, file: !91, line: 201, baseType: !98, size: 8, offset: 104)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !619, file: !91, line: 202, baseType: !98, size: 8, offset: 112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !619, file: !91, line: 203, baseType: !524, size: 128, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !619, file: !91, line: 203, baseType: !89, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !619, file: !91, line: 203, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !12, line: 128, baseType: !20)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !90, file: !91, line: 383, baseType: !633, size: 320)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !91, line: 206, size: 320, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !633, file: !91, line: 207, baseType: !89, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !633, file: !91, line: 207, baseType: !98, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !91, line: 207, baseType: !98, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !633, file: !91, line: 207, baseType: !17, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !91, line: 207, baseType: !98, size: 8, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !633, file: !91, line: 207, baseType: !524, size: 128, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !633, file: !91, line: 207, baseType: !89, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !90, file: !91, line: 384, baseType: !643, size: 384)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !91, line: 234, size: 384, elements: !644)
!644 = !{!645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !643, file: !91, line: 235, baseType: !89, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !643, file: !91, line: 235, baseType: !98, size: 8, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !643, file: !91, line: 235, baseType: !98, size: 8, offset: 72)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !643, file: !91, line: 235, baseType: !17, size: 16, offset: 80)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !643, file: !91, line: 235, baseType: !98, size: 8, offset: 96)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !643, file: !91, line: 235, baseType: !98, size: 8, offset: 104)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !643, file: !91, line: 235, baseType: !98, size: 8, offset: 112)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !643, file: !91, line: 235, baseType: !98, size: 8, offset: 120)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !643, file: !91, line: 235, baseType: !85, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !643, file: !91, line: 235, baseType: !13, size: 32, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !643, file: !91, line: 235, baseType: !13, size: 32, offset: 224)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !643, file: !91, line: 235, baseType: !13, size: 32, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !643, file: !91, line: 235, baseType: !98, size: 8, offset: 288)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !643, file: !91, line: 235, baseType: !98, size: 8, offset: 296)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !643, file: !91, line: 235, baseType: !89, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !90, file: !91, line: 385, baseType: !661, size: 576)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !91, line: 238, size: 576, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !661, file: !91, line: 239, baseType: !89, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !661, file: !91, line: 239, baseType: !98, size: 8, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !91, line: 239, baseType: !98, size: 8, offset: 72)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !661, file: !91, line: 239, baseType: !17, size: 16, offset: 80)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !91, line: 239, baseType: !98, size: 8, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !661, file: !91, line: 239, baseType: !98, size: 8, offset: 104)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !661, file: !91, line: 239, baseType: !98, size: 8, offset: 112)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !661, file: !91, line: 239, baseType: !98, size: 8, offset: 120)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !661, file: !91, line: 239, baseType: !85, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !661, file: !91, line: 239, baseType: !13, size: 32, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !661, file: !91, line: 239, baseType: !13, size: 32, offset: 224)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !661, file: !91, line: 239, baseType: !13, size: 32, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !661, file: !91, line: 239, baseType: !98, size: 8, offset: 288)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !661, file: !91, line: 239, baseType: !98, size: 8, offset: 296)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !661, file: !91, line: 239, baseType: !17, size: 16, offset: 304)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !661, file: !91, line: 240, baseType: !89, size: 64, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !661, file: !91, line: 241, baseType: !137, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !661, file: !91, line: 242, baseType: !17, size: 16, offset: 448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !661, file: !91, line: 243, baseType: !137, size: 64, offset: 512)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !90, file: !91, line: 386, baseType: !683, size: 384)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !91, line: 263, size: 384, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !683, file: !91, line: 264, baseType: !89, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !683, file: !91, line: 264, baseType: !98, size: 8, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !683, file: !91, line: 264, baseType: !98, size: 8, offset: 72)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !683, file: !91, line: 264, baseType: !17, size: 16, offset: 80)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !683, file: !91, line: 264, baseType: !98, size: 8, offset: 96)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !683, file: !91, line: 264, baseType: !98, size: 8, offset: 104)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !683, file: !91, line: 264, baseType: !98, size: 8, offset: 112)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !683, file: !91, line: 264, baseType: !98, size: 8, offset: 120)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !683, file: !91, line: 264, baseType: !85, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !683, file: !91, line: 264, baseType: !13, size: 32, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !683, file: !91, line: 264, baseType: !13, size: 32, offset: 224)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !683, file: !91, line: 264, baseType: !13, size: 32, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !683, file: !91, line: 264, baseType: !98, size: 8, offset: 288)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !683, file: !91, line: 264, baseType: !98, size: 8, offset: 296)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !683, file: !91, line: 264, baseType: !98, size: 8, offset: 304)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !683, file: !91, line: 265, baseType: !89, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !90, file: !91, line: 387, baseType: !702, size: 448)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !91, line: 246, size: 448, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !702, file: !91, line: 247, baseType: !89, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !702, file: !91, line: 247, baseType: !98, size: 8, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !702, file: !91, line: 247, baseType: !98, size: 8, offset: 72)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !702, file: !91, line: 247, baseType: !17, size: 16, offset: 80)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !91, line: 247, baseType: !98, size: 8, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !702, file: !91, line: 247, baseType: !98, size: 8, offset: 104)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !702, file: !91, line: 247, baseType: !98, size: 8, offset: 112)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !702, file: !91, line: 247, baseType: !98, size: 8, offset: 120)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !702, file: !91, line: 247, baseType: !85, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !702, file: !91, line: 247, baseType: !13, size: 32, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !702, file: !91, line: 247, baseType: !13, size: 32, offset: 224)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !702, file: !91, line: 247, baseType: !13, size: 32, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !702, file: !91, line: 247, baseType: !98, size: 8, offset: 288)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !702, file: !91, line: 247, baseType: !98, size: 8, offset: 296)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !702, file: !91, line: 247, baseType: !89, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !702, file: !91, line: 248, baseType: !89, size: 64, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !90, file: !91, line: 388, baseType: !721, size: 448)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !91, line: 251, size: 448, elements: !722)
!722 = !{!723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !721, file: !91, line: 252, baseType: !89, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !721, file: !91, line: 252, baseType: !98, size: 8, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !721, file: !91, line: 252, baseType: !98, size: 8, offset: 72)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !721, file: !91, line: 252, baseType: !17, size: 16, offset: 80)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !721, file: !91, line: 252, baseType: !98, size: 8, offset: 96)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !721, file: !91, line: 252, baseType: !98, size: 8, offset: 104)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !721, file: !91, line: 252, baseType: !98, size: 8, offset: 112)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !721, file: !91, line: 252, baseType: !98, size: 8, offset: 120)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !721, file: !91, line: 252, baseType: !85, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !721, file: !91, line: 252, baseType: !13, size: 32, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !721, file: !91, line: 252, baseType: !13, size: 32, offset: 224)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !721, file: !91, line: 252, baseType: !13, size: 32, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !721, file: !91, line: 252, baseType: !98, size: 8, offset: 288)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !721, file: !91, line: 252, baseType: !98, size: 8, offset: 296)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !721, file: !91, line: 257, baseType: !89, size: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !721, file: !91, line: 258, baseType: !89, size: 64, offset: 384)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !90, file: !91, line: 389, baseType: !740, size: 512)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !91, line: 274, size: 512, elements: !741)
!741 = !{!742, !743, !744, !745, !746, !747, !748, !749, !750, !751}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !740, file: !91, line: 275, baseType: !89, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !740, file: !91, line: 275, baseType: !98, size: 8, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !740, file: !91, line: 275, baseType: !98, size: 8, offset: 72)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !740, file: !91, line: 275, baseType: !17, size: 16, offset: 80)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !740, file: !91, line: 275, baseType: !98, size: 8, offset: 96)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !740, file: !91, line: 275, baseType: !85, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !740, file: !91, line: 276, baseType: !13, size: 32, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !740, file: !91, line: 277, baseType: !416, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !740, file: !91, line: 278, baseType: !165, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !740, file: !91, line: 279, baseType: !524, size: 128, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !90, file: !91, line: 390, baseType: !753, size: 576)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !91, line: 282, size: 576, elements: !754)
!754 = !{!755, !756, !757, !758, !759, !760, !761, !762, !768, !769, !770, !771, !777, !778}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !753, file: !91, line: 283, baseType: !89, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !753, file: !91, line: 283, baseType: !98, size: 8, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !753, file: !91, line: 283, baseType: !98, size: 8, offset: 72)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !753, file: !91, line: 283, baseType: !17, size: 16, offset: 80)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !753, file: !91, line: 283, baseType: !98, size: 8, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !753, file: !91, line: 283, baseType: !98, size: 8, offset: 104)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !753, file: !91, line: 284, baseType: !98, size: 8, offset: 112)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !753, file: !91, line: 285, baseType: !763, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !12, line: 1093, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!11, !13, !512, !13, !767, !165, !165}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !753, file: !91, line: 286, baseType: !85, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !753, file: !91, line: 287, baseType: !165, size: 64, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !753, file: !91, line: 288, baseType: !165, size: 64, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !753, file: !91, line: 289, baseType: !772, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !12, line: 1126, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!11, !420, !13, !165, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !753, file: !91, line: 290, baseType: !89, size: 64, offset: 448)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !753, file: !91, line: 291, baseType: !89, size: 64, offset: 512)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !90, file: !91, line: 391, baseType: !780, size: 512)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !91, line: 309, size: 512, elements: !781)
!781 = !{!782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !780, file: !91, line: 310, baseType: !89, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !780, file: !91, line: 310, baseType: !98, size: 8, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !780, file: !91, line: 310, baseType: !98, size: 8, offset: 72)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !780, file: !91, line: 310, baseType: !17, size: 16, offset: 80)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !91, line: 310, baseType: !98, size: 8, offset: 96)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !780, file: !91, line: 310, baseType: !98, size: 8, offset: 104)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !780, file: !91, line: 311, baseType: !98, size: 8, offset: 112)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !780, file: !91, line: 312, baseType: !98, size: 8, offset: 120)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !780, file: !91, line: 313, baseType: !165, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !780, file: !91, line: 314, baseType: !85, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !780, file: !91, line: 315, baseType: !152, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !780, file: !91, line: 316, baseType: !137, size: 64, offset: 320)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !780, file: !91, line: 317, baseType: !137, size: 64, offset: 384)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !780, file: !91, line: 318, baseType: !13, size: 32, offset: 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !90, file: !91, line: 392, baseType: !797, size: 448)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !91, line: 342, size: 448, elements: !798)
!798 = !{!799, !800, !801, !802, !803, !804, !805, !806, !807, !808}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !797, file: !91, line: 343, baseType: !89, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !797, file: !91, line: 343, baseType: !98, size: 8, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !797, file: !91, line: 343, baseType: !98, size: 8, offset: 72)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !797, file: !91, line: 343, baseType: !17, size: 16, offset: 80)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !797, file: !91, line: 343, baseType: !98, size: 8, offset: 96)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !797, file: !91, line: 343, baseType: !85, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !797, file: !91, line: 344, baseType: !85, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !797, file: !91, line: 345, baseType: !165, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !797, file: !91, line: 346, baseType: !137, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !797, file: !91, line: 347, baseType: !13, size: 32, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !90, file: !91, line: 393, baseType: !810, size: 256)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !91, line: 352, size: 256, elements: !811)
!811 = !{!812, !813, !814, !815, !816, !817, !822}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !810, file: !91, line: 353, baseType: !89, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !810, file: !91, line: 353, baseType: !98, size: 8, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !810, file: !91, line: 353, baseType: !98, size: 8, offset: 72)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !810, file: !91, line: 353, baseType: !17, size: 16, offset: 80)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !810, file: !91, line: 353, baseType: !98, size: 8, offset: 96)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !810, file: !91, line: 353, baseType: !818, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !12, line: 1064, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !420, !165}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !810, file: !91, line: 354, baseType: !165, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !90, file: !91, line: 394, baseType: !824, size: 192)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !91, line: 359, size: 192, elements: !825)
!825 = !{!826, !827, !828, !829, !830, !831}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !824, file: !91, line: 360, baseType: !89, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !824, file: !91, line: 360, baseType: !98, size: 8, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !824, file: !91, line: 360, baseType: !98, size: 8, offset: 72)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !824, file: !91, line: 360, baseType: !17, size: 16, offset: 80)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !824, file: !91, line: 360, baseType: !98, size: 8, offset: 96)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !824, file: !91, line: 360, baseType: !89, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !90, file: !91, line: 401, baseType: !86, size: 384)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !86, file: !4, line: 135, baseType: !98, size: 8, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !4, line: 136, baseType: !98, size: 8, offset: 72)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !86, file: !4, line: 137, baseType: !17, size: 16, offset: 80)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !86, file: !4, line: 138, baseType: !837, size: 32, offset: 96)
!837 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !838, line: 328, size: 32, elements: !839)
!838 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !837, file: !838, line: 329, baseType: !13, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !837, file: !838, line: 330, baseType: !281, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !86, file: !4, line: 139, baseType: !85, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !86, file: !4, line: 140, baseType: !85, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !86, file: !4, line: 141, baseType: !85, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !86, file: !4, line: 142, baseType: !199, size: 16, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !81, file: !82, line: 156, baseType: !35, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !81, file: !82, line: 157, baseType: !152, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !81, file: !82, line: 159, baseType: !85, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !81, file: !82, line: 160, baseType: !89, size: 64, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !81, file: !82, line: 161, baseType: !126, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !81, file: !82, line: 163, baseType: !852, size: 64, offset: 384)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !4, line: 351, size: 56, elements: !855)
!855 = !{!856, !862, !871, !879, !888}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !854, file: !4, line: 352, baseType: !857, size: 56)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !4, line: 295, size: 56, elements: !858)
!858 = !{!859, !860, !861}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !857, file: !4, line: 296, baseType: !281, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !857, file: !4, line: 297, baseType: !17, size: 16, offset: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !857, file: !4, line: 298, baseType: !98, size: 8, offset: 48)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !854, file: !4, line: 353, baseType: !863, size: 56)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !4, line: 314, size: 56, elements: !864)
!864 = !{!865, !866, !867, !868, !869, !870}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !863, file: !4, line: 315, baseType: !98, size: 8)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !863, file: !4, line: 316, baseType: !98, size: 8, offset: 8)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !863, file: !4, line: 317, baseType: !98, size: 8, offset: 16)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !863, file: !4, line: 318, baseType: !98, size: 8, offset: 24)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !863, file: !4, line: 319, baseType: !98, size: 8, offset: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !863, file: !4, line: 320, baseType: !17, size: 16, offset: 40)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !854, file: !4, line: 354, baseType: !872, size: 56)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !4, line: 325, size: 56, elements: !873)
!873 = !{!874, !875, !876, !878}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !872, file: !4, line: 326, baseType: !98, size: 8)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !872, file: !4, line: 327, baseType: !98, size: 8, offset: 8)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !872, file: !4, line: 328, baseType: !877, size: 32, offset: 16)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 32, elements: !282)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !872, file: !4, line: 329, baseType: !98, size: 8, offset: 48)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !854, file: !4, line: 355, baseType: !880, size: 56)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !4, line: 334, size: 56, elements: !881)
!881 = !{!882, !883, !884, !886, !887}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !880, file: !4, line: 335, baseType: !98, size: 8)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !880, file: !4, line: 336, baseType: !98, size: 8, offset: 8)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !880, file: !4, line: 337, baseType: !885, size: 16, offset: 16)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 16, elements: !525)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !880, file: !4, line: 338, baseType: !98, size: 8, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !880, file: !4, line: 339, baseType: !17, size: 16, offset: 40)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !854, file: !4, line: 356, baseType: !889, size: 56)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !4, line: 342, size: 56, elements: !890)
!890 = !{!891, !892, !893, !894, !895, !896}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !889, file: !4, line: 343, baseType: !98, size: 8)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !889, file: !4, line: 344, baseType: !98, size: 8, offset: 8)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !889, file: !4, line: 345, baseType: !98, size: 8, offset: 16)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !889, file: !4, line: 346, baseType: !98, size: 8, offset: 24)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !889, file: !4, line: 347, baseType: !98, size: 8, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !889, file: !4, line: 348, baseType: !17, size: 16, offset: 40)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !81, file: !82, line: 164, baseType: !89, size: 64, offset: 448)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !81, file: !82, line: 165, baseType: !89, size: 64, offset: 512)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !81, file: !82, line: 167, baseType: !13, size: 32, offset: 576)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !81, file: !82, line: 168, baseType: !13, size: 32, offset: 608)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !81, file: !82, line: 169, baseType: !17, size: 16, offset: 640)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !81, file: !82, line: 170, baseType: !17, size: 16, offset: 656)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !81, file: !82, line: 171, baseType: !98, size: 8, offset: 672)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !81, file: !82, line: 172, baseType: !98, size: 8, offset: 680)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !81, file: !82, line: 173, baseType: !98, size: 8, offset: 688)
!906 = !{!907, !908, !909, !910, !911}
!907 = !DILocalVariable(name: "info", arg: 1, scope: !77, file: !1, line: 84, type: !80)
!908 = !DILocalVariable(name: "status", scope: !77, file: !1, line: 86, type: !11)
!909 = !DILocalVariable(name: "op", scope: !77, file: !1, line: 87, type: !222)
!910 = !DILocalVariable(name: "walk_state", scope: !77, file: !1, line: 88, type: !188)
!911 = !DILabel(scope: !77, name: "cleanup", file: !1, line: 194)
!912 = !DILocation(line: 84, column: 63, scope: !77)
!913 = !DILocation(line: 86, column: 2, scope: !77)
!914 = !DILocation(line: 86, column: 14, scope: !77)
!915 = !DILocation(line: 87, column: 2, scope: !77)
!916 = !DILocation(line: 87, column: 27, scope: !77)
!917 = !DILocation(line: 88, column: 2, scope: !77)
!918 = !DILocation(line: 88, column: 26, scope: !77)
!919 = !DILocation(line: 94, column: 2, scope: !77)
!920 = !DILocation(line: 98, column: 7, scope: !921)
!921 = distinct !DILexicalBlock(scope: !77, file: !1, line: 98, column: 6)
!922 = !DILocation(line: 98, column: 12, scope: !921)
!923 = !DILocation(line: 98, column: 16, scope: !921)
!924 = !DILocation(line: 98, column: 22, scope: !921)
!925 = !DILocation(line: 98, column: 6, scope: !77)
!926 = !DILocation(line: 99, column: 3, scope: !927)
!927 = distinct !DILexicalBlock(scope: !921, file: !1, line: 98, column: 28)
!928 = !DILocation(line: 105, column: 37, scope: !77)
!929 = !DILocation(line: 105, column: 43, scope: !77)
!930 = !DILocation(line: 105, column: 49, scope: !77)
!931 = !DILocation(line: 105, column: 55, scope: !77)
!932 = !DILocation(line: 105, column: 6, scope: !77)
!933 = !DILocation(line: 104, column: 9, scope: !77)
!934 = !DILocation(line: 106, column: 6, scope: !935)
!935 = distinct !DILexicalBlock(scope: !77, file: !1, line: 106, column: 6)
!936 = !DILocation(line: 106, column: 6, scope: !77)
!937 = !DILocation(line: 107, column: 3, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !1, line: 106, column: 28)
!939 = !DILocation(line: 113, column: 32, scope: !77)
!940 = !DILocation(line: 113, column: 2, scope: !77)
!941 = !DILocation(line: 124, column: 31, scope: !77)
!942 = !DILocation(line: 124, column: 37, scope: !77)
!943 = !DILocation(line: 124, column: 54, scope: !77)
!944 = !DILocation(line: 124, column: 7, scope: !77)
!945 = !DILocation(line: 124, column: 5, scope: !77)
!946 = !DILocation(line: 125, column: 7, scope: !947)
!947 = distinct !DILexicalBlock(scope: !77, file: !1, line: 125, column: 6)
!948 = !DILocation(line: 125, column: 6, scope: !77)
!949 = !DILocation(line: 126, column: 10, scope: !950)
!950 = distinct !DILexicalBlock(scope: !947, file: !1, line: 125, column: 11)
!951 = !DILocation(line: 127, column: 3, scope: !950)
!952 = !DILocation(line: 132, column: 2, scope: !77)
!953 = !DILocation(line: 132, column: 8, scope: !77)
!954 = !DILocation(line: 132, column: 20, scope: !77)
!955 = !DILocation(line: 134, column: 32, scope: !77)
!956 = !DILocation(line: 134, column: 38, scope: !77)
!957 = !DILocation(line: 134, column: 55, scope: !77)
!958 = !DILocation(line: 134, column: 6, scope: !77)
!959 = !DILocation(line: 133, column: 13, scope: !77)
!960 = !DILocation(line: 136, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !77, file: !1, line: 136, column: 6)
!962 = !DILocation(line: 136, column: 6, scope: !77)
!963 = !DILocation(line: 137, column: 10, scope: !964)
!964 = distinct !DILexicalBlock(scope: !961, file: !1, line: 136, column: 19)
!965 = !DILocation(line: 138, column: 3, scope: !964)
!966 = !DILocation(line: 141, column: 33, scope: !77)
!967 = !DILocation(line: 141, column: 45, scope: !77)
!968 = !DILocation(line: 141, column: 49, scope: !77)
!969 = !DILocation(line: 141, column: 55, scope: !77)
!970 = !DILocation(line: 142, column: 12, scope: !77)
!971 = !DILocation(line: 142, column: 18, scope: !77)
!972 = !DILocation(line: 142, column: 35, scope: !77)
!973 = !DILocation(line: 143, column: 12, scope: !77)
!974 = !DILocation(line: 143, column: 18, scope: !77)
!975 = !DILocation(line: 143, column: 35, scope: !77)
!976 = !DILocation(line: 143, column: 47, scope: !77)
!977 = !DILocation(line: 144, column: 12, scope: !77)
!978 = !DILocation(line: 144, column: 18, scope: !77)
!979 = !DILocation(line: 141, column: 11, scope: !77)
!980 = !DILocation(line: 141, column: 9, scope: !77)
!981 = !DILocation(line: 145, column: 6, scope: !982)
!982 = distinct !DILexicalBlock(scope: !77, file: !1, line: 145, column: 6)
!983 = !DILocation(line: 145, column: 6, scope: !77)
!984 = !DILocation(line: 146, column: 29, scope: !985)
!985 = distinct !DILexicalBlock(scope: !982, file: !1, line: 145, column: 28)
!986 = !DILocation(line: 146, column: 3, scope: !985)
!987 = !DILocation(line: 147, column: 3, scope: !985)
!988 = !DILocation(line: 150, column: 32, scope: !77)
!989 = !DILocation(line: 150, column: 38, scope: !77)
!990 = !DILocation(line: 150, column: 2, scope: !77)
!991 = !DILocation(line: 150, column: 14, scope: !77)
!992 = !DILocation(line: 150, column: 30, scope: !77)
!993 = !DILocation(line: 151, column: 2, scope: !77)
!994 = !DILocation(line: 151, column: 14, scope: !77)
!995 = !DILocation(line: 151, column: 31, scope: !77)
!996 = !DILocation(line: 153, column: 6, scope: !997)
!997 = distinct !DILexicalBlock(scope: !77, file: !1, line: 153, column: 6)
!998 = !DILocation(line: 153, column: 12, scope: !997)
!999 = !DILocation(line: 153, column: 29, scope: !997)
!1000 = !DILocation(line: 153, column: 40, scope: !997)
!1001 = !DILocation(line: 153, column: 6, scope: !77)
!1002 = !DILocation(line: 154, column: 3, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !997, file: !1, line: 153, column: 68)
!1004 = !DILocation(line: 154, column: 15, scope: !1003)
!1005 = !DILocation(line: 154, column: 27, scope: !1003)
!1006 = !DILocation(line: 155, column: 2, scope: !1003)
!1007 = !DILocation(line: 159, column: 6, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !77, file: !1, line: 159, column: 6)
!1009 = !DILocation(line: 159, column: 12, scope: !1008)
!1010 = !DILocation(line: 159, column: 29, scope: !1008)
!1011 = !DILocation(line: 159, column: 40, scope: !1008)
!1012 = !DILocation(line: 159, column: 6, scope: !77)
!1013 = !DILocation(line: 161, column: 7, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 159, column: 69)
!1015 = !DILocation(line: 161, column: 13, scope: !1014)
!1016 = !DILocation(line: 161, column: 30, scope: !1014)
!1017 = !DILocation(line: 161, column: 39, scope: !1014)
!1018 = !DILocation(line: 161, column: 54, scope: !1014)
!1019 = !DILocation(line: 160, column: 10, scope: !1014)
!1020 = !DILocation(line: 162, column: 25, scope: !1014)
!1021 = !DILocation(line: 162, column: 37, scope: !1014)
!1022 = !DILocation(line: 162, column: 3, scope: !1014)
!1023 = !DILocation(line: 162, column: 9, scope: !1014)
!1024 = !DILocation(line: 162, column: 23, scope: !1014)
!1025 = !DILocation(line: 166, column: 29, scope: !1014)
!1026 = !DILocation(line: 166, column: 3, scope: !1014)
!1027 = !DILocation(line: 167, column: 26, scope: !1014)
!1028 = !DILocation(line: 167, column: 38, scope: !1014)
!1029 = !DILocation(line: 167, column: 3, scope: !1014)
!1030 = !DILocation(line: 168, column: 36, scope: !1014)
!1031 = !DILocation(line: 168, column: 48, scope: !1014)
!1032 = !DILocation(line: 169, column: 8, scope: !1014)
!1033 = !DILocation(line: 168, column: 3, scope: !1014)
!1034 = !DILocation(line: 170, column: 29, scope: !1014)
!1035 = !DILocation(line: 170, column: 3, scope: !1014)
!1036 = !DILocation(line: 171, column: 3, scope: !1014)
!1037 = !DILocation(line: 178, column: 6, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !77, file: !1, line: 178, column: 6)
!1039 = !DILocation(line: 178, column: 6, scope: !77)
!1040 = !DILocation(line: 180, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 178, column: 41)
!1042 = !DILocation(line: 179, column: 3, scope: !1041)
!1043 = !DILocation(line: 179, column: 15, scope: !1041)
!1044 = !DILocation(line: 179, column: 35, scope: !1041)
!1045 = !DILocation(line: 181, column: 8, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 181, column: 7)
!1047 = !DILocation(line: 181, column: 20, scope: !1046)
!1048 = !DILocation(line: 181, column: 7, scope: !1041)
!1049 = !DILocation(line: 182, column: 11, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 181, column: 41)
!1051 = !DILocation(line: 183, column: 30, scope: !1050)
!1052 = !DILocation(line: 183, column: 4, scope: !1050)
!1053 = !DILocation(line: 184, column: 4, scope: !1050)
!1054 = !DILocation(line: 186, column: 2, scope: !1041)
!1055 = !DILocation(line: 190, column: 29, scope: !77)
!1056 = !DILocation(line: 190, column: 11, scope: !77)
!1057 = !DILocation(line: 190, column: 9, scope: !77)
!1058 = !DILocation(line: 190, column: 2, scope: !77)
!1059 = !DILocation(line: 194, column: 1, scope: !77)
!1060 = !DILocation(line: 195, column: 28, scope: !77)
!1061 = !DILocation(line: 195, column: 2, scope: !77)
!1062 = !DILocation(line: 199, column: 32, scope: !77)
!1063 = !DILocation(line: 199, column: 2, scope: !77)
!1064 = !DILocation(line: 203, column: 6, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !77, file: !1, line: 203, column: 6)
!1066 = !DILocation(line: 203, column: 6, scope: !77)
!1067 = !DILocation(line: 204, column: 3, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 203, column: 28)
!1069 = !DILocation(line: 211, column: 6, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !77, file: !1, line: 211, column: 6)
!1071 = !DILocation(line: 211, column: 12, scope: !1070)
!1072 = !DILocation(line: 211, column: 6, scope: !77)
!1073 = !DILocation(line: 216, column: 10, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 211, column: 27)
!1075 = !DILocation(line: 217, column: 2, scope: !1074)
!1076 = !DILocation(line: 219, column: 2, scope: !77)
!1077 = !DILocation(line: 220, column: 1, scope: !77)
!1078 = !DISubprogram(name: "acpi_tb_check_dsdt_header", scope: !1079, file: !1079, line: 127, type: !1080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1079 = !DIFile(filename: "drivers/acpi/acpica/actables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb0787ba059aac7511e633019dab5fb8")
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null}
!1082 = !DISubprogram(name: "acpi_ds_begin_method_execution", scope: !1083, file: !1083, line: 188, type: !1084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1083 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!11, !85, !89, !188}
!1086 = distinct !DISubprogram(name: "acpi_ps_update_parameter_list", scope: !1, file: !1, line: 324, type: !1087, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1089)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !80, !17}
!1089 = !{!1090, !1091, !1092}
!1090 = !DILocalVariable(name: "info", arg: 1, scope: !1086, file: !1, line: 324, type: !80)
!1091 = !DILocalVariable(name: "action", arg: 2, scope: !1086, file: !1, line: 324, type: !17)
!1092 = !DILocalVariable(name: "i", scope: !1086, file: !1, line: 326, type: !13)
!1093 = !DILocation(line: 324, column: 58, scope: !1086)
!1094 = !DILocation(line: 324, column: 68, scope: !1086)
!1095 = !DILocation(line: 326, column: 2, scope: !1086)
!1096 = !DILocation(line: 326, column: 6, scope: !1086)
!1097 = !DILocation(line: 328, column: 6, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 328, column: 6)
!1099 = !DILocation(line: 328, column: 12, scope: !1098)
!1100 = !DILocation(line: 328, column: 6, scope: !1086)
!1101 = !DILocation(line: 332, column: 10, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 332, column: 3)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 328, column: 24)
!1104 = !DILocation(line: 332, column: 8, scope: !1102)
!1105 = !DILocation(line: 332, column: 15, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 332, column: 3)
!1107 = !DILocation(line: 332, column: 21, scope: !1106)
!1108 = !DILocation(line: 332, column: 32, scope: !1106)
!1109 = !DILocation(line: 332, column: 3, scope: !1102)
!1110 = !DILocation(line: 336, column: 42, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 332, column: 41)
!1112 = !DILocation(line: 337, column: 14, scope: !1111)
!1113 = !DILocation(line: 337, column: 25, scope: !1111)
!1114 = !DILocation(line: 338, column: 14, scope: !1111)
!1115 = !DILocation(line: 336, column: 10, scope: !1111)
!1116 = !DILocation(line: 339, column: 3, scope: !1111)
!1117 = !DILocation(line: 332, column: 37, scope: !1106)
!1118 = !DILocation(line: 332, column: 3, scope: !1106)
!1119 = distinct !{!1119, !1109, !1120, !1121, !1122}
!1120 = !DILocation(line: 339, column: 3, scope: !1102)
!1121 = !{!"llvm.loop.mustprogress"}
!1122 = !{!"llvm.loop.unroll.disable"}
!1123 = !DILocation(line: 340, column: 2, scope: !1103)
!1124 = !DILocation(line: 341, column: 1, scope: !1086)
!1125 = !DISubprogram(name: "acpi_ps_create_scope_op", scope: !1126, file: !1126, line: 200, type: !1127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1126 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!222, !137}
!1129 = !DISubprogram(name: "acpi_ds_create_walk_state", scope: !1083, file: !1083, line: 294, type: !1130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!188, !199, !222, !89, !469}
!1132 = !DISubprogram(name: "acpi_ds_init_aml_walk", scope: !1083, file: !1083, line: 303, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!11, !188, !222, !85, !137, !13, !80, !98}
!1135 = !DISubprogram(name: "acpi_ds_delete_walk_state", scope: !1083, file: !1083, line: 314, type: !1136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !188}
!1138 = !DISubprogram(name: "acpi_ds_scope_stack_clear", scope: !1083, file: !1083, line: 283, type: !1136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1139 = !DISubprogram(name: "acpi_ps_cleanup_scope", scope: !1126, file: !1126, line: 158, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !1142}
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1143 = !DISubprogram(name: "acpi_ds_terminate_control_method", scope: !1083, file: !1083, line: 184, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !89, !188}
!1146 = !DISubprogram(name: "acpi_ut_create_integer_object", scope: !72, file: !72, line: 455, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!89, !20}
!1149 = !DISubprogram(name: "acpi_ps_parse_aml", scope: !1126, file: !1126, line: 117, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1150 = !DISubprogram(name: "acpi_ps_delete_parse_tree", scope: !1126, file: !1126, line: 195, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{null, !222}
!1153 = distinct !DISubprogram(name: "acpi_ps_execute_table", scope: !1, file: !1, line: 239, type: !78, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1154)
!1154 = !{!1155, !1156, !1157, !1158, !1159}
!1155 = !DILocalVariable(name: "info", arg: 1, scope: !1153, file: !1, line: 239, type: !80)
!1156 = !DILocalVariable(name: "status", scope: !1153, file: !1, line: 241, type: !11)
!1157 = !DILocalVariable(name: "op", scope: !1153, file: !1, line: 242, type: !222)
!1158 = !DILocalVariable(name: "walk_state", scope: !1153, file: !1, line: 243, type: !188)
!1159 = !DILabel(scope: !1153, name: "cleanup", file: !1, line: 299)
!1160 = !DILocation(line: 239, column: 62, scope: !1153)
!1161 = !DILocation(line: 241, column: 2, scope: !1153)
!1162 = !DILocation(line: 241, column: 14, scope: !1153)
!1163 = !DILocation(line: 242, column: 2, scope: !1153)
!1164 = !DILocation(line: 242, column: 27, scope: !1153)
!1165 = !DILocation(line: 243, column: 2, scope: !1153)
!1166 = !DILocation(line: 243, column: 26, scope: !1153)
!1167 = !DILocation(line: 249, column: 31, scope: !1153)
!1168 = !DILocation(line: 249, column: 37, scope: !1153)
!1169 = !DILocation(line: 249, column: 54, scope: !1153)
!1170 = !DILocation(line: 249, column: 7, scope: !1153)
!1171 = !DILocation(line: 249, column: 5, scope: !1153)
!1172 = !DILocation(line: 250, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 250, column: 6)
!1174 = !DILocation(line: 250, column: 6, scope: !1153)
!1175 = !DILocation(line: 251, column: 10, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !1, line: 250, column: 11)
!1177 = !DILocation(line: 252, column: 3, scope: !1176)
!1178 = !DILocation(line: 258, column: 32, scope: !1153)
!1179 = !DILocation(line: 258, column: 38, scope: !1153)
!1180 = !DILocation(line: 258, column: 55, scope: !1153)
!1181 = !DILocation(line: 258, column: 6, scope: !1153)
!1182 = !DILocation(line: 257, column: 13, scope: !1153)
!1183 = !DILocation(line: 260, column: 7, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 260, column: 6)
!1185 = !DILocation(line: 260, column: 6, scope: !1153)
!1186 = !DILocation(line: 261, column: 10, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1184, file: !1, line: 260, column: 19)
!1188 = !DILocation(line: 262, column: 3, scope: !1187)
!1189 = !DILocation(line: 265, column: 33, scope: !1153)
!1190 = !DILocation(line: 265, column: 45, scope: !1153)
!1191 = !DILocation(line: 265, column: 49, scope: !1153)
!1192 = !DILocation(line: 265, column: 55, scope: !1153)
!1193 = !DILocation(line: 266, column: 12, scope: !1153)
!1194 = !DILocation(line: 266, column: 18, scope: !1153)
!1195 = !DILocation(line: 266, column: 35, scope: !1153)
!1196 = !DILocation(line: 267, column: 12, scope: !1153)
!1197 = !DILocation(line: 267, column: 18, scope: !1153)
!1198 = !DILocation(line: 267, column: 35, scope: !1153)
!1199 = !DILocation(line: 267, column: 47, scope: !1153)
!1200 = !DILocation(line: 268, column: 12, scope: !1153)
!1201 = !DILocation(line: 268, column: 18, scope: !1153)
!1202 = !DILocation(line: 265, column: 11, scope: !1153)
!1203 = !DILocation(line: 265, column: 9, scope: !1153)
!1204 = !DILocation(line: 269, column: 6, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 269, column: 6)
!1206 = !DILocation(line: 269, column: 6, scope: !1153)
!1207 = !DILocation(line: 270, column: 3, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 269, column: 28)
!1209 = !DILocation(line: 273, column: 32, scope: !1153)
!1210 = !DILocation(line: 273, column: 38, scope: !1153)
!1211 = !DILocation(line: 273, column: 2, scope: !1153)
!1212 = !DILocation(line: 273, column: 14, scope: !1153)
!1213 = !DILocation(line: 273, column: 30, scope: !1153)
!1214 = !DILocation(line: 274, column: 2, scope: !1153)
!1215 = !DILocation(line: 274, column: 14, scope: !1153)
!1216 = !DILocation(line: 274, column: 31, scope: !1153)
!1217 = !DILocation(line: 276, column: 6, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 276, column: 6)
!1219 = !DILocation(line: 276, column: 12, scope: !1218)
!1220 = !DILocation(line: 276, column: 29, scope: !1218)
!1221 = !DILocation(line: 276, column: 40, scope: !1218)
!1222 = !DILocation(line: 276, column: 6, scope: !1153)
!1223 = !DILocation(line: 277, column: 3, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 276, column: 68)
!1225 = !DILocation(line: 277, column: 15, scope: !1224)
!1226 = !DILocation(line: 277, column: 27, scope: !1224)
!1227 = !DILocation(line: 278, column: 2, scope: !1224)
!1228 = !DILocation(line: 282, column: 6, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 282, column: 6)
!1230 = !DILocation(line: 282, column: 12, scope: !1229)
!1231 = !DILocation(line: 282, column: 17, scope: !1229)
!1232 = !DILocation(line: 282, column: 20, scope: !1229)
!1233 = !DILocation(line: 282, column: 26, scope: !1229)
!1234 = !DILocation(line: 282, column: 34, scope: !1229)
!1235 = !DILocation(line: 282, column: 31, scope: !1229)
!1236 = !DILocation(line: 282, column: 6, scope: !1153)
!1237 = !DILocation(line: 284, column: 32, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1229, file: !1, line: 282, column: 54)
!1239 = !DILocation(line: 284, column: 38, scope: !1238)
!1240 = !DILocation(line: 285, column: 11, scope: !1238)
!1241 = !DILocation(line: 284, column: 7, scope: !1238)
!1242 = !DILocation(line: 283, column: 10, scope: !1238)
!1243 = !DILocation(line: 286, column: 7, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1238, file: !1, line: 286, column: 7)
!1245 = !DILocation(line: 286, column: 7, scope: !1238)
!1246 = !DILocation(line: 287, column: 4, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 286, column: 29)
!1248 = !DILocation(line: 289, column: 2, scope: !1238)
!1249 = !DILocation(line: 294, column: 2, scope: !1153)
!1250 = !DILocation(line: 295, column: 29, scope: !1153)
!1251 = !DILocation(line: 295, column: 11, scope: !1153)
!1252 = !DILocation(line: 295, column: 9, scope: !1153)
!1253 = !DILocation(line: 296, column: 2, scope: !1153)
!1254 = !DILocation(line: 297, column: 13, scope: !1153)
!1255 = !DILocation(line: 297, column: 2, scope: !1153)
!1256 = !DILocation(line: 299, column: 1, scope: !1153)
!1257 = !DILocation(line: 300, column: 6, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 300, column: 6)
!1259 = !DILocation(line: 300, column: 6, scope: !1153)
!1260 = !DILocation(line: 301, column: 29, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !1, line: 300, column: 18)
!1262 = !DILocation(line: 301, column: 3, scope: !1261)
!1263 = !DILocation(line: 302, column: 2, scope: !1261)
!1264 = !DILocation(line: 303, column: 6, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 303, column: 6)
!1266 = !DILocation(line: 303, column: 6, scope: !1153)
!1267 = !DILocation(line: 304, column: 29, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1265, file: !1, line: 303, column: 10)
!1269 = !DILocation(line: 304, column: 3, scope: !1268)
!1270 = !DILocation(line: 305, column: 2, scope: !1268)
!1271 = !DILocation(line: 306, column: 2, scope: !1153)
!1272 = !DILocation(line: 307, column: 1, scope: !1153)
!1273 = !DISubprogram(name: "acpi_ds_scope_stack_push", scope: !1083, file: !1083, line: 277, type: !1274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!11, !85, !1276, !188}
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !12, line: 644, baseType: !13)
!1277 = !DISubprogram(name: "acpi_ex_enter_interpreter", scope: !1278, file: !1278, line: 464, type: !1080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1278 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1279 = !DISubprogram(name: "acpi_ex_exit_interpreter", scope: !1278, file: !1278, line: 466, type: !1080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1280 = !DISubprogram(name: "acpi_ut_update_object_reference", scope: !72, file: !72, line: 289, type: !1281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!11, !89, !17}
