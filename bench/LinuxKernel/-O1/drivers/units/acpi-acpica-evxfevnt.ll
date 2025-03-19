; ModuleID = 'drivers/acpi/acpica/evxfevnt.c'
source_filename = "drivers/acpi/acpica/evxfevnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_enable: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_enable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_disable: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_disable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_enable_event: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_enable_event ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_disable_event: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_disable_event ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_clear_event: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_clear_event ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_event_status: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_event_status ; .previous"

%struct.acpi_fixed_event_info = type { i8, i8, i16, i16 }
%struct.acpi_fixed_event_handler = type { ptr, ptr }

@acpi_gbl_fadt_index = external dso_local global i32, align 4
@acpi_gbl_reduced_hardware = external dso_local global i8, align 1
@_acpi_module_name = internal constant [9 x i8] c"evxfevnt\00", align 1, !dbg !0
@.str = private unnamed_addr constant [34 x i8] c"Could not transition to ACPI mode\00", align 1, !dbg !15
@.str.1 = private unnamed_addr constant [45 x i8] c"Platform took > %d00 usec to enter ACPI mode\00", align 1, !dbg !21
@.str.2 = private unnamed_addr constant [33 x i8] c"Hardware did not enter ACPI mode\00", align 1, !dbg !26
@__UNIQUE_ID___addressable_acpi_enable174 = internal global ptr @acpi_enable, section ".discard.addressable", align 8, !dbg !31
@.str.3 = private unnamed_addr constant [40 x i8] c"Could not exit ACPI mode to legacy mode\00", align 1, !dbg !33
@__UNIQUE_ID___addressable_acpi_disable175 = internal global ptr @acpi_disable, section ".discard.addressable", align 8, !dbg !38
@acpi_gbl_fixed_event_info = external dso_local global [5 x %struct.acpi_fixed_event_info], align 16
@.str.4 = private unnamed_addr constant [26 x i8] c"Could not enable %s event\00", align 1, !dbg !40
@__UNIQUE_ID___addressable_acpi_enable_event176 = internal global ptr @acpi_enable_event, section ".discard.addressable", align 8, !dbg !45
@.str.5 = private unnamed_addr constant [28 x i8] c"Could not disable %s events\00", align 1, !dbg !47
@__UNIQUE_ID___addressable_acpi_disable_event177 = internal global ptr @acpi_disable_event, section ".discard.addressable", align 8, !dbg !52
@__UNIQUE_ID___addressable_acpi_clear_event178 = internal global ptr @acpi_clear_event, section ".discard.addressable", align 8, !dbg !54
@acpi_gbl_fixed_event_handlers = external dso_local global [5 x %struct.acpi_fixed_event_handler], align 16
@__UNIQUE_ID___addressable_acpi_get_event_status179 = internal global ptr @acpi_get_event_status, section ".discard.addressable", align 8, !dbg !56
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_enable174, ptr @__UNIQUE_ID___addressable_acpi_disable175, ptr @__UNIQUE_ID___addressable_acpi_enable_event176, ptr @__UNIQUE_ID___addressable_acpi_disable_event177, ptr @__UNIQUE_ID___addressable_acpi_clear_event178, ptr @__UNIQUE_ID___addressable_acpi_get_event_status179], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_enable() #0 align 16 !dbg !71 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %retry = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !78
  call void @llvm.dbg.declare(metadata ptr %status, metadata !75, metadata !DIExpression()), !dbg !79
  call void @llvm.lifetime.start.p0(i64 4, ptr %retry) #4, !dbg !80
  call void @llvm.dbg.declare(metadata ptr %retry, metadata !76, metadata !DIExpression()), !dbg !81
  %0 = load i32, ptr @acpi_gbl_fadt_index, align 4, !dbg !82
  %cmp = icmp eq i32 %0, -1, !dbg !84
  br i1 %cmp, label %if.then, label %if.end, !dbg !85

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !86
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !86

if.end:                                           ; preds = %entry
  %1 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !88
  %tobool = icmp ne i8 %1, 0, !dbg !88
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !90

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !91
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !91

if.end2:                                          ; preds = %if.end
  %call = call i32 @acpi_hw_get_mode() #5, !dbg !93
  %cmp3 = icmp eq i32 %call, 1, !dbg !95
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !96

if.then4:                                         ; preds = %if.end2
  store i32 0, ptr %retval, align 4, !dbg !97
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !97

if.end5:                                          ; preds = %if.end2
  %call6 = call i32 @acpi_hw_set_mode(i32 noundef 1) #5, !dbg !99
  store i32 %call6, ptr %status, align 4, !dbg !100
  %2 = load i32, ptr %status, align 4, !dbg !101
  %tobool7 = icmp ne i32 %2, 0, !dbg !101
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !103

if.then8:                                         ; preds = %if.end5
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 62, ptr noundef @.str) #5, !dbg !104
  %3 = load i32, ptr %status, align 4, !dbg !106
  store i32 %3, ptr %retval, align 4, !dbg !106
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !106

if.end9:                                          ; preds = %if.end5
  store i32 0, ptr %retry, align 4, !dbg !107
  br label %for.cond, !dbg !109

for.cond:                                         ; preds = %for.inc, %if.end9
  %4 = load i32, ptr %retry, align 4, !dbg !110
  %cmp10 = icmp slt i32 %4, 30000, !dbg !112
  br i1 %cmp10, label %for.body, label %for.end, !dbg !113

for.body:                                         ; preds = %for.cond
  %call11 = call i32 @acpi_hw_get_mode() #5, !dbg !114
  %cmp12 = icmp eq i32 %call11, 1, !dbg !117
  br i1 %cmp12, label %if.then13, label %if.end17, !dbg !118

if.then13:                                        ; preds = %for.body
  %5 = load i32, ptr %retry, align 4, !dbg !119
  %cmp14 = icmp ne i32 %5, 0, !dbg !122
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !123

if.then15:                                        ; preds = %if.then13
  %6 = load i32, ptr %retry, align 4, !dbg !124
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 72, ptr noundef @.str.1, i32 noundef %6) #5, !dbg !124
  br label %if.end16, !dbg !124

