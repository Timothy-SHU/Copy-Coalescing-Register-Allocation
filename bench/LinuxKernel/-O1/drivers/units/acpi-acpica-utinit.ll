; ModuleID = 'drivers/acpi/acpica/utinit.c'
source_filename = "drivers/acpi/acpica/utinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_mutex_info = type { ptr, i32, i64 }
%struct.acpi_global_notify_handler = type { ptr, ptr }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_gpe_xrupt_info = type { ptr, ptr, ptr, i32 }
%struct.acpi_gpe_block_info = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i8, i8 }

@acpi_gbl_address_range_list = external dso_local global [2 x ptr], align 16
@acpi_gbl_mutex_info = external dso_local global [6 x %struct.acpi_mutex_info], align 16
@acpi_gbl_owner_id_mask = external dso_local global [128 x i32], align 16
@acpi_method_count = external dso_local global i32, align 4
@acpi_sci_count = external dso_local global i32, align 4
@acpi_gpe_count = external dso_local global i32, align 4
@acpi_fixed_event_count = external dso_local global [5 x i32], align 16
@acpi_gbl_all_gpes_initialized = external dso_local global i8, align 1
@acpi_gbl_gpe_xrupt_list_head = external dso_local global ptr, align 8
@acpi_gbl_gpe_fadt_blocks = external dso_local global [2 x ptr], align 16
@acpi_current_gpe_count = external dso_local global i32, align 4
@acpi_gbl_global_event_handler = external dso_local global ptr, align 8
@acpi_gbl_sci_handler_list = external dso_local global ptr, align 8
@acpi_gbl_global_notify = external dso_local global [2 x %struct.acpi_global_notify_handler], align 16
@acpi_gbl_exception_handler = external dso_local global ptr, align 8
@acpi_gbl_init_handler = external dso_local global ptr, align 8
@acpi_gbl_table_handler = external dso_local global ptr, align 8
@acpi_gbl_interface_handler = external dso_local global ptr, align 8
@acpi_gbl_global_lock_semaphore = external dso_local global ptr, align 8
@acpi_gbl_global_lock_mutex = external dso_local global ptr, align 8
@acpi_gbl_global_lock_acquired = external dso_local global i8, align 1
@acpi_gbl_global_lock_handle = external dso_local global i16, align 2
@acpi_gbl_global_lock_present = external dso_local global i8, align 1
@acpi_gbl_DSDT = external dso_local global ptr, align 8
@acpi_gbl_cm_single_step = external dso_local global i8, align 1
@acpi_gbl_shutdown = external dso_local global i8, align 1
@acpi_gbl_ns_lookup_count = external dso_local global i32, align 4
@acpi_gbl_ps_find_count = external dso_local global i32, align 4
@acpi_gbl_acpi_hardware_present = external dso_local global i8, align 1
@acpi_gbl_last_owner_id_index = external dso_local global i8, align 1
@acpi_gbl_next_owner_id_offset = external dso_local global i8, align 1
@acpi_gbl_debugger_configuration = external dso_local global i8, align 1
@acpi_gbl_osi_mutex = external dso_local global ptr, align 8
@acpi_gbl_events_initialized = external dso_local global i8, align 1
@acpi_gbl_system_awake_and_running = external dso_local global i8, align 1
@acpi_gbl_root_node = external dso_local global ptr, align 8
@acpi_gbl_root_node_struct = external dso_local global %struct.acpi_namespace_node, align 8
@_acpi_module_name = internal constant [7 x i8] c"utinit\00", align 1, !dbg !0
@.str = private unnamed_addr constant [37 x i8] c"ACPI Subsystem is already terminated\00", align 1, !dbg !17
@acpi_gbl_startup_flags = external dso_local global i32, align 4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_init_globals() #0 align 16 !dbg !36 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !42
  call void @llvm.dbg.declare(metadata ptr %status, metadata !40, metadata !DIExpression()), !dbg !43
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !44
  call void @llvm.dbg.declare(metadata ptr %i, metadata !41, metadata !DIExpression()), !dbg !45
  %call = call i32 @acpi_ut_create_caches() #6, !dbg !46
  store i32 %call, ptr %status, align 4, !dbg !47
  %0 = load i32, ptr %status, align 4, !dbg !48
  %tobool = icmp ne i32 %0, 0, !dbg !48
  br i1 %tobool, label %if.then, label %if.end, !dbg !50

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !51
  store i32 %1, ptr %retval, align 4, !dbg !51
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !51

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !53
  br label %for.cond, !dbg !55

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !56
  %cmp = icmp ult i32 %2, 2, !dbg !58
  br i1 %cmp, label %for.body, label %for.end, !dbg !59

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !60
  %idxprom = zext i32 %3 to i64, !dbg !62
  %arrayidx = getelementptr [2 x ptr], ptr @acpi_gbl_address_range_list, i64 0, i64 %idxprom, !dbg !62
  store ptr null, ptr %arrayidx, align 8, !dbg !63
  br label %for.inc, !dbg !64

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !65
  %inc = add i32 %4, 1, !dbg !65
  store i32 %inc, ptr %i, align 4, !dbg !65
  br label %for.cond, !dbg !66, !llvm.loop !67

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !71
  br label %for.cond1, !dbg !73

for.cond1:                                        ; preds = %for.inc10, %for.end
  %5 = load i32, ptr %i, align 4, !dbg !74
  %cmp2 = icmp ult i32 %5, 6, !dbg !76
  br i1 %cmp2, label %for.body3, label %for.end12, !dbg !77

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, ptr %i, align 4, !dbg !78
  %idxprom4 = zext i32 %6 to i64, !dbg !80
  %arrayidx5 = getelementptr [6 x %struct.acpi_mutex_info], ptr @acpi_gbl_mutex_info, i64 0, i64 %idxprom4, !dbg !80
  %mutex = getelementptr inbounds %struct.acpi_mutex_info, ptr %arrayidx5, i32 0, i32 0, !dbg !81
  store ptr null, ptr %mutex, align 8, !dbg !82
  %7 = load i32, ptr %i, align 4, !dbg !83
  %idxprom6 = zext i32 %7 to i64, !dbg !84
  %arrayidx7 = getelementptr [6 x %struct.acpi_mutex_info], ptr @acpi_gbl_mutex_info, i64 0, i64 %idxprom6, !dbg !84
  %thread_id = getelementptr inbounds %struct.acpi_mutex_info, ptr %arrayidx7, i32 0, i32 2, !dbg !85
  store i64 0, ptr %thread_id, align 8, !dbg !86
  %8 = load i32, ptr %i, align 4, !dbg !87
  %idxprom8 = zext i32 %8 to i64, !dbg !88
  %arrayidx9 = getelementptr [6 x %struct.acpi_mutex_info], ptr @acpi_gbl_mutex_info, i64 0, i64 %idxprom8, !dbg !88
  %use_count = getelementptr inbounds %struct.acpi_mutex_info, ptr %arrayidx9, i32 0, i32 1, !dbg !89
  store i32 0, ptr %use_count, align 8, !dbg !90
  br label %for.inc10, !dbg !91

for.inc10:                                        ; preds = %for.body3
  %9 = load i32, ptr %i, align 4, !dbg !92
  %inc11 = add i32 %9, 1, !dbg !92
  store i32 %inc11, ptr %i, align 4, !dbg !92
  br label %for.cond1, !dbg !93, !llvm.loop !94

for.end12:                                        ; preds = %for.cond1
  store i32 0, ptr %i, align 4, !dbg !96
  br label %for.cond13, !dbg !98

for.cond13:                                       ; preds = %for.inc18, %for.end12
  %10 = load i32, ptr %i, align 4, !dbg !99
  %cmp14 = icmp ult i32 %10, 128, !dbg !101
  br i1 %cmp14, label %for.body15, label %for.end20, !dbg !102

for.body15:                                       ; preds = %for.cond13
  %11 = load i32, ptr %i, align 4, !dbg !103
  %idxprom16 = zext i32 %11 to i64, !dbg !105
  %arrayidx17 = getelementptr [128 x i32], ptr @acpi_gbl_owner_id_mask, i64 0, i64 %idxprom16, !dbg !105
  store i32 0, ptr %arrayidx17, align 4, !dbg !106
  br label %for.inc18, !dbg !107

for.inc18:                                        ; preds = %for.body15
  %12 = load i32, ptr %i, align 4, !dbg !108
  %inc19 = add i32 %12, 1, !dbg !108
  store i32 %inc19, ptr %i, align 4, !dbg !108
  br label %for.cond13, !dbg !109, !llvm.loop !110

for.end20:                                        ; preds = %for.cond13
  store i32 -2147483648, ptr getelementptr inbounds ([128 x i32], ptr @acpi_gbl_owner_id_mask, i64 0, i64 127), align 4, !dbg !112
  store i32 0, ptr @acpi_method_count, align 4, !dbg !113
  store i32 0, ptr @acpi_sci_count, align 4, !dbg !114
  store i32 0, ptr @acpi_gpe_count, align 4, !dbg !115
  store i32 0, ptr %i, align 4, !dbg !116
  br label %for.cond21, !dbg !118

for.cond21:                                       ; preds = %for.inc26, %for.end20
  %13 = load i32, ptr %i, align 4, !dbg !119
  %cmp22 = icmp ult i32 %13, 5, !dbg !121
  br i1 %cmp22, label %for.body23, label %for.end28, !dbg !122

for.body23:                                       ; preds = %for.cond21
  %14 = load i32, ptr %i, align 4, !dbg !123
  %idxprom24 = zext i32 %14 to i64, !dbg !125
  %arrayidx25 = getelementptr [5 x i32], ptr @acpi_fixed_event_count, i64 0, i64 %idxprom24, !dbg !125
  store i32 0, ptr %arrayidx25, align 4, !dbg !126
  br label %for.inc26, !dbg !127

for.inc26:                                        ; preds = %for.body23
  %15 = load i32, ptr %i, align 4, !dbg !128
  %inc27 = add i32 %15, 1, !dbg !128
  store i32 %inc27, ptr %i, align 4, !dbg !128
  br label %for.cond21, !dbg !129, !llvm.loop !130

