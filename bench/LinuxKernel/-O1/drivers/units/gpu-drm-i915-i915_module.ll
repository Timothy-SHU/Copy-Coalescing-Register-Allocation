; ModuleID = 'drivers/gpu/drm/i915/i915_module.c'
source_filename = "drivers/gpu/drm/i915/i915_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_i915__623_118_i915_init\22, \22a\22\09\09"
module asm "__initcall__kmod_i915__623_118_i915_init6:\09\09\09"
module asm ".long\09__initstub__kmod_i915__623_118_i915_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.anon = type { ptr, ptr }
%struct.i915_params = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@init_progress = internal global i32 0, align 4, !dbg !0
@init_funcs = internal constant [13 x %struct.anon] [%struct.anon { ptr @i915_check_nomodeset, ptr null }, %struct.anon { ptr @i915_active_module_init, ptr @i915_active_module_exit }, %struct.anon { ptr @i915_context_module_init, ptr @i915_context_module_exit }, %struct.anon { ptr @i915_gem_context_module_init, ptr @i915_gem_context_module_exit }, %struct.anon { ptr @i915_objects_module_init, ptr @i915_objects_module_exit }, %struct.anon { ptr @i915_request_module_init, ptr @i915_request_module_exit }, %struct.anon { ptr @i915_scheduler_module_init, ptr @i915_scheduler_module_exit }, %struct.anon { ptr @i915_vma_module_init, ptr @i915_vma_module_exit }, %struct.anon { ptr @i915_vma_resource_module_init, ptr @i915_vma_resource_module_exit }, %struct.anon { ptr @i915_mock_selftests, ptr null }, %struct.anon { ptr @i915_pmu_init, ptr @i915_pmu_exit }, %struct.anon { ptr @i915_pci_register_driver, ptr @i915_pci_unregister_driver }, %struct.anon { ptr @i915_perf_sysctl_register, ptr @i915_perf_sysctl_unregister }], align 16, !dbg !61
@__UNIQUE_ID___addressable___initstub__kmod_i915__623_118_i915_init6624 = internal global ptr @__initstub__kmod_i915__623_118_i915_init6, section ".discard.addressable", align 8, !dbg !28
@__exitcall_i915_exit = internal global ptr @i915_exit, section ".exitcall.exit", align 8, !dbg !30
@__UNIQUE_ID_author625 = internal constant [36 x i8] c"i915.author=Tungsten Graphics, Inc.\00", section ".modinfo", align 1, !dbg !37
@__UNIQUE_ID_author626 = internal constant [30 x i8] c"i915.author=Intel Corporation\00", section ".modinfo", align 1, !dbg !44
@__UNIQUE_ID_description627 = internal constant [32 x i8] c"i915.description=Intel Graphics\00", section ".modinfo", align 1, !dbg !49
@__UNIQUE_ID_file628 = internal constant [36 x i8] c"i915.file=drivers/gpu/drm/i915/i915\00", section ".modinfo", align 1, !dbg !54
@__UNIQUE_ID_license629 = internal constant [39 x i8] c"i915.license=GPL and additional rights\00", section ".modinfo", align 1, !dbg !56
@i915_modparams = external dso_local global %struct.i915_params, section ".data..read_mostly", align 8
@.str = private unnamed_addr constant [15 x i8] c"KMS disabled.\0A\00", align 1, !dbg !74
@.str.1 = private unnamed_addr constant [35 x i8] c"drivers/gpu/drm/i915/i915_module.c\00", align 1, !dbg !79
@llvm.compiler.used = appending global [8 x ptr] [ptr @i915_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_i915__623_118_i915_init6624, ptr @__exitcall_i915_exit, ptr @__UNIQUE_ID_author625, ptr @__UNIQUE_ID_author626, ptr @__UNIQUE_ID_description627, ptr @__UNIQUE_ID_file628, ptr @__UNIQUE_ID_license629], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @i915_exit() #0 section ".exit.text" align 16 !dbg !93 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !96
  call void @llvm.dbg.declare(metadata ptr %i, metadata !95, metadata !DIExpression()), !dbg !97
  %0 = load i32, ptr @init_progress, align 4, !dbg !98
  %sub = sub i32 %0, 1, !dbg !100
  store i32 %sub, ptr %i, align 4, !dbg !101
  br label %for.cond, !dbg !102

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !103
  %cmp = icmp sge i32 %1, 0, !dbg !105
  br i1 %cmp, label %for.body, label %for.end, !dbg !106

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !107
  %idxprom = sext i32 %2 to i64, !dbg !110
  %arrayidx = getelementptr [13 x %struct.anon], ptr @init_funcs, i64 0, i64 %idxprom, !dbg !110
  %exit = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 1, !dbg !111
  %3 = load ptr, ptr %exit, align 8, !dbg !111
  %tobool = icmp ne ptr %3, null, !dbg !110
  br i1 %tobool, label %if.then, label %if.end, !dbg !112

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !113
  %idxprom1 = sext i32 %4 to i64, !dbg !114
  %arrayidx2 = getelementptr [13 x %struct.anon], ptr @init_funcs, i64 0, i64 %idxprom1, !dbg !114
  %exit3 = getelementptr inbounds %struct.anon, ptr %arrayidx2, i32 0, i32 1, !dbg !115
  %5 = load ptr, ptr %exit3, align 8, !dbg !115
  call void %5() #8, !dbg !114
  br label %if.end, !dbg !114

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !116

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4, !dbg !117
  %dec = add i32 %6, -1, !dbg !117
  store i32 %dec, ptr %i, align 4, !dbg !117
  br label %for.cond, !dbg !118, !llvm.loop !119

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !123
  ret void, !dbg !123
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_i915__623_118_i915_init6() #0 section ".init.text" align 16 !dbg !124 {
entry:
  %call = call i32 @i915_init() #9, !dbg !125
  ret i32 %call, !dbg !125
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @i915_init() #0 section ".init.text" align 16 !dbg !126 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #7, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %err, metadata !128, metadata !DIExpression()), !dbg !142
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %i, metadata !129, metadata !DIExpression()), !dbg !143
  store i32 0, ptr %i, align 4, !dbg !144
  br label %for.cond, !dbg !145

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !146
  %conv = sext i32 %0 to i64, !dbg !146
  %cmp = icmp ult i64 %conv, 13, !dbg !147
  br i1 %cmp, label %for.body, label %for.end, !dbg !148

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !149
  %idxprom = sext i32 %1 to i64, !dbg !150
  %arrayidx = getelementptr [13 x %struct.anon], ptr @init_funcs, i64 0, i64 %idxprom, !dbg !150
  %init = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0, !dbg !151
  %2 = load ptr, ptr %init, align 16, !dbg !151
  %call = call i32 %2() #8, !dbg !150
  store i32 %call, ptr %err, align 4, !dbg !152
  %3 = load i32, ptr %err, align 4, !dbg !153
  %cmp2 = icmp slt i32 %3, 0, !dbg !154
  br i1 %cmp2, label %if.then, label %if.else, !dbg !155

