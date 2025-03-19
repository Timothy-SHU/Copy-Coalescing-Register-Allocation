; ModuleID = 'kernel/locking/qrwlock.c'
source_filename = "kernel/locking/qrwlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_queued_read_lock_slowpath: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad queued_read_lock_slowpath ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_queued_write_lock_slowpath: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad queued_write_lock_slowpath ; .previous"

%struct.pcpu_hot = type { %union.anon.3 }
%union.anon.3 = type { %struct.anon.4, [16 x i8] }
%struct.anon.4 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.5 }
%struct.atomic_t = type { i32 }
%union.anon.5 = type { i64 }
%struct.static_call_key = type { ptr, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.qrwlock = type { %union.anon, %struct.qspinlock }
%union.anon = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.anon.1 = type { i8, i8 }

@__UNIQUE_ID___addressable_queued_read_lock_slowpath221 = internal global ptr @queued_read_lock_slowpath, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_queued_write_lock_slowpath223 = internal global ptr @queued_write_lock_slowpath, section ".discard.addressable", align 8, !dbg !51
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__tracepoint_contention_begin = external dso_local global %struct.tracepoint, align 8
@.str = private unnamed_addr constant [28 x i8] c"include/trace/events/lock.h\00", align 1, !dbg !53
@trace_contention_begin.__UNIQUE_ID___addressable___SCK__tp_func_contention_begin205 = internal global ptr @__SCK__tp_func_contention_begin, section ".discard.addressable", align 8, !dbg !60
@__SCK__tp_func_contention_begin = external dso_local global %struct.static_call_key, align 8
@trace_contention_begin.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace206 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !91
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__tracepoint_contention_end = external dso_local global %struct.tracepoint, align 8
@trace_contention_end.__UNIQUE_ID___addressable___SCK__tp_func_contention_end213 = internal global ptr @__SCK__tp_func_contention_end, section ".discard.addressable", align 8, !dbg !93
@__SCK__tp_func_contention_end = external dso_local global %struct.static_call_key, align 8
@trace_contention_end.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace214 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !122
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_queued_read_lock_slowpath221, ptr @__UNIQUE_ID___addressable_queued_write_lock_slowpath223, ptr @trace_contention_begin.__UNIQUE_ID___addressable___SCK__tp_func_contention_begin205, ptr @trace_contention_begin.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace206, ptr @trace_contention_end.__UNIQUE_ID___addressable___SCK__tp_func_contention_end213, ptr @trace_contention_end.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace214], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @queued_read_lock_slowpath(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !134 {
entry:
  %lock.addr = alloca ptr, align 8
  %_val = alloca i32, align 4
  %__PTR = alloca ptr, align 8
  %VAL = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %_val22 = alloca i32, align 4
  %__PTR23 = alloca ptr, align 8
  %VAL25 = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !181, metadata !DIExpression()), !dbg !194
  %call = call i32 @preempt_count() #11, !dbg !195
  %conv = sext i32 %call to i64, !dbg !195
  %and = and i64 %conv, 16776960, !dbg !195
  %tobool = icmp ne i64 %and, 0, !dbg !195
  %lnot = xor i1 %tobool, true, !dbg !195
  %lnot1 = xor i1 %lnot, true, !dbg !195
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !195
  %conv2 = sext i32 %lnot.ext to i64, !dbg !195
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 0), !dbg !195
  %tobool3 = icmp ne i64 %expval, 0, !dbg !195
  br i1 %tobool3, label %if.then, label %if.end21, !dbg !196

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %_val) #12, !dbg !197
  call void @llvm.dbg.declare(metadata ptr %_val, metadata !182, metadata !DIExpression()), !dbg !197
  call void @llvm.lifetime.start.p0(i64 8, ptr %__PTR) #12, !dbg !198
  call void @llvm.dbg.declare(metadata ptr %__PTR, metadata !186, metadata !DIExpression()), !dbg !198
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !198
  %1 = getelementptr inbounds %struct.qrwlock, ptr %0, i32 0, i32 0, !dbg !198
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !198
  store ptr %counter, ptr %__PTR, align 8, !dbg !198
  call void @llvm.lifetime.start.p0(i64 4, ptr %VAL) #12, !dbg !198
  call void @llvm.dbg.declare(metadata ptr %VAL, metadata !188, metadata !DIExpression()), !dbg !198
  br label %for.cond, !dbg !198

for.cond:                                         ; preds = %if.end, %if.then
  br label %do.body, !dbg !199

do.body:                                          ; preds = %for.cond
  br label %do.cond, !dbg !204

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !204

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %__PTR, align 8, !dbg !199
  %3 = load volatile i32, ptr %2, align 4, !dbg !199
  store i32 %3, ptr %tmp, align 4, !dbg !204
  %4 = load i32, ptr %tmp, align 4, !dbg !199
  store i32 %4, ptr %VAL, align 4, !dbg !206
  %5 = load i32, ptr %VAL, align 4, !dbg !207
  %and4 = and i32 %5, 255, !dbg !207
  %tobool5 = icmp ne i32 %and4, 0, !dbg !207
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !206

if.then6:                                         ; preds = %do.end
  br label %for.end, !dbg !207

if.end:                                           ; preds = %do.end
  call void @cpu_relax() #11, !dbg !206
  br label %for.cond, !dbg !209, !llvm.loop !210

for.end:                                          ; preds = %if.then6
  %6 = load i32, ptr %VAL, align 4, !dbg !198
  store i32 %6, ptr %tmp7, align 4, !dbg !211
  call void @llvm.lifetime.end.p0(i64 4, ptr %VAL) #12, !dbg !197
  call void @llvm.lifetime.end.p0(i64 8, ptr %__PTR) #12, !dbg !197
  %7 = load i32, ptr %tmp7, align 4, !dbg !198
  store i32 %7, ptr %_val, align 4, !dbg !197
  br label %do.body8, !dbg !197

do.body8:                                         ; preds = %for.end
  br label %do.body9, !dbg !213

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !215

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !215

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !213

do.body12:                                        ; preds = %do.end11
  br label %do.body13, !dbg !217

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !219

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !219

do.end15:                                         ; preds = %do.cond14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !217, !srcloc !221
  br label %do.cond16, !dbg !217

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !217

do.end17:                                         ; preds = %do.cond16
  br label %do.cond18, !dbg !213

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !213

do.end19:                                         ; preds = %do.cond18
  %8 = load i32, ptr %_val, align 4, !dbg !197
  store i32 %8, ptr %tmp20, align 4, !dbg !213
  call void @llvm.lifetime.end.p0(i64 4, ptr %_val) #12, !dbg !222
  %9 = load i32, ptr %tmp20, align 4, !dbg !197
  br label %return, !dbg !223

if.end21:                                         ; preds = %entry
  %10 = load ptr, ptr %lock.addr, align 8, !dbg !224
  %11 = getelementptr inbounds %struct.qrwlock, ptr %10, i32 0, i32 0, !dbg !225
  call void @atomic_sub(i32 noundef 512, ptr noundef %11) #11, !dbg !226
  %12 = load ptr, ptr %lock.addr, align 8, !dbg !227
  call void @trace_contention_begin(ptr noundef %12, i32 noundef 3) #11, !dbg !228
  %13 = load ptr, ptr %lock.addr, align 8, !dbg !229
  %wait_lock = getelementptr inbounds %struct.qrwlock, ptr %13, i32 0, i32 1, !dbg !229
  call void @queued_spin_lock(ptr noundef %wait_lock) #11, !dbg !229
  %14 = load ptr, ptr %lock.addr, align 8, !dbg !230
  %15 = getelementptr inbounds %struct.qrwlock, ptr %14, i32 0, i32 0, !dbg !231
  call void @atomic_add(i32 noundef 512, ptr noundef %15) #11, !dbg !232
  call void @llvm.lifetime.start.p0(i64 4, ptr %_val22) #12, !dbg !233
  call void @llvm.dbg.declare(metadata ptr %_val22, metadata !189, metadata !DIExpression()), !dbg !233
  call void @llvm.lifetime.start.p0(i64 8, ptr %__PTR23) #12, !dbg !234
  call void @llvm.dbg.declare(metadata ptr %__PTR23, metadata !191, metadata !DIExpression()), !dbg !234
  %16 = load ptr, ptr %lock.addr, align 8, !dbg !234
  %17 = getelementptr inbounds %struct.qrwlock, ptr %16, i32 0, i32 0, !dbg !234
  %counter24 = getelementptr inbounds %struct.atomic_t, ptr %17, i32 0, i32 0, !dbg !234
  store ptr %counter24, ptr %__PTR23, align 8, !dbg !234
  call void @llvm.lifetime.start.p0(i64 4, ptr %VAL25) #12, !dbg !234
  call void @llvm.dbg.declare(metadata ptr %VAL25, metadata !193, metadata !DIExpression()), !dbg !234
  br label %for.cond26, !dbg !234

for.cond26:                                       ; preds = %if.end34, %if.end21
  br label %do.body27, !dbg !235

do.body27:                                        ; preds = %for.cond26
  br label %do.cond28, !dbg !240

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !240

do.end29:                                         ; preds = %do.cond28
  %18 = load ptr, ptr %__PTR23, align 8, !dbg !235
  %19 = load volatile i32, ptr %18, align 4, !dbg !235
  store i32 %19, ptr %tmp30, align 4, !dbg !240
  %20 = load i32, ptr %tmp30, align 4, !dbg !235
  store i32 %20, ptr %VAL25, align 4, !dbg !242
  %21 = load i32, ptr %VAL25, align 4, !dbg !243
  %and31 = and i32 %21, 255, !dbg !243
  %tobool32 = icmp ne i32 %and31, 0, !dbg !243
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !242

if.then33:                                        ; preds = %do.end29
  br label %for.end35, !dbg !243

if.end34:                                         ; preds = %do.end29
  call void @cpu_relax() #11, !dbg !242
  br label %for.cond26, !dbg !245, !llvm.loop !246

for.end35:                                        ; preds = %if.then33
  %22 = load i32, ptr %VAL25, align 4, !dbg !234
  store i32 %22, ptr %tmp36, align 4, !dbg !247
  call void @llvm.lifetime.end.p0(i64 4, ptr %VAL25) #12, !dbg !233
  call void @llvm.lifetime.end.p0(i64 8, ptr %__PTR23) #12, !dbg !233
  %23 = load i32, ptr %tmp36, align 4, !dbg !234
  store i32 %23, ptr %_val22, align 4, !dbg !233
  br label %do.body37, !dbg !233

do.body37:                                        ; preds = %for.end35
  br label %do.body38, !dbg !248

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !250

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !250

do.end40:                                         ; preds = %do.cond39
  br label %do.body41, !dbg !248

do.body41:                                        ; preds = %do.end40
  br label %do.body42, !dbg !252

do.body42:                                        ; preds = %do.body41
  br label %do.cond43, !dbg !254

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !254

do.end44:                                         ; preds = %do.cond43
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !252, !srcloc !256
  br label %do.cond45, !dbg !252

do.cond45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !252

do.end46:                                         ; preds = %do.cond45
  br label %do.cond47, !dbg !248

do.cond47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !248

do.end48:                                         ; preds = %do.cond47
  %24 = load i32, ptr %_val22, align 4, !dbg !233
  store i32 %24, ptr %tmp49, align 4, !dbg !248
  call void @llvm.lifetime.end.p0(i64 4, ptr %_val22) #12, !dbg !257
  %25 = load i32, ptr %tmp49, align 4, !dbg !233
  %26 = load ptr, ptr %lock.addr, align 8, !dbg !258
  %wait_lock50 = getelementptr inbounds %struct.qrwlock, ptr %26, i32 0, i32 1, !dbg !258
  call void @queued_spin_unlock(ptr noundef %wait_lock50) #11, !dbg !258
  %27 = load ptr, ptr %lock.addr, align 8, !dbg !259
  call void @trace_contention_end(ptr noundef %27, i32 noundef 0) #11, !dbg !260
  br label %return, !dbg !261