if.end16:                                         ; preds = %if.then15, %if.then13
  store i32 0, ptr %retval, align 4, !dbg !125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !125

if.end17:                                         ; preds = %for.body
  call void @acpi_os_stall(i32 noundef 100) #5, !dbg !126
  br label %for.inc, !dbg !127

for.inc:                                          ; preds = %if.end17
  %7 = load i32, ptr %retry, align 4, !dbg !128
  %inc = add i32 %7, 1, !dbg !128
  store i32 %inc, ptr %retry, align 4, !dbg !128
  br label %for.cond, !dbg !129, !llvm.loop !130

for.end:                                          ; preds = %for.cond
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 79, ptr noundef @.str.2) #5, !dbg !134
  store i32 22, ptr %retval, align 4, !dbg !135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !135

cleanup:                                          ; preds = %for.end, %if.end16, %if.then8, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retry) #4, !dbg !136
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !136
  %8 = load i32, ptr %retval, align 4, !dbg !136
  ret i32 %8, !dbg !136
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !137 dso_local i32 @acpi_hw_get_mode() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !141 dso_local i32 @acpi_hw_set_mode(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !144 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !149 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !150 dso_local void @acpi_os_stall(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_disable() #0 align 16 !dbg !154 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !157
  call void @llvm.dbg.declare(metadata ptr %status, metadata !156, metadata !DIExpression()), !dbg !158
  store i32 0, ptr %status, align 4, !dbg !158
  %0 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !159
  %tobool = icmp ne i8 %0, 0, !dbg !159
  br i1 %tobool, label %if.then, label %if.end, !dbg !161

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !162
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !162

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_hw_get_mode() #5, !dbg !164
  %cmp = icmp eq i32 %call, 2, !dbg !166
  br i1 %cmp, label %if.then1, label %if.else, !dbg !167

if.then1:                                         ; preds = %if.end
  br label %if.end6, !dbg !168

if.else:                                          ; preds = %if.end
  %call2 = call i32 @acpi_hw_set_mode(i32 noundef 2) #5, !dbg !170
  store i32 %call2, ptr %status, align 4, !dbg !172
  %1 = load i32, ptr %status, align 4, !dbg !173
  %tobool3 = icmp ne i32 %1, 0, !dbg !173
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !175

if.then4:                                         ; preds = %if.else
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 117, ptr noundef @.str.3) #5, !dbg !176
  %2 = load i32, ptr %status, align 4, !dbg !178
  store i32 %2, ptr %retval, align 4, !dbg !178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !178

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.then1
  %3 = load i32, ptr %status, align 4, !dbg !179
  store i32 %3, ptr %retval, align 4, !dbg !179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !179

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !180
  %4 = load i32, ptr %retval, align 4, !dbg !180
  ret i32 %4, !dbg !180
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_enable_event(i32 noundef %event, i32 noundef %flags) #0 align 16 !dbg !181 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !185, metadata !DIExpression()), !dbg !189
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !186, metadata !DIExpression()), !dbg !190
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !191
  call void @llvm.dbg.declare(metadata ptr %status, metadata !187, metadata !DIExpression()), !dbg !192
  store i32 0, ptr %status, align 4, !dbg !192
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #4, !dbg !193
  call void @llvm.dbg.declare(metadata ptr %value, metadata !188, metadata !DIExpression()), !dbg !194
  %0 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !195
  %tobool = icmp ne i8 %0, 0, !dbg !195
  br i1 %tobool, label %if.then, label %if.end, !dbg !197

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !198

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %event.addr, align 4, !dbg !200
  %cmp = icmp ugt i32 %1, 4, !dbg !202
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !203

if.then1:                                         ; preds = %if.end
  store i32 4097, ptr %retval, align 4, !dbg !204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !204

if.end2:                                          ; preds = %if.end
  %2 = load i32, ptr %event.addr, align 4, !dbg !206
  %idxprom = zext i32 %2 to i64, !dbg !207
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom, !dbg !207
  %enable_register_id = getelementptr inbounds %struct.acpi_fixed_event_info, ptr %arrayidx, i32 0, i32 1, !dbg !208
  %3 = load i8, ptr %enable_register_id, align 1, !dbg !208
  %conv = zext i8 %3 to i32, !dbg !207
  %call = call i32 @acpi_write_bit_register(i32 noundef %conv, i32 noundef 1) #5, !dbg !209
  store i32 %call, ptr %status, align 4, !dbg !210
  %4 = load i32, ptr %status, align 4, !dbg !211
  %tobool3 = icmp ne i32 %4, 0, !dbg !211
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !213

if.then4:                                         ; preds = %if.end2
  %5 = load i32, ptr %status, align 4, !dbg !214
  store i32 %5, ptr %retval, align 4, !dbg !214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !214

if.end5:                                          ; preds = %if.end2
  %6 = load i32, ptr %event.addr, align 4, !dbg !216
  %idxprom6 = zext i32 %6 to i64, !dbg !217
  %arrayidx7 = getelementptr [5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom6, !dbg !217
  %enable_register_id8 = getelementptr inbounds %struct.acpi_fixed_event_info, ptr %arrayidx7, i32 0, i32 1, !dbg !218
  %7 = load i8, ptr %enable_register_id8, align 1, !dbg !218
  %conv9 = zext i8 %7 to i32, !dbg !217
  %call10 = call i32 @acpi_read_bit_register(i32 noundef %conv9, ptr noundef %value) #5, !dbg !219
  store i32 %call10, ptr %status, align 4, !dbg !220
  %8 = load i32, ptr %status, align 4, !dbg !221
  %tobool11 = icmp ne i32 %8, 0, !dbg !221
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !223

if.then12:                                        ; preds = %if.end5
  %9 = load i32, ptr %status, align 4, !dbg !224
  store i32 %9, ptr %retval, align 4, !dbg !224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !224

if.end13:                                         ; preds = %if.end5
  %10 = load i32, ptr %value, align 4, !dbg !226
  %cmp14 = icmp ne i32 %10, 1, !dbg !228
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !229

if.then16:                                        ; preds = %if.end13
  %11 = load i32, ptr %event.addr, align 4, !dbg !230
  %call17 = call ptr @acpi_ut_get_event_name(i32 noundef %11) #5, !dbg !230
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 182, ptr noundef @.str.4, ptr noundef %call17) #5, !dbg !230
  store i32 22, ptr %retval, align 4, !dbg !232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !232