if.then:                                          ; preds = %for.body
  br label %while.cond, !dbg !156

while.cond:                                       ; preds = %if.end, %if.then
  %4 = load i32, ptr %i, align 4, !dbg !158
  %dec = add i32 %4, -1, !dbg !158
  store i32 %dec, ptr %i, align 4, !dbg !158
  %tobool = icmp ne i32 %4, 0, !dbg !156
  br i1 %tobool, label %while.body, label %while.end, !dbg !156

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %i, align 4, !dbg !159
  %idxprom4 = sext i32 %5 to i64, !dbg !162
  %arrayidx5 = getelementptr [13 x %struct.anon], ptr @init_funcs, i64 0, i64 %idxprom4, !dbg !162
  %exit = getelementptr inbounds %struct.anon, ptr %arrayidx5, i32 0, i32 1, !dbg !163
  %6 = load ptr, ptr %exit, align 8, !dbg !163
  %tobool6 = icmp ne ptr %6, null, !dbg !162
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !164

if.then7:                                         ; preds = %while.body
  %7 = load i32, ptr %i, align 4, !dbg !165
  %idxprom8 = sext i32 %7 to i64, !dbg !166
  %arrayidx9 = getelementptr [13 x %struct.anon], ptr @init_funcs, i64 0, i64 %idxprom8, !dbg !166
  %exit10 = getelementptr inbounds %struct.anon, ptr %arrayidx9, i32 0, i32 1, !dbg !167
  %8 = load ptr, ptr %exit10, align 8, !dbg !167
  call void %8() #8, !dbg !166
  br label %if.end, !dbg !166