return:                                           ; preds = %do.end48, %do.end19
  ret void, !dbg !261
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #2 align 16 !dbg !262 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !269
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !267, metadata !DIExpression()), !dbg !269
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !269, !srcloc !270
  store i32 %0, ptr %pfo_val__, align 4, !dbg !269
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !269
  %conv = zext i32 %1 to i64, !dbg !269
  %conv1 = trunc i64 %conv to i32, !dbg !269
  store i32 %conv1, ptr %tmp, align 4, !dbg !269
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !271
  %2 = load i32, ptr %tmp, align 4, !dbg !269
  %and = and i32 %2, 2147483647, !dbg !272
  ret i32 %and, !dbg !273
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #2 align 16 !dbg !274 {
entry:
  call void @rep_nop() #11, !dbg !278
  ret void, !dbg !279
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_sub(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !280 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !286, metadata !DIExpression()), !dbg !288
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !287, metadata !DIExpression()), !dbg !289
  %0 = load ptr, ptr %v.addr, align 8, !dbg !290
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !291
  %1 = load i32, ptr %i.addr, align 4, !dbg !292
  %2 = load ptr, ptr %v.addr, align 8, !dbg !293
  call void @raw_atomic_sub(i32 noundef %1, ptr noundef %2) #11, !dbg !294
  ret void, !dbg !295
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_contention_begin(ptr noundef %lock, i32 noundef %flags) #5 align 16 !dbg !62 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu203 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !66, metadata !DIExpression()), !dbg !296
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !67, metadata !DIExpression()), !dbg !296
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_begin, i32 0, i32 1)) #11, !dbg !297
  br i1 %call, label %if.then, label %if.end68, !dbg !296

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !297

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #12, !dbg !298
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !68, metadata !DIExpression()), !dbg !298
  store i32 0, ptr %__idx, align 4, !dbg !298
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !71, metadata !DIExpression()), !dbg !299
  br label %do.body1, !dbg !299

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !300
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !74, metadata !DIExpression()), !dbg !300
  store ptr null, ptr %__vpp_verify, align 8, !dbg !300
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !300
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !299
  br label %do.cond, !dbg !300

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !300

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !78, metadata !DIExpression()), !dbg !301
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !301, !srcloc !302
  store i32 %1, ptr %pfo_val__, align 4, !dbg !301
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !301
  %conv = zext i32 %2 to i64, !dbg !301
  %conv2 = trunc i64 %conv to i32, !dbg !301
  store i32 %conv2, ptr %tmp, align 4, !dbg !301
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !299
  %3 = load i32, ptr %tmp, align 4, !dbg !301
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !299
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !299
  store i32 %4, ptr %tmp3, align 4, !dbg !299
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !303
  %5 = load i32, ptr %tmp3, align 4, !dbg !299
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #11, !dbg !303
  br i1 %call4, label %if.end, label %if.then5, !dbg !298

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !303

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !304
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !80, metadata !DIExpression()), !dbg !304
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !304
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !305
  %tobool = icmp ne i32 %6, 0, !dbg !305
  %lnot = xor i1 %tobool, true, !dbg !305
  %lnot6 = xor i1 %lnot, true, !dbg !305
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !305
  %conv7 = sext i32 %lnot.ext to i64, !dbg !305
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !305
  %tobool8 = icmp ne i64 %expval, 0, !dbg !305
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !304

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !305

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !306
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !83, metadata !DIExpression()), !dbg !306
  store i32 2307, ptr %__flags, align 4, !dbg !306
  br label %do.body11, !dbg !306

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !307

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !307

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !306

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !309
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 120, i32 %7, i64 12) #12, !dbg !309, !srcloc !311
  br label %do.cond15, !dbg !309

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !309

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !306

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !312

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !312

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !305
  br label %do.cond20, !dbg !306

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !306

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !306

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !304
  %tobool24 = icmp ne i32 %8, 0, !dbg !304
  %lnot25 = xor i1 %tobool24, true, !dbg !304
  %lnot27 = xor i1 %lnot25, true, !dbg !304
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !304
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !304
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !304
  store i64 %expval30, ptr %tmp23, align 8, !dbg !305
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !314
  %9 = load i64, ptr %tmp23, align 8, !dbg !304
  %tobool31 = icmp ne i64 %9, 0, !dbg !314
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !298

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !314

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !298

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #11, !dbg !315
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !315, !srcloc !317
  br label %do.cond35, !dbg !315

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !315

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !298

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #12, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !86, metadata !DIExpression()), !dbg !318
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #12, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !88, metadata !DIExpression()), !dbg !318
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu203) #12, !dbg !319
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu203, metadata !89, metadata !DIExpression()), !dbg !319
  br label %do.body38, !dbg !320

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !322

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !322

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_begin, i32 0, i32 8), align 8, !dbg !320
  store ptr %10, ptr %tmp41, align 8, !dbg !322
  %11 = load ptr, ptr %tmp41, align 8, !dbg !320
  store ptr %11, ptr %__UNIQUE_ID_rcu203, align 8, !dbg !319
  %12 = load ptr, ptr %__UNIQUE_ID_rcu203, align 8, !dbg !319
  store ptr %12, ptr %tmp42, align 8, !dbg !319
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu203) #12, !dbg !318
  %13 = load ptr, ptr %tmp42, align 8, !dbg !319
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !318
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !324
  %tobool43 = icmp ne ptr %14, null, !dbg !324
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !318

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !326
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !326
  %16 = load ptr, ptr %data, align 8, !dbg !326
  store ptr %16, ptr %__data, align 8, !dbg !326
  store ptr @__SCT__tp_func_contention_begin, ptr %tmp45, align 8, !dbg !328
  %17 = load ptr, ptr %tmp45, align 8, !dbg !328
  %18 = load ptr, ptr %__data, align 8, !dbg !326
  %19 = load ptr, ptr %lock.addr, align 8, !dbg !326
  %20 = load i32, ptr %flags.addr, align 4, !dbg !326
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20) #11, !dbg !326
  br label %if.end47, !dbg !326

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #12, !dbg !298
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #12, !dbg !298
  br label %do.cond48, !dbg !318

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !318

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !298

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !330, !srcloc !332
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #11, !dbg !333
  %lnot52 = xor i1 %call51, true, !dbg !333
  %lnot54 = xor i1 %lnot52, true, !dbg !333
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !333
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !333
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !333
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !333
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !330

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !333

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !124), !dbg !335
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #12, !dbg !335, !srcloc !337
  call void @llvm.write_register.i64(metadata !124, i64 %22), !dbg !335
  br label %do.cond61, !dbg !335

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !335

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !335

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !330

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !330

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !297
  br label %cleanup, !dbg !297

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #12, !dbg !297
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !298

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !298

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !296

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queued_spin_lock(ptr noundef %lock) #2 align 16 !dbg !338 {
entry:
  %lock.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !344, metadata !DIExpression()), !dbg !346
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #12, !dbg !347
  call void @llvm.dbg.declare(metadata ptr %val, metadata !345, metadata !DIExpression()), !dbg !348
  store i32 0, ptr %val, align 4, !dbg !348
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !349
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !349
  %call = call zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %1, ptr noundef %val, i32 noundef 1) #11, !dbg !349
  %lnot = xor i1 %call, true, !dbg !349
  %lnot1 = xor i1 %lnot, true, !dbg !349
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !349
  %conv = sext i32 %lnot.ext to i64, !dbg !349
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !349
  %tobool = icmp ne i64 %expval, 0, !dbg !349
  br i1 %tobool, label %if.then, label %if.end, !dbg !351

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !352

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !353
  %3 = load i32, ptr %val, align 4, !dbg !354
  call void @queued_spin_lock_slowpath(ptr noundef %2, i32 noundef %3) #11, !dbg !355
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !356
  br label %cleanup, !dbg !356

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #12, !dbg !356
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !356

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_add(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !357 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !359, metadata !DIExpression()), !dbg !361
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !360, metadata !DIExpression()), !dbg !362
  %0 = load ptr, ptr %v.addr, align 8, !dbg !363
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !364
  %1 = load i32, ptr %i.addr, align 4, !dbg !365
  %2 = load ptr, ptr %v.addr, align 8, !dbg !366
  call void @raw_atomic_add(i32 noundef %1, ptr noundef %2) #11, !dbg !367
  ret void, !dbg !368
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queued_spin_unlock(ptr noundef %lock) #2 align 16 !dbg !369 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !371, metadata !DIExpression()), !dbg !372
  br label %do.body, !dbg !373

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !374

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !376

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !374

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !378

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !380

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !378, !srcloc !382
  br label %do.body5, !dbg !378

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !383

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !385

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !383

do.body8:                                         ; preds = %do.end7
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !387
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !387
  %locked = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 0, !dbg !387
  store volatile i8 0, ptr %locked, align 4, !dbg !387
  br label %do.end9, !dbg !387

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !383

do.end10:                                         ; preds = %do.end9
  br label %do.end11, !dbg !378

do.end11:                                         ; preds = %do.end10
  br label %do.end12, !dbg !374

do.end12:                                         ; preds = %do.end11
  ret void, !dbg !389
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_contention_end(ptr noundef %lock, i32 noundef %ret) #5 align 16 !dbg !95 {
entry:
  %lock.addr = alloca ptr, align 8
  %ret.addr = alloca i32, align 4
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu211 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !99, metadata !DIExpression()), !dbg !390
  store i32 %ret, ptr %ret.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !100, metadata !DIExpression()), !dbg !390
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_end, i32 0, i32 1)) #11, !dbg !391
  br i1 %call, label %if.then, label %if.end68, !dbg !390

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !391

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #12, !dbg !392
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !101, metadata !DIExpression()), !dbg !392
  store i32 0, ptr %__idx, align 4, !dbg !392
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !104, metadata !DIExpression()), !dbg !393
  br label %do.body1, !dbg !393

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !394
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !107, metadata !DIExpression()), !dbg !394
  store ptr null, ptr %__vpp_verify, align 8, !dbg !394
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !394
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !393
  br label %do.cond, !dbg !394

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !394

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !395
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !109, metadata !DIExpression()), !dbg !395
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !395, !srcloc !396
  store i32 %1, ptr %pfo_val__, align 4, !dbg !395
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !395
  %conv = zext i32 %2 to i64, !dbg !395
  %conv2 = trunc i64 %conv to i32, !dbg !395
  store i32 %conv2, ptr %tmp, align 4, !dbg !395
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !393
  %3 = load i32, ptr %tmp, align 4, !dbg !395
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !393
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !393
  store i32 %4, ptr %tmp3, align 4, !dbg !393
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !397
  %5 = load i32, ptr %tmp3, align 4, !dbg !393
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #11, !dbg !397
  br i1 %call4, label %if.end, label %if.then5, !dbg !392

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !397

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !398
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !111, metadata !DIExpression()), !dbg !398
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !398
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !399
  %tobool = icmp ne i32 %6, 0, !dbg !399
  %lnot = xor i1 %tobool, true, !dbg !399
  %lnot6 = xor i1 %lnot, true, !dbg !399
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !399
  %conv7 = sext i32 %lnot.ext to i64, !dbg !399
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !399
  %tobool8 = icmp ne i64 %expval, 0, !dbg !399
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !398

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !399

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !400
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !114, metadata !DIExpression()), !dbg !400
  store i32 2307, ptr %__flags, align 4, !dbg !400
  br label %do.body11, !dbg !400

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !401

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !401

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !400

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !403
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 139, i32 %7, i64 12) #12, !dbg !403, !srcloc !405
  br label %do.cond15, !dbg !403

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !403

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !400

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !406

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !406

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !399
  br label %do.cond20, !dbg !400

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !400

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !400

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !398
  %tobool24 = icmp ne i32 %8, 0, !dbg !398
  %lnot25 = xor i1 %tobool24, true, !dbg !398
  %lnot27 = xor i1 %lnot25, true, !dbg !398
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !398
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !398
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !398
  store i64 %expval30, ptr %tmp23, align 8, !dbg !399
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !408
  %9 = load i64, ptr %tmp23, align 8, !dbg !398
  %tobool31 = icmp ne i64 %9, 0, !dbg !408
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !392

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !408

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !392

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #11, !dbg !409
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !409, !srcloc !411
  br label %do.cond35, !dbg !409

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !409

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !392

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #12, !dbg !412
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !117, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #12, !dbg !412
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !119, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu211) #12, !dbg !413
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu211, metadata !120, metadata !DIExpression()), !dbg !413
  br label %do.body38, !dbg !414

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !416

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !416

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_end, i32 0, i32 8), align 8, !dbg !414
  store ptr %10, ptr %tmp41, align 8, !dbg !416
  %11 = load ptr, ptr %tmp41, align 8, !dbg !414
  store ptr %11, ptr %__UNIQUE_ID_rcu211, align 8, !dbg !413
  %12 = load ptr, ptr %__UNIQUE_ID_rcu211, align 8, !dbg !413
  store ptr %12, ptr %tmp42, align 8, !dbg !413
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu211) #12, !dbg !412
  %13 = load ptr, ptr %tmp42, align 8, !dbg !413
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !412
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !418
  %tobool43 = icmp ne ptr %14, null, !dbg !418
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !412

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !420
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !420
  %16 = load ptr, ptr %data, align 8, !dbg !420
  store ptr %16, ptr %__data, align 8, !dbg !420
  store ptr @__SCT__tp_func_contention_end, ptr %tmp45, align 8, !dbg !422
  %17 = load ptr, ptr %tmp45, align 8, !dbg !422
  %18 = load ptr, ptr %__data, align 8, !dbg !420
  %19 = load ptr, ptr %lock.addr, align 8, !dbg !420
  %20 = load i32, ptr %ret.addr, align 4, !dbg !420
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20) #11, !dbg !420
  br label %if.end47, !dbg !420

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #12, !dbg !392
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #12, !dbg !392
  br label %do.cond48, !dbg !412

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !412

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !392

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !424, !srcloc !426
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #11, !dbg !427
  %lnot52 = xor i1 %call51, true, !dbg !427
  %lnot54 = xor i1 %lnot52, true, !dbg !427
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !427
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !427
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !427
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !427
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !424

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !427

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !124), !dbg !429
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #12, !dbg !429, !srcloc !431
  call void @llvm.write_register.i64(metadata !124, i64 %22), !dbg !429
  br label %do.cond61, !dbg !429

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !429

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !429

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !424

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !424

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !391
  br label %cleanup, !dbg !391

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #12, !dbg !391
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !392

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !392

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !390

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @queued_write_lock_slowpath(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !432 {
entry:
  %lock.addr = alloca ptr, align 8
  %cnts = alloca i32, align 4
  %__PTR = alloca ptr, align 8
  %VAL = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !434, metadata !DIExpression()), !dbg !441
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnts) #12, !dbg !442
  call void @llvm.dbg.declare(metadata ptr %cnts, metadata !435, metadata !DIExpression()), !dbg !443
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !444
  call void @trace_contention_begin(ptr noundef %0, i32 noundef 5) #11, !dbg !445
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !446
  %wait_lock = getelementptr inbounds %struct.qrwlock, ptr %1, i32 0, i32 1, !dbg !446
  call void @queued_spin_lock(ptr noundef %wait_lock) #11, !dbg !446
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !447
  %3 = getelementptr inbounds %struct.qrwlock, ptr %2, i32 0, i32 0, !dbg !449
  %call = call i32 @atomic_read(ptr noundef %3) #11, !dbg !450
  store i32 %call, ptr %cnts, align 4, !dbg !451
  %tobool = icmp ne i32 %call, 0, !dbg !451
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !452

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !453
  %5 = getelementptr inbounds %struct.qrwlock, ptr %4, i32 0, i32 0, !dbg !454
  %call1 = call zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %5, ptr noundef %cnts, i32 noundef 255) #11, !dbg !455
  br i1 %call1, label %if.then, label %if.end, !dbg !456