if.end18:                                         ; preds = %if.end13
  %12 = load i32, ptr %status, align 4, !dbg !233
  store i32 %12, ptr %retval, align 4, !dbg !233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !233

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then12, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #4, !dbg !234
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !234
  %13 = load i32, ptr %retval, align 4, !dbg !234
  ret i32 %13, !dbg !234
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !235 dso_local i32 @acpi_write_bit_register(i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !236 dso_local i32 @acpi_read_bit_register(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !240 dso_local ptr @acpi_ut_get_event_name(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_disable_event(i32 noundef %event, i32 noundef %flags) #0 align 16 !dbg !244 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !246, metadata !DIExpression()), !dbg !250
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !247, metadata !DIExpression()), !dbg !251
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !252
  call void @llvm.dbg.declare(metadata ptr %status, metadata !248, metadata !DIExpression()), !dbg !253
  store i32 0, ptr %status, align 4, !dbg !253
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #4, !dbg !254
  call void @llvm.dbg.declare(metadata ptr %value, metadata !249, metadata !DIExpression()), !dbg !255
  %0 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !256
  %tobool = icmp ne i8 %0, 0, !dbg !256
  br i1 %tobool, label %if.then, label %if.end, !dbg !258

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !259

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %event.addr, align 4, !dbg !261
  %cmp = icmp ugt i32 %1, 4, !dbg !263
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !264

if.then1:                                         ; preds = %if.end
  store i32 4097, ptr %retval, align 4, !dbg !265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !265

if.end2:                                          ; preds = %if.end
  %2 = load i32, ptr %event.addr, align 4, !dbg !267
  %idxprom = zext i32 %2 to i64, !dbg !268
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom, !dbg !268
  %enable_register_id = getelementptr inbounds %struct.acpi_fixed_event_info, ptr %arrayidx, i32 0, i32 1, !dbg !269
  %3 = load i8, ptr %enable_register_id, align 1, !dbg !269
  %conv = zext i8 %3 to i32, !dbg !268
  %call = call i32 @acpi_write_bit_register(i32 noundef %conv, i32 noundef 0) #5, !dbg !270
  store i32 %call, ptr %status, align 4, !dbg !271
  %4 = load i32, ptr %status, align 4, !dbg !272
  %tobool3 = icmp ne i32 %4, 0, !dbg !272
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !274

if.then4:                                         ; preds = %if.end2
  %5 = load i32, ptr %status, align 4, !dbg !275
  store i32 %5, ptr %retval, align 4, !dbg !275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !275

if.end5:                                          ; preds = %if.end2
  %6 = load i32, ptr %event.addr, align 4, !dbg !277
  %idxprom6 = zext i32 %6 to i64, !dbg !278
  %arrayidx7 = getelementptr [5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom6, !dbg !278
  %enable_register_id8 = getelementptr inbounds %struct.acpi_fixed_event_info, ptr %arrayidx7, i32 0, i32 1, !dbg !279
  %7 = load i8, ptr %enable_register_id8, align 1, !dbg !279
  %conv9 = zext i8 %7 to i32, !dbg !278
  %call10 = call i32 @acpi_read_bit_register(i32 noundef %conv9, ptr noundef %value) #5, !dbg !280
  store i32 %call10, ptr %status, align 4, !dbg !281
  %8 = load i32, ptr %status, align 4, !dbg !282
  %tobool11 = icmp ne i32 %8, 0, !dbg !282
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !284

if.then12:                                        ; preds = %if.end5
  %9 = load i32, ptr %status, align 4, !dbg !285
  store i32 %9, ptr %retval, align 4, !dbg !285
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !285

if.end13:                                         ; preds = %if.end5
  %10 = load i32, ptr %value, align 4, !dbg !287
  %cmp14 = icmp ne i32 %10, 0, !dbg !289
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !290

if.then16:                                        ; preds = %if.end13
  %11 = load i32, ptr %event.addr, align 4, !dbg !291
  %call17 = call ptr @acpi_ut_get_event_name(i32 noundef %11) #5, !dbg !291
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 243, ptr noundef @.str.5, ptr noundef %call17) #5, !dbg !291
  store i32 22, ptr %retval, align 4, !dbg !293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !293

if.end18:                                         ; preds = %if.end13
  %12 = load i32, ptr %status, align 4, !dbg !294
  store i32 %12, ptr %retval, align 4, !dbg !294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !294

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then12, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #4, !dbg !295
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !295
  %13 = load i32, ptr %retval, align 4, !dbg !295
  ret i32 %13, !dbg !295
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_clear_event(i32 noundef %event) #0 align 16 !dbg !296 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !298, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %status, metadata !299, metadata !DIExpression()), !dbg !302
  store i32 0, ptr %status, align 4, !dbg !302
  %0 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !303
  %tobool = icmp ne i8 %0, 0, !dbg !303
  br i1 %tobool, label %if.then, label %if.end, !dbg !305

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !306

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %event.addr, align 4, !dbg !308
  %cmp = icmp ugt i32 %1, 4, !dbg !310
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !311

if.then1:                                         ; preds = %if.end
  store i32 4097, ptr %retval, align 4, !dbg !312
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !312

if.end2:                                          ; preds = %if.end
  %2 = load i32, ptr %event.addr, align 4, !dbg !314
  %idxprom = zext i32 %2 to i64, !dbg !315
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom, !dbg !315
  %status_register_id = getelementptr inbounds %struct.acpi_fixed_event_info, ptr %arrayidx, i32 0, i32 0, !dbg !316
  %3 = load i8, ptr %status_register_id, align 2, !dbg !316
  %conv = zext i8 %3 to i32, !dbg !315
  %call = call i32 @acpi_write_bit_register(i32 noundef %conv, i32 noundef 1) #5, !dbg !317
  store i32 %call, ptr %status, align 4, !dbg !318
  %4 = load i32, ptr %status, align 4, !dbg !319
  store i32 %4, ptr %retval, align 4, !dbg !319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !319

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !320
  %5 = load i32, ptr %retval, align 4, !dbg !320
  ret i32 %5, !dbg !320
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_event_status(i32 noundef %event, ptr noundef %event_status) #0 align 16 !dbg !321 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i32, align 4
  %event_status.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %local_event_status = alloca i32, align 4
  %in_byte = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !326, metadata !DIExpression()), !dbg !331
  store ptr %event_status, ptr %event_status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event_status.addr, metadata !327, metadata !DIExpression()), !dbg !332
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !333
  call void @llvm.dbg.declare(metadata ptr %status, metadata !328, metadata !DIExpression()), !dbg !334
  call void @llvm.lifetime.start.p0(i64 4, ptr %local_event_status) #4, !dbg !335
  call void @llvm.dbg.declare(metadata ptr %local_event_status, metadata !329, metadata !DIExpression()), !dbg !336
  store i32 0, ptr %local_event_status, align 4, !dbg !336
  call void @llvm.lifetime.start.p0(i64 4, ptr %in_byte) #4, !dbg !337
  call void @llvm.dbg.declare(metadata ptr %in_byte, metadata !330, metadata !DIExpression()), !dbg !338
  %0 = load ptr, ptr %event_status.addr, align 8, !dbg !339
  %tobool = icmp ne ptr %0, null, !dbg !339
  br i1 %tobool, label %if.end, label %if.then, !dbg !341

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !342

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %event.addr, align 4, !dbg !344
  %cmp = icmp ugt i32 %1, 4, !dbg !346
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !347