for.end28:                                        ; preds = %for.cond21
  store i8 0, ptr @acpi_gbl_all_gpes_initialized, align 1, !dbg !132
  store ptr null, ptr @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !133
  store ptr null, ptr @acpi_gbl_gpe_fadt_blocks, align 16, !dbg !134
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @acpi_gbl_gpe_fadt_blocks, i64 0, i64 1), align 8, !dbg !135
  store i32 0, ptr @acpi_current_gpe_count, align 4, !dbg !136
  store ptr null, ptr @acpi_gbl_global_event_handler, align 8, !dbg !137
  store ptr null, ptr @acpi_gbl_sci_handler_list, align 8, !dbg !138
  store ptr null, ptr @acpi_gbl_global_notify, align 16, !dbg !139
  store ptr null, ptr getelementptr inbounds ([2 x %struct.acpi_global_notify_handler], ptr @acpi_gbl_global_notify, i64 0, i64 1), align 16, !dbg !140
  store ptr null, ptr @acpi_gbl_exception_handler, align 8, !dbg !141
  store ptr null, ptr @acpi_gbl_init_handler, align 8, !dbg !142
  store ptr null, ptr @acpi_gbl_table_handler, align 8, !dbg !143
  store ptr null, ptr @acpi_gbl_interface_handler, align 8, !dbg !144
  store ptr null, ptr @acpi_gbl_global_lock_semaphore, align 8, !dbg !145
  store ptr null, ptr @acpi_gbl_global_lock_mutex, align 8, !dbg !146
  store i8 0, ptr @acpi_gbl_global_lock_acquired, align 1, !dbg !147
  store i16 0, ptr @acpi_gbl_global_lock_handle, align 2, !dbg !148
  store i8 0, ptr @acpi_gbl_global_lock_present, align 1, !dbg !149
  store ptr null, ptr @acpi_gbl_DSDT, align 8, !dbg !150
  store i8 0, ptr @acpi_gbl_cm_single_step, align 1, !dbg !151
  store i8 0, ptr @acpi_gbl_shutdown, align 1, !dbg !152
  store i32 0, ptr @acpi_gbl_ns_lookup_count, align 4, !dbg !153
  store i32 0, ptr @acpi_gbl_ps_find_count, align 4, !dbg !154
  store i8 1, ptr @acpi_gbl_acpi_hardware_present, align 1, !dbg !155
  store i8 0, ptr @acpi_gbl_last_owner_id_index, align 1, !dbg !156
  store i8 0, ptr @acpi_gbl_next_owner_id_offset, align 1, !dbg !157
  store i8 1, ptr @acpi_gbl_debugger_configuration, align 1, !dbg !158
  store ptr null, ptr @acpi_gbl_osi_mutex, align 8, !dbg !159
  store i8 0, ptr @acpi_gbl_events_initialized, align 1, !dbg !160
  store i8 1, ptr @acpi_gbl_system_awake_and_running, align 1, !dbg !161
  store ptr null, ptr @acpi_gbl_root_node, align 8, !dbg !162
  store i32 1600085852, ptr getelementptr inbounds (%struct.acpi_namespace_node, ptr @acpi_gbl_root_node_struct, i32 0, i32 4), align 4, !dbg !163
  store i8 15, ptr getelementptr inbounds (%struct.acpi_namespace_node, ptr @acpi_gbl_root_node_struct, i32 0, i32 1), align 8, !dbg !164
  store i8 6, ptr getelementptr inbounds (%struct.acpi_namespace_node, ptr @acpi_gbl_root_node_struct, i32 0, i32 2), align 1, !dbg !165
  store ptr null, ptr getelementptr inbounds (%struct.acpi_namespace_node, ptr @acpi_gbl_root_node_struct, i32 0, i32 5), align 8, !dbg !166
  store ptr null, ptr getelementptr inbounds (%struct.acpi_namespace_node, ptr @acpi_gbl_root_node_struct, i32 0, i32 6), align 8, !dbg !167
  store ptr null, ptr getelementptr inbounds (%struct.acpi_namespace_node, ptr @acpi_gbl_root_node_struct, i32 0, i32 7), align 8, !dbg !168
  store ptr null, ptr @acpi_gbl_root_node_struct, align 8, !dbg !169
  store i32 0, ptr %retval, align 4, !dbg !170
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !170

cleanup:                                          ; preds = %for.end28, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !171
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !171
  %16 = load i32, ptr %retval, align 4, !dbg !171
  ret i32 %16, !dbg !171
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !172 dso_local i32 @acpi_ut_create_caches() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_subsystem_shutdown() #0 align 16 !dbg !174 {
entry:
  %0 = load i8, ptr @acpi_gbl_shutdown, align 1, !dbg !177
  %tobool = icmp ne i8 %0, 0, !dbg !177
  br i1 %tobool, label %if.then, label %if.end, !dbg !179

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 251, ptr noundef @.str) #6, !dbg !180
  br label %return, !dbg !182

if.end:                                           ; preds = %entry
  store i8 1, ptr @acpi_gbl_shutdown, align 1, !dbg !183
  store i32 0, ptr @acpi_gbl_startup_flags, align 4, !dbg !184
  call void @acpi_ev_terminate() #6, !dbg !185
  %call = call i32 @acpi_ut_interface_terminate() #6, !dbg !186
  call void @acpi_ns_terminate() #6, !dbg !187
  call void @acpi_tb_terminate() #6, !dbg !188
  call void @acpi_ut_terminate() #6, !dbg !189
  %call1 = call i32 @acpi_ut_delete_caches() #6, !dbg !190
  br label %return, !dbg !191

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !192
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !193 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !198 dso_local void @acpi_ev_terminate() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !200 dso_local i32 @acpi_ut_interface_terminate() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !201 dso_local void @acpi_ns_terminate() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !203 dso_local void @acpi_tb_terminate() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ut_terminate() #0 align 16 !dbg !205 {
entry:
  call void @acpi_ut_free_gpe_lists() #6, !dbg !206
  call void @acpi_ut_delete_address_lists() #6, !dbg !207
  ret void, !dbg !208
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !209 dso_local i32 @acpi_ut_delete_caches() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ut_free_gpe_lists() #0 align 16 !dbg !210 {
entry:
  %gpe_block = alloca ptr, align 8
  %next_gpe_block = alloca ptr, align 8
  %gpe_xrupt_info = alloca ptr, align 8
  %next_gpe_xrupt_info = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_block) #5, !dbg !979
  call void @llvm.dbg.declare(metadata ptr %gpe_block, metadata !212, metadata !DIExpression()), !dbg !980
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_gpe_block) #5, !dbg !981
  call void @llvm.dbg.declare(metadata ptr %next_gpe_block, metadata !976, metadata !DIExpression()), !dbg !982
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_xrupt_info) #5, !dbg !983
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt_info, metadata !977, metadata !DIExpression()), !dbg !984
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_gpe_xrupt_info) #5, !dbg !985
  call void @llvm.dbg.declare(metadata ptr %next_gpe_xrupt_info, metadata !978, metadata !DIExpression()), !dbg !986
  %0 = load ptr, ptr @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !987
  store ptr %0, ptr %gpe_xrupt_info, align 8, !dbg !988
  br label %while.cond, !dbg !989

while.cond:                                       ; preds = %while.end, %entry
  %1 = load ptr, ptr %gpe_xrupt_info, align 8, !dbg !990
  %tobool = icmp ne ptr %1, null, !dbg !989
  br i1 %tobool, label %while.body, label %while.end5, !dbg !989

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %gpe_xrupt_info, align 8, !dbg !991
  %gpe_block_list_head = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %2, i32 0, i32 2, !dbg !993
  %3 = load ptr, ptr %gpe_block_list_head, align 8, !dbg !993
  store ptr %3, ptr %gpe_block, align 8, !dbg !994
  br label %while.cond1, !dbg !995

while.cond1:                                      ; preds = %while.body3, %while.body
  %4 = load ptr, ptr %gpe_block, align 8, !dbg !996
  %tobool2 = icmp ne ptr %4, null, !dbg !995
  br i1 %tobool2, label %while.body3, label %while.end, !dbg !995

while.body3:                                      ; preds = %while.cond1
  %5 = load ptr, ptr %gpe_block, align 8, !dbg !997
  %next = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %5, i32 0, i32 2, !dbg !999
  %6 = load ptr, ptr %next, align 8, !dbg !999
  store ptr %6, ptr %next_gpe_block, align 8, !dbg !1000
  %7 = load ptr, ptr %gpe_block, align 8, !dbg !1001
  %event_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %7, i32 0, i32 5, !dbg !1001
  %8 = load ptr, ptr %event_info, align 8, !dbg !1001
  call void @acpi_os_free(ptr noundef %8) #6, !dbg !1001
  %9 = load ptr, ptr %gpe_block, align 8, !dbg !1002
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %9, i32 0, i32 4, !dbg !1002
  %10 = load ptr, ptr %register_info, align 8, !dbg !1002
  call void @acpi_os_free(ptr noundef %10) #6, !dbg !1002
  %11 = load ptr, ptr %gpe_block, align 8, !dbg !1003
  call void @acpi_os_free(ptr noundef %11) #6, !dbg !1003
  %12 = load ptr, ptr %next_gpe_block, align 8, !dbg !1004
  store ptr %12, ptr %gpe_block, align 8, !dbg !1005
  br label %while.cond1, !dbg !995, !llvm.loop !1006

while.end:                                        ; preds = %while.cond1
  %13 = load ptr, ptr %gpe_xrupt_info, align 8, !dbg !1008
  %next4 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %13, i32 0, i32 1, !dbg !1009
  %14 = load ptr, ptr %next4, align 8, !dbg !1009
  store ptr %14, ptr %next_gpe_xrupt_info, align 8, !dbg !1010
  %15 = load ptr, ptr %gpe_xrupt_info, align 8, !dbg !1011
  call void @acpi_os_free(ptr noundef %15) #6, !dbg !1011
  %16 = load ptr, ptr %next_gpe_xrupt_info, align 8, !dbg !1012
  store ptr %16, ptr %gpe_xrupt_info, align 8, !dbg !1013
  br label %while.cond, !dbg !989, !llvm.loop !1014

