; ModuleID = 'arch/x86/kernel/tsc_sync.c'
source_filename = "arch/x86/kernel/tsc_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init..kmod_tsc_sync__208_120_start_sync_check_timer\22, \22a\22\09\09"
module asm "__initcall__kmod_tsc_sync__208_120_start_sync_check_timer7:\09\09\09"
module asm ".long\09__initstub__kmod_tsc_sync__208_120_start_sync_check_timer7 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.tsc_adjust = type { i64, i64, i64, i8 }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.pcpu_hot = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon.2, [16 x i8] }
%struct.anon.2 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.cpumask = type { [1 x i64] }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.3 }
%union.anon.3 = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.qspinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.atomic_t }
%struct.anon.5 = type { i8, i8 }

@tsc_async_resets = hidden global i8 0, section ".data..read_mostly", align 1, !dbg !0
@.str = private unnamed_addr constant [48 x i8] c"\016tsc: Marking TSC async resets true due to %s\0A\00", align 1, !dbg !93
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@tsc_adjust = internal global %struct.tsc_adjust zeroinitializer, section ".data..percpu", align 8, !dbg !174
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [70 x i8] c"\014[Firmware Bug]: TSC ADJUST differs: CPU%u %lld --> %lld. Restoring\0A\00", align 1, !dbg !98
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !103
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__UNIQUE_ID___addressable___initstub__kmod_tsc_sync__208_120_start_sync_check_timer7209 = internal global ptr @__initstub__kmod_tsc_sync__208_120_start_sync_check_timer7, section ".discard.addressable", align 8, !dbg !108
@cpu_core_map = external dso_local global [1 x %struct.cpumask], section ".data..percpu..read_mostly", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@nr_cpu_ids = external dso_local global i32, align 4
@tsc_store_and_check_tsc_adjust.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !110
@.str.3 = private unnamed_addr constant [72 x i8] c"[Firmware Bug]: TSC ADJUST differs within socket(s), fixing all errors\0A\00", align 1, !dbg !164
@tsc_clocksource_reliable = external dso_local global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@start_count = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !176
@max_warp = internal global i64 0, align 8, !dbg !186
@stop_count = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !182
@test_runs = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !184
@.str.4 = private unnamed_addr constant [65 x i8] c"\014TSC ADJUST compensate: CPU%u observed %lld warp. Adjust: %lld\0A\00", align 1, !dbg !169
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@tsc_sync_check_timer = internal global %struct.timer_list zeroinitializer, align 8, !dbg !188
@.str.5 = private unnamed_addr constant [54 x i8] c"\014[Firmware Bug]: TSC ADJUST: CPU%u: %lld force to 0\0A\00", align 1, !dbg !207
@.str.6 = private unnamed_addr constant [43 x i8] c"\016TSC ADJUST: CPU%u: %lld NOT forced to 0\0A\00", align 1, !dbg !212
@nr_warps = internal global i32 0, align 4, !dbg !229
@random_warps = internal global i32 0, align 4, !dbg !231
@.str.7 = private unnamed_addr constant [43 x i8] c"\014TSC synchronization [CPU#%d -> CPU#%u]:\0A\00", align 1, !dbg !217
@.str.8 = private unnamed_addr constant [69 x i8] c"\014Measured %Ld cycles TSC warp between CPUs, turning off TSC clock.\0A\00", align 1, !dbg !219
@.str.9 = private unnamed_addr constant [36 x i8] c"\014TSC warped randomly between CPUs\0A\00", align 1, !dbg !224
@tsc_sync_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @tsc_sync_work, i64 8), ptr getelementptr (i8, ptr @tsc_sync_work, i64 8) }, ptr @tsc_sync_mark_tsc_unstable }, align 8, !dbg !233
@last_tsc = internal global i64 0, align 8, !dbg !261
@system_wq = external dso_local global ptr, align 8
@.str.10 = private unnamed_addr constant [29 x i8] c"check_tsc_sync_source failed\00", align 1, !dbg !256
@tsc_khz = external dso_local global i32, align 4
@sync_lock = internal global %struct.qspinlock zeroinitializer, align 4, !dbg !273
@.str.11 = private unnamed_addr constant [53 x i8] c"Warning: zero tsc calibration delta: %Ld [max: %Ld]\0A\00", align 1, !dbg !263
@.str.12 = private unnamed_addr constant [27 x i8] c"arch/x86/kernel/tsc_sync.c\00", align 1, !dbg !268
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_tsc_sync__208_120_start_sync_check_timer7209], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mark_tsc_async_resets(ptr noundef %reason) #0 align 16 !dbg !305 {
entry:
  %reason.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %reason, ptr %reason.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reason.addr, metadata !310, metadata !DIExpression()), !dbg !311
  %0 = load i8, ptr @tsc_async_resets, align 1, !dbg !312, !range !314, !noundef !315
  %tobool = trunc i8 %0 to i1, !dbg !312
  br i1 %tobool, label %if.then, label %if.end, !dbg !316

if.then:                                          ; preds = %entry
  br label %return, !dbg !317

if.end:                                           ; preds = %entry
  store i8 1, ptr @tsc_async_resets, align 1, !dbg !318
  br label %do.body, !dbg !319

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !321

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %reason.addr, align 8, !dbg !319
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %1) #11, !dbg !319
  store i32 %call, ptr %tmp, align 4, !dbg !321
  %2 = load i32, ptr %tmp, align 4, !dbg !319
  br label %return, !dbg !323

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !323
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !324 dso_local i32 @_printk(ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tsc_verify_tsc_adjust(i1 noundef zeroext %resume) #0 align 16 !dbg !328 {
entry:
  %resume.addr = alloca i8, align 1
  %adj = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %curval = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp21 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify23 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %frombool = zext i1 %resume to i8
  store i8 %frombool, ptr %resume.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %resume.addr, metadata !332, metadata !DIExpression()), !dbg !350
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj) #12, !dbg !351
  call void @llvm.dbg.declare(metadata ptr %adj, metadata !333, metadata !DIExpression()), !dbg !352
  br label %do.body, !dbg !353

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !354
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !334, metadata !DIExpression()), !dbg !354
  store ptr null, ptr %__vpp_verify, align 8, !dbg !354
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !354
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !353
  br label %do.cond, !dbg !354

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !354

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !355
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !337, metadata !DIExpression()), !dbg !355
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @tsc_adjust) #13, !dbg !355, !srcloc !356
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !355
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !355
  %3 = inttoptr i64 %2 to ptr, !dbg !355
  store ptr %3, ptr %tmp1, align 8, !dbg !355
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !353
  %4 = load ptr, ptr %tmp1, align 8, !dbg !355
  store ptr %4, ptr %tmp, align 8, !dbg !354
  %5 = load ptr, ptr %tmp, align 8, !dbg !353
  store ptr %5, ptr %adj, align 8, !dbg !352
  call void @llvm.lifetime.start.p0(i64 8, ptr %curval) #12, !dbg !357
  call void @llvm.dbg.declare(metadata ptr %curval, metadata !339, metadata !DIExpression()), !dbg !358
  br i1 false, label %cond.true, label %cond.false, !dbg !359

cond.true:                                        ; preds = %do.end
  br i1 true, label %if.end, label %if.then, !dbg !360

cond.false:                                       ; preds = %do.end
  %call = call zeroext i1 @arch_test_bit(i64 noundef 289, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #14, !dbg !360
  br i1 %call, label %if.end, label %if.then, !dbg !359

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !362

if.end:                                           ; preds = %cond.false, %cond.true
  %call2 = call i32 @check_tsc_unstable() #14, !dbg !363
  %tobool = icmp ne i32 %call2, 0, !dbg !363
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !365

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !366

if.end4:                                          ; preds = %if.end
  %6 = load i8, ptr %resume.addr, align 1, !dbg !367, !range !314, !noundef !315
  %tobool5 = trunc i8 %6 to i1, !dbg !367
  br i1 %tobool5, label %if.end7, label %land.lhs.true, !dbg !369

land.lhs.true:                                    ; preds = %if.end4
  %7 = load volatile i64, ptr @jiffies, align 64, !dbg !370
  %8 = load ptr, ptr %adj, align 8, !dbg !370
  %nextcheck = getelementptr inbounds %struct.tsc_adjust, ptr %8, i32 0, i32 2, !dbg !370
  %9 = load i64, ptr %nextcheck, align 8, !dbg !370
  %sub = sub i64 %7, %9, !dbg !370
  %cmp = icmp slt i64 %sub, 0, !dbg !370
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !371

if.then6:                                         ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !372

if.end7:                                          ; preds = %land.lhs.true, %if.end4
  %10 = load volatile i64, ptr @jiffies, align 64, !dbg !373
  %add = add i64 %10, 1000, !dbg !374
  %11 = load ptr, ptr %adj, align 8, !dbg !375
  %nextcheck8 = getelementptr inbounds %struct.tsc_adjust, ptr %11, i32 0, i32 2, !dbg !376
  store i64 %add, ptr %nextcheck8, align 8, !dbg !377
  %call9 = call i64 @native_read_msr(i32 noundef 59) #14, !dbg !378
  store i64 %call9, ptr %curval, align 8, !dbg !378
  %12 = load ptr, ptr %adj, align 8, !dbg !379
  %adjusted = getelementptr inbounds %struct.tsc_adjust, ptr %12, i32 0, i32 1, !dbg !381
  %13 = load i64, ptr %adjusted, align 8, !dbg !381
  %14 = load i64, ptr %curval, align 8, !dbg !382
  %cmp10 = icmp eq i64 %13, %14, !dbg !383
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !384

if.then11:                                        ; preds = %if.end7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !385

if.end12:                                         ; preds = %if.end7
  %15 = load ptr, ptr %adj, align 8, !dbg !386
  %adjusted13 = getelementptr inbounds %struct.tsc_adjust, ptr %15, i32 0, i32 1, !dbg !387
  %16 = load i64, ptr %adjusted13, align 8, !dbg !387
  call void @wrmsrl(i32 noundef 59, i64 noundef %16) #14, !dbg !388
  %17 = load ptr, ptr %adj, align 8, !dbg !389
  %warned = getelementptr inbounds %struct.tsc_adjust, ptr %17, i32 0, i32 3, !dbg !390
  %18 = load i8, ptr %warned, align 8, !dbg !390, !range !314, !noundef !315
  %tobool14 = trunc i8 %18 to i1, !dbg !390
  br i1 %tobool14, label %lor.lhs.false, label %if.then16, !dbg !391

lor.lhs.false:                                    ; preds = %if.end12
  %19 = load i8, ptr %resume.addr, align 1, !dbg !392, !range !314, !noundef !315
  %tobool15 = trunc i8 %19 to i1, !dbg !392
  br i1 %tobool15, label %if.then16, label %if.end32, !dbg !393

if.then16:                                        ; preds = %lor.lhs.false, %if.end12
  br label %do.body17, !dbg !394

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !395

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !395

do.end19:                                         ; preds = %do.cond18
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #14, !dbg !397
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !398
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !340, metadata !DIExpression()), !dbg !398
  br label %do.body22, !dbg !398

do.body22:                                        ; preds = %do.end19
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify23) #12, !dbg !399
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify23, metadata !346, metadata !DIExpression()), !dbg !399
  store ptr null, ptr %__vpp_verify23, align 8, !dbg !399
  %20 = load ptr, ptr %__vpp_verify23, align 8, !dbg !399
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify23) #12, !dbg !398
  br label %do.cond24, !dbg !399

do.cond24:                                        ; preds = %do.body22
  br label %do.end25, !dbg !399

do.end25:                                         ; preds = %do.cond24
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !400
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !348, metadata !DIExpression()), !dbg !400
  %21 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #13, !dbg !400, !srcloc !401
  store i32 %21, ptr %pfo_val__, align 4, !dbg !400
  %22 = load i32, ptr %pfo_val__, align 4, !dbg !400
  %conv = zext i32 %22 to i64, !dbg !400
  %conv27 = trunc i64 %conv to i32, !dbg !400
  store i32 %conv27, ptr %tmp26, align 4, !dbg !400
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !398
  %23 = load i32, ptr %tmp26, align 4, !dbg !400
  store i32 %23, ptr %pscr_ret__, align 4, !dbg !398
  %24 = load i32, ptr %pscr_ret__, align 4, !dbg !398
  store i32 %24, ptr %tmp28, align 4, !dbg !398
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !397
  %25 = load i32, ptr %tmp28, align 4, !dbg !398
  store i32 %25, ptr %tmp21, align 4, !dbg !397
  %26 = load i32, ptr %tmp21, align 4, !dbg !397
  %27 = load ptr, ptr %adj, align 8, !dbg !394
  %adjusted29 = getelementptr inbounds %struct.tsc_adjust, ptr %27, i32 0, i32 1, !dbg !394
  %28 = load i64, ptr %adjusted29, align 8, !dbg !394
  %29 = load i64, ptr %curval, align 8, !dbg !394
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %26, i64 noundef %28, i64 noundef %29) #11, !dbg !394
  store i32 %call30, ptr %tmp20, align 4, !dbg !395
  %30 = load i32, ptr %tmp20, align 4, !dbg !394
  %31 = load ptr, ptr %adj, align 8, !dbg !402
  %warned31 = getelementptr inbounds %struct.tsc_adjust, ptr %31, i32 0, i32 3, !dbg !403
  store i8 1, ptr %warned31, align 8, !dbg !404
  br label %if.end32, !dbg !405

if.end32:                                         ; preds = %do.end25, %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !406
  br label %cleanup, !dbg !406

cleanup:                                          ; preds = %if.end32, %if.then11, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %curval) #12, !dbg !406
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj) #12, !dbg !406
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !406

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !407 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !415, metadata !DIExpression()), !dbg !417
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !416, metadata !DIExpression()), !dbg !418
  %0 = load i64, ptr %nr.addr, align 8, !dbg !419
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !420
  br i1 %1, label %cond.true, label %cond.false, !dbg !420

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !421
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !422
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !423
  %conv = zext i1 %call to i32, !dbg !423
  br label %cond.end, !dbg !420

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !424
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !425
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !426
  %conv2 = zext i1 %call1 to i32, !dbg !426
  br label %cond.end, !dbg !420

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !420
  %tobool = icmp ne i32 %cond, 0, !dbg !420
  ret i1 %tobool, !dbg !427
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !428 dso_local i32 @check_tsc_unstable() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #6 align 16 !dbg !431 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !436, metadata !DIExpression()), !dbg !438
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !439
  call void @llvm.dbg.declare(metadata ptr %val, metadata !437, metadata !DIExpression()), !dbg !440
  %0 = load i32, ptr %msr.addr, align 4, !dbg !441
  %call = call i64 @__rdmsr(i32 noundef %0) #14, !dbg !442
  store i64 %call, ptr %val, align 8, !dbg !443
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #14, !dbg !444
  br i1 %call1, label %if.then, label %if.end, !dbg !446

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !447
  %2 = load i64, ptr %val, align 8, !dbg !448
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #14, !dbg !449
  br label %if.end, !dbg !449

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !451
  ret i64 %3, !dbg !452
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsrl(i32 noundef %msr, i64 noundef %val) #6 align 16 !dbg !453 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !457, metadata !DIExpression()), !dbg !459
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !458, metadata !DIExpression()), !dbg !460
  %0 = load i32, ptr %msr.addr, align 4, !dbg !461
  %1 = load i64, ptr %val.addr, align 8, !dbg !462
  %and = and i64 %1, 4294967295, !dbg !463
  %conv = trunc i64 %and to i32, !dbg !464
  %2 = load i64, ptr %val.addr, align 8, !dbg !465
  %shr = lshr i64 %2, 32, !dbg !466
  %conv1 = trunc i64 %shr to i32, !dbg !467
  call void @native_write_msr(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #14, !dbg !468
  ret void, !dbg !469
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #4 align 16 !dbg !470 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !475, metadata !DIExpression()), !dbg !476
  ret void, !dbg !477
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_tsc_sync__208_120_start_sync_check_timer7() #7 section ".init.text" align 16 !dbg !478 {
entry:
  %call = call i32 @start_sync_check_timer() #11, !dbg !479
  ret i32 %call, !dbg !479
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @start_sync_check_timer() #7 section ".init.text" align 16 !dbg !480 {
entry:
  %retval = alloca i32, align 4
  br i1 false, label %cond.true, label %cond.false, !dbg !481

cond.true:                                        ; preds = %entry
  br i1 false, label %lor.lhs.false, label %if.then, !dbg !483

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !481

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !483

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %lor.lhs.false, label %if.then, !dbg !483

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 289, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #14, !dbg !483
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !483

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 289) #14, !dbg !483
  br i1 %call5, label %lor.lhs.false, label %if.then, !dbg !481

lor.lhs.false:                                    ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load i32, ptr @tsc_clocksource_reliable, align 4, !dbg !484
  %tobool = icmp ne i32 %0, 0, !dbg !484
  br i1 %tobool, label %if.then, label %if.end, !dbg !485

if.then:                                          ; preds = %lor.lhs.false, %cond.false4, %cond.false3, %cond.true2, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !486
  br label %return, !dbg !486

if.end:                                           ; preds = %lor.lhs.false
  call void @init_timer_key(ptr noundef @tsc_sync_check_timer, ptr noundef @tsc_sync_check_timer_fn, i32 noundef 0, ptr noundef null, ptr noundef null) #14, !dbg !487
  %1 = load volatile i64, ptr @jiffies, align 64, !dbg !488
  %add = add i64 %1, 600000, !dbg !489
  store i64 %add, ptr getelementptr inbounds (%struct.timer_list, ptr @tsc_sync_check_timer, i32 0, i32 1), align 8, !dbg !490
  call void @add_timer(ptr noundef @tsc_sync_check_timer) #14, !dbg !491
  store i32 0, ptr %retval, align 4, !dbg !492
  br label %return, !dbg !492

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !493
  ret i32 %2, !dbg !493
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @tsc_store_and_check_tsc_adjust(i1 noundef zeroext %bootcpu) #0 align 16 !dbg !112 {
entry:
  %retval = alloca i1, align 1
  %bootcpu.addr = alloca i8, align 1
  %ref = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %refcpu = alloca i32, align 4
  %cpu = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify4 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %mask = alloca ptr, align 8
  %bootval = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp18 = alloca ptr, align 8
  %tmp25 = alloca i32, align 4
  %pscr_ret__26 = alloca i32, align 4
  %__vpp_verify28 = alloca ptr, align 8
  %pfo_val__31 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %__vpp_verify39 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %__ptr43 = alloca i64, align 8
  %tmp44 = alloca ptr, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp65 = alloca i64, align 8
  %tmp78 = alloca i32, align 4
  %tmp81 = alloca i64, align 8
  %frombool = zext i1 %bootcpu to i8
  store i8 %frombool, ptr %bootcpu.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bootcpu.addr, metadata !116, metadata !DIExpression()), !dbg !494
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref) #12, !dbg !495
  call void @llvm.dbg.declare(metadata ptr %ref, metadata !117, metadata !DIExpression()), !dbg !496
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #12, !dbg !495
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !118, metadata !DIExpression()), !dbg !497
  br label %do.body, !dbg !498

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !499
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !119, metadata !DIExpression()), !dbg !499
  store ptr null, ptr %__vpp_verify, align 8, !dbg !499
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !499
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !498
  br label %do.cond, !dbg !499

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !499

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !500
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !124, metadata !DIExpression()), !dbg !500
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @tsc_adjust) #13, !dbg !500, !srcloc !501
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !500
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !500
  %3 = inttoptr i64 %2 to ptr, !dbg !500
  store ptr %3, ptr %tmp1, align 8, !dbg !500
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !498
  %4 = load ptr, ptr %tmp1, align 8, !dbg !500
  store ptr %4, ptr %tmp, align 8, !dbg !499
  %5 = load ptr, ptr %tmp, align 8, !dbg !498
  store ptr %5, ptr %cur, align 8, !dbg !497
  call void @llvm.lifetime.start.p0(i64 4, ptr %refcpu) #12, !dbg !502
  call void @llvm.dbg.declare(metadata ptr %refcpu, metadata !126, metadata !DIExpression()), !dbg !503
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #12, !dbg !502
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !127, metadata !DIExpression()), !dbg !504
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #14, !dbg !505
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !506
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !128, metadata !DIExpression()), !dbg !506
  br label %do.body3, !dbg !506

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify4) #12, !dbg !507
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify4, metadata !131, metadata !DIExpression()), !dbg !507
  store ptr null, ptr %__vpp_verify4, align 8, !dbg !507
  %6 = load ptr, ptr %__vpp_verify4, align 8, !dbg !507
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify4) #12, !dbg !506
  br label %do.cond5, !dbg !507

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !507

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !508
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !133, metadata !DIExpression()), !dbg !508
  %7 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #13, !dbg !508, !srcloc !509
  store i32 %7, ptr %pfo_val__, align 4, !dbg !508
  %8 = load i32, ptr %pfo_val__, align 4, !dbg !508
  %conv = zext i32 %8 to i64, !dbg !508
  %conv8 = trunc i64 %conv to i32, !dbg !508
  store i32 %conv8, ptr %tmp7, align 4, !dbg !508
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !506
  %9 = load i32, ptr %tmp7, align 4, !dbg !508
  store i32 %9, ptr %pscr_ret__, align 4, !dbg !506
  %10 = load i32, ptr %pscr_ret__, align 4, !dbg !506
  store i32 %10, ptr %tmp9, align 4, !dbg !506
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !505
  %11 = load i32, ptr %tmp9, align 4, !dbg !506
  store i32 %11, ptr %tmp2, align 4, !dbg !505
  %12 = load i32, ptr %tmp2, align 4, !dbg !505
  store i32 %12, ptr %cpu, align 4, !dbg !504
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !510
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !135, metadata !DIExpression()), !dbg !511
  call void @llvm.lifetime.start.p0(i64 8, ptr %bootval) #12, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %bootval, metadata !137, metadata !DIExpression()), !dbg !513
  br i1 false, label %cond.true, label %cond.false, !dbg !514

cond.true:                                        ; preds = %do.end6
  br i1 true, label %if.end, label %if.then, !dbg !515

cond.false:                                       ; preds = %do.end6
  %call = call zeroext i1 @arch_test_bit(i64 noundef 289, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #14, !dbg !515
  br i1 %call, label %if.end, label %if.then, !dbg !514

if.then:                                          ; preds = %cond.false, %cond.true
  store i1 false, ptr %retval, align 1, !dbg !517
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !517

if.end:                                           ; preds = %cond.false, %cond.true
  %call11 = call i64 @native_read_msr(i32 noundef 59) #14, !dbg !518
  store i64 %call11, ptr %bootval, align 8, !dbg !518
  %13 = load i64, ptr %bootval, align 8, !dbg !519
  %14 = load ptr, ptr %cur, align 8, !dbg !520
  %bootval12 = getelementptr inbounds %struct.tsc_adjust, ptr %14, i32 0, i32 0, !dbg !521
  store i64 %13, ptr %bootval12, align 8, !dbg !522
  %15 = load volatile i64, ptr @jiffies, align 64, !dbg !523
  %add = add i64 %15, 1000, !dbg !524
  %16 = load ptr, ptr %cur, align 8, !dbg !525
  %nextcheck = getelementptr inbounds %struct.tsc_adjust, ptr %16, i32 0, i32 2, !dbg !526
  store i64 %add, ptr %nextcheck, align 8, !dbg !527
  %17 = load ptr, ptr %cur, align 8, !dbg !528
  %warned = getelementptr inbounds %struct.tsc_adjust, ptr %17, i32 0, i32 3, !dbg !529
  store i8 0, ptr %warned, align 8, !dbg !530
  %18 = load i64, ptr %bootval, align 8, !dbg !531
  %19 = load ptr, ptr %cur, align 8, !dbg !532
  %adjusted = getelementptr inbounds %struct.tsc_adjust, ptr %19, i32 0, i32 1, !dbg !533
  store i64 %18, ptr %adjusted, align 8, !dbg !534
  br label %do.body13, !dbg !535

do.body13:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify14) #12, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify14, metadata !138, metadata !DIExpression()), !dbg !536
  store ptr null, ptr %__vpp_verify14, align 8, !dbg !536
  %20 = load ptr, ptr %__vpp_verify14, align 8, !dbg !536
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify14) #12, !dbg !535
  br label %do.cond15, !dbg !536

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !536

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !537
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !141, metadata !DIExpression()), !dbg !537
  store i64 ptrtoint (ptr @cpu_core_map to i64), ptr %__ptr, align 8, !dbg !537
  %21 = load i64, ptr %__ptr, align 8, !dbg !537
  %22 = load i32, ptr %cpu, align 4, !dbg !537
  %idxprom = zext i32 %22 to i64, !dbg !537
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !537
  %23 = load i64, ptr %arrayidx, align 8, !dbg !537
  %add19 = add i64 %21, %23, !dbg !537
  %24 = inttoptr i64 %add19 to ptr, !dbg !537
  store ptr %24, ptr %tmp18, align 8, !dbg !537
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !535
  %25 = load ptr, ptr %tmp18, align 8, !dbg !537
  store ptr %25, ptr %tmp17, align 8, !dbg !536
  %26 = load ptr, ptr %tmp17, align 8, !dbg !535
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %26, i64 0, i64 0, !dbg !538
  store ptr %arraydecay, ptr %mask, align 8, !dbg !539
  %27 = load ptr, ptr %mask, align 8, !dbg !540
  %tobool = icmp ne ptr %27, null, !dbg !540
  br i1 %tobool, label %cond.true20, label %cond.false22, !dbg !540

cond.true20:                                      ; preds = %do.end16
  %28 = load ptr, ptr %mask, align 8, !dbg !541
  %29 = load i32, ptr %cpu, align 4, !dbg !542
  %call21 = call i32 @cpumask_any_but(ptr noundef %28, i32 noundef %29) #14, !dbg !543
  br label %cond.end, !dbg !540

cond.false22:                                     ; preds = %do.end16
  %30 = load i32, ptr @nr_cpu_ids, align 4, !dbg !544
  br label %cond.end, !dbg !540

cond.end:                                         ; preds = %cond.false22, %cond.true20
  %cond = phi i32 [ %call21, %cond.true20 ], [ %30, %cond.false22 ], !dbg !540
  store i32 %cond, ptr %refcpu, align 4, !dbg !545
  %31 = load i32, ptr %refcpu, align 4, !dbg !546
  %32 = load i32, ptr @nr_cpu_ids, align 4, !dbg !547
  %cmp = icmp uge i32 %31, %32, !dbg !548
  br i1 %cmp, label %if.then24, label %if.end37, !dbg !549

if.then24:                                        ; preds = %cond.end
  %33 = load ptr, ptr %cur, align 8, !dbg !550
  %34 = load i64, ptr %bootval, align 8, !dbg !551
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #14, !dbg !552
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__26) #12, !dbg !553
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__26, metadata !143, metadata !DIExpression()), !dbg !553
  br label %do.body27, !dbg !553

do.body27:                                        ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify28) #12, !dbg !554
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify28, metadata !148, metadata !DIExpression()), !dbg !554
  store ptr null, ptr %__vpp_verify28, align 8, !dbg !554
  %35 = load ptr, ptr %__vpp_verify28, align 8, !dbg !554
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify28) #12, !dbg !553
  br label %do.cond29, !dbg !554

do.cond29:                                        ; preds = %do.body27
  br label %do.end30, !dbg !554

do.end30:                                         ; preds = %do.cond29
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__31) #12, !dbg !555
  call void @llvm.dbg.declare(metadata ptr %pfo_val__31, metadata !150, metadata !DIExpression()), !dbg !555
  %36 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #13, !dbg !555, !srcloc !556
  store i32 %36, ptr %pfo_val__31, align 4, !dbg !555
  %37 = load i32, ptr %pfo_val__31, align 4, !dbg !555
  %conv33 = zext i32 %37 to i64, !dbg !555
  %conv34 = trunc i64 %conv33 to i32, !dbg !555
  store i32 %conv34, ptr %tmp32, align 4, !dbg !555
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__31) #12, !dbg !553
  %38 = load i32, ptr %tmp32, align 4, !dbg !555
  store i32 %38, ptr %pscr_ret__26, align 4, !dbg !553
  %39 = load i32, ptr %pscr_ret__26, align 4, !dbg !553
  store i32 %39, ptr %tmp35, align 4, !dbg !553
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__26) #12, !dbg !552
  %40 = load i32, ptr %tmp35, align 4, !dbg !553
  store i32 %40, ptr %tmp25, align 4, !dbg !552
  %41 = load i32, ptr %tmp25, align 4, !dbg !552
  %42 = load i8, ptr %bootcpu.addr, align 1, !dbg !557, !range !314, !noundef !315
  %tobool36 = trunc i8 %42 to i1, !dbg !557
  call void @tsc_sanitize_first_cpu(ptr noundef %33, i64 noundef %34, i32 noundef %41, i1 noundef zeroext %tobool36) #14, !dbg !558
  store i1 false, ptr %retval, align 1, !dbg !559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !559

if.end37:                                         ; preds = %cond.end
  br label %do.body38, !dbg !560

do.body38:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify39) #12, !dbg !561
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify39, metadata !152, metadata !DIExpression()), !dbg !561
  store ptr null, ptr %__vpp_verify39, align 8, !dbg !561
  %43 = load ptr, ptr %__vpp_verify39, align 8, !dbg !561
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify39) #12, !dbg !560
  br label %do.cond40, !dbg !561

do.cond40:                                        ; preds = %do.body38
  br label %do.end41, !dbg !561

do.end41:                                         ; preds = %do.cond40
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr43) #12, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %__ptr43, metadata !155, metadata !DIExpression()), !dbg !562
  store i64 ptrtoint (ptr @tsc_adjust to i64), ptr %__ptr43, align 8, !dbg !562
  %44 = load i64, ptr %__ptr43, align 8, !dbg !562
  %45 = load i32, ptr %refcpu, align 4, !dbg !562
  %idxprom45 = zext i32 %45 to i64, !dbg !562
  %arrayidx46 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom45, !dbg !562
  %46 = load i64, ptr %arrayidx46, align 8, !dbg !562
  %add47 = add i64 %44, %46, !dbg !562
  %47 = inttoptr i64 %add47 to ptr, !dbg !562
  store ptr %47, ptr %tmp44, align 8, !dbg !562
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr43) #12, !dbg !560
  %48 = load ptr, ptr %tmp44, align 8, !dbg !562
  store ptr %48, ptr %tmp42, align 8, !dbg !561
  %49 = load ptr, ptr %tmp42, align 8, !dbg !560
  store ptr %49, ptr %ref, align 8, !dbg !563
  %50 = load i64, ptr %bootval, align 8, !dbg !564
  %51 = load ptr, ptr %ref, align 8, !dbg !565
  %bootval48 = getelementptr inbounds %struct.tsc_adjust, ptr %51, i32 0, i32 0, !dbg !566
  %52 = load i64, ptr %bootval48, align 8, !dbg !566
  %cmp49 = icmp ne i64 %50, %52, !dbg !567
  br i1 %cmp49, label %if.then51, label %if.end89, !dbg !568

if.then51:                                        ; preds = %do.end41
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #12, !dbg !569
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !157, metadata !DIExpression()), !dbg !569
  store i8 1, ptr %__ret_do_once, align 1, !dbg !569
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #12, !dbg !570
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !160, metadata !DIExpression()), !dbg !570
  %53 = load i8, ptr %__ret_do_once, align 1, !dbg !570, !range !314, !noundef !315
  %tobool52 = trunc i8 %53 to i1, !dbg !570
  %lnot = xor i1 %tobool52, true, !dbg !570
  %lnot53 = xor i1 %lnot, true, !dbg !570
  %frombool54 = zext i1 %lnot53 to i8, !dbg !570
  store i8 %frombool54, ptr %__ret_cond, align 1, !dbg !570
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #12, !dbg !570
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !163, metadata !DIExpression()), !dbg !570
  store i8 0, ptr %__ret_once, align 1, !dbg !570
  %54 = load i8, ptr %__ret_cond, align 1, !dbg !571, !range !314, !noundef !315
  %tobool55 = trunc i8 %54 to i1, !dbg !571
  br i1 %tobool55, label %land.rhs, label %land.end, !dbg !571

