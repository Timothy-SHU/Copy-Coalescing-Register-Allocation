; ModuleID = 'drivers/acpi/acpica/evevent.c'
source_filename = "drivers/acpi/acpica/evevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_fixed_event_info = type { i8, i8, i16, i16 }
%struct.acpi_fixed_event_handler = type { ptr, ptr }

@acpi_gbl_reduced_hardware = external dso_local global i8, align 1
@_acpi_module_name = internal constant [8 x i8] c"evevent\00", align 1, !dbg !0
@.str = private unnamed_addr constant [34 x i8] c"Unable to initialize fixed events\00", align 1, !dbg !14
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to initialize general purpose events\00", align 1, !dbg !20
@.str.2 = private unnamed_addr constant [51 x i8] c"Unable to install System Control Interrupt handler\00", align 1, !dbg !25
@.str.3 = private unnamed_addr constant [41 x i8] c"Unable to initialize Global Lock handler\00", align 1, !dbg !30
@acpi_gbl_events_initialized = external dso_local global i8, align 1
@acpi_gbl_fixed_event_info = external dso_local global [5 x %struct.acpi_fixed_event_info], align 16
@acpi_fixed_event_count = external dso_local global [5 x i32], align 16
@acpi_gbl_global_event_handler = external dso_local global ptr, align 8
@acpi_gbl_global_event_handler_context = external dso_local global ptr, align 8
@acpi_gbl_fixed_event_handlers = external dso_local global [5 x %struct.acpi_fixed_event_handler], align 16
@.str.4 = private unnamed_addr constant [58 x i8] c"No installed handler for fixed event - %s (%u), disabling\00", align 1, !dbg !35

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_initialize_events() #0 align 16 !dbg !53 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !58
  call void @llvm.dbg.declare(metadata ptr %status, metadata !57, metadata !DIExpression()), !dbg !59
  %0 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !60
  %tobool = icmp ne i8 %0, 0, !dbg !60
  br i1 %tobool, label %if.then, label %if.end, !dbg !62

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !63
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !63

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ev_fixed_event_initialize() #5, !dbg !65
  store i32 %call, ptr %status, align 4, !dbg !66
  %1 = load i32, ptr %status, align 4, !dbg !67
  %tobool1 = icmp ne i32 %1, 0, !dbg !67
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !69

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %status, align 4, !dbg !70
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 53, i32 noundef %2, ptr noundef @.str) #5, !dbg !70
  %3 = load i32, ptr %status, align 4, !dbg !72
  store i32 %3, ptr %retval, align 4, !dbg !72
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !72

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @acpi_ev_gpe_initialize() #5, !dbg !73
  store i32 %call4, ptr %status, align 4, !dbg !74
  %4 = load i32, ptr %status, align 4, !dbg !75
  %tobool5 = icmp ne i32 %4, 0, !dbg !75
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !77

if.then6:                                         ; preds = %if.end3
  %5 = load i32, ptr %status, align 4, !dbg !78
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 60, i32 noundef %5, ptr noundef @.str.1) #5, !dbg !78
  %6 = load i32, ptr %status, align 4, !dbg !80
  store i32 %6, ptr %retval, align 4, !dbg !80
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !80