if.then:                                          ; preds = %land.lhs.true
  br label %unlock, !dbg !457

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %lock.addr, align 8, !dbg !458
  %7 = getelementptr inbounds %struct.qrwlock, ptr %6, i32 0, i32 0, !dbg !459
  call void @atomic_or(i32 noundef 256, ptr noundef %7) #11, !dbg !460
  br label %do.body, !dbg !461

do.body:                                          ; preds = %do.cond6, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__PTR) #12, !dbg !462
  call void @llvm.dbg.declare(metadata ptr %__PTR, metadata !436, metadata !DIExpression()), !dbg !462
  %8 = load ptr, ptr %lock.addr, align 8, !dbg !462
  %9 = getelementptr inbounds %struct.qrwlock, ptr %8, i32 0, i32 0, !dbg !462
  %counter = getelementptr inbounds %struct.atomic_t, ptr %9, i32 0, i32 0, !dbg !462
  store ptr %counter, ptr %__PTR, align 8, !dbg !462
  call void @llvm.lifetime.start.p0(i64 4, ptr %VAL) #12, !dbg !462
  call void @llvm.dbg.declare(metadata ptr %VAL, metadata !439, metadata !DIExpression()), !dbg !462
  br label %for.cond, !dbg !462

for.cond:                                         ; preds = %if.end4, %do.body
  br label %do.body2, !dbg !463

do.body2:                                         ; preds = %for.cond
  br label %do.cond, !dbg !468

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !468

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %__PTR, align 8, !dbg !463
  %11 = load volatile i32, ptr %10, align 4, !dbg !463
  store i32 %11, ptr %tmp, align 4, !dbg !468
  %12 = load i32, ptr %tmp, align 4, !dbg !463
  store i32 %12, ptr %VAL, align 4, !dbg !470
  %13 = load i32, ptr %VAL, align 4, !dbg !471
  %cmp = icmp eq i32 %13, 256, !dbg !471
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !470

if.then3:                                         ; preds = %do.end
  br label %for.end, !dbg !471

if.end4:                                          ; preds = %do.end
  call void @cpu_relax() #11, !dbg !470
  br label %for.cond, !dbg !473, !llvm.loop !474

for.end:                                          ; preds = %if.then3
  %14 = load i32, ptr %VAL, align 4, !dbg !462
  store i32 %14, ptr %tmp5, align 4, !dbg !475
  call void @llvm.lifetime.end.p0(i64 4, ptr %VAL) #12, !dbg !476
  call void @llvm.lifetime.end.p0(i64 8, ptr %__PTR) #12, !dbg !476
  %15 = load i32, ptr %tmp5, align 4, !dbg !462
  store i32 %15, ptr %cnts, align 4, !dbg !477
  br label %do.cond6, !dbg !478

do.cond6:                                         ; preds = %for.end
  %16 = load ptr, ptr %lock.addr, align 8, !dbg !479
  %17 = getelementptr inbounds %struct.qrwlock, ptr %16, i32 0, i32 0, !dbg !480
  %call7 = call zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %17, ptr noundef %cnts, i32 noundef 255) #11, !dbg !481
  %lnot = xor i1 %call7, true, !dbg !482
  br i1 %lnot, label %do.body, label %do.end8, !dbg !478, !llvm.loop !483

do.end8:                                          ; preds = %do.cond6
  br label %unlock, !dbg !478