land.rhs:                                         ; preds = %if.then51
  %55 = load i8, ptr @tsc_store_and_check_tsc_adjust.__already_done, align 1, !dbg !571, !range !314, !noundef !315
  %tobool57 = trunc i8 %55 to i1, !dbg !571
  %lnot58 = xor i1 %tobool57, true, !dbg !571
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then51
  %56 = phi i1 [ false, %if.then51 ], [ %lnot58, %land.rhs ], !dbg !573
  %lnot59 = xor i1 %56, true, !dbg !571
  %lnot60 = xor i1 %lnot59, true, !dbg !571
  %lnot.ext = zext i1 %lnot60 to i32, !dbg !571
  %conv61 = sext i32 %lnot.ext to i64, !dbg !571
  %expval = call i64 @llvm.expect.i64(i64 %conv61, i64 0), !dbg !571
  %tobool62 = icmp ne i64 %expval, 0, !dbg !571
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !570

if.then63:                                        ; preds = %land.end
  store i8 1, ptr @tsc_store_and_check_tsc_adjust.__already_done, align 1, !dbg !574
  store i8 1, ptr %__ret_once, align 1, !dbg !574
  br label %if.end64, !dbg !574

if.end64:                                         ; preds = %if.then63, %land.end
  %57 = load i8, ptr %__ret_once, align 1, !dbg !570, !range !314, !noundef !315
  %tobool66 = trunc i8 %57 to i1, !dbg !570
  %lnot67 = xor i1 %tobool66, true, !dbg !570
  %lnot69 = xor i1 %lnot67, true, !dbg !570
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !570
  %conv71 = sext i32 %lnot.ext70 to i64, !dbg !570
  %expval72 = call i64 @llvm.expect.i64(i64 %conv71, i64 0), !dbg !570
  store i64 %expval72, ptr %tmp65, align 8, !dbg !571
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #12, !dbg !576
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #12, !dbg !576
  %58 = load i64, ptr %tmp65, align 8, !dbg !570
  %tobool73 = icmp ne i64 %58, 0, !dbg !576
  br i1 %tobool73, label %if.then74, label %if.end80, !dbg !569

if.then74:                                        ; preds = %if.end64
  br label %do.body75, !dbg !577

do.body75:                                        ; preds = %if.then74
  br label %do.cond76, !dbg !579

do.cond76:                                        ; preds = %do.body75
  br label %do.end77, !dbg !579

do.end77:                                         ; preds = %do.cond76
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #11, !dbg !577
  store i32 %call79, ptr %tmp78, align 4, !dbg !579
  %59 = load i32, ptr %tmp78, align 4, !dbg !577
  br label %if.end80, !dbg !576

if.end80:                                         ; preds = %do.end77, %if.end64
  %60 = load i8, ptr %__ret_do_once, align 1, !dbg !569, !range !314, !noundef !315
  %tobool82 = trunc i8 %60 to i1, !dbg !569
  %lnot83 = xor i1 %tobool82, true, !dbg !569
  %lnot85 = xor i1 %lnot83, true, !dbg !569
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !569
  %conv87 = sext i32 %lnot.ext86 to i64, !dbg !569
  %expval88 = call i64 @llvm.expect.i64(i64 %conv87, i64 0), !dbg !569
  store i64 %expval88, ptr %tmp81, align 8, !dbg !576
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #12, !dbg !581
  %61 = load i64, ptr %tmp81, align 8, !dbg !569
  br label %if.end89, !dbg !581

if.end89:                                         ; preds = %if.end80, %do.end41
  %62 = load i64, ptr %bootval, align 8, !dbg !582
  %63 = load ptr, ptr %ref, align 8, !dbg !584
  %adjusted90 = getelementptr inbounds %struct.tsc_adjust, ptr %63, i32 0, i32 1, !dbg !585
  %64 = load i64, ptr %adjusted90, align 8, !dbg !585
  %cmp91 = icmp ne i64 %62, %64, !dbg !586
  br i1 %cmp91, label %if.then93, label %if.end97, !dbg !587

if.then93:                                        ; preds = %if.end89
  %65 = load ptr, ptr %ref, align 8, !dbg !588
  %adjusted94 = getelementptr inbounds %struct.tsc_adjust, ptr %65, i32 0, i32 1, !dbg !590
  %66 = load i64, ptr %adjusted94, align 8, !dbg !590
  %67 = load ptr, ptr %cur, align 8, !dbg !591
  %adjusted95 = getelementptr inbounds %struct.tsc_adjust, ptr %67, i32 0, i32 1, !dbg !592
  store i64 %66, ptr %adjusted95, align 8, !dbg !593
  %68 = load ptr, ptr %ref, align 8, !dbg !594
  %adjusted96 = getelementptr inbounds %struct.tsc_adjust, ptr %68, i32 0, i32 1, !dbg !595
  %69 = load i64, ptr %adjusted96, align 8, !dbg !595
  call void @wrmsrl(i32 noundef 59, i64 noundef %69) #14, !dbg !596
  br label %if.end97, !dbg !597

if.end97:                                         ; preds = %if.then93, %if.end89
  store i1 true, ptr %retval, align 1, !dbg !598
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !598

cleanup:                                          ; preds = %if.end97, %do.end30, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bootval) #12, !dbg !599
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !599
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #12, !dbg !599
  call void @llvm.lifetime.end.p0(i64 4, ptr %refcpu) #12, !dbg !599
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #12, !dbg !599
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref) #12, !dbg !599
  %70 = load i1, ptr %retval, align 1, !dbg !599
  ret i1 %70, !dbg !599
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_any_but(ptr noundef %mask, i32 noundef %cpu) #6 align 16 !dbg !600 {
entry:
  %mask.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !604, metadata !DIExpression()), !dbg !607
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !605, metadata !DIExpression()), !dbg !608
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !609
  call void @llvm.dbg.declare(metadata ptr %i, metadata !606, metadata !DIExpression()), !dbg !610
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !611
  %call = call i32 @cpumask_check(i32 noundef %0) #14, !dbg !612
  store i32 0, ptr %i, align 4, !dbg !613
  br label %for.cond, !dbg !613

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %mask.addr, align 8, !dbg !615
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !615
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !615
  %2 = load i32, ptr %i, align 4, !dbg !615
  %conv = zext i32 %2 to i64, !dbg !615
  %call1 = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv) #14, !dbg !615
  %conv2 = trunc i64 %call1 to i32, !dbg !615
  store i32 %conv2, ptr %i, align 4, !dbg !615
  %3 = load i32, ptr %i, align 4, !dbg !615
  %cmp = icmp ult i32 %3, 64, !dbg !615
  br i1 %cmp, label %for.body, label %for.end, !dbg !613

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !dbg !617
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !619
  %cmp4 = icmp ne i32 %4, %5, !dbg !620
  br i1 %cmp4, label %if.then, label %if.end, !dbg !621

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !622

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !619

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4, !dbg !615
  %inc = add i32 %6, 1, !dbg !615
  store i32 %inc, ptr %i, align 4, !dbg !615
  br label %for.cond, !dbg !615, !llvm.loop !623

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i32, ptr %i, align 4, !dbg !627
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !628
  ret i32 %7, !dbg !629
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tsc_sanitize_first_cpu(ptr noundef %cur, i64 noundef %bootval, i32 noundef %cpu, i1 noundef zeroext %bootcpu) #0 align 16 !dbg !630 {
entry:
  %cur.addr = alloca ptr, align 8
  %bootval.addr = alloca i64, align 8
  %cpu.addr = alloca i32, align 4
  %bootcpu.addr = alloca i8, align 1
  %tmp = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store ptr %cur, ptr %cur.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cur.addr, metadata !634, metadata !DIExpression()), !dbg !638
  store i64 %bootval, ptr %bootval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bootval.addr, metadata !635, metadata !DIExpression()), !dbg !639
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !636, metadata !DIExpression()), !dbg !640
  %frombool = zext i1 %bootcpu to i8
  store i8 %frombool, ptr %bootcpu.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bootcpu.addr, metadata !637, metadata !DIExpression()), !dbg !641
  %0 = load i8, ptr %bootcpu.addr, align 1, !dbg !642, !range !314, !noundef !315
  %tobool = trunc i8 %0 to i1, !dbg !642
  br i1 %tobool, label %land.lhs.true, label %if.end10, !dbg !644

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, ptr %bootval.addr, align 8, !dbg !645
  %cmp = icmp ne i64 %1, 0, !dbg !646
  br i1 %cmp, label %if.then, label %if.end10, !dbg !647

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8, ptr @tsc_async_resets, align 1, !dbg !648, !range !314, !noundef !315
  %tobool1 = trunc i8 %2 to i1, !dbg !648
  %lnot = xor i1 %tobool1, true, !dbg !648
  %lnot2 = xor i1 %lnot, true, !dbg !648
  %lnot3 = xor i1 %lnot2, true, !dbg !648
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !648
  %conv = sext i32 %lnot.ext to i64, !dbg !648
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !648
  %tobool4 = icmp ne i64 %expval, 0, !dbg !648
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !651

if.then5:                                         ; preds = %if.then
  br label %do.body, !dbg !652

do.body:                                          ; preds = %if.then5
  br label %do.end, !dbg !655

do.end:                                           ; preds = %do.body
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !652
  %4 = load i64, ptr %bootval.addr, align 8, !dbg !652
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef %3, i64 noundef %4) #11, !dbg !652
  store i32 %call, ptr %tmp, align 4, !dbg !655
  %5 = load i32, ptr %tmp, align 4, !dbg !652
  call void @wrmsrl(i32 noundef 59, i64 noundef 0) #14, !dbg !657
  store i64 0, ptr %bootval.addr, align 8, !dbg !658
  br label %if.end, !dbg !659

if.else:                                          ; preds = %if.then
  br label %do.body6, !dbg !660

do.body6:                                         ; preds = %if.else
  br label %do.end7, !dbg !663

do.end7:                                          ; preds = %do.body6
  %6 = load i32, ptr %cpu.addr, align 4, !dbg !660
  %7 = load i64, ptr %bootval.addr, align 8, !dbg !660
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef %6, i64 noundef %7) #11, !dbg !660
  store i32 %call9, ptr %tmp8, align 4, !dbg !663
  %8 = load i32, ptr %tmp8, align 4, !dbg !660
  br label %if.end

if.end:                                           ; preds = %do.end7, %do.end
  br label %if.end10, !dbg !665

if.end10:                                         ; preds = %if.end, %land.lhs.true, %entry
  %9 = load i64, ptr %bootval.addr, align 8, !dbg !666
  %10 = load ptr, ptr %cur.addr, align 8, !dbg !667
  %adjusted = getelementptr inbounds %struct.tsc_adjust, ptr %10, i32 0, i32 1, !dbg !668
  store i64 %9, ptr %adjusted, align 8, !dbg !669
  ret void, !dbg !670
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @check_tsc_sync_target() #0 align 16 !dbg !671 {
entry:
  %cur = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify4 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %cur_max_warp = alloca i64, align 8
  %gbl_max_warp = alloca i64, align 8
  %cpus = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #12, !dbg !693
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !675, metadata !DIExpression()), !dbg !694
  br label %do.body, !dbg !695

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !696
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !676, metadata !DIExpression()), !dbg !696
  store ptr null, ptr %__vpp_verify, align 8, !dbg !696
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !696
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !695
  br label %do.cond, !dbg !696

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !696

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !697
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !679, metadata !DIExpression()), !dbg !697
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @tsc_adjust) #13, !dbg !697, !srcloc !698
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !697
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !697
  %3 = inttoptr i64 %2 to ptr, !dbg !697
  store ptr %3, ptr %tmp1, align 8, !dbg !697
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !695
  %4 = load ptr, ptr %tmp1, align 8, !dbg !697
  store ptr %4, ptr %tmp, align 8, !dbg !696
  %5 = load ptr, ptr %tmp, align 8, !dbg !695
  store ptr %5, ptr %cur, align 8, !dbg !694
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #12, !dbg !699
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !681, metadata !DIExpression()), !dbg !700
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #14, !dbg !701
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !702
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !682, metadata !DIExpression()), !dbg !702
  br label %do.body3, !dbg !702

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify4) #12, !dbg !703
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify4, metadata !685, metadata !DIExpression()), !dbg !703
  store ptr null, ptr %__vpp_verify4, align 8, !dbg !703
  %6 = load ptr, ptr %__vpp_verify4, align 8, !dbg !703
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify4) #12, !dbg !702
  br label %do.cond5, !dbg !703

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !703

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !704
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !687, metadata !DIExpression()), !dbg !704
  %7 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #13, !dbg !704, !srcloc !705
  store i32 %7, ptr %pfo_val__, align 4, !dbg !704
  %8 = load i32, ptr %pfo_val__, align 4, !dbg !704
  %conv = zext i32 %8 to i64, !dbg !704
  %conv8 = trunc i64 %conv to i32, !dbg !704
  store i32 %conv8, ptr %tmp7, align 4, !dbg !704
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !702
  %9 = load i32, ptr %tmp7, align 4, !dbg !704
  store i32 %9, ptr %pscr_ret__, align 4, !dbg !702
  %10 = load i32, ptr %pscr_ret__, align 4, !dbg !702
  store i32 %10, ptr %tmp9, align 4, !dbg !702
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !701
  %11 = load i32, ptr %tmp9, align 4, !dbg !702
  store i32 %11, ptr %tmp2, align 4, !dbg !701
  %12 = load i32, ptr %tmp2, align 4, !dbg !701
  store i32 %12, ptr %cpu, align 4, !dbg !700
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_max_warp) #12, !dbg !706
  call void @llvm.dbg.declare(metadata ptr %cur_max_warp, metadata !689, metadata !DIExpression()), !dbg !707
  call void @llvm.lifetime.start.p0(i64 8, ptr %gbl_max_warp) #12, !dbg !706
  call void @llvm.dbg.declare(metadata ptr %gbl_max_warp, metadata !690, metadata !DIExpression()), !dbg !708
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpus) #12, !dbg !709
  call void @llvm.dbg.declare(metadata ptr %cpus, metadata !691, metadata !DIExpression()), !dbg !710
  store i32 2, ptr %cpus, align 4, !dbg !710
  %call = call i32 @unsynchronized_tsc() #14, !dbg !711
  %tobool = icmp ne i32 %call, 0, !dbg !711
  br i1 %tobool, label %if.then, label %if.end, !dbg !713

if.then:                                          ; preds = %do.end6
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !714

if.end:                                           ; preds = %do.end6
  %call10 = call zeroext i1 @tsc_store_and_check_tsc_adjust(i1 noundef zeroext false) #14, !dbg !715
  br i1 %call10, label %if.then13, label %lor.lhs.false, !dbg !717

lor.lhs.false:                                    ; preds = %if.end
  %13 = load i32, ptr @tsc_clocksource_reliable, align 4, !dbg !718
  %tobool12 = icmp ne i32 %13, 0, !dbg !718
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !719

if.then13:                                        ; preds = %lor.lhs.false, %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !720

if.end14:                                         ; preds = %lor.lhs.false
  %call15 = call i32 @cpumask_first(ptr noundef @__cpu_online_mask) #14, !dbg !721
  %14 = load i32, ptr %cpu, align 4, !dbg !722
  %conv16 = zext i32 %14 to i64, !dbg !723
  %15 = inttoptr i64 %conv16 to ptr, !dbg !724
  %call17 = call i32 @smp_call_function_single(i32 noundef %call15, ptr noundef @check_tsc_sync_source, ptr noundef %15, i32 noundef 0) #14, !dbg !725
  br label %retry, !dbg !725

retry:                                            ; preds = %do.end37, %if.end14
  call void @llvm.dbg.label(metadata !692), !dbg !726
  call void @atomic_inc(ptr noundef @start_count) #14, !dbg !727
  br label %while.cond, !dbg !728

while.cond:                                       ; preds = %while.body, %retry
  %call18 = call i32 @atomic_read(ptr noundef @start_count) #14, !dbg !729
  %16 = load i32, ptr %cpus, align 4, !dbg !730
  %cmp = icmp ne i32 %call18, %16, !dbg !731
  br i1 %cmp, label %while.body, label %while.end, !dbg !728

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #14, !dbg !732
  br label %while.cond, !dbg !728, !llvm.loop !733

while.end:                                        ; preds = %while.cond
  %17 = load i32, ptr %cpu, align 4, !dbg !735
  %call20 = call i32 @loop_timeout(i32 noundef %17) #14, !dbg !736
  %call21 = call i64 @check_tsc_warp(i32 noundef %call20) #14, !dbg !737
  store i64 %call21, ptr %cur_max_warp, align 8, !dbg !738
  %18 = load i64, ptr @max_warp, align 8, !dbg !739
  store i64 %18, ptr %gbl_max_warp, align 8, !dbg !740
  call void @atomic_inc(ptr noundef @stop_count) #14, !dbg !741
  br label %while.cond22, !dbg !742

while.cond22:                                     ; preds = %while.body26, %while.end
  %call23 = call i32 @atomic_read(ptr noundef @stop_count) #14, !dbg !743
  %19 = load i32, ptr %cpus, align 4, !dbg !744
  %cmp24 = icmp ne i32 %call23, %19, !dbg !745
  br i1 %cmp24, label %while.body26, label %while.end27, !dbg !742

while.body26:                                     ; preds = %while.cond22
  call void @cpu_relax() #14, !dbg !746
  br label %while.cond22, !dbg !742, !llvm.loop !747

while.end27:                                      ; preds = %while.cond22
  call void @atomic_set(ptr noundef @stop_count, i32 noundef 0) #14, !dbg !749
  %call28 = call i32 @atomic_read(ptr noundef @test_runs) #14, !dbg !750
  %tobool29 = icmp ne i32 %call28, 0, !dbg !750
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !752

if.then30:                                        ; preds = %while.end27
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !753

if.end31:                                         ; preds = %while.end27
  %20 = load i64, ptr %cur_max_warp, align 8, !dbg !754
  %tobool32 = icmp ne i64 %20, 0, !dbg !754
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !756

if.then33:                                        ; preds = %if.end31
  %21 = load i64, ptr %gbl_max_warp, align 8, !dbg !757
  %sub = sub i64 0, %21, !dbg !758
  store i64 %sub, ptr %cur_max_warp, align 8, !dbg !759
  br label %if.end34, !dbg !760

if.end34:                                         ; preds = %if.then33, %if.end31
  %22 = load i64, ptr %cur_max_warp, align 8, !dbg !761
  %23 = load ptr, ptr %cur, align 8, !dbg !762
  %adjusted = getelementptr inbounds %struct.tsc_adjust, ptr %23, i32 0, i32 1, !dbg !763
  %24 = load i64, ptr %adjusted, align 8, !dbg !764
  %add = add i64 %24, %22, !dbg !764
  store i64 %add, ptr %adjusted, align 8, !dbg !764
  br label %do.body35, !dbg !765

do.body35:                                        ; preds = %if.end34
  br label %do.cond36, !dbg !767

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !767

do.end37:                                         ; preds = %do.cond36
  %25 = load i32, ptr %cpu, align 4, !dbg !765
  %26 = load i64, ptr %cur_max_warp, align 8, !dbg !765
  %27 = load ptr, ptr %cur, align 8, !dbg !765
  %adjusted39 = getelementptr inbounds %struct.tsc_adjust, ptr %27, i32 0, i32 1, !dbg !765
  %28 = load i64, ptr %adjusted39, align 8, !dbg !765
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %25, i64 noundef %26, i64 noundef %28) #11, !dbg !765
  store i32 %call40, ptr %tmp38, align 4, !dbg !767
  %29 = load i32, ptr %tmp38, align 4, !dbg !765
  %30 = load ptr, ptr %cur, align 8, !dbg !769
  %adjusted41 = getelementptr inbounds %struct.tsc_adjust, ptr %30, i32 0, i32 1, !dbg !770
  %31 = load i64, ptr %adjusted41, align 8, !dbg !770
  call void @wrmsrl(i32 noundef 59, i64 noundef %31) #14, !dbg !771
  br label %retry, !dbg !772

cleanup:                                          ; preds = %if.then30, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpus) #12, !dbg !773
  call void @llvm.lifetime.end.p0(i64 8, ptr %gbl_max_warp) #12, !dbg !773
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_max_warp) #12, !dbg !773
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #12, !dbg !773
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #12, !dbg !773
  ret void, !dbg !773
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !774 dso_local i32 @unsynchronized_tsc() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !775 dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_first(ptr noundef %srcp) #6 align 16 !dbg !783 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !787, metadata !DIExpression()), !dbg !788
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !789
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !789
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !789
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 64) #14, !dbg !790
  %conv = trunc i64 %call to i32, !dbg !790
  ret i32 %conv, !dbg !791
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_tsc_sync_source(ptr noundef %__cpu) #0 align 16 !dbg !792 {
entry:
  %__cpu.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %cpus = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store ptr %__cpu, ptr %__cpu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__cpu.addr, metadata !794, metadata !DIExpression()), !dbg !809
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #12, !dbg !810
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !795, metadata !DIExpression()), !dbg !811
  %0 = load ptr, ptr %__cpu.addr, align 8, !dbg !812
  %1 = ptrtoint ptr %0 to i64, !dbg !813
  %conv = trunc i64 %1 to i32, !dbg !813
  store i32 %conv, ptr %cpu, align 4, !dbg !811
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpus) #12, !dbg !814
  call void @llvm.dbg.declare(metadata ptr %cpus, metadata !796, metadata !DIExpression()), !dbg !815
  store i32 2, ptr %cpus, align 4, !dbg !815
  br i1 false, label %cond.true, label %cond.false, !dbg !816

cond.true:                                        ; preds = %entry
  br i1 true, label %if.else, label %if.then, !dbg !817

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 289, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #14, !dbg !817
  br i1 %call, label %if.else, label %if.then, !dbg !816

if.then:                                          ; preds = %cond.false, %cond.true
  call void @atomic_set(ptr noundef @test_runs, i32 noundef 1) #14, !dbg !819
  br label %if.end, !dbg !819

if.else:                                          ; preds = %cond.false, %cond.true
  call void @atomic_set(ptr noundef @test_runs, i32 noundef 3) #14, !dbg !820
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %retry, !dbg !817

retry:                                            ; preds = %if.then48, %if.end
  call void @llvm.dbg.label(metadata !797), !dbg !821
  br label %while.cond, !dbg !822

while.cond:                                       ; preds = %while.body, %retry
  %call2 = call i32 @atomic_read(ptr noundef @start_count) #14, !dbg !823
  %2 = load i32, ptr %cpus, align 4, !dbg !824
  %sub = sub i32 %2, 1, !dbg !825
  %cmp = icmp ne i32 %call2, %sub, !dbg !826
  br i1 %cmp, label %while.body, label %while.end, !dbg !822

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #14, !dbg !827
  br label %while.cond, !dbg !822, !llvm.loop !828

while.end:                                        ; preds = %while.cond
  call void @atomic_inc(ptr noundef @start_count) #14, !dbg !830
  %3 = load i32, ptr %cpu, align 4, !dbg !831
  %call4 = call i32 @loop_timeout(i32 noundef %3) #14, !dbg !832
  %call5 = call i64 @check_tsc_warp(i32 noundef %call4) #14, !dbg !833
  br label %while.cond6, !dbg !834

while.cond6:                                      ; preds = %while.body11, %while.end
  %call7 = call i32 @atomic_read(ptr noundef @stop_count) #14, !dbg !835
  %4 = load i32, ptr %cpus, align 4, !dbg !836
  %sub8 = sub i32 %4, 1, !dbg !837
  %cmp9 = icmp ne i32 %call7, %sub8, !dbg !838
  br i1 %cmp9, label %while.body11, label %while.end12, !dbg !834

while.body11:                                     ; preds = %while.cond6
  call void @cpu_relax() #14, !dbg !839
  br label %while.cond6, !dbg !834, !llvm.loop !840

while.end12:                                      ; preds = %while.cond6
  %5 = load i32, ptr @nr_warps, align 4, !dbg !842
  %tobool = icmp ne i32 %5, 0, !dbg !842
  br i1 %tobool, label %if.else14, label %if.then13, !dbg !843

if.then13:                                        ; preds = %while.end12
  call void @atomic_set(ptr noundef @test_runs, i32 noundef 0) #14, !dbg !844
  store i32 0, ptr %tmp, align 4, !dbg !846
  %6 = load i32, ptr %tmp, align 4, !dbg !849
  br label %if.end44, !dbg !850

if.else14:                                        ; preds = %while.end12
  %call15 = call zeroext i1 @atomic_dec_and_test(ptr noundef @test_runs) #14, !dbg !851
  br i1 %call15, label %if.then18, label %lor.lhs.false, !dbg !852

lor.lhs.false:                                    ; preds = %if.else14
  %7 = load i32, ptr @random_warps, align 4, !dbg !853
  %tobool17 = icmp ne i32 %7, 0, !dbg !853
  br i1 %tobool17, label %if.then18, label %if.end43, !dbg !854

if.then18:                                        ; preds = %lor.lhs.false, %if.else14
  call void @atomic_set(ptr noundef @test_runs, i32 noundef 0) #14, !dbg !855
  br label %do.body, !dbg !856

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !857

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !857

do.end:                                           ; preds = %do.cond
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #14, !dbg !859
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !860
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !798, metadata !DIExpression()), !dbg !860
  br label %do.body21, !dbg !860

do.body21:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !861
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !805, metadata !DIExpression()), !dbg !861
  store ptr null, ptr %__vpp_verify, align 8, !dbg !861
  %8 = load ptr, ptr %__vpp_verify, align 8, !dbg !861
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !860
  br label %do.cond22, !dbg !861

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !861

do.end23:                                         ; preds = %do.cond22
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !807, metadata !DIExpression()), !dbg !862
  %9 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #13, !dbg !862, !srcloc !863
  store i32 %9, ptr %pfo_val__, align 4, !dbg !862
  %10 = load i32, ptr %pfo_val__, align 4, !dbg !862
  %conv25 = zext i32 %10 to i64, !dbg !862
  %conv26 = trunc i64 %conv25 to i32, !dbg !862
  store i32 %conv26, ptr %tmp24, align 4, !dbg !862
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !860
  %11 = load i32, ptr %tmp24, align 4, !dbg !862
  store i32 %11, ptr %pscr_ret__, align 4, !dbg !860
  %12 = load i32, ptr %pscr_ret__, align 4, !dbg !860
  store i32 %12, ptr %tmp27, align 4, !dbg !860
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !859
  %13 = load i32, ptr %tmp27, align 4, !dbg !860
  store i32 %13, ptr %tmp20, align 4, !dbg !859
  %14 = load i32, ptr %tmp20, align 4, !dbg !859
  %15 = load i32, ptr %cpu, align 4, !dbg !856
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %14, i32 noundef %15) #11, !dbg !856
  store i32 %call28, ptr %tmp19, align 4, !dbg !857
  %16 = load i32, ptr %tmp19, align 4, !dbg !856
  br label %do.body29, !dbg !864

do.body29:                                        ; preds = %do.end23
  br label %do.cond30, !dbg !866

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !866

do.end31:                                         ; preds = %do.cond30
  %17 = load i64, ptr @max_warp, align 8, !dbg !864
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, i64 noundef %17) #11, !dbg !864
  store i32 %call33, ptr %tmp32, align 4, !dbg !866
  %18 = load i32, ptr %tmp32, align 4, !dbg !864
  %19 = load i32, ptr @random_warps, align 4, !dbg !868
  %tobool34 = icmp ne i32 %19, 0, !dbg !868
  br i1 %tobool34, label %if.then35, label %if.end41, !dbg !870

if.then35:                                        ; preds = %do.end31
  br label %do.body36, !dbg !871

do.body36:                                        ; preds = %if.then35
  br label %do.cond37, !dbg !873

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !873

do.end38:                                         ; preds = %do.cond37
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9) #11, !dbg !871
  store i32 %call40, ptr %tmp39, align 4, !dbg !873
  %20 = load i32, ptr %tmp39, align 4, !dbg !871
  br label %if.end41, !dbg !875

if.end41:                                         ; preds = %do.end38, %do.end31
  %call42 = call zeroext i1 @schedule_work(ptr noundef @tsc_sync_work) #14, !dbg !876
  br label %if.end43, !dbg !877

if.end43:                                         ; preds = %if.end41, %lor.lhs.false
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then13
  call void @atomic_set(ptr noundef @start_count, i32 noundef 0) #14, !dbg !878
  store i32 0, ptr @random_warps, align 4, !dbg !879
  store i32 0, ptr @nr_warps, align 4, !dbg !880
  store i64 0, ptr @max_warp, align 8, !dbg !881
  store i64 0, ptr @last_tsc, align 8, !dbg !882
  call void @atomic_inc(ptr noundef @stop_count) #14, !dbg !883
  %call45 = call i32 @atomic_read(ptr noundef @test_runs) #14, !dbg !884
  %cmp46 = icmp sgt i32 %call45, 0, !dbg !886
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !887

if.then48:                                        ; preds = %if.end44
  br label %retry, !dbg !888

if.end49:                                         ; preds = %if.end44
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpus) #12, !dbg !889
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #12, !dbg !889
  ret void, !dbg !889
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #4 align 16 !dbg !890 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !896, metadata !DIExpression()), !dbg !897
  %0 = load ptr, ptr %v.addr, align 8, !dbg !898
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !899
  %1 = load ptr, ptr %v.addr, align 8, !dbg !900
  call void @raw_atomic_inc(ptr noundef %1) #14, !dbg !901
  ret void, !dbg !902
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #4 align 16 !dbg !903 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !909, metadata !DIExpression()), !dbg !910
  %0 = load ptr, ptr %v.addr, align 8, !dbg !911
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #14, !dbg !912
  %1 = load ptr, ptr %v.addr, align 8, !dbg !913
  %call = call i32 @raw_atomic_read(ptr noundef %1) #14, !dbg !914
  ret i32 %call, !dbg !915
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #4 align 16 !dbg !916 {
entry:
  call void @rep_nop() #14, !dbg !918
  ret void, !dbg !919
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @check_tsc_warp(i32 noundef %timeout) #0 align 16 !dbg !920 {
entry:
  %timeout.addr = alloca i32, align 4
  %start = alloca i64, align 8
  %now = alloca i64, align 8
  %prev = alloca i64, align 8
  %end = alloca i64, align 8
  %cur_max_warp = alloca i64, align 8
  %i = alloca i32, align 4
  %cur_warps = alloca i32, align 4
  %__UNIQUE_ID___x210 = alloca i64, align 8
  %__UNIQUE_ID___y211 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp69 = alloca i64, align 8
  store i32 %timeout, ptr %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !924, metadata !DIExpression()), !dbg !946
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #12, !dbg !947
  call void @llvm.dbg.declare(metadata ptr %start, metadata !925, metadata !DIExpression()), !dbg !948
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #12, !dbg !947
  call void @llvm.dbg.declare(metadata ptr %now, metadata !926, metadata !DIExpression()), !dbg !949
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #12, !dbg !947
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !927, metadata !DIExpression()), !dbg !950
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #12, !dbg !947
  call void @llvm.dbg.declare(metadata ptr %end, metadata !928, metadata !DIExpression()), !dbg !951
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_max_warp) #12, !dbg !947
  call void @llvm.dbg.declare(metadata ptr %cur_max_warp, metadata !929, metadata !DIExpression()), !dbg !952
  store i64 0, ptr %cur_max_warp, align 8, !dbg !952
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !953
  call void @llvm.dbg.declare(metadata ptr %i, metadata !930, metadata !DIExpression()), !dbg !954
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_warps) #12, !dbg !953
  call void @llvm.dbg.declare(metadata ptr %cur_warps, metadata !931, metadata !DIExpression()), !dbg !955
  store i32 0, ptr %cur_warps, align 4, !dbg !955
  %call = call i64 @rdtsc_ordered() #14, !dbg !956
  store i64 %call, ptr %start, align 8, !dbg !957
  %0 = load i64, ptr %start, align 8, !dbg !958
  %1 = load i32, ptr @tsc_khz, align 4, !dbg !959
  %conv = zext i32 %1 to i64, !dbg !960
  %2 = load i32, ptr %timeout.addr, align 4, !dbg !961
  %conv1 = zext i32 %2 to i64, !dbg !961
  %mul = mul i64 %conv, %conv1, !dbg !962
  %add = add i64 %0, %mul, !dbg !963
  store i64 %add, ptr %end, align 8, !dbg !964
  store i32 0, ptr %i, align 4, !dbg !965
  br label %for.cond, !dbg !966