if.end7:                                          ; preds = %if.end3
  %7 = load i32, ptr %status, align 4, !dbg !81
  store i32 %7, ptr %retval, align 4, !dbg !81
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !81

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !82
  %8 = load i32, ptr %retval, align 4, !dbg !82
  ret i32 %8, !dbg !82
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ev_fixed_event_initialize() #0 align 16 !dbg !83 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !87
  call void @llvm.dbg.declare(metadata ptr %i, metadata !85, metadata !DIExpression()), !dbg !88
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !89
  call void @llvm.dbg.declare(metadata ptr %status, metadata !86, metadata !DIExpression()), !dbg !90
  store i32 0, ptr %i, align 4, !dbg !91
  br label %for.cond, !dbg !93

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !94
  %cmp = icmp ult i32 %0, 5, !dbg !96
  br i1 %cmp, label %for.body, label %for.end, !dbg !97

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !98
  %idxprom = zext i32 %1 to i64, !dbg !100
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_handler], ptr @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom, !dbg !100
  %handler = getelementptr inbounds %struct.acpi_fixed_event_handler, ptr %arrayidx, i32 0, i32 0, !dbg !101
  store ptr null, ptr %handler, align 16, !dbg !102
  %2 = load i32, ptr %i, align 4, !dbg !103
  %idxprom1 = zext i32 %2 to i64, !dbg !104
  %arrayidx2 = getelementptr [5 x %struct.acpi_fixed_event_handler], ptr @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom1, !dbg !104
  %context = getelementptr inbounds %struct.acpi_fixed_event_handler, ptr %arrayidx2, i32 0, i32 1, !dbg !105
  store ptr null, ptr %context, align 8, !dbg !106
  %3 = load i32, ptr %i, align 4, !dbg !107
  %idxprom3 = zext i32 %3 to i64, !dbg !109
  %arrayidx4 = getelementptr [5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom3, !dbg !109
  %enable_register_id = getelementptr inbounds %struct.acpi_fixed_event_info, ptr %arrayidx4, i32 0, i32 1, !dbg !110
  %4 = load i8, ptr %enable_register_id, align 1, !dbg !110
  %conv = zext i8 %4 to i32, !dbg !109
  %cmp5 = icmp ne i32 %conv, 255, !dbg !111
  br i1 %cmp5, label %if.then, label %if.end12, !dbg !112

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !113
  %idxprom7 = zext i32 %5 to i64, !dbg !115
  %arrayidx8 = getelementptr [5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom7, !dbg !115
  %enable_register_id9 = getelementptr inbounds %struct.acpi_fixed_event_info, ptr %arrayidx8, i32 0, i32 1, !dbg !116
  %6 = load i8, ptr %enable_register_id9, align 1, !dbg !116
  %conv10 = zext i8 %6 to i32, !dbg !115
  %call = call i32 @acpi_write_bit_register(i32 noundef %conv10, i32 noundef 0) #5, !dbg !117
  store i32 %call, ptr %status, align 4, !dbg !118
  %7 = load i32, ptr %status, align 4, !dbg !119
  %tobool = icmp ne i32 %7, 0, !dbg !119
  br i1 %tobool, label %if.then11, label %if.end, !dbg !121

if.then11:                                        ; preds = %if.then
  %8 = load i32, ptr %status, align 4, !dbg !122
  store i32 %8, ptr %retval, align 4, !dbg !124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !124

if.end:                                           ; preds = %if.then
  br label %if.end12, !dbg !125

if.end12:                                         ; preds = %if.end, %for.body
  br label %for.inc, !dbg !126

for.inc:                                          ; preds = %if.end12
  %9 = load i32, ptr %i, align 4, !dbg !127
  %inc = add i32 %9, 1, !dbg !127
  store i32 %inc, ptr %i, align 4, !dbg !127
  br label %for.cond, !dbg !128, !llvm.loop !129

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !133

cleanup:                                          ; preds = %for.end, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !134
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !134
  %10 = load i32, ptr %retval, align 4, !dbg !134
  ret i32 %10, !dbg !134
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !135 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !140 dso_local i32 @acpi_ev_gpe_initialize() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_install_xrupt_handlers() #0 align 16 !dbg !142 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !145
  call void @llvm.dbg.declare(metadata ptr %status, metadata !144, metadata !DIExpression()), !dbg !146
  %0 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !147
  %tobool = icmp ne i8 %0, 0, !dbg !147
  br i1 %tobool, label %if.then, label %if.end, !dbg !149

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !150

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ev_install_sci_handler() #5, !dbg !152
  store i32 %call, ptr %status, align 4, !dbg !153
  %1 = load i32, ptr %status, align 4, !dbg !154
  %tobool1 = icmp ne i32 %1, 0, !dbg !154
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !156

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %status, align 4, !dbg !157
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 96, i32 noundef %2, ptr noundef @.str.2) #5, !dbg !157
  %3 = load i32, ptr %status, align 4, !dbg !159
  store i32 %3, ptr %retval, align 4, !dbg !159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !159

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @acpi_ev_init_global_lock_handler() #5, !dbg !160
  store i32 %call4, ptr %status, align 4, !dbg !161
  %4 = load i32, ptr %status, align 4, !dbg !162
  %tobool5 = icmp ne i32 %4, 0, !dbg !162
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !164

if.then6:                                         ; preds = %if.end3
  %5 = load i32, ptr %status, align 4, !dbg !165
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 105, i32 noundef %5, ptr noundef @.str.3) #5, !dbg !165
  %6 = load i32, ptr %status, align 4, !dbg !167
  store i32 %6, ptr %retval, align 4, !dbg !167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !167