unlock:                                           ; preds = %do.end8, %if.then
  call void @llvm.dbg.label(metadata !440), !dbg !486
  %18 = load ptr, ptr %lock.addr, align 8, !dbg !487
  %wait_lock9 = getelementptr inbounds %struct.qrwlock, ptr %18, i32 0, i32 1, !dbg !487
  call void @queued_spin_unlock(ptr noundef %wait_lock9) #11, !dbg !487
  %19 = load ptr, ptr %lock.addr, align 8, !dbg !488
  call void @trace_contention_end(ptr noundef %19, i32 noundef 0) #11, !dbg !489
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnts) #12, !dbg !490
  ret void, !dbg !490
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #2 align 16 !dbg !491 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !497, metadata !DIExpression()), !dbg !498
  %0 = load ptr, ptr %v.addr, align 8, !dbg !499
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #11, !dbg !500
  %1 = load ptr, ptr %v.addr, align 8, !dbg !501
  %call = call i32 @raw_atomic_read(ptr noundef %1) #11, !dbg !502
  ret i32 %call, !dbg !503
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %v, ptr noundef %old, i32 noundef %new) #2 align 16 !dbg !504 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !510, metadata !DIExpression()), !dbg !513
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !511, metadata !DIExpression()), !dbg !514
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !512, metadata !DIExpression()), !dbg !515
  %0 = load ptr, ptr %v.addr, align 8, !dbg !516
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !517
  %1 = load ptr, ptr %old.addr, align 8, !dbg !518
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #11, !dbg !519
  %2 = load ptr, ptr %v.addr, align 8, !dbg !520
  %3 = load ptr, ptr %old.addr, align 8, !dbg !521
  %4 = load i32, ptr %new.addr, align 4, !dbg !522
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_acquire(ptr noundef %2, ptr noundef %3, i32 noundef %4) #11, !dbg !523
  ret i1 %call, !dbg !524
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_or(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !525 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !527, metadata !DIExpression()), !dbg !529
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !528, metadata !DIExpression()), !dbg !530
  %0 = load ptr, ptr %v.addr, align 8, !dbg !531
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !532
  %1 = load i32, ptr %i.addr, align 4, !dbg !533
  %2 = load ptr, ptr %v.addr, align 8, !dbg !534
  call void @raw_atomic_or(i32 noundef %1, ptr noundef %2) #11, !dbg !535
  ret void, !dbg !536
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #2 align 16 !dbg !537 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !538, !srcloc !539
  ret void, !dbg !540
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !541 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !553, metadata !DIExpression()), !dbg !555
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !554, metadata !DIExpression()), !dbg !556
  %0 = load ptr, ptr %v.addr, align 8, !dbg !557
  %1 = load i64, ptr %size.addr, align 8, !dbg !558
  %conv = trunc i64 %1 to i32, !dbg !558
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !559
  %2 = load ptr, ptr %v.addr, align 8, !dbg !560
  %3 = load i64, ptr %size.addr, align 8, !dbg !560
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #11, !dbg !560
  ret void, !dbg !561
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_sub(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !562 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !565, metadata !DIExpression()), !dbg !567
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !566, metadata !DIExpression()), !dbg !568
  %0 = load i32, ptr %i.addr, align 4, !dbg !569
  %1 = load ptr, ptr %v.addr, align 8, !dbg !570
  call void @arch_atomic_sub(i32 noundef %0, ptr noundef %1) #11, !dbg !571
  ret void, !dbg !572
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !573 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !578, metadata !DIExpression()), !dbg !580
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !579, metadata !DIExpression()), !dbg !581
  ret i1 true, !dbg !582
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !583 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !588, metadata !DIExpression()), !dbg !591
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !589, metadata !DIExpression()), !dbg !592
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !590, metadata !DIExpression()), !dbg !593
  ret void, !dbg !594
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_sub(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !595 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !598, metadata !DIExpression()), !dbg !600
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !599, metadata !DIExpression()), !dbg !601
  %0 = load ptr, ptr %v.addr, align 8, !dbg !602
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !603
  %1 = load i32, ptr %i.addr, align 4, !dbg !604
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; subl $1,$0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #12, !dbg !605, !srcloc !606
  ret void, !dbg !607
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #2 align 16 !dbg !608 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !634, metadata !DIExpression()), !dbg !635
  %0 = load ptr, ptr %key.addr, align 8, !dbg !636
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #11, !dbg !637
  ret i1 %call, !dbg !638
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #5 align 16 !dbg !639 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !643, metadata !DIExpression()), !dbg !644
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !645
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #11, !dbg !646
  ret i1 %call, !dbg !647
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #2 align 16 !dbg !648 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !652, metadata !DIExpression()), !dbg !660
  br label %do.body, !dbg !661

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #12, !dbg !662
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !653, metadata !DIExpression()), !dbg !662
  %0 = load i32, ptr %val.addr, align 4, !dbg !662
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !662
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !662

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !662
  %cmp = icmp eq i32 %2, 1, !dbg !662
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !662

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !662
  %cmp1 = icmp eq i32 %3, -1, !dbg !662
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !662

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !662
  br label %cond.end, !dbg !662

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !662

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !662
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !662
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !663
  %cmp2 = icmp eq i32 %5, 1, !dbg !663
  br i1 %cmp2, label %if.then, label %if.else, !dbg !662

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !664, !srcloc !666
  br label %if.end8, !dbg !663

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !667
  %cmp3 = icmp eq i32 %6, -1, !dbg !667
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !663

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !668, !srcloc !670
  br label %if.end, !dbg !667

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !667

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #12, !dbg !671
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !656, metadata !DIExpression()), !dbg !671
  %7 = load i32, ptr %val.addr, align 4, !dbg !671
  %conv = sext i32 %7 to i64, !dbg !671
  %and = and i64 %conv, 4294967295, !dbg !671
  %conv7 = trunc i64 %and to i32, !dbg !671
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !671
  %8 = load i32, ptr %pto_val__, align 4, !dbg !671
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !671, !srcloc !672
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #12, !dbg !667
  br label %do.cond, !dbg !671

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !671

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #12, !dbg !661
  br label %do.end10, !dbg !662

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !673
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_contention_begin(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #2 align 16 !dbg !674 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !680
  call void @llvm.dbg.declare(metadata ptr %c, metadata !678, metadata !DIExpression()), !dbg !680
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !680, !srcloc !681
  %1 = icmp ult i8 %0, 2, !dbg !680
  call void @llvm.assume(i1 %1), !dbg !680
  store i8 %0, ptr %c, align 1, !dbg !680
  %2 = load i8, ptr %c, align 1, !dbg !680, !range !682, !noundef !683
  %tobool = trunc i8 %2 to i1, !dbg !680
  %frombool = zext i1 %tobool to i8, !dbg !680
  store i8 %frombool, ptr %tmp, align 1, !dbg !680
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !684
  %3 = load i8, ptr %tmp, align 1, !dbg !680, !range !682, !noundef !683
  %tobool1 = trunc i8 %3 to i1, !dbg !680
  ret i1 %tobool1, !dbg !685
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #2 align 16 !dbg !686 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !691, metadata !DIExpression()), !dbg !694
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !692, metadata !DIExpression()), !dbg !695
  %0 = load ptr, ptr %key.addr, align 8, !dbg !696
  %1 = load i8, ptr %branch.addr, align 1, !dbg !697, !range !682, !noundef !683
  %tobool = trunc i8 %1 to i1, !dbg !697
  %conv = zext i1 %tobool to i32, !dbg !697
  %or = or i32 2, %conv, !dbg !698
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !699, !srcloc !700

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !701
  br label %return, !dbg !701

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !693), !dbg !702
  store i1 true, ptr %retval, align 1, !dbg !703
  br label %return, !dbg !703

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !704
  ret i1 %2, !dbg !704
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #2 align 16 !dbg !705 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !709, metadata !DIExpression()), !dbg !711
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !710, metadata !DIExpression()), !dbg !712
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !713
  %call = call i32 @cpumask_check(i32 noundef %0) #11, !dbg !713
  %conv = zext i32 %call to i64, !dbg !713
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !713
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !713
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !713
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #11, !dbg !713
  ret i1 %call1, !dbg !714
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !715 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !723, metadata !DIExpression()), !dbg !725
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !724, metadata !DIExpression()), !dbg !726
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !727
  %1 = load i64, ptr %nr.addr, align 8, !dbg !728
  %div = udiv i64 %1, 64, !dbg !728
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !729
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !730
  %2 = load i64, ptr %nr.addr, align 8, !dbg !731
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !732
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !733
  ret i1 %call, !dbg !734
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #2 align 16 !dbg !735 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !739, metadata !DIExpression()), !dbg !740
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !741
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #11, !dbg !742
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !743
  ret i32 %1, !dbg !744
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !745 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !747, metadata !DIExpression()), !dbg !749
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !748, metadata !DIExpression()), !dbg !750
  %0 = load ptr, ptr %v.addr, align 8, !dbg !751
  %1 = load i64, ptr %size.addr, align 8, !dbg !752
  %conv = trunc i64 %1 to i32, !dbg !752
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !753
  %2 = load ptr, ptr %v.addr, align 8, !dbg !754
  %3 = load i64, ptr %size.addr, align 8, !dbg !754
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !754
  ret void, !dbg !755
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !756 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !759, metadata !DIExpression()), !dbg !761
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !760, metadata !DIExpression()), !dbg !762
  %0 = load i64, ptr %nr.addr, align 8, !dbg !763
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !764
  br i1 %1, label %cond.true, label %cond.false, !dbg !764

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !765
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !766
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !767
  %conv = zext i1 %call to i32, !dbg !767
  br label %cond.end, !dbg !764

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !768
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !769
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !770
  %conv2 = zext i1 %call1 to i32, !dbg !770
  br label %cond.end, !dbg !764

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !764
  %tobool = icmp ne i32 %cond, 0, !dbg !764
  ret i1 %tobool, !dbg !771
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !772 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !774, metadata !DIExpression()), !dbg !776
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !775, metadata !DIExpression()), !dbg !777
  ret i1 true, !dbg !778
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !779 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !783, metadata !DIExpression()), !dbg !785
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !784, metadata !DIExpression()), !dbg !786
  %0 = load i64, ptr %nr.addr, align 8, !dbg !787
  %and = and i64 %0, 63, !dbg !788
  %shl = shl i64 1, %and, !dbg !789
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !790
  %2 = load i64, ptr %nr.addr, align 8, !dbg !791
  %shr = ashr i64 %2, 6, !dbg !792
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !790
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !790
  %and1 = and i64 %shl, %3, !dbg !793
  %cmp = icmp ne i64 %and1, 0, !dbg !794
  ret i1 %cmp, !dbg !795
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !796 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !798, metadata !DIExpression()), !dbg !801
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !799, metadata !DIExpression()), !dbg !802
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !803
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !800, metadata !DIExpression()), !dbg !804
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !805
  %1 = load i64, ptr %nr.addr, align 8, !dbg !806
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !807, !srcloc !808
  %3 = icmp ult i8 %2, 2, !dbg !807
  call void @llvm.assume(i1 %3), !dbg !807
  store i8 %2, ptr %oldbit, align 1, !dbg !807
  %4 = load i8, ptr %oldbit, align 1, !dbg !809, !range !682, !noundef !683
  %tobool = trunc i8 %4 to i1, !dbg !809
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !810
  ret i1 %tobool, !dbg !811
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #2 align 16 !dbg !812 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !816, metadata !DIExpression()), !dbg !818
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !817, metadata !DIExpression()), !dbg !819
  ret void, !dbg !820
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !821 dso_local void @queued_spin_lock_slowpath(ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_add(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !824 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !826, metadata !DIExpression()), !dbg !828
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !827, metadata !DIExpression()), !dbg !829
  %0 = load i32, ptr %i.addr, align 4, !dbg !830
  %1 = load ptr, ptr %v.addr, align 8, !dbg !831
  call void @arch_atomic_add(i32 noundef %0, ptr noundef %1) #11, !dbg !832
  ret void, !dbg !833
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_add(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !834 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !836, metadata !DIExpression()), !dbg !838
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !837, metadata !DIExpression()), !dbg !839
  %0 = load ptr, ptr %v.addr, align 8, !dbg !840
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !841
  %1 = load i32, ptr %i.addr, align 4, !dbg !842
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; addl $1,$0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #12, !dbg !843, !srcloc !844
  ret void, !dbg !845
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_contention_end(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #2 align 16 !dbg !846 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !848, metadata !DIExpression()), !dbg !849
  %0 = load ptr, ptr %v.addr, align 8, !dbg !850
  %call = call i32 @arch_atomic_read(ptr noundef %0) #11, !dbg !851
  ret i32 %call, !dbg !852
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #2 align 16 !dbg !853 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !855, metadata !DIExpression()), !dbg !856
  %0 = load ptr, ptr %v.addr, align 8, !dbg !857
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !857
  %1 = load volatile i32, ptr %counter, align 4, !dbg !857
  ret i32 %1, !dbg !858
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_acquire(ptr noundef %v, ptr noundef %old, i32 noundef %new) #2 align 16 !dbg !859 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !861, metadata !DIExpression()), !dbg !864
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !862, metadata !DIExpression()), !dbg !865
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !863, metadata !DIExpression()), !dbg !866
  %0 = load ptr, ptr %v.addr, align 8, !dbg !867
  %1 = load ptr, ptr %old.addr, align 8, !dbg !868
  %2 = load i32, ptr %new.addr, align 4, !dbg !869
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11, !dbg !870
  ret i1 %call, !dbg !871
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #2 align 16 !dbg !872 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !874, metadata !DIExpression()), !dbg !883
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !875, metadata !DIExpression()), !dbg !884
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !876, metadata !DIExpression()), !dbg !885
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #12, !dbg !886
  call void @llvm.dbg.declare(metadata ptr %success, metadata !877, metadata !DIExpression()), !dbg !886
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #12, !dbg !886
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !879, metadata !DIExpression()), !dbg !886
  %0 = load ptr, ptr %old.addr, align 8, !dbg !886
  store ptr %0, ptr %_old, align 8, !dbg !886
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #12, !dbg !886
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !880, metadata !DIExpression()), !dbg !886
  %1 = load ptr, ptr %_old, align 8, !dbg !886
  %2 = load i32, ptr %1, align 4, !dbg !886
  store i32 %2, ptr %__old, align 4, !dbg !886
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #12, !dbg !886
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !881, metadata !DIExpression()), !dbg !886
  %3 = load i32, ptr %new.addr, align 4, !dbg !886
  store i32 %3, ptr %__new, align 4, !dbg !886
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !886
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !882, metadata !DIExpression()), !dbg !886
  %4 = load ptr, ptr %v.addr, align 8, !dbg !886
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !886
  store ptr %counter, ptr %__ptr, align 8, !dbg !886
  %5 = load ptr, ptr %__ptr, align 8, !dbg !886
  %6 = load i32, ptr %__old, align 4, !dbg !886
  %7 = load i32, ptr %__new, align 4, !dbg !886
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #12, !dbg !886, !srcloc !887
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !886
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !886
  %9 = icmp ult i8 %asmresult, 2, !dbg !886
  call void @llvm.assume(i1 %9), !dbg !886
  store i8 %asmresult, ptr %success, align 1, !dbg !886
  store i32 %asmresult1, ptr %__old, align 4, !dbg !886
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !886
  %10 = load i8, ptr %success, align 1, !dbg !888, !range !682, !noundef !683
  %tobool = trunc i8 %10 to i1, !dbg !888
  %lnot = xor i1 %tobool, true, !dbg !888
  %lnot2 = xor i1 %lnot, true, !dbg !888
  %lnot3 = xor i1 %lnot2, true, !dbg !888
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !888
  %conv = sext i32 %lnot.ext to i64, !dbg !888
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !888
  %tobool4 = icmp ne i64 %expval, 0, !dbg !888
  br i1 %tobool4, label %if.then, label %if.end, !dbg !886

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !888
  %12 = load ptr, ptr %_old, align 8, !dbg !888
  store i32 %11, ptr %12, align 4, !dbg !888
  br label %if.end, !dbg !888

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !886, !range !682, !noundef !683
  %tobool5 = trunc i8 %13 to i1, !dbg !886
  %lnot6 = xor i1 %tobool5, true, !dbg !886
  %lnot8 = xor i1 %lnot6, true, !dbg !886
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !886
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !886
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !886
  store i64 %expval11, ptr %tmp, align 8, !dbg !888
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #12, !dbg !890
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #12, !dbg !890
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #12, !dbg !890
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #12, !dbg !890
  %14 = load i64, ptr %tmp, align 8, !dbg !886
  %tobool12 = icmp ne i64 %14, 0, !dbg !890
  ret i1 %tobool12, !dbg !891
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_or(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !892 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !894, metadata !DIExpression()), !dbg !896
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !895, metadata !DIExpression()), !dbg !897
  %0 = load i32, ptr %i.addr, align 4, !dbg !898
  %1 = load ptr, ptr %v.addr, align 8, !dbg !899
  call void @arch_atomic_or(i32 noundef %0, ptr noundef %1) #11, !dbg !900
  ret void, !dbg !901
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_or(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !902 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !904, metadata !DIExpression()), !dbg !906
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !905, metadata !DIExpression()), !dbg !907
  %0 = load ptr, ptr %v.addr, align 8, !dbg !908
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !909
  %1 = load i32, ptr %i.addr, align 4, !dbg !910
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orl $1,$0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #12, !dbg !911, !srcloc !912
  ret void, !dbg !913
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noredzone }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_queued_read_lock_slowpath221", scope: !2, file: !3, line: 60, type: !16, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/locking/.qrwlock.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/locking/qrwlock\22 -D KBUILD_BASENAME=\22qrwlock\22 -D KBUILD_MODNAME=\22qrwlock\22 -D __KBUILD_MODNAME=kmod_qrwlock -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/locking/qrwlock.ll kernel/locking/qrwlock.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !50, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/locking/qrwlock.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df6a5d3f5a907ed9727e8aca775bd7c1")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !15, !16, !17, !18, !19, !22, !29, !38, !7, !39, !43, !48}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !24, line: 26, size: 192, elements: !25)
!24 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!25 = !{!26, !27, !28}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !23, file: !24, line: 27, baseType: !16, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !23, file: !24, line: 28, baseType: !16, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !23, file: !24, line: 29, baseType: !15, size: 32, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !32, line: 19, size: 64, elements: !33)
!32 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!33 = !{!34}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !31, file: !32, line: 19, baseType: !35, size: 64)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 64, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 1)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !40, line: 21, baseType: !41)
!40 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !42, line: 27, baseType: !7)
!42 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !40, line: 17, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !42, line: 21, baseType: !47)
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!50 = !{!0, !51, !53, !60, !91, !93, !122}
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_queued_write_lock_slowpath223", scope: !2, file: !3, line: 92, type: !16, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !55, line: 95, type: !56, isLocal: true, isDefinition: true)
!55 = !DIFile(filename: "./include/trace/events/lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb4e6643de3c3749267f6f3b5a53bfe0")
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 224, elements: !58)
!57 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!58 = !{!59}
!59 = !DISubrange(count: 28)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_contention_begin205", scope: !62, file: !55, line: 95, type: !16, isLocal: true, isDefinition: true)
!62 = distinct !DISubprogram(name: "trace_contention_begin", scope: !55, file: !55, line: 95, type: !63, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !65)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !16, !7}
!65 = !{!66, !67, !68, !71, !74, !78, !80, !83, !86, !88, !89}
!66 = !DILocalVariable(name: "lock", arg: 1, scope: !62, file: !55, line: 95, type: !16)
!67 = !DILocalVariable(name: "flags", arg: 2, scope: !62, file: !55, line: 95, type: !7)
!68 = !DILocalVariable(name: "__idx", scope: !69, file: !55, line: 95, type: !15)
!69 = distinct !DILexicalBlock(scope: !70, file: !55, line: 95, column: 1)
!70 = distinct !DILexicalBlock(scope: !62, file: !55, line: 95, column: 1)
!71 = !DILocalVariable(name: "pscr_ret__", scope: !72, file: !55, line: 95, type: !15)
!72 = distinct !DILexicalBlock(scope: !73, file: !55, line: 95, column: 1)
!73 = distinct !DILexicalBlock(scope: !69, file: !55, line: 95, column: 1)
!74 = !DILocalVariable(name: "__vpp_verify", scope: !75, file: !55, line: 95, type: !76)
!75 = distinct !DILexicalBlock(scope: !72, file: !55, line: 95, column: 1)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!78 = !DILocalVariable(name: "pfo_val__", scope: !79, file: !55, line: 95, type: !39)
!79 = distinct !DILexicalBlock(scope: !72, file: !55, line: 95, column: 1)
!80 = !DILocalVariable(name: "__ret_warn_on", scope: !81, file: !55, line: 95, type: !15)
!81 = distinct !DILexicalBlock(scope: !82, file: !55, line: 95, column: 1)
!82 = distinct !DILexicalBlock(scope: !69, file: !55, line: 95, column: 1)
!83 = !DILocalVariable(name: "__flags", scope: !84, file: !55, line: 95, type: !15)
!84 = distinct !DILexicalBlock(scope: !85, file: !55, line: 95, column: 1)
!85 = distinct !DILexicalBlock(scope: !81, file: !55, line: 95, column: 1)
!86 = !DILocalVariable(name: "it_func_ptr", scope: !87, file: !55, line: 95, type: !22)
!87 = distinct !DILexicalBlock(scope: !69, file: !55, line: 95, column: 1)
!88 = !DILocalVariable(name: "__data", scope: !87, file: !55, line: 95, type: !16)
!89 = !DILocalVariable(name: "__UNIQUE_ID_rcu203", scope: !90, file: !55, line: 95, type: !22)
!90 = distinct !DILexicalBlock(scope: !87, file: !55, line: 95, column: 1)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace206", scope: !62, file: !55, line: 95, type: !16, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_contention_end213", scope: !95, file: !55, line: 122, type: !16, isLocal: true, isDefinition: true)
!95 = distinct !DISubprogram(name: "trace_contention_end", scope: !55, file: !55, line: 122, type: !96, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !98)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !16, !15}
!98 = !{!99, !100, !101, !104, !107, !109, !111, !114, !117, !119, !120}
!99 = !DILocalVariable(name: "lock", arg: 1, scope: !95, file: !55, line: 122, type: !16)
!100 = !DILocalVariable(name: "ret", arg: 2, scope: !95, file: !55, line: 122, type: !15)
!101 = !DILocalVariable(name: "__idx", scope: !102, file: !55, line: 122, type: !15)
!102 = distinct !DILexicalBlock(scope: !103, file: !55, line: 122, column: 1)
!103 = distinct !DILexicalBlock(scope: !95, file: !55, line: 122, column: 1)
!104 = !DILocalVariable(name: "pscr_ret__", scope: !105, file: !55, line: 122, type: !15)
!105 = distinct !DILexicalBlock(scope: !106, file: !55, line: 122, column: 1)
!106 = distinct !DILexicalBlock(scope: !102, file: !55, line: 122, column: 1)
!107 = !DILocalVariable(name: "__vpp_verify", scope: !108, file: !55, line: 122, type: !76)
!108 = distinct !DILexicalBlock(scope: !105, file: !55, line: 122, column: 1)
!109 = !DILocalVariable(name: "pfo_val__", scope: !110, file: !55, line: 122, type: !39)
!110 = distinct !DILexicalBlock(scope: !105, file: !55, line: 122, column: 1)
!111 = !DILocalVariable(name: "__ret_warn_on", scope: !112, file: !55, line: 122, type: !15)
!112 = distinct !DILexicalBlock(scope: !113, file: !55, line: 122, column: 1)
!113 = distinct !DILexicalBlock(scope: !102, file: !55, line: 122, column: 1)
!114 = !DILocalVariable(name: "__flags", scope: !115, file: !55, line: 122, type: !15)
!115 = distinct !DILexicalBlock(scope: !116, file: !55, line: 122, column: 1)
!116 = distinct !DILexicalBlock(scope: !112, file: !55, line: 122, column: 1)
!117 = !DILocalVariable(name: "it_func_ptr", scope: !118, file: !55, line: 122, type: !22)
!118 = distinct !DILexicalBlock(scope: !102, file: !55, line: 122, column: 1)
!119 = !DILocalVariable(name: "__data", scope: !118, file: !55, line: 122, type: !16)
!120 = !DILocalVariable(name: "__UNIQUE_ID_rcu211", scope: !121, file: !55, line: 122, type: !22)
!121 = distinct !DILexicalBlock(scope: !118, file: !55, line: 122, column: 1)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace214", scope: !95, file: !55, line: 122, type: !16, isLocal: true, isDefinition: true)
!124 = !{!"rsp"}
!125 = !{i32 7, !"Dwarf Version", i32 5}
!126 = !{i32 2, !"Debug Info Version", i32 3}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 8, !"cf-protection-branch", i32 1}
!129 = !{i32 4, !"function_return_thunk_extern", i32 1}
!130 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!131 = !{i32 1, !"Code Model", i32 2}
!132 = !{i32 1, !"override-stack-alignment", i32 8}
!133 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!134 = distinct !DISubprogram(name: "queued_read_lock_slowpath", scope: !3, file: !3, line: 21, type: !135, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !180)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !137}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !139, line: 13, size: 64, elements: !140)
!139 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!140 = !{!141, !158}
!141 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !139, line: 14, baseType: !142, size: 32)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !139, line: 14, size: 32, elements: !143)
!143 = !{!144, !150}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !142, file: !139, line: 15, baseType: !145, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !146, line: 174, baseType: !147)
!146 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 172, size: 32, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !147, file: !146, line: 173, baseType: !15, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, scope: !142, file: !139, line: 16, baseType: !151, size: 32)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !142, file: !139, line: 16, size: 32, elements: !152)
!152 = !{!153, !154}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !151, file: !139, line: 18, baseType: !45, size: 8)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !151, file: !139, line: 19, baseType: !155, size: 24, offset: 8)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 24, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 3)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !138, file: !139, line: 26, baseType: !159, size: 32, offset: 32)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !160, line: 44, baseType: !161)
!160 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !160, line: 14, size: 32, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, scope: !161, file: !160, line: 15, baseType: !164, size: 32)
!164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !161, file: !160, line: 15, size: 32, elements: !165)
!165 = !{!166, !167, !172}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !164, file: !160, line: 16, baseType: !145, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !160, line: 24, baseType: !168, size: 16)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !164, file: !160, line: 24, size: 16, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !168, file: !160, line: 25, baseType: !45, size: 8)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !168, file: !160, line: 26, baseType: !45, size: 8, offset: 8)
!172 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !160, line: 28, baseType: !173, size: 32)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !164, file: !160, line: 28, size: 32, elements: !174)
!174 = !{!175, !179}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !173, file: !160, line: 29, baseType: !176, size: 16)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !40, line: 19, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !42, line: 24, baseType: !178)
!178 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !173, file: !160, line: 30, baseType: !176, size: 16, offset: 16)
!180 = !{!181, !182, !186, !188, !189, !191, !193}
!181 = !DILocalVariable(name: "lock", arg: 1, scope: !134, file: !3, line: 21, type: !137)
!182 = !DILocalVariable(name: "_val", scope: !183, file: !3, line: 33, type: !15)
!183 = distinct !DILexicalBlock(scope: !184, file: !3, line: 33, column: 3)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 26, column: 32)
!185 = distinct !DILexicalBlock(scope: !134, file: !3, line: 26, column: 6)
!186 = !DILocalVariable(name: "__PTR", scope: !187, file: !3, line: 33, type: !18)
!187 = distinct !DILexicalBlock(scope: !183, file: !3, line: 33, column: 3)
!188 = !DILocalVariable(name: "VAL", scope: !187, file: !3, line: 33, type: !15)
!189 = !DILocalVariable(name: "_val", scope: !190, file: !3, line: 51, type: !15)
!190 = distinct !DILexicalBlock(scope: !134, file: !3, line: 51, column: 2)
!191 = !DILocalVariable(name: "__PTR", scope: !192, file: !3, line: 51, type: !18)
!192 = distinct !DILexicalBlock(scope: !190, file: !3, line: 51, column: 2)
!193 = !DILocalVariable(name: "VAL", scope: !192, file: !3, line: 51, type: !15)
!194 = !DILocation(line: 21, column: 59, scope: !134)
!195 = !DILocation(line: 26, column: 6, scope: !185)
!196 = !DILocation(line: 26, column: 6, scope: !134)
!197 = !DILocation(line: 33, column: 3, scope: !183)
!198 = !DILocation(line: 33, column: 3, scope: !187)
!199 = !DILocation(line: 33, column: 3, scope: !200)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 33, column: 3)
!201 = distinct !DILexicalBlock(scope: !202, file: !3, line: 33, column: 3)
!202 = distinct !DILexicalBlock(scope: !203, file: !3, line: 33, column: 3)
!203 = distinct !DILexicalBlock(scope: !187, file: !3, line: 33, column: 3)
!204 = !DILocation(line: 33, column: 3, scope: !205)
!205 = distinct !DILexicalBlock(scope: !200, file: !3, line: 33, column: 3)
!206 = !DILocation(line: 33, column: 3, scope: !201)
!207 = !DILocation(line: 33, column: 3, scope: !208)
!208 = distinct !DILexicalBlock(scope: !201, file: !3, line: 33, column: 3)
!209 = !DILocation(line: 33, column: 3, scope: !202)
!210 = distinct !{!210, !211, !211, !212}
!211 = !DILocation(line: 33, column: 3, scope: !203)
!212 = !{!"llvm.loop.unroll.disable"}
!213 = !DILocation(line: 33, column: 3, scope: !214)
!214 = distinct !DILexicalBlock(scope: !183, file: !3, line: 33, column: 3)
!215 = !DILocation(line: 33, column: 3, scope: !216)
!216 = distinct !DILexicalBlock(scope: !214, file: !3, line: 33, column: 3)
!217 = !DILocation(line: 33, column: 3, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !3, line: 33, column: 3)
!219 = !DILocation(line: 33, column: 3, scope: !220)
!220 = distinct !DILexicalBlock(scope: !218, file: !3, line: 33, column: 3)
!221 = !{i64 2152755228}
!222 = !DILocation(line: 33, column: 3, scope: !184)
!223 = !DILocation(line: 34, column: 3, scope: !184)
!224 = !DILocation(line: 36, column: 24, scope: !134)
!225 = !DILocation(line: 36, column: 30, scope: !134)
!226 = !DILocation(line: 36, column: 2, scope: !134)
!227 = !DILocation(line: 38, column: 25, scope: !134)
!228 = !DILocation(line: 38, column: 2, scope: !134)
!229 = !DILocation(line: 43, column: 2, scope: !134)
!230 = !DILocation(line: 44, column: 24, scope: !134)
!231 = !DILocation(line: 44, column: 30, scope: !134)
!232 = !DILocation(line: 44, column: 2, scope: !134)
!233 = !DILocation(line: 51, column: 2, scope: !190)
!234 = !DILocation(line: 51, column: 2, scope: !192)
!235 = !DILocation(line: 51, column: 2, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !3, line: 51, column: 2)
!237 = distinct !DILexicalBlock(scope: !238, file: !3, line: 51, column: 2)
!238 = distinct !DILexicalBlock(scope: !239, file: !3, line: 51, column: 2)
!239 = distinct !DILexicalBlock(scope: !192, file: !3, line: 51, column: 2)
!240 = !DILocation(line: 51, column: 2, scope: !241)
!241 = distinct !DILexicalBlock(scope: !236, file: !3, line: 51, column: 2)
!242 = !DILocation(line: 51, column: 2, scope: !237)
!243 = !DILocation(line: 51, column: 2, scope: !244)
!244 = distinct !DILexicalBlock(scope: !237, file: !3, line: 51, column: 2)
!245 = !DILocation(line: 51, column: 2, scope: !238)
!246 = distinct !{!246, !247, !247, !212}
!247 = !DILocation(line: 51, column: 2, scope: !239)
!248 = !DILocation(line: 51, column: 2, scope: !249)
!249 = distinct !DILexicalBlock(scope: !190, file: !3, line: 51, column: 2)
!250 = !DILocation(line: 51, column: 2, scope: !251)
!251 = distinct !DILexicalBlock(scope: !249, file: !3, line: 51, column: 2)
!252 = !DILocation(line: 51, column: 2, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !3, line: 51, column: 2)
!254 = !DILocation(line: 51, column: 2, scope: !255)
!255 = distinct !DILexicalBlock(scope: !253, file: !3, line: 51, column: 2)
!256 = !{i64 2152760470}
!257 = !DILocation(line: 51, column: 2, scope: !134)
!258 = !DILocation(line: 56, column: 2, scope: !134)
!259 = !DILocation(line: 58, column: 23, scope: !134)
!260 = !DILocation(line: 58, column: 2, scope: !134)
!261 = !DILocation(line: 59, column: 1, scope: !134)
!262 = distinct !DISubprogram(name: "preempt_count", scope: !263, file: !263, line: 25, type: !264, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !266)
!263 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!264 = !DISubroutineType(types: !265)
!265 = !{!15}
!266 = !{!267}
!267 = !DILocalVariable(name: "pfo_val__", scope: !268, file: !263, line: 27, type: !39)
!268 = distinct !DILexicalBlock(scope: !262, file: !263, line: 27, column: 9)
!269 = !DILocation(line: 27, column: 9, scope: !268)
!270 = !{i64 2149454329}
!271 = !DILocation(line: 27, column: 9, scope: !262)
!272 = !DILocation(line: 27, column: 48, scope: !262)
!273 = !DILocation(line: 27, column: 2, scope: !262)
!274 = distinct !DISubprogram(name: "cpu_relax", scope: !275, file: !275, line: 16, type: !276, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!275 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!276 = !DISubroutineType(types: !277)
!277 = !{null}
!278 = !DILocation(line: 18, column: 2, scope: !274)
!279 = !DILocation(line: 19, column: 1, scope: !274)
!280 = distinct !DISubprogram(name: "atomic_sub", scope: !281, file: !281, line: 268, type: !282, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !285)
!281 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!282 = !DISubroutineType(types: !283)
!283 = !{null, !15, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!285 = !{!286, !287}
!286 = !DILocalVariable(name: "i", arg: 1, scope: !280, file: !281, line: 268, type: !15)
!287 = !DILocalVariable(name: "v", arg: 2, scope: !280, file: !281, line: 268, type: !284)
!288 = !DILocation(line: 268, column: 16, scope: !280)
!289 = !DILocation(line: 268, column: 29, scope: !280)
!290 = !DILocation(line: 270, column: 31, scope: !280)
!291 = !DILocation(line: 270, column: 2, scope: !280)
!292 = !DILocation(line: 271, column: 17, scope: !280)
!293 = !DILocation(line: 271, column: 20, scope: !280)
!294 = !DILocation(line: 271, column: 2, scope: !280)
!295 = !DILocation(line: 272, column: 1, scope: !280)
!296 = !DILocation(line: 95, column: 1, scope: !62)
!297 = !DILocation(line: 95, column: 1, scope: !70)
!298 = !DILocation(line: 95, column: 1, scope: !69)
!299 = !DILocation(line: 95, column: 1, scope: !72)
!300 = !DILocation(line: 95, column: 1, scope: !75)
!301 = !DILocation(line: 95, column: 1, scope: !79)
!302 = !{i64 2152664735}
!303 = !DILocation(line: 95, column: 1, scope: !73)
!304 = !DILocation(line: 95, column: 1, scope: !81)
!305 = !DILocation(line: 95, column: 1, scope: !85)
!306 = !DILocation(line: 95, column: 1, scope: !84)
!307 = !DILocation(line: 95, column: 1, scope: !308)
!308 = distinct !DILexicalBlock(scope: !84, file: !55, line: 95, column: 1)
!309 = !DILocation(line: 95, column: 1, scope: !310)
!310 = distinct !DILexicalBlock(scope: !84, file: !55, line: 95, column: 1)
!311 = !{i64 2152665937, i64 2152665966, i64 2152666012, i64 2152666070, i64 2152666124, i64 2152666178, i64 2152666233, i64 2152666264, i64 2152666572, i64 2152666578, i64 2152666625, i64 2152666648, i64 2152666674}
!312 = !DILocation(line: 95, column: 1, scope: !313)
!313 = distinct !DILexicalBlock(scope: !84, file: !55, line: 95, column: 1)
!314 = !DILocation(line: 95, column: 1, scope: !82)
!315 = !DILocation(line: 95, column: 1, scope: !316)
!316 = distinct !DILexicalBlock(scope: !69, file: !55, line: 95, column: 1)
!317 = !{i64 2152667026}
!318 = !DILocation(line: 95, column: 1, scope: !87)
!319 = !DILocation(line: 95, column: 1, scope: !90)
!320 = !DILocation(line: 95, column: 1, scope: !321)
!321 = distinct !DILexicalBlock(scope: !90, file: !55, line: 95, column: 1)
!322 = !DILocation(line: 95, column: 1, scope: !323)
!323 = distinct !DILexicalBlock(scope: !321, file: !55, line: 95, column: 1)
!324 = !DILocation(line: 95, column: 1, scope: !325)
!325 = distinct !DILexicalBlock(scope: !87, file: !55, line: 95, column: 1)
!326 = !DILocation(line: 95, column: 1, scope: !327)
!327 = distinct !DILexicalBlock(scope: !325, file: !55, line: 95, column: 1)
!328 = !DILocation(line: 95, column: 1, scope: !329)
!329 = distinct !DILexicalBlock(scope: !327, file: !55, line: 95, column: 1)
!330 = !DILocation(line: 95, column: 1, scope: !331)
!331 = distinct !DILexicalBlock(scope: !69, file: !55, line: 95, column: 1)
!332 = !{i64 2152673511}
!333 = !DILocation(line: 95, column: 1, scope: !334)
!334 = distinct !DILexicalBlock(scope: !331, file: !55, line: 95, column: 1)
!335 = !DILocation(line: 95, column: 1, scope: !336)
!336 = distinct !DILexicalBlock(scope: !334, file: !55, line: 95, column: 1)
!337 = !{i64 2152673670}
!338 = distinct !DISubprogram(name: "queued_spin_lock", scope: !339, file: !339, line: 107, type: !340, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !343)
!339 = !DIFile(filename: "./include/asm-generic/qspinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ee2071dbdb30625b016b6622681cc28")
!340 = !DISubroutineType(types: !341)
!341 = !{null, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!343 = !{!344, !345}
!344 = !DILocalVariable(name: "lock", arg: 1, scope: !338, file: !339, line: 107, type: !342)
!345 = !DILocalVariable(name: "val", scope: !338, file: !339, line: 109, type: !15)
!346 = !DILocation(line: 107, column: 64, scope: !338)
!347 = !DILocation(line: 109, column: 2, scope: !338)
!348 = !DILocation(line: 109, column: 6, scope: !338)
!349 = !DILocation(line: 111, column: 6, scope: !350)
!350 = distinct !DILexicalBlock(scope: !338, file: !339, line: 111, column: 6)
!351 = !DILocation(line: 111, column: 6, scope: !338)
!352 = !DILocation(line: 112, column: 3, scope: !350)
!353 = !DILocation(line: 114, column: 28, scope: !338)
!354 = !DILocation(line: 114, column: 34, scope: !338)
!355 = !DILocation(line: 114, column: 2, scope: !338)
!356 = !DILocation(line: 115, column: 1, scope: !338)
!357 = distinct !DISubprogram(name: "atomic_add", scope: !281, file: !281, line: 102, type: !282, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !358)
!358 = !{!359, !360}
!359 = !DILocalVariable(name: "i", arg: 1, scope: !357, file: !281, line: 102, type: !15)
!360 = !DILocalVariable(name: "v", arg: 2, scope: !357, file: !281, line: 102, type: !284)
!361 = !DILocation(line: 102, column: 16, scope: !357)
!362 = !DILocation(line: 102, column: 29, scope: !357)
!363 = !DILocation(line: 104, column: 31, scope: !357)
!364 = !DILocation(line: 104, column: 2, scope: !357)
!365 = !DILocation(line: 105, column: 17, scope: !357)
!366 = !DILocation(line: 105, column: 20, scope: !357)
!367 = !DILocation(line: 105, column: 2, scope: !357)
!368 = !DILocation(line: 106, column: 1, scope: !357)
!369 = distinct !DISubprogram(name: "queued_spin_unlock", scope: !339, file: !339, line: 123, type: !340, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !370)
!370 = !{!371}
!371 = !DILocalVariable(name: "lock", arg: 1, scope: !369, file: !339, line: 123, type: !342)
!372 = !DILocation(line: 123, column: 66, scope: !369)
!373 = !DILocation(line: 128, column: 2, scope: !369)
!374 = !DILocation(line: 128, column: 2, scope: !375)
!375 = distinct !DILexicalBlock(scope: !369, file: !339, line: 128, column: 2)
!376 = !DILocation(line: 128, column: 2, scope: !377)
!377 = distinct !DILexicalBlock(scope: !375, file: !339, line: 128, column: 2)
!378 = !DILocation(line: 128, column: 2, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !339, line: 128, column: 2)
!380 = !DILocation(line: 128, column: 2, scope: !381)
!381 = distinct !DILexicalBlock(scope: !379, file: !339, line: 128, column: 2)
!382 = !{i64 2150005070}
!383 = !DILocation(line: 128, column: 2, scope: !384)
!384 = distinct !DILexicalBlock(scope: !379, file: !339, line: 128, column: 2)
!385 = !DILocation(line: 128, column: 2, scope: !386)
!386 = distinct !DILexicalBlock(scope: !384, file: !339, line: 128, column: 2)
!387 = !DILocation(line: 128, column: 2, scope: !388)
!388 = distinct !DILexicalBlock(scope: !384, file: !339, line: 128, column: 2)
!389 = !DILocation(line: 129, column: 1, scope: !369)
!390 = !DILocation(line: 122, column: 1, scope: !95)
!391 = !DILocation(line: 122, column: 1, scope: !103)
!392 = !DILocation(line: 122, column: 1, scope: !102)
!393 = !DILocation(line: 122, column: 1, scope: !105)
!394 = !DILocation(line: 122, column: 1, scope: !108)
!395 = !DILocation(line: 122, column: 1, scope: !110)
!396 = !{i64 2152714302}
!397 = !DILocation(line: 122, column: 1, scope: !106)
!398 = !DILocation(line: 122, column: 1, scope: !112)
!399 = !DILocation(line: 122, column: 1, scope: !116)
!400 = !DILocation(line: 122, column: 1, scope: !115)
!401 = !DILocation(line: 122, column: 1, scope: !402)
!402 = distinct !DILexicalBlock(scope: !115, file: !55, line: 122, column: 1)
!403 = !DILocation(line: 122, column: 1, scope: !404)
!404 = distinct !DILexicalBlock(scope: !115, file: !55, line: 122, column: 1)
!405 = !{i64 2152715498, i64 2152715527, i64 2152715573, i64 2152715631, i64 2152715685, i64 2152715739, i64 2152715794, i64 2152715825, i64 2152716133, i64 2152716139, i64 2152716186, i64 2152716209, i64 2152716235}
!406 = !DILocation(line: 122, column: 1, scope: !407)
!407 = distinct !DILexicalBlock(scope: !115, file: !55, line: 122, column: 1)
!408 = !DILocation(line: 122, column: 1, scope: !113)
!409 = !DILocation(line: 122, column: 1, scope: !410)
!410 = distinct !DILexicalBlock(scope: !102, file: !55, line: 122, column: 1)
!411 = !{i64 2152716587}
!412 = !DILocation(line: 122, column: 1, scope: !118)
!413 = !DILocation(line: 122, column: 1, scope: !121)
!414 = !DILocation(line: 122, column: 1, scope: !415)
!415 = distinct !DILexicalBlock(scope: !121, file: !55, line: 122, column: 1)
!416 = !DILocation(line: 122, column: 1, scope: !417)
!417 = distinct !DILexicalBlock(scope: !415, file: !55, line: 122, column: 1)
!418 = !DILocation(line: 122, column: 1, scope: !419)
!419 = distinct !DILexicalBlock(scope: !118, file: !55, line: 122, column: 1)
!420 = !DILocation(line: 122, column: 1, scope: !421)
!421 = distinct !DILexicalBlock(scope: !419, file: !55, line: 122, column: 1)
!422 = !DILocation(line: 122, column: 1, scope: !423)
!423 = distinct !DILexicalBlock(scope: !421, file: !55, line: 122, column: 1)
!424 = !DILocation(line: 122, column: 1, scope: !425)
!425 = distinct !DILexicalBlock(scope: !102, file: !55, line: 122, column: 1)
!426 = !{i64 2152722946}
!427 = !DILocation(line: 122, column: 1, scope: !428)
!428 = distinct !DILexicalBlock(scope: !425, file: !55, line: 122, column: 1)
!429 = !DILocation(line: 122, column: 1, scope: !430)
!430 = distinct !DILexicalBlock(scope: !428, file: !55, line: 122, column: 1)
!431 = !{i64 2152723105}
!432 = distinct !DISubprogram(name: "queued_write_lock_slowpath", scope: !3, file: !3, line: 66, type: !135, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !433)
!433 = !{!434, !435, !436, !439, !440}
!434 = !DILocalVariable(name: "lock", arg: 1, scope: !432, file: !3, line: 66, type: !137)
!435 = !DILocalVariable(name: "cnts", scope: !432, file: !3, line: 68, type: !15)
!436 = !DILocalVariable(name: "__PTR", scope: !437, file: !3, line: 85, type: !18)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 85, column: 10)
!438 = distinct !DILexicalBlock(scope: !432, file: !3, line: 84, column: 5)
!439 = !DILocalVariable(name: "VAL", scope: !437, file: !3, line: 85, type: !15)
!440 = !DILabel(scope: !432, name: "unlock", file: !3, line: 87)
!441 = !DILocation(line: 66, column: 60, scope: !432)
!442 = !DILocation(line: 68, column: 2, scope: !432)
!443 = !DILocation(line: 68, column: 6, scope: !432)
!444 = !DILocation(line: 70, column: 25, scope: !432)
!445 = !DILocation(line: 70, column: 2, scope: !432)
!446 = !DILocation(line: 73, column: 2, scope: !432)
!447 = !DILocation(line: 76, column: 28, scope: !448)
!448 = distinct !DILexicalBlock(scope: !432, file: !3, line: 76, column: 6)
!449 = !DILocation(line: 76, column: 34, scope: !448)
!450 = !DILocation(line: 76, column: 15, scope: !448)
!451 = !DILocation(line: 76, column: 13, scope: !448)
!452 = !DILocation(line: 76, column: 41, scope: !448)
!453 = !DILocation(line: 77, column: 34, scope: !448)
!454 = !DILocation(line: 77, column: 40, scope: !448)
!455 = !DILocation(line: 77, column: 6, scope: !448)
!456 = !DILocation(line: 76, column: 6, scope: !432)
!457 = !DILocation(line: 78, column: 3, scope: !448)
!458 = !DILocation(line: 81, column: 26, scope: !432)
!459 = !DILocation(line: 81, column: 32, scope: !432)
!460 = !DILocation(line: 81, column: 2, scope: !432)
!461 = !DILocation(line: 84, column: 2, scope: !432)
!462 = !DILocation(line: 85, column: 10, scope: !437)
!463 = !DILocation(line: 85, column: 10, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !3, line: 85, column: 10)
!465 = distinct !DILexicalBlock(scope: !466, file: !3, line: 85, column: 10)
!466 = distinct !DILexicalBlock(scope: !467, file: !3, line: 85, column: 10)
!467 = distinct !DILexicalBlock(scope: !437, file: !3, line: 85, column: 10)
!468 = !DILocation(line: 85, column: 10, scope: !469)
!469 = distinct !DILexicalBlock(scope: !464, file: !3, line: 85, column: 10)
!470 = !DILocation(line: 85, column: 10, scope: !465)
!471 = !DILocation(line: 85, column: 10, scope: !472)
!472 = distinct !DILexicalBlock(scope: !465, file: !3, line: 85, column: 10)
!473 = !DILocation(line: 85, column: 10, scope: !466)
!474 = distinct !{!474, !475, !475, !212}
!475 = !DILocation(line: 85, column: 10, scope: !467)
!476 = !DILocation(line: 85, column: 10, scope: !438)
!477 = !DILocation(line: 85, column: 8, scope: !438)
!478 = !DILocation(line: 86, column: 2, scope: !438)
!479 = !DILocation(line: 86, column: 40, scope: !432)
!480 = !DILocation(line: 86, column: 46, scope: !432)
!481 = !DILocation(line: 86, column: 12, scope: !432)
!482 = !DILocation(line: 86, column: 11, scope: !432)
!483 = distinct !{!483, !461, !484, !485, !212}
!484 = !DILocation(line: 86, column: 70, scope: !432)
!485 = !{!"llvm.loop.mustprogress"}
!486 = !DILocation(line: 87, column: 1, scope: !432)
!487 = !DILocation(line: 88, column: 2, scope: !432)
!488 = !DILocation(line: 90, column: 23, scope: !432)
!489 = !DILocation(line: 90, column: 2, scope: !432)
!490 = !DILocation(line: 91, column: 1, scope: !432)
!491 = distinct !DISubprogram(name: "atomic_read", scope: !281, file: !281, line: 30, type: !492, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !496)
!492 = !DISubroutineType(types: !493)
!493 = !{!15, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!496 = !{!497}
!497 = !DILocalVariable(name: "v", arg: 1, scope: !491, file: !281, line: 30, type: !494)
!498 = !DILocation(line: 30, column: 29, scope: !491)
!499 = !DILocation(line: 32, column: 25, scope: !491)
!500 = !DILocation(line: 32, column: 2, scope: !491)
!501 = !DILocation(line: 33, column: 25, scope: !491)
!502 = !DILocation(line: 33, column: 9, scope: !491)
!503 = !DILocation(line: 33, column: 2, scope: !491)
!504 = distinct !DISubprogram(name: "atomic_try_cmpxchg_acquire", scope: !281, file: !281, line: 1292, type: !505, scopeLine: 1293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !509)
!505 = !DISubroutineType(types: !506)
!506 = !{!507, !284, !18, !15}
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !146, line: 35, baseType: !508)
!508 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!509 = !{!510, !511, !512}
!510 = !DILocalVariable(name: "v", arg: 1, scope: !504, file: !281, line: 1292, type: !284)
!511 = !DILocalVariable(name: "old", arg: 2, scope: !504, file: !281, line: 1292, type: !18)
!512 = !DILocalVariable(name: "new", arg: 3, scope: !504, file: !281, line: 1292, type: !15)
!513 = !DILocation(line: 1292, column: 38, scope: !504)
!514 = !DILocation(line: 1292, column: 46, scope: !504)
!515 = !DILocation(line: 1292, column: 55, scope: !504)
!516 = !DILocation(line: 1294, column: 31, scope: !504)
!517 = !DILocation(line: 1294, column: 2, scope: !504)
!518 = !DILocation(line: 1295, column: 31, scope: !504)
!519 = !DILocation(line: 1295, column: 2, scope: !504)
!520 = !DILocation(line: 1296, column: 40, scope: !504)
!521 = !DILocation(line: 1296, column: 43, scope: !504)
!522 = !DILocation(line: 1296, column: 48, scope: !504)
!523 = !DILocation(line: 1296, column: 9, scope: !504)
!524 = !DILocation(line: 1296, column: 2, scope: !504)
!525 = distinct !DISubprogram(name: "atomic_or", scope: !281, file: !281, line: 932, type: !282, scopeLine: 933, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !526)
!526 = !{!527, !528}
!527 = !DILocalVariable(name: "i", arg: 1, scope: !525, file: !281, line: 932, type: !15)
!528 = !DILocalVariable(name: "v", arg: 2, scope: !525, file: !281, line: 932, type: !284)
!529 = !DILocation(line: 932, column: 15, scope: !525)
!530 = !DILocation(line: 932, column: 28, scope: !525)
!531 = !DILocation(line: 934, column: 31, scope: !525)
!532 = !DILocation(line: 934, column: 2, scope: !525)
!533 = !DILocation(line: 935, column: 16, scope: !525)
!534 = !DILocation(line: 935, column: 19, scope: !525)
!535 = !DILocation(line: 935, column: 2, scope: !525)
!536 = !DILocation(line: 936, column: 1, scope: !525)
!537 = distinct !DISubprogram(name: "rep_nop", scope: !275, file: !275, line: 11, type: !276, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!538 = !DILocation(line: 13, column: 2, scope: !537)
!539 = !{i64 1929019}
!540 = !DILocation(line: 14, column: 1, scope: !537)
!541 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !542, file: !542, line: 94, type: !543, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !552)
!542 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!543 = !DISubroutineType(types: !544)
!544 = !{null, !545, !548}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !146, line: 61, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !550, line: 72, baseType: !551)
!550 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !550, line: 16, baseType: !17)
!552 = !{!553, !554}
!553 = !DILocalVariable(name: "v", arg: 1, scope: !541, file: !542, line: 94, type: !545)
!554 = !DILocalVariable(name: "size", arg: 2, scope: !541, file: !542, line: 94, type: !548)
!555 = !DILocation(line: 94, column: 79, scope: !541)
!556 = !DILocation(line: 94, column: 89, scope: !541)
!557 = !DILocation(line: 96, column: 20, scope: !541)
!558 = !DILocation(line: 96, column: 23, scope: !541)
!559 = !DILocation(line: 96, column: 2, scope: !541)
!560 = !DILocation(line: 97, column: 2, scope: !541)
!561 = !DILocation(line: 98, column: 1, scope: !541)
!562 = distinct !DISubprogram(name: "raw_atomic_sub", scope: !563, file: !563, line: 754, type: !282, scopeLine: 755, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !564)
!563 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!564 = !{!565, !566}
!565 = !DILocalVariable(name: "i", arg: 1, scope: !562, file: !563, line: 754, type: !15)
!566 = !DILocalVariable(name: "v", arg: 2, scope: !562, file: !563, line: 754, type: !284)
!567 = !DILocation(line: 754, column: 20, scope: !562)
!568 = !DILocation(line: 754, column: 33, scope: !562)
!569 = !DILocation(line: 756, column: 18, scope: !562)
!570 = !DILocation(line: 756, column: 21, scope: !562)
!571 = !DILocation(line: 756, column: 2, scope: !562)
!572 = !DILocation(line: 757, column: 1, scope: !562)
!573 = distinct !DISubprogram(name: "kasan_check_write", scope: !574, file: !574, line: 44, type: !575, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !577)
!574 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!575 = !DISubroutineType(types: !576)
!576 = !{!507, !545, !7}
!577 = !{!578, !579}
!578 = !DILocalVariable(name: "p", arg: 1, scope: !573, file: !574, line: 44, type: !545)
!579 = !DILocalVariable(name: "size", arg: 2, scope: !573, file: !574, line: 44, type: !7)
!580 = !DILocation(line: 44, column: 59, scope: !573)
!581 = !DILocation(line: 44, column: 75, scope: !573)
!582 = !DILocation(line: 46, column: 2, scope: !573)
!583 = distinct !DISubprogram(name: "kcsan_check_access", scope: !584, file: !584, line: 229, type: !585, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !587)
!584 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!585 = !DISubroutineType(types: !586)
!586 = !{null, !545, !548, !15}
!587 = !{!588, !589, !590}
!588 = !DILocalVariable(name: "ptr", arg: 1, scope: !583, file: !584, line: 229, type: !545)
!589 = !DILocalVariable(name: "size", arg: 2, scope: !583, file: !584, line: 229, type: !548)
!590 = !DILocalVariable(name: "type", arg: 3, scope: !583, file: !584, line: 230, type: !15)
!591 = !DILocation(line: 229, column: 60, scope: !583)
!592 = !DILocation(line: 229, column: 72, scope: !583)
!593 = !DILocation(line: 230, column: 15, scope: !583)
!594 = !DILocation(line: 230, column: 23, scope: !583)
!595 = distinct !DISubprogram(name: "arch_atomic_sub", scope: !596, file: !596, line: 38, type: !282, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !597)
!596 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!597 = !{!598, !599}
!598 = !DILocalVariable(name: "i", arg: 1, scope: !595, file: !596, line: 38, type: !15)
!599 = !DILocalVariable(name: "v", arg: 2, scope: !595, file: !596, line: 38, type: !284)
!600 = !DILocation(line: 38, column: 49, scope: !595)
!601 = !DILocation(line: 38, column: 62, scope: !595)
!602 = !DILocation(line: 41, column: 16, scope: !595)
!603 = !DILocation(line: 41, column: 19, scope: !595)
!604 = !DILocation(line: 42, column: 16, scope: !595)
!605 = !DILocation(line: 40, column: 2, scope: !595)
!606 = !{i64 2148364110, i64 2148364149, i64 2148364170, i64 2148364207, i64 2148364230, i64 2148364100}
!607 = !DILocation(line: 43, column: 1, scope: !595)
!608 = distinct !DISubprogram(name: "static_key_false", scope: !609, file: !609, line: 205, type: !610, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !633)
!609 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!610 = !DISubroutineType(types: !611)
!611 = !{!507, !612}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !609, line: 85, size: 128, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !613, file: !609, line: 86, baseType: !145, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, scope: !613, file: !609, line: 101, baseType: !617, size: 64, offset: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !613, file: !609, line: 101, size: 64, elements: !618)
!618 = !{!619, !620, !630}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !609, line: 102, baseType: !17, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !617, file: !609, line: 103, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !609, line: 117, size: 128, elements: !623)
!623 = !{!624, !627, !628}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !622, file: !609, line: 118, baseType: !625, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !40, line: 20, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !42, line: 26, baseType: !15)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !622, file: !609, line: 119, baseType: !625, size: 32, offset: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !622, file: !609, line: 120, baseType: !629, size: 64, offset: 64)
!629 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !617, file: !609, line: 104, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !609, line: 104, flags: DIFlagFwdDecl)
!633 = !{!634}
!634 = !DILocalVariable(name: "key", arg: 1, scope: !608, file: !609, line: 205, type: !612)
!635 = !DILocation(line: 205, column: 65, scope: !608)
!636 = !DILocation(line: 207, column: 28, scope: !608)
!637 = !DILocation(line: 207, column: 9, scope: !608)
!638 = !DILocation(line: 207, column: 2, scope: !608)
!639 = distinct !DISubprogram(name: "cpu_online", scope: !32, file: !32, line: 1080, type: !640, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !642)
!640 = !DISubroutineType(types: !641)
!641 = !{!507, !7}
!642 = !{!643}
!643 = !DILocalVariable(name: "cpu", arg: 1, scope: !639, file: !32, line: 1080, type: !7)
!644 = !DILocation(line: 1080, column: 44, scope: !639)
!645 = !DILocation(line: 1082, column: 26, scope: !639)
!646 = !DILocation(line: 1082, column: 9, scope: !639)
!647 = !DILocation(line: 1082, column: 2, scope: !639)
!648 = distinct !DISubprogram(name: "__preempt_count_add", scope: !263, file: !263, line: 78, type: !649, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !651)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !15}
!651 = !{!652, !653, !656}
!652 = !DILocalVariable(name: "val", arg: 1, scope: !648, file: !263, line: 78, type: !15)
!653 = !DILocalVariable(name: "pao_ID__", scope: !654, file: !263, line: 80, type: !655)
!654 = distinct !DILexicalBlock(scope: !648, file: !263, line: 80, column: 2)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!656 = !DILocalVariable(name: "pto_val__", scope: !657, file: !263, line: 80, type: !39)
!657 = distinct !DILexicalBlock(scope: !658, file: !263, line: 80, column: 2)
!658 = distinct !DILexicalBlock(scope: !659, file: !263, line: 80, column: 2)
!659 = distinct !DILexicalBlock(scope: !654, file: !263, line: 80, column: 2)
!660 = !DILocation(line: 78, column: 53, scope: !648)
!661 = !DILocation(line: 80, column: 2, scope: !648)
!662 = !DILocation(line: 80, column: 2, scope: !654)
!663 = !DILocation(line: 80, column: 2, scope: !659)
!664 = !DILocation(line: 80, column: 2, scope: !665)
!665 = distinct !DILexicalBlock(scope: !659, file: !263, line: 80, column: 2)
!666 = !{i64 2149460233}
!667 = !DILocation(line: 80, column: 2, scope: !658)
!668 = !DILocation(line: 80, column: 2, scope: !669)
!669 = distinct !DILexicalBlock(scope: !658, file: !263, line: 80, column: 2)
!670 = !{i64 2149460528}
!671 = !DILocation(line: 80, column: 2, scope: !657)
!672 = !{i64 2149461233}
!673 = !DILocation(line: 81, column: 1, scope: !648)
!674 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !263, file: !263, line: 93, type: !675, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !677)
!675 = !DISubroutineType(types: !676)
!676 = !{!507}
!677 = !{!678}
!678 = !DILocalVariable(name: "c", scope: !679, file: !263, line: 95, type: !507)
!679 = distinct !DILexicalBlock(scope: !674, file: !263, line: 95, column: 9)
!680 = !DILocation(line: 95, column: 9, scope: !679)
!681 = !{i64 2149464589, i64 2149464682}
!682 = !{i8 0, i8 2}
!683 = !{}
!684 = !DILocation(line: 95, column: 9, scope: !674)
!685 = !DILocation(line: 95, column: 2, scope: !674)
!686 = distinct !DISubprogram(name: "arch_static_branch", scope: !687, file: !687, line: 25, type: !688, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !690)
!687 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!688 = !DISubroutineType(types: !689)
!689 = !{!507, !612, !507}
!690 = !{!691, !692, !693}
!691 = !DILocalVariable(name: "key", arg: 1, scope: !686, file: !687, line: 25, type: !612)
!692 = !DILocalVariable(name: "branch", arg: 2, scope: !686, file: !687, line: 25, type: !507)
!693 = !DILabel(scope: !686, name: "l_yes", file: !687, line: 33)
!694 = !DILocation(line: 25, column: 67, scope: !686)
!695 = !DILocation(line: 25, column: 77, scope: !686)
!696 = !DILocation(line: 30, column: 13, scope: !686)
!697 = !DILocation(line: 30, column: 28, scope: !686)
!698 = !DILocation(line: 30, column: 26, scope: !686)
!699 = !DILocation(line: 27, column: 2, scope: !686)
!700 = !{i64 839200, i64 839244, i64 2148323927, i64 2148323948, i64 2148323974, i64 2148324007, i64 2148324041, i64 2148324065}
!701 = !DILocation(line: 32, column: 2, scope: !686)
!702 = !DILocation(line: 33, column: 1, scope: !686)
!703 = !DILocation(line: 34, column: 2, scope: !686)
!704 = !DILocation(line: 35, column: 1, scope: !686)
!705 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !32, file: !32, line: 502, type: !706, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !708)
!706 = !DISubroutineType(types: !707)
!707 = !{!507, !15, !29}
!708 = !{!709, !710}
!709 = !DILocalVariable(name: "cpu", arg: 1, scope: !705, file: !32, line: 502, type: !15)
!710 = !DILocalVariable(name: "cpumask", arg: 2, scope: !705, file: !32, line: 502, type: !29)
!711 = !DILocation(line: 502, column: 50, scope: !705)
!712 = !DILocation(line: 502, column: 77, scope: !705)
!713 = !DILocation(line: 504, column: 9, scope: !705)
!714 = !DILocation(line: 504, column: 2, scope: !705)
!715 = distinct !DISubprogram(name: "_test_bit", scope: !716, file: !716, line: 139, type: !717, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !722)
!716 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!717 = !DISubroutineType(types: !718)
!718 = !{!507, !17, !719}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!722 = !{!723, !724}
!723 = !DILocalVariable(name: "nr", arg: 1, scope: !715, file: !716, line: 139, type: !17)
!724 = !DILocalVariable(name: "addr", arg: 2, scope: !715, file: !716, line: 139, type: !719)
!725 = !DILocation(line: 139, column: 25, scope: !715)
!726 = !DILocation(line: 139, column: 59, scope: !715)
!727 = !DILocation(line: 141, column: 25, scope: !715)
!728 = !DILocation(line: 141, column: 32, scope: !715)
!729 = !DILocation(line: 141, column: 30, scope: !715)
!730 = !DILocation(line: 141, column: 2, scope: !715)
!731 = !DILocation(line: 142, column: 23, scope: !715)
!732 = !DILocation(line: 142, column: 27, scope: !715)
!733 = !DILocation(line: 142, column: 9, scope: !715)
!734 = !DILocation(line: 142, column: 2, scope: !715)
!735 = distinct !DISubprogram(name: "cpumask_check", scope: !32, file: !32, line: 148, type: !736, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{!7, !7}
!738 = !{!739}
!739 = !DILocalVariable(name: "cpu", arg: 1, scope: !735, file: !32, line: 148, type: !7)
!740 = !DILocation(line: 148, column: 64, scope: !735)
!741 = !DILocation(line: 150, column: 20, scope: !735)
!742 = !DILocation(line: 150, column: 2, scope: !735)
!743 = !DILocation(line: 151, column: 9, scope: !735)
!744 = !DILocation(line: 151, column: 2, scope: !735)
!745 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !542, file: !542, line: 66, type: !543, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !746)
!746 = !{!747, !748}
!747 = !DILocalVariable(name: "v", arg: 1, scope: !745, file: !542, line: 66, type: !545)
!748 = !DILocalVariable(name: "size", arg: 2, scope: !745, file: !542, line: 66, type: !548)
!749 = !DILocation(line: 66, column: 73, scope: !745)
!750 = !DILocation(line: 66, column: 83, scope: !745)
!751 = !DILocation(line: 68, column: 19, scope: !745)
!752 = !DILocation(line: 68, column: 22, scope: !745)
!753 = !DILocation(line: 68, column: 2, scope: !745)
!754 = !DILocation(line: 69, column: 2, scope: !745)
!755 = !DILocation(line: 70, column: 1, scope: !745)
!756 = distinct !DISubprogram(name: "arch_test_bit", scope: !757, file: !757, line: 237, type: !717, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !758)
!757 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!758 = !{!759, !760}
!759 = !DILocalVariable(name: "nr", arg: 1, scope: !756, file: !757, line: 237, type: !17)
!760 = !DILocalVariable(name: "addr", arg: 2, scope: !756, file: !757, line: 237, type: !719)
!761 = !DILocation(line: 237, column: 29, scope: !756)
!762 = !DILocation(line: 237, column: 63, scope: !756)
!763 = !DILocation(line: 239, column: 30, scope: !756)
!764 = !DILocation(line: 239, column: 9, scope: !756)
!765 = !DILocation(line: 239, column: 54, scope: !756)
!766 = !DILocation(line: 239, column: 58, scope: !756)
!767 = !DILocation(line: 239, column: 36, scope: !756)
!768 = !DILocation(line: 240, column: 26, scope: !756)
!769 = !DILocation(line: 240, column: 30, scope: !756)
!770 = !DILocation(line: 240, column: 8, scope: !756)
!771 = !DILocation(line: 239, column: 2, scope: !756)
!772 = distinct !DISubprogram(name: "kasan_check_read", scope: !574, file: !574, line: 40, type: !575, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !773)
!773 = !{!774, !775}
!774 = !DILocalVariable(name: "p", arg: 1, scope: !772, file: !574, line: 40, type: !545)
!775 = !DILocalVariable(name: "size", arg: 2, scope: !772, file: !574, line: 40, type: !7)
!776 = !DILocation(line: 40, column: 58, scope: !772)
!777 = !DILocation(line: 40, column: 74, scope: !772)
!778 = !DILocation(line: 42, column: 2, scope: !772)
!779 = distinct !DISubprogram(name: "constant_test_bit", scope: !757, file: !757, line: 204, type: !780, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !782)
!780 = !DISubroutineType(types: !781)
!781 = !{!507, !629, !719}
!782 = !{!783, !784}
!783 = !DILocalVariable(name: "nr", arg: 1, scope: !779, file: !757, line: 204, type: !629)
!784 = !DILocalVariable(name: "addr", arg: 2, scope: !779, file: !757, line: 204, type: !719)
!785 = !DILocation(line: 204, column: 52, scope: !779)
!786 = !DILocation(line: 204, column: 86, scope: !779)
!787 = !DILocation(line: 206, column: 19, scope: !779)
!788 = !DILocation(line: 206, column: 22, scope: !779)
!789 = !DILocation(line: 206, column: 15, scope: !779)
!790 = !DILocation(line: 207, column: 4, scope: !779)
!791 = !DILocation(line: 207, column: 9, scope: !779)
!792 = !DILocation(line: 207, column: 12, scope: !779)
!793 = !DILocation(line: 206, column: 44, scope: !779)
!794 = !DILocation(line: 207, column: 37, scope: !779)
!795 = !DILocation(line: 206, column: 2, scope: !779)
!796 = distinct !DISubprogram(name: "variable_test_bit", scope: !757, file: !757, line: 224, type: !780, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !797)
!797 = !{!798, !799, !800}
!798 = !DILocalVariable(name: "nr", arg: 1, scope: !796, file: !757, line: 224, type: !629)
!799 = !DILocalVariable(name: "addr", arg: 2, scope: !796, file: !757, line: 224, type: !719)
!800 = !DILocalVariable(name: "oldbit", scope: !796, file: !757, line: 226, type: !507)
!801 = !DILocation(line: 224, column: 52, scope: !796)
!802 = !DILocation(line: 224, column: 86, scope: !796)
!803 = !DILocation(line: 226, column: 2, scope: !796)
!804 = !DILocation(line: 226, column: 7, scope: !796)
!805 = !DILocation(line: 231, column: 33, scope: !796)
!806 = !DILocation(line: 231, column: 46, scope: !796)
!807 = !DILocation(line: 228, column: 2, scope: !796)
!808 = !{i64 2147959200, i64 2147959274}
!809 = !DILocation(line: 233, column: 9, scope: !796)
!810 = !DILocation(line: 234, column: 1, scope: !796)
!811 = !DILocation(line: 233, column: 2, scope: !796)
!812 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !32, file: !32, line: 140, type: !813, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !815)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !7, !7}
!815 = !{!816, !817}
!816 = !DILocalVariable(name: "cpu", arg: 1, scope: !812, file: !32, line: 140, type: !7)
!817 = !DILocalVariable(name: "bits", arg: 2, scope: !812, file: !32, line: 140, type: !7)
!818 = !DILocation(line: 140, column: 60, scope: !812)
!819 = !DILocation(line: 140, column: 78, scope: !812)
!820 = !DILocation(line: 145, column: 1, scope: !812)
!821 = !DISubprogram(name: "queued_spin_lock_slowpath", scope: !339, file: !339, line: 100, type: !822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !342, !39}
!824 = distinct !DISubprogram(name: "raw_atomic_add", scope: !563, file: !563, line: 531, type: !282, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !825)
!825 = !{!826, !827}
!826 = !DILocalVariable(name: "i", arg: 1, scope: !824, file: !563, line: 531, type: !15)
!827 = !DILocalVariable(name: "v", arg: 2, scope: !824, file: !563, line: 531, type: !284)
!828 = !DILocation(line: 531, column: 20, scope: !824)
!829 = !DILocation(line: 531, column: 33, scope: !824)
!830 = !DILocation(line: 533, column: 18, scope: !824)
!831 = !DILocation(line: 533, column: 21, scope: !824)
!832 = !DILocation(line: 533, column: 2, scope: !824)
!833 = !DILocation(line: 534, column: 1, scope: !824)
!834 = distinct !DISubprogram(name: "arch_atomic_add", scope: !596, file: !596, line: 31, type: !282, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !835)
!835 = !{!836, !837}
!836 = !DILocalVariable(name: "i", arg: 1, scope: !834, file: !596, line: 31, type: !15)
!837 = !DILocalVariable(name: "v", arg: 2, scope: !834, file: !596, line: 31, type: !284)
!838 = !DILocation(line: 31, column: 49, scope: !834)
!839 = !DILocation(line: 31, column: 62, scope: !834)
!840 = !DILocation(line: 34, column: 16, scope: !834)
!841 = !DILocation(line: 34, column: 19, scope: !834)
!842 = !DILocation(line: 35, column: 16, scope: !834)
!843 = !DILocation(line: 33, column: 2, scope: !834)
!844 = !{i64 2148363747, i64 2148363786, i64 2148363807, i64 2148363844, i64 2148363867, i64 2148363737}
!845 = !DILocation(line: 36, column: 1, scope: !834)
!846 = distinct !DISubprogram(name: "raw_atomic_read", scope: !563, file: !563, line: 442, type: !492, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !847)
!847 = !{!848}
!848 = !DILocalVariable(name: "v", arg: 1, scope: !846, file: !563, line: 442, type: !494)
!849 = !DILocation(line: 442, column: 33, scope: !846)
!850 = !DILocation(line: 444, column: 26, scope: !846)
!851 = !DILocation(line: 444, column: 9, scope: !846)
!852 = !DILocation(line: 444, column: 2, scope: !846)
!853 = distinct !DISubprogram(name: "arch_atomic_read", scope: !596, file: !596, line: 17, type: !492, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !854)
!854 = !{!855}
!855 = !DILocalVariable(name: "v", arg: 1, scope: !853, file: !596, line: 17, type: !494)
!856 = !DILocation(line: 17, column: 61, scope: !853)
!857 = !DILocation(line: 23, column: 9, scope: !853)
!858 = !DILocation(line: 23, column: 2, scope: !853)
!859 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_acquire", scope: !563, file: !563, line: 2142, type: !505, scopeLine: 2143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !860)
!860 = !{!861, !862, !863}
!861 = !DILocalVariable(name: "v", arg: 1, scope: !859, file: !563, line: 2142, type: !284)
!862 = !DILocalVariable(name: "old", arg: 2, scope: !859, file: !563, line: 2142, type: !18)
!863 = !DILocalVariable(name: "new", arg: 3, scope: !859, file: !563, line: 2142, type: !15)
!864 = !DILocation(line: 2142, column: 42, scope: !859)
!865 = !DILocation(line: 2142, column: 50, scope: !859)
!866 = !DILocation(line: 2142, column: 59, scope: !859)
!867 = !DILocation(line: 2151, column: 33, scope: !859)
!868 = !DILocation(line: 2151, column: 36, scope: !859)
!869 = !DILocation(line: 2151, column: 41, scope: !859)
!870 = !DILocation(line: 2151, column: 9, scope: !859)
!871 = !DILocation(line: 2151, column: 2, scope: !859)
!872 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !596, file: !596, line: 113, type: !505, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !873)
!873 = !{!874, !875, !876, !877, !879, !880, !881, !882}
!874 = !DILocalVariable(name: "v", arg: 1, scope: !872, file: !596, line: 113, type: !284)
!875 = !DILocalVariable(name: "old", arg: 2, scope: !872, file: !596, line: 113, type: !18)
!876 = !DILocalVariable(name: "new", arg: 3, scope: !872, file: !596, line: 113, type: !15)
!877 = !DILocalVariable(name: "success", scope: !878, file: !596, line: 115, type: !507)
!878 = distinct !DILexicalBlock(scope: !872, file: !596, line: 115, column: 9)
!879 = !DILocalVariable(name: "_old", scope: !878, file: !596, line: 115, type: !18)
!880 = !DILocalVariable(name: "__old", scope: !878, file: !596, line: 115, type: !15)
!881 = !DILocalVariable(name: "__new", scope: !878, file: !596, line: 115, type: !15)
!882 = !DILocalVariable(name: "__ptr", scope: !878, file: !596, line: 115, type: !48)
!883 = !DILocation(line: 113, column: 63, scope: !872)
!884 = !DILocation(line: 113, column: 71, scope: !872)
!885 = !DILocation(line: 113, column: 80, scope: !872)
!886 = !DILocation(line: 115, column: 9, scope: !878)
!887 = !{i64 2148384855, i64 2148384894, i64 2148384915, i64 2148384952, i64 2148384975, i64 2148384984, i64 2148385282}
!888 = !DILocation(line: 115, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !878, file: !596, line: 115, column: 9)
!890 = !DILocation(line: 115, column: 9, scope: !872)
!891 = !DILocation(line: 115, column: 2, scope: !872)
!892 = distinct !DISubprogram(name: "raw_atomic_or", scope: !563, file: !563, line: 1657, type: !282, scopeLine: 1658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !893)
!893 = !{!894, !895}
!894 = !DILocalVariable(name: "i", arg: 1, scope: !892, file: !563, line: 1657, type: !15)
!895 = !DILocalVariable(name: "v", arg: 2, scope: !892, file: !563, line: 1657, type: !284)
!896 = !DILocation(line: 1657, column: 19, scope: !892)
!897 = !DILocation(line: 1657, column: 32, scope: !892)
!898 = !DILocation(line: 1659, column: 17, scope: !892)
!899 = !DILocation(line: 1659, column: 20, scope: !892)
!900 = !DILocation(line: 1659, column: 2, scope: !892)
!901 = !DILocation(line: 1660, column: 1, scope: !892)
!902 = distinct !DISubprogram(name: "arch_atomic_or", scope: !596, file: !596, line: 143, type: !282, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !903)
!903 = !{!904, !905}
!904 = !DILocalVariable(name: "i", arg: 1, scope: !902, file: !596, line: 143, type: !15)
!905 = !DILocalVariable(name: "v", arg: 2, scope: !902, file: !596, line: 143, type: !284)
!906 = !DILocation(line: 143, column: 48, scope: !902)
!907 = !DILocation(line: 143, column: 61, scope: !902)
!908 = !DILocation(line: 146, column: 12, scope: !902)
!909 = !DILocation(line: 146, column: 15, scope: !902)
!910 = !DILocation(line: 147, column: 12, scope: !902)
!911 = !DILocation(line: 145, column: 2, scope: !902)
!912 = !{i64 2148387562, i64 2148387601, i64 2148387622, i64 2148387659, i64 2148387682, i64 2148387552}
!913 = !DILocation(line: 149, column: 1, scope: !902)