for.cond:                                         ; preds = %for.inc, %entry
  call void @queued_spin_lock(ptr noundef @sync_lock) #14, !dbg !967
  %3 = load i64, ptr @last_tsc, align 8, !dbg !968
  store i64 %3, ptr %prev, align 8, !dbg !969
  %call2 = call i64 @rdtsc_ordered() #14, !dbg !970
  store i64 %call2, ptr %now, align 8, !dbg !971
  %4 = load i64, ptr %now, align 8, !dbg !972
  store i64 %4, ptr @last_tsc, align 8, !dbg !973
  call void @queued_spin_unlock(ptr noundef @sync_lock) #14, !dbg !974
  %5 = load i32, ptr %i, align 4, !dbg !975
  %and = and i32 %5, 7, !dbg !975
  %tobool = icmp ne i32 %and, 0, !dbg !975
  %lnot = xor i1 %tobool, true, !dbg !975
  %lnot3 = xor i1 %lnot, true, !dbg !975
  %lnot4 = xor i1 %lnot3, true, !dbg !975
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !975
  %conv5 = sext i32 %lnot.ext to i64, !dbg !975
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !975
  %tobool6 = icmp ne i64 %expval, 0, !dbg !975
  br i1 %tobool6, label %if.then, label %if.end11, !dbg !977

if.then:                                          ; preds = %for.cond
  %6 = load i64, ptr %now, align 8, !dbg !978
  %7 = load i64, ptr %end, align 8, !dbg !981
  %cmp = icmp ugt i64 %6, %7, !dbg !982
  br i1 %cmp, label %if.then10, label %lor.lhs.false, !dbg !983

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i32, ptr %i, align 4, !dbg !984
  %cmp8 = icmp sgt i32 %8, 10000000, !dbg !985
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !986

if.then10:                                        ; preds = %lor.lhs.false, %if.then
  br label %for.end, !dbg !987

if.end:                                           ; preds = %lor.lhs.false
  call void @cpu_relax() #14, !dbg !988
  call void @touch_nmi_watchdog() #14, !dbg !989
  br label %if.end11, !dbg !990

if.end11:                                         ; preds = %if.end, %for.cond
  %9 = load i64, ptr %prev, align 8, !dbg !991
  %10 = load i64, ptr %now, align 8, !dbg !991
  %cmp12 = icmp ugt i64 %9, %10, !dbg !991
  %lnot14 = xor i1 %cmp12, true, !dbg !991
  %lnot16 = xor i1 %lnot14, true, !dbg !991
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !991
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !991
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !991
  %tobool20 = icmp ne i64 %expval19, 0, !dbg !991
  br i1 %tobool20, label %if.then21, label %if.end29, !dbg !992

if.then21:                                        ; preds = %if.end11
  call void @queued_spin_lock(ptr noundef @sync_lock) #14, !dbg !993
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x210) #12, !dbg !994
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x210, metadata !932, metadata !DIExpression()), !dbg !994
  %11 = load i64, ptr @max_warp, align 8, !dbg !994
  store i64 %11, ptr %__UNIQUE_ID___x210, align 8, !dbg !994
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y211) #12, !dbg !994
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y211, metadata !939, metadata !DIExpression()), !dbg !994
  %12 = load i64, ptr %prev, align 8, !dbg !994
  %13 = load i64, ptr %now, align 8, !dbg !994
  %sub = sub i64 %12, %13, !dbg !994
  store i64 %sub, ptr %__UNIQUE_ID___y211, align 8, !dbg !994
  %14 = load i64, ptr %__UNIQUE_ID___x210, align 8, !dbg !994
  %15 = load i64, ptr %__UNIQUE_ID___y211, align 8, !dbg !994
  %cmp22 = icmp ugt i64 %14, %15, !dbg !994
  br i1 %cmp22, label %cond.true, label %cond.false, !dbg !994

cond.true:                                        ; preds = %if.then21
  %16 = load i64, ptr %__UNIQUE_ID___x210, align 8, !dbg !994
  br label %cond.end, !dbg !994

cond.false:                                       ; preds = %if.then21
  %17 = load i64, ptr %__UNIQUE_ID___y211, align 8, !dbg !994
  br label %cond.end, !dbg !994

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !994
  store i64 %cond, ptr %tmp, align 8, !dbg !994
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y211) #12, !dbg !995
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x210) #12, !dbg !995
  %18 = load i64, ptr %tmp, align 8, !dbg !994
  store i64 %18, ptr @max_warp, align 8, !dbg !996
  %19 = load i64, ptr @max_warp, align 8, !dbg !997
  store i64 %19, ptr %cur_max_warp, align 8, !dbg !998
  %20 = load i32, ptr %cur_warps, align 4, !dbg !999
  %21 = load i32, ptr @nr_warps, align 4, !dbg !1001
  %cmp24 = icmp ne i32 %20, %21, !dbg !1002
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !1003

if.then26:                                        ; preds = %cond.end
  %22 = load i32, ptr @random_warps, align 4, !dbg !1004
  %inc = add i32 %22, 1, !dbg !1004
  store i32 %inc, ptr @random_warps, align 4, !dbg !1004
  br label %if.end27, !dbg !1005

if.end27:                                         ; preds = %if.then26, %cond.end
  %23 = load i32, ptr @nr_warps, align 4, !dbg !1006
  %inc28 = add i32 %23, 1, !dbg !1006
  store i32 %inc28, ptr @nr_warps, align 4, !dbg !1006
  %24 = load i32, ptr @nr_warps, align 4, !dbg !1007
  store i32 %24, ptr %cur_warps, align 4, !dbg !1008
  call void @queued_spin_unlock(ptr noundef @sync_lock) #14, !dbg !1009
  br label %if.end29, !dbg !1010

if.end29:                                         ; preds = %if.end27, %if.end11
  br label %for.inc, !dbg !1011

for.inc:                                          ; preds = %if.end29
  %25 = load i32, ptr %i, align 4, !dbg !1012
  %inc30 = add i32 %25, 1, !dbg !1012
  store i32 %inc30, ptr %i, align 4, !dbg !1012
  br label %for.cond, !dbg !1013, !llvm.loop !1014

for.end:                                          ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !940, metadata !DIExpression()), !dbg !1017
  %26 = load i64, ptr %now, align 8, !dbg !1017
  %27 = load i64, ptr %start, align 8, !dbg !1017
  %sub31 = sub i64 %26, %27, !dbg !1017
  %tobool32 = icmp ne i64 %sub31, 0, !dbg !1017
  %lnot33 = xor i1 %tobool32, true, !dbg !1017
  %lnot35 = xor i1 %lnot33, true, !dbg !1017
  %lnot37 = xor i1 %lnot35, true, !dbg !1017
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !1017
  store i32 %lnot.ext38, ptr %__ret_warn_on, align 4, !dbg !1017
  %28 = load i32, ptr %__ret_warn_on, align 4, !dbg !1018
  %tobool39 = icmp ne i32 %28, 0, !dbg !1018
  %lnot40 = xor i1 %tobool39, true, !dbg !1018
  %lnot42 = xor i1 %lnot40, true, !dbg !1018
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !1018
  %conv44 = sext i32 %lnot.ext43 to i64, !dbg !1018
  %expval45 = call i64 @llvm.expect.i64(i64 %conv44, i64 0), !dbg !1018
  %tobool46 = icmp ne i64 %expval45, 0, !dbg !1018
  br i1 %tobool46, label %if.then47, label %if.end68, !dbg !1017

if.then47:                                        ; preds = %for.end
  br label %do.body, !dbg !1018

do.body:                                          ; preds = %if.then47
  br label %do.body48, !dbg !1019

do.body48:                                        ; preds = %do.body
  br label %do.cond, !dbg !1020

do.cond:                                          ; preds = %do.body48
  br label %do.end, !dbg !1020

do.end:                                           ; preds = %do.cond
  %29 = load i64, ptr %now, align 8, !dbg !1019
  %30 = load i64, ptr %start, align 8, !dbg !1019
  %sub49 = sub i64 %29, %30, !dbg !1019
  %31 = load i64, ptr %end, align 8, !dbg !1019
  %32 = load i64, ptr %start, align 8, !dbg !1019
  %sub50 = sub i64 %31, %32, !dbg !1019
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.11, i64 noundef %sub49, i64 noundef %sub50) #14, !dbg !1019
  br label %do.body51, !dbg !1019

do.body51:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !1022
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !942, metadata !DIExpression()), !dbg !1022
  store i32 2313, ptr %__flags, align 4, !dbg !1022
  br label %do.body52, !dbg !1022

do.body52:                                        ; preds = %do.body51
  br label %do.cond53, !dbg !1023

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !1023

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !1022

do.body55:                                        ; preds = %do.end54
  %33 = load i32, ptr %__flags, align 4, !dbg !1025
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.12, i32 321, i32 %33, i64 12) #12, !dbg !1025, !srcloc !1027
  br label %do.cond56, !dbg !1025

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !1025

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !1022

do.body58:                                        ; preds = %do.end57
  br label %do.cond59, !dbg !1028

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !1028

do.end60:                                         ; preds = %do.cond59
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !1019
  br label %do.cond61, !dbg !1022

do.cond61:                                        ; preds = %do.end60
  br label %do.end62, !dbg !1022

do.end62:                                         ; preds = %do.cond61
  br label %do.body63, !dbg !1019

do.body63:                                        ; preds = %do.end62
  br label %do.cond64, !dbg !1030

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !1030

do.end65:                                         ; preds = %do.cond64
  br label %do.cond66, !dbg !1019

do.cond66:                                        ; preds = %do.end65
  br label %do.end67, !dbg !1019

do.end67:                                         ; preds = %do.cond66
  br label %if.end68, !dbg !1019

if.end68:                                         ; preds = %do.end67, %for.end
  %34 = load i32, ptr %__ret_warn_on, align 4, !dbg !1017
  %tobool70 = icmp ne i32 %34, 0, !dbg !1017
  %lnot71 = xor i1 %tobool70, true, !dbg !1017
  %lnot73 = xor i1 %lnot71, true, !dbg !1017
  %lnot.ext74 = zext i1 %lnot73 to i32, !dbg !1017
  %conv75 = sext i32 %lnot.ext74 to i64, !dbg !1017
  %expval76 = call i64 @llvm.expect.i64(i64 %conv75, i64 0), !dbg !1017
  store i64 %expval76, ptr %tmp69, align 8, !dbg !1018
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !1032
  %35 = load i64, ptr %tmp69, align 8, !dbg !1017
  %36 = load i64, ptr %cur_max_warp, align 8, !dbg !1033
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_warps) #12, !dbg !1034
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1034
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_max_warp) #12, !dbg !1034
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #12, !dbg !1034
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #12, !dbg !1034
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #12, !dbg !1034
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #12, !dbg !1034
  ret i64 %36, !dbg !1035
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @loop_timeout(i32 noundef %cpu) #6 align 16 !dbg !1036 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1040, metadata !DIExpression()), !dbg !1046
  br label %do.body, !dbg !1047

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !1048
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1041, metadata !DIExpression()), !dbg !1048
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1048
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1048
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !1047
  br label %do.end, !dbg !1048

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !1049
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1044, metadata !DIExpression()), !dbg !1049
  store i64 ptrtoint (ptr @cpu_core_map to i64), ptr %__ptr, align 8, !dbg !1049
  %1 = load i64, ptr %__ptr, align 8, !dbg !1049
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !1049
  %idxprom = sext i32 %2 to i64, !dbg !1049
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !1049
  %3 = load i64, ptr %arrayidx, align 8, !dbg !1049
  %add = add i64 %1, %3, !dbg !1049
  %4 = inttoptr i64 %add to ptr, !dbg !1049
  store ptr %4, ptr %tmp1, align 8, !dbg !1049
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !1047
  %5 = load ptr, ptr %tmp1, align 8, !dbg !1049
  store ptr %5, ptr %tmp, align 8, !dbg !1048
  %6 = load ptr, ptr %tmp, align 8, !dbg !1047
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %6, i64 0, i64 0, !dbg !1050
  %call = call i32 @cpumask_weight(ptr noundef %arraydecay) #14, !dbg !1051
  %cmp = icmp ugt i32 %call, 1, !dbg !1052
  %7 = zext i1 %cmp to i64, !dbg !1053
  %cond = select i1 %cmp, i32 2, i32 20, !dbg !1053
  ret i32 %cond, !dbg !1054
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !1055 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1059, metadata !DIExpression()), !dbg !1061
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1060, metadata !DIExpression()), !dbg !1062
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1063
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #14, !dbg !1064
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1065
  %2 = load i32, ptr %i.addr, align 4, !dbg !1066
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #14, !dbg !1067
  ret void, !dbg !1068
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1069 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1073, metadata !DIExpression()), !dbg !1075
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1074, metadata !DIExpression()), !dbg !1076
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1077
  %and = and i64 %0, 63, !dbg !1078
  %shl = shl i64 1, %and, !dbg !1079
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1080
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1081
  %shr = ashr i64 %2, 6, !dbg !1082
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1080
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1080
  %and1 = and i64 %shl, %3, !dbg !1083
  %cmp = icmp ne i64 %and1, 0, !dbg !1084
  ret i1 %cmp, !dbg !1085
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1086 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1088, metadata !DIExpression()), !dbg !1091
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1089, metadata !DIExpression()), !dbg !1092
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !1093
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1090, metadata !DIExpression()), !dbg !1094
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1095
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1096
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !1097, !srcloc !1098
  %3 = icmp ult i8 %2, 2, !dbg !1097
  call void @llvm.assume(i1 %3), !dbg !1097
  store i8 %2, ptr %oldbit, align 1, !dbg !1097
  %4 = load i8, ptr %oldbit, align 1, !dbg !1099, !range !314, !noundef !315
  %tobool = trunc i8 %4 to i1, !dbg !1099
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !1100
  ret i1 %tobool, !dbg !1101
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #4 align 16 !dbg !1102 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1104, metadata !DIExpression()), !dbg !1107
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #12, !dbg !1108
  call void @llvm.dbg.declare(metadata ptr %low, metadata !1105, metadata !DIExpression()), !dbg !1108
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #12, !dbg !1108
  call void @llvm.dbg.declare(metadata ptr %high, metadata !1106, metadata !DIExpression()), !dbg !1108
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1109
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #12, !dbg !1110, !srcloc !1111
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !1110
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !1110
  store i64 %asmresult, ptr %low, align 8, !dbg !1110
  store i64 %asmresult1, ptr %high, align 8, !dbg !1110
  %2 = load i64, ptr %low, align 8, !dbg !1112
  %3 = load i64, ptr %high, align 8, !dbg !1112
  %shl = shl i64 %3, 32, !dbg !1112
  %or = or i64 %2, %shl, !dbg !1112
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #12, !dbg !1113
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #12, !dbg !1113
  ret i64 %or, !dbg !1114
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #4 align 16 !dbg !1115 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1140, metadata !DIExpression()), !dbg !1141
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1142
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #14, !dbg !1143
  ret i1 %call, !dbg !1144
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1145 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !1148 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1153, metadata !DIExpression()), !dbg !1156
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !1154, metadata !DIExpression()), !dbg !1157
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1158
  %1 = load i8, ptr %branch.addr, align 1, !dbg !1159, !range !314, !noundef !315
  %tobool = trunc i8 %1 to i1, !dbg !1159
  %conv = zext i1 %tobool to i32, !dbg !1159
  %or = or i32 2, %conv, !dbg !1160
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !1161, !srcloc !1162

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1163
  br label %return, !dbg !1163

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !1155), !dbg !1164
  store i1 true, ptr %retval, align 1, !dbg !1165
  br label %return, !dbg !1165

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !1166
  ret i1 %2, !dbg !1166
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #6 align 16 !dbg !1167 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1171, metadata !DIExpression()), !dbg !1174
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !1172, metadata !DIExpression()), !dbg !1175
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !1173, metadata !DIExpression()), !dbg !1176
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1177
  %1 = load i32, ptr %low.addr, align 4, !dbg !1178
  %2 = load i32, ptr %high.addr, align 4, !dbg !1179
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #14, !dbg !1180
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #14, !dbg !1181
  br i1 %call, label %if.then, label %if.end, !dbg !1183

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !1184
  %4 = load i32, ptr %high.addr, align 4, !dbg !1185
  %conv = zext i32 %4 to i64, !dbg !1186
  %shl = shl i64 %conv, 32, !dbg !1187
  %5 = load i32, ptr %low.addr, align 4, !dbg !1188
  %conv1 = zext i32 %5 to i64, !dbg !1188
  %or = or i64 %shl, %conv1, !dbg !1189
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #14, !dbg !1190
  br label %if.end, !dbg !1190

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1191
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #4 align 16 !dbg !1192 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1194, metadata !DIExpression()), !dbg !1197
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !1195, metadata !DIExpression()), !dbg !1198
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !1196, metadata !DIExpression()), !dbg !1199
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1200
  %1 = load i32, ptr %low.addr, align 4, !dbg !1201
  %2 = load i32, ptr %high.addr, align 4, !dbg !1202
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #12, !dbg !1203, !srcloc !1204
  ret void, !dbg !1205
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1206 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #4 align 16 !dbg !1207 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !1212, metadata !DIExpression()), !dbg !1215
  %0 = load i16, ptr %bit.addr, align 2, !dbg !1216
  %1 = load i16, ptr %bit.addr, align 2, !dbg !1217
  %conv = zext i16 %1 to i32, !dbg !1217
  %and = and i32 %conv, 7, !dbg !1218
  %shl = shl i32 1, %and, !dbg !1219
  %2 = load i16, ptr %bit.addr, align 2, !dbg !1220
  %conv1 = zext i16 %2 to i32, !dbg !1220
  %shr = ashr i32 %conv1, 3, !dbg !1221
  %idxprom = sext i32 %shr to i64, !dbg !1222
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !1222
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #12
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !1223, !srcloc !1224

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !1223

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !1213), !dbg !1225
  store i1 true, ptr %retval, align 1, !dbg !1226
  br label %return, !dbg !1226

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !1214), !dbg !1227
  store i1 false, ptr %retval, align 1, !dbg !1228
  br label %return, !dbg !1228

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !1229
  ret i1 %3, !dbg !1229
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1230 dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tsc_sync_check_timer_fn(ptr noundef %unused) #0 align 16 !dbg !1236 {
entry:
  %unused.addr = alloca ptr, align 8
  %next_cpu = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store ptr %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !1238, metadata !DIExpression()), !dbg !1246
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_cpu) #12, !dbg !1247
  call void @llvm.dbg.declare(metadata ptr %next_cpu, metadata !1239, metadata !DIExpression()), !dbg !1248
  call void @tsc_verify_tsc_adjust(i1 noundef zeroext false) #14, !dbg !1249
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !1250
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1240, metadata !DIExpression()), !dbg !1250
  br label %do.body, !dbg !1250

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !1251
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1242, metadata !DIExpression()), !dbg !1251
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1251
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1251
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !1250
  br label %do.cond, !dbg !1251

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1251

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !1252
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1244, metadata !DIExpression()), !dbg !1252
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !1252, !srcloc !1253
  store i32 %1, ptr %pfo_val__, align 4, !dbg !1252
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !1252
  %conv = zext i32 %2 to i64, !dbg !1252
  %conv1 = trunc i64 %conv to i32, !dbg !1252
  store i32 %conv1, ptr %tmp, align 4, !dbg !1252
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !1250
  %3 = load i32, ptr %tmp, align 4, !dbg !1252
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !1250
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !1250
  store i32 %4, ptr %tmp2, align 4, !dbg !1250
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !1254
  %5 = load i32, ptr %tmp2, align 4, !dbg !1250
  %call = call i32 @cpumask_next(i32 noundef %5, ptr noundef @__cpu_online_mask) #14, !dbg !1255
  store i32 %call, ptr %next_cpu, align 4, !dbg !1256
  %6 = load i32, ptr %next_cpu, align 4, !dbg !1257
  %7 = load i32, ptr @nr_cpu_ids, align 4, !dbg !1259
  %cmp = icmp uge i32 %6, %7, !dbg !1260
  br i1 %cmp, label %if.then, label %if.end, !dbg !1261

if.then:                                          ; preds = %do.end
  %call4 = call i32 @cpumask_first(ptr noundef @__cpu_online_mask) #14, !dbg !1262
  store i32 %call4, ptr %next_cpu, align 4, !dbg !1263
  br label %if.end, !dbg !1264

if.end:                                           ; preds = %if.then, %do.end
  %8 = load i64, ptr getelementptr inbounds (%struct.timer_list, ptr @tsc_sync_check_timer, i32 0, i32 1), align 8, !dbg !1265
  %add = add i64 %8, 600000, !dbg !1265
  store i64 %add, ptr getelementptr inbounds (%struct.timer_list, ptr @tsc_sync_check_timer, i32 0, i32 1), align 8, !dbg !1265
  %9 = load i32, ptr %next_cpu, align 4, !dbg !1266
  call void @add_timer_on(ptr noundef @tsc_sync_check_timer, i32 noundef %9) #14, !dbg !1267
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_cpu) #12, !dbg !1268
  ret void, !dbg !1268
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1269 dso_local void @add_timer(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_next(i32 noundef %n, ptr noundef %srcp) #6 align 16 !dbg !1270 {
entry:
  %n.addr = alloca i32, align 4
  %srcp.addr = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1274, metadata !DIExpression()), !dbg !1276
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !1275, metadata !DIExpression()), !dbg !1277
  %0 = load i32, ptr %n.addr, align 4, !dbg !1278
  %cmp = icmp ne i32 %0, -1, !dbg !1280
  br i1 %cmp, label %if.then, label %if.end, !dbg !1281

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !dbg !1282
  %call = call i32 @cpumask_check(i32 noundef %1) #14, !dbg !1283
  br label %if.end, !dbg !1283

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %srcp.addr, align 8, !dbg !1284
  %bits = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !1284
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1284
  %3 = load i32, ptr %n.addr, align 4, !dbg !1285
  %add = add i32 %3, 1, !dbg !1286
  %conv = sext i32 %add to i64, !dbg !1285
  %call1 = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv) #14, !dbg !1287
  %conv2 = trunc i64 %call1 to i32, !dbg !1287
  ret i32 %conv2, !dbg !1288
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1289 dso_local void @add_timer_on(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #4 align 16 !dbg !1292 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1296, metadata !DIExpression()), !dbg !1297
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1298
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #14, !dbg !1299
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !1300
  ret i32 %1, !dbg !1301
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #6 align 16 !dbg !1302 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1309, metadata !DIExpression()), !dbg !1315
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1310, metadata !DIExpression()), !dbg !1316
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !1311, metadata !DIExpression()), !dbg !1317
  %0 = load i64, ptr %size.addr, align 8, !dbg !1318
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1318
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !1318

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1318
  %cmp = icmp ule i64 %2, 64, !dbg !1318
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !1318

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !1318
  %cmp2 = icmp ugt i64 %3, 0, !dbg !1318
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !1319

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !1320
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1312, metadata !DIExpression()), !dbg !1321
  %4 = load i64, ptr %offset.addr, align 8, !dbg !1322
  %5 = load i64, ptr %size.addr, align 8, !dbg !1322
  %cmp3 = icmp uge i64 %4, %5, !dbg !1322
  %lnot = xor i1 %cmp3, true, !dbg !1322
  %lnot4 = xor i1 %lnot, true, !dbg !1322
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1322
  %conv = sext i32 %lnot.ext to i64, !dbg !1322
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1322
  %tobool = icmp ne i64 %expval, 0, !dbg !1322
  br i1 %tobool, label %if.then5, label %if.end, !dbg !1324

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1325
  store i64 %6, ptr %retval, align 8, !dbg !1326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1326

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !1327
  %8 = load i64, ptr %7, align 8, !dbg !1328
  %9 = load i64, ptr %offset.addr, align 8, !dbg !1329
  %shl = shl i64 1, %9, !dbg !1329
  %sub = sub i64 -1, %shl, !dbg !1329
  %add = add i64 %sub, 1, !dbg !1329
  %10 = load i64, ptr %size.addr, align 8, !dbg !1329
  %sub6 = sub i64 %10, 1, !dbg !1329
  %sub7 = sub i64 63, %sub6, !dbg !1329
  %shr = lshr i64 -1, %sub7, !dbg !1329
  %and = and i64 %add, %shr, !dbg !1329
  %add8 = add i64 0, %and, !dbg !1329
  %and9 = and i64 %8, %add8, !dbg !1330
  store i64 %and9, ptr %val, align 8, !dbg !1331
  %11 = load i64, ptr %val, align 8, !dbg !1332
  %tobool10 = icmp ne i64 %11, 0, !dbg !1332
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !1332

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !1333
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !1333
  br i1 %13, label %cond.true11, label %cond.false, !dbg !1333

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !1333
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !1333
  %cast = trunc i64 %15 to i32, !dbg !1333
  %conv12 = sext i32 %cast to i64, !dbg !1333
  br label %cond.end, !dbg !1333

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !1333
  %call = call i64 @variable__ffs(i64 noundef %16) #14, !dbg !1333
  br label %cond.end, !dbg !1333

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !1333
  br label %cond.end14, !dbg !1332

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !1334
  br label %cond.end14, !dbg !1332

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !1332
  store i64 %cond15, ptr %retval, align 8, !dbg !1335
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1335

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !1336
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !1337
  %19 = load i64, ptr %size.addr, align 8, !dbg !1338
  %20 = load i64, ptr %offset.addr, align 8, !dbg !1339
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #14, !dbg !1340
  store i64 %call17, ptr %retval, align 8, !dbg !1341
  br label %return, !dbg !1341

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !1342
  ret i64 %21, !dbg !1342
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #4 align 16 !dbg !1343 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1347, metadata !DIExpression()), !dbg !1349
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !1348, metadata !DIExpression()), !dbg !1350
  ret void, !dbg !1351
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #4 align 16 !dbg !1352 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1356, metadata !DIExpression()), !dbg !1357
  %0 = load i64, ptr %word.addr, align 8, !dbg !1358
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #13, !dbg !1359, !srcloc !1360
  store i64 %1, ptr %word.addr, align 8, !dbg !1359
  %2 = load i64, ptr %word.addr, align 8, !dbg !1361
  ret i64 %2, !dbg !1362
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1363 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #6 align 16 !dbg !1364 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1368, metadata !DIExpression()), !dbg !1373
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1369, metadata !DIExpression()), !dbg !1374
  %0 = load i64, ptr %size.addr, align 8, !dbg !1375
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1375
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !1375

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1375
  %cmp = icmp ule i64 %2, 64, !dbg !1375
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !1375

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !1375
  %cmp2 = icmp ugt i64 %3, 0, !dbg !1375
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1376

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !1377
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1370, metadata !DIExpression()), !dbg !1378
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !1379
  %5 = load i64, ptr %4, align 8, !dbg !1380
  %6 = load i64, ptr %size.addr, align 8, !dbg !1381
  %sub = sub i64 %6, 1, !dbg !1381
  %sub3 = sub i64 63, %sub, !dbg !1381
  %shr = lshr i64 -1, %sub3, !dbg !1381
  %and = and i64 -1, %shr, !dbg !1381
  %add = add i64 0, %and, !dbg !1381
  %and4 = and i64 %5, %add, !dbg !1382
  store i64 %and4, ptr %val, align 8, !dbg !1378
  %7 = load i64, ptr %val, align 8, !dbg !1383
  %tobool = icmp ne i64 %7, 0, !dbg !1383
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !1383

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !1384
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !1384
  br i1 %9, label %cond.true5, label %cond.false, !dbg !1384

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !1384
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !1384
  %cast = trunc i64 %11 to i32, !dbg !1384
  %conv = sext i32 %cast to i64, !dbg !1384
  br label %cond.end, !dbg !1384

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !1384
  %call = call i64 @variable__ffs(i64 noundef %12) #14, !dbg !1384
  br label %cond.end, !dbg !1384

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !1384
  br label %cond.end7, !dbg !1383

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !1385
  br label %cond.end7, !dbg !1383

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !1383
  store i64 %cond8, ptr %retval, align 8, !dbg !1386
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !1387
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !1388
  %15 = load i64, ptr %size.addr, align 8, !dbg !1389
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #14, !dbg !1390
  store i64 %call9, ptr %retval, align 8, !dbg !1391
  br label %return, !dbg !1391

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !1392
  ret i64 %16, !dbg !1392
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1393 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #4 align 16 !dbg !1394 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1398, metadata !DIExpression()), !dbg !1399
  br label %do.body, !dbg !1400

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1401

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1403
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !1404
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1405
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #14, !dbg !1406
  ret i1 %call, !dbg !1407
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_work(ptr noundef %work) #6 align 16 !dbg !1408 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1412, metadata !DIExpression()), !dbg !1413
  %0 = load ptr, ptr @system_wq, align 8, !dbg !1414
  %1 = load ptr, ptr %work.addr, align 8, !dbg !1415
  %call = call zeroext i1 @queue_work(ptr noundef %0, ptr noundef %1) #14, !dbg !1416
  ret i1 %call, !dbg !1417
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !1418 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1430, metadata !DIExpression()), !dbg !1432
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1431, metadata !DIExpression()), !dbg !1433
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1434
  %1 = load i64, ptr %size.addr, align 8, !dbg !1435
  %conv = trunc i64 %1 to i32, !dbg !1435
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !1436
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1437
  %3 = load i64, ptr %size.addr, align 8, !dbg !1437
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !1437
  ret void, !dbg !1438
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #4 align 16 !dbg !1439 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1442, metadata !DIExpression()), !dbg !1443
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1444
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #14, !dbg !1445
  ret i1 %call, !dbg !1446
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !1447 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1452, metadata !DIExpression()), !dbg !1454
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1453, metadata !DIExpression()), !dbg !1455
  ret i1 true, !dbg !1456
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !1457 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1462, metadata !DIExpression()), !dbg !1465
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1463, metadata !DIExpression()), !dbg !1466
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1464, metadata !DIExpression()), !dbg !1467
  ret void, !dbg !1468
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #4 align 16 !dbg !1469 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1472, metadata !DIExpression()), !dbg !1475
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !1476
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1473, metadata !DIExpression()), !dbg !1476
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1476
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !1476
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #12, !dbg !1476, !srcloc !1477
  %2 = icmp ult i8 %1, 2, !dbg !1476
  call void @llvm.assume(i1 %2), !dbg !1476
  store i8 %1, ptr %c, align 1, !dbg !1476
  %3 = load i8, ptr %c, align 1, !dbg !1476, !range !314, !noundef !315
  %tobool = trunc i8 %3 to i1, !dbg !1476
  %frombool = zext i1 %tobool to i8, !dbg !1476
  store i8 %frombool, ptr %tmp, align 1, !dbg !1476
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !1478
  %4 = load i8, ptr %tmp, align 1, !dbg !1476, !range !314, !noundef !315
  %tobool1 = trunc i8 %4 to i1, !dbg !1476
  ret i1 %tobool1, !dbg !1479
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #6 align 16 !dbg !1480 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !1486, metadata !DIExpression()), !dbg !1488
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1487, metadata !DIExpression()), !dbg !1489
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !1490
  %1 = load ptr, ptr %work.addr, align 8, !dbg !1491
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #14, !dbg !1492
  ret i1 %call, !dbg !1493
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1494 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tsc_sync_mark_tsc_unstable(ptr noundef %work) #0 align 16 !dbg !1497 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1499, metadata !DIExpression()), !dbg !1500
  call void @mark_tsc_unstable(ptr noundef @.str.10) #14, !dbg !1501
  ret void, !dbg !1502
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1503 dso_local void @mark_tsc_unstable(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #4 align 16 !dbg !1504 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1506, metadata !DIExpression()), !dbg !1507
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1508
  call void @arch_atomic_inc(ptr noundef %0) #14, !dbg !1509
  ret void, !dbg !1510
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #4 align 16 !dbg !1511 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1513, metadata !DIExpression()), !dbg !1514
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1515
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !1516
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #12, !dbg !1517, !srcloc !1518
  ret void, !dbg !1519
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !1520 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1522, metadata !DIExpression()), !dbg !1524
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1523, metadata !DIExpression()), !dbg !1525
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1526
  %1 = load i64, ptr %size.addr, align 8, !dbg !1527
  %conv = trunc i64 %1 to i32, !dbg !1527
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !1528
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1529
  %3 = load i64, ptr %size.addr, align 8, !dbg !1529
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !1529
  ret void, !dbg !1530
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #4 align 16 !dbg !1531 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1533, metadata !DIExpression()), !dbg !1534
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1535
  %call = call i32 @arch_atomic_read(ptr noundef %0) #14, !dbg !1536
  ret i32 %call, !dbg !1537
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !1538 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1540, metadata !DIExpression()), !dbg !1542
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1541, metadata !DIExpression()), !dbg !1543
  ret i1 true, !dbg !1544
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #4 align 16 !dbg !1545 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1547, metadata !DIExpression()), !dbg !1548
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1549
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !1549
  %1 = load volatile i32, ptr %counter, align 4, !dbg !1549
  ret i32 %1, !dbg !1550
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #4 align 16 !dbg !1551 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !1552, !srcloc !1553
  ret void, !dbg !1554
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rdtsc_ordered() #4 align 16 !dbg !1555 {
entry:
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #12, !dbg !1561
  call void @llvm.dbg.declare(metadata ptr %low, metadata !1559, metadata !DIExpression()), !dbg !1561
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #12, !dbg !1561
  call void @llvm.dbg.declare(metadata ptr %high, metadata !1560, metadata !DIExpression()), !dbg !1561
  %0 = call { i64, i64 } asm sideeffect "# ALT: oldinstr2\0A661:\0A\09rdtsc\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (20*32+ 2)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ( 1*32+27)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09lfence; rdtsc\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09rdtscp\0A6652:\0A.popsection\0A", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !1562, !srcloc !1563
  %asmresult = extractvalue { i64, i64 } %0, 0, !dbg !1562
  %asmresult1 = extractvalue { i64, i64 } %0, 1, !dbg !1562
  store i64 %asmresult, ptr %low, align 8, !dbg !1562
  store i64 %asmresult1, ptr %high, align 8, !dbg !1562
  %1 = load i64, ptr %low, align 8, !dbg !1564
  %2 = load i64, ptr %high, align 8, !dbg !1564
  %shl = shl i64 %2, 32, !dbg !1564
  %or = or i64 %1, %shl, !dbg !1564
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #12, !dbg !1565
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #12, !dbg !1565
  ret i64 %or, !dbg !1566
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queued_spin_lock(ptr noundef %lock) #4 align 16 !dbg !1567 {
entry:
  %lock.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1573, metadata !DIExpression()), !dbg !1575
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #12, !dbg !1576
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1574, metadata !DIExpression()), !dbg !1577
  store i32 0, ptr %val, align 4, !dbg !1577
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1578
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !1578
  %call = call zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %1, ptr noundef %val, i32 noundef 1) #14, !dbg !1578
  %lnot = xor i1 %call, true, !dbg !1578
  %lnot1 = xor i1 %lnot, true, !dbg !1578
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1578
  %conv = sext i32 %lnot.ext to i64, !dbg !1578
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1578
  %tobool = icmp ne i64 %expval, 0, !dbg !1578
  br i1 %tobool, label %if.then, label %if.end, !dbg !1580

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1581

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !1582
  %3 = load i32, ptr %val, align 4, !dbg !1583
  call void @queued_spin_lock_slowpath(ptr noundef %2, i32 noundef %3) #14, !dbg !1584
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1585
  br label %cleanup, !dbg !1585

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #12, !dbg !1585
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1585

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queued_spin_unlock(ptr noundef %lock) #4 align 16 !dbg !1586 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1588, metadata !DIExpression()), !dbg !1589
  br label %do.body, !dbg !1590

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1591

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1593

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1591

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !1595

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !1597

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !1595, !srcloc !1599
  br label %do.body5, !dbg !1595

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !1600

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1602

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !1600