if.end7:                                          ; preds = %if.end3
  store i8 1, ptr @acpi_gbl_events_initialized, align 1, !dbg !168
  %7 = load i32, ptr %status, align 4, !dbg !169
  store i32 %7, ptr %retval, align 4, !dbg !169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !169

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !170
  %8 = load i32, ptr %retval, align 4, !dbg !170
  ret i32 %8, !dbg !170
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !171 dso_local i32 @acpi_ev_install_sci_handler() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !174 dso_local i32 @acpi_ev_init_global_lock_handler() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_fixed_event_detect() #0 align 16 !dbg !175 {
entry:
  %retval = alloca i32, align 4
  %int_status = alloca i32, align 4
  %fixed_status = alloca i32, align 4
  %fixed_enable = alloca i32, align 4
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %int_status) #4, !dbg !182
  call void @llvm.dbg.declare(metadata ptr %int_status, metadata !177, metadata !DIExpression()), !dbg !183
  store i32 0, ptr %int_status, align 4, !dbg !183
  call void @llvm.lifetime.start.p0(i64 4, ptr %fixed_status) #4, !dbg !184
  call void @llvm.dbg.declare(metadata ptr %fixed_status, metadata !178, metadata !DIExpression()), !dbg !185
  call void @llvm.lifetime.start.p0(i64 4, ptr %fixed_enable) #4, !dbg !186
  call void @llvm.dbg.declare(metadata ptr %fixed_enable, metadata !179, metadata !DIExpression()), !dbg !187
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !188
  call void @llvm.dbg.declare(metadata ptr %i, metadata !180, metadata !DIExpression()), !dbg !189
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !190
  call void @llvm.dbg.declare(metadata ptr %status, metadata !181, metadata !DIExpression()), !dbg !191
  %call = call i32 @acpi_hw_register_read(i32 noundef 1, ptr noundef %fixed_status) #5, !dbg !192
  store i32 %call, ptr %status, align 4, !dbg !193
  %call1 = call i32 @acpi_hw_register_read(i32 noundef 2, ptr noundef %fixed_enable) #5, !dbg !194
  %0 = load i32, ptr %status, align 4, !dbg !195
  %or = or i32 %0, %call1, !dbg !195
  store i32 %or, ptr %status, align 4, !dbg !195
  %1 = load i32, ptr %status, align 4, !dbg !196
  %tobool = icmp ne i32 %1, 0, !dbg !196
  br i1 %tobool, label %if.then, label %if.end, !dbg !198

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %int_status, align 4, !dbg !199
  store i32 %2, ptr %retval, align 4, !dbg !201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !201

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !202
  br label %for.cond, !dbg !204

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !205
  %cmp = icmp ult i32 %3, 5, !dbg !207
  br i1 %cmp, label %for.body, label %for.end, !dbg !208

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %fixed_status, align 4, !dbg !209
  %5 = load i32, ptr %i, align 4, !dbg !212
  %idxprom = zext i32 %5 to i64, !dbg !213
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom, !dbg !213
  %status_bit_mask = getelementptr inbounds %struct.acpi_fixed_event_info, ptr %arrayidx, i32 0, i32 2, !dbg !214
  %6 = load i16, ptr %status_bit_mask, align 2, !dbg !214
  %conv = zext i16 %6 to i32, !dbg !213
  %and = and i32 %4, %conv, !dbg !215
  %tobool2 = icmp ne i32 %and, 0, !dbg !215
  br i1 %tobool2, label %land.lhs.true, label %if.end16, !dbg !216

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, ptr %fixed_enable, align 4, !dbg !217
  %8 = load i32, ptr %i, align 4, !dbg !218
  %idxprom3 = zext i32 %8 to i64, !dbg !219
  %arrayidx4 = getelementptr [5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom3, !dbg !219
  %enable_bit_mask = getelementptr inbounds %struct.acpi_fixed_event_info, ptr %arrayidx4, i32 0, i32 3, !dbg !220
  %9 = load i16, ptr %enable_bit_mask, align 2, !dbg !220
  %conv5 = zext i16 %9 to i32, !dbg !219
  %and6 = and i32 %7, %conv5, !dbg !221
  %tobool7 = icmp ne i32 %and6, 0, !dbg !221
  br i1 %tobool7, label %if.then8, label %if.end16, !dbg !222

if.then8:                                         ; preds = %land.lhs.true
  %10 = load i32, ptr %i, align 4, !dbg !223
  %idxprom9 = zext i32 %10 to i64, !dbg !225
  %arrayidx10 = getelementptr [5 x i32], ptr @acpi_fixed_event_count, i64 0, i64 %idxprom9, !dbg !225
  %11 = load i32, ptr %arrayidx10, align 4, !dbg !226
  %inc = add i32 %11, 1, !dbg !226
  store i32 %inc, ptr %arrayidx10, align 4, !dbg !226
  %12 = load ptr, ptr @acpi_gbl_global_event_handler, align 8, !dbg !227
  %tobool11 = icmp ne ptr %12, null, !dbg !227
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !229

if.then12:                                        ; preds = %if.then8
  %13 = load ptr, ptr @acpi_gbl_global_event_handler, align 8, !dbg !230
  %14 = load i32, ptr %i, align 4, !dbg !232
  %15 = load ptr, ptr @acpi_gbl_global_event_handler_context, align 8, !dbg !233
  call void %13(i32 noundef 1, ptr noundef null, i32 noundef %14, ptr noundef %15) #5, !dbg !230
  br label %if.end13, !dbg !234

if.end13:                                         ; preds = %if.then12, %if.then8
  %16 = load i32, ptr %i, align 4, !dbg !235
  %call14 = call i32 @acpi_ev_fixed_event_dispatch(i32 noundef %16) #5, !dbg !236
  %17 = load i32, ptr %int_status, align 4, !dbg !237
  %or15 = or i32 %17, %call14, !dbg !237
  store i32 %or15, ptr %int_status, align 4, !dbg !237
  br label %if.end16, !dbg !238

if.end16:                                         ; preds = %if.end13, %land.lhs.true, %for.body
  br label %for.inc, !dbg !239

for.inc:                                          ; preds = %if.end16
  %18 = load i32, ptr %i, align 4, !dbg !240
  %inc17 = add i32 %18, 1, !dbg !240
  store i32 %inc17, ptr %i, align 4, !dbg !240
  br label %for.cond, !dbg !241, !llvm.loop !242

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %int_status, align 4, !dbg !244
  store i32 %19, ptr %retval, align 4, !dbg !245
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !245

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !246
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !246
  call void @llvm.lifetime.end.p0(i64 4, ptr %fixed_enable) #4, !dbg !246
  call void @llvm.lifetime.end.p0(i64 4, ptr %fixed_status) #4, !dbg !246
  call void @llvm.lifetime.end.p0(i64 4, ptr %int_status) #4, !dbg !246
  %20 = load i32, ptr %retval, align 4, !dbg !246
  ret i32 %20, !dbg !246
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !247 dso_local i32 @acpi_hw_register_read(i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ev_fixed_event_dispatch(i32 noundef %event) #0 align 16 !dbg !252 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i32, align 4
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !256, metadata !DIExpression()), !dbg !257
  %0 = load i32, ptr %event.addr, align 4, !dbg !258
  %idxprom = zext i32 %0 to i64, !dbg !259
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom, !dbg !259
  %status_register_id = getelementptr inbounds %struct.acpi_fixed_event_info, ptr %arrayidx, i32 0, i32 0, !dbg !260
  %1 = load i8, ptr %status_register_id, align 2, !dbg !260
  %conv = zext i8 %1 to i32, !dbg !259
  %call = call i32 @acpi_write_bit_register(i32 noundef %conv, i32 noundef 1) #5, !dbg !261
  %2 = load i32, ptr %event.addr, align 4, !dbg !262
  %idxprom1 = zext i32 %2 to i64, !dbg !264
  %arrayidx2 = getelementptr [5 x %struct.acpi_fixed_event_handler], ptr @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom1, !dbg !264
  %handler = getelementptr inbounds %struct.acpi_fixed_event_handler, ptr %arrayidx2, i32 0, i32 0, !dbg !265
  %3 = load ptr, ptr %handler, align 16, !dbg !265
  %tobool = icmp ne ptr %3, null, !dbg !264
  br i1 %tobool, label %if.end, label %if.then, !dbg !266

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %event.addr, align 4, !dbg !267
  %idxprom3 = zext i32 %4 to i64, !dbg !269
  %arrayidx4 = getelementptr [5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom3, !dbg !269
  %enable_register_id = getelementptr inbounds %struct.acpi_fixed_event_info, ptr %arrayidx4, i32 0, i32 1, !dbg !270
  %5 = load i8, ptr %enable_register_id, align 1, !dbg !270
  %conv5 = zext i8 %5 to i32, !dbg !269
  %call6 = call i32 @acpi_write_bit_register(i32 noundef %conv5, i32 noundef 0) #5, !dbg !271
  %6 = load i32, ptr %event.addr, align 4, !dbg !272
  %call7 = call ptr @acpi_ut_get_event_name(i32 noundef %6) #5, !dbg !272
  %7 = load i32, ptr %event.addr, align 4, !dbg !272
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 255, ptr noundef @.str.4, ptr noundef %call7, i32 noundef %7) #5, !dbg !272
  store i32 0, ptr %retval, align 4, !dbg !273
  br label %return, !dbg !273

if.end:                                           ; preds = %entry
  %8 = load i32, ptr %event.addr, align 4, !dbg !274
  %idxprom8 = zext i32 %8 to i64, !dbg !275
  %arrayidx9 = getelementptr [5 x %struct.acpi_fixed_event_handler], ptr @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom8, !dbg !275
  %handler10 = getelementptr inbounds %struct.acpi_fixed_event_handler, ptr %arrayidx9, i32 0, i32 0, !dbg !276
  %9 = load ptr, ptr %handler10, align 16, !dbg !276
  %10 = load i32, ptr %event.addr, align 4, !dbg !277
  %idxprom11 = zext i32 %10 to i64, !dbg !278
  %arrayidx12 = getelementptr [5 x %struct.acpi_fixed_event_handler], ptr @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom11, !dbg !278
  %context = getelementptr inbounds %struct.acpi_fixed_event_handler, ptr %arrayidx12, i32 0, i32 1, !dbg !279
  %11 = load ptr, ptr %context, align 8, !dbg !279
  %call13 = call i32 %9(ptr noundef %11) #5, !dbg !280
  store i32 %call13, ptr %retval, align 4, !dbg !281
  br label %return, !dbg !281

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !282
  ret i32 %12, !dbg !282
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_any_fixed_event_status_set() #0 align 16 !dbg !283 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %in_status = alloca i32, align 4
  %in_enable = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !289
  call void @llvm.dbg.declare(metadata ptr %status, metadata !285, metadata !DIExpression()), !dbg !290
  call void @llvm.lifetime.start.p0(i64 4, ptr %in_status) #4, !dbg !291
  call void @llvm.dbg.declare(metadata ptr %in_status, metadata !286, metadata !DIExpression()), !dbg !292
  call void @llvm.lifetime.start.p0(i64 4, ptr %in_enable) #4, !dbg !293
  call void @llvm.dbg.declare(metadata ptr %in_enable, metadata !287, metadata !DIExpression()), !dbg !294
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %i, metadata !288, metadata !DIExpression()), !dbg !296
  %call = call i32 @acpi_hw_register_read(i32 noundef 2, ptr noundef %in_enable) #5, !dbg !297
  store i32 %call, ptr %status, align 4, !dbg !298
  %0 = load i32, ptr %status, align 4, !dbg !299
  %tobool = icmp ne i32 %0, 0, !dbg !299
  br i1 %tobool, label %if.then, label %if.end, !dbg !301

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !302

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_hw_register_read(i32 noundef 1, ptr noundef %in_status) #5, !dbg !304
  store i32 %call1, ptr %status, align 4, !dbg !305
  %1 = load i32, ptr %status, align 4, !dbg !306
  %tobool2 = icmp ne i32 %1, 0, !dbg !306
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !308

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !309

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !311
  br label %for.cond, !dbg !313