if.end:                                           ; preds = %if.then7, %while.body
  br label %while.cond, !dbg !156, !llvm.loop !168

while.end:                                        ; preds = %while.cond
  %9 = load i32, ptr %err, align 4, !dbg !170
  store i32 %9, ptr %retval, align 4, !dbg !171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !171

if.else:                                          ; preds = %for.body
  %10 = load i32, ptr %err, align 4, !dbg !172
  %cmp11 = icmp sgt i32 %10, 0, !dbg !173
  br i1 %cmp11, label %if.then13, label %if.end44, !dbg !174

if.then13:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !175
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !130, metadata !DIExpression()), !dbg !175
  %11 = load i32, ptr %i, align 4, !dbg !175
  %idxprom14 = sext i32 %11 to i64, !dbg !175
  %arrayidx15 = getelementptr [13 x %struct.anon], ptr @init_funcs, i64 0, i64 %idxprom14, !dbg !175
  %exit16 = getelementptr inbounds %struct.anon, ptr %arrayidx15, i32 0, i32 1, !dbg !175
  %12 = load ptr, ptr %exit16, align 8, !dbg !175
  %tobool17 = icmp ne ptr %12, null, !dbg !175
  %lnot = xor i1 %tobool17, true, !dbg !175
  %lnot18 = xor i1 %lnot, true, !dbg !175
  %lnot.ext = zext i1 %lnot18 to i32, !dbg !175
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !175
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !176
  %tobool19 = icmp ne i32 %13, 0, !dbg !176
  %lnot20 = xor i1 %tobool19, true, !dbg !176
  %lnot22 = xor i1 %lnot20, true, !dbg !176
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !176
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !176
  %expval = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !176
  %tobool25 = icmp ne i64 %expval, 0, !dbg !176
  br i1 %tobool25, label %if.then26, label %if.end36, !dbg !175

if.then26:                                        ; preds = %if.then13
  br label %do.body, !dbg !176

do.body:                                          ; preds = %if.then26
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !177
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !138, metadata !DIExpression()), !dbg !177
  store i32 2305, ptr %__flags, align 4, !dbg !177
  br label %do.body27, !dbg !177

do.body27:                                        ; preds = %do.body
  br label %do.cond, !dbg !178

do.cond:                                          ; preds = %do.body27
  br label %do.end, !dbg !178

do.end:                                           ; preds = %do.cond
  br label %do.body28, !dbg !177

do.body28:                                        ; preds = %do.end
  %14 = load i32, ptr %__flags, align 4, !dbg !180
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 97, i32 %14, i64 12) #7, !dbg !180, !srcloc !182
  br label %do.cond29, !dbg !180

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !180

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !177

do.body31:                                        ; preds = %do.end30
  br label %do.cond32, !dbg !183

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !183

do.end33:                                         ; preds = %do.cond32
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !176
  br label %do.cond34, !dbg !177

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !177

do.end35:                                         ; preds = %do.cond34
  br label %if.end36, !dbg !177

if.end36:                                         ; preds = %do.end35, %if.then13
  %15 = load i32, ptr %__ret_warn_on, align 4, !dbg !175
  %tobool37 = icmp ne i32 %15, 0, !dbg !175
  %lnot38 = xor i1 %tobool37, true, !dbg !175
  %lnot40 = xor i1 %lnot38, true, !dbg !175
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !175
  %conv42 = sext i32 %lnot.ext41 to i64, !dbg !175
  %expval43 = call i64 @llvm.expect.i64(i64 %conv42, i64 0), !dbg !175
  store i64 %expval43, ptr %tmp, align 8, !dbg !176
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !185
  %16 = load i64, ptr %tmp, align 8, !dbg !175
  br label %for.end, !dbg !186

if.end44:                                         ; preds = %if.else
  br label %if.end45