do.body8:                                         ; preds = %do.end7
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1604
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !1604
  %locked = getelementptr inbounds %struct.anon.5, ptr %1, i32 0, i32 0, !dbg !1604
  store volatile i8 0, ptr %locked, align 4, !dbg !1604
  br label %do.end9, !dbg !1604

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !1600

do.end10:                                         ; preds = %do.end9
  br label %do.end11, !dbg !1595

do.end11:                                         ; preds = %do.end10
  br label %do.end12, !dbg !1591

do.end12:                                         ; preds = %do.end11
  ret void, !dbg !1606
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @touch_nmi_watchdog() #6 align 16 !dbg !1607 {
entry:
  call void @arch_touch_nmi_watchdog() #14, !dbg !1609
  call void @touch_softlockup_watchdog() #14, !dbg !1610
  ret void, !dbg !1611
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1612 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !1616 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1620, metadata !DIExpression()), !dbg !1623
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1621, metadata !DIExpression()), !dbg !1624
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1622, metadata !DIExpression()), !dbg !1625
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1626
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !1627
  %1 = load ptr, ptr %old.addr, align 8, !dbg !1628
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #14, !dbg !1629
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1630
  %3 = load ptr, ptr %old.addr, align 8, !dbg !1631
  %4 = load i32, ptr %new.addr, align 4, !dbg !1632
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_acquire(ptr noundef %2, ptr noundef %3, i32 noundef %4) #14, !dbg !1633
  ret i1 %call, !dbg !1634
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1635 dso_local void @queued_spin_lock_slowpath(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_acquire(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !1638 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1640, metadata !DIExpression()), !dbg !1643
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1641, metadata !DIExpression()), !dbg !1644
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1642, metadata !DIExpression()), !dbg !1645
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1646
  %1 = load ptr, ptr %old.addr, align 8, !dbg !1647
  %2 = load i32, ptr %new.addr, align 4, !dbg !1648
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #14, !dbg !1649
  ret i1 %call, !dbg !1650
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !1651 {
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
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1653, metadata !DIExpression()), !dbg !1662
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1654, metadata !DIExpression()), !dbg !1663
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1655, metadata !DIExpression()), !dbg !1664
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #12, !dbg !1665
  call void @llvm.dbg.declare(metadata ptr %success, metadata !1656, metadata !DIExpression()), !dbg !1665
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #12, !dbg !1665
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !1658, metadata !DIExpression()), !dbg !1665
  %0 = load ptr, ptr %old.addr, align 8, !dbg !1665
  store ptr %0, ptr %_old, align 8, !dbg !1665
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #12, !dbg !1665
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !1659, metadata !DIExpression()), !dbg !1665
  %1 = load ptr, ptr %_old, align 8, !dbg !1665
  %2 = load i32, ptr %1, align 4, !dbg !1665
  store i32 %2, ptr %__old, align 4, !dbg !1665
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #12, !dbg !1665
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !1660, metadata !DIExpression()), !dbg !1665
  %3 = load i32, ptr %new.addr, align 4, !dbg !1665
  store i32 %3, ptr %__new, align 4, !dbg !1665
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !1665
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1661, metadata !DIExpression()), !dbg !1665
  %4 = load ptr, ptr %v.addr, align 8, !dbg !1665
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !1665
  store ptr %counter, ptr %__ptr, align 8, !dbg !1665
  %5 = load ptr, ptr %__ptr, align 8, !dbg !1665
  %6 = load i32, ptr %__old, align 4, !dbg !1665
  %7 = load i32, ptr %__new, align 4, !dbg !1665
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #12, !dbg !1665, !srcloc !1666
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !1665
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !1665
  %9 = icmp ult i8 %asmresult, 2, !dbg !1665
  call void @llvm.assume(i1 %9), !dbg !1665
  store i8 %asmresult, ptr %success, align 1, !dbg !1665
  store i32 %asmresult1, ptr %__old, align 4, !dbg !1665
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !1665
  %10 = load i8, ptr %success, align 1, !dbg !1667, !range !314, !noundef !315
  %tobool = trunc i8 %10 to i1, !dbg !1667
  %lnot = xor i1 %tobool, true, !dbg !1667
  %lnot2 = xor i1 %lnot, true, !dbg !1667
  %lnot3 = xor i1 %lnot2, true, !dbg !1667
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1667
  %conv = sext i32 %lnot.ext to i64, !dbg !1667
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1667
  %tobool4 = icmp ne i64 %expval, 0, !dbg !1667
  br i1 %tobool4, label %if.then, label %if.end, !dbg !1665

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !1667
  %12 = load ptr, ptr %_old, align 8, !dbg !1667
  store i32 %11, ptr %12, align 4, !dbg !1667
  br label %if.end, !dbg !1667

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !1665, !range !314, !noundef !315
  %tobool5 = trunc i8 %13 to i1, !dbg !1665
  %lnot6 = xor i1 %tobool5, true, !dbg !1665
  %lnot8 = xor i1 %lnot6, true, !dbg !1665
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !1665
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !1665
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !1665
  store i64 %expval11, ptr %tmp, align 8, !dbg !1667
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #12, !dbg !1669
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #12, !dbg !1669
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #12, !dbg !1669
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #12, !dbg !1669
  %14 = load i64, ptr %tmp, align 8, !dbg !1665
  %tobool12 = icmp ne i64 %14, 0, !dbg !1669
  ret i1 %tobool12, !dbg !1670
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_touch_nmi_watchdog() #6 align 16 !dbg !1671 {
entry:
  ret void, !dbg !1672
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @touch_softlockup_watchdog() #6 align 16 !dbg !1673 {
entry:
  ret void, !dbg !1674
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_weight(ptr noundef %srcp) #6 align 16 !dbg !1675 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !1677, metadata !DIExpression()), !dbg !1678
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !1679
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !1679
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1679
  %call = call i32 @bitmap_weight(ptr noundef %arraydecay, i32 noundef 64) #14, !dbg !1680
  ret i32 %call, !dbg !1681
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bitmap_weight(ptr noundef %src, i32 noundef %nbits) #4 align 16 !dbg !1682 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1687, metadata !DIExpression()), !dbg !1689
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !1688, metadata !DIExpression()), !dbg !1690
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !1691
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1691
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !1691

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !1691
  %cmp = icmp ule i32 %2, 64, !dbg !1691
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !1691

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !1691
  %cmp2 = icmp ugt i32 %3, 0, !dbg !1691
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1693

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !1694
  %5 = load i64, ptr %4, align 8, !dbg !1695
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !1696
  %sub = sub i32 0, %6, !dbg !1696
  %and = and i32 %sub, 63, !dbg !1696
  %sh_prom = zext i32 %and to i64, !dbg !1696
  %shr = lshr i64 -1, %sh_prom, !dbg !1696
  %and3 = and i64 %5, %shr, !dbg !1697
  %call = call i64 @hweight_long(i64 noundef %and3) #14, !dbg !1698
  %conv = trunc i64 %call to i32, !dbg !1698
  store i32 %conv, ptr %retval, align 4, !dbg !1699
  br label %return, !dbg !1699

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !1700
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !1701
  %call4 = call i32 @__bitmap_weight(ptr noundef %7, i32 noundef %8) #14, !dbg !1702
  store i32 %call4, ptr %retval, align 4, !dbg !1703
  br label %return, !dbg !1703

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !1704
  ret i32 %9, !dbg !1704
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #4 align 16 !dbg !1705 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1708, metadata !DIExpression()), !dbg !1709
  %0 = load i64, ptr %w.addr, align 8, !dbg !1710
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1710
  br i1 %1, label %cond.true, label %cond.false, !dbg !1710

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !1710
  %and = and i64 %2, 1, !dbg !1710
  %tobool = icmp ne i64 %and, 0, !dbg !1710
  %lnot = xor i1 %tobool, true, !dbg !1710
  %lnot1 = xor i1 %lnot, true, !dbg !1710
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1710
  %3 = load i64, ptr %w.addr, align 8, !dbg !1710
  %and2 = and i64 %3, 2, !dbg !1710
  %tobool3 = icmp ne i64 %and2, 0, !dbg !1710
  %lnot4 = xor i1 %tobool3, true, !dbg !1710
  %lnot6 = xor i1 %lnot4, true, !dbg !1710
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1710
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !1710
  %4 = load i64, ptr %w.addr, align 8, !dbg !1710
  %and8 = and i64 %4, 4, !dbg !1710
  %tobool9 = icmp ne i64 %and8, 0, !dbg !1710
  %lnot10 = xor i1 %tobool9, true, !dbg !1710
  %lnot12 = xor i1 %lnot10, true, !dbg !1710
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !1710
  %add14 = add i32 %add, %lnot.ext13, !dbg !1710
  %5 = load i64, ptr %w.addr, align 8, !dbg !1710
  %and15 = and i64 %5, 8, !dbg !1710
  %tobool16 = icmp ne i64 %and15, 0, !dbg !1710
  %lnot17 = xor i1 %tobool16, true, !dbg !1710
  %lnot19 = xor i1 %lnot17, true, !dbg !1710
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !1710
  %add21 = add i32 %add14, %lnot.ext20, !dbg !1710
  %6 = load i64, ptr %w.addr, align 8, !dbg !1710
  %and22 = and i64 %6, 16, !dbg !1710
  %tobool23 = icmp ne i64 %and22, 0, !dbg !1710
  %lnot24 = xor i1 %tobool23, true, !dbg !1710
  %lnot26 = xor i1 %lnot24, true, !dbg !1710
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !1710
  %add28 = add i32 %add21, %lnot.ext27, !dbg !1710
  %7 = load i64, ptr %w.addr, align 8, !dbg !1710
  %and29 = and i64 %7, 32, !dbg !1710
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1710
  %lnot31 = xor i1 %tobool30, true, !dbg !1710
  %lnot33 = xor i1 %lnot31, true, !dbg !1710
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !1710
  %add35 = add i32 %add28, %lnot.ext34, !dbg !1710
  %8 = load i64, ptr %w.addr, align 8, !dbg !1710
  %and36 = and i64 %8, 64, !dbg !1710
  %tobool37 = icmp ne i64 %and36, 0, !dbg !1710
  %lnot38 = xor i1 %tobool37, true, !dbg !1710
  %lnot40 = xor i1 %lnot38, true, !dbg !1710
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !1710
  %add42 = add i32 %add35, %lnot.ext41, !dbg !1710
  %9 = load i64, ptr %w.addr, align 8, !dbg !1710
  %and43 = and i64 %9, 128, !dbg !1710
  %tobool44 = icmp ne i64 %and43, 0, !dbg !1710
  %lnot45 = xor i1 %tobool44, true, !dbg !1710
  %lnot47 = xor i1 %lnot45, true, !dbg !1710
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !1710
  %add49 = add i32 %add42, %lnot.ext48, !dbg !1710
  %10 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr = lshr i64 %10, 8, !dbg !1710
  %and50 = and i64 %shr, 1, !dbg !1710
  %tobool51 = icmp ne i64 %and50, 0, !dbg !1710
  %lnot52 = xor i1 %tobool51, true, !dbg !1710
  %lnot54 = xor i1 %lnot52, true, !dbg !1710
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !1710
  %11 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr56 = lshr i64 %11, 8, !dbg !1710
  %and57 = and i64 %shr56, 2, !dbg !1710
  %tobool58 = icmp ne i64 %and57, 0, !dbg !1710
  %lnot59 = xor i1 %tobool58, true, !dbg !1710
  %lnot61 = xor i1 %lnot59, true, !dbg !1710
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !1710
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !1710
  %12 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr64 = lshr i64 %12, 8, !dbg !1710
  %and65 = and i64 %shr64, 4, !dbg !1710
  %tobool66 = icmp ne i64 %and65, 0, !dbg !1710
  %lnot67 = xor i1 %tobool66, true, !dbg !1710
  %lnot69 = xor i1 %lnot67, true, !dbg !1710
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !1710
  %add71 = add i32 %add63, %lnot.ext70, !dbg !1710
  %13 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr72 = lshr i64 %13, 8, !dbg !1710
  %and73 = and i64 %shr72, 8, !dbg !1710
  %tobool74 = icmp ne i64 %and73, 0, !dbg !1710
  %lnot75 = xor i1 %tobool74, true, !dbg !1710
  %lnot77 = xor i1 %lnot75, true, !dbg !1710
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !1710
  %add79 = add i32 %add71, %lnot.ext78, !dbg !1710
  %14 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr80 = lshr i64 %14, 8, !dbg !1710
  %and81 = and i64 %shr80, 16, !dbg !1710
  %tobool82 = icmp ne i64 %and81, 0, !dbg !1710
  %lnot83 = xor i1 %tobool82, true, !dbg !1710
  %lnot85 = xor i1 %lnot83, true, !dbg !1710
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !1710
  %add87 = add i32 %add79, %lnot.ext86, !dbg !1710
  %15 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr88 = lshr i64 %15, 8, !dbg !1710
  %and89 = and i64 %shr88, 32, !dbg !1710
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1710
  %lnot91 = xor i1 %tobool90, true, !dbg !1710
  %lnot93 = xor i1 %lnot91, true, !dbg !1710
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !1710
  %add95 = add i32 %add87, %lnot.ext94, !dbg !1710
  %16 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr96 = lshr i64 %16, 8, !dbg !1710
  %and97 = and i64 %shr96, 64, !dbg !1710
  %tobool98 = icmp ne i64 %and97, 0, !dbg !1710
  %lnot99 = xor i1 %tobool98, true, !dbg !1710
  %lnot101 = xor i1 %lnot99, true, !dbg !1710
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !1710
  %add103 = add i32 %add95, %lnot.ext102, !dbg !1710
  %17 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr104 = lshr i64 %17, 8, !dbg !1710
  %and105 = and i64 %shr104, 128, !dbg !1710
  %tobool106 = icmp ne i64 %and105, 0, !dbg !1710
  %lnot107 = xor i1 %tobool106, true, !dbg !1710
  %lnot109 = xor i1 %lnot107, true, !dbg !1710
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !1710
  %add111 = add i32 %add103, %lnot.ext110, !dbg !1710
  %add112 = add i32 %add49, %add111, !dbg !1710
  %18 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr113 = lshr i64 %18, 16, !dbg !1710
  %and114 = and i64 %shr113, 1, !dbg !1710
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1710
  %lnot116 = xor i1 %tobool115, true, !dbg !1710
  %lnot118 = xor i1 %lnot116, true, !dbg !1710
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !1710
  %19 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr120 = lshr i64 %19, 16, !dbg !1710
  %and121 = and i64 %shr120, 2, !dbg !1710
  %tobool122 = icmp ne i64 %and121, 0, !dbg !1710
  %lnot123 = xor i1 %tobool122, true, !dbg !1710
  %lnot125 = xor i1 %lnot123, true, !dbg !1710
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !1710
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !1710
  %20 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr128 = lshr i64 %20, 16, !dbg !1710
  %and129 = and i64 %shr128, 4, !dbg !1710
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1710
  %lnot131 = xor i1 %tobool130, true, !dbg !1710
  %lnot133 = xor i1 %lnot131, true, !dbg !1710
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !1710
  %add135 = add i32 %add127, %lnot.ext134, !dbg !1710
  %21 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr136 = lshr i64 %21, 16, !dbg !1710
  %and137 = and i64 %shr136, 8, !dbg !1710
  %tobool138 = icmp ne i64 %and137, 0, !dbg !1710
  %lnot139 = xor i1 %tobool138, true, !dbg !1710
  %lnot141 = xor i1 %lnot139, true, !dbg !1710
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !1710
  %add143 = add i32 %add135, %lnot.ext142, !dbg !1710
  %22 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr144 = lshr i64 %22, 16, !dbg !1710
  %and145 = and i64 %shr144, 16, !dbg !1710
  %tobool146 = icmp ne i64 %and145, 0, !dbg !1710
  %lnot147 = xor i1 %tobool146, true, !dbg !1710
  %lnot149 = xor i1 %lnot147, true, !dbg !1710
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !1710
  %add151 = add i32 %add143, %lnot.ext150, !dbg !1710
  %23 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr152 = lshr i64 %23, 16, !dbg !1710
  %and153 = and i64 %shr152, 32, !dbg !1710
  %tobool154 = icmp ne i64 %and153, 0, !dbg !1710
  %lnot155 = xor i1 %tobool154, true, !dbg !1710
  %lnot157 = xor i1 %lnot155, true, !dbg !1710
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !1710
  %add159 = add i32 %add151, %lnot.ext158, !dbg !1710
  %24 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr160 = lshr i64 %24, 16, !dbg !1710
  %and161 = and i64 %shr160, 64, !dbg !1710
  %tobool162 = icmp ne i64 %and161, 0, !dbg !1710
  %lnot163 = xor i1 %tobool162, true, !dbg !1710
  %lnot165 = xor i1 %lnot163, true, !dbg !1710
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !1710
  %add167 = add i32 %add159, %lnot.ext166, !dbg !1710
  %25 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr168 = lshr i64 %25, 16, !dbg !1710
  %and169 = and i64 %shr168, 128, !dbg !1710
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1710
  %lnot171 = xor i1 %tobool170, true, !dbg !1710
  %lnot173 = xor i1 %lnot171, true, !dbg !1710
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !1710
  %add175 = add i32 %add167, %lnot.ext174, !dbg !1710
  %26 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr176 = lshr i64 %26, 16, !dbg !1710
  %shr177 = lshr i64 %shr176, 8, !dbg !1710
  %and178 = and i64 %shr177, 1, !dbg !1710
  %tobool179 = icmp ne i64 %and178, 0, !dbg !1710
  %lnot180 = xor i1 %tobool179, true, !dbg !1710
  %lnot182 = xor i1 %lnot180, true, !dbg !1710
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !1710
  %27 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr184 = lshr i64 %27, 16, !dbg !1710
  %shr185 = lshr i64 %shr184, 8, !dbg !1710
  %and186 = and i64 %shr185, 2, !dbg !1710
  %tobool187 = icmp ne i64 %and186, 0, !dbg !1710
  %lnot188 = xor i1 %tobool187, true, !dbg !1710
  %lnot190 = xor i1 %lnot188, true, !dbg !1710
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !1710
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !1710
  %28 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr193 = lshr i64 %28, 16, !dbg !1710
  %shr194 = lshr i64 %shr193, 8, !dbg !1710
  %and195 = and i64 %shr194, 4, !dbg !1710
  %tobool196 = icmp ne i64 %and195, 0, !dbg !1710
  %lnot197 = xor i1 %tobool196, true, !dbg !1710
  %lnot199 = xor i1 %lnot197, true, !dbg !1710
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !1710
  %add201 = add i32 %add192, %lnot.ext200, !dbg !1710
  %29 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr202 = lshr i64 %29, 16, !dbg !1710
  %shr203 = lshr i64 %shr202, 8, !dbg !1710
  %and204 = and i64 %shr203, 8, !dbg !1710
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1710
  %lnot206 = xor i1 %tobool205, true, !dbg !1710
  %lnot208 = xor i1 %lnot206, true, !dbg !1710
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !1710
  %add210 = add i32 %add201, %lnot.ext209, !dbg !1710
  %30 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr211 = lshr i64 %30, 16, !dbg !1710
  %shr212 = lshr i64 %shr211, 8, !dbg !1710
  %and213 = and i64 %shr212, 16, !dbg !1710
  %tobool214 = icmp ne i64 %and213, 0, !dbg !1710
  %lnot215 = xor i1 %tobool214, true, !dbg !1710
  %lnot217 = xor i1 %lnot215, true, !dbg !1710
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !1710
  %add219 = add i32 %add210, %lnot.ext218, !dbg !1710
  %31 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr220 = lshr i64 %31, 16, !dbg !1710
  %shr221 = lshr i64 %shr220, 8, !dbg !1710
  %and222 = and i64 %shr221, 32, !dbg !1710
  %tobool223 = icmp ne i64 %and222, 0, !dbg !1710
  %lnot224 = xor i1 %tobool223, true, !dbg !1710
  %lnot226 = xor i1 %lnot224, true, !dbg !1710
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !1710
  %add228 = add i32 %add219, %lnot.ext227, !dbg !1710
  %32 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr229 = lshr i64 %32, 16, !dbg !1710
  %shr230 = lshr i64 %shr229, 8, !dbg !1710
  %and231 = and i64 %shr230, 64, !dbg !1710
  %tobool232 = icmp ne i64 %and231, 0, !dbg !1710
  %lnot233 = xor i1 %tobool232, true, !dbg !1710
  %lnot235 = xor i1 %lnot233, true, !dbg !1710
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !1710
  %add237 = add i32 %add228, %lnot.ext236, !dbg !1710
  %33 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr238 = lshr i64 %33, 16, !dbg !1710
  %shr239 = lshr i64 %shr238, 8, !dbg !1710
  %and240 = and i64 %shr239, 128, !dbg !1710
  %tobool241 = icmp ne i64 %and240, 0, !dbg !1710
  %lnot242 = xor i1 %tobool241, true, !dbg !1710
  %lnot244 = xor i1 %lnot242, true, !dbg !1710
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !1710
  %add246 = add i32 %add237, %lnot.ext245, !dbg !1710
  %add247 = add i32 %add175, %add246, !dbg !1710
  %add248 = add i32 %add112, %add247, !dbg !1710
  %34 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr249 = lshr i64 %34, 32, !dbg !1710
  %and250 = and i64 %shr249, 1, !dbg !1710
  %tobool251 = icmp ne i64 %and250, 0, !dbg !1710
  %lnot252 = xor i1 %tobool251, true, !dbg !1710
  %lnot254 = xor i1 %lnot252, true, !dbg !1710
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !1710
  %35 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr256 = lshr i64 %35, 32, !dbg !1710
  %and257 = and i64 %shr256, 2, !dbg !1710
  %tobool258 = icmp ne i64 %and257, 0, !dbg !1710
  %lnot259 = xor i1 %tobool258, true, !dbg !1710
  %lnot261 = xor i1 %lnot259, true, !dbg !1710
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !1710
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !1710
  %36 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr264 = lshr i64 %36, 32, !dbg !1710
  %and265 = and i64 %shr264, 4, !dbg !1710
  %tobool266 = icmp ne i64 %and265, 0, !dbg !1710
  %lnot267 = xor i1 %tobool266, true, !dbg !1710
  %lnot269 = xor i1 %lnot267, true, !dbg !1710
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !1710
  %add271 = add i32 %add263, %lnot.ext270, !dbg !1710
  %37 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr272 = lshr i64 %37, 32, !dbg !1710
  %and273 = and i64 %shr272, 8, !dbg !1710
  %tobool274 = icmp ne i64 %and273, 0, !dbg !1710
  %lnot275 = xor i1 %tobool274, true, !dbg !1710
  %lnot277 = xor i1 %lnot275, true, !dbg !1710
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !1710
  %add279 = add i32 %add271, %lnot.ext278, !dbg !1710
  %38 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr280 = lshr i64 %38, 32, !dbg !1710
  %and281 = and i64 %shr280, 16, !dbg !1710
  %tobool282 = icmp ne i64 %and281, 0, !dbg !1710
  %lnot283 = xor i1 %tobool282, true, !dbg !1710
  %lnot285 = xor i1 %lnot283, true, !dbg !1710
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !1710
  %add287 = add i32 %add279, %lnot.ext286, !dbg !1710
  %39 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr288 = lshr i64 %39, 32, !dbg !1710
  %and289 = and i64 %shr288, 32, !dbg !1710
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1710
  %lnot291 = xor i1 %tobool290, true, !dbg !1710
  %lnot293 = xor i1 %lnot291, true, !dbg !1710
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !1710
  %add295 = add i32 %add287, %lnot.ext294, !dbg !1710
  %40 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr296 = lshr i64 %40, 32, !dbg !1710
  %and297 = and i64 %shr296, 64, !dbg !1710
  %tobool298 = icmp ne i64 %and297, 0, !dbg !1710
  %lnot299 = xor i1 %tobool298, true, !dbg !1710
  %lnot301 = xor i1 %lnot299, true, !dbg !1710
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !1710
  %add303 = add i32 %add295, %lnot.ext302, !dbg !1710
  %41 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr304 = lshr i64 %41, 32, !dbg !1710
  %and305 = and i64 %shr304, 128, !dbg !1710
  %tobool306 = icmp ne i64 %and305, 0, !dbg !1710
  %lnot307 = xor i1 %tobool306, true, !dbg !1710
  %lnot309 = xor i1 %lnot307, true, !dbg !1710
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !1710
  %add311 = add i32 %add303, %lnot.ext310, !dbg !1710
  %42 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr312 = lshr i64 %42, 32, !dbg !1710
  %shr313 = lshr i64 %shr312, 8, !dbg !1710
  %and314 = and i64 %shr313, 1, !dbg !1710
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1710
  %lnot316 = xor i1 %tobool315, true, !dbg !1710
  %lnot318 = xor i1 %lnot316, true, !dbg !1710
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !1710
  %43 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr320 = lshr i64 %43, 32, !dbg !1710
  %shr321 = lshr i64 %shr320, 8, !dbg !1710
  %and322 = and i64 %shr321, 2, !dbg !1710
  %tobool323 = icmp ne i64 %and322, 0, !dbg !1710
  %lnot324 = xor i1 %tobool323, true, !dbg !1710
  %lnot326 = xor i1 %lnot324, true, !dbg !1710
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !1710
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !1710
  %44 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr329 = lshr i64 %44, 32, !dbg !1710
  %shr330 = lshr i64 %shr329, 8, !dbg !1710
  %and331 = and i64 %shr330, 4, !dbg !1710
  %tobool332 = icmp ne i64 %and331, 0, !dbg !1710
  %lnot333 = xor i1 %tobool332, true, !dbg !1710
  %lnot335 = xor i1 %lnot333, true, !dbg !1710
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !1710
  %add337 = add i32 %add328, %lnot.ext336, !dbg !1710
  %45 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr338 = lshr i64 %45, 32, !dbg !1710
  %shr339 = lshr i64 %shr338, 8, !dbg !1710
  %and340 = and i64 %shr339, 8, !dbg !1710
  %tobool341 = icmp ne i64 %and340, 0, !dbg !1710
  %lnot342 = xor i1 %tobool341, true, !dbg !1710
  %lnot344 = xor i1 %lnot342, true, !dbg !1710
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !1710
  %add346 = add i32 %add337, %lnot.ext345, !dbg !1710
  %46 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr347 = lshr i64 %46, 32, !dbg !1710
  %shr348 = lshr i64 %shr347, 8, !dbg !1710
  %and349 = and i64 %shr348, 16, !dbg !1710
  %tobool350 = icmp ne i64 %and349, 0, !dbg !1710
  %lnot351 = xor i1 %tobool350, true, !dbg !1710
  %lnot353 = xor i1 %lnot351, true, !dbg !1710
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !1710
  %add355 = add i32 %add346, %lnot.ext354, !dbg !1710
  %47 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr356 = lshr i64 %47, 32, !dbg !1710
  %shr357 = lshr i64 %shr356, 8, !dbg !1710
  %and358 = and i64 %shr357, 32, !dbg !1710
  %tobool359 = icmp ne i64 %and358, 0, !dbg !1710
  %lnot360 = xor i1 %tobool359, true, !dbg !1710
  %lnot362 = xor i1 %lnot360, true, !dbg !1710
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !1710
  %add364 = add i32 %add355, %lnot.ext363, !dbg !1710
  %48 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr365 = lshr i64 %48, 32, !dbg !1710
  %shr366 = lshr i64 %shr365, 8, !dbg !1710
  %and367 = and i64 %shr366, 64, !dbg !1710
  %tobool368 = icmp ne i64 %and367, 0, !dbg !1710
  %lnot369 = xor i1 %tobool368, true, !dbg !1710
  %lnot371 = xor i1 %lnot369, true, !dbg !1710
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !1710
  %add373 = add i32 %add364, %lnot.ext372, !dbg !1710
  %49 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr374 = lshr i64 %49, 32, !dbg !1710
  %shr375 = lshr i64 %shr374, 8, !dbg !1710
  %and376 = and i64 %shr375, 128, !dbg !1710
  %tobool377 = icmp ne i64 %and376, 0, !dbg !1710
  %lnot378 = xor i1 %tobool377, true, !dbg !1710
  %lnot380 = xor i1 %lnot378, true, !dbg !1710
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !1710
  %add382 = add i32 %add373, %lnot.ext381, !dbg !1710
  %add383 = add i32 %add311, %add382, !dbg !1710
  %50 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr384 = lshr i64 %50, 32, !dbg !1710
  %shr385 = lshr i64 %shr384, 16, !dbg !1710
  %and386 = and i64 %shr385, 1, !dbg !1710
  %tobool387 = icmp ne i64 %and386, 0, !dbg !1710
  %lnot388 = xor i1 %tobool387, true, !dbg !1710
  %lnot390 = xor i1 %lnot388, true, !dbg !1710
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !1710
  %51 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr392 = lshr i64 %51, 32, !dbg !1710
  %shr393 = lshr i64 %shr392, 16, !dbg !1710
  %and394 = and i64 %shr393, 2, !dbg !1710
  %tobool395 = icmp ne i64 %and394, 0, !dbg !1710
  %lnot396 = xor i1 %tobool395, true, !dbg !1710
  %lnot398 = xor i1 %lnot396, true, !dbg !1710
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !1710
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !1710
  %52 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr401 = lshr i64 %52, 32, !dbg !1710
  %shr402 = lshr i64 %shr401, 16, !dbg !1710
  %and403 = and i64 %shr402, 4, !dbg !1710
  %tobool404 = icmp ne i64 %and403, 0, !dbg !1710
  %lnot405 = xor i1 %tobool404, true, !dbg !1710
  %lnot407 = xor i1 %lnot405, true, !dbg !1710
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !1710
  %add409 = add i32 %add400, %lnot.ext408, !dbg !1710
  %53 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr410 = lshr i64 %53, 32, !dbg !1710
  %shr411 = lshr i64 %shr410, 16, !dbg !1710
  %and412 = and i64 %shr411, 8, !dbg !1710
  %tobool413 = icmp ne i64 %and412, 0, !dbg !1710
  %lnot414 = xor i1 %tobool413, true, !dbg !1710
  %lnot416 = xor i1 %lnot414, true, !dbg !1710
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !1710
  %add418 = add i32 %add409, %lnot.ext417, !dbg !1710
  %54 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr419 = lshr i64 %54, 32, !dbg !1710
  %shr420 = lshr i64 %shr419, 16, !dbg !1710
  %and421 = and i64 %shr420, 16, !dbg !1710
  %tobool422 = icmp ne i64 %and421, 0, !dbg !1710
  %lnot423 = xor i1 %tobool422, true, !dbg !1710
  %lnot425 = xor i1 %lnot423, true, !dbg !1710
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !1710
  %add427 = add i32 %add418, %lnot.ext426, !dbg !1710
  %55 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr428 = lshr i64 %55, 32, !dbg !1710
  %shr429 = lshr i64 %shr428, 16, !dbg !1710
  %and430 = and i64 %shr429, 32, !dbg !1710
  %tobool431 = icmp ne i64 %and430, 0, !dbg !1710
  %lnot432 = xor i1 %tobool431, true, !dbg !1710
  %lnot434 = xor i1 %lnot432, true, !dbg !1710
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !1710
  %add436 = add i32 %add427, %lnot.ext435, !dbg !1710
  %56 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr437 = lshr i64 %56, 32, !dbg !1710
  %shr438 = lshr i64 %shr437, 16, !dbg !1710
  %and439 = and i64 %shr438, 64, !dbg !1710
  %tobool440 = icmp ne i64 %and439, 0, !dbg !1710
  %lnot441 = xor i1 %tobool440, true, !dbg !1710
  %lnot443 = xor i1 %lnot441, true, !dbg !1710
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !1710
  %add445 = add i32 %add436, %lnot.ext444, !dbg !1710
  %57 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr446 = lshr i64 %57, 32, !dbg !1710
  %shr447 = lshr i64 %shr446, 16, !dbg !1710
  %and448 = and i64 %shr447, 128, !dbg !1710
  %tobool449 = icmp ne i64 %and448, 0, !dbg !1710
  %lnot450 = xor i1 %tobool449, true, !dbg !1710
  %lnot452 = xor i1 %lnot450, true, !dbg !1710
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !1710
  %add454 = add i32 %add445, %lnot.ext453, !dbg !1710
  %58 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr455 = lshr i64 %58, 32, !dbg !1710
  %shr456 = lshr i64 %shr455, 16, !dbg !1710
  %shr457 = lshr i64 %shr456, 8, !dbg !1710
  %and458 = and i64 %shr457, 1, !dbg !1710
  %tobool459 = icmp ne i64 %and458, 0, !dbg !1710
  %lnot460 = xor i1 %tobool459, true, !dbg !1710
  %lnot462 = xor i1 %lnot460, true, !dbg !1710
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !1710
  %59 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr464 = lshr i64 %59, 32, !dbg !1710
  %shr465 = lshr i64 %shr464, 16, !dbg !1710
  %shr466 = lshr i64 %shr465, 8, !dbg !1710
  %and467 = and i64 %shr466, 2, !dbg !1710
  %tobool468 = icmp ne i64 %and467, 0, !dbg !1710
  %lnot469 = xor i1 %tobool468, true, !dbg !1710
  %lnot471 = xor i1 %lnot469, true, !dbg !1710
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !1710
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !1710
  %60 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr474 = lshr i64 %60, 32, !dbg !1710
  %shr475 = lshr i64 %shr474, 16, !dbg !1710
  %shr476 = lshr i64 %shr475, 8, !dbg !1710
  %and477 = and i64 %shr476, 4, !dbg !1710
  %tobool478 = icmp ne i64 %and477, 0, !dbg !1710
  %lnot479 = xor i1 %tobool478, true, !dbg !1710
  %lnot481 = xor i1 %lnot479, true, !dbg !1710
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !1710
  %add483 = add i32 %add473, %lnot.ext482, !dbg !1710
  %61 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr484 = lshr i64 %61, 32, !dbg !1710
  %shr485 = lshr i64 %shr484, 16, !dbg !1710
  %shr486 = lshr i64 %shr485, 8, !dbg !1710
  %and487 = and i64 %shr486, 8, !dbg !1710
  %tobool488 = icmp ne i64 %and487, 0, !dbg !1710
  %lnot489 = xor i1 %tobool488, true, !dbg !1710
  %lnot491 = xor i1 %lnot489, true, !dbg !1710
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !1710
  %add493 = add i32 %add483, %lnot.ext492, !dbg !1710
  %62 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr494 = lshr i64 %62, 32, !dbg !1710
  %shr495 = lshr i64 %shr494, 16, !dbg !1710
  %shr496 = lshr i64 %shr495, 8, !dbg !1710
  %and497 = and i64 %shr496, 16, !dbg !1710
  %tobool498 = icmp ne i64 %and497, 0, !dbg !1710
  %lnot499 = xor i1 %tobool498, true, !dbg !1710
  %lnot501 = xor i1 %lnot499, true, !dbg !1710
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !1710
  %add503 = add i32 %add493, %lnot.ext502, !dbg !1710
  %63 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr504 = lshr i64 %63, 32, !dbg !1710
  %shr505 = lshr i64 %shr504, 16, !dbg !1710
  %shr506 = lshr i64 %shr505, 8, !dbg !1710
  %and507 = and i64 %shr506, 32, !dbg !1710
  %tobool508 = icmp ne i64 %and507, 0, !dbg !1710
  %lnot509 = xor i1 %tobool508, true, !dbg !1710
  %lnot511 = xor i1 %lnot509, true, !dbg !1710
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !1710
  %add513 = add i32 %add503, %lnot.ext512, !dbg !1710
  %64 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr514 = lshr i64 %64, 32, !dbg !1710
  %shr515 = lshr i64 %shr514, 16, !dbg !1710
  %shr516 = lshr i64 %shr515, 8, !dbg !1710
  %and517 = and i64 %shr516, 64, !dbg !1710
  %tobool518 = icmp ne i64 %and517, 0, !dbg !1710
  %lnot519 = xor i1 %tobool518, true, !dbg !1710
  %lnot521 = xor i1 %lnot519, true, !dbg !1710
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !1710
  %add523 = add i32 %add513, %lnot.ext522, !dbg !1710
  %65 = load i64, ptr %w.addr, align 8, !dbg !1710
  %shr524 = lshr i64 %65, 32, !dbg !1710
  %shr525 = lshr i64 %shr524, 16, !dbg !1710
  %shr526 = lshr i64 %shr525, 8, !dbg !1710
  %and527 = and i64 %shr526, 128, !dbg !1710
  %tobool528 = icmp ne i64 %and527, 0, !dbg !1710
  %lnot529 = xor i1 %tobool528, true, !dbg !1710
  %lnot531 = xor i1 %lnot529, true, !dbg !1710
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !1710
  %add533 = add i32 %add523, %lnot.ext532, !dbg !1710
  %add534 = add i32 %add454, %add533, !dbg !1710
  %add535 = add i32 %add383, %add534, !dbg !1710
  %add536 = add i32 %add248, %add535, !dbg !1710
  %conv = zext i32 %add536 to i64, !dbg !1710
  br label %cond.end, !dbg !1710

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !1710
  %call = call i64 @__arch_hweight64(i64 noundef %66) #14, !dbg !1710
  br label %cond.end, !dbg !1710

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !1710
  ret i64 %cond, !dbg !1711
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1712 dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #4 align 16 !dbg !1713 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1718, metadata !DIExpression()), !dbg !1720
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #12, !dbg !1721
  call void @llvm.dbg.declare(metadata ptr %res, metadata !1719, metadata !DIExpression()), !dbg !1722
  %0 = load i64, ptr %w.addr, align 8, !dbg !1723
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #15, !dbg !1724, !srcloc !1725
  store i64 %1, ptr %res, align 8, !dbg !1724
  %2 = load i64, ptr %res, align 8, !dbg !1726
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #12, !dbg !1727
  ret i64 %2, !dbg !1728
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !1729 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1731, metadata !DIExpression()), !dbg !1733
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1732, metadata !DIExpression()), !dbg !1734
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1735
  %1 = load i64, ptr %size.addr, align 8, !dbg !1736
  %conv = trunc i64 %1 to i32, !dbg !1736
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !1737
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1738
  %3 = load i64, ptr %size.addr, align 8, !dbg !1738
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #14, !dbg !1738
  ret void, !dbg !1739
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !1740 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1742, metadata !DIExpression()), !dbg !1744
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1743, metadata !DIExpression()), !dbg !1745
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1746
  %1 = load i32, ptr %i.addr, align 4, !dbg !1747
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #14, !dbg !1748
  ret void, !dbg !1749
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !1750 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1752, metadata !DIExpression()), !dbg !1754
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1753, metadata !DIExpression()), !dbg !1755
  br label %do.body, !dbg !1756

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !1757
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1757
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !1757
  store volatile i32 %0, ptr %counter, align 4, !dbg !1757
  br label %do.end, !dbg !1757