for.cond:                                         ; preds = %for.inc, %if.end4
  %2 = load i32, ptr %i, align 4, !dbg !314
  %cmp = icmp ult i32 %2, 5, !dbg !316
  br i1 %cmp, label %for.body, label %for.end, !dbg !317

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %in_status, align 4, !dbg !318
  %4 = load i32, ptr %i, align 4, !dbg !321
  %idxprom = zext i32 %4 to i64, !dbg !322
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom, !dbg !322
  %status_bit_mask = getelementptr inbounds %struct.acpi_fixed_event_info, ptr %arrayidx, i32 0, i32 2, !dbg !323
  %5 = load i16, ptr %status_bit_mask, align 2, !dbg !323
  %conv = zext i16 %5 to i32, !dbg !322
  %and = and i32 %3, %conv, !dbg !324
  %tobool5 = icmp ne i32 %and, 0, !dbg !324
  br i1 %tobool5, label %land.lhs.true, label %if.end12, !dbg !325

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, ptr %in_enable, align 4, !dbg !326
  %7 = load i32, ptr %i, align 4, !dbg !327
  %idxprom6 = zext i32 %7 to i64, !dbg !328
  %arrayidx7 = getelementptr [5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom6, !dbg !328
  %enable_bit_mask = getelementptr inbounds %struct.acpi_fixed_event_info, ptr %arrayidx7, i32 0, i32 3, !dbg !329
  %8 = load i16, ptr %enable_bit_mask, align 2, !dbg !329
  %conv8 = zext i16 %8 to i32, !dbg !328
  %and9 = and i32 %6, %conv8, !dbg !330
  %tobool10 = icmp ne i32 %and9, 0, !dbg !330
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !331

if.then11:                                        ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !332

if.end12:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !334

for.inc:                                          ; preds = %if.end12
  %9 = load i32, ptr %i, align 4, !dbg !335
  %inc = add i32 %9, 1, !dbg !335
  store i32 %inc, ptr %i, align 4, !dbg !335
  br label %for.cond, !dbg !336, !llvm.loop !337

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !339

cleanup:                                          ; preds = %for.end, %if.then11, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !340
  call void @llvm.lifetime.end.p0(i64 4, ptr %in_enable) #4, !dbg !340
  call void @llvm.lifetime.end.p0(i64 4, ptr %in_status) #4, !dbg !340
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !340
  %10 = load i32, ptr %retval, align 4, !dbg !340
  ret i32 %10, !dbg !340
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !341 dso_local i32 @acpi_write_bit_register(i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !344 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !347 dso_local ptr @acpi_ut_get_event_name(i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !40, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.evevent.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22evevent\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/evevent.ll drivers/acpi/acpica/evevent.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evevent.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53d3b35d3ab46c624748afced130cd27")
!4 = !{!5, !12}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!14, !20, !25, !30, !0, !35}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 272, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !{!19}
!19 = !DISubrange(count: 34)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(scope: null, file: !3, line: 60, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 352, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 44)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !3, line: 96, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 408, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 51)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !3, line: 105, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 328, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 41)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 464, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 58)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 64, elements: !42)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!42 = !{!43}
!43 = !DISubrange(count: 8)
!44 = !{i32 7, !"Dwarf Version", i32 5}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 8, !"cf-protection-branch", i32 1}
!48 = !{i32 4, !"function_return_thunk_extern", i32 1}
!49 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!50 = !{i32 1, !"Code Model", i32 2}
!51 = !{i32 1, !"override-stack-alignment", i32 8}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = distinct !DISubprogram(name: "acpi_ev_initialize_events", scope: !3, file: !3, line: 34, type: !54, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !56)
!54 = !DISubroutineType(types: !55)
!55 = !{!5}
!56 = !{!57}
!57 = !DILocalVariable(name: "status", scope: !53, file: !3, line: 36, type: !5)
!58 = !DILocation(line: 36, column: 2, scope: !53)
!59 = !DILocation(line: 36, column: 14, scope: !53)
!60 = !DILocation(line: 42, column: 6, scope: !61)
!61 = distinct !DILexicalBlock(scope: !53, file: !3, line: 42, column: 6)
!62 = !DILocation(line: 42, column: 6, scope: !53)
!63 = !DILocation(line: 43, column: 3, scope: !64)
!64 = distinct !DILexicalBlock(scope: !61, file: !3, line: 42, column: 33)
!65 = !DILocation(line: 51, column: 11, scope: !53)
!66 = !DILocation(line: 51, column: 9, scope: !53)
!67 = !DILocation(line: 52, column: 6, scope: !68)
!68 = distinct !DILexicalBlock(scope: !53, file: !3, line: 52, column: 6)
!69 = !DILocation(line: 52, column: 6, scope: !53)
!70 = !DILocation(line: 53, column: 3, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !3, line: 52, column: 28)
!72 = !DILocation(line: 55, column: 3, scope: !71)
!73 = !DILocation(line: 58, column: 11, scope: !53)
!74 = !DILocation(line: 58, column: 9, scope: !53)
!75 = !DILocation(line: 59, column: 6, scope: !76)
!76 = distinct !DILexicalBlock(scope: !53, file: !3, line: 59, column: 6)
!77 = !DILocation(line: 59, column: 6, scope: !53)
!78 = !DILocation(line: 60, column: 3, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !3, line: 59, column: 28)
!80 = !DILocation(line: 62, column: 3, scope: !79)
!81 = !DILocation(line: 65, column: 2, scope: !53)
!82 = !DILocation(line: 66, column: 1, scope: !53)
!83 = distinct !DISubprogram(name: "acpi_ev_fixed_event_initialize", scope: !3, file: !3, line: 126, type: !54, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!84 = !{!85, !86}
!85 = !DILocalVariable(name: "i", scope: !83, file: !3, line: 128, type: !7)
!86 = !DILocalVariable(name: "status", scope: !83, file: !3, line: 129, type: !5)
!87 = !DILocation(line: 128, column: 2, scope: !83)
!88 = !DILocation(line: 128, column: 6, scope: !83)
!89 = !DILocation(line: 129, column: 2, scope: !83)
!90 = !DILocation(line: 129, column: 14, scope: !83)
!91 = !DILocation(line: 135, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !83, file: !3, line: 135, column: 2)
!93 = !DILocation(line: 135, column: 7, scope: !92)
!94 = !DILocation(line: 135, column: 14, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !3, line: 135, column: 2)
!96 = !DILocation(line: 135, column: 16, scope: !95)
!97 = !DILocation(line: 135, column: 2, scope: !92)
!98 = !DILocation(line: 136, column: 33, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !3, line: 135, column: 46)
!100 = !DILocation(line: 136, column: 3, scope: !99)
!101 = !DILocation(line: 136, column: 36, scope: !99)
!102 = !DILocation(line: 136, column: 44, scope: !99)
!103 = !DILocation(line: 137, column: 33, scope: !99)
!104 = !DILocation(line: 137, column: 3, scope: !99)
!105 = !DILocation(line: 137, column: 36, scope: !99)
!106 = !DILocation(line: 137, column: 44, scope: !99)
!107 = !DILocation(line: 141, column: 33, scope: !108)
!108 = distinct !DILexicalBlock(scope: !99, file: !3, line: 141, column: 7)
!109 = !DILocation(line: 141, column: 7, scope: !108)
!110 = !DILocation(line: 141, column: 36, scope: !108)
!111 = !DILocation(line: 141, column: 55, scope: !108)
!112 = !DILocation(line: 141, column: 7, scope: !99)
!113 = !DILocation(line: 144, column: 12, scope: !114)
!114 = distinct !DILexicalBlock(scope: !108, file: !3, line: 141, column: 64)
!115 = !DILocation(line: 143, column: 32, scope: !114)
!116 = !DILocation(line: 144, column: 15, scope: !114)
!117 = !DILocation(line: 143, column: 8, scope: !114)
!118 = !DILocation(line: 142, column: 11, scope: !114)
!119 = !DILocation(line: 146, column: 8, scope: !120)
!120 = distinct !DILexicalBlock(scope: !114, file: !3, line: 146, column: 8)
!121 = !DILocation(line: 146, column: 8, scope: !114)
!122 = !DILocation(line: 147, column: 13, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !3, line: 146, column: 30)
!124 = !DILocation(line: 147, column: 5, scope: !123)
!125 = !DILocation(line: 149, column: 3, scope: !114)
!126 = !DILocation(line: 150, column: 2, scope: !99)
!127 = !DILocation(line: 135, column: 42, scope: !95)
!128 = !DILocation(line: 135, column: 2, scope: !95)
!129 = distinct !{!129, !97, !130, !131, !132}
!130 = !DILocation(line: 150, column: 2, scope: !92)
!131 = !{!"llvm.loop.mustprogress"}
!132 = !{!"llvm.loop.unroll.disable"}
!133 = !DILocation(line: 152, column: 2, scope: !83)
!134 = !DILocation(line: 153, column: 1, scope: !83)
!135 = !DISubprogram(name: "acpi_exception", scope: !136, file: !136, line: 906, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!136 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!137 = !DISubroutineType(types: !138)
!138 = !{null, !139, !7, !5, !139, null}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!140 = !DISubprogram(name: "acpi_ev_gpe_initialize", scope: !141, file: !141, line: 120, type: !54, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!141 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!142 = distinct !DISubprogram(name: "acpi_ev_install_xrupt_handlers", scope: !3, file: !3, line: 80, type: !54, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !143)
!143 = !{!144}
!144 = !DILocalVariable(name: "status", scope: !142, file: !3, line: 82, type: !5)
!145 = !DILocation(line: 82, column: 2, scope: !142)
!146 = !DILocation(line: 82, column: 14, scope: !142)
!147 = !DILocation(line: 88, column: 6, scope: !148)
!148 = distinct !DILexicalBlock(scope: !142, file: !3, line: 88, column: 6)
!149 = !DILocation(line: 88, column: 6, scope: !142)
!150 = !DILocation(line: 89, column: 3, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !3, line: 88, column: 33)
!152 = !DILocation(line: 94, column: 11, scope: !142)
!153 = !DILocation(line: 94, column: 9, scope: !142)
!154 = !DILocation(line: 95, column: 6, scope: !155)
!155 = distinct !DILexicalBlock(scope: !142, file: !3, line: 95, column: 6)
!156 = !DILocation(line: 95, column: 6, scope: !142)
!157 = !DILocation(line: 96, column: 3, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !3, line: 95, column: 28)
!159 = !DILocation(line: 98, column: 3, scope: !158)
!160 = !DILocation(line: 103, column: 11, scope: !142)
!161 = !DILocation(line: 103, column: 9, scope: !142)
!162 = !DILocation(line: 104, column: 6, scope: !163)
!163 = distinct !DILexicalBlock(scope: !142, file: !3, line: 104, column: 6)
!164 = !DILocation(line: 104, column: 6, scope: !142)
!165 = !DILocation(line: 105, column: 3, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !3, line: 104, column: 28)
!167 = !DILocation(line: 107, column: 3, scope: !166)
!168 = !DILocation(line: 110, column: 30, scope: !142)
!169 = !DILocation(line: 111, column: 2, scope: !142)
!170 = !DILocation(line: 112, column: 1, scope: !142)
!171 = !DISubprogram(name: "acpi_ev_install_sci_handler", scope: !141, file: !141, line: 247, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!172 = !DISubroutineType(types: !173)
!173 = !{!7}
!174 = !DISubprogram(name: "acpi_ev_init_global_lock_handler", scope: !141, file: !141, line: 50, type: !54, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!175 = distinct !DISubprogram(name: "acpi_ev_fixed_event_detect", scope: !3, file: !3, line: 167, type: !172, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !176)
!176 = !{!177, !178, !179, !180, !181}
!177 = !DILocalVariable(name: "int_status", scope: !175, file: !3, line: 169, type: !7)
!178 = !DILocalVariable(name: "fixed_status", scope: !175, file: !3, line: 170, type: !7)
!179 = !DILocalVariable(name: "fixed_enable", scope: !175, file: !3, line: 171, type: !7)
!180 = !DILocalVariable(name: "i", scope: !175, file: !3, line: 172, type: !7)
!181 = !DILocalVariable(name: "status", scope: !175, file: !3, line: 173, type: !5)
!182 = !DILocation(line: 169, column: 2, scope: !175)
!183 = !DILocation(line: 169, column: 6, scope: !175)
!184 = !DILocation(line: 170, column: 2, scope: !175)
!185 = !DILocation(line: 170, column: 6, scope: !175)
!186 = !DILocation(line: 171, column: 2, scope: !175)
!187 = !DILocation(line: 171, column: 6, scope: !175)
!188 = !DILocation(line: 172, column: 2, scope: !175)
!189 = !DILocation(line: 172, column: 6, scope: !175)
!190 = !DILocation(line: 173, column: 2, scope: !175)
!191 = !DILocation(line: 173, column: 14, scope: !175)
!192 = !DILocation(line: 181, column: 11, scope: !175)
!193 = !DILocation(line: 181, column: 9, scope: !175)
!194 = !DILocation(line: 183, column: 6, scope: !175)
!195 = !DILocation(line: 182, column: 9, scope: !175)
!196 = !DILocation(line: 184, column: 6, scope: !197)
!197 = distinct !DILexicalBlock(scope: !175, file: !3, line: 184, column: 6)
!198 = !DILocation(line: 184, column: 6, scope: !175)
!199 = !DILocation(line: 185, column: 11, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !3, line: 184, column: 28)
!201 = !DILocation(line: 185, column: 3, scope: !200)
!202 = !DILocation(line: 195, column: 9, scope: !203)
!203 = distinct !DILexicalBlock(scope: !175, file: !3, line: 195, column: 2)
!204 = !DILocation(line: 195, column: 7, scope: !203)
!205 = !DILocation(line: 195, column: 14, scope: !206)
!206 = distinct !DILexicalBlock(scope: !203, file: !3, line: 195, column: 2)
!207 = !DILocation(line: 195, column: 16, scope: !206)
!208 = !DILocation(line: 195, column: 2, scope: !203)
!209 = !DILocation(line: 199, column: 8, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !3, line: 199, column: 7)
!211 = distinct !DILexicalBlock(scope: !206, file: !3, line: 195, column: 46)
!212 = !DILocation(line: 199, column: 49, scope: !210)
!213 = !DILocation(line: 199, column: 23, scope: !210)
!214 = !DILocation(line: 200, column: 8, scope: !210)
!215 = !DILocation(line: 199, column: 21, scope: !210)
!216 = !DILocation(line: 201, column: 7, scope: !210)
!217 = !DILocation(line: 201, column: 11, scope: !210)
!218 = !DILocation(line: 201, column: 52, scope: !210)
!219 = !DILocation(line: 201, column: 26, scope: !210)
!220 = !DILocation(line: 202, column: 4, scope: !210)
!221 = !DILocation(line: 201, column: 24, scope: !210)
!222 = !DILocation(line: 199, column: 7, scope: !211)
!223 = !DILocation(line: 207, column: 27, scope: !224)
!224 = distinct !DILexicalBlock(scope: !210, file: !3, line: 202, column: 22)
!225 = !DILocation(line: 207, column: 4, scope: !224)
!226 = !DILocation(line: 207, column: 29, scope: !224)
!227 = !DILocation(line: 208, column: 8, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !3, line: 208, column: 8)
!229 = !DILocation(line: 208, column: 8, scope: !224)
!230 = !DILocation(line: 209, column: 5, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !3, line: 208, column: 39)
!232 = !DILocation(line: 210, column: 39, scope: !231)
!233 = !DILocation(line: 211, column: 10, scope: !231)
!234 = !DILocation(line: 212, column: 4, scope: !231)
!235 = !DILocation(line: 214, column: 47, scope: !224)
!236 = !DILocation(line: 214, column: 18, scope: !224)
!237 = !DILocation(line: 214, column: 15, scope: !224)
!238 = !DILocation(line: 215, column: 3, scope: !224)
!239 = !DILocation(line: 216, column: 2, scope: !211)
!240 = !DILocation(line: 195, column: 42, scope: !206)
!241 = !DILocation(line: 195, column: 2, scope: !206)
!242 = distinct !{!242, !208, !243, !131, !132}
!243 = !DILocation(line: 216, column: 2, scope: !203)
!244 = !DILocation(line: 218, column: 10, scope: !175)
!245 = !DILocation(line: 218, column: 2, scope: !175)
!246 = !DILocation(line: 219, column: 1, scope: !175)
!247 = !DISubprogram(name: "acpi_hw_register_read", scope: !248, file: !248, line: 43, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!248 = !DIFile(filename: "drivers/acpi/acpica/achware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e639ab6c676f6257d869bb312951f39d")
!249 = !DISubroutineType(types: !250)
!250 = !{!5, !7, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!252 = distinct !DISubprogram(name: "acpi_ev_fixed_event_dispatch", scope: !3, file: !3, line: 236, type: !253, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{!7, !7}
!255 = !{!256}
!256 = !DILocalVariable(name: "event", arg: 1, scope: !252, file: !3, line: 236, type: !7)
!257 = !DILocation(line: 236, column: 45, scope: !252)
!258 = !DILocation(line: 243, column: 58, scope: !252)
!259 = !DILocation(line: 243, column: 32, scope: !252)
!260 = !DILocation(line: 244, column: 11, scope: !252)
!261 = !DILocation(line: 243, column: 8, scope: !252)
!262 = !DILocation(line: 250, column: 37, scope: !263)
!263 = distinct !DILexicalBlock(scope: !252, file: !3, line: 250, column: 6)
!264 = !DILocation(line: 250, column: 7, scope: !263)
!265 = !DILocation(line: 250, column: 44, scope: !263)
!266 = !DILocation(line: 250, column: 6, scope: !252)
!267 = !DILocation(line: 251, column: 59, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !3, line: 250, column: 53)
!269 = !DILocation(line: 251, column: 33, scope: !268)
!270 = !DILocation(line: 252, column: 12, scope: !268)
!271 = !DILocation(line: 251, column: 9, scope: !268)
!272 = !DILocation(line: 255, column: 3, scope: !268)
!273 = !DILocation(line: 259, column: 3, scope: !268)
!274 = !DILocation(line: 264, column: 41, scope: !252)
!275 = !DILocation(line: 264, column: 11, scope: !252)
!276 = !DILocation(line: 265, column: 4, scope: !252)
!277 = !DILocation(line: 265, column: 44, scope: !252)
!278 = !DILocation(line: 265, column: 14, scope: !252)
!279 = !DILocation(line: 265, column: 51, scope: !252)
!280 = !DILocation(line: 264, column: 10, scope: !252)
!281 = !DILocation(line: 264, column: 2, scope: !252)
!282 = !DILocation(line: 266, column: 1, scope: !252)
!283 = distinct !DISubprogram(name: "acpi_any_fixed_event_status_set", scope: !3, file: !3, line: 280, type: !172, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !284)
!284 = !{!285, !286, !287, !288}
!285 = !DILocalVariable(name: "status", scope: !283, file: !3, line: 282, type: !5)
!286 = !DILocalVariable(name: "in_status", scope: !283, file: !3, line: 283, type: !7)
!287 = !DILocalVariable(name: "in_enable", scope: !283, file: !3, line: 284, type: !7)
!288 = !DILocalVariable(name: "i", scope: !283, file: !3, line: 285, type: !7)
!289 = !DILocation(line: 282, column: 2, scope: !283)
!290 = !DILocation(line: 282, column: 14, scope: !283)
!291 = !DILocation(line: 283, column: 2, scope: !283)
!292 = !DILocation(line: 283, column: 6, scope: !283)
!293 = !DILocation(line: 284, column: 2, scope: !283)
!294 = !DILocation(line: 284, column: 6, scope: !283)
!295 = !DILocation(line: 285, column: 2, scope: !283)
!296 = !DILocation(line: 285, column: 6, scope: !283)
!297 = !DILocation(line: 287, column: 11, scope: !283)
!298 = !DILocation(line: 287, column: 9, scope: !283)
!299 = !DILocation(line: 288, column: 6, scope: !300)
!300 = distinct !DILexicalBlock(scope: !283, file: !3, line: 288, column: 6)
!301 = !DILocation(line: 288, column: 6, scope: !283)
!302 = !DILocation(line: 289, column: 3, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !3, line: 288, column: 28)
!304 = !DILocation(line: 292, column: 11, scope: !283)
!305 = !DILocation(line: 292, column: 9, scope: !283)
!306 = !DILocation(line: 293, column: 6, scope: !307)
!307 = distinct !DILexicalBlock(scope: !283, file: !3, line: 293, column: 6)
!308 = !DILocation(line: 293, column: 6, scope: !283)
!309 = !DILocation(line: 294, column: 3, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !3, line: 293, column: 28)
!311 = !DILocation(line: 300, column: 9, scope: !312)
!312 = distinct !DILexicalBlock(scope: !283, file: !3, line: 300, column: 2)
!313 = !DILocation(line: 300, column: 7, scope: !312)
!314 = !DILocation(line: 300, column: 14, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !3, line: 300, column: 2)
!316 = !DILocation(line: 300, column: 16, scope: !315)
!317 = !DILocation(line: 300, column: 2, scope: !312)
!318 = !DILocation(line: 304, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !3, line: 304, column: 7)
!320 = distinct !DILexicalBlock(scope: !315, file: !3, line: 300, column: 46)
!321 = !DILocation(line: 304, column: 46, scope: !319)
!322 = !DILocation(line: 304, column: 20, scope: !319)
!323 = !DILocation(line: 304, column: 49, scope: !319)
!324 = !DILocation(line: 304, column: 18, scope: !319)
!325 = !DILocation(line: 304, column: 66, scope: !319)
!326 = !DILocation(line: 305, column: 8, scope: !319)
!327 = !DILocation(line: 305, column: 46, scope: !319)
!328 = !DILocation(line: 305, column: 20, scope: !319)
!329 = !DILocation(line: 305, column: 49, scope: !319)
!330 = !DILocation(line: 305, column: 18, scope: !319)
!331 = !DILocation(line: 304, column: 7, scope: !320)
!332 = !DILocation(line: 306, column: 4, scope: !333)
!333 = distinct !DILexicalBlock(scope: !319, file: !3, line: 305, column: 67)
!334 = !DILocation(line: 308, column: 2, scope: !320)
!335 = !DILocation(line: 300, column: 42, scope: !315)
!336 = !DILocation(line: 300, column: 2, scope: !315)
!337 = distinct !{!337, !317, !338, !131, !132}
!338 = !DILocation(line: 308, column: 2, scope: !312)
!339 = !DILocation(line: 310, column: 2, scope: !283)
!340 = !DILocation(line: 311, column: 1, scope: !283)
!341 = !DISubprogram(name: "acpi_write_bit_register", scope: !136, file: !136, line: 860, type: !342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!342 = !DISubroutineType(types: !343)
!343 = !{!5, !7, !7}
!344 = !DISubprogram(name: "acpi_error", scope: !136, file: !136, line: 901, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !139, !7, !139, null}
!347 = !DISubprogram(name: "acpi_ut_get_event_name", scope: !348, file: !348, line: 237, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!348 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!349 = !DISubroutineType(types: !350)
!350 = !{!139, !7}