if.end45:                                         ; preds = %if.end44
  br label %for.inc, !dbg !187

for.inc:                                          ; preds = %if.end45
  %17 = load i32, ptr %i, align 4, !dbg !188
  %inc = add i32 %17, 1, !dbg !188
  store i32 %inc, ptr %i, align 4, !dbg !188
  br label %for.cond, !dbg !189, !llvm.loop !190

for.end:                                          ; preds = %if.end36, %for.cond
  %18 = load i32, ptr %i, align 4, !dbg !192
  store i32 %18, ptr @init_progress, align 4, !dbg !193
  store i32 0, ptr %retval, align 4, !dbg !194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !194

cleanup:                                          ; preds = %for.end, %while.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !195
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #7, !dbg !195
  %19 = load i32, ptr %retval, align 4, !dbg !195
  ret i32 %19, !dbg !195
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i915_check_nomodeset() #3 align 16 !dbg !196 {
entry:
  %retval = alloca i32, align 4
  %use_kms = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %use_kms) #7, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %use_kms, metadata !198, metadata !DIExpression()), !dbg !203
  store i8 1, ptr %use_kms, align 1, !dbg !203
  %0 = load i32, ptr getelementptr inbounds (%struct.i915_params, ptr @i915_modparams, i32 0, i32 1), align 8, !dbg !204
  %cmp = icmp eq i32 %0, 0, !dbg !206
  br i1 %cmp, label %if.then, label %if.end, !dbg !207

if.then:                                          ; preds = %entry
  store i8 0, ptr %use_kms, align 1, !dbg !208
  br label %if.end, !dbg !209

if.end:                                           ; preds = %if.then, %entry
  %call = call zeroext i1 @drm_firmware_drivers_only() #8, !dbg !210
  br i1 %call, label %land.lhs.true, label %if.end3, !dbg !212

land.lhs.true:                                    ; preds = %if.end
  %1 = load i32, ptr getelementptr inbounds (%struct.i915_params, ptr @i915_modparams, i32 0, i32 1), align 8, !dbg !213
  %cmp1 = icmp eq i32 %1, -1, !dbg !214
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !215

if.then2:                                         ; preds = %land.lhs.true
  store i8 0, ptr %use_kms, align 1, !dbg !216
  br label %if.end3, !dbg !217

if.end3:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  %2 = load i8, ptr %use_kms, align 1, !dbg !218, !range !220, !noundef !221
  %tobool = trunc i8 %2 to i1, !dbg !218
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !222

if.then4:                                         ; preds = %if.end3
  call void (ptr, i32, ptr, ...) @___drm_dbg(ptr noundef null, i32 noundef 1, ptr noundef @.str) #8, !dbg !223
  store i32 1, ptr %retval, align 4, !dbg !225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !225