while.end5:                                       ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_gpe_xrupt_info) #5, !dbg !1016
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_xrupt_info) #5, !dbg !1016
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_gpe_block) #5, !dbg !1016
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_block) #5, !dbg !1016
  ret void, !dbg !1016
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1017 dso_local void @acpi_ut_delete_address_lists() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1018 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1023, metadata !DIExpression()), !dbg !1024
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1025
  call void @kfree(ptr noundef %0) #6, !dbg !1026
  ret void, !dbg !1027
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1028 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !23, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utinit.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utinit\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utinit.ll drivers/acpi/acpica/utinit.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utinit.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75d1f3ec201ff65d8c30d0494ebd8673")
!4 = !{!5, !6, !11, !14}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!10 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !13)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !15, line: 421, baseType: !11)
!15 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!16 = !{!17, !0}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !3, line: 251, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 296, elements: !21)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !{!22}
!22 = !DISubrange(count: 37)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 56, elements: !25)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!25 = !{!26}
!26 = !DISubrange(count: 7)
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 8, !"cf-protection-branch", i32 1}
!31 = !{i32 4, !"function_return_thunk_extern", i32 1}
!32 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!33 = !{i32 1, !"Code Model", i32 2}
!34 = !{i32 1, !"override-stack-alignment", i32 8}
!35 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!36 = distinct !DISubprogram(name: "acpi_ut_init_globals", scope: !3, file: !3, line: 85, type: !37, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{!14}
!39 = !{!40, !41}
!40 = !DILocalVariable(name: "status", scope: !36, file: !3, line: 87, type: !14)
!41 = !DILocalVariable(name: "i", scope: !36, file: !3, line: 88, type: !11)
!42 = !DILocation(line: 87, column: 2, scope: !36)
!43 = !DILocation(line: 87, column: 14, scope: !36)
!44 = !DILocation(line: 88, column: 2, scope: !36)
!45 = !DILocation(line: 88, column: 6, scope: !36)
!46 = !DILocation(line: 94, column: 11, scope: !36)
!47 = !DILocation(line: 94, column: 9, scope: !36)
!48 = !DILocation(line: 95, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !36, file: !3, line: 95, column: 6)
!50 = !DILocation(line: 95, column: 6, scope: !36)
!51 = !DILocation(line: 96, column: 3, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !3, line: 95, column: 28)
!53 = !DILocation(line: 101, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !36, file: !3, line: 101, column: 2)
!55 = !DILocation(line: 101, column: 7, scope: !54)
!56 = !DILocation(line: 101, column: 14, scope: !57)
!57 = distinct !DILexicalBlock(scope: !54, file: !3, line: 101, column: 2)
!58 = !DILocation(line: 101, column: 16, scope: !57)
!59 = !DILocation(line: 101, column: 2, scope: !54)
!60 = !DILocation(line: 102, column: 31, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !3, line: 101, column: 47)
!62 = !DILocation(line: 102, column: 3, scope: !61)
!63 = !DILocation(line: 102, column: 34, scope: !61)
!64 = !DILocation(line: 103, column: 2, scope: !61)
!65 = !DILocation(line: 101, column: 43, scope: !57)
!66 = !DILocation(line: 101, column: 2, scope: !57)
!67 = distinct !{!67, !59, !68, !69, !70}
!68 = !DILocation(line: 103, column: 2, scope: !54)
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !DILocation(line: 107, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !36, file: !3, line: 107, column: 2)
!73 = !DILocation(line: 107, column: 7, scope: !72)
!74 = !DILocation(line: 107, column: 14, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !3, line: 107, column: 2)
!76 = !DILocation(line: 107, column: 16, scope: !75)
!77 = !DILocation(line: 107, column: 2, scope: !72)
!78 = !DILocation(line: 108, column: 23, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !3, line: 107, column: 39)
!80 = !DILocation(line: 108, column: 3, scope: !79)
!81 = !DILocation(line: 108, column: 26, scope: !79)
!82 = !DILocation(line: 108, column: 32, scope: !79)
!83 = !DILocation(line: 109, column: 23, scope: !79)
!84 = !DILocation(line: 109, column: 3, scope: !79)
!85 = !DILocation(line: 109, column: 26, scope: !79)
!86 = !DILocation(line: 109, column: 36, scope: !79)
!87 = !DILocation(line: 110, column: 23, scope: !79)
!88 = !DILocation(line: 110, column: 3, scope: !79)
!89 = !DILocation(line: 110, column: 26, scope: !79)
!90 = !DILocation(line: 110, column: 36, scope: !79)
!91 = !DILocation(line: 111, column: 2, scope: !79)
!92 = !DILocation(line: 107, column: 35, scope: !75)
!93 = !DILocation(line: 107, column: 2, scope: !75)
!94 = distinct !{!94, !77, !95, !69, !70}
!95 = !DILocation(line: 111, column: 2, scope: !72)
!96 = !DILocation(line: 113, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !36, file: !3, line: 113, column: 2)
!98 = !DILocation(line: 113, column: 7, scope: !97)
!99 = !DILocation(line: 113, column: 14, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !3, line: 113, column: 2)
!101 = !DILocation(line: 113, column: 16, scope: !100)
!102 = !DILocation(line: 113, column: 2, scope: !97)
!103 = !DILocation(line: 114, column: 26, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !3, line: 113, column: 47)
!105 = !DILocation(line: 114, column: 3, scope: !104)
!106 = !DILocation(line: 114, column: 29, scope: !104)
!107 = !DILocation(line: 115, column: 2, scope: !104)
!108 = !DILocation(line: 113, column: 43, scope: !100)
!109 = !DILocation(line: 113, column: 2, scope: !100)
!110 = distinct !{!110, !102, !111, !69, !70}
!111 = !DILocation(line: 115, column: 2, scope: !97)
!112 = !DILocation(line: 119, column: 53, scope: !36)
!113 = !DILocation(line: 123, column: 20, scope: !36)
!114 = !DILocation(line: 124, column: 17, scope: !36)
!115 = !DILocation(line: 125, column: 17, scope: !36)
!116 = !DILocation(line: 127, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !36, file: !3, line: 127, column: 2)
!118 = !DILocation(line: 127, column: 7, scope: !117)
!119 = !DILocation(line: 127, column: 14, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !3, line: 127, column: 2)
!121 = !DILocation(line: 127, column: 16, scope: !120)
!122 = !DILocation(line: 127, column: 2, scope: !117)
!123 = !DILocation(line: 128, column: 26, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !3, line: 127, column: 46)
!125 = !DILocation(line: 128, column: 3, scope: !124)
!126 = !DILocation(line: 128, column: 29, scope: !124)
!127 = !DILocation(line: 129, column: 2, scope: !124)
!128 = !DILocation(line: 127, column: 42, scope: !120)
!129 = !DILocation(line: 127, column: 2, scope: !120)
!130 = distinct !{!130, !122, !131, !69, !70}
!131 = !DILocation(line: 129, column: 2, scope: !117)
!132 = !DILocation(line: 135, column: 32, scope: !36)
!133 = !DILocation(line: 136, column: 31, scope: !36)
!134 = !DILocation(line: 137, column: 30, scope: !36)
!135 = !DILocation(line: 138, column: 30, scope: !36)
!136 = !DILocation(line: 139, column: 25, scope: !36)
!137 = !DILocation(line: 141, column: 32, scope: !36)
!138 = !DILocation(line: 142, column: 28, scope: !36)
!139 = !DILocation(line: 148, column: 36, scope: !36)
!140 = !DILocation(line: 149, column: 36, scope: !36)
!141 = !DILocation(line: 150, column: 29, scope: !36)
!142 = !DILocation(line: 151, column: 24, scope: !36)
!143 = !DILocation(line: 152, column: 25, scope: !36)
!144 = !DILocation(line: 153, column: 29, scope: !36)
!145 = !DILocation(line: 157, column: 33, scope: !36)
!146 = !DILocation(line: 158, column: 29, scope: !36)
!147 = !DILocation(line: 159, column: 32, scope: !36)
!148 = !DILocation(line: 160, column: 30, scope: !36)
!149 = !DILocation(line: 161, column: 31, scope: !36)
!150 = !DILocation(line: 165, column: 16, scope: !36)
!151 = !DILocation(line: 166, column: 26, scope: !36)
!152 = !DILocation(line: 167, column: 20, scope: !36)
!153 = !DILocation(line: 168, column: 27, scope: !36)
!154 = !DILocation(line: 169, column: 25, scope: !36)
!155 = !DILocation(line: 170, column: 33, scope: !36)
!156 = !DILocation(line: 171, column: 31, scope: !36)
!157 = !DILocation(line: 172, column: 32, scope: !36)
!158 = !DILocation(line: 173, column: 34, scope: !36)
!159 = !DILocation(line: 174, column: 21, scope: !36)
!160 = !DILocation(line: 178, column: 30, scope: !36)
!161 = !DILocation(line: 179, column: 36, scope: !36)
!162 = !DILocation(line: 183, column: 21, scope: !36)
!163 = !DILocation(line: 184, column: 41, scope: !36)
!164 = !DILocation(line: 185, column: 44, scope: !36)
!165 = !DILocation(line: 186, column: 33, scope: !36)
!166 = !DILocation(line: 187, column: 35, scope: !36)
!167 = !DILocation(line: 188, column: 34, scope: !36)
!168 = !DILocation(line: 189, column: 33, scope: !36)
!169 = !DILocation(line: 190, column: 35, scope: !36)
!170 = !DILocation(line: 207, column: 2, scope: !36)
!171 = !DILocation(line: 208, column: 1, scope: !36)
!172 = !DISubprogram(name: "acpi_ut_create_caches", scope: !173, file: !173, line: 653, type: !37, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!173 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!174 = distinct !DISubprogram(name: "acpi_ut_subsystem_shutdown", scope: !3, file: !3, line: 244, type: !175, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!175 = !DISubroutineType(types: !176)
!176 = !{null}
!177 = !DILocation(line: 250, column: 6, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !3, line: 250, column: 6)
!179 = !DILocation(line: 250, column: 6, scope: !174)
!180 = !DILocation(line: 251, column: 3, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !3, line: 250, column: 25)
!182 = !DILocation(line: 252, column: 3, scope: !181)
!183 = !DILocation(line: 257, column: 20, scope: !174)
!184 = !DILocation(line: 258, column: 25, scope: !174)
!185 = !DILocation(line: 265, column: 2, scope: !174)
!186 = !DILocation(line: 269, column: 2, scope: !174)
!187 = !DILocation(line: 274, column: 2, scope: !174)
!188 = !DILocation(line: 278, column: 2, scope: !174)
!189 = !DILocation(line: 282, column: 2, scope: !174)
!190 = !DILocation(line: 286, column: 8, scope: !174)
!191 = !DILocation(line: 287, column: 2, scope: !174)
!192 = !DILocation(line: 288, column: 1, scope: !174)
!193 = !DISubprogram(name: "acpi_error", scope: !194, file: !194, line: 901, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!194 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!195 = !DISubroutineType(types: !196)
!196 = !{null, !197, !11, !197, null}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!198 = !DISubprogram(name: "acpi_ev_terminate", scope: !199, file: !199, line: 251, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!199 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!200 = !DISubprogram(name: "acpi_ut_interface_terminate", scope: !173, file: !173, line: 469, type: !37, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!201 = !DISubprogram(name: "acpi_ns_terminate", scope: !202, file: !202, line: 400, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!202 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!203 = !DISubprogram(name: "acpi_tb_terminate", scope: !204, file: !204, line: 108, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!204 = !DIFile(filename: "drivers/acpi/acpica/actables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb0787ba059aac7511e633019dab5fb8")
!205 = distinct !DISubprogram(name: "acpi_ut_terminate", scope: !3, file: !3, line: 222, type: !175, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!206 = !DILocation(line: 226, column: 2, scope: !205)
!207 = !DILocation(line: 227, column: 2, scope: !205)
!208 = !DILocation(line: 228, column: 2, scope: !205)
!209 = !DISubprogram(name: "acpi_ut_delete_caches", scope: !173, file: !173, line: 655, type: !37, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!210 = distinct !DISubprogram(name: "acpi_ut_free_gpe_lists", scope: !3, file: !3, line: 44, type: !175, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !211)
!211 = !{!212, !976, !977, !978}
!212 = !DILocalVariable(name: "gpe_block", scope: !210, file: !3, line: 46, type: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !215, line: 480, size: 576, elements: !216)
!215 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!216 = !{!217, !913, !914, !915, !923, !938, !970, !971, !972, !973, !974, !975}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !214, file: !215, line: 481, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !215, line: 133, size: 384, elements: !220)
!220 = !{!221, !900, !901, !902, !903, !909, !910, !911, !912}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !219, file: !215, line: 134, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !224, line: 369, size: 576, elements: !225)
!224 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!225 = !{!226, !240, !253, !264, !278, !292, !301, !616, !633, !649, !662, !673, !685, !699, !709, !727, !749, !768, !787, !806, !819, !846, !863, !876, !890, !899}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !223, file: !224, line: 370, baseType: !227, size: 128)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !224, line: 73, size: 128, elements: !228)
!228 = !{!229, !230, !234, !235, !239}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !227, file: !224, line: 74, baseType: !222, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !227, file: !224, line: 74, baseType: !231, size: 8, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !233)
!233 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !227, file: !224, line: 74, baseType: !231, size: 8, offset: 72)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !227, file: !224, line: 74, baseType: !236, size: 16, offset: 80)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !7, line: 19, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !238)
!238 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !227, file: !224, line: 74, baseType: !231, size: 8, offset: 96)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !223, file: !224, line: 371, baseType: !241, size: 192)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !224, line: 76, size: 192, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !252}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !241, file: !224, line: 77, baseType: !222, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !241, file: !224, line: 77, baseType: !231, size: 8, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !241, file: !224, line: 77, baseType: !231, size: 8, offset: 72)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !241, file: !224, line: 77, baseType: !236, size: 16, offset: 80)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !224, line: 77, baseType: !231, size: 8, offset: 96)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !241, file: !224, line: 77, baseType: !249, size: 24, offset: 104)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 24, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 3)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !241, file: !224, line: 78, baseType: !6, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !223, file: !224, line: 372, baseType: !254, size: 256)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !224, line: 93, size: 256, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !263}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !254, file: !224, line: 94, baseType: !222, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !254, file: !224, line: 94, baseType: !231, size: 8, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !254, file: !224, line: 94, baseType: !231, size: 8, offset: 72)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !254, file: !224, line: 94, baseType: !236, size: 16, offset: 80)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !254, file: !224, line: 94, baseType: !231, size: 8, offset: 96)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !254, file: !224, line: 94, baseType: !262, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !254, file: !224, line: 94, baseType: !11, size: 32, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !223, file: !224, line: 373, baseType: !265, size: 384)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !224, line: 97, size: 384, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !274, !275, !276, !277}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !265, file: !224, line: 98, baseType: !222, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !265, file: !224, line: 98, baseType: !231, size: 8, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !265, file: !224, line: 98, baseType: !231, size: 8, offset: 72)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !265, file: !224, line: 98, baseType: !236, size: 16, offset: 80)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !224, line: 98, baseType: !231, size: 8, offset: 96)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !265, file: !224, line: 98, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !265, file: !224, line: 98, baseType: !11, size: 32, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !265, file: !224, line: 99, baseType: !11, size: 32, offset: 224)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !265, file: !224, line: 100, baseType: !273, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !265, file: !224, line: 101, baseType: !218, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !223, file: !224, line: 374, baseType: !279, size: 384)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !224, line: 104, size: 384, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !289, !290, !291}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !279, file: !224, line: 105, baseType: !222, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !224, line: 105, baseType: !231, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !279, file: !224, line: 105, baseType: !231, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !279, file: !224, line: 105, baseType: !236, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !224, line: 105, baseType: !231, size: 8, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !279, file: !224, line: 105, baseType: !218, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !279, file: !224, line: 106, baseType: !288, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !279, file: !224, line: 107, baseType: !273, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !279, file: !224, line: 108, baseType: !11, size: 32, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !279, file: !224, line: 109, baseType: !11, size: 32, offset: 352)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !223, file: !224, line: 375, baseType: !293, size: 192)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !224, line: 118, size: 192, elements: !294)
!294 = !{!295, !296, !297, !298, !299, !300}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !293, file: !224, line: 119, baseType: !222, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !293, file: !224, line: 119, baseType: !231, size: 8, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !293, file: !224, line: 119, baseType: !231, size: 8, offset: 72)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !293, file: !224, line: 119, baseType: !236, size: 16, offset: 80)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !293, file: !224, line: 119, baseType: !231, size: 8, offset: 96)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !293, file: !224, line: 119, baseType: !5, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !223, file: !224, line: 376, baseType: !302, size: 448)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !224, line: 144, size: 448, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !613, !614, !615}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !302, file: !224, line: 145, baseType: !222, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !302, file: !224, line: 145, baseType: !231, size: 8, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !302, file: !224, line: 145, baseType: !231, size: 8, offset: 72)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !302, file: !224, line: 145, baseType: !236, size: 16, offset: 80)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !224, line: 145, baseType: !231, size: 8, offset: 96)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !302, file: !224, line: 145, baseType: !231, size: 8, offset: 104)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !302, file: !224, line: 146, baseType: !231, size: 8, offset: 112)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !302, file: !224, line: 147, baseType: !231, size: 8, offset: 120)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !302, file: !224, line: 148, baseType: !222, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !302, file: !224, line: 149, baseType: !222, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !302, file: !224, line: 150, baseType: !273, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !302, file: !224, line: 154, baseType: !316, size: 64, offset: 320)
!316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !224, line: 151, size: 64, elements: !317)
!317 = !{!318, !612}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !316, file: !224, line: 152, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !215, line: 248, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!14, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !325, line: 37, size: 9024, elements: !326)
!325 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !560, !561, !562, !563, !564, !566, !568, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !595, !596, !597, !598, !599, !600, !601, !602, !604, !610}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !325, line: 38, baseType: !323, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !324, file: !325, line: 39, baseType: !231, size: 8, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !324, file: !325, line: 40, baseType: !231, size: 8, offset: 72)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !324, file: !325, line: 41, baseType: !236, size: 16, offset: 80)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !324, file: !325, line: 42, baseType: !231, size: 8, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !324, file: !325, line: 43, baseType: !231, size: 8, offset: 104)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !324, file: !325, line: 44, baseType: !231, size: 8, offset: 112)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !324, file: !325, line: 45, baseType: !335, size: 16, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !15, line: 445, baseType: !236)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !324, file: !325, line: 46, baseType: !231, size: 8, offset: 144)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !324, file: !325, line: 47, baseType: !231, size: 8, offset: 152)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !324, file: !325, line: 48, baseType: !231, size: 8, offset: 160)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !324, file: !325, line: 49, baseType: !231, size: 8, offset: 168)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !324, file: !325, line: 50, baseType: !231, size: 8, offset: 176)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !324, file: !325, line: 51, baseType: !231, size: 8, offset: 184)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !324, file: !325, line: 52, baseType: !231, size: 8, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !324, file: !325, line: 53, baseType: !231, size: 8, offset: 200)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !324, file: !325, line: 54, baseType: !273, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !324, file: !325, line: 55, baseType: !11, size: 32, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !324, file: !325, line: 56, baseType: !11, size: 32, offset: 352)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !324, file: !325, line: 57, baseType: !11, size: 32, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !324, file: !325, line: 58, baseType: !11, size: 32, offset: 416)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !324, file: !325, line: 60, baseType: !350, size: 640, offset: 448)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !215, line: 909, size: 640, elements: !351)
!351 = !{!352, !353, !354, !355, !356, !357, !441, !442, !558, !559}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !350, file: !215, line: 910, baseType: !273, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !350, file: !215, line: 911, baseType: !273, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !350, file: !215, line: 912, baseType: !273, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !350, file: !215, line: 913, baseType: !273, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !350, file: !215, line: 914, baseType: !273, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !350, file: !215, line: 915, baseType: !358, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !215, line: 891, size: 1600, elements: !360)
!360 = !{!361, !381, !397}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !359, file: !215, line: 892, baseType: !362, size: 448)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !215, line: 844, size: 448, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !369, !370, !371, !380}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !362, file: !215, line: 845, baseType: !358, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !362, file: !215, line: 845, baseType: !231, size: 8, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !362, file: !215, line: 845, baseType: !231, size: 8, offset: 72)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !362, file: !215, line: 845, baseType: !236, size: 16, offset: 80)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !362, file: !215, line: 845, baseType: !273, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !215, line: 845, baseType: !358, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !362, file: !215, line: 845, baseType: !218, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !362, file: !215, line: 845, baseType: !372, size: 64, offset: 320)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !215, line: 732, size: 64, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !372, file: !215, line: 733, baseType: !6, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !372, file: !215, line: 734, baseType: !11, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !372, file: !215, line: 735, baseType: !262, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !372, file: !215, line: 736, baseType: !273, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !372, file: !215, line: 737, baseType: !262, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !372, file: !215, line: 738, baseType: !358, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !362, file: !215, line: 845, baseType: !231, size: 8, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !359, file: !215, line: 893, baseType: !382, size: 640)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !215, line: 851, size: 640, elements: !383)
!383 = !{!384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !382, file: !215, line: 852, baseType: !358, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !382, file: !215, line: 852, baseType: !231, size: 8, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !382, file: !215, line: 852, baseType: !231, size: 8, offset: 72)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !382, file: !215, line: 852, baseType: !236, size: 16, offset: 80)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !382, file: !215, line: 852, baseType: !273, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !215, line: 852, baseType: !358, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !382, file: !215, line: 852, baseType: !218, size: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !382, file: !215, line: 852, baseType: !372, size: 64, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !382, file: !215, line: 852, baseType: !231, size: 8, offset: 384)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !382, file: !215, line: 852, baseType: !262, size: 64, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !382, file: !215, line: 853, baseType: !273, size: 64, offset: 512)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !382, file: !215, line: 854, baseType: !11, size: 32, offset: 576)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !382, file: !215, line: 855, baseType: !11, size: 32, offset: 608)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !359, file: !215, line: 894, baseType: !398, size: 1600)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !215, line: 862, size: 1600, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !398, file: !215, line: 863, baseType: !358, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !398, file: !215, line: 863, baseType: !231, size: 8, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !398, file: !215, line: 863, baseType: !231, size: 8, offset: 72)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !398, file: !215, line: 863, baseType: !236, size: 16, offset: 80)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !398, file: !215, line: 863, baseType: !273, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !215, line: 863, baseType: !358, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !398, file: !215, line: 863, baseType: !218, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !398, file: !215, line: 863, baseType: !372, size: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !398, file: !215, line: 863, baseType: !231, size: 8, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !398, file: !215, line: 863, baseType: !358, size: 64, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !398, file: !215, line: 864, baseType: !358, size: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !398, file: !215, line: 865, baseType: !262, size: 64, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !398, file: !215, line: 866, baseType: !231, size: 8, offset: 640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !398, file: !215, line: 867, baseType: !262, size: 64, offset: 704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !398, file: !215, line: 868, baseType: !262, size: 64, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !398, file: !215, line: 869, baseType: !262, size: 64, offset: 832)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !398, file: !215, line: 870, baseType: !417, size: 32, offset: 896)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 32, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 4)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !398, file: !215, line: 871, baseType: !11, size: 32, offset: 928)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !398, file: !215, line: 872, baseType: !11, size: 32, offset: 960)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !398, file: !215, line: 873, baseType: !11, size: 32, offset: 992)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !398, file: !215, line: 874, baseType: !11, size: 32, offset: 1024)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !398, file: !215, line: 875, baseType: !11, size: 32, offset: 1056)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !398, file: !215, line: 876, baseType: !11, size: 32, offset: 1088)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !398, file: !215, line: 877, baseType: !11, size: 32, offset: 1120)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !398, file: !215, line: 878, baseType: !11, size: 32, offset: 1152)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !398, file: !215, line: 879, baseType: !11, size: 32, offset: 1184)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !398, file: !215, line: 880, baseType: !11, size: 32, offset: 1216)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !398, file: !215, line: 881, baseType: !11, size: 32, offset: 1248)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !398, file: !215, line: 882, baseType: !11, size: 32, offset: 1280)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !398, file: !215, line: 883, baseType: !11, size: 32, offset: 1312)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !398, file: !215, line: 884, baseType: !236, size: 16, offset: 1344)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !398, file: !215, line: 885, baseType: !231, size: 8, offset: 1360)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !398, file: !215, line: 886, baseType: !231, size: 8, offset: 1368)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !398, file: !215, line: 887, baseType: !231, size: 8, offset: 1376)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !398, file: !215, line: 888, baseType: !438, size: 160, offset: 1384)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 160, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 20)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !350, file: !215, line: 916, baseType: !218, size: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !350, file: !215, line: 917, baseType: !443, size: 64, offset: 448)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !215, line: 679, size: 640, elements: !445)
!445 = !{!446, !454, !467, !476, !485, !498, !512, !524, !536}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !444, file: !215, line: 680, baseType: !447, size: 128)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !215, line: 575, size: 128, elements: !448)
!448 = !{!449, !450, !451, !452, !453}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !447, file: !215, line: 576, baseType: !5, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !447, file: !215, line: 576, baseType: !231, size: 8, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !447, file: !215, line: 576, baseType: !231, size: 8, offset: 72)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !447, file: !215, line: 576, baseType: !236, size: 16, offset: 80)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !447, file: !215, line: 576, baseType: !236, size: 16, offset: 96)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !444, file: !215, line: 681, baseType: !455, size: 384)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !215, line: 604, size: 384, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465, !466}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !455, file: !215, line: 605, baseType: !5, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !455, file: !215, line: 605, baseType: !231, size: 8, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !215, line: 605, baseType: !231, size: 8, offset: 72)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !455, file: !215, line: 605, baseType: !236, size: 16, offset: 80)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !455, file: !215, line: 605, baseType: !236, size: 16, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !455, file: !215, line: 606, baseType: !236, size: 16, offset: 112)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !455, file: !215, line: 607, baseType: !358, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !455, file: !215, line: 608, baseType: !273, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !455, file: !215, line: 609, baseType: !273, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !455, file: !215, line: 610, baseType: !6, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !444, file: !215, line: 682, baseType: !468, size: 192)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !215, line: 582, size: 192, elements: !469)
!469 = !{!470, !471, !472, !473, !474, !475}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !468, file: !215, line: 583, baseType: !5, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !468, file: !215, line: 583, baseType: !231, size: 8, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !468, file: !215, line: 583, baseType: !231, size: 8, offset: 72)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !468, file: !215, line: 583, baseType: !236, size: 16, offset: 80)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !468, file: !215, line: 583, baseType: !236, size: 16, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !468, file: !215, line: 584, baseType: !222, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !444, file: !215, line: 683, baseType: !477, size: 192)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !215, line: 616, size: 192, elements: !478)
!478 = !{!479, !480, !481, !482, !483, !484}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !477, file: !215, line: 617, baseType: !5, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !477, file: !215, line: 617, baseType: !231, size: 8, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !477, file: !215, line: 617, baseType: !231, size: 8, offset: 72)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !477, file: !215, line: 617, baseType: !236, size: 16, offset: 80)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !477, file: !215, line: 617, baseType: !236, size: 16, offset: 96)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !477, file: !215, line: 618, baseType: !218, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !444, file: !215, line: 684, baseType: !486, size: 448)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !215, line: 621, size: 448, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496, !497}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !486, file: !215, line: 622, baseType: !5, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !486, file: !215, line: 622, baseType: !231, size: 8, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !215, line: 622, baseType: !231, size: 8, offset: 72)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !486, file: !215, line: 622, baseType: !236, size: 16, offset: 80)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !486, file: !215, line: 622, baseType: !236, size: 16, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !486, file: !215, line: 623, baseType: !11, size: 32, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !486, file: !215, line: 624, baseType: !358, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !486, file: !215, line: 625, baseType: !273, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !486, file: !215, line: 626, baseType: !273, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !486, file: !215, line: 627, baseType: !11, size: 32, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !444, file: !215, line: 685, baseType: !499, size: 512)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !215, line: 590, size: 512, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !499, file: !215, line: 591, baseType: !5, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !499, file: !215, line: 591, baseType: !231, size: 8, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !215, line: 591, baseType: !231, size: 8, offset: 72)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !499, file: !215, line: 591, baseType: !236, size: 16, offset: 80)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !499, file: !215, line: 591, baseType: !236, size: 16, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !499, file: !215, line: 592, baseType: !11, size: 32, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !499, file: !215, line: 593, baseType: !222, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !499, file: !215, line: 594, baseType: !222, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !499, file: !215, line: 595, baseType: !323, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !499, file: !215, line: 596, baseType: !5, size: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !499, file: !215, line: 597, baseType: !11, size: 32, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !444, file: !215, line: 686, baseType: !513, size: 320)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !215, line: 634, size: 320, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !521, !522, !523}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !513, file: !215, line: 635, baseType: !5, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !513, file: !215, line: 635, baseType: !231, size: 8, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !513, file: !215, line: 635, baseType: !231, size: 8, offset: 72)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !513, file: !215, line: 635, baseType: !236, size: 16, offset: 80)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !513, file: !215, line: 635, baseType: !236, size: 16, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !513, file: !215, line: 636, baseType: !231, size: 8, offset: 112)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !513, file: !215, line: 637, baseType: !323, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !513, file: !215, line: 638, baseType: !222, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !513, file: !215, line: 639, baseType: !6, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !444, file: !215, line: 687, baseType: !525, size: 640)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !215, line: 646, size: 640, elements: !526)
!526 = !{!527, !528, !529, !530, !531, !532}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !525, file: !215, line: 647, baseType: !5, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !525, file: !215, line: 647, baseType: !231, size: 8, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !525, file: !215, line: 647, baseType: !231, size: 8, offset: 72)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !525, file: !215, line: 647, baseType: !236, size: 16, offset: 80)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !525, file: !215, line: 647, baseType: !236, size: 16, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !525, file: !215, line: 648, baseType: !533, size: 512, offset: 128)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 512, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 8)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !444, file: !215, line: 688, baseType: !537, size: 320)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !215, line: 669, size: 320, elements: !538)
!538 = !{!539, !540, !541, !542, !543, !544, !545, !546, !547}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !537, file: !215, line: 670, baseType: !5, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !537, file: !215, line: 670, baseType: !231, size: 8, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !215, line: 670, baseType: !231, size: 8, offset: 72)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !537, file: !215, line: 670, baseType: !236, size: 16, offset: 80)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !537, file: !215, line: 670, baseType: !236, size: 16, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !537, file: !215, line: 671, baseType: !231, size: 8, offset: 112)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !537, file: !215, line: 672, baseType: !218, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !537, file: !215, line: 673, baseType: !222, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !537, file: !215, line: 674, baseType: !548, size: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !215, line: 660, size: 128, elements: !550)
!550 = !{!551, !557}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !549, file: !215, line: 661, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !15, line: 1061, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !556, !11, !5}
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !15, line: 424, baseType: !5)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !549, file: !215, line: 662, baseType: !5, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !350, file: !215, line: 918, baseType: !358, size: 64, offset: 512)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !350, file: !215, line: 919, baseType: !11, size: 32, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !324, file: !325, line: 61, baseType: !11, size: 32, offset: 1088)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !324, file: !325, line: 62, baseType: !11, size: 32, offset: 1120)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !324, file: !325, line: 63, baseType: !236, size: 16, offset: 1152)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !324, file: !325, line: 64, baseType: !231, size: 8, offset: 1168)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !324, file: !325, line: 66, baseType: !565, size: 2688, offset: 1216)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 2688, elements: !25)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !324, file: !325, line: 67, baseType: !567, size: 3072, offset: 3904)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 3072, elements: !534)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !324, file: !325, line: 68, baseType: !569, size: 576, offset: 6976)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 576, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 9)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !324, file: !325, line: 69, baseType: !288, size: 64, offset: 7552)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !324, file: !325, line: 71, baseType: !273, size: 64, offset: 7616)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !324, file: !325, line: 72, baseType: !288, size: 64, offset: 7680)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !324, file: !325, line: 73, baseType: !443, size: 64, offset: 7744)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !324, file: !325, line: 74, baseType: !218, size: 64, offset: 7808)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !324, file: !325, line: 75, baseType: !222, size: 64, offset: 7872)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !324, file: !325, line: 76, baseType: !218, size: 64, offset: 7936)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !324, file: !325, line: 77, baseType: !358, size: 64, offset: 8000)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !324, file: !325, line: 78, baseType: !222, size: 64, offset: 8064)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !324, file: !325, line: 79, baseType: !218, size: 64, offset: 8128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !324, file: !325, line: 80, baseType: !262, size: 64, offset: 8192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !324, file: !325, line: 81, baseType: !358, size: 64, offset: 8256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !324, file: !325, line: 82, baseType: !585, size: 64, offset: 8320)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !215, line: 718, size: 128, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !587, file: !215, line: 722, baseType: !11, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !587, file: !215, line: 723, baseType: !11, size: 32, offset: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !215, line: 724, baseType: !236, size: 16, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !587, file: !215, line: 725, baseType: !231, size: 8, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !587, file: !215, line: 726, baseType: !231, size: 8, offset: 88)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !215, line: 727, baseType: !231, size: 8, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !324, file: !325, line: 83, baseType: !358, size: 64, offset: 8384)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !324, file: !325, line: 84, baseType: !222, size: 64, offset: 8448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !324, file: !325, line: 85, baseType: !443, size: 64, offset: 8512)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !324, file: !325, line: 86, baseType: !222, size: 64, offset: 8576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !324, file: !325, line: 87, baseType: !443, size: 64, offset: 8640)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !324, file: !325, line: 88, baseType: !358, size: 64, offset: 8704)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !324, file: !325, line: 89, baseType: !358, size: 64, offset: 8768)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !324, file: !325, line: 90, baseType: !603, size: 64, offset: 8832)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !324, file: !325, line: 91, baseType: !605, size: 64, offset: 8896)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !215, line: 652, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!14, !323, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !324, file: !325, line: 92, baseType: !611, size: 64, offset: 8960)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !215, line: 656, baseType: !320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !316, file: !224, line: 153, baseType: !222, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !302, file: !224, line: 156, baseType: !11, size: 32, offset: 384)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !302, file: !224, line: 157, baseType: !335, size: 16, offset: 416)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !302, file: !224, line: 158, baseType: !231, size: 8, offset: 432)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !223, file: !224, line: 377, baseType: !617, size: 576)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !224, line: 122, size: 576, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !617, file: !224, line: 123, baseType: !222, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !617, file: !224, line: 123, baseType: !231, size: 8, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !224, line: 123, baseType: !231, size: 8, offset: 72)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !617, file: !224, line: 123, baseType: !236, size: 16, offset: 80)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !224, line: 123, baseType: !231, size: 8, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !617, file: !224, line: 123, baseType: !231, size: 8, offset: 104)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !617, file: !224, line: 124, baseType: !236, size: 16, offset: 112)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !617, file: !224, line: 125, baseType: !5, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !617, file: !224, line: 126, baseType: !6, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !617, file: !224, line: 127, baseType: !603, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !617, file: !224, line: 128, baseType: !222, size: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !617, file: !224, line: 129, baseType: !222, size: 64, offset: 384)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !617, file: !224, line: 130, baseType: !218, size: 64, offset: 448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !617, file: !224, line: 131, baseType: !231, size: 8, offset: 512)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !223, file: !224, line: 378, baseType: !634, size: 512)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !224, line: 134, size: 512, elements: !635)
!635 = !{!636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !647, !648}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !634, file: !224, line: 135, baseType: !222, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !634, file: !224, line: 135, baseType: !231, size: 8, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !634, file: !224, line: 135, baseType: !231, size: 8, offset: 72)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !634, file: !224, line: 135, baseType: !236, size: 16, offset: 80)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !634, file: !224, line: 135, baseType: !231, size: 8, offset: 96)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !634, file: !224, line: 135, baseType: !231, size: 8, offset: 104)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !634, file: !224, line: 136, baseType: !218, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !634, file: !224, line: 137, baseType: !222, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !634, file: !224, line: 138, baseType: !222, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !634, file: !224, line: 139, baseType: !646, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !15, line: 129, baseType: !6)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !634, file: !224, line: 140, baseType: !11, size: 32, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !634, file: !224, line: 141, baseType: !5, size: 64, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !223, file: !224, line: 379, baseType: !650, size: 320)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !224, line: 185, size: 320, elements: !651)
!651 = !{!652, !653, !654, !655, !656, !657, !661}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !650, file: !224, line: 186, baseType: !222, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !650, file: !224, line: 186, baseType: !231, size: 8, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !650, file: !224, line: 186, baseType: !231, size: 8, offset: 72)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !650, file: !224, line: 186, baseType: !236, size: 16, offset: 80)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !650, file: !224, line: 186, baseType: !231, size: 8, offset: 96)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !650, file: !224, line: 186, baseType: !658, size: 128, offset: 128)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 128, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 2)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !650, file: !224, line: 186, baseType: !222, size: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !223, file: !224, line: 380, baseType: !663, size: 384)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !224, line: 188, size: 384, elements: !664)
!664 = !{!665, !666, !667, !668, !669, !670, !671, !672}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !663, file: !224, line: 189, baseType: !222, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !663, file: !224, line: 189, baseType: !231, size: 8, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !663, file: !224, line: 189, baseType: !231, size: 8, offset: 72)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !663, file: !224, line: 189, baseType: !236, size: 16, offset: 80)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !663, file: !224, line: 189, baseType: !231, size: 8, offset: 96)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !663, file: !224, line: 190, baseType: !658, size: 128, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !663, file: !224, line: 190, baseType: !222, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !663, file: !224, line: 190, baseType: !213, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !223, file: !224, line: 381, baseType: !674, size: 384)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !224, line: 193, size: 384, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681, !682, !683, !684}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !674, file: !224, line: 194, baseType: !222, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !674, file: !224, line: 194, baseType: !231, size: 8, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !674, file: !224, line: 194, baseType: !231, size: 8, offset: 72)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !674, file: !224, line: 194, baseType: !236, size: 16, offset: 80)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !224, line: 194, baseType: !231, size: 8, offset: 96)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !674, file: !224, line: 194, baseType: !658, size: 128, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !674, file: !224, line: 194, baseType: !222, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !674, file: !224, line: 194, baseType: !11, size: 32, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !674, file: !224, line: 195, baseType: !11, size: 32, offset: 352)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !223, file: !224, line: 382, baseType: !686, size: 384)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !224, line: 198, size: 384, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !686, file: !224, line: 199, baseType: !222, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !686, file: !224, line: 199, baseType: !231, size: 8, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !686, file: !224, line: 199, baseType: !231, size: 8, offset: 72)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !686, file: !224, line: 199, baseType: !236, size: 16, offset: 80)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !224, line: 199, baseType: !231, size: 8, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !686, file: !224, line: 201, baseType: !231, size: 8, offset: 104)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !686, file: !224, line: 202, baseType: !231, size: 8, offset: 112)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !686, file: !224, line: 203, baseType: !658, size: 128, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !686, file: !224, line: 203, baseType: !222, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !686, file: !224, line: 203, baseType: !698, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !15, line: 128, baseType: !6)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !223, file: !224, line: 383, baseType: !700, size: 320)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !224, line: 206, size: 320, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707, !708}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !700, file: !224, line: 207, baseType: !222, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !700, file: !224, line: 207, baseType: !231, size: 8, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !700, file: !224, line: 207, baseType: !231, size: 8, offset: 72)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !700, file: !224, line: 207, baseType: !236, size: 16, offset: 80)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !224, line: 207, baseType: !231, size: 8, offset: 96)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !700, file: !224, line: 207, baseType: !658, size: 128, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !700, file: !224, line: 207, baseType: !222, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !223, file: !224, line: 384, baseType: !710, size: 384)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !224, line: 234, size: 384, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !710, file: !224, line: 235, baseType: !222, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !710, file: !224, line: 235, baseType: !231, size: 8, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !710, file: !224, line: 235, baseType: !231, size: 8, offset: 72)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !710, file: !224, line: 235, baseType: !236, size: 16, offset: 80)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !710, file: !224, line: 235, baseType: !231, size: 8, offset: 96)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !710, file: !224, line: 235, baseType: !231, size: 8, offset: 104)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !710, file: !224, line: 235, baseType: !231, size: 8, offset: 112)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !710, file: !224, line: 235, baseType: !231, size: 8, offset: 120)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !710, file: !224, line: 235, baseType: !218, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !710, file: !224, line: 235, baseType: !11, size: 32, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !710, file: !224, line: 235, baseType: !11, size: 32, offset: 224)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !710, file: !224, line: 235, baseType: !11, size: 32, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !710, file: !224, line: 235, baseType: !231, size: 8, offset: 288)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !710, file: !224, line: 235, baseType: !231, size: 8, offset: 296)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !710, file: !224, line: 235, baseType: !222, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !223, file: !224, line: 385, baseType: !728, size: 576)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !224, line: 238, size: 576, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !728, file: !224, line: 239, baseType: !222, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !728, file: !224, line: 239, baseType: !231, size: 8, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !728, file: !224, line: 239, baseType: !231, size: 8, offset: 72)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !728, file: !224, line: 239, baseType: !236, size: 16, offset: 80)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !728, file: !224, line: 239, baseType: !231, size: 8, offset: 96)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !728, file: !224, line: 239, baseType: !231, size: 8, offset: 104)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !728, file: !224, line: 239, baseType: !231, size: 8, offset: 112)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !728, file: !224, line: 239, baseType: !231, size: 8, offset: 120)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !728, file: !224, line: 239, baseType: !218, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !728, file: !224, line: 239, baseType: !11, size: 32, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !728, file: !224, line: 239, baseType: !11, size: 32, offset: 224)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !728, file: !224, line: 239, baseType: !11, size: 32, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !728, file: !224, line: 239, baseType: !231, size: 8, offset: 288)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !728, file: !224, line: 239, baseType: !231, size: 8, offset: 296)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !728, file: !224, line: 239, baseType: !236, size: 16, offset: 304)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !728, file: !224, line: 240, baseType: !222, size: 64, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !728, file: !224, line: 241, baseType: !273, size: 64, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !728, file: !224, line: 242, baseType: !236, size: 16, offset: 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !728, file: !224, line: 243, baseType: !273, size: 64, offset: 512)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !223, file: !224, line: 386, baseType: !750, size: 384)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !224, line: 263, size: 384, elements: !751)
!751 = !{!752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !750, file: !224, line: 264, baseType: !222, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !750, file: !224, line: 264, baseType: !231, size: 8, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !750, file: !224, line: 264, baseType: !231, size: 8, offset: 72)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !750, file: !224, line: 264, baseType: !236, size: 16, offset: 80)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !224, line: 264, baseType: !231, size: 8, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !750, file: !224, line: 264, baseType: !231, size: 8, offset: 104)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !750, file: !224, line: 264, baseType: !231, size: 8, offset: 112)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !750, file: !224, line: 264, baseType: !231, size: 8, offset: 120)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !750, file: !224, line: 264, baseType: !218, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !750, file: !224, line: 264, baseType: !11, size: 32, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !750, file: !224, line: 264, baseType: !11, size: 32, offset: 224)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !750, file: !224, line: 264, baseType: !11, size: 32, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !750, file: !224, line: 264, baseType: !231, size: 8, offset: 288)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !750, file: !224, line: 264, baseType: !231, size: 8, offset: 296)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !750, file: !224, line: 264, baseType: !231, size: 8, offset: 304)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !750, file: !224, line: 265, baseType: !222, size: 64, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !223, file: !224, line: 387, baseType: !769, size: 448)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !224, line: 246, size: 448, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !769, file: !224, line: 247, baseType: !222, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !769, file: !224, line: 247, baseType: !231, size: 8, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !769, file: !224, line: 247, baseType: !231, size: 8, offset: 72)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !769, file: !224, line: 247, baseType: !236, size: 16, offset: 80)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !769, file: !224, line: 247, baseType: !231, size: 8, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !769, file: !224, line: 247, baseType: !231, size: 8, offset: 104)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !769, file: !224, line: 247, baseType: !231, size: 8, offset: 112)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !769, file: !224, line: 247, baseType: !231, size: 8, offset: 120)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !769, file: !224, line: 247, baseType: !218, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !769, file: !224, line: 247, baseType: !11, size: 32, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !769, file: !224, line: 247, baseType: !11, size: 32, offset: 224)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !769, file: !224, line: 247, baseType: !11, size: 32, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !769, file: !224, line: 247, baseType: !231, size: 8, offset: 288)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !769, file: !224, line: 247, baseType: !231, size: 8, offset: 296)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !769, file: !224, line: 247, baseType: !222, size: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !769, file: !224, line: 248, baseType: !222, size: 64, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !223, file: !224, line: 388, baseType: !788, size: 448)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !224, line: 251, size: 448, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !788, file: !224, line: 252, baseType: !222, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !788, file: !224, line: 252, baseType: !231, size: 8, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !788, file: !224, line: 252, baseType: !231, size: 8, offset: 72)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !788, file: !224, line: 252, baseType: !236, size: 16, offset: 80)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !788, file: !224, line: 252, baseType: !231, size: 8, offset: 96)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !788, file: !224, line: 252, baseType: !231, size: 8, offset: 104)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !788, file: !224, line: 252, baseType: !231, size: 8, offset: 112)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !788, file: !224, line: 252, baseType: !231, size: 8, offset: 120)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !788, file: !224, line: 252, baseType: !218, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !788, file: !224, line: 252, baseType: !11, size: 32, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !788, file: !224, line: 252, baseType: !11, size: 32, offset: 224)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !788, file: !224, line: 252, baseType: !11, size: 32, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !788, file: !224, line: 252, baseType: !231, size: 8, offset: 288)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !788, file: !224, line: 252, baseType: !231, size: 8, offset: 296)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !788, file: !224, line: 257, baseType: !222, size: 64, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !788, file: !224, line: 258, baseType: !222, size: 64, offset: 384)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !223, file: !224, line: 389, baseType: !807, size: 512)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !224, line: 274, size: 512, elements: !808)
!808 = !{!809, !810, !811, !812, !813, !814, !815, !816, !817, !818}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !807, file: !224, line: 275, baseType: !222, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !807, file: !224, line: 275, baseType: !231, size: 8, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !807, file: !224, line: 275, baseType: !231, size: 8, offset: 72)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !807, file: !224, line: 275, baseType: !236, size: 16, offset: 80)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !807, file: !224, line: 275, baseType: !231, size: 8, offset: 96)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !807, file: !224, line: 275, baseType: !218, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !807, file: !224, line: 276, baseType: !11, size: 32, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !807, file: !224, line: 277, baseType: !552, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !807, file: !224, line: 278, baseType: !5, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !807, file: !224, line: 279, baseType: !658, size: 128, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !223, file: !224, line: 390, baseType: !820, size: 576)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !224, line: 282, size: 576, elements: !821)
!821 = !{!822, !823, !824, !825, !826, !827, !828, !829, !835, !836, !837, !838, !844, !845}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !820, file: !224, line: 283, baseType: !222, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !820, file: !224, line: 283, baseType: !231, size: 8, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !820, file: !224, line: 283, baseType: !231, size: 8, offset: 72)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !820, file: !224, line: 283, baseType: !236, size: 16, offset: 80)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !820, file: !224, line: 283, baseType: !231, size: 8, offset: 96)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !820, file: !224, line: 283, baseType: !231, size: 8, offset: 104)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !820, file: !224, line: 284, baseType: !231, size: 8, offset: 112)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !820, file: !224, line: 285, baseType: !830, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !15, line: 1093, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!14, !11, !646, !11, !834, !5, !5}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !820, file: !224, line: 286, baseType: !218, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !820, file: !224, line: 287, baseType: !5, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !820, file: !224, line: 288, baseType: !5, size: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !820, file: !224, line: 289, baseType: !839, size: 64, offset: 384)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !15, line: 1126, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!14, !556, !11, !5, !843}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !820, file: !224, line: 290, baseType: !222, size: 64, offset: 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !820, file: !224, line: 291, baseType: !222, size: 64, offset: 512)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !223, file: !224, line: 391, baseType: !847, size: 512)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !224, line: 309, size: 512, elements: !848)
!848 = !{!849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !847, file: !224, line: 310, baseType: !222, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !847, file: !224, line: 310, baseType: !231, size: 8, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !847, file: !224, line: 310, baseType: !231, size: 8, offset: 72)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !847, file: !224, line: 310, baseType: !236, size: 16, offset: 80)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !847, file: !224, line: 310, baseType: !231, size: 8, offset: 96)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !847, file: !224, line: 310, baseType: !231, size: 8, offset: 104)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !847, file: !224, line: 311, baseType: !231, size: 8, offset: 112)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !847, file: !224, line: 312, baseType: !231, size: 8, offset: 120)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !847, file: !224, line: 313, baseType: !5, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !847, file: !224, line: 314, baseType: !218, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !847, file: !224, line: 315, baseType: !288, size: 64, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !847, file: !224, line: 316, baseType: !273, size: 64, offset: 320)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !847, file: !224, line: 317, baseType: !273, size: 64, offset: 384)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !847, file: !224, line: 318, baseType: !11, size: 32, offset: 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !223, file: !224, line: 392, baseType: !864, size: 448)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !224, line: 342, size: 448, elements: !865)
!865 = !{!866, !867, !868, !869, !870, !871, !872, !873, !874, !875}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !864, file: !224, line: 343, baseType: !222, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !864, file: !224, line: 343, baseType: !231, size: 8, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !864, file: !224, line: 343, baseType: !231, size: 8, offset: 72)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !864, file: !224, line: 343, baseType: !236, size: 16, offset: 80)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !864, file: !224, line: 343, baseType: !231, size: 8, offset: 96)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !864, file: !224, line: 343, baseType: !218, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !864, file: !224, line: 344, baseType: !218, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !864, file: !224, line: 345, baseType: !5, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !864, file: !224, line: 346, baseType: !273, size: 64, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !864, file: !224, line: 347, baseType: !11, size: 32, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !223, file: !224, line: 393, baseType: !877, size: 256)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !224, line: 352, size: 256, elements: !878)
!878 = !{!879, !880, !881, !882, !883, !884, !889}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !877, file: !224, line: 353, baseType: !222, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !877, file: !224, line: 353, baseType: !231, size: 8, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !877, file: !224, line: 353, baseType: !231, size: 8, offset: 72)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !877, file: !224, line: 353, baseType: !236, size: 16, offset: 80)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !877, file: !224, line: 353, baseType: !231, size: 8, offset: 96)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !877, file: !224, line: 353, baseType: !885, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !15, line: 1064, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !556, !5}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !877, file: !224, line: 354, baseType: !5, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !223, file: !224, line: 394, baseType: !891, size: 192)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !224, line: 359, size: 192, elements: !892)
!892 = !{!893, !894, !895, !896, !897, !898}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !891, file: !224, line: 360, baseType: !222, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !891, file: !224, line: 360, baseType: !231, size: 8, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !891, file: !224, line: 360, baseType: !231, size: 8, offset: 72)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !891, file: !224, line: 360, baseType: !236, size: 16, offset: 80)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !891, file: !224, line: 360, baseType: !231, size: 8, offset: 96)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !891, file: !224, line: 360, baseType: !222, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !223, file: !224, line: 401, baseType: !219, size: 384)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !219, file: !215, line: 135, baseType: !231, size: 8, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !219, file: !215, line: 136, baseType: !231, size: 8, offset: 72)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !215, line: 137, baseType: !236, size: 16, offset: 80)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !219, file: !215, line: 138, baseType: !904, size: 32, offset: 96)
!904 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !905, line: 328, size: 32, elements: !906)
!905 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !904, file: !905, line: 329, baseType: !11, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !904, file: !905, line: 330, baseType: !417, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !219, file: !215, line: 139, baseType: !218, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !219, file: !215, line: 140, baseType: !218, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !219, file: !215, line: 141, baseType: !218, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !219, file: !215, line: 142, baseType: !335, size: 16, offset: 320)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !214, file: !215, line: 482, baseType: !213, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !215, line: 483, baseType: !213, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !214, file: !215, line: 484, baseType: !916, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !215, line: 497, size: 256, elements: !918)
!918 = !{!919, !920, !921, !922}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !917, file: !215, line: 498, baseType: !916, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !917, file: !215, line: 499, baseType: !916, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !917, file: !215, line: 500, baseType: !213, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !917, file: !215, line: 501, baseType: !11, size: 32, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !214, file: !215, line: 485, baseType: !924, size: 64, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !215, line: 466, size: 320, elements: !926)
!926 = !{!927, !932, !933, !934, !935, !936, !937}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !925, file: !215, line: 467, baseType: !928, size: 128)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !215, line: 459, size: 128, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !928, file: !215, line: 460, baseType: !231, size: 8)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !928, file: !215, line: 461, baseType: !6, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !925, file: !215, line: 468, baseType: !928, size: 128, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !925, file: !215, line: 469, baseType: !236, size: 16, offset: 256)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !925, file: !215, line: 470, baseType: !231, size: 8, offset: 272)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !925, file: !215, line: 471, baseType: !231, size: 8, offset: 280)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !925, file: !215, line: 472, baseType: !231, size: 8, offset: 288)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !925, file: !215, line: 473, baseType: !231, size: 8, offset: 296)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !214, file: !215, line: 486, baseType: !939, size: 64, offset: 320)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !215, line: 448, size: 192, elements: !941)
!941 = !{!942, !965, !966, !967, !968, !969}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !940, file: !215, line: 449, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !215, line: 438, size: 64, elements: !944)
!944 = !{!945, !946, !959}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !943, file: !215, line: 439, baseType: !218, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !943, file: !215, line: 440, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !215, line: 419, size: 256, elements: !949)
!949 = !{!950, !955, !956, !957, !958}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !948, file: !215, line: 420, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !15, line: 1058, baseType: !952)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!11, !556, !11, !5}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !948, file: !215, line: 421, baseType: !5, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !948, file: !215, line: 422, baseType: !218, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !948, file: !215, line: 423, baseType: !231, size: 8, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !948, file: !215, line: 424, baseType: !231, size: 8, offset: 200)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !943, file: !215, line: 441, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !215, line: 429, size: 128, elements: !962)
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !961, file: !215, line: 430, baseType: !218, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !961, file: !215, line: 431, baseType: !960, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !940, file: !215, line: 450, baseType: !924, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !940, file: !215, line: 451, baseType: !231, size: 8, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !940, file: !215, line: 452, baseType: !231, size: 8, offset: 136)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !940, file: !215, line: 453, baseType: !231, size: 8, offset: 144)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !940, file: !215, line: 454, baseType: !231, size: 8, offset: 152)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !214, file: !215, line: 487, baseType: !6, size: 64, offset: 384)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !214, file: !215, line: 488, baseType: !11, size: 32, offset: 448)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !214, file: !215, line: 489, baseType: !236, size: 16, offset: 480)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !214, file: !215, line: 490, baseType: !236, size: 16, offset: 496)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !214, file: !215, line: 491, baseType: !231, size: 8, offset: 512)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !214, file: !215, line: 492, baseType: !231, size: 8, offset: 520)
!976 = !DILocalVariable(name: "next_gpe_block", scope: !210, file: !3, line: 47, type: !213)
!977 = !DILocalVariable(name: "gpe_xrupt_info", scope: !210, file: !3, line: 48, type: !916)
!978 = !DILocalVariable(name: "next_gpe_xrupt_info", scope: !210, file: !3, line: 49, type: !916)
!979 = !DILocation(line: 46, column: 2, scope: !210)
!980 = !DILocation(line: 46, column: 30, scope: !210)
!981 = !DILocation(line: 47, column: 2, scope: !210)
!982 = !DILocation(line: 47, column: 30, scope: !210)
!983 = !DILocation(line: 48, column: 2, scope: !210)
!984 = !DILocation(line: 48, column: 30, scope: !210)
!985 = !DILocation(line: 49, column: 2, scope: !210)
!986 = !DILocation(line: 49, column: 30, scope: !210)
!987 = !DILocation(line: 53, column: 19, scope: !210)
!988 = !DILocation(line: 53, column: 17, scope: !210)
!989 = !DILocation(line: 54, column: 2, scope: !210)
!990 = !DILocation(line: 54, column: 9, scope: !210)
!991 = !DILocation(line: 55, column: 15, scope: !992)
!992 = distinct !DILexicalBlock(scope: !210, file: !3, line: 54, column: 25)
!993 = !DILocation(line: 55, column: 31, scope: !992)
!994 = !DILocation(line: 55, column: 13, scope: !992)
!995 = !DILocation(line: 56, column: 3, scope: !992)
!996 = !DILocation(line: 56, column: 10, scope: !992)
!997 = !DILocation(line: 57, column: 21, scope: !998)
!998 = distinct !DILexicalBlock(scope: !992, file: !3, line: 56, column: 21)
!999 = !DILocation(line: 57, column: 32, scope: !998)
!1000 = !DILocation(line: 57, column: 19, scope: !998)
!1001 = !DILocation(line: 58, column: 4, scope: !998)
!1002 = !DILocation(line: 59, column: 4, scope: !998)
!1003 = !DILocation(line: 60, column: 4, scope: !998)
!1004 = !DILocation(line: 62, column: 16, scope: !998)
!1005 = !DILocation(line: 62, column: 14, scope: !998)
!1006 = distinct !{!1006, !995, !1007, !69, !70}
!1007 = !DILocation(line: 63, column: 3, scope: !992)
!1008 = !DILocation(line: 64, column: 25, scope: !992)
!1009 = !DILocation(line: 64, column: 41, scope: !992)
!1010 = !DILocation(line: 64, column: 23, scope: !992)
!1011 = !DILocation(line: 65, column: 3, scope: !992)
!1012 = !DILocation(line: 66, column: 20, scope: !992)
!1013 = !DILocation(line: 66, column: 18, scope: !992)
!1014 = distinct !{!1014, !989, !1015, !69, !70}
!1015 = !DILocation(line: 67, column: 2, scope: !210)
!1016 = !DILocation(line: 68, column: 1, scope: !210)
!1017 = !DISubprogram(name: "acpi_ut_delete_address_lists", scope: !173, file: !173, line: 701, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1018 = distinct !DISubprogram(name: "acpi_os_free", scope: !1019, file: !1019, line: 60, type: !1020, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1022)
!1019 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !5}
!1022 = !{!1023}
!1023 = !DILocalVariable(name: "memory", arg: 1, scope: !1018, file: !1019, line: 60, type: !5)
!1024 = !DILocation(line: 60, column: 39, scope: !1018)
!1025 = !DILocation(line: 62, column: 8, scope: !1018)
!1026 = !DILocation(line: 62, column: 2, scope: !1018)
!1027 = !DILocation(line: 63, column: 1, scope: !1018)
!1028 = !DISubprogram(name: "kfree", scope: !1029, file: !1029, line: 227, type: !1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1029 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