do.end:                                           ; preds = %do.body
  ret void, !dbg !1759
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold noredzone }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(read) }
attributes #14 = { noredzone }
attributes #15 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!296, !297, !298, !299, !300, !301, !302, !303}
!llvm.ident = !{!304}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tsc_async_resets", scope: !2, file: !3, line: 40, type: !51, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.tsc_sync.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/tsc_sync\22 -D KBUILD_BASENAME=\22tsc_sync\22 -D KBUILD_MODNAME=\22tsc_sync\22 -D __KBUILD_MODNAME=kmod_tsc_sync -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/tsc_sync.ll arch/x86/kernel/tsc_sync.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !37, globals: !92, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/tsc_sync.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83bb0bc93fc9e1758a083d02205cd52c")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 30, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!14 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!15 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!16 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!17 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!18 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!19 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!20 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!21 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!22 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!23 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!24 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!25 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!26 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!27 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!28 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!29 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!30 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!31 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!32 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!33 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!34 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!35 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!36 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!37 = !{!38, !54, !55, !56, !57, !58, !49, !59, !69, !71, !73, !76, !7, !79, !82, !84, !86, !74, !91}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tsc_adjust", file: !3, line: 26, size: 256, elements: !40)
!40 = !{!41, !47, !48, !50}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "bootval", scope: !39, file: !3, line: 27, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !43, line: 22, baseType: !44)
!43 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !45, line: 30, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!46 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted", scope: !39, file: !3, line: 28, baseType: !42, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "nextcheck", scope: !39, file: !3, line: 29, baseType: !49, size: 64, offset: 128)
!49 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "warned", scope: !39, file: !3, line: 30, baseType: !51, size: 8, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !52, line: 35, baseType: !53)
!52 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!53 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!57 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !61, line: 913, baseType: !62)
!61 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 64, elements: !67)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !61, line: 19, size: 64, elements: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !63, file: !61, line: 19, baseType: !66, size: 64)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !43, line: 21, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !45, line: 27, baseType: !7)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !43, line: 23, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !45, line: 31, baseType: !75)
!75 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !55)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "cycles_t", file: !83, line: 14, baseType: !75)
!83 = !DIFile(filename: "./arch/x86/include/asm/tsc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c263a7d672afe42de3ea9a5e4b53aa46")
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !71)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !43, line: 17, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !45, line: 21, baseType: !90)
!90 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!92 = !{!93, !98, !103, !108, !110, !164, !169, !174, !0, !176, !182, !184, !186, !188, !207, !212, !217, !219, !224, !229, !231, !233, !256, !261, !263, !268, !273}
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !3, line: 47, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 384, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 48)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 560, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 70)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 40, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 5)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_tsc_sync__208_120_start_sync_check_timer7209", scope: !2, file: !3, line: 120, type: !54, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "__already_done", scope: !112, file: !3, line: 222, type: !51, isLocal: true, isDefinition: true)
!112 = distinct !DISubprogram(name: "tsc_store_and_check_tsc_adjust", scope: !3, file: !3, line: 180, type: !113, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !115)
!113 = !DISubroutineType(types: !114)
!114 = !{!51, !51}
!115 = !{!116, !117, !118, !119, !124, !126, !127, !128, !131, !133, !135, !137, !138, !141, !143, !148, !150, !152, !155, !157, !160, !163}
!116 = !DILocalVariable(name: "bootcpu", arg: 1, scope: !112, file: !3, line: 180, type: !51)
!117 = !DILocalVariable(name: "ref", scope: !112, file: !3, line: 182, type: !38)
!118 = !DILocalVariable(name: "cur", scope: !112, file: !3, line: 182, type: !38)
!119 = !DILocalVariable(name: "__vpp_verify", scope: !120, file: !3, line: 182, type: !122)
!120 = distinct !DILexicalBlock(scope: !121, file: !3, line: 182, column: 33)
!121 = distinct !DILexicalBlock(scope: !112, file: !3, line: 182, column: 33)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!124 = !DILocalVariable(name: "tcp_ptr__", scope: !125, file: !3, line: 182, type: !49)
!125 = distinct !DILexicalBlock(scope: !121, file: !3, line: 182, column: 33)
!126 = !DILocalVariable(name: "refcpu", scope: !112, file: !3, line: 183, type: !7)
!127 = !DILocalVariable(name: "cpu", scope: !112, file: !3, line: 183, type: !7)
!128 = !DILocalVariable(name: "pscr_ret__", scope: !129, file: !3, line: 183, type: !55)
!129 = distinct !DILexicalBlock(scope: !130, file: !3, line: 183, column: 29)
!130 = distinct !DILexicalBlock(scope: !112, file: !3, line: 183, column: 29)
!131 = !DILocalVariable(name: "__vpp_verify", scope: !132, file: !3, line: 183, type: !122)
!132 = distinct !DILexicalBlock(scope: !129, file: !3, line: 183, column: 29)
!133 = !DILocalVariable(name: "pfo_val__", scope: !134, file: !3, line: 183, type: !71)
!134 = distinct !DILexicalBlock(scope: !129, file: !3, line: 183, column: 29)
!135 = !DILocalVariable(name: "mask", scope: !112, file: !3, line: 184, type: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!137 = !DILocalVariable(name: "bootval", scope: !112, file: !3, line: 185, type: !42)
!138 = !DILocalVariable(name: "__vpp_verify", scope: !139, file: !3, line: 207, type: !122)
!139 = distinct !DILexicalBlock(scope: !140, file: !3, line: 207, column: 9)
!140 = distinct !DILexicalBlock(scope: !112, file: !3, line: 207, column: 9)
!141 = !DILocalVariable(name: "__ptr", scope: !142, file: !3, line: 207, type: !49)
!142 = distinct !DILexicalBlock(scope: !140, file: !3, line: 207, column: 9)
!143 = !DILocalVariable(name: "pscr_ret__", scope: !144, file: !3, line: 211, type: !55)
!144 = distinct !DILexicalBlock(scope: !145, file: !3, line: 211, column: 40)
!145 = distinct !DILexicalBlock(scope: !146, file: !3, line: 211, column: 40)
!146 = distinct !DILexicalBlock(scope: !147, file: !3, line: 210, column: 28)
!147 = distinct !DILexicalBlock(scope: !112, file: !3, line: 210, column: 6)
!148 = !DILocalVariable(name: "__vpp_verify", scope: !149, file: !3, line: 211, type: !122)
!149 = distinct !DILexicalBlock(scope: !144, file: !3, line: 211, column: 40)
!150 = !DILocalVariable(name: "pfo_val__", scope: !151, file: !3, line: 211, type: !71)
!151 = distinct !DILexicalBlock(scope: !144, file: !3, line: 211, column: 40)
!152 = !DILocalVariable(name: "__vpp_verify", scope: !153, file: !3, line: 216, type: !122)
!153 = distinct !DILexicalBlock(scope: !154, file: !3, line: 216, column: 8)
!154 = distinct !DILexicalBlock(scope: !112, file: !3, line: 216, column: 8)
!155 = !DILocalVariable(name: "__ptr", scope: !156, file: !3, line: 216, type: !49)
!156 = distinct !DILexicalBlock(scope: !154, file: !3, line: 216, column: 8)
!157 = !DILocalVariable(name: "__ret_do_once", scope: !158, file: !3, line: 222, type: !51)
!158 = distinct !DILexicalBlock(scope: !159, file: !3, line: 222, column: 3)
!159 = distinct !DILexicalBlock(scope: !112, file: !3, line: 221, column: 6)
!160 = !DILocalVariable(name: "__ret_cond", scope: !161, file: !3, line: 222, type: !51)
!161 = distinct !DILexicalBlock(scope: !162, file: !3, line: 222, column: 3)
!162 = distinct !DILexicalBlock(scope: !158, file: !3, line: 222, column: 3)
!163 = !DILocalVariable(name: "__ret_once", scope: !161, file: !3, line: 222, type: !51)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 222, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 576, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 72)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 518, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 520, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 65)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "tsc_adjust", scope: !2, file: !3, line: 33, type: !39, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "start_count", scope: !2, file: !3, line: 245, type: !178, isLocal: true, isDefinition: true)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !52, line: 174, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 172, size: 32, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !179, file: !52, line: 173, baseType: !55, size: 32)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "stop_count", scope: !2, file: !3, line: 246, type: !178, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "test_runs", scope: !2, file: !3, line: 247, type: !178, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "max_warp", scope: !2, file: !3, line: 257, type: !82, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "tsc_sync_check_timer", scope: !2, file: !3, line: 34, type: !190, isLocal: true, isDefinition: true)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !191, line: 11, size: 320, elements: !192)
!191 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!192 = !{!193, !200, !201, !206}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !190, file: !191, line: 16, baseType: !194, size: 128)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !52, line: 198, size: 128, elements: !195)
!195 = !{!196, !198}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !52, line: 199, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !194, file: !52, line: 199, baseType: !199, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !190, file: !191, line: 17, baseType: !49, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !190, file: !191, line: 18, baseType: !202, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !190, file: !191, line: 19, baseType: !71, size: 32, offset: 256)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 432, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 54)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !3, line: 148, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 344, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 43)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !3, line: 398, type: !214, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !3, line: 400, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 552, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 69)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !3, line: 403, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 288, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 36)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "nr_warps", scope: !2, file: !3, line: 258, type: !55, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "random_warps", scope: !2, file: !3, line: 259, type: !55, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "tsc_sync_work", scope: !2, file: !3, line: 349, type: !235, isLocal: true, isDefinition: true)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !12, line: 98, size: 256, elements: !236)
!236 = !{!237, !244, !250}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !235, file: !12, line: 99, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !239, line: 13, baseType: !240)
!239 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !52, line: 181, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 179, size: 64, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !241, file: !52, line: 180, baseType: !42, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !235, file: !12, line: 100, baseType: !245, size: 128, offset: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !52, line: 190, size: 128, elements: !246)
!246 = !{!247, !249}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !52, line: 191, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !245, file: !52, line: 191, baseType: !248, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !235, file: !12, line: 101, baseType: !251, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !12, line: 21, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !255}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !3, line: 346, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 232, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 29)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "last_tsc", scope: !2, file: !3, line: 256, type: !82, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !3, line: 319, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 424, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 53)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !3, line: 319, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 216, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 27)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(name: "sync_lock", scope: !2, file: !3, line: 254, type: !275, isLocal: true, isDefinition: true)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !276, line: 44, baseType: !277)
!276 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !276, line: 14, size: 32, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, scope: !277, file: !276, line: 15, baseType: !280, size: 32)
!280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !276, line: 15, size: 32, elements: !281)
!281 = !{!282, !283, !288}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !280, file: !276, line: 16, baseType: !178, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !276, line: 24, baseType: !284, size: 16)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !280, file: !276, line: 24, size: 16, elements: !285)
!285 = !{!286, !287}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !284, file: !276, line: 25, baseType: !88, size: 8)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !284, file: !276, line: 26, baseType: !88, size: 8, offset: 8)
!288 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !276, line: 28, baseType: !289, size: 32)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !280, file: !276, line: 28, size: 32, elements: !290)
!290 = !{!291, !295}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !289, file: !276, line: 29, baseType: !292, size: 16)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !43, line: 19, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !45, line: 24, baseType: !294)
!294 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !289, file: !276, line: 30, baseType: !292, size: 16, offset: 16)
!296 = !{i32 7, !"Dwarf Version", i32 5}
!297 = !{i32 2, !"Debug Info Version", i32 3}
!298 = !{i32 1, !"wchar_size", i32 2}
!299 = !{i32 8, !"cf-protection-branch", i32 1}
!300 = !{i32 4, !"function_return_thunk_extern", i32 1}
!301 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!302 = !{i32 1, !"Code Model", i32 2}
!303 = !{i32 1, !"override-stack-alignment", i32 8}
!304 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!305 = distinct !DISubprogram(name: "mark_tsc_async_resets", scope: !3, file: !3, line: 42, type: !306, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !309)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!309 = !{!310}
!310 = !DILocalVariable(name: "reason", arg: 1, scope: !305, file: !3, line: 42, type: !308)
!311 = !DILocation(line: 42, column: 34, scope: !305)
!312 = !DILocation(line: 44, column: 6, scope: !313)
!313 = distinct !DILexicalBlock(scope: !305, file: !3, line: 44, column: 6)
!314 = !{i8 0, i8 2}
!315 = !{}
!316 = !DILocation(line: 44, column: 6, scope: !305)
!317 = !DILocation(line: 45, column: 3, scope: !313)
!318 = !DILocation(line: 46, column: 19, scope: !305)
!319 = !DILocation(line: 47, column: 2, scope: !320)
!320 = distinct !DILexicalBlock(scope: !305, file: !3, line: 47, column: 2)
!321 = !DILocation(line: 47, column: 2, scope: !322)
!322 = distinct !DILexicalBlock(scope: !320, file: !3, line: 47, column: 2)
!323 = !DILocation(line: 48, column: 1, scope: !305)
!324 = !DISubprogram(name: "_printk", scope: !325, file: !325, line: 153, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!325 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!326 = !DISubroutineType(types: !327)
!327 = !{!55, !76, null}
!328 = distinct !DISubprogram(name: "tsc_verify_tsc_adjust", scope: !3, file: !3, line: 50, type: !329, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !331)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !51}
!331 = !{!332, !333, !334, !337, !339, !340, !346, !348}
!332 = !DILocalVariable(name: "resume", arg: 1, scope: !328, file: !3, line: 50, type: !51)
!333 = !DILocalVariable(name: "adj", scope: !328, file: !3, line: 52, type: !38)
!334 = !DILocalVariable(name: "__vpp_verify", scope: !335, file: !3, line: 52, type: !122)
!335 = distinct !DILexicalBlock(scope: !336, file: !3, line: 52, column: 27)
!336 = distinct !DILexicalBlock(scope: !328, file: !3, line: 52, column: 27)
!337 = !DILocalVariable(name: "tcp_ptr__", scope: !338, file: !3, line: 52, type: !49)
!338 = distinct !DILexicalBlock(scope: !336, file: !3, line: 52, column: 27)
!339 = !DILocalVariable(name: "curval", scope: !328, file: !3, line: 53, type: !42)
!340 = !DILocalVariable(name: "pscr_ret__", scope: !341, file: !3, line: 76, type: !55)
!341 = distinct !DILexicalBlock(scope: !342, file: !3, line: 76, column: 3)
!342 = distinct !DILexicalBlock(scope: !343, file: !3, line: 76, column: 3)
!343 = distinct !DILexicalBlock(scope: !344, file: !3, line: 76, column: 3)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 75, column: 30)
!345 = distinct !DILexicalBlock(scope: !328, file: !3, line: 75, column: 6)
!346 = !DILocalVariable(name: "__vpp_verify", scope: !347, file: !3, line: 76, type: !122)
!347 = distinct !DILexicalBlock(scope: !341, file: !3, line: 76, column: 3)
!348 = !DILocalVariable(name: "pfo_val__", scope: !349, file: !3, line: 76, type: !71)
!349 = distinct !DILexicalBlock(scope: !341, file: !3, line: 76, column: 3)
!350 = !DILocation(line: 50, column: 33, scope: !328)
!351 = !DILocation(line: 52, column: 2, scope: !328)
!352 = !DILocation(line: 52, column: 21, scope: !328)
!353 = !DILocation(line: 52, column: 27, scope: !336)
!354 = !DILocation(line: 52, column: 27, scope: !335)
!355 = !DILocation(line: 52, column: 27, scope: !338)
!356 = !{i64 2152746927}
!357 = !DILocation(line: 53, column: 2, scope: !328)
!358 = !DILocation(line: 53, column: 6, scope: !328)
!359 = !DILocation(line: 55, column: 6, scope: !328)
!360 = !DILocation(line: 55, column: 7, scope: !361)
!361 = distinct !DILexicalBlock(scope: !328, file: !3, line: 55, column: 6)
!362 = !DILocation(line: 56, column: 3, scope: !361)
!363 = !DILocation(line: 59, column: 6, scope: !364)
!364 = distinct !DILexicalBlock(scope: !328, file: !3, line: 59, column: 6)
!365 = !DILocation(line: 59, column: 6, scope: !328)
!366 = !DILocation(line: 60, column: 3, scope: !364)
!367 = !DILocation(line: 63, column: 7, scope: !368)
!368 = distinct !DILexicalBlock(scope: !328, file: !3, line: 63, column: 6)
!369 = !DILocation(line: 63, column: 14, scope: !368)
!370 = !DILocation(line: 63, column: 17, scope: !368)
!371 = !DILocation(line: 63, column: 6, scope: !328)
!372 = !DILocation(line: 64, column: 3, scope: !368)
!373 = !DILocation(line: 66, column: 19, scope: !328)
!374 = !DILocation(line: 66, column: 27, scope: !328)
!375 = !DILocation(line: 66, column: 2, scope: !328)
!376 = !DILocation(line: 66, column: 7, scope: !328)
!377 = !DILocation(line: 66, column: 17, scope: !328)
!378 = !DILocation(line: 68, column: 2, scope: !328)
!379 = !DILocation(line: 69, column: 6, scope: !380)
!380 = distinct !DILexicalBlock(scope: !328, file: !3, line: 69, column: 6)
!381 = !DILocation(line: 69, column: 11, scope: !380)
!382 = !DILocation(line: 69, column: 23, scope: !380)
!383 = !DILocation(line: 69, column: 20, scope: !380)
!384 = !DILocation(line: 69, column: 6, scope: !328)
!385 = !DILocation(line: 70, column: 3, scope: !380)
!386 = !DILocation(line: 73, column: 30, scope: !328)
!387 = !DILocation(line: 73, column: 35, scope: !328)
!388 = !DILocation(line: 73, column: 2, scope: !328)
!389 = !DILocation(line: 75, column: 7, scope: !345)
!390 = !DILocation(line: 75, column: 12, scope: !345)
!391 = !DILocation(line: 75, column: 19, scope: !345)
!392 = !DILocation(line: 75, column: 22, scope: !345)
!393 = !DILocation(line: 75, column: 6, scope: !328)
!394 = !DILocation(line: 76, column: 3, scope: !343)
!395 = !DILocation(line: 76, column: 3, scope: !396)
!396 = distinct !DILexicalBlock(scope: !343, file: !3, line: 76, column: 3)
!397 = !DILocation(line: 76, column: 3, scope: !342)
!398 = !DILocation(line: 76, column: 3, scope: !341)
!399 = !DILocation(line: 76, column: 3, scope: !347)
!400 = !DILocation(line: 76, column: 3, scope: !349)
!401 = !{i64 2152756492}
!402 = !DILocation(line: 78, column: 3, scope: !344)
!403 = !DILocation(line: 78, column: 8, scope: !344)
!404 = !DILocation(line: 78, column: 15, scope: !344)
!405 = !DILocation(line: 79, column: 2, scope: !344)
!406 = !DILocation(line: 80, column: 1, scope: !328)
!407 = distinct !DISubprogram(name: "arch_test_bit", scope: !408, file: !408, line: 237, type: !409, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !414)
!408 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!409 = !DISubroutineType(types: !410)
!410 = !{!51, !49, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !49)
!414 = !{!415, !416}
!415 = !DILocalVariable(name: "nr", arg: 1, scope: !407, file: !408, line: 237, type: !49)
!416 = !DILocalVariable(name: "addr", arg: 2, scope: !407, file: !408, line: 237, type: !411)
!417 = !DILocation(line: 237, column: 29, scope: !407)
!418 = !DILocation(line: 237, column: 63, scope: !407)
!419 = !DILocation(line: 239, column: 30, scope: !407)
!420 = !DILocation(line: 239, column: 9, scope: !407)
!421 = !DILocation(line: 239, column: 54, scope: !407)
!422 = !DILocation(line: 239, column: 58, scope: !407)
!423 = !DILocation(line: 239, column: 36, scope: !407)
!424 = !DILocation(line: 240, column: 26, scope: !407)
!425 = !DILocation(line: 240, column: 30, scope: !407)
!426 = !DILocation(line: 240, column: 8, scope: !407)
!427 = !DILocation(line: 239, column: 2, scope: !407)
!428 = !DISubprogram(name: "check_tsc_unstable", scope: !83, file: !83, line: 37, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!429 = !DISubroutineType(types: !430)
!430 = !{!55}
!431 = distinct !DISubprogram(name: "native_read_msr", scope: !432, file: !432, line: 114, type: !433, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !435)
!432 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!433 = !DISubroutineType(types: !434)
!434 = !{!75, !7}
!435 = !{!436, !437}
!436 = !DILocalVariable(name: "msr", arg: 1, scope: !431, file: !432, line: 114, type: !7)
!437 = !DILocalVariable(name: "val", scope: !431, file: !432, line: 116, type: !75)
!438 = !DILocation(line: 114, column: 63, scope: !431)
!439 = !DILocation(line: 116, column: 2, scope: !431)
!440 = !DILocation(line: 116, column: 21, scope: !431)
!441 = !DILocation(line: 118, column: 16, scope: !431)
!442 = !DILocation(line: 118, column: 8, scope: !431)
!443 = !DILocation(line: 118, column: 6, scope: !431)
!444 = !DILocation(line: 120, column: 6, scope: !445)
!445 = distinct !DILexicalBlock(scope: !431, file: !432, line: 120, column: 6)
!446 = !DILocation(line: 120, column: 6, scope: !431)
!447 = !DILocation(line: 121, column: 21, scope: !445)
!448 = !DILocation(line: 121, column: 26, scope: !445)
!449 = !DILocation(line: 121, column: 3, scope: !445)
!450 = !DILocation(line: 123, column: 9, scope: !431)
!451 = !DILocation(line: 124, column: 1, scope: !431)
!452 = !DILocation(line: 123, column: 2, scope: !431)
!453 = distinct !DISubprogram(name: "wrmsrl", scope: !432, file: !432, line: 260, type: !454, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !7, !73}
!456 = !{!457, !458}
!457 = !DILocalVariable(name: "msr", arg: 1, scope: !453, file: !432, line: 260, type: !7)
!458 = !DILocalVariable(name: "val", arg: 2, scope: !453, file: !432, line: 260, type: !73)
!459 = !DILocation(line: 260, column: 40, scope: !453)
!460 = !DILocation(line: 260, column: 49, scope: !453)
!461 = !DILocation(line: 262, column: 19, scope: !453)
!462 = !DILocation(line: 262, column: 30, scope: !453)
!463 = !DILocation(line: 262, column: 34, scope: !453)
!464 = !DILocation(line: 262, column: 24, scope: !453)
!465 = !DILocation(line: 262, column: 58, scope: !453)
!466 = !DILocation(line: 262, column: 62, scope: !453)
!467 = !DILocation(line: 262, column: 52, scope: !453)
!468 = !DILocation(line: 262, column: 2, scope: !453)
!469 = !DILocation(line: 263, column: 1, scope: !453)
!470 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !471, file: !471, line: 313, type: !472, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !474)
!471 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!472 = !DISubroutineType(types: !473)
!473 = !{null, !76}
!474 = !{!475}
!475 = !DILocalVariable(name: "op", arg: 1, scope: !470, file: !471, line: 313, type: !76)
!476 = !DILocation(line: 313, column: 66, scope: !470)
!477 = !DILocation(line: 313, column: 72, scope: !470)
!478 = distinct !DISubprogram(name: "__initstub__kmod_tsc_sync__208_120_start_sync_check_timer7", scope: !3, file: !3, line: 120, type: !429, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!479 = !DILocation(line: 120, column: 1, scope: !478)
!480 = distinct !DISubprogram(name: "start_sync_check_timer", scope: !3, file: !3, line: 109, type: !429, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!481 = !DILocation(line: 111, column: 51, scope: !482)
!482 = distinct !DILexicalBlock(scope: !480, file: !3, line: 111, column: 6)
!483 = !DILocation(line: 111, column: 7, scope: !482)
!484 = !DILocation(line: 111, column: 54, scope: !482)
!485 = !DILocation(line: 111, column: 6, scope: !480)
!486 = !DILocation(line: 112, column: 3, scope: !482)
!487 = !DILocation(line: 114, column: 2, scope: !480)
!488 = !DILocation(line: 115, column: 33, scope: !480)
!489 = !DILocation(line: 115, column: 41, scope: !480)
!490 = !DILocation(line: 115, column: 31, scope: !480)
!491 = !DILocation(line: 116, column: 2, scope: !480)
!492 = !DILocation(line: 118, column: 2, scope: !480)
!493 = !DILocation(line: 119, column: 1, scope: !480)
!494 = !DILocation(line: 180, column: 42, scope: !112)
!495 = !DILocation(line: 182, column: 2, scope: !112)
!496 = !DILocation(line: 182, column: 21, scope: !112)
!497 = !DILocation(line: 182, column: 27, scope: !112)
!498 = !DILocation(line: 182, column: 33, scope: !121)
!499 = !DILocation(line: 182, column: 33, scope: !120)
!500 = !DILocation(line: 182, column: 33, scope: !125)
!501 = !{i64 2152785579}
!502 = !DILocation(line: 183, column: 2, scope: !112)
!503 = !DILocation(line: 183, column: 15, scope: !112)
!504 = !DILocation(line: 183, column: 23, scope: !112)
!505 = !DILocation(line: 183, column: 29, scope: !130)
!506 = !DILocation(line: 183, column: 29, scope: !129)
!507 = !DILocation(line: 183, column: 29, scope: !132)
!508 = !DILocation(line: 183, column: 29, scope: !134)
!509 = !{i64 2152788494}
!510 = !DILocation(line: 184, column: 2, scope: !112)
!511 = !DILocation(line: 184, column: 18, scope: !112)
!512 = !DILocation(line: 185, column: 2, scope: !112)
!513 = !DILocation(line: 185, column: 6, scope: !112)
!514 = !DILocation(line: 187, column: 6, scope: !112)
!515 = !DILocation(line: 187, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !112, file: !3, line: 187, column: 6)
!517 = !DILocation(line: 188, column: 3, scope: !516)
!518 = !DILocation(line: 190, column: 2, scope: !112)
!519 = !DILocation(line: 191, column: 17, scope: !112)
!520 = !DILocation(line: 191, column: 2, scope: !112)
!521 = !DILocation(line: 191, column: 7, scope: !112)
!522 = !DILocation(line: 191, column: 15, scope: !112)
!523 = !DILocation(line: 192, column: 19, scope: !112)
!524 = !DILocation(line: 192, column: 27, scope: !112)
!525 = !DILocation(line: 192, column: 2, scope: !112)
!526 = !DILocation(line: 192, column: 7, scope: !112)
!527 = !DILocation(line: 192, column: 17, scope: !112)
!528 = !DILocation(line: 193, column: 2, scope: !112)
!529 = !DILocation(line: 193, column: 7, scope: !112)
!530 = !DILocation(line: 193, column: 14, scope: !112)
!531 = !DILocation(line: 198, column: 18, scope: !112)
!532 = !DILocation(line: 198, column: 2, scope: !112)
!533 = !DILocation(line: 198, column: 7, scope: !112)
!534 = !DILocation(line: 198, column: 16, scope: !112)
!535 = !DILocation(line: 207, column: 9, scope: !140)
!536 = !DILocation(line: 207, column: 9, scope: !139)
!537 = !DILocation(line: 207, column: 9, scope: !142)
!538 = !DILocation(line: 207, column: 9, scope: !112)
!539 = !DILocation(line: 207, column: 7, scope: !112)
!540 = !DILocation(line: 208, column: 11, scope: !112)
!541 = !DILocation(line: 208, column: 34, scope: !112)
!542 = !DILocation(line: 208, column: 40, scope: !112)
!543 = !DILocation(line: 208, column: 18, scope: !112)
!544 = !DILocation(line: 208, column: 47, scope: !112)
!545 = !DILocation(line: 208, column: 9, scope: !112)
!546 = !DILocation(line: 210, column: 6, scope: !147)
!547 = !DILocation(line: 210, column: 16, scope: !147)
!548 = !DILocation(line: 210, column: 13, scope: !147)
!549 = !DILocation(line: 210, column: 6, scope: !112)
!550 = !DILocation(line: 211, column: 26, scope: !146)
!551 = !DILocation(line: 211, column: 31, scope: !146)
!552 = !DILocation(line: 211, column: 40, scope: !145)
!553 = !DILocation(line: 211, column: 40, scope: !144)
!554 = !DILocation(line: 211, column: 40, scope: !149)
!555 = !DILocation(line: 211, column: 40, scope: !151)
!556 = !{i64 2152802280}
!557 = !DILocation(line: 212, column: 12, scope: !146)
!558 = !DILocation(line: 211, column: 3, scope: !146)
!559 = !DILocation(line: 213, column: 3, scope: !146)
!560 = !DILocation(line: 216, column: 8, scope: !154)
!561 = !DILocation(line: 216, column: 8, scope: !153)
!562 = !DILocation(line: 216, column: 8, scope: !156)
!563 = !DILocation(line: 216, column: 6, scope: !112)
!564 = !DILocation(line: 221, column: 6, scope: !159)
!565 = !DILocation(line: 221, column: 17, scope: !159)
!566 = !DILocation(line: 221, column: 22, scope: !159)
!567 = !DILocation(line: 221, column: 14, scope: !159)
!568 = !DILocation(line: 221, column: 6, scope: !112)
!569 = !DILocation(line: 222, column: 3, scope: !158)
!570 = !DILocation(line: 222, column: 3, scope: !161)
!571 = !DILocation(line: 222, column: 3, scope: !572)
!572 = distinct !DILexicalBlock(scope: !161, file: !3, line: 222, column: 3)
!573 = !DILocation(line: 0, scope: !572)
!574 = !DILocation(line: 222, column: 3, scope: !575)
!575 = distinct !DILexicalBlock(scope: !572, file: !3, line: 222, column: 3)
!576 = !DILocation(line: 222, column: 3, scope: !162)
!577 = !DILocation(line: 222, column: 3, scope: !578)
!578 = distinct !DILexicalBlock(scope: !162, file: !3, line: 222, column: 3)
!579 = !DILocation(line: 222, column: 3, scope: !580)
!580 = distinct !DILexicalBlock(scope: !578, file: !3, line: 222, column: 3)
!581 = !DILocation(line: 222, column: 3, scope: !159)
!582 = !DILocation(line: 230, column: 6, scope: !583)
!583 = distinct !DILexicalBlock(scope: !112, file: !3, line: 230, column: 6)
!584 = !DILocation(line: 230, column: 17, scope: !583)
!585 = !DILocation(line: 230, column: 22, scope: !583)
!586 = !DILocation(line: 230, column: 14, scope: !583)
!587 = !DILocation(line: 230, column: 6, scope: !112)
!588 = !DILocation(line: 231, column: 19, scope: !589)
!589 = distinct !DILexicalBlock(scope: !583, file: !3, line: 230, column: 32)
!590 = !DILocation(line: 231, column: 24, scope: !589)
!591 = !DILocation(line: 231, column: 3, scope: !589)
!592 = !DILocation(line: 231, column: 8, scope: !589)
!593 = !DILocation(line: 231, column: 17, scope: !589)
!594 = !DILocation(line: 232, column: 31, scope: !589)
!595 = !DILocation(line: 232, column: 36, scope: !589)
!596 = !DILocation(line: 232, column: 3, scope: !589)
!597 = !DILocation(line: 233, column: 2, scope: !589)
!598 = !DILocation(line: 238, column: 2, scope: !112)
!599 = !DILocation(line: 239, column: 1, scope: !112)
!600 = distinct !DISubprogram(name: "cpumask_any_but", scope: !61, file: !61, line: 379, type: !601, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !603)
!601 = !DISubroutineType(types: !602)
!602 = !{!7, !69, !7}
!603 = !{!604, !605, !606}
!604 = !DILocalVariable(name: "mask", arg: 1, scope: !600, file: !61, line: 379, type: !69)
!605 = !DILocalVariable(name: "cpu", arg: 2, scope: !600, file: !61, line: 379, type: !7)
!606 = !DILocalVariable(name: "i", scope: !600, file: !61, line: 381, type: !7)
!607 = !DILocation(line: 379, column: 52, scope: !600)
!608 = !DILocation(line: 379, column: 71, scope: !600)
!609 = !DILocation(line: 381, column: 2, scope: !600)
!610 = !DILocation(line: 381, column: 15, scope: !600)
!611 = !DILocation(line: 383, column: 16, scope: !600)
!612 = !DILocation(line: 383, column: 2, scope: !600)
!613 = !DILocation(line: 384, column: 2, scope: !614)
!614 = distinct !DILexicalBlock(scope: !600, file: !61, line: 384, column: 2)
!615 = !DILocation(line: 384, column: 2, scope: !616)
!616 = distinct !DILexicalBlock(scope: !614, file: !61, line: 384, column: 2)
!617 = !DILocation(line: 385, column: 7, scope: !618)
!618 = distinct !DILexicalBlock(scope: !616, file: !61, line: 385, column: 7)
!619 = !DILocation(line: 385, column: 12, scope: !618)
!620 = !DILocation(line: 385, column: 9, scope: !618)
!621 = !DILocation(line: 385, column: 7, scope: !616)
!622 = !DILocation(line: 386, column: 4, scope: !618)
!623 = distinct !{!623, !613, !624, !625, !626}
!624 = !DILocation(line: 386, column: 4, scope: !614)
!625 = !{!"llvm.loop.mustprogress"}
!626 = !{!"llvm.loop.unroll.disable"}
!627 = !DILocation(line: 387, column: 9, scope: !600)
!628 = !DILocation(line: 388, column: 1, scope: !600)
!629 = !DILocation(line: 387, column: 2, scope: !600)
!630 = distinct !DISubprogram(name: "tsc_sanitize_first_cpu", scope: !3, file: !3, line: 122, type: !631, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !633)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !38, !42, !7, !51}
!633 = !{!634, !635, !636, !637}
!634 = !DILocalVariable(name: "cur", arg: 1, scope: !630, file: !3, line: 122, type: !38)
!635 = !DILocalVariable(name: "bootval", arg: 2, scope: !630, file: !3, line: 122, type: !42)
!636 = !DILocalVariable(name: "cpu", arg: 3, scope: !630, file: !3, line: 123, type: !7)
!637 = !DILocalVariable(name: "bootcpu", arg: 4, scope: !630, file: !3, line: 123, type: !51)
!638 = !DILocation(line: 122, column: 55, scope: !630)
!639 = !DILocation(line: 122, column: 64, scope: !630)
!640 = !DILocation(line: 123, column: 21, scope: !630)
!641 = !DILocation(line: 123, column: 31, scope: !630)
!642 = !DILocation(line: 141, column: 6, scope: !643)
!643 = distinct !DILexicalBlock(scope: !630, file: !3, line: 141, column: 6)
!644 = !DILocation(line: 141, column: 14, scope: !643)
!645 = !DILocation(line: 141, column: 17, scope: !643)
!646 = !DILocation(line: 141, column: 25, scope: !643)
!647 = !DILocation(line: 141, column: 6, scope: !630)
!648 = !DILocation(line: 142, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 142, column: 7)
!650 = distinct !DILexicalBlock(scope: !643, file: !3, line: 141, column: 31)
!651 = !DILocation(line: 142, column: 7, scope: !650)
!652 = !DILocation(line: 143, column: 4, scope: !653)
!653 = distinct !DILexicalBlock(scope: !654, file: !3, line: 143, column: 4)
!654 = distinct !DILexicalBlock(scope: !649, file: !3, line: 142, column: 34)
!655 = !DILocation(line: 143, column: 4, scope: !656)
!656 = distinct !DILexicalBlock(scope: !653, file: !3, line: 143, column: 4)
!657 = !DILocation(line: 145, column: 4, scope: !654)
!658 = !DILocation(line: 146, column: 12, scope: !654)
!659 = !DILocation(line: 147, column: 3, scope: !654)
!660 = !DILocation(line: 148, column: 4, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !3, line: 148, column: 4)
!662 = distinct !DILexicalBlock(scope: !649, file: !3, line: 147, column: 10)
!663 = !DILocation(line: 148, column: 4, scope: !664)
!664 = distinct !DILexicalBlock(scope: !661, file: !3, line: 148, column: 4)
!665 = !DILocation(line: 151, column: 2, scope: !650)
!666 = !DILocation(line: 152, column: 18, scope: !630)
!667 = !DILocation(line: 152, column: 2, scope: !630)
!668 = !DILocation(line: 152, column: 7, scope: !630)
!669 = !DILocation(line: 152, column: 16, scope: !630)
!670 = !DILocation(line: 153, column: 1, scope: !630)
!671 = distinct !DISubprogram(name: "check_tsc_sync_target", scope: !3, file: !3, line: 431, type: !672, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !674)
!672 = !DISubroutineType(types: !673)
!673 = !{null}
!674 = !{!675, !676, !679, !681, !682, !685, !687, !689, !690, !691, !692}
!675 = !DILocalVariable(name: "cur", scope: !671, file: !3, line: 433, type: !38)
!676 = !DILocalVariable(name: "__vpp_verify", scope: !677, file: !3, line: 433, type: !122)
!677 = distinct !DILexicalBlock(scope: !678, file: !3, line: 433, column: 27)
!678 = distinct !DILexicalBlock(scope: !671, file: !3, line: 433, column: 27)
!679 = !DILocalVariable(name: "tcp_ptr__", scope: !680, file: !3, line: 433, type: !49)
!680 = distinct !DILexicalBlock(scope: !678, file: !3, line: 433, column: 27)
!681 = !DILocalVariable(name: "cpu", scope: !671, file: !3, line: 434, type: !7)
!682 = !DILocalVariable(name: "pscr_ret__", scope: !683, file: !3, line: 434, type: !55)
!683 = distinct !DILexicalBlock(scope: !684, file: !3, line: 434, column: 21)
!684 = distinct !DILexicalBlock(scope: !671, file: !3, line: 434, column: 21)
!685 = !DILocalVariable(name: "__vpp_verify", scope: !686, file: !3, line: 434, type: !122)
!686 = distinct !DILexicalBlock(scope: !683, file: !3, line: 434, column: 21)
!687 = !DILocalVariable(name: "pfo_val__", scope: !688, file: !3, line: 434, type: !71)
!688 = distinct !DILexicalBlock(scope: !683, file: !3, line: 434, column: 21)
!689 = !DILocalVariable(name: "cur_max_warp", scope: !671, file: !3, line: 435, type: !82)
!690 = !DILocalVariable(name: "gbl_max_warp", scope: !671, file: !3, line: 435, type: !82)
!691 = !DILocalVariable(name: "cpus", scope: !671, file: !3, line: 436, type: !55)
!692 = !DILabel(scope: !671, name: "retry", file: !3, line: 457)
!693 = !DILocation(line: 433, column: 2, scope: !671)
!694 = !DILocation(line: 433, column: 21, scope: !671)
!695 = !DILocation(line: 433, column: 27, scope: !678)
!696 = !DILocation(line: 433, column: 27, scope: !677)
!697 = !DILocation(line: 433, column: 27, scope: !680)
!698 = !{i64 2152831849}
!699 = !DILocation(line: 434, column: 2, scope: !671)
!700 = !DILocation(line: 434, column: 15, scope: !671)
!701 = !DILocation(line: 434, column: 21, scope: !684)
!702 = !DILocation(line: 434, column: 21, scope: !683)
!703 = !DILocation(line: 434, column: 21, scope: !686)
!704 = !DILocation(line: 434, column: 21, scope: !688)
!705 = !{i64 2152834764}
!706 = !DILocation(line: 435, column: 2, scope: !671)
!707 = !DILocation(line: 435, column: 11, scope: !671)
!708 = !DILocation(line: 435, column: 25, scope: !671)
!709 = !DILocation(line: 436, column: 2, scope: !671)
!710 = !DILocation(line: 436, column: 6, scope: !671)
!711 = !DILocation(line: 439, column: 6, scope: !712)
!712 = distinct !DILexicalBlock(scope: !671, file: !3, line: 439, column: 6)
!713 = !DILocation(line: 439, column: 6, scope: !671)
!714 = !DILocation(line: 440, column: 3, scope: !712)
!715 = !DILocation(line: 451, column: 6, scope: !716)
!716 = distinct !DILexicalBlock(scope: !671, file: !3, line: 451, column: 6)
!717 = !DILocation(line: 451, column: 44, scope: !716)
!718 = !DILocation(line: 451, column: 47, scope: !716)
!719 = !DILocation(line: 451, column: 6, scope: !671)
!720 = !DILocation(line: 452, column: 3, scope: !716)
!721 = !DILocation(line: 455, column: 27, scope: !671)
!722 = !DILocation(line: 456, column: 38, scope: !671)
!723 = !DILocation(line: 456, column: 23, scope: !671)
!724 = !DILocation(line: 456, column: 6, scope: !671)
!725 = !DILocation(line: 455, column: 2, scope: !671)
!726 = !DILocation(line: 457, column: 1, scope: !671)
!727 = !DILocation(line: 462, column: 2, scope: !671)
!728 = !DILocation(line: 463, column: 2, scope: !671)
!729 = !DILocation(line: 463, column: 9, scope: !671)
!730 = !DILocation(line: 463, column: 38, scope: !671)
!731 = !DILocation(line: 463, column: 35, scope: !671)
!732 = !DILocation(line: 464, column: 3, scope: !671)
!733 = distinct !{!733, !728, !734, !625, !626}
!734 = !DILocation(line: 464, column: 13, scope: !671)
!735 = !DILocation(line: 466, column: 45, scope: !671)
!736 = !DILocation(line: 466, column: 32, scope: !671)
!737 = !DILocation(line: 466, column: 17, scope: !671)
!738 = !DILocation(line: 466, column: 15, scope: !671)
!739 = !DILocation(line: 471, column: 17, scope: !671)
!740 = !DILocation(line: 471, column: 15, scope: !671)
!741 = !DILocation(line: 476, column: 2, scope: !671)
!742 = !DILocation(line: 481, column: 2, scope: !671)
!743 = !DILocation(line: 481, column: 9, scope: !671)
!744 = !DILocation(line: 481, column: 37, scope: !671)
!745 = !DILocation(line: 481, column: 34, scope: !671)
!746 = !DILocation(line: 482, column: 3, scope: !671)
!747 = distinct !{!747, !742, !748, !625, !626}
!748 = !DILocation(line: 482, column: 13, scope: !671)
!749 = !DILocation(line: 487, column: 2, scope: !671)
!750 = !DILocation(line: 494, column: 7, scope: !751)
!751 = distinct !DILexicalBlock(scope: !671, file: !3, line: 494, column: 6)
!752 = !DILocation(line: 494, column: 6, scope: !671)
!753 = !DILocation(line: 495, column: 3, scope: !751)
!754 = !DILocation(line: 502, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !671, file: !3, line: 502, column: 6)
!756 = !DILocation(line: 502, column: 6, scope: !671)
!757 = !DILocation(line: 503, column: 19, scope: !755)
!758 = !DILocation(line: 503, column: 18, scope: !755)
!759 = !DILocation(line: 503, column: 16, scope: !755)
!760 = !DILocation(line: 503, column: 3, scope: !755)
!761 = !DILocation(line: 516, column: 19, scope: !671)
!762 = !DILocation(line: 516, column: 2, scope: !671)
!763 = !DILocation(line: 516, column: 7, scope: !671)
!764 = !DILocation(line: 516, column: 16, scope: !671)
!765 = !DILocation(line: 518, column: 2, scope: !766)
!766 = distinct !DILexicalBlock(scope: !671, file: !3, line: 518, column: 2)
!767 = !DILocation(line: 518, column: 2, scope: !768)
!768 = distinct !DILexicalBlock(scope: !766, file: !3, line: 518, column: 2)
!769 = !DILocation(line: 521, column: 30, scope: !671)
!770 = !DILocation(line: 521, column: 35, scope: !671)
!771 = !DILocation(line: 521, column: 2, scope: !671)
!772 = !DILocation(line: 522, column: 2, scope: !671)
!773 = !DILocation(line: 524, column: 1, scope: !671)
!774 = !DISubprogram(name: "unsynchronized_tsc", scope: !83, file: !83, line: 36, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!775 = !DISubprogram(name: "smp_call_function_single", scope: !776, file: !776, line: 50, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!776 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e44047123e6e4f39e255273d47d7376")
!777 = !DISubroutineType(types: !778)
!778 = !{!55, !55, !779, !54, !55}
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !776, line: 17, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !54}
!783 = distinct !DISubprogram(name: "cpumask_first", scope: !61, file: !61, line: 160, type: !784, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !786)
!784 = !DISubroutineType(types: !785)
!785 = !{!7, !69}
!786 = !{!787}
!787 = !DILocalVariable(name: "srcp", arg: 1, scope: !783, file: !61, line: 160, type: !69)
!788 = !DILocation(line: 160, column: 64, scope: !783)
!789 = !DILocation(line: 162, column: 24, scope: !783)
!790 = !DILocation(line: 162, column: 9, scope: !783)
!791 = !DILocation(line: 162, column: 2, scope: !783)
!792 = distinct !DISubprogram(name: "check_tsc_sync_source", scope: !3, file: !3, line: 354, type: !781, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !793)
!793 = !{!794, !795, !796, !797, !798, !805, !807}
!794 = !DILocalVariable(name: "__cpu", arg: 1, scope: !792, file: !3, line: 354, type: !54)
!795 = !DILocalVariable(name: "cpu", scope: !792, file: !3, line: 356, type: !7)
!796 = !DILocalVariable(name: "cpus", scope: !792, file: !3, line: 357, type: !55)
!797 = !DILabel(scope: !792, name: "retry", file: !3, line: 368)
!798 = !DILocalVariable(name: "pscr_ret__", scope: !799, file: !3, line: 398, type: !55)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 398, column: 3)
!800 = distinct !DILexicalBlock(scope: !801, file: !3, line: 398, column: 3)
!801 = distinct !DILexicalBlock(scope: !802, file: !3, line: 398, column: 3)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 394, column: 62)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 394, column: 13)
!804 = distinct !DILexicalBlock(scope: !792, file: !3, line: 388, column: 6)
!805 = !DILocalVariable(name: "__vpp_verify", scope: !806, file: !3, line: 398, type: !122)
!806 = distinct !DILexicalBlock(scope: !799, file: !3, line: 398, column: 3)
!807 = !DILocalVariable(name: "pfo_val__", scope: !808, file: !3, line: 398, type: !71)
!808 = distinct !DILexicalBlock(scope: !799, file: !3, line: 398, column: 3)
!809 = !DILocation(line: 354, column: 41, scope: !792)
!810 = !DILocation(line: 356, column: 2, scope: !792)
!811 = !DILocation(line: 356, column: 15, scope: !792)
!812 = !DILocation(line: 356, column: 36, scope: !792)
!813 = !DILocation(line: 356, column: 21, scope: !792)
!814 = !DILocation(line: 357, column: 2, scope: !792)
!815 = !DILocation(line: 357, column: 6, scope: !792)
!816 = !DILocation(line: 364, column: 6, scope: !792)
!817 = !DILocation(line: 364, column: 7, scope: !818)
!818 = distinct !DILexicalBlock(scope: !792, file: !3, line: 364, column: 6)
!819 = !DILocation(line: 365, column: 3, scope: !818)
!820 = !DILocation(line: 367, column: 3, scope: !818)
!821 = !DILocation(line: 368, column: 1, scope: !792)
!822 = !DILocation(line: 370, column: 2, scope: !792)
!823 = !DILocation(line: 370, column: 9, scope: !792)
!824 = !DILocation(line: 370, column: 38, scope: !792)
!825 = !DILocation(line: 370, column: 43, scope: !792)
!826 = !DILocation(line: 370, column: 35, scope: !792)
!827 = !DILocation(line: 371, column: 3, scope: !792)
!828 = distinct !{!828, !822, !829, !625, !626}
!829 = !DILocation(line: 371, column: 13, scope: !792)
!830 = !DILocation(line: 376, column: 2, scope: !792)
!831 = !DILocation(line: 378, column: 30, scope: !792)
!832 = !DILocation(line: 378, column: 17, scope: !792)
!833 = !DILocation(line: 378, column: 2, scope: !792)
!834 = !DILocation(line: 380, column: 2, scope: !792)
!835 = !DILocation(line: 380, column: 9, scope: !792)
!836 = !DILocation(line: 380, column: 37, scope: !792)
!837 = !DILocation(line: 380, column: 41, scope: !792)
!838 = !DILocation(line: 380, column: 34, scope: !792)
!839 = !DILocation(line: 381, column: 3, scope: !792)
!840 = distinct !{!840, !834, !841, !625, !626}
!841 = !DILocation(line: 381, column: 13, scope: !792)
!842 = !DILocation(line: 388, column: 7, scope: !804)
!843 = !DILocation(line: 388, column: 6, scope: !792)
!844 = !DILocation(line: 389, column: 3, scope: !845)
!845 = distinct !DILexicalBlock(scope: !804, file: !3, line: 388, column: 17)
!846 = !DILocation(line: 391, column: 3, scope: !847)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 391, column: 3)
!848 = distinct !DILexicalBlock(scope: !845, file: !3, line: 391, column: 3)
!849 = !DILocation(line: 391, column: 3, scope: !848)
!850 = !DILocation(line: 394, column: 2, scope: !845)
!851 = !DILocation(line: 394, column: 13, scope: !803)
!852 = !DILocation(line: 394, column: 45, scope: !803)
!853 = !DILocation(line: 394, column: 48, scope: !803)
!854 = !DILocation(line: 394, column: 13, scope: !804)
!855 = !DILocation(line: 396, column: 3, scope: !802)
!856 = !DILocation(line: 398, column: 3, scope: !801)
!857 = !DILocation(line: 398, column: 3, scope: !858)
!858 = distinct !DILexicalBlock(scope: !801, file: !3, line: 398, column: 3)
!859 = !DILocation(line: 398, column: 3, scope: !800)
!860 = !DILocation(line: 398, column: 3, scope: !799)
!861 = !DILocation(line: 398, column: 3, scope: !806)
!862 = !DILocation(line: 398, column: 3, scope: !808)
!863 = !{i64 2152829589}
!864 = !DILocation(line: 400, column: 3, scope: !865)
!865 = distinct !DILexicalBlock(scope: !802, file: !3, line: 400, column: 3)
!866 = !DILocation(line: 400, column: 3, scope: !867)
!867 = distinct !DILexicalBlock(scope: !865, file: !3, line: 400, column: 3)
!868 = !DILocation(line: 402, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !802, file: !3, line: 402, column: 7)
!870 = !DILocation(line: 402, column: 7, scope: !802)
!871 = !DILocation(line: 403, column: 4, scope: !872)
!872 = distinct !DILexicalBlock(scope: !869, file: !3, line: 403, column: 4)
!873 = !DILocation(line: 403, column: 4, scope: !874)
!874 = distinct !DILexicalBlock(scope: !872, file: !3, line: 403, column: 4)
!875 = !DILocation(line: 403, column: 4, scope: !869)
!876 = !DILocation(line: 404, column: 3, scope: !802)
!877 = !DILocation(line: 405, column: 2, scope: !802)
!878 = !DILocation(line: 410, column: 2, scope: !792)
!879 = !DILocation(line: 411, column: 15, scope: !792)
!880 = !DILocation(line: 412, column: 11, scope: !792)
!881 = !DILocation(line: 413, column: 11, scope: !792)
!882 = !DILocation(line: 414, column: 11, scope: !792)
!883 = !DILocation(line: 419, column: 2, scope: !792)
!884 = !DILocation(line: 424, column: 6, scope: !885)
!885 = distinct !DILexicalBlock(scope: !792, file: !3, line: 424, column: 6)
!886 = !DILocation(line: 424, column: 30, scope: !885)
!887 = !DILocation(line: 424, column: 6, scope: !792)
!888 = !DILocation(line: 425, column: 3, scope: !885)
!889 = !DILocation(line: 426, column: 1, scope: !792)
!890 = distinct !DISubprogram(name: "atomic_inc", scope: !891, file: !891, line: 433, type: !892, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !895)
!891 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!892 = !DISubroutineType(types: !893)
!893 = !{null, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!895 = !{!896}
!896 = !DILocalVariable(name: "v", arg: 1, scope: !890, file: !891, line: 433, type: !894)
!897 = !DILocation(line: 433, column: 22, scope: !890)
!898 = !DILocation(line: 435, column: 31, scope: !890)
!899 = !DILocation(line: 435, column: 2, scope: !890)
!900 = !DILocation(line: 436, column: 17, scope: !890)
!901 = !DILocation(line: 436, column: 2, scope: !890)
!902 = !DILocation(line: 437, column: 1, scope: !890)
!903 = distinct !DISubprogram(name: "atomic_read", scope: !891, file: !891, line: 30, type: !904, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !908)
!904 = !DISubroutineType(types: !905)
!905 = !{!55, !906}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!908 = !{!909}
!909 = !DILocalVariable(name: "v", arg: 1, scope: !903, file: !891, line: 30, type: !906)
!910 = !DILocation(line: 30, column: 29, scope: !903)
!911 = !DILocation(line: 32, column: 25, scope: !903)
!912 = !DILocation(line: 32, column: 2, scope: !903)
!913 = !DILocation(line: 33, column: 25, scope: !903)
!914 = !DILocation(line: 33, column: 9, scope: !903)
!915 = !DILocation(line: 33, column: 2, scope: !903)
!916 = distinct !DISubprogram(name: "cpu_relax", scope: !917, file: !917, line: 16, type: !672, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!917 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!918 = !DILocation(line: 18, column: 2, scope: !916)
!919 = !DILocation(line: 19, column: 1, scope: !916)
!920 = distinct !DISubprogram(name: "check_tsc_warp", scope: !3, file: !3, line: 265, type: !921, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !923)
!921 = !DISubroutineType(types: !922)
!922 = !{!82, !7}
!923 = !{!924, !925, !926, !927, !928, !929, !930, !931, !932, !939, !940, !942}
!924 = !DILocalVariable(name: "timeout", arg: 1, scope: !920, file: !3, line: 265, type: !7)
!925 = !DILocalVariable(name: "start", scope: !920, file: !3, line: 267, type: !82)
!926 = !DILocalVariable(name: "now", scope: !920, file: !3, line: 267, type: !82)
!927 = !DILocalVariable(name: "prev", scope: !920, file: !3, line: 267, type: !82)
!928 = !DILocalVariable(name: "end", scope: !920, file: !3, line: 267, type: !82)
!929 = !DILocalVariable(name: "cur_max_warp", scope: !920, file: !3, line: 267, type: !82)
!930 = !DILocalVariable(name: "i", scope: !920, file: !3, line: 268, type: !55)
!931 = !DILocalVariable(name: "cur_warps", scope: !920, file: !3, line: 268, type: !55)
!932 = !DILocalVariable(name: "__UNIQUE_ID___x210", scope: !933, file: !3, line: 306, type: !82)
!933 = distinct !DILexicalBlock(scope: !934, file: !3, line: 306, column: 15)
!934 = distinct !DILexicalBlock(scope: !935, file: !3, line: 304, column: 29)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 304, column: 7)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 276, column: 21)
!937 = distinct !DILexicalBlock(scope: !938, file: !3, line: 276, column: 2)
!938 = distinct !DILexicalBlock(scope: !920, file: !3, line: 276, column: 2)
!939 = !DILocalVariable(name: "__UNIQUE_ID___y211", scope: !933, file: !3, line: 306, type: !82)
!940 = !DILocalVariable(name: "__ret_warn_on", scope: !941, file: !3, line: 319, type: !55)
!941 = distinct !DILexicalBlock(scope: !920, file: !3, line: 319, column: 2)
!942 = !DILocalVariable(name: "__flags", scope: !943, file: !3, line: 319, type: !55)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 319, column: 2)
!944 = distinct !DILexicalBlock(scope: !945, file: !3, line: 319, column: 2)
!945 = distinct !DILexicalBlock(scope: !941, file: !3, line: 319, column: 2)
!946 = !DILocation(line: 265, column: 45, scope: !920)
!947 = !DILocation(line: 267, column: 2, scope: !920)
!948 = !DILocation(line: 267, column: 11, scope: !920)
!949 = !DILocation(line: 267, column: 18, scope: !920)
!950 = !DILocation(line: 267, column: 23, scope: !920)
!951 = !DILocation(line: 267, column: 29, scope: !920)
!952 = !DILocation(line: 267, column: 34, scope: !920)
!953 = !DILocation(line: 268, column: 2, scope: !920)
!954 = !DILocation(line: 268, column: 6, scope: !920)
!955 = !DILocation(line: 268, column: 9, scope: !920)
!956 = !DILocation(line: 270, column: 10, scope: !920)
!957 = !DILocation(line: 270, column: 8, scope: !920)
!958 = !DILocation(line: 274, column: 8, scope: !920)
!959 = !DILocation(line: 274, column: 27, scope: !920)
!960 = !DILocation(line: 274, column: 16, scope: !920)
!961 = !DILocation(line: 274, column: 37, scope: !920)
!962 = !DILocation(line: 274, column: 35, scope: !920)
!963 = !DILocation(line: 274, column: 14, scope: !920)
!964 = !DILocation(line: 274, column: 6, scope: !920)
!965 = !DILocation(line: 276, column: 9, scope: !938)
!966 = !DILocation(line: 276, column: 7, scope: !938)
!967 = !DILocation(line: 282, column: 3, scope: !936)
!968 = !DILocation(line: 283, column: 10, scope: !936)
!969 = !DILocation(line: 283, column: 8, scope: !936)
!970 = !DILocation(line: 284, column: 9, scope: !936)
!971 = !DILocation(line: 284, column: 7, scope: !936)
!972 = !DILocation(line: 285, column: 14, scope: !936)
!973 = !DILocation(line: 285, column: 12, scope: !936)
!974 = !DILocation(line: 286, column: 3, scope: !936)
!975 = !DILocation(line: 294, column: 7, scope: !976)
!976 = distinct !DILexicalBlock(scope: !936, file: !3, line: 294, column: 7)
!977 = !DILocation(line: 294, column: 7, scope: !936)
!978 = !DILocation(line: 295, column: 8, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !3, line: 295, column: 8)
!980 = distinct !DILexicalBlock(scope: !976, file: !3, line: 294, column: 27)
!981 = !DILocation(line: 295, column: 14, scope: !979)
!982 = !DILocation(line: 295, column: 12, scope: !979)
!983 = !DILocation(line: 295, column: 18, scope: !979)
!984 = !DILocation(line: 295, column: 21, scope: !979)
!985 = !DILocation(line: 295, column: 23, scope: !979)
!986 = !DILocation(line: 295, column: 8, scope: !980)
!987 = !DILocation(line: 296, column: 5, scope: !979)
!988 = !DILocation(line: 297, column: 4, scope: !980)
!989 = !DILocation(line: 298, column: 4, scope: !980)
!990 = !DILocation(line: 299, column: 3, scope: !980)
!991 = !DILocation(line: 304, column: 7, scope: !935)
!992 = !DILocation(line: 304, column: 7, scope: !936)
!993 = !DILocation(line: 305, column: 4, scope: !934)
!994 = !DILocation(line: 306, column: 15, scope: !933)
!995 = !DILocation(line: 306, column: 15, scope: !934)
!996 = !DILocation(line: 306, column: 13, scope: !934)
!997 = !DILocation(line: 307, column: 19, scope: !934)
!998 = !DILocation(line: 307, column: 17, scope: !934)
!999 = !DILocation(line: 312, column: 8, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !934, file: !3, line: 312, column: 8)
!1001 = !DILocation(line: 312, column: 21, scope: !1000)
!1002 = !DILocation(line: 312, column: 18, scope: !1000)
!1003 = !DILocation(line: 312, column: 8, scope: !934)
!1004 = !DILocation(line: 313, column: 17, scope: !1000)
!1005 = !DILocation(line: 313, column: 5, scope: !1000)
!1006 = !DILocation(line: 314, column: 12, scope: !934)
!1007 = !DILocation(line: 315, column: 16, scope: !934)
!1008 = !DILocation(line: 315, column: 14, scope: !934)
!1009 = !DILocation(line: 316, column: 4, scope: !934)
!1010 = !DILocation(line: 317, column: 3, scope: !934)
!1011 = !DILocation(line: 318, column: 2, scope: !936)
!1012 = !DILocation(line: 276, column: 17, scope: !937)
!1013 = !DILocation(line: 276, column: 2, scope: !937)
!1014 = distinct !{!1014, !1015, !1016, !626}
!1015 = !DILocation(line: 276, column: 2, scope: !938)
!1016 = !DILocation(line: 318, column: 2, scope: !938)
!1017 = !DILocation(line: 319, column: 2, scope: !941)
!1018 = !DILocation(line: 319, column: 2, scope: !945)
!1019 = !DILocation(line: 319, column: 2, scope: !944)
!1020 = !DILocation(line: 319, column: 2, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !944, file: !3, line: 319, column: 2)
!1022 = !DILocation(line: 319, column: 2, scope: !943)
!1023 = !DILocation(line: 319, column: 2, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !943, file: !3, line: 319, column: 2)
!1025 = !DILocation(line: 319, column: 2, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !943, file: !3, line: 319, column: 2)
!1027 = !{i64 2152814482, i64 2152814511, i64 2152814557, i64 2152814615, i64 2152814669, i64 2152814723, i64 2152814778, i64 2152814809, i64 2152815117, i64 2152815123, i64 2152815170, i64 2152815193, i64 2152815219}
!1028 = !DILocation(line: 319, column: 2, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !943, file: !3, line: 319, column: 2)
!1030 = !DILocation(line: 319, column: 2, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !944, file: !3, line: 319, column: 2)
!1032 = !DILocation(line: 319, column: 2, scope: !920)
!1033 = !DILocation(line: 322, column: 9, scope: !920)
!1034 = !DILocation(line: 323, column: 1, scope: !920)
!1035 = !DILocation(line: 322, column: 2, scope: !920)
!1036 = distinct !DISubprogram(name: "loop_timeout", scope: !3, file: !3, line: 339, type: !1037, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1039)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!7, !55}
!1039 = !{!1040, !1041, !1044}
!1040 = !DILocalVariable(name: "cpu", arg: 1, scope: !1036, file: !3, line: 339, type: !55)
!1041 = !DILocalVariable(name: "__vpp_verify", scope: !1042, file: !3, line: 341, type: !122)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 341, column: 25)
!1043 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 341, column: 25)
!1044 = !DILocalVariable(name: "__ptr", scope: !1045, file: !3, line: 341, type: !49)
!1045 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 341, column: 25)
!1046 = !DILocation(line: 339, column: 45, scope: !1036)
!1047 = !DILocation(line: 341, column: 25, scope: !1043)
!1048 = !DILocation(line: 341, column: 25, scope: !1042)
!1049 = !DILocation(line: 341, column: 25, scope: !1045)
!1050 = !DILocation(line: 341, column: 25, scope: !1036)
!1051 = !DILocation(line: 341, column: 10, scope: !1036)
!1052 = !DILocation(line: 341, column: 53, scope: !1036)
!1053 = !DILocation(line: 341, column: 9, scope: !1036)
!1054 = !DILocation(line: 341, column: 2, scope: !1036)
!1055 = distinct !DISubprogram(name: "atomic_set", scope: !891, file: !891, line: 65, type: !1056, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1058)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !894, !55}
!1058 = !{!1059, !1060}
!1059 = !DILocalVariable(name: "v", arg: 1, scope: !1055, file: !891, line: 65, type: !894)
!1060 = !DILocalVariable(name: "i", arg: 2, scope: !1055, file: !891, line: 65, type: !55)
!1061 = !DILocation(line: 65, column: 22, scope: !1055)
!1062 = !DILocation(line: 65, column: 29, scope: !1055)
!1063 = !DILocation(line: 67, column: 26, scope: !1055)
!1064 = !DILocation(line: 67, column: 2, scope: !1055)
!1065 = !DILocation(line: 68, column: 17, scope: !1055)
!1066 = !DILocation(line: 68, column: 20, scope: !1055)
!1067 = !DILocation(line: 68, column: 2, scope: !1055)
!1068 = !DILocation(line: 69, column: 1, scope: !1055)
!1069 = distinct !DISubprogram(name: "constant_test_bit", scope: !408, file: !408, line: 204, type: !1070, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1072)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!51, !57, !411}
!1072 = !{!1073, !1074}
!1073 = !DILocalVariable(name: "nr", arg: 1, scope: !1069, file: !408, line: 204, type: !57)
!1074 = !DILocalVariable(name: "addr", arg: 2, scope: !1069, file: !408, line: 204, type: !411)
!1075 = !DILocation(line: 204, column: 52, scope: !1069)
!1076 = !DILocation(line: 204, column: 86, scope: !1069)
!1077 = !DILocation(line: 206, column: 19, scope: !1069)
!1078 = !DILocation(line: 206, column: 22, scope: !1069)
!1079 = !DILocation(line: 206, column: 15, scope: !1069)
!1080 = !DILocation(line: 207, column: 4, scope: !1069)
!1081 = !DILocation(line: 207, column: 9, scope: !1069)
!1082 = !DILocation(line: 207, column: 12, scope: !1069)
!1083 = !DILocation(line: 206, column: 44, scope: !1069)
!1084 = !DILocation(line: 207, column: 37, scope: !1069)
!1085 = !DILocation(line: 206, column: 2, scope: !1069)
!1086 = distinct !DISubprogram(name: "variable_test_bit", scope: !408, file: !408, line: 224, type: !1070, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1087)
!1087 = !{!1088, !1089, !1090}
!1088 = !DILocalVariable(name: "nr", arg: 1, scope: !1086, file: !408, line: 224, type: !57)
!1089 = !DILocalVariable(name: "addr", arg: 2, scope: !1086, file: !408, line: 224, type: !411)
!1090 = !DILocalVariable(name: "oldbit", scope: !1086, file: !408, line: 226, type: !51)
!1091 = !DILocation(line: 224, column: 52, scope: !1086)
!1092 = !DILocation(line: 224, column: 86, scope: !1086)
!1093 = !DILocation(line: 226, column: 2, scope: !1086)
!1094 = !DILocation(line: 226, column: 7, scope: !1086)
!1095 = !DILocation(line: 231, column: 33, scope: !1086)
!1096 = !DILocation(line: 231, column: 46, scope: !1086)
!1097 = !DILocation(line: 228, column: 2, scope: !1086)
!1098 = !{i64 2148354100, i64 2148354174}
!1099 = !DILocation(line: 233, column: 9, scope: !1086)
!1100 = !DILocation(line: 234, column: 1, scope: !1086)
!1101 = !DILocation(line: 233, column: 2, scope: !1086)
!1102 = distinct !DISubprogram(name: "__rdmsr", scope: !432, file: !432, line: 80, type: !433, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1103)
!1103 = !{!1104, !1105, !1106}
!1104 = !DILocalVariable(name: "msr", arg: 1, scope: !1102, file: !432, line: 80, type: !7)
!1105 = !DILocalVariable(name: "low", scope: !1102, file: !432, line: 82, type: !49)
!1106 = !DILocalVariable(name: "high", scope: !1102, file: !432, line: 82, type: !49)
!1107 = !DILocation(line: 80, column: 64, scope: !1102)
!1108 = !DILocation(line: 82, column: 2, scope: !1102)
!1109 = !DILocation(line: 87, column: 45, scope: !1102)
!1110 = !DILocation(line: 84, column: 2, scope: !1102)
!1111 = !{i64 1121778, i64 1121799, i64 2149342114, i64 2149342158, i64 2149342181, i64 2149342214, i64 2149342245, i64 2149342284}
!1112 = !DILocation(line: 89, column: 9, scope: !1102)
!1113 = !DILocation(line: 90, column: 1, scope: !1102)
!1114 = !DILocation(line: 89, column: 2, scope: !1102)
!1115 = distinct !DISubprogram(name: "static_key_false", scope: !1116, file: !1116, line: 205, type: !1117, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1139)
!1116 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!51, !1119}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1116, line: 85, size: 128, elements: !1121)
!1121 = !{!1122, !1123}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1120, file: !1116, line: 86, baseType: !178, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !1116, line: 101, baseType: !1124, size: 64, offset: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1120, file: !1116, line: 101, size: 64, elements: !1125)
!1125 = !{!1126, !1127, !1136}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1124, file: !1116, line: 102, baseType: !49, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1124, file: !1116, line: 103, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1116, line: 117, size: 128, elements: !1130)
!1130 = !{!1131, !1134, !1135}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1129, file: !1116, line: 118, baseType: !1132, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !43, line: 20, baseType: !1133)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !45, line: 26, baseType: !55)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1129, file: !1116, line: 119, baseType: !1132, size: 32, offset: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1129, file: !1116, line: 120, baseType: !57, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1124, file: !1116, line: 104, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1116, line: 104, flags: DIFlagFwdDecl)
!1139 = !{!1140}
!1140 = !DILocalVariable(name: "key", arg: 1, scope: !1115, file: !1116, line: 205, type: !1119)
!1141 = !DILocation(line: 205, column: 65, scope: !1115)
!1142 = !DILocation(line: 207, column: 28, scope: !1115)
!1143 = !DILocation(line: 207, column: 9, scope: !1115)
!1144 = !DILocation(line: 207, column: 2, scope: !1115)
!1145 = !DISubprogram(name: "do_trace_read_msr", scope: !432, file: !432, line: 65, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !7, !73, !55}
!1148 = distinct !DISubprogram(name: "arch_static_branch", scope: !1149, file: !1149, line: 25, type: !1150, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1152)
!1149 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!51, !1119, !51}
!1152 = !{!1153, !1154, !1155}
!1153 = !DILocalVariable(name: "key", arg: 1, scope: !1148, file: !1149, line: 25, type: !1119)
!1154 = !DILocalVariable(name: "branch", arg: 2, scope: !1148, file: !1149, line: 25, type: !51)
!1155 = !DILabel(scope: !1148, name: "l_yes", file: !1149, line: 33)
!1156 = !DILocation(line: 25, column: 67, scope: !1148)
!1157 = !DILocation(line: 25, column: 77, scope: !1148)
!1158 = !DILocation(line: 30, column: 13, scope: !1148)
!1159 = !DILocation(line: 30, column: 28, scope: !1148)
!1160 = !DILocation(line: 30, column: 26, scope: !1148)
!1161 = !DILocation(line: 27, column: 2, scope: !1148)
!1162 = !{i64 652077, i64 652121, i64 2148136804, i64 2148136825, i64 2148136851, i64 2148136884, i64 2148136918, i64 2148136942}
!1163 = !DILocation(line: 32, column: 2, scope: !1148)
!1164 = !DILocation(line: 33, column: 1, scope: !1148)
!1165 = !DILocation(line: 34, column: 2, scope: !1148)
!1166 = !DILocation(line: 35, column: 1, scope: !1148)
!1167 = distinct !DISubprogram(name: "native_write_msr", scope: !432, file: !432, line: 143, type: !1168, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1170)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !7, !71, !71}
!1170 = !{!1171, !1172, !1173}
!1171 = !DILocalVariable(name: "msr", arg: 1, scope: !1167, file: !432, line: 143, type: !7)
!1172 = !DILocalVariable(name: "low", arg: 2, scope: !1167, file: !432, line: 143, type: !71)
!1173 = !DILocalVariable(name: "high", arg: 3, scope: !1167, file: !432, line: 143, type: !71)
!1174 = !DILocation(line: 143, column: 31, scope: !1167)
!1175 = !DILocation(line: 143, column: 40, scope: !1167)
!1176 = !DILocation(line: 143, column: 49, scope: !1167)
!1177 = !DILocation(line: 145, column: 10, scope: !1167)
!1178 = !DILocation(line: 145, column: 15, scope: !1167)
!1179 = !DILocation(line: 145, column: 20, scope: !1167)
!1180 = !DILocation(line: 145, column: 2, scope: !1167)
!1181 = !DILocation(line: 147, column: 6, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1167, file: !432, line: 147, column: 6)
!1183 = !DILocation(line: 147, column: 6, scope: !1167)
!1184 = !DILocation(line: 148, column: 22, scope: !1182)
!1185 = !DILocation(line: 148, column: 33, scope: !1182)
!1186 = !DILocation(line: 148, column: 28, scope: !1182)
!1187 = !DILocation(line: 148, column: 38, scope: !1182)
!1188 = !DILocation(line: 148, column: 46, scope: !1182)
!1189 = !DILocation(line: 148, column: 44, scope: !1182)
!1190 = !DILocation(line: 148, column: 3, scope: !1182)
!1191 = !DILocation(line: 149, column: 1, scope: !1167)
!1192 = distinct !DISubprogram(name: "__wrmsr", scope: !432, file: !432, line: 92, type: !1168, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1193)
!1193 = !{!1194, !1195, !1196}
!1194 = !DILocalVariable(name: "msr", arg: 1, scope: !1192, file: !432, line: 92, type: !7)
!1195 = !DILocalVariable(name: "low", arg: 2, scope: !1192, file: !432, line: 92, type: !71)
!1196 = !DILocalVariable(name: "high", arg: 3, scope: !1192, file: !432, line: 92, type: !71)
!1197 = !DILocation(line: 92, column: 50, scope: !1192)
!1198 = !DILocation(line: 92, column: 59, scope: !1192)
!1199 = !DILocation(line: 92, column: 68, scope: !1192)
!1200 = !DILocation(line: 97, column: 17, scope: !1192)
!1201 = !DILocation(line: 97, column: 27, scope: !1192)
!1202 = !DILocation(line: 97, column: 38, scope: !1192)
!1203 = !DILocation(line: 94, column: 2, scope: !1192)
!1204 = !{i64 1122034, i64 1122055, i64 2149342613, i64 2149342657, i64 2149342680, i64 2149342713, i64 2149342744, i64 2149342783}
!1205 = !DILocation(line: 98, column: 1, scope: !1192)
!1206 = !DISubprogram(name: "do_trace_write_msr", scope: !432, file: !432, line: 64, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1207 = distinct !DISubprogram(name: "_static_cpu_has", scope: !1208, file: !1208, line: 173, type: !1209, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1211)
!1208 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!51, !292}
!1211 = !{!1212, !1213, !1214}
!1212 = !DILocalVariable(name: "bit", arg: 1, scope: !1207, file: !1208, line: 173, type: !292)
!1213 = !DILabel(scope: !1207, name: "t_yes", file: !1208, line: 187)
!1214 = !DILabel(scope: !1207, name: "t_no", file: !1208, line: 189)
!1215 = !DILocation(line: 173, column: 49, scope: !1207)
!1216 = !DILocation(line: 183, column: 24, scope: !1207)
!1217 = !DILocation(line: 184, column: 30, scope: !1207)
!1218 = !DILocation(line: 184, column: 34, scope: !1207)
!1219 = !DILocation(line: 184, column: 26, scope: !1207)
!1220 = !DILocation(line: 185, column: 70, scope: !1207)
!1221 = !DILocation(line: 185, column: 74, scope: !1207)
!1222 = !DILocation(line: 185, column: 25, scope: !1207)
!1223 = !DILocation(line: 175, column: 2, scope: !1207)
!1224 = !{i64 2149453730, i64 2149453763, i64 2149453769, i64 2149453785, i64 2149453804, i64 2149453835, i64 2149454788, i64 2149453377, i64 2149454794, i64 2149454842, i64 2149454906, i64 2149454970, i64 2149455027, i64 2149455234, i64 2149455282, i64 2149455346, i64 2149455410, i64 2149455467, i64 2149453495, i64 2149453520, i64 2149455677, i64 2149455805, i64 2149455738, i64 2149455819, i64 2149455833, i64 2149455949, i64 2149455894, i64 2149455963, i64 2149453654, i64 1968151, i64 1968191, i64 1968200, i64 1968250, i64 1968271, i64 1968291}
!1225 = !DILocation(line: 187, column: 1, scope: !1207)
!1226 = !DILocation(line: 188, column: 2, scope: !1207)
!1227 = !DILocation(line: 189, column: 1, scope: !1207)
!1228 = !DILocation(line: 190, column: 2, scope: !1207)
!1229 = !DILocation(line: 191, column: 1, scope: !1207)
!1230 = !DISubprogram(name: "init_timer_key", scope: !191, file: !191, line: 91, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{null, !205, !202, !7, !76, !1233}
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1235, line: 206, elements: !315)
!1235 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1236 = distinct !DISubprogram(name: "tsc_sync_check_timer_fn", scope: !3, file: !3, line: 94, type: !203, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1237)
!1237 = !{!1238, !1239, !1240, !1242, !1244}
!1238 = !DILocalVariable(name: "unused", arg: 1, scope: !1236, file: !3, line: 94, type: !205)
!1239 = !DILocalVariable(name: "next_cpu", scope: !1236, file: !3, line: 96, type: !55)
!1240 = !DILocalVariable(name: "pscr_ret__", scope: !1241, file: !3, line: 101, type: !55)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 101, column: 26)
!1242 = !DILocalVariable(name: "__vpp_verify", scope: !1243, file: !3, line: 101, type: !122)
!1243 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 101, column: 26)
!1244 = !DILocalVariable(name: "pfo_val__", scope: !1245, file: !3, line: 101, type: !71)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 101, column: 26)
!1246 = !DILocation(line: 94, column: 56, scope: !1236)
!1247 = !DILocation(line: 96, column: 2, scope: !1236)
!1248 = !DILocation(line: 96, column: 6, scope: !1236)
!1249 = !DILocation(line: 98, column: 2, scope: !1236)
!1250 = !DILocation(line: 101, column: 26, scope: !1241)
!1251 = !DILocation(line: 101, column: 26, scope: !1243)
!1252 = !DILocation(line: 101, column: 26, scope: !1245)
!1253 = !{i64 2152759836}
!1254 = !DILocation(line: 101, column: 26, scope: !1236)
!1255 = !DILocation(line: 101, column: 13, scope: !1236)
!1256 = !DILocation(line: 101, column: 11, scope: !1236)
!1257 = !DILocation(line: 102, column: 6, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 102, column: 6)
!1259 = !DILocation(line: 102, column: 18, scope: !1258)
!1260 = !DILocation(line: 102, column: 15, scope: !1258)
!1261 = !DILocation(line: 102, column: 6, scope: !1236)
!1262 = !DILocation(line: 103, column: 14, scope: !1258)
!1263 = !DILocation(line: 103, column: 12, scope: !1258)
!1264 = !DILocation(line: 103, column: 3, scope: !1258)
!1265 = !DILocation(line: 105, column: 31, scope: !1236)
!1266 = !DILocation(line: 106, column: 38, scope: !1236)
!1267 = !DILocation(line: 106, column: 2, scope: !1236)
!1268 = !DILocation(line: 107, column: 1, scope: !1236)
!1269 = !DISubprogram(name: "add_timer", scope: !191, file: !191, line: 182, type: !203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1270 = distinct !DISubprogram(name: "cpumask_next", scope: !61, file: !61, line: 208, type: !1271, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1273)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!7, !55, !69}
!1273 = !{!1274, !1275}
!1274 = !DILocalVariable(name: "n", arg: 1, scope: !1270, file: !61, line: 208, type: !55)
!1275 = !DILocalVariable(name: "srcp", arg: 2, scope: !1270, file: !61, line: 208, type: !69)
!1276 = !DILocation(line: 208, column: 31, scope: !1270)
!1277 = !DILocation(line: 208, column: 56, scope: !1270)
!1278 = !DILocation(line: 211, column: 6, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1270, file: !61, line: 211, column: 6)
!1280 = !DILocation(line: 211, column: 8, scope: !1279)
!1281 = !DILocation(line: 211, column: 6, scope: !1270)
!1282 = !DILocation(line: 212, column: 17, scope: !1279)
!1283 = !DILocation(line: 212, column: 3, scope: !1279)
!1284 = !DILocation(line: 213, column: 23, scope: !1270)
!1285 = !DILocation(line: 213, column: 63, scope: !1270)
!1286 = !DILocation(line: 213, column: 65, scope: !1270)
!1287 = !DILocation(line: 213, column: 9, scope: !1270)
!1288 = !DILocation(line: 213, column: 2, scope: !1270)
!1289 = !DISubprogram(name: "add_timer_on", scope: !191, file: !191, line: 171, type: !1290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !205, !55}
!1292 = distinct !DISubprogram(name: "cpumask_check", scope: !61, file: !61, line: 148, type: !1293, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1295)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!7, !7}
!1295 = !{!1296}
!1296 = !DILocalVariable(name: "cpu", arg: 1, scope: !1292, file: !61, line: 148, type: !7)
!1297 = !DILocation(line: 148, column: 64, scope: !1292)
!1298 = !DILocation(line: 150, column: 20, scope: !1292)
!1299 = !DILocation(line: 150, column: 2, scope: !1292)
!1300 = !DILocation(line: 151, column: 9, scope: !1292)
!1301 = !DILocation(line: 151, column: 2, scope: !1292)
!1302 = distinct !DISubprogram(name: "find_next_bit", scope: !1303, file: !1303, line: 54, type: !1304, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1308)
!1303 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!49, !1306, !49, !49}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!1308 = !{!1309, !1310, !1311, !1312}
!1309 = !DILocalVariable(name: "addr", arg: 1, scope: !1302, file: !1303, line: 54, type: !1306)
!1310 = !DILocalVariable(name: "size", arg: 2, scope: !1302, file: !1303, line: 54, type: !49)
!1311 = !DILocalVariable(name: "offset", arg: 3, scope: !1302, file: !1303, line: 55, type: !49)
!1312 = !DILocalVariable(name: "val", scope: !1313, file: !1303, line: 58, type: !49)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !1303, line: 57, column: 31)
!1314 = distinct !DILexicalBlock(scope: !1302, file: !1303, line: 57, column: 6)
!1315 = !DILocation(line: 54, column: 50, scope: !1302)
!1316 = !DILocation(line: 54, column: 70, scope: !1302)
!1317 = !DILocation(line: 55, column: 22, scope: !1302)
!1318 = !DILocation(line: 57, column: 6, scope: !1314)
!1319 = !DILocation(line: 57, column: 6, scope: !1302)
!1320 = !DILocation(line: 58, column: 3, scope: !1313)
!1321 = !DILocation(line: 58, column: 17, scope: !1313)
!1322 = !DILocation(line: 60, column: 7, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1313, file: !1303, line: 60, column: 7)
!1324 = !DILocation(line: 60, column: 7, scope: !1313)
!1325 = !DILocation(line: 61, column: 11, scope: !1323)
!1326 = !DILocation(line: 61, column: 4, scope: !1323)
!1327 = !DILocation(line: 63, column: 10, scope: !1313)
!1328 = !DILocation(line: 63, column: 9, scope: !1313)
!1329 = !DILocation(line: 63, column: 17, scope: !1313)
!1330 = !DILocation(line: 63, column: 15, scope: !1313)
!1331 = !DILocation(line: 63, column: 7, scope: !1313)
!1332 = !DILocation(line: 64, column: 10, scope: !1313)
!1333 = !DILocation(line: 64, column: 16, scope: !1313)
!1334 = !DILocation(line: 64, column: 29, scope: !1313)
!1335 = !DILocation(line: 64, column: 3, scope: !1313)
!1336 = !DILocation(line: 65, column: 2, scope: !1314)
!1337 = !DILocation(line: 67, column: 24, scope: !1302)
!1338 = !DILocation(line: 67, column: 30, scope: !1302)
!1339 = !DILocation(line: 67, column: 36, scope: !1302)
!1340 = !DILocation(line: 67, column: 9, scope: !1302)
!1341 = !DILocation(line: 67, column: 2, scope: !1302)
!1342 = !DILocation(line: 68, column: 1, scope: !1302)
!1343 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !61, file: !61, line: 140, type: !1344, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1346)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !7, !7}
!1346 = !{!1347, !1348}
!1347 = !DILocalVariable(name: "cpu", arg: 1, scope: !1343, file: !61, line: 140, type: !7)
!1348 = !DILocalVariable(name: "bits", arg: 2, scope: !1343, file: !61, line: 140, type: !7)
!1349 = !DILocation(line: 140, column: 60, scope: !1343)
!1350 = !DILocation(line: 140, column: 78, scope: !1343)
!1351 = !DILocation(line: 145, column: 1, scope: !1343)
!1352 = distinct !DISubprogram(name: "variable__ffs", scope: !408, file: !408, line: 250, type: !1353, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1355)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!49, !49}
!1355 = !{!1356}
!1356 = !DILocalVariable(name: "word", arg: 1, scope: !1352, file: !408, line: 250, type: !49)
!1357 = !DILocation(line: 250, column: 66, scope: !1352)
!1358 = !DILocation(line: 254, column: 11, scope: !1352)
!1359 = !DILocation(line: 252, column: 2, scope: !1352)
!1360 = !{i64 849175}
!1361 = !DILocation(line: 255, column: 9, scope: !1352)
!1362 = !DILocation(line: 255, column: 2, scope: !1352)
!1363 = !DISubprogram(name: "_find_next_bit", scope: !1303, file: !1303, line: 11, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1364 = distinct !DISubprogram(name: "find_first_bit", scope: !1303, file: !1303, line: 200, type: !1365, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1367)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!49, !1306, !49}
!1367 = !{!1368, !1369, !1370}
!1368 = !DILocalVariable(name: "addr", arg: 1, scope: !1364, file: !1303, line: 200, type: !1306)
!1369 = !DILocalVariable(name: "size", arg: 2, scope: !1364, file: !1303, line: 200, type: !49)
!1370 = !DILocalVariable(name: "val", scope: !1371, file: !1303, line: 203, type: !49)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !1303, line: 202, column: 31)
!1372 = distinct !DILexicalBlock(scope: !1364, file: !1303, line: 202, column: 6)
!1373 = !DILocation(line: 200, column: 51, scope: !1364)
!1374 = !DILocation(line: 200, column: 71, scope: !1364)
!1375 = !DILocation(line: 202, column: 6, scope: !1372)
!1376 = !DILocation(line: 202, column: 6, scope: !1364)
!1377 = !DILocation(line: 203, column: 3, scope: !1371)
!1378 = !DILocation(line: 203, column: 17, scope: !1371)
!1379 = !DILocation(line: 203, column: 24, scope: !1371)
!1380 = !DILocation(line: 203, column: 23, scope: !1371)
!1381 = !DILocation(line: 203, column: 31, scope: !1371)
!1382 = !DILocation(line: 203, column: 29, scope: !1371)
!1383 = !DILocation(line: 205, column: 10, scope: !1371)
!1384 = !DILocation(line: 205, column: 16, scope: !1371)
!1385 = !DILocation(line: 205, column: 29, scope: !1371)
!1386 = !DILocation(line: 205, column: 3, scope: !1371)
!1387 = !DILocation(line: 206, column: 2, scope: !1372)
!1388 = !DILocation(line: 208, column: 25, scope: !1364)
!1389 = !DILocation(line: 208, column: 31, scope: !1364)
!1390 = !DILocation(line: 208, column: 9, scope: !1364)
!1391 = !DILocation(line: 208, column: 2, scope: !1364)
!1392 = !DILocation(line: 209, column: 1, scope: !1364)
!1393 = !DISubprogram(name: "_find_first_bit", scope: !1303, file: !1303, line: 21, type: !1365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1394 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !891, file: !891, line: 1372, type: !1395, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1397)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!51, !894}
!1397 = !{!1398}
!1398 = !DILocalVariable(name: "v", arg: 1, scope: !1394, file: !891, line: 1372, type: !894)
!1399 = !DILocation(line: 1372, column: 31, scope: !1394)
!1400 = !DILocation(line: 1374, column: 2, scope: !1394)
!1401 = !DILocation(line: 1374, column: 2, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1394, file: !891, line: 1374, column: 2)
!1403 = !DILocation(line: 1375, column: 31, scope: !1394)
!1404 = !DILocation(line: 1375, column: 2, scope: !1394)
!1405 = !DILocation(line: 1376, column: 33, scope: !1394)
!1406 = !DILocation(line: 1376, column: 9, scope: !1394)
!1407 = !DILocation(line: 1376, column: 2, scope: !1394)
!1408 = distinct !DISubprogram(name: "schedule_work", scope: !12, file: !12, line: 621, type: !1409, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1411)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!51, !255}
!1411 = !{!1412}
!1412 = !DILocalVariable(name: "work", arg: 1, scope: !1408, file: !12, line: 621, type: !255)
!1413 = !DILocation(line: 621, column: 54, scope: !1408)
!1414 = !DILocation(line: 623, column: 20, scope: !1408)
!1415 = !DILocation(line: 623, column: 31, scope: !1408)
!1416 = !DILocation(line: 623, column: 9, scope: !1408)
!1417 = !DILocation(line: 623, column: 2, scope: !1408)
!1418 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !1419, file: !1419, line: 94, type: !1420, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1429)
!1419 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1420 = !DISubroutineType(types: !1421)
!1421 = !{null, !1422, !1425}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1424)
!1424 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !52, line: 61, baseType: !1426)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1427, line: 72, baseType: !1428)
!1427 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1427, line: 16, baseType: !49)
!1429 = !{!1430, !1431}
!1430 = !DILocalVariable(name: "v", arg: 1, scope: !1418, file: !1419, line: 94, type: !1422)
!1431 = !DILocalVariable(name: "size", arg: 2, scope: !1418, file: !1419, line: 94, type: !1425)
!1432 = !DILocation(line: 94, column: 79, scope: !1418)
!1433 = !DILocation(line: 94, column: 89, scope: !1418)
!1434 = !DILocation(line: 96, column: 20, scope: !1418)
!1435 = !DILocation(line: 96, column: 23, scope: !1418)
!1436 = !DILocation(line: 96, column: 2, scope: !1418)
!1437 = !DILocation(line: 97, column: 2, scope: !1418)
!1438 = !DILocation(line: 98, column: 1, scope: !1418)
!1439 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !1440, file: !1440, line: 2254, type: !1395, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1441)
!1440 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!1441 = !{!1442}
!1442 = !DILocalVariable(name: "v", arg: 1, scope: !1439, file: !1440, line: 2254, type: !894)
!1443 = !DILocation(line: 2254, column: 35, scope: !1439)
!1444 = !DILocation(line: 2257, column: 34, scope: !1439)
!1445 = !DILocation(line: 2257, column: 9, scope: !1439)
!1446 = !DILocation(line: 2257, column: 2, scope: !1439)
!1447 = distinct !DISubprogram(name: "kasan_check_write", scope: !1448, file: !1448, line: 44, type: !1449, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1451)
!1448 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!51, !1422, !7}
!1451 = !{!1452, !1453}
!1452 = !DILocalVariable(name: "p", arg: 1, scope: !1447, file: !1448, line: 44, type: !1422)
!1453 = !DILocalVariable(name: "size", arg: 2, scope: !1447, file: !1448, line: 44, type: !7)
!1454 = !DILocation(line: 44, column: 59, scope: !1447)
!1455 = !DILocation(line: 44, column: 75, scope: !1447)
!1456 = !DILocation(line: 46, column: 2, scope: !1447)
!1457 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1458, file: !1458, line: 229, type: !1459, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1461)
!1458 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1459 = !DISubroutineType(types: !1460)
!1460 = !{null, !1422, !1425, !55}
!1461 = !{!1462, !1463, !1464}
!1462 = !DILocalVariable(name: "ptr", arg: 1, scope: !1457, file: !1458, line: 229, type: !1422)
!1463 = !DILocalVariable(name: "size", arg: 2, scope: !1457, file: !1458, line: 229, type: !1425)
!1464 = !DILocalVariable(name: "type", arg: 3, scope: !1457, file: !1458, line: 230, type: !55)
!1465 = !DILocation(line: 229, column: 60, scope: !1457)
!1466 = !DILocation(line: 229, column: 72, scope: !1457)
!1467 = !DILocation(line: 230, column: 15, scope: !1457)
!1468 = !DILocation(line: 230, column: 23, scope: !1457)
!1469 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !1470, file: !1470, line: 65, type: !1395, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1471)
!1470 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!1471 = !{!1472, !1473}
!1472 = !DILocalVariable(name: "v", arg: 1, scope: !1469, file: !1470, line: 65, type: !894)
!1473 = !DILocalVariable(name: "c", scope: !1474, file: !1470, line: 67, type: !51)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !1470, line: 67, column: 9)
!1475 = !DILocation(line: 65, column: 64, scope: !1469)
!1476 = !DILocation(line: 67, column: 9, scope: !1474)
!1477 = !{i64 2148795930, i64 2148795969, i64 2148795990, i64 2148796027, i64 2148796050, i64 2148796059, i64 2148796133}
!1478 = !DILocation(line: 67, column: 9, scope: !1469)
!1479 = !DILocation(line: 67, column: 2, scope: !1469)
!1480 = distinct !DISubprogram(name: "queue_work", scope: !12, file: !12, line: 559, type: !1481, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1485)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!51, !1483, !255}
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !12, line: 18, flags: DIFlagFwdDecl)
!1485 = !{!1486, !1487}
!1486 = !DILocalVariable(name: "wq", arg: 1, scope: !1480, file: !12, line: 559, type: !1483)
!1487 = !DILocalVariable(name: "work", arg: 2, scope: !1480, file: !12, line: 560, type: !255)
!1488 = !DILocation(line: 559, column: 56, scope: !1480)
!1489 = !DILocation(line: 560, column: 30, scope: !1480)
!1490 = !DILocation(line: 562, column: 41, scope: !1480)
!1491 = !DILocation(line: 562, column: 45, scope: !1480)
!1492 = !DILocation(line: 562, column: 9, scope: !1480)
!1493 = !DILocation(line: 562, column: 2, scope: !1480)
!1494 = !DISubprogram(name: "queue_work_on", scope: !12, file: !12, line: 496, type: !1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!51, !55, !1483, !255}
!1497 = distinct !DISubprogram(name: "tsc_sync_mark_tsc_unstable", scope: !3, file: !3, line: 344, type: !253, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1498)
!1498 = !{!1499}
!1499 = !DILocalVariable(name: "work", arg: 1, scope: !1497, file: !3, line: 344, type: !255)
!1500 = !DILocation(line: 344, column: 60, scope: !1497)
!1501 = !DILocation(line: 346, column: 2, scope: !1497)
!1502 = !DILocation(line: 347, column: 1, scope: !1497)
!1503 = !DISubprogram(name: "mark_tsc_unstable", scope: !83, file: !83, line: 35, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1504 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !1440, file: !1440, line: 976, type: !892, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1505)
!1505 = !{!1506}
!1506 = !DILocalVariable(name: "v", arg: 1, scope: !1504, file: !1440, line: 976, type: !894)
!1507 = !DILocation(line: 976, column: 26, scope: !1504)
!1508 = !DILocation(line: 979, column: 18, scope: !1504)
!1509 = !DILocation(line: 979, column: 2, scope: !1504)
!1510 = !DILocation(line: 983, column: 1, scope: !1504)
!1511 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !1470, file: !1470, line: 51, type: !892, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1512)
!1512 = !{!1513}
!1513 = !DILocalVariable(name: "v", arg: 1, scope: !1511, file: !1470, line: 51, type: !894)
!1514 = !DILocation(line: 51, column: 55, scope: !1511)
!1515 = !DILocation(line: 54, column: 16, scope: !1511)
!1516 = !DILocation(line: 54, column: 19, scope: !1511)
!1517 = !DILocation(line: 53, column: 2, scope: !1511)
!1518 = !{i64 2148793818, i64 2148793857, i64 2148793878, i64 2148793915, i64 2148793938, i64 2148793808}
!1519 = !DILocation(line: 55, column: 1, scope: !1511)
!1520 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1419, file: !1419, line: 66, type: !1420, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1521)
!1521 = !{!1522, !1523}
!1522 = !DILocalVariable(name: "v", arg: 1, scope: !1520, file: !1419, line: 66, type: !1422)
!1523 = !DILocalVariable(name: "size", arg: 2, scope: !1520, file: !1419, line: 66, type: !1425)
!1524 = !DILocation(line: 66, column: 73, scope: !1520)
!1525 = !DILocation(line: 66, column: 83, scope: !1520)
!1526 = !DILocation(line: 68, column: 19, scope: !1520)
!1527 = !DILocation(line: 68, column: 22, scope: !1520)
!1528 = !DILocation(line: 68, column: 2, scope: !1520)
!1529 = !DILocation(line: 69, column: 2, scope: !1520)
!1530 = !DILocation(line: 70, column: 1, scope: !1520)
!1531 = distinct !DISubprogram(name: "raw_atomic_read", scope: !1440, file: !1440, line: 442, type: !904, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1532)
!1532 = !{!1533}
!1533 = !DILocalVariable(name: "v", arg: 1, scope: !1531, file: !1440, line: 442, type: !906)
!1534 = !DILocation(line: 442, column: 33, scope: !1531)
!1535 = !DILocation(line: 444, column: 26, scope: !1531)
!1536 = !DILocation(line: 444, column: 9, scope: !1531)
!1537 = !DILocation(line: 444, column: 2, scope: !1531)
!1538 = distinct !DISubprogram(name: "kasan_check_read", scope: !1448, file: !1448, line: 40, type: !1449, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1539)
!1539 = !{!1540, !1541}
!1540 = !DILocalVariable(name: "p", arg: 1, scope: !1538, file: !1448, line: 40, type: !1422)
!1541 = !DILocalVariable(name: "size", arg: 2, scope: !1538, file: !1448, line: 40, type: !7)
!1542 = !DILocation(line: 40, column: 58, scope: !1538)
!1543 = !DILocation(line: 40, column: 74, scope: !1538)
!1544 = !DILocation(line: 42, column: 2, scope: !1538)
!1545 = distinct !DISubprogram(name: "arch_atomic_read", scope: !1470, file: !1470, line: 17, type: !904, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1546)
!1546 = !{!1547}
!1547 = !DILocalVariable(name: "v", arg: 1, scope: !1545, file: !1470, line: 17, type: !906)
!1548 = !DILocation(line: 17, column: 61, scope: !1545)
!1549 = !DILocation(line: 23, column: 9, scope: !1545)
!1550 = !DILocation(line: 23, column: 2, scope: !1545)
!1551 = distinct !DISubprogram(name: "rep_nop", scope: !917, file: !917, line: 11, type: !672, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1552 = !DILocation(line: 13, column: 2, scope: !1551)
!1553 = !{i64 1933478}
!1554 = !DILocation(line: 14, column: 1, scope: !1551)
!1555 = distinct !DISubprogram(name: "rdtsc_ordered", scope: !432, file: !432, line: 197, type: !1556, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1558)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!75}
!1558 = !{!1559, !1560}
!1559 = !DILocalVariable(name: "low", scope: !1555, file: !432, line: 199, type: !49)
!1560 = !DILocalVariable(name: "high", scope: !1555, file: !432, line: 199, type: !49)
!1561 = !DILocation(line: 199, column: 2, scope: !1555)
!1562 = !DILocation(line: 215, column: 2, scope: !1555)
!1563 = !{i64 2149347458, i64 2149347491, i64 2149347497, i64 2149347513, i64 2149347532, i64 2149347563, i64 2149348515, i64 2149347089, i64 2149348521, i64 2149348569, i64 2149348633, i64 2149348697, i64 2149348754, i64 2149348961, i64 2149349009, i64 2149349073, i64 2149349137, i64 2149349194, i64 2149347207, i64 2149347232, i64 2149349401, i64 2149349530, i64 2149349462, i64 2149349544, i64 2149349558, i64 2149349680, i64 2149349619, i64 2149349694, i64 2149347366}
!1564 = !DILocation(line: 222, column: 9, scope: !1555)
!1565 = !DILocation(line: 223, column: 1, scope: !1555)
!1566 = !DILocation(line: 222, column: 2, scope: !1555)
!1567 = distinct !DISubprogram(name: "queued_spin_lock", scope: !1568, file: !1568, line: 107, type: !1569, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1572)
!1568 = !DIFile(filename: "./include/asm-generic/qspinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ee2071dbdb30625b016b6622681cc28")
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !1571}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!1572 = !{!1573, !1574}
!1573 = !DILocalVariable(name: "lock", arg: 1, scope: !1567, file: !1568, line: 107, type: !1571)
!1574 = !DILocalVariable(name: "val", scope: !1567, file: !1568, line: 109, type: !55)
!1575 = !DILocation(line: 107, column: 64, scope: !1567)
!1576 = !DILocation(line: 109, column: 2, scope: !1567)
!1577 = !DILocation(line: 109, column: 6, scope: !1567)
!1578 = !DILocation(line: 111, column: 6, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1567, file: !1568, line: 111, column: 6)
!1580 = !DILocation(line: 111, column: 6, scope: !1567)
!1581 = !DILocation(line: 112, column: 3, scope: !1579)
!1582 = !DILocation(line: 114, column: 28, scope: !1567)
!1583 = !DILocation(line: 114, column: 34, scope: !1567)
!1584 = !DILocation(line: 114, column: 2, scope: !1567)
!1585 = !DILocation(line: 115, column: 1, scope: !1567)
!1586 = distinct !DISubprogram(name: "queued_spin_unlock", scope: !1568, file: !1568, line: 123, type: !1569, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1587)
!1587 = !{!1588}
!1588 = !DILocalVariable(name: "lock", arg: 1, scope: !1586, file: !1568, line: 123, type: !1571)
!1589 = !DILocation(line: 123, column: 66, scope: !1586)
!1590 = !DILocation(line: 128, column: 2, scope: !1586)
!1591 = !DILocation(line: 128, column: 2, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1586, file: !1568, line: 128, column: 2)
!1593 = !DILocation(line: 128, column: 2, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1592, file: !1568, line: 128, column: 2)
!1595 = !DILocation(line: 128, column: 2, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1592, file: !1568, line: 128, column: 2)
!1597 = !DILocation(line: 128, column: 2, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1596, file: !1568, line: 128, column: 2)
!1599 = !{i64 2149782453}
!1600 = !DILocation(line: 128, column: 2, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !1568, line: 128, column: 2)
!1602 = !DILocation(line: 128, column: 2, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1601, file: !1568, line: 128, column: 2)
!1604 = !DILocation(line: 128, column: 2, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1601, file: !1568, line: 128, column: 2)
!1606 = !DILocation(line: 129, column: 1, scope: !1586)
!1607 = distinct !DISubprogram(name: "touch_nmi_watchdog", scope: !1608, file: !1608, line: 139, type: !672, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1608 = !DIFile(filename: "./include/linux/nmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5da5752bbe70ab061cfd0891798ac7e8")
!1609 = !DILocation(line: 147, column: 2, scope: !1607)
!1610 = !DILocation(line: 149, column: 2, scope: !1607)
!1611 = !DILocation(line: 150, column: 1, scope: !1607)
!1612 = !DISubprogram(name: "__warn_printk", scope: !1613, file: !1613, line: 93, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1613 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null, !76, null}
!1616 = distinct !DISubprogram(name: "atomic_try_cmpxchg_acquire", scope: !891, file: !891, line: 1292, type: !1617, scopeLine: 1293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1619)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!51, !894, !58, !55}
!1619 = !{!1620, !1621, !1622}
!1620 = !DILocalVariable(name: "v", arg: 1, scope: !1616, file: !891, line: 1292, type: !894)
!1621 = !DILocalVariable(name: "old", arg: 2, scope: !1616, file: !891, line: 1292, type: !58)
!1622 = !DILocalVariable(name: "new", arg: 3, scope: !1616, file: !891, line: 1292, type: !55)
!1623 = !DILocation(line: 1292, column: 38, scope: !1616)
!1624 = !DILocation(line: 1292, column: 46, scope: !1616)
!1625 = !DILocation(line: 1292, column: 55, scope: !1616)
!1626 = !DILocation(line: 1294, column: 31, scope: !1616)
!1627 = !DILocation(line: 1294, column: 2, scope: !1616)
!1628 = !DILocation(line: 1295, column: 31, scope: !1616)
!1629 = !DILocation(line: 1295, column: 2, scope: !1616)
!1630 = !DILocation(line: 1296, column: 40, scope: !1616)
!1631 = !DILocation(line: 1296, column: 43, scope: !1616)
!1632 = !DILocation(line: 1296, column: 48, scope: !1616)
!1633 = !DILocation(line: 1296, column: 9, scope: !1616)
!1634 = !DILocation(line: 1296, column: 2, scope: !1616)
!1635 = !DISubprogram(name: "queued_spin_lock_slowpath", scope: !1568, file: !1568, line: 100, type: !1636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !1571, !71}
!1638 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_acquire", scope: !1440, file: !1440, line: 2142, type: !1617, scopeLine: 2143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1639)
!1639 = !{!1640, !1641, !1642}
!1640 = !DILocalVariable(name: "v", arg: 1, scope: !1638, file: !1440, line: 2142, type: !894)
!1641 = !DILocalVariable(name: "old", arg: 2, scope: !1638, file: !1440, line: 2142, type: !58)
!1642 = !DILocalVariable(name: "new", arg: 3, scope: !1638, file: !1440, line: 2142, type: !55)
!1643 = !DILocation(line: 2142, column: 42, scope: !1638)
!1644 = !DILocation(line: 2142, column: 50, scope: !1638)
!1645 = !DILocation(line: 2142, column: 59, scope: !1638)
!1646 = !DILocation(line: 2151, column: 33, scope: !1638)
!1647 = !DILocation(line: 2151, column: 36, scope: !1638)
!1648 = !DILocation(line: 2151, column: 41, scope: !1638)
!1649 = !DILocation(line: 2151, column: 9, scope: !1638)
!1650 = !DILocation(line: 2151, column: 2, scope: !1638)
!1651 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !1470, file: !1470, line: 113, type: !1617, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1652)
!1652 = !{!1653, !1654, !1655, !1656, !1658, !1659, !1660, !1661}
!1653 = !DILocalVariable(name: "v", arg: 1, scope: !1651, file: !1470, line: 113, type: !894)
!1654 = !DILocalVariable(name: "old", arg: 2, scope: !1651, file: !1470, line: 113, type: !58)
!1655 = !DILocalVariable(name: "new", arg: 3, scope: !1651, file: !1470, line: 113, type: !55)
!1656 = !DILocalVariable(name: "success", scope: !1657, file: !1470, line: 115, type: !51)
!1657 = distinct !DILexicalBlock(scope: !1651, file: !1470, line: 115, column: 9)
!1658 = !DILocalVariable(name: "_old", scope: !1657, file: !1470, line: 115, type: !58)
!1659 = !DILocalVariable(name: "__old", scope: !1657, file: !1470, line: 115, type: !55)
!1660 = !DILocalVariable(name: "__new", scope: !1657, file: !1470, line: 115, type: !55)
!1661 = !DILocalVariable(name: "__ptr", scope: !1657, file: !1470, line: 115, type: !84)
!1662 = !DILocation(line: 113, column: 63, scope: !1651)
!1663 = !DILocation(line: 113, column: 71, scope: !1651)
!1664 = !DILocation(line: 113, column: 80, scope: !1651)
!1665 = !DILocation(line: 115, column: 9, scope: !1657)
!1666 = !{i64 2148812198, i64 2148812237, i64 2148812258, i64 2148812295, i64 2148812318, i64 2148812327, i64 2148812625}
!1667 = !DILocation(line: 115, column: 9, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1657, file: !1470, line: 115, column: 9)
!1669 = !DILocation(line: 115, column: 9, scope: !1651)
!1670 = !DILocation(line: 115, column: 2, scope: !1651)
!1671 = distinct !DISubprogram(name: "arch_touch_nmi_watchdog", scope: !1608, file: !1608, line: 96, type: !672, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1672 = !DILocation(line: 96, column: 52, scope: !1671)
!1673 = distinct !DISubprogram(name: "touch_softlockup_watchdog", scope: !1608, file: !1608, line: 54, type: !672, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1674 = !DILocation(line: 54, column: 54, scope: !1673)
!1675 = distinct !DISubprogram(name: "cpumask_weight", scope: !61, file: !61, line: 690, type: !784, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1676)
!1676 = !{!1677}
!1677 = !DILocalVariable(name: "srcp", arg: 1, scope: !1675, file: !61, line: 690, type: !69)
!1678 = !DILocation(line: 690, column: 65, scope: !1675)
!1679 = !DILocation(line: 692, column: 23, scope: !1675)
!1680 = !DILocation(line: 692, column: 9, scope: !1675)
!1681 = !DILocation(line: 692, column: 2, scope: !1675)
!1682 = distinct !DISubprogram(name: "bitmap_weight", scope: !1683, file: !1683, line: 453, type: !1684, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1686)
!1683 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!7, !1306, !7}
!1686 = !{!1687, !1688}
!1687 = !DILocalVariable(name: "src", arg: 1, scope: !1682, file: !1683, line: 453, type: !1306)
!1688 = !DILocalVariable(name: "nbits", arg: 2, scope: !1682, file: !1683, line: 453, type: !7)
!1689 = !DILocation(line: 453, column: 49, scope: !1682)
!1690 = !DILocation(line: 453, column: 67, scope: !1682)
!1691 = !DILocation(line: 455, column: 6, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1682, file: !1683, line: 455, column: 6)
!1693 = !DILocation(line: 455, column: 6, scope: !1682)
!1694 = !DILocation(line: 456, column: 24, scope: !1692)
!1695 = !DILocation(line: 456, column: 23, scope: !1692)
!1696 = !DILocation(line: 456, column: 30, scope: !1692)
!1697 = !DILocation(line: 456, column: 28, scope: !1692)
!1698 = !DILocation(line: 456, column: 10, scope: !1692)
!1699 = !DILocation(line: 456, column: 3, scope: !1692)
!1700 = !DILocation(line: 457, column: 25, scope: !1682)
!1701 = !DILocation(line: 457, column: 30, scope: !1682)
!1702 = !DILocation(line: 457, column: 9, scope: !1682)
!1703 = !DILocation(line: 457, column: 2, scope: !1682)
!1704 = !DILocation(line: 458, column: 1, scope: !1682)
!1705 = distinct !DISubprogram(name: "hweight_long", scope: !1706, file: !1706, line: 95, type: !1353, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1707)
!1706 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!1707 = !{!1708}
!1708 = !DILocalVariable(name: "w", arg: 1, scope: !1705, file: !1706, line: 95, type: !49)
!1709 = !DILocation(line: 95, column: 65, scope: !1705)
!1710 = !DILocation(line: 97, column: 41, scope: !1705)
!1711 = !DILocation(line: 97, column: 2, scope: !1705)
!1712 = !DISubprogram(name: "__bitmap_weight", scope: !1683, file: !1683, line: 171, type: !1684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1713 = distinct !DISubprogram(name: "__arch_hweight64", scope: !1714, file: !1714, line: 43, type: !1715, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1717)
!1714 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!49, !74}
!1717 = !{!1718, !1719}
!1718 = !DILocalVariable(name: "w", arg: 1, scope: !1713, file: !1714, line: 43, type: !74)
!1719 = !DILocalVariable(name: "res", scope: !1713, file: !1714, line: 45, type: !49)
!1720 = !DILocation(line: 43, column: 61, scope: !1713)
!1721 = !DILocation(line: 45, column: 2, scope: !1713)
!1722 = !DILocation(line: 45, column: 16, scope: !1713)
!1723 = !DILocation(line: 49, column: 15, scope: !1713)
!1724 = !DILocation(line: 47, column: 2, scope: !1713)
!1725 = !{i64 2148360549, i64 2148360577, i64 2148360583, i64 2148360599, i64 2148360615, i64 2148360642, i64 2148360975, i64 2148360275, i64 2148360981, i64 2148361029, i64 2148361093, i64 2148361157, i64 2148361214, i64 2148360356, i64 2148360381, i64 2148361421, i64 2148361551, i64 2148361482, i64 2148361565, i64 2148360473}
!1726 = !DILocation(line: 51, column: 9, scope: !1713)
!1727 = !DILocation(line: 52, column: 1, scope: !1713)
!1728 = !DILocation(line: 51, column: 2, scope: !1713)
!1729 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1419, file: !1419, line: 80, type: !1420, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1730)
!1730 = !{!1731, !1732}
!1731 = !DILocalVariable(name: "v", arg: 1, scope: !1729, file: !1419, line: 80, type: !1422)
!1732 = !DILocalVariable(name: "size", arg: 2, scope: !1729, file: !1419, line: 80, type: !1425)
!1733 = !DILocation(line: 80, column: 74, scope: !1729)
!1734 = !DILocation(line: 80, column: 84, scope: !1729)
!1735 = !DILocation(line: 82, column: 20, scope: !1729)
!1736 = !DILocation(line: 82, column: 23, scope: !1729)
!1737 = !DILocation(line: 82, column: 2, scope: !1729)
!1738 = !DILocation(line: 83, column: 2, scope: !1729)
!1739 = !DILocation(line: 84, column: 1, scope: !1729)
!1740 = distinct !DISubprogram(name: "raw_atomic_set", scope: !1440, file: !1440, line: 488, type: !1056, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1741)
!1741 = !{!1742, !1743}
!1742 = !DILocalVariable(name: "v", arg: 1, scope: !1740, file: !1440, line: 488, type: !894)
!1743 = !DILocalVariable(name: "i", arg: 2, scope: !1740, file: !1440, line: 488, type: !55)
!1744 = !DILocation(line: 488, column: 26, scope: !1740)
!1745 = !DILocation(line: 488, column: 33, scope: !1740)
!1746 = !DILocation(line: 490, column: 18, scope: !1740)
!1747 = !DILocation(line: 490, column: 21, scope: !1740)
!1748 = !DILocation(line: 490, column: 2, scope: !1740)
!1749 = !DILocation(line: 491, column: 1, scope: !1740)
!1750 = distinct !DISubprogram(name: "arch_atomic_set", scope: !1470, file: !1470, line: 26, type: !1056, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1751)
!1751 = !{!1752, !1753}
!1752 = !DILocalVariable(name: "v", arg: 1, scope: !1750, file: !1470, line: 26, type: !894)
!1753 = !DILocalVariable(name: "i", arg: 2, scope: !1750, file: !1470, line: 26, type: !55)
!1754 = !DILocation(line: 26, column: 55, scope: !1750)
!1755 = !DILocation(line: 26, column: 62, scope: !1750)
!1756 = !DILocation(line: 28, column: 2, scope: !1750)
!1757 = !DILocation(line: 28, column: 2, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1750, file: !1470, line: 28, column: 2)
!1759 = !DILocation(line: 29, column: 1, scope: !1750)