if.end5:                                          ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !226

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 1, ptr %use_kms) #7, !dbg !227
  %3 = load i32, ptr %retval, align 4, !dbg !227
  ret i32 %3, !dbg !227
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_active_module_init() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_active_module_exit() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_context_module_init() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_context_module_exit() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_context_module_init() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_context_module_exit() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_objects_module_init() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_objects_module_exit() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_request_module_init() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_request_module_exit() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_scheduler_module_init() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_scheduler_module_exit() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_vma_module_init() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_vma_module_exit() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_vma_resource_module_init() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_vma_resource_module_exit() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i915_mock_selftests() #5 align 16 !dbg !228 {
entry:
  ret i32 0, !dbg !230
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_pmu_init() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_pmu_exit() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_pci_register_driver() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_pci_unregister_driver() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_perf_sysctl_register() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_perf_sysctl_unregister() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_firmware_drivers_only() #5 align 16 !dbg !231 {
entry:
  %call = call zeroext i1 @video_firmware_drivers_only() #8, !dbg !235
  ret i1 %call, !dbg !236
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !237 dso_local void @___drm_dbg(ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !291 dso_local zeroext i1 @video_firmware_drivers_only() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "init_progress", scope: !2, file: !3, line: 76, type: !26, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/i915/.i915_module.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -Wall -Wextra -Wno-format-security -Wno-unused-parameter -Wno-type-limits -Wno-missing-field-initializers -Wno-sign-compare -Wno-shift-negative-value -Wunused-but-set-variable -Wno-frame-address -I ./drivers/gpu/drm/i915 -D KBUILD_MODFILE=\22drivers/gpu/drm/i915/i915\22 -D KBUILD_BASENAME=\22i915_module\22 -D KBUILD_MODNAME=\22i915\22 -D __KBUILD_MODNAME=kmod_i915 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/i915/i915_module.ll drivers/gpu/drm/i915/i915_module.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, globals: !27, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/i915/i915_module.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9aaaa59dc80b5664979729ab47e5cfc7")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !12, line: 330, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!14 = !DIEnumerator(name: "DRM_UT_CORE", value: 0)
!15 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 1)
!16 = !DIEnumerator(name: "DRM_UT_KMS", value: 2)
!17 = !DIEnumerator(name: "DRM_UT_PRIME", value: 3)
!18 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 4)
!19 = !DIEnumerator(name: "DRM_UT_VBL", value: 5)
!20 = !DIEnumerator(name: "DRM_UT_STATE", value: 6)
!21 = !DIEnumerator(name: "DRM_UT_LEASE", value: 7)
!22 = !DIEnumerator(name: "DRM_UT_DP", value: 8)
!23 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 9)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !{!28, !30, !37, !44, !49, !54, !56, !0, !61, !74, !79}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_i915__623_118_i915_init6624", scope: !2, file: !3, line: 118, type: !25, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "__exitcall_i915_exit", scope: !2, file: !3, line: 119, type: !32, isLocal: true, isDefinition: true)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !33, line: 120, baseType: !34)
!33 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{null}
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author625", scope: !2, file: !3, line: 121, type: !39, isLocal: true, isDefinition: true, align: 8)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 288, elements: !42)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !{!43}
!43 = !DISubrange(count: 36)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author626", scope: !2, file: !3, line: 122, type: !46, isLocal: true, isDefinition: true, align: 8)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 240, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 30)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description627", scope: !2, file: !3, line: 124, type: !51, isLocal: true, isDefinition: true, align: 8)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 32)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file628", scope: !2, file: !3, line: 125, type: !39, isLocal: true, isDefinition: true, align: 8)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license629", scope: !2, file: !3, line: 125, type: !58, isLocal: true, isDefinition: true, align: 8)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 312, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 39)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "init_funcs", scope: !2, file: !3, line: 50, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1664, elements: !72)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 47, size: 128, elements: !66)
!66 = !{!67, !71}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !65, file: !3, line: 48, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!26}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !65, file: !3, line: 49, baseType: !34, size: 64, offset: 64)
!72 = !{!73}
!73 = !DISubrange(count: 13)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !3, line: 40, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 120, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 15)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 280, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 35)
!84 = !{i32 7, !"Dwarf Version", i32 5}
!85 = !{i32 2, !"Debug Info Version", i32 3}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 8, !"cf-protection-branch", i32 1}
!88 = !{i32 4, !"function_return_thunk_extern", i32 1}
!89 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!90 = !{i32 1, !"Code Model", i32 2}
!91 = !{i32 1, !"override-stack-alignment", i32 8}
!92 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!93 = distinct !DISubprogram(name: "i915_exit", scope: !3, file: !3, line: 107, type: !35, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !94)
!94 = !{!95}
!95 = !DILocalVariable(name: "i", scope: !93, file: !3, line: 109, type: !26)
!96 = !DILocation(line: 109, column: 2, scope: !93)
!97 = !DILocation(line: 109, column: 6, scope: !93)
!98 = !DILocation(line: 111, column: 11, scope: !99)
!99 = distinct !DILexicalBlock(scope: !93, file: !3, line: 111, column: 2)
!100 = !DILocation(line: 111, column: 25, scope: !99)
!101 = !DILocation(line: 111, column: 9, scope: !99)
!102 = !DILocation(line: 111, column: 7, scope: !99)
!103 = !DILocation(line: 111, column: 30, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !3, line: 111, column: 2)
!105 = !DILocation(line: 111, column: 32, scope: !104)
!106 = !DILocation(line: 111, column: 2, scope: !99)
!107 = !DILocation(line: 113, column: 18, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !3, line: 113, column: 7)
!109 = distinct !DILexicalBlock(scope: !104, file: !3, line: 111, column: 43)
!110 = !DILocation(line: 113, column: 7, scope: !108)
!111 = !DILocation(line: 113, column: 21, scope: !108)
!112 = !DILocation(line: 113, column: 7, scope: !109)
!113 = !DILocation(line: 114, column: 15, scope: !108)
!114 = !DILocation(line: 114, column: 4, scope: !108)
!115 = !DILocation(line: 114, column: 18, scope: !108)
!116 = !DILocation(line: 115, column: 2, scope: !109)
!117 = !DILocation(line: 111, column: 39, scope: !104)
!118 = !DILocation(line: 111, column: 2, scope: !104)
!119 = distinct !{!119, !106, !120, !121, !122}
!120 = !DILocation(line: 115, column: 2, scope: !99)
!121 = !{!"llvm.loop.mustprogress"}
!122 = !{!"llvm.loop.unroll.disable"}
!123 = !DILocation(line: 116, column: 1, scope: !93)
!124 = distinct !DISubprogram(name: "__initstub__kmod_i915__623_118_i915_init6", scope: !3, file: !3, line: 118, type: !69, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!125 = !DILocation(line: 118, column: 1, scope: !124)
!126 = distinct !DISubprogram(name: "i915_init", scope: !3, file: !3, line: 78, type: !69, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !127)
!127 = !{!128, !129, !130, !138}
!128 = !DILocalVariable(name: "err", scope: !126, file: !3, line: 80, type: !26)
!129 = !DILocalVariable(name: "i", scope: !126, file: !3, line: 80, type: !26)
!130 = !DILocalVariable(name: "__ret_warn_on", scope: !131, file: !3, line: 97, type: !26)
!131 = distinct !DILexicalBlock(scope: !132, file: !3, line: 97, column: 4)
!132 = distinct !DILexicalBlock(scope: !133, file: !3, line: 90, column: 23)
!133 = distinct !DILexicalBlock(scope: !134, file: !3, line: 90, column: 14)
!134 = distinct !DILexicalBlock(scope: !135, file: !3, line: 84, column: 7)
!135 = distinct !DILexicalBlock(scope: !136, file: !3, line: 82, column: 47)
!136 = distinct !DILexicalBlock(scope: !137, file: !3, line: 82, column: 2)
!137 = distinct !DILexicalBlock(scope: !126, file: !3, line: 82, column: 2)
!138 = !DILocalVariable(name: "__flags", scope: !139, file: !3, line: 97, type: !26)
!139 = distinct !DILexicalBlock(scope: !140, file: !3, line: 97, column: 4)
!140 = distinct !DILexicalBlock(scope: !131, file: !3, line: 97, column: 4)
!141 = !DILocation(line: 80, column: 2, scope: !126)
!142 = !DILocation(line: 80, column: 6, scope: !126)
!143 = !DILocation(line: 80, column: 11, scope: !126)
!144 = !DILocation(line: 82, column: 9, scope: !137)
!145 = !DILocation(line: 82, column: 7, scope: !137)
!146 = !DILocation(line: 82, column: 14, scope: !136)
!147 = !DILocation(line: 82, column: 16, scope: !136)
!148 = !DILocation(line: 82, column: 2, scope: !137)
!149 = !DILocation(line: 83, column: 20, scope: !135)
!150 = !DILocation(line: 83, column: 9, scope: !135)
!151 = !DILocation(line: 83, column: 23, scope: !135)
!152 = !DILocation(line: 83, column: 7, scope: !135)
!153 = !DILocation(line: 84, column: 7, scope: !134)
!154 = !DILocation(line: 84, column: 11, scope: !134)
!155 = !DILocation(line: 84, column: 7, scope: !135)
!156 = !DILocation(line: 85, column: 4, scope: !157)
!157 = distinct !DILexicalBlock(scope: !134, file: !3, line: 84, column: 16)
!158 = !DILocation(line: 85, column: 12, scope: !157)
!159 = !DILocation(line: 86, column: 20, scope: !160)
!160 = distinct !DILexicalBlock(scope: !161, file: !3, line: 86, column: 9)
!161 = distinct !DILexicalBlock(scope: !157, file: !3, line: 85, column: 16)
!162 = !DILocation(line: 86, column: 9, scope: !160)
!163 = !DILocation(line: 86, column: 23, scope: !160)
!164 = !DILocation(line: 86, column: 9, scope: !161)
!165 = !DILocation(line: 87, column: 17, scope: !160)
!166 = !DILocation(line: 87, column: 6, scope: !160)
!167 = !DILocation(line: 87, column: 20, scope: !160)
!168 = distinct !{!168, !156, !169, !121, !122}
!169 = !DILocation(line: 88, column: 4, scope: !157)
!170 = !DILocation(line: 89, column: 11, scope: !157)
!171 = !DILocation(line: 89, column: 4, scope: !157)
!172 = !DILocation(line: 90, column: 14, scope: !133)
!173 = !DILocation(line: 90, column: 18, scope: !133)
!174 = !DILocation(line: 90, column: 14, scope: !134)
!175 = !DILocation(line: 97, column: 4, scope: !131)
!176 = !DILocation(line: 97, column: 4, scope: !140)
!177 = !DILocation(line: 97, column: 4, scope: !139)
!178 = !DILocation(line: 97, column: 4, scope: !179)
!179 = distinct !DILexicalBlock(scope: !139, file: !3, line: 97, column: 4)
!180 = !DILocation(line: 97, column: 4, scope: !181)
!181 = distinct !DILexicalBlock(scope: !139, file: !3, line: 97, column: 4)
!182 = !{i64 2159181852, i64 2159181881, i64 2159181927, i64 2159181985, i64 2159182039, i64 2159182093, i64 2159182148, i64 2159182179, i64 2159182487, i64 2159182493, i64 2159182540, i64 2159182563, i64 2159182589}
!183 = !DILocation(line: 97, column: 4, scope: !184)
!184 = distinct !DILexicalBlock(scope: !139, file: !3, line: 97, column: 4)
!185 = !DILocation(line: 97, column: 4, scope: !132)
!186 = !DILocation(line: 98, column: 4, scope: !132)
!187 = !DILocation(line: 100, column: 2, scope: !135)
!188 = !DILocation(line: 82, column: 43, scope: !136)
!189 = !DILocation(line: 82, column: 2, scope: !136)
!190 = distinct !{!190, !148, !191, !121, !122}
!191 = !DILocation(line: 100, column: 2, scope: !137)
!192 = !DILocation(line: 102, column: 18, scope: !126)
!193 = !DILocation(line: 102, column: 16, scope: !126)
!194 = !DILocation(line: 104, column: 2, scope: !126)
!195 = !DILocation(line: 105, column: 1, scope: !126)
!196 = distinct !DISubprogram(name: "i915_check_nomodeset", scope: !3, file: !3, line: 22, type: !69, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !197)
!197 = !{!198}
!198 = !DILocalVariable(name: "use_kms", scope: !196, file: !3, line: 24, type: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !200, line: 35, baseType: !201)
!200 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!201 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!202 = !DILocation(line: 24, column: 2, scope: !196)
!203 = !DILocation(line: 24, column: 7, scope: !196)
!204 = !DILocation(line: 32, column: 21, scope: !205)
!205 = distinct !DILexicalBlock(scope: !196, file: !3, line: 32, column: 6)
!206 = !DILocation(line: 32, column: 29, scope: !205)
!207 = !DILocation(line: 32, column: 6, scope: !196)
!208 = !DILocation(line: 33, column: 11, scope: !205)
!209 = !DILocation(line: 33, column: 3, scope: !205)
!210 = !DILocation(line: 35, column: 6, scope: !211)
!211 = distinct !DILexicalBlock(scope: !196, file: !3, line: 35, column: 6)
!212 = !DILocation(line: 35, column: 34, scope: !211)
!213 = !DILocation(line: 35, column: 52, scope: !211)
!214 = !DILocation(line: 35, column: 60, scope: !211)
!215 = !DILocation(line: 35, column: 6, scope: !196)
!216 = !DILocation(line: 36, column: 11, scope: !211)
!217 = !DILocation(line: 36, column: 3, scope: !211)
!218 = !DILocation(line: 38, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !196, file: !3, line: 38, column: 6)
!220 = !{i8 0, i8 2}
!221 = !{}
!222 = !DILocation(line: 38, column: 6, scope: !196)
!223 = !DILocation(line: 40, column: 3, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !3, line: 38, column: 16)
!225 = !DILocation(line: 41, column: 3, scope: !224)
!226 = !DILocation(line: 44, column: 2, scope: !196)
!227 = !DILocation(line: 45, column: 1, scope: !196)
!228 = distinct !DISubprogram(name: "i915_mock_selftests", scope: !229, file: !229, line: 116, type: !69, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!229 = !DIFile(filename: "./drivers/gpu/drm/i915/i915_selftest.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "196efee88c9acb811b5c5ce0b68a0472")
!230 = !DILocation(line: 116, column: 47, scope: !228)
!231 = distinct !DISubprogram(name: "drm_firmware_drivers_only", scope: !232, file: !232, line: 588, type: !233, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!232 = !DIFile(filename: "./include/drm/drm_drv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1f945ad2d8b16ba8834948006e1f4f23")
!233 = !DISubroutineType(types: !234)
!234 = !{!199}
!235 = !DILocation(line: 590, column: 9, scope: !231)
!236 = !DILocation(line: 590, column: 2, scope: !231)
!237 = !DISubprogram(name: "___drm_dbg", scope: !12, file: !12, line: 571, type: !238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !240, !11, !245, null}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ddebug", file: !242, line: 16, size: 448, align: 64, elements: !243)
!242 = !DIFile(filename: "./include/linux/dynamic_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5870bc31a25115f490bd43a8eae18abb")
!243 = !{!244, !246, !247, !248, !249, !250, !251, !252}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "modname", scope: !241, file: !242, line: 21, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !241, file: !242, line: 22, baseType: !245, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !241, file: !242, line: 23, baseType: !245, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !241, file: !242, line: 24, baseType: !245, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !241, file: !242, line: 25, baseType: !7, size: 18, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !241, file: !242, line: 27, baseType: !7, size: 6, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !242, line: 52, baseType: !7, size: 8, offset: 280, flags: DIFlagBitField, extraData: i64 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !241, file: !242, line: 57, baseType: !253, size: 128, offset: 320)
!253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !242, line: 54, size: 128, elements: !254)
!254 = !{!255, !287}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_true", scope: !253, file: !242, line: 55, baseType: !256, size: 128)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_true", file: !257, line: 359, size: 128, elements: !258)
!257 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !256, file: !257, line: 360, baseType: !260, size: 128)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !257, line: 85, size: 128, elements: !261)
!261 = !{!262, !267}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !260, file: !257, line: 86, baseType: !263, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !200, line: 174, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !200, line: 172, size: 32, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !264, file: !200, line: 173, baseType: !26, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, scope: !260, file: !257, line: 101, baseType: !268, size: 64, offset: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !260, file: !257, line: 101, size: 64, elements: !269)
!269 = !{!270, !272, !284}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !268, file: !257, line: 102, baseType: !271, size: 64)
!271 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !268, file: !257, line: 103, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !257, line: 117, size: 128, elements: !275)
!275 = !{!276, !281, !282}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !274, file: !257, line: 118, baseType: !277, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !278, line: 20, baseType: !279)
!278 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !280, line: 26, baseType: !26)
!280 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!281 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !274, file: !257, line: 119, baseType: !277, size: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !274, file: !257, line: 120, baseType: !283, size: 64, offset: 64)
!283 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !257, line: 104, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !257, line: 104, flags: DIFlagFwdDecl)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_false", scope: !253, file: !242, line: 56, baseType: !288, size: 128)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !257, line: 363, size: 128, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !288, file: !257, line: 364, baseType: !260, size: 128)
!291 = !DISubprogram(name: "video_firmware_drivers_only", scope: !292, file: !292, line: 6, type: !233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DIFile(filename: "./include/video/nomodeset.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "00ae7b58492f58e35ba5c7fccbf2ab68")