if.then1:                                         ; preds = %if.end
  store i32 4097, ptr %retval, align 4, !dbg !348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !348

if.end2:                                          ; preds = %if.end
  %2 = load i32, ptr %event.addr, align 4, !dbg !350
  %idxprom = zext i32 %2 to i64, !dbg !352
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_handler], ptr @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom, !dbg !352
  %handler = getelementptr inbounds %struct.acpi_fixed_event_handler, ptr %arrayidx, i32 0, i32 0, !dbg !353
  %3 = load ptr, ptr %handler, align 16, !dbg !353
  %tobool3 = icmp ne ptr %3, null, !dbg !352
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !354

if.then4:                                         ; preds = %if.end2
  %4 = load i32, ptr %local_event_status, align 4, !dbg !355
  %or = or i32 %4, 16, !dbg !355
  store i32 %or, ptr %local_event_status, align 4, !dbg !355
  br label %if.end5, !dbg !357

if.end5:                                          ; preds = %if.then4, %if.end2
  %5 = load i32, ptr %event.addr, align 4, !dbg !358
  %idxprom6 = zext i32 %5 to i64, !dbg !359
  %arrayidx7 = getelementptr [5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom6, !dbg !359
  %enable_register_id = getelementptr inbounds %struct.acpi_fixed_event_info, ptr %arrayidx7, i32 0, i32 1, !dbg !360
  %6 = load i8, ptr %enable_register_id, align 1, !dbg !360
  %conv = zext i8 %6 to i32, !dbg !359
  %call = call i32 @acpi_read_bit_register(i32 noundef %conv, ptr noundef %in_byte) #5, !dbg !361
  store i32 %call, ptr %status, align 4, !dbg !362
  %7 = load i32, ptr %status, align 4, !dbg !363
  %tobool8 = icmp ne i32 %7, 0, !dbg !363
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !365

if.then9:                                         ; preds = %if.end5
  %8 = load i32, ptr %status, align 4, !dbg !366
  store i32 %8, ptr %retval, align 4, !dbg !366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !366

if.end10:                                         ; preds = %if.end5
  %9 = load i32, ptr %in_byte, align 4, !dbg !368
  %tobool11 = icmp ne i32 %9, 0, !dbg !368
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !370

if.then12:                                        ; preds = %if.end10
  %10 = load i32, ptr %local_event_status, align 4, !dbg !371
  %or13 = or i32 %10, 9, !dbg !371
  store i32 %or13, ptr %local_event_status, align 4, !dbg !371
  br label %if.end14, !dbg !373

if.end14:                                         ; preds = %if.then12, %if.end10
  %11 = load i32, ptr %event.addr, align 4, !dbg !374
  %idxprom15 = zext i32 %11 to i64, !dbg !375
  %arrayidx16 = getelementptr [5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom15, !dbg !375
  %status_register_id = getelementptr inbounds %struct.acpi_fixed_event_info, ptr %arrayidx16, i32 0, i32 0, !dbg !376
  %12 = load i8, ptr %status_register_id, align 2, !dbg !376
  %conv17 = zext i8 %12 to i32, !dbg !375
  %call18 = call i32 @acpi_read_bit_register(i32 noundef %conv17, ptr noundef %in_byte) #5, !dbg !377
  store i32 %call18, ptr %status, align 4, !dbg !378
  %13 = load i32, ptr %status, align 4, !dbg !379
  %tobool19 = icmp ne i32 %13, 0, !dbg !379
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !381

if.then20:                                        ; preds = %if.end14
  %14 = load i32, ptr %status, align 4, !dbg !382
  store i32 %14, ptr %retval, align 4, !dbg !382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !382

if.end21:                                         ; preds = %if.end14
  %15 = load i32, ptr %in_byte, align 4, !dbg !384
  %tobool22 = icmp ne i32 %15, 0, !dbg !384
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !386

if.then23:                                        ; preds = %if.end21
  %16 = load i32, ptr %local_event_status, align 4, !dbg !387
  %or24 = or i32 %16, 4, !dbg !387
  store i32 %or24, ptr %local_event_status, align 4, !dbg !387
  br label %if.end25, !dbg !389

if.end25:                                         ; preds = %if.then23, %if.end21
  %17 = load i32, ptr %local_event_status, align 4, !dbg !390
  %18 = load ptr, ptr %event_status.addr, align 8, !dbg !391
  store i32 %17, ptr %18, align 4, !dbg !392
  store i32 0, ptr %retval, align 4, !dbg !393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !393

cleanup:                                          ; preds = %if.end25, %if.then20, %if.then9, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %in_byte) #4, !dbg !394
  call void @llvm.lifetime.end.p0(i64 4, ptr %local_event_status) #4, !dbg !394
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !394
  %19 = load i32, ptr %retval, align 4, !dbg !394
  ret i32 %19, !dbg !394
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !58, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.evxfevnt.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22evxfevnt\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/evxfevnt.ll drivers/acpi/acpica/evxfevnt.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evxfevnt.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a3f1b7e2d5de39246a71b484326b6a0")
!4 = !{!5, !12, !13}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_event_status", file: !6, line: 747, baseType: !7)
!14 = !{!15, !21, !26, !31, !33, !38, !40, !45, !47, !52, !54, !56, !0}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !17, isLocal: true, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 272, elements: !19)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !{!20}
!20 = !DISubrange(count: 34)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !3, line: 72, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 360, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 45)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 264, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 33)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_enable174", scope: !2, file: !3, line: 83, type: !12, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 320, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 40)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_disable175", scope: !2, file: !3, line: 128, type: !12, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !3, line: 182, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 208, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 26)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_enable_event176", scope: !2, file: !3, line: 191, type: !12, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !3, line: 243, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 224, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 28)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_disable_event177", scope: !2, file: !3, line: 252, type: !12, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_clear_event178", scope: !2, file: !3, line: 294, type: !12, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_event_status179", scope: !2, file: !3, line: 364, type: !12, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 72, elements: !60)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!60 = !{!61}
!61 = !DISubrange(count: 9)
!62 = !{i32 7, !"Dwarf Version", i32 5}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 8, !"cf-protection-branch", i32 1}
!66 = !{i32 4, !"function_return_thunk_extern", i32 1}
!67 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!68 = !{i32 1, !"Code Model", i32 2}
!69 = !{i32 1, !"override-stack-alignment", i32 8}
!70 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!71 = distinct !DISubprogram(name: "acpi_enable", scope: !3, file: !3, line: 31, type: !72, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{!5}
!74 = !{!75, !76}
!75 = !DILocalVariable(name: "status", scope: !71, file: !3, line: 33, type: !5)
!76 = !DILocalVariable(name: "retry", scope: !71, file: !3, line: 34, type: !77)
!77 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!78 = !DILocation(line: 33, column: 2, scope: !71)
!79 = !DILocation(line: 33, column: 14, scope: !71)
!80 = !DILocation(line: 34, column: 2, scope: !71)
!81 = !DILocation(line: 34, column: 6, scope: !71)
!82 = !DILocation(line: 40, column: 6, scope: !83)
!83 = distinct !DILexicalBlock(scope: !71, file: !3, line: 40, column: 6)
!84 = !DILocation(line: 40, column: 26, scope: !83)
!85 = !DILocation(line: 40, column: 6, scope: !71)
!86 = !DILocation(line: 41, column: 3, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !3, line: 40, column: 55)
!88 = !DILocation(line: 46, column: 6, scope: !89)
!89 = distinct !DILexicalBlock(scope: !71, file: !3, line: 46, column: 6)
!90 = !DILocation(line: 46, column: 6, scope: !71)
!91 = !DILocation(line: 47, column: 3, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !3, line: 46, column: 33)
!93 = !DILocation(line: 52, column: 6, scope: !94)
!94 = distinct !DILexicalBlock(scope: !71, file: !3, line: 52, column: 6)
!95 = !DILocation(line: 52, column: 25, scope: !94)
!96 = !DILocation(line: 52, column: 6, scope: !71)
!97 = !DILocation(line: 55, column: 3, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !3, line: 52, column: 48)
!99 = !DILocation(line: 60, column: 11, scope: !71)
!100 = !DILocation(line: 60, column: 9, scope: !71)
!101 = !DILocation(line: 61, column: 6, scope: !102)
!102 = distinct !DILexicalBlock(scope: !71, file: !3, line: 61, column: 6)
!103 = !DILocation(line: 61, column: 6, scope: !71)
!104 = !DILocation(line: 62, column: 3, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !3, line: 61, column: 28)
!106 = !DILocation(line: 64, column: 3, scope: !105)
!107 = !DILocation(line: 69, column: 13, scope: !108)
!108 = distinct !DILexicalBlock(scope: !71, file: !3, line: 69, column: 2)
!109 = !DILocation(line: 69, column: 7, scope: !108)
!110 = !DILocation(line: 69, column: 18, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !3, line: 69, column: 2)
!112 = !DILocation(line: 69, column: 24, scope: !111)
!113 = !DILocation(line: 69, column: 2, scope: !108)
!114 = !DILocation(line: 70, column: 7, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 70, column: 7)
!116 = distinct !DILexicalBlock(scope: !111, file: !3, line: 69, column: 42)
!117 = !DILocation(line: 70, column: 26, scope: !115)
!118 = !DILocation(line: 70, column: 7, scope: !116)
!119 = !DILocation(line: 71, column: 8, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !3, line: 71, column: 8)
!121 = distinct !DILexicalBlock(scope: !115, file: !3, line: 70, column: 49)
!122 = !DILocation(line: 71, column: 14, scope: !120)
!123 = !DILocation(line: 71, column: 8, scope: !121)
!124 = !DILocation(line: 72, column: 5, scope: !120)
!125 = !DILocation(line: 74, column: 4, scope: !121)
!126 = !DILocation(line: 76, column: 3, scope: !116)
!127 = !DILocation(line: 77, column: 2, scope: !116)
!128 = !DILocation(line: 69, column: 33, scope: !111)
!129 = !DILocation(line: 69, column: 2, scope: !111)
!130 = distinct !{!130, !113, !131, !132, !133}
!131 = !DILocation(line: 77, column: 2, scope: !108)
!132 = !{!"llvm.loop.mustprogress"}
!133 = !{!"llvm.loop.unroll.disable"}
!134 = !DILocation(line: 79, column: 2, scope: !71)
!135 = !DILocation(line: 80, column: 2, scope: !71)
!136 = !DILocation(line: 81, column: 1, scope: !71)
!137 = !DISubprogram(name: "acpi_hw_get_mode", scope: !138, file: !138, line: 26, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!138 = !DIFile(filename: "drivers/acpi/acpica/achware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e639ab6c676f6257d869bb312951f39d")
!139 = !DISubroutineType(types: !140)
!140 = !{!7}
!141 = !DISubprogram(name: "acpi_hw_set_mode", scope: !138, file: !138, line: 24, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!142 = !DISubroutineType(types: !143)
!143 = !{!5, !7}
!144 = !DISubprogram(name: "acpi_error", scope: !145, file: !145, line: 901, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!145 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!146 = !DISubroutineType(types: !147)
!147 = !{null, !148, !7, !148, null}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!149 = !DISubprogram(name: "acpi_warning", scope: !145, file: !145, line: 912, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!150 = !DISubprogram(name: "acpi_os_stall", scope: !151, file: !151, line: 260, type: !152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!151 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!152 = !DISubroutineType(types: !153)
!153 = !{null, !7}
!154 = distinct !DISubprogram(name: "acpi_disable", scope: !3, file: !3, line: 96, type: !72, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !155)
!155 = !{!156}
!156 = !DILocalVariable(name: "status", scope: !154, file: !3, line: 98, type: !5)
!157 = !DILocation(line: 98, column: 2, scope: !154)
!158 = !DILocation(line: 98, column: 14, scope: !154)
!159 = !DILocation(line: 104, column: 6, scope: !160)
!160 = distinct !DILexicalBlock(scope: !154, file: !3, line: 104, column: 6)
!161 = !DILocation(line: 104, column: 6, scope: !154)
!162 = !DILocation(line: 105, column: 3, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !3, line: 104, column: 33)
!164 = !DILocation(line: 108, column: 6, scope: !165)
!165 = distinct !DILexicalBlock(scope: !154, file: !3, line: 108, column: 6)
!166 = !DILocation(line: 108, column: 25, scope: !165)
!167 = !DILocation(line: 108, column: 6, scope: !154)
!168 = !DILocation(line: 111, column: 2, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !3, line: 108, column: 50)
!170 = !DILocation(line: 114, column: 12, scope: !171)
!171 = distinct !DILexicalBlock(scope: !165, file: !3, line: 111, column: 9)
!172 = !DILocation(line: 114, column: 10, scope: !171)
!173 = !DILocation(line: 116, column: 7, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !3, line: 116, column: 7)
!175 = !DILocation(line: 116, column: 7, scope: !171)
!176 = !DILocation(line: 117, column: 4, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !3, line: 116, column: 29)
!178 = !DILocation(line: 119, column: 4, scope: !177)
!179 = !DILocation(line: 125, column: 2, scope: !154)
!180 = !DILocation(line: 126, column: 1, scope: !154)
!181 = distinct !DISubprogram(name: "acpi_enable_event", scope: !3, file: !3, line: 142, type: !182, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !184)
!182 = !DISubroutineType(types: !183)
!183 = !{!5, !7, !7}
!184 = !{!185, !186, !187, !188}
!185 = !DILocalVariable(name: "event", arg: 1, scope: !181, file: !3, line: 142, type: !7)
!186 = !DILocalVariable(name: "flags", arg: 2, scope: !181, file: !3, line: 142, type: !7)
!187 = !DILocalVariable(name: "status", scope: !181, file: !3, line: 144, type: !5)
!188 = !DILocalVariable(name: "value", scope: !181, file: !3, line: 145, type: !7)
!189 = !DILocation(line: 142, column: 35, scope: !181)
!190 = !DILocation(line: 142, column: 46, scope: !181)
!191 = !DILocation(line: 144, column: 2, scope: !181)
!192 = !DILocation(line: 144, column: 14, scope: !181)
!193 = !DILocation(line: 145, column: 2, scope: !181)
!194 = !DILocation(line: 145, column: 6, scope: !181)
!195 = !DILocation(line: 151, column: 6, scope: !196)
!196 = distinct !DILexicalBlock(scope: !181, file: !3, line: 151, column: 6)
!197 = !DILocation(line: 151, column: 6, scope: !181)
!198 = !DILocation(line: 152, column: 3, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !3, line: 151, column: 33)
!200 = !DILocation(line: 157, column: 6, scope: !201)
!201 = distinct !DILexicalBlock(scope: !181, file: !3, line: 157, column: 6)
!202 = !DILocation(line: 157, column: 12, scope: !201)
!203 = !DILocation(line: 157, column: 6, scope: !181)
!204 = !DILocation(line: 158, column: 3, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !3, line: 157, column: 30)
!206 = !DILocation(line: 166, column: 56, scope: !181)
!207 = !DILocation(line: 166, column: 30, scope: !181)
!208 = !DILocation(line: 167, column: 9, scope: !181)
!209 = !DILocation(line: 166, column: 6, scope: !181)
!210 = !DILocation(line: 165, column: 9, scope: !181)
!211 = !DILocation(line: 168, column: 6, scope: !212)
!212 = distinct !DILexicalBlock(scope: !181, file: !3, line: 168, column: 6)
!213 = !DILocation(line: 168, column: 6, scope: !181)
!214 = !DILocation(line: 169, column: 3, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !3, line: 168, column: 28)
!216 = !DILocation(line: 175, column: 55, scope: !181)
!217 = !DILocation(line: 175, column: 29, scope: !181)
!218 = !DILocation(line: 176, column: 8, scope: !181)
!219 = !DILocation(line: 175, column: 6, scope: !181)
!220 = !DILocation(line: 174, column: 9, scope: !181)
!221 = !DILocation(line: 177, column: 6, scope: !222)
!222 = distinct !DILexicalBlock(scope: !181, file: !3, line: 177, column: 6)
!223 = !DILocation(line: 177, column: 6, scope: !181)
!224 = !DILocation(line: 178, column: 3, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !3, line: 177, column: 28)
!226 = !DILocation(line: 181, column: 6, scope: !227)
!227 = distinct !DILexicalBlock(scope: !181, file: !3, line: 181, column: 6)
!228 = !DILocation(line: 181, column: 12, scope: !227)
!229 = !DILocation(line: 181, column: 6, scope: !181)
!230 = !DILocation(line: 182, column: 3, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !3, line: 181, column: 18)
!232 = !DILocation(line: 185, column: 3, scope: !231)
!233 = !DILocation(line: 188, column: 2, scope: !181)
!234 = !DILocation(line: 189, column: 1, scope: !181)
!235 = !DISubprogram(name: "acpi_write_bit_register", scope: !145, file: !145, line: 860, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!236 = !DISubprogram(name: "acpi_read_bit_register", scope: !145, file: !145, line: 856, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!237 = !DISubroutineType(types: !238)
!238 = !{!5, !7, !239}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!240 = !DISubprogram(name: "acpi_ut_get_event_name", scope: !241, file: !241, line: 237, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!242 = !DISubroutineType(types: !243)
!243 = !{!148, !7}
!244 = distinct !DISubprogram(name: "acpi_disable_event", scope: !3, file: !3, line: 205, type: !182, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !245)
!245 = !{!246, !247, !248, !249}
!246 = !DILocalVariable(name: "event", arg: 1, scope: !244, file: !3, line: 205, type: !7)
!247 = !DILocalVariable(name: "flags", arg: 2, scope: !244, file: !3, line: 205, type: !7)
!248 = !DILocalVariable(name: "status", scope: !244, file: !3, line: 207, type: !5)
!249 = !DILocalVariable(name: "value", scope: !244, file: !3, line: 208, type: !7)
!250 = !DILocation(line: 205, column: 36, scope: !244)
!251 = !DILocation(line: 205, column: 47, scope: !244)
!252 = !DILocation(line: 207, column: 2, scope: !244)
!253 = !DILocation(line: 207, column: 14, scope: !244)
!254 = !DILocation(line: 208, column: 2, scope: !244)
!255 = !DILocation(line: 208, column: 6, scope: !244)
!256 = !DILocation(line: 214, column: 6, scope: !257)
!257 = distinct !DILexicalBlock(scope: !244, file: !3, line: 214, column: 6)
!258 = !DILocation(line: 214, column: 6, scope: !244)
!259 = !DILocation(line: 215, column: 3, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !3, line: 214, column: 33)
!261 = !DILocation(line: 220, column: 6, scope: !262)
!262 = distinct !DILexicalBlock(scope: !244, file: !3, line: 220, column: 6)
!263 = !DILocation(line: 220, column: 12, scope: !262)
!264 = !DILocation(line: 220, column: 6, scope: !244)
!265 = !DILocation(line: 221, column: 3, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !3, line: 220, column: 30)
!267 = !DILocation(line: 229, column: 56, scope: !244)
!268 = !DILocation(line: 229, column: 30, scope: !244)
!269 = !DILocation(line: 230, column: 9, scope: !244)
!270 = !DILocation(line: 229, column: 6, scope: !244)
!271 = !DILocation(line: 228, column: 9, scope: !244)
!272 = !DILocation(line: 231, column: 6, scope: !273)
!273 = distinct !DILexicalBlock(scope: !244, file: !3, line: 231, column: 6)
!274 = !DILocation(line: 231, column: 6, scope: !244)
!275 = !DILocation(line: 232, column: 3, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !3, line: 231, column: 28)
!277 = !DILocation(line: 236, column: 55, scope: !244)
!278 = !DILocation(line: 236, column: 29, scope: !244)
!279 = !DILocation(line: 237, column: 8, scope: !244)
!280 = !DILocation(line: 236, column: 6, scope: !244)
!281 = !DILocation(line: 235, column: 9, scope: !244)
!282 = !DILocation(line: 238, column: 6, scope: !283)
!283 = distinct !DILexicalBlock(scope: !244, file: !3, line: 238, column: 6)
!284 = !DILocation(line: 238, column: 6, scope: !244)
!285 = !DILocation(line: 239, column: 3, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !3, line: 238, column: 28)
!287 = !DILocation(line: 242, column: 6, scope: !288)
!288 = distinct !DILexicalBlock(scope: !244, file: !3, line: 242, column: 6)
!289 = !DILocation(line: 242, column: 12, scope: !288)
!290 = !DILocation(line: 242, column: 6, scope: !244)
!291 = !DILocation(line: 243, column: 3, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !3, line: 242, column: 18)
!293 = !DILocation(line: 246, column: 3, scope: !292)
!294 = !DILocation(line: 249, column: 2, scope: !244)
!295 = !DILocation(line: 250, column: 1, scope: !244)
!296 = distinct !DISubprogram(name: "acpi_clear_event", scope: !3, file: !3, line: 265, type: !142, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !297)
!297 = !{!298, !299}
!298 = !DILocalVariable(name: "event", arg: 1, scope: !296, file: !3, line: 265, type: !7)
!299 = !DILocalVariable(name: "status", scope: !296, file: !3, line: 267, type: !5)
!300 = !DILocation(line: 265, column: 34, scope: !296)
!301 = !DILocation(line: 267, column: 2, scope: !296)
!302 = !DILocation(line: 267, column: 14, scope: !296)
!303 = !DILocation(line: 273, column: 6, scope: !304)
!304 = distinct !DILexicalBlock(scope: !296, file: !3, line: 273, column: 6)
!305 = !DILocation(line: 273, column: 6, scope: !296)
!306 = !DILocation(line: 274, column: 3, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !3, line: 273, column: 33)
!308 = !DILocation(line: 279, column: 6, scope: !309)
!309 = distinct !DILexicalBlock(scope: !296, file: !3, line: 279, column: 6)
!310 = !DILocation(line: 279, column: 12, scope: !309)
!311 = !DILocation(line: 279, column: 6, scope: !296)
!312 = !DILocation(line: 280, column: 3, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !3, line: 279, column: 30)
!314 = !DILocation(line: 288, column: 56, scope: !296)
!315 = !DILocation(line: 288, column: 30, scope: !296)
!316 = !DILocation(line: 289, column: 9, scope: !296)
!317 = !DILocation(line: 288, column: 6, scope: !296)
!318 = !DILocation(line: 287, column: 9, scope: !296)
!319 = !DILocation(line: 291, column: 2, scope: !296)
!320 = !DILocation(line: 292, column: 1, scope: !296)
!321 = distinct !DISubprogram(name: "acpi_get_event_status", scope: !3, file: !3, line: 309, type: !322, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !325)
!322 = !DISubroutineType(types: !323)
!323 = !{!5, !7, !324}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!325 = !{!326, !327, !328, !329, !330}
!326 = !DILocalVariable(name: "event", arg: 1, scope: !321, file: !3, line: 309, type: !7)
!327 = !DILocalVariable(name: "event_status", arg: 2, scope: !321, file: !3, line: 309, type: !324)
!328 = !DILocalVariable(name: "status", scope: !321, file: !3, line: 311, type: !5)
!329 = !DILocalVariable(name: "local_event_status", scope: !321, file: !3, line: 312, type: !13)
!330 = !DILocalVariable(name: "in_byte", scope: !321, file: !3, line: 313, type: !7)
!331 = !DILocation(line: 309, column: 39, scope: !321)
!332 = !DILocation(line: 309, column: 66, scope: !321)
!333 = !DILocation(line: 311, column: 2, scope: !321)
!334 = !DILocation(line: 311, column: 14, scope: !321)
!335 = !DILocation(line: 312, column: 2, scope: !321)
!336 = !DILocation(line: 312, column: 20, scope: !321)
!337 = !DILocation(line: 313, column: 2, scope: !321)
!338 = !DILocation(line: 313, column: 6, scope: !321)
!339 = !DILocation(line: 317, column: 7, scope: !340)
!340 = distinct !DILexicalBlock(scope: !321, file: !3, line: 317, column: 6)
!341 = !DILocation(line: 317, column: 6, scope: !321)
!342 = !DILocation(line: 318, column: 3, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !3, line: 317, column: 21)
!344 = !DILocation(line: 323, column: 6, scope: !345)
!345 = distinct !DILexicalBlock(scope: !321, file: !3, line: 323, column: 6)
!346 = !DILocation(line: 323, column: 12, scope: !345)
!347 = !DILocation(line: 323, column: 6, scope: !321)
!348 = !DILocation(line: 324, column: 3, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !3, line: 323, column: 30)
!350 = !DILocation(line: 329, column: 36, scope: !351)
!351 = distinct !DILexicalBlock(scope: !321, file: !3, line: 329, column: 6)
!352 = !DILocation(line: 329, column: 6, scope: !351)
!353 = !DILocation(line: 329, column: 43, scope: !351)
!354 = !DILocation(line: 329, column: 6, scope: !321)
!355 = !DILocation(line: 330, column: 22, scope: !356)
!356 = distinct !DILexicalBlock(scope: !351, file: !3, line: 329, column: 52)
!357 = !DILocation(line: 331, column: 2, scope: !356)
!358 = !DILocation(line: 336, column: 55, scope: !321)
!359 = !DILocation(line: 336, column: 29, scope: !321)
!360 = !DILocation(line: 337, column: 8, scope: !321)
!361 = !DILocation(line: 336, column: 6, scope: !321)
!362 = !DILocation(line: 335, column: 9, scope: !321)
!363 = !DILocation(line: 338, column: 6, scope: !364)
!364 = distinct !DILexicalBlock(scope: !321, file: !3, line: 338, column: 6)
!365 = !DILocation(line: 338, column: 6, scope: !321)
!366 = !DILocation(line: 339, column: 3, scope: !367)
!367 = distinct !DILexicalBlock(scope: !364, file: !3, line: 338, column: 28)
!368 = !DILocation(line: 342, column: 6, scope: !369)
!369 = distinct !DILexicalBlock(scope: !321, file: !3, line: 342, column: 6)
!370 = !DILocation(line: 342, column: 6, scope: !321)
!371 = !DILocation(line: 343, column: 22, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !3, line: 342, column: 15)
!373 = !DILocation(line: 345, column: 2, scope: !372)
!374 = !DILocation(line: 350, column: 55, scope: !321)
!375 = !DILocation(line: 350, column: 29, scope: !321)
!376 = !DILocation(line: 351, column: 8, scope: !321)
!377 = !DILocation(line: 350, column: 6, scope: !321)
!378 = !DILocation(line: 349, column: 9, scope: !321)
!379 = !DILocation(line: 352, column: 6, scope: !380)
!380 = distinct !DILexicalBlock(scope: !321, file: !3, line: 352, column: 6)
!381 = !DILocation(line: 352, column: 6, scope: !321)
!382 = !DILocation(line: 353, column: 3, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !3, line: 352, column: 28)
!384 = !DILocation(line: 356, column: 6, scope: !385)
!385 = distinct !DILexicalBlock(scope: !321, file: !3, line: 356, column: 6)
!386 = !DILocation(line: 356, column: 6, scope: !321)
!387 = !DILocation(line: 357, column: 22, scope: !388)
!388 = distinct !DILexicalBlock(scope: !385, file: !3, line: 356, column: 15)
!389 = !DILocation(line: 358, column: 2, scope: !388)
!390 = !DILocation(line: 360, column: 20, scope: !321)
!391 = !DILocation(line: 360, column: 4, scope: !321)
!392 = !DILocation(line: 360, column: 18, scope: !321)
!393 = !DILocation(line: 361, column: 2, scope: !321)
!394 = !DILocation(line: 362, column: 1, scope: !321)
