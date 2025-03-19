; ModuleID = 'arch/x86/kernel/cpu/mce/intel.c'
source_filename = "arch/x86/kernel/cpu/mce/intel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atomic_t = type { i32 }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.mca_config = type { i64, i8, i8, i8, i8, i32, i32, i32, i8 }
%struct.cpumask = type { [1 x i64] }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.static_call_key = type { ptr, %union.anon.5 }
%union.anon.5 = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.anon = type { i8, i8, i8, i8 }
%struct.mce = type { i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i32, i64, i64, i64, i64, i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !0
@cmci_storm_state = internal global i32 0, section ".data..percpu", align 4, !dbg !7
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@mce_banks_owned = internal global [1 x i64] zeroinitializer, section ".data..percpu", align 8, !dbg !149
@cmci_backoff_cnt = internal global i32 0, section ".data..percpu", align 4, !dbg !151
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@cmci_storm_on_cpus = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !153
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1, !dbg !139
@.str.2 = private unnamed_addr constant [57 x i8] c"\015mce: CMCI storm subsided: switching to interrupt mode\0A\00", align 1, !dbg !144
@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@cmci_discover_lock = internal global %struct.raw_spinlock zeroinitializer, align 4, !dbg !159
@mc_poll_banks = external dso_local global ptr, align 8
@mce_threshold_vector = external dso_local global ptr, align 8
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@mca_cfg = external dso_local global %struct.mca_config, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@mce_banks_ce_disabled = external dso_local global [1 x i64], align 8
@mce_poll_banks = external dso_local global [1 x i64], section ".data..percpu", align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"arch/x86/kernel/cpu/mce/intel.c\00", align 1, !dbg !184
@cmci_discover.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !189
@.str.4 = private unnamed_addr constant [73 x i8] c"\016mce: bios_cmci_threshold: Some banks do not have valid thresholds set\0A\00", align 1, !dbg !319
@cmci_discover.__already_done.5 = internal global i8 0, section ".data..once", align 1, !dbg !324
@.str.6 = private unnamed_addr constant [75 x i8] c"\016mce: bios_cmci_threshold: Make sure your BIOS supports this boot option\0A\00", align 1, !dbg !326
@cmci_poll_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !331
@cmci_storm_cnt = internal global i32 0, section ".data..percpu", align 4, !dbg !346
@cmci_time_stamp = internal global i64 0, section ".data..percpu", align 8, !dbg !348
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.7 = private unnamed_addr constant [52 x i8] c"\015mce: CMCI storm detected: switching to poll mode\0A\00", align 1, !dbg !341
@apic_write.__UNIQUE_ID___addressable___SCK__apic_call_write205 = internal global ptr @__SCK__apic_call_write, section ".discard.addressable", align 8, !dbg !350
@__SCK__apic_call_write = external dso_local global %struct.static_call_key, align 8
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @apic_write.__UNIQUE_ID___addressable___SCK__apic_call_write205], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @mce_intel_cmci_poll() #0 align 16 !dbg !368 {
entry:
  %retval = alloca i1, align 1
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__vpp_verify6 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp10 = alloca ptr, align 8
  %__vpp_verify14 = alloca ptr, align 8
  %pto_val__ = alloca i32, align 4
  %__vpp_verify24 = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  call void @__this_cpu_preempt_check(ptr noundef @.str) #10, !dbg !397
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #11, !dbg !398
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !372, metadata !DIExpression()), !dbg !398
  br label %do.body, !dbg !398

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !399
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !376, metadata !DIExpression()), !dbg !399
  store ptr null, ptr %__vpp_verify, align 8, !dbg !399
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !399
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !398
  br label %do.cond, !dbg !399

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !399

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !400
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !378, metadata !DIExpression()), !dbg !400
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cmci_storm_state) #12, !dbg !400, !srcloc !401
  store i32 %1, ptr %pfo_val__, align 4, !dbg !400
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !400
  %conv = zext i32 %2 to i64, !dbg !400
  %conv2 = trunc i64 %conv to i32, !dbg !400
  store i32 %conv2, ptr %tmp1, align 4, !dbg !400
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !398
  %3 = load i32, ptr %tmp1, align 4, !dbg !400
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !398
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !398
  store i32 %4, ptr %tmp3, align 4, !dbg !398
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #11, !dbg !397
  %5 = load i32, ptr %tmp3, align 4, !dbg !398
  store i32 %5, ptr %tmp, align 4, !dbg !397
  %6 = load i32, ptr %tmp, align 4, !dbg !397
  %cmp = icmp eq i32 %6, 0, !dbg !402
  br i1 %cmp, label %if.then, label %if.end, !dbg !403

if.then:                                          ; preds = %do.end
  store i1 false, ptr %retval, align 1, !dbg !404
  br label %return, !dbg !404

if.end:                                           ; preds = %do.end
  br label %do.body5, !dbg !405

do.body5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify6) #11, !dbg !406
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify6, metadata !380, metadata !DIExpression()), !dbg !406
  store ptr null, ptr %__vpp_verify6, align 8, !dbg !406
  %7 = load ptr, ptr %__vpp_verify6, align 8, !dbg !406
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify6) #11, !dbg !405
  br label %do.end8, !dbg !406

do.end8:                                          ; preds = %do.body5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !384, metadata !DIExpression()), !dbg !407
  %8 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_banks_owned) #12, !dbg !407, !srcloc !408
  store i64 %8, ptr %tcp_ptr__, align 8, !dbg !407
  %9 = load i64, ptr %tcp_ptr__, align 8, !dbg !407
  %10 = inttoptr i64 %9 to ptr, !dbg !407
  store ptr %10, ptr %tmp10, align 8, !dbg !407
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !405
  %11 = load ptr, ptr %tmp10, align 8, !dbg !407
  store ptr %11, ptr %tmp9, align 8, !dbg !406
  %12 = load ptr, ptr %tmp9, align 8, !dbg !405
  %call = call zeroext i1 @machine_check_poll(i32 noundef 0, ptr noundef %12) #10, !dbg !409
  br i1 %call, label %if.then11, label %if.else, !dbg !410

if.then11:                                        ; preds = %do.end8
  br label %do.body12, !dbg !411

do.body12:                                        ; preds = %if.then11
  br label %do.body13, !dbg !412

do.body13:                                        ; preds = %do.body12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify14) #11, !dbg !413
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify14, metadata !386, metadata !DIExpression()), !dbg !413
  store ptr null, ptr %__vpp_verify14, align 8, !dbg !413
  %13 = load ptr, ptr %__vpp_verify14, align 8, !dbg !413
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify14) #11, !dbg !412
  br label %do.end16, !dbg !413

do.end16:                                         ; preds = %do.body13
  br label %do.body17, !dbg !412

do.body17:                                        ; preds = %do.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #11, !dbg !414
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !389, metadata !DIExpression()), !dbg !414
  store i32 300, ptr %pto_val__, align 4, !dbg !414
  %14 = load i32, ptr %pto_val__, align 4, !dbg !414
  call void asm sideeffect "movl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cmci_backoff_cnt, i32 %14, ptr elementtype(i32) @cmci_backoff_cnt) #11, !dbg !414, !srcloc !415
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #11, !dbg !412
  br label %do.end19, !dbg !414

do.end19:                                         ; preds = %do.body17
  br label %do.end21, !dbg !412

do.end21:                                         ; preds = %do.end19
  br label %if.end32, !dbg !412

if.else:                                          ; preds = %do.end8
  br label %do.body22, !dbg !416

do.body22:                                        ; preds = %if.else
  br label %do.body23, !dbg !417

do.body23:                                        ; preds = %do.body22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify24) #11, !dbg !418
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify24, metadata !391, metadata !DIExpression()), !dbg !418
  store ptr null, ptr %__vpp_verify24, align 8, !dbg !418
  %15 = load ptr, ptr %__vpp_verify24, align 8, !dbg !418
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify24) #11, !dbg !417
  br label %do.end26, !dbg !418

do.end26:                                         ; preds = %do.body23
  br label %do.body27, !dbg !417

do.body27:                                        ; preds = %do.end26
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #11, !dbg !419
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !394, metadata !DIExpression()), !dbg !419
  store i32 -1, ptr %pao_ID__, align 4, !dbg !419
  call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cmci_backoff_cnt, ptr elementtype(i32) @cmci_backoff_cnt) #11, !dbg !420, !srcloc !424
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #11, !dbg !417
  br label %do.end29, !dbg !419

do.end29:                                         ; preds = %do.body27
  br label %do.end31, !dbg !417

do.end31:                                         ; preds = %do.end29
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %do.end21
  store i1 true, ptr %retval, align 1, !dbg !425
  br label %return, !dbg !425

return:                                           ; preds = %if.end32, %if.then
  %16 = load i1, ptr %retval, align 1, !dbg !426
  ret i1 %16, !dbg !426
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #1 align 16 !dbg !427 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !434, metadata !DIExpression()), !dbg !435
  ret void, !dbg !436
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !437 dso_local zeroext i1 @machine_check_poll(i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mce_intel_hcpu_update(i64 noundef %cpu) #0 align 16 !dbg !440 {
entry:
  %cpu.addr = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__ptr6 = alloca i64, align 8
  %tmp7 = alloca ptr, align 8
  store i64 %cpu, ptr %cpu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !444, metadata !DIExpression()), !dbg !456
  br label %do.body, !dbg !457

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !458
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !445, metadata !DIExpression()), !dbg !458
  store ptr null, ptr %__vpp_verify, align 8, !dbg !458
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !458
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !457
  br label %do.end, !dbg !458

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !459
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !449, metadata !DIExpression()), !dbg !459
  store i64 ptrtoint (ptr @cmci_storm_state to i64), ptr %__ptr, align 8, !dbg !459
  %1 = load i64, ptr %__ptr, align 8, !dbg !459
  %2 = load i64, ptr %cpu.addr, align 8, !dbg !459
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %2, !dbg !459
  %3 = load i64, ptr %arrayidx, align 8, !dbg !459
  %add = add i64 %1, %3, !dbg !459
  %4 = inttoptr i64 %add to ptr, !dbg !459
  store ptr %4, ptr %tmp1, align 8, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !457
  %5 = load ptr, ptr %tmp1, align 8, !dbg !459
  store ptr %5, ptr %tmp, align 8, !dbg !458
  %6 = load ptr, ptr %tmp, align 8, !dbg !457
  %7 = load i32, ptr %6, align 4, !dbg !460
  %cmp = icmp eq i32 %7, 1, !dbg !461
  br i1 %cmp, label %if.then, label %if.end, !dbg !462

if.then:                                          ; preds = %do.end
  call void @atomic_dec(ptr noundef @cmci_storm_on_cpus) #10, !dbg !463
  br label %if.end, !dbg !463

if.end:                                           ; preds = %if.then, %do.end
  br label %do.body2, !dbg !464

do.body2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify3) #11, !dbg !465
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify3, metadata !451, metadata !DIExpression()), !dbg !465
  store ptr null, ptr %__vpp_verify3, align 8, !dbg !465
  %8 = load ptr, ptr %__vpp_verify3, align 8, !dbg !465
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify3) #11, !dbg !464
  br label %do.end4, !dbg !465

do.end4:                                          ; preds = %do.body2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr6) #11, !dbg !466
  call void @llvm.dbg.declare(metadata ptr %__ptr6, metadata !454, metadata !DIExpression()), !dbg !466
  store i64 ptrtoint (ptr @cmci_storm_state to i64), ptr %__ptr6, align 8, !dbg !466
  %9 = load i64, ptr %__ptr6, align 8, !dbg !466
  %10 = load i64, ptr %cpu.addr, align 8, !dbg !466
  %arrayidx8 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %10, !dbg !466
  %11 = load i64, ptr %arrayidx8, align 8, !dbg !466
  %add9 = add i64 %9, %11, !dbg !466
  %12 = inttoptr i64 %add9 to ptr, !dbg !466
  store ptr %12, ptr %tmp7, align 8, !dbg !466
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr6) #11, !dbg !464
  %13 = load ptr, ptr %tmp7, align 8, !dbg !466
  store ptr %13, ptr %tmp5, align 8, !dbg !465
  %14 = load ptr, ptr %tmp5, align 8, !dbg !464
  store i32 0, ptr %14, align 4, !dbg !467
  ret void, !dbg !468
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #1 align 16 !dbg !469 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !475, metadata !DIExpression()), !dbg !476
  %0 = load ptr, ptr %v.addr, align 8, !dbg !477
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !478
  %1 = load ptr, ptr %v.addr, align 8, !dbg !479
  call void @raw_atomic_dec(ptr noundef %1) #10, !dbg !480
  ret void, !dbg !481
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @cmci_intel_adjust_timer(i64 noundef %interval) #0 align 16 !dbg !482 {
entry:
  %retval = alloca i64, align 8
  %interval.addr = alloca i64, align 8
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %pscr_ret__5 = alloca i32, align 4
  %__vpp_verify7 = alloca ptr, align 8
  %pfo_val__10 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  %pscr_ret__18 = alloca i32, align 4
  %__vpp_verify20 = alloca ptr, align 8
  %pfo_val__23 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  %__vpp_verify30 = alloca ptr, align 8
  %pto_val__ = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  %__vpp_verify52 = alloca ptr, align 8
  %pto_val__56 = alloca i32, align 4
  store i64 %interval, ptr %interval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %interval.addr, metadata !486, metadata !DIExpression()), !dbg !523
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #11, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !487, metadata !DIExpression()), !dbg !524
  br label %do.body, !dbg !524

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !490, metadata !DIExpression()), !dbg !525
  store ptr null, ptr %__vpp_verify, align 8, !dbg !525
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !525
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !524
  br label %do.cond, !dbg !525

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !525

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !526
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !492, metadata !DIExpression()), !dbg !526
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cmci_backoff_cnt) #11, !dbg !526, !srcloc !527
  store i32 %1, ptr %pfo_val__, align 4, !dbg !526
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !526
  %conv = zext i32 %2 to i64, !dbg !526
  %conv1 = trunc i64 %conv to i32, !dbg !526
  store i32 %conv1, ptr %tmp, align 4, !dbg !526
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !524
  %3 = load i32, ptr %tmp, align 4, !dbg !526
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !524
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !524
  store i32 %4, ptr %tmp2, align 4, !dbg !524
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #11, !dbg !528
  %5 = load i32, ptr %tmp2, align 4, !dbg !524
  %cmp = icmp sgt i32 %5, 0, !dbg !529
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !530

land.lhs.true:                                    ; preds = %do.end
  call void @__this_cpu_preempt_check(ptr noundef @.str) #10, !dbg !531
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__5) #11, !dbg !532
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__5, metadata !494, metadata !DIExpression()), !dbg !532
  br label %do.body6, !dbg !532

do.body6:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify7) #11, !dbg !533
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify7, metadata !497, metadata !DIExpression()), !dbg !533
  store ptr null, ptr %__vpp_verify7, align 8, !dbg !533
  %6 = load ptr, ptr %__vpp_verify7, align 8, !dbg !533
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify7) #11, !dbg !532
  br label %do.cond8, !dbg !533

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !533

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__10) #11, !dbg !534
  call void @llvm.dbg.declare(metadata ptr %pfo_val__10, metadata !499, metadata !DIExpression()), !dbg !534
  %7 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cmci_storm_state) #12, !dbg !534, !srcloc !535
  store i32 %7, ptr %pfo_val__10, align 4, !dbg !534
  %8 = load i32, ptr %pfo_val__10, align 4, !dbg !534
  %conv12 = zext i32 %8 to i64, !dbg !534
  %conv13 = trunc i64 %conv12 to i32, !dbg !534
  store i32 %conv13, ptr %tmp11, align 4, !dbg !534
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__10) #11, !dbg !532
  %9 = load i32, ptr %tmp11, align 4, !dbg !534
  store i32 %9, ptr %pscr_ret__5, align 4, !dbg !532
  %10 = load i32, ptr %pscr_ret__5, align 4, !dbg !532
  store i32 %10, ptr %tmp14, align 4, !dbg !532
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__5) #11, !dbg !531
  %11 = load i32, ptr %tmp14, align 4, !dbg !532
  store i32 %11, ptr %tmp4, align 4, !dbg !531
  %12 = load i32, ptr %tmp4, align 4, !dbg !531
  %cmp15 = icmp eq i32 %12, 1, !dbg !536
  br i1 %cmp15, label %if.then, label %if.end, !dbg !537

if.then:                                          ; preds = %do.end9
  %call = call i32 @mce_notify_irq() #10, !dbg !538
  store i64 1000, ptr %retval, align 8, !dbg !540
  br label %return, !dbg !540

if.end:                                           ; preds = %do.end9, %do.end
  call void @__this_cpu_preempt_check(ptr noundef @.str) #10, !dbg !541
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__18) #11, !dbg !542
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__18, metadata !501, metadata !DIExpression()), !dbg !542
  br label %do.body19, !dbg !542

do.body19:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify20) #11, !dbg !543
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify20, metadata !504, metadata !DIExpression()), !dbg !543
  store ptr null, ptr %__vpp_verify20, align 8, !dbg !543
  %13 = load ptr, ptr %__vpp_verify20, align 8, !dbg !543
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify20) #11, !dbg !542
  br label %do.cond21, !dbg !543

do.cond21:                                        ; preds = %do.body19
  br label %do.end22, !dbg !543

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__23) #11, !dbg !544
  call void @llvm.dbg.declare(metadata ptr %pfo_val__23, metadata !506, metadata !DIExpression()), !dbg !544
  %14 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cmci_storm_state) #12, !dbg !544, !srcloc !545
  store i32 %14, ptr %pfo_val__23, align 4, !dbg !544
  %15 = load i32, ptr %pfo_val__23, align 4, !dbg !544
  %conv25 = zext i32 %15 to i64, !dbg !544
  %conv26 = trunc i64 %conv25 to i32, !dbg !544
  store i32 %conv26, ptr %tmp24, align 4, !dbg !544
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__23) #11, !dbg !542
  %16 = load i32, ptr %tmp24, align 4, !dbg !544
  store i32 %16, ptr %pscr_ret__18, align 4, !dbg !542
  %17 = load i32, ptr %pscr_ret__18, align 4, !dbg !542
  store i32 %17, ptr %tmp27, align 4, !dbg !542
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__18) #11, !dbg !541
  %18 = load i32, ptr %tmp27, align 4, !dbg !542
  store i32 %18, ptr %tmp17, align 4, !dbg !541
  %19 = load i32, ptr %tmp17, align 4, !dbg !541
  switch i32 %19, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb46
  ], !dbg !546

sw.bb:                                            ; preds = %do.end22
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #10, !dbg !547
  br label %do.body28, !dbg !547

do.body28:                                        ; preds = %sw.bb
  br label %do.body29, !dbg !548

do.body29:                                        ; preds = %do.body28
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify30) #11, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify30, metadata !508, metadata !DIExpression()), !dbg !549
  store ptr null, ptr %__vpp_verify30, align 8, !dbg !549
  %20 = load ptr, ptr %__vpp_verify30, align 8, !dbg !549
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify30) #11, !dbg !548
  br label %do.end32, !dbg !549

do.end32:                                         ; preds = %do.body29
  br label %do.body33, !dbg !548

do.body33:                                        ; preds = %do.end32
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #11, !dbg !550
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !513, metadata !DIExpression()), !dbg !550
  store i32 2, ptr %pto_val__, align 4, !dbg !550
  %21 = load i32, ptr %pto_val__, align 4, !dbg !550
  call void asm "movl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cmci_storm_state, i32 %21, ptr elementtype(i32) @cmci_storm_state) #11, !dbg !550, !srcloc !551
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #11, !dbg !548
  br label %do.end35, !dbg !550

do.end35:                                         ; preds = %do.body33
  br label %do.end37, !dbg !548

do.end37:                                         ; preds = %do.end35
  %call38 = call i32 @atomic_sub_return(i32 noundef 1, ptr noundef @cmci_storm_on_cpus) #10, !dbg !552
  %tobool = icmp ne i32 %call38, 0, !dbg !552
  br i1 %tobool, label %if.end45, label %if.then39, !dbg !554

if.then39:                                        ; preds = %do.end37
  br label %do.body40, !dbg !555

do.body40:                                        ; preds = %if.then39
  br label %do.end42, !dbg !557

do.end42:                                         ; preds = %do.body40
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #13, !dbg !555
  store i32 %call44, ptr %tmp43, align 4, !dbg !557
  %22 = load i32, ptr %tmp43, align 4, !dbg !555
  br label %if.end45, !dbg !559

if.end45:                                         ; preds = %do.end42, %do.end37
  br label %sw.bb46, !dbg !560

sw.bb46:                                          ; preds = %do.end22, %if.end45
  %call47 = call i32 @atomic_read(ptr noundef @cmci_storm_on_cpus) #10, !dbg !561
  %tobool48 = icmp ne i32 %call47, 0, !dbg !561
  br i1 %tobool48, label %if.end61, label %if.then49, !dbg !562

if.then49:                                        ; preds = %sw.bb46
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #10, !dbg !563
  br label %do.body50, !dbg !563

do.body50:                                        ; preds = %if.then49
  br label %do.body51, !dbg !564

do.body51:                                        ; preds = %do.body50
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify52) #11, !dbg !565
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify52, metadata !515, metadata !DIExpression()), !dbg !565
  store ptr null, ptr %__vpp_verify52, align 8, !dbg !565
  %23 = load ptr, ptr %__vpp_verify52, align 8, !dbg !565
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify52) #11, !dbg !564
  br label %do.end54, !dbg !565

do.end54:                                         ; preds = %do.body51
  br label %do.body55, !dbg !564

do.body55:                                        ; preds = %do.end54
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__56) #11, !dbg !566
  call void @llvm.dbg.declare(metadata ptr %pto_val__56, metadata !521, metadata !DIExpression()), !dbg !566
  store i32 0, ptr %pto_val__56, align 4, !dbg !566
  %24 = load i32, ptr %pto_val__56, align 4, !dbg !566
  call void asm "movl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cmci_storm_state, i32 %24, ptr elementtype(i32) @cmci_storm_state) #11, !dbg !566, !srcloc !567
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__56) #11, !dbg !564
  br label %do.end58, !dbg !566

do.end58:                                         ; preds = %do.body55
  br label %do.end60, !dbg !564

do.end60:                                         ; preds = %do.end58
  call void @cmci_toggle_interrupt_mode(i1 noundef zeroext true) #10, !dbg !568
  call void @cmci_recheck() #10, !dbg !569
  br label %if.end61, !dbg !570

if.end61:                                         ; preds = %do.end60, %sw.bb46
  store i64 30000, ptr %retval, align 8, !dbg !571
  br label %return, !dbg !571

sw.default:                                       ; preds = %do.end22
  %25 = load i64, ptr %interval.addr, align 8, !dbg !572
  store i64 %25, ptr %retval, align 8, !dbg !573
  br label %return, !dbg !573

return:                                           ; preds = %sw.default, %if.end61, %if.then
  %26 = load i64, ptr %retval, align 8, !dbg !574
  ret i64 %26, !dbg !574
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !575 dso_local i32 @mce_notify_irq() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_sub_return(i32 noundef %i, ptr noundef %v) #1 align 16 !dbg !578 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !582, metadata !DIExpression()), !dbg !584
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !583, metadata !DIExpression()), !dbg !585
  br label %do.body, !dbg !586

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !587

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !589
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !590
  %1 = load i32, ptr %i.addr, align 4, !dbg !591
  %2 = load ptr, ptr %v.addr, align 8, !dbg !592
  %call = call i32 @raw_atomic_sub_return(i32 noundef %1, ptr noundef %2) #10, !dbg !593
  ret i32 %call, !dbg !594
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !595 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #1 align 16 !dbg !599 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !605, metadata !DIExpression()), !dbg !606
  %0 = load ptr, ptr %v.addr, align 8, !dbg !607
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #10, !dbg !608
  %1 = load ptr, ptr %v.addr, align 8, !dbg !609
  %call = call i32 @raw_atomic_read(ptr noundef %1) #10, !dbg !610
  ret i32 %call, !dbg !611
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cmci_toggle_interrupt_mode(i1 noundef zeroext %on) #0 align 16 !dbg !612 {
entry:
  %on.addr = alloca i8, align 1
  %flags = alloca i64, align 8
  %owned = alloca ptr, align 8
  %bank = alloca i32, align 4
  %val = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp5 = alloca ptr, align 8
  %__dummy14 = alloca i64, align 8
  %__dummy215 = alloca i64, align 8
  %tmp18 = alloca i32, align 4
  %frombool = zext i1 %on to i8
  store i8 %frombool, ptr %on.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %on.addr, metadata !616, metadata !DIExpression()), !dbg !634
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !635
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !617, metadata !DIExpression()), !dbg !636
  call void @llvm.lifetime.start.p0(i64 8, ptr %owned) #11, !dbg !635
  call void @llvm.dbg.declare(metadata ptr %owned, metadata !618, metadata !DIExpression()), !dbg !637
  call void @llvm.lifetime.start.p0(i64 4, ptr %bank) #11, !dbg !638
  call void @llvm.dbg.declare(metadata ptr %bank, metadata !619, metadata !DIExpression()), !dbg !639
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !640
  call void @llvm.dbg.declare(metadata ptr %val, metadata !620, metadata !DIExpression()), !dbg !641
  br label %do.body, !dbg !642

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !621, metadata !DIExpression()), !dbg !643
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !624, metadata !DIExpression()), !dbg !643
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !643
  %conv = zext i1 %cmp to i32, !dbg !643
  store i32 1, ptr %tmp, align 4, !dbg !643
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !644
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !644
  %0 = load i32, ptr %tmp, align 4, !dbg !643
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @cmci_discover_lock) #10, !dbg !644
  store i64 %call, ptr %flags, align 8, !dbg !644
  br label %do.cond, !dbg !644

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !644

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !645

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !646
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !625, metadata !DIExpression()), !dbg !646
  store ptr null, ptr %__vpp_verify, align 8, !dbg !646
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !646
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !645
  br label %do.cond2, !dbg !646

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !646

do.end3:                                          ; preds = %do.cond2
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !647
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !628, metadata !DIExpression()), !dbg !647
  %2 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_banks_owned) #12, !dbg !647, !srcloc !648
  store i64 %2, ptr %tcp_ptr__, align 8, !dbg !647
  %3 = load i64, ptr %tcp_ptr__, align 8, !dbg !647
  %4 = inttoptr i64 %3 to ptr, !dbg !647
  store ptr %4, ptr %tmp5, align 8, !dbg !647
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !645
  %5 = load ptr, ptr %tmp5, align 8, !dbg !647
  store ptr %5, ptr %tmp4, align 8, !dbg !646
  %6 = load ptr, ptr %tmp4, align 8, !dbg !645
  store ptr %6, ptr %owned, align 8, !dbg !649
  store i32 0, ptr %bank, align 4, !dbg !650
  br label %for.cond, !dbg !650

for.cond:                                         ; preds = %for.inc, %do.end3
  %7 = load ptr, ptr %owned, align 8, !dbg !652
  %8 = load i32, ptr %bank, align 4, !dbg !652
  %conv6 = sext i32 %8 to i64, !dbg !652
  %call7 = call i64 @find_next_bit(ptr noundef %7, i64 noundef 64, i64 noundef %conv6) #10, !dbg !652
  %conv8 = trunc i64 %call7 to i32, !dbg !652
  store i32 %conv8, ptr %bank, align 4, !dbg !652
  %9 = load i32, ptr %bank, align 4, !dbg !652
  %cmp9 = icmp slt i32 %9, 64, !dbg !652
  br i1 %cmp9, label %for.body, label %for.end, !dbg !650

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %bank, align 4, !dbg !654
  %add = add i32 640, %10, !dbg !654
  %call11 = call i64 @native_read_msr(i32 noundef %add) #10, !dbg !654
  store i64 %call11, ptr %val, align 8, !dbg !654
  %11 = load i8, ptr %on.addr, align 1, !dbg !656, !range !658, !noundef !659
  %tobool = trunc i8 %11 to i1, !dbg !656
  br i1 %tobool, label %if.then, label %if.else, !dbg !660

if.then:                                          ; preds = %for.body
  %12 = load i64, ptr %val, align 8, !dbg !661
  %or = or i64 %12, 1073741824, !dbg !661
  store i64 %or, ptr %val, align 8, !dbg !661
  br label %if.end, !dbg !662

if.else:                                          ; preds = %for.body
  %13 = load i64, ptr %val, align 8, !dbg !663
  %and = and i64 %13, -1073741825, !dbg !663
  store i64 %and, ptr %val, align 8, !dbg !663
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, ptr %bank, align 4, !dbg !664
  %add12 = add i32 640, %14, !dbg !664
  %15 = load i64, ptr %val, align 8, !dbg !665
  call void @wrmsrl(i32 noundef %add12, i64 noundef %15) #10, !dbg !666
  br label %for.inc, !dbg !667

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %bank, align 4, !dbg !652
  %inc = add i32 %16, 1, !dbg !652
  store i32 %inc, ptr %bank, align 4, !dbg !652
  br label %for.cond, !dbg !652, !llvm.loop !668

for.end:                                          ; preds = %for.cond
  br label %do.body13, !dbg !672

do.body13:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy14) #11, !dbg !673
  call void @llvm.dbg.declare(metadata ptr %__dummy14, metadata !630, metadata !DIExpression()), !dbg !673
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy215) #11, !dbg !673
  call void @llvm.dbg.declare(metadata ptr %__dummy215, metadata !633, metadata !DIExpression()), !dbg !673
  %cmp16 = icmp eq ptr %__dummy14, %__dummy215, !dbg !673
  %conv17 = zext i1 %cmp16 to i32, !dbg !673
  store i32 1, ptr %tmp18, align 4, !dbg !673
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy215) #11, !dbg !674
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy14) #11, !dbg !674
  %17 = load i32, ptr %tmp18, align 4, !dbg !673
  %18 = load i64, ptr %flags, align 8, !dbg !674
  call void @_raw_spin_unlock_irqrestore(ptr noundef @cmci_discover_lock, i64 noundef %18) #10, !dbg !674
  br label %do.cond19, !dbg !674

do.cond19:                                        ; preds = %do.body13
  br label %do.end20, !dbg !674

do.end20:                                         ; preds = %do.cond19
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !675
  call void @llvm.lifetime.end.p0(i64 4, ptr %bank) #11, !dbg !675
  call void @llvm.lifetime.end.p0(i64 8, ptr %owned) #11, !dbg !675
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !675
  ret void, !dbg !675
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cmci_recheck() #0 align 16 !dbg !676 {
entry:
  %flags = alloca i64, align 8
  %banks = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp6 = alloca i32, align 4
  %__vpp_verify13 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %tcp_ptr__17 = alloca i64, align 8
  %tmp18 = alloca ptr, align 8
  %__dummy22 = alloca i64, align 8
  %__dummy223 = alloca i64, align 8
  %tmp26 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !703
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !680, metadata !DIExpression()), !dbg !704
  call void @llvm.lifetime.start.p0(i64 4, ptr %banks) #11, !dbg !705
  call void @llvm.dbg.declare(metadata ptr %banks, metadata !681, metadata !DIExpression()), !dbg !706
  br label %do.body, !dbg !707

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !708
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !682, metadata !DIExpression()), !dbg !708
  store ptr null, ptr %__vpp_verify, align 8, !dbg !708
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !708
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !707
  br label %do.cond, !dbg !708

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !708

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !709
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !686, metadata !DIExpression()), !dbg !709
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @cpu_info) #12, !dbg !709, !srcloc !710
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !709
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !709
  %3 = inttoptr i64 %2 to ptr, !dbg !709
  store ptr %3, ptr %tmp1, align 8, !dbg !709
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !707
  %4 = load ptr, ptr %tmp1, align 8, !dbg !709
  store ptr %4, ptr %tmp, align 8, !dbg !708
  %5 = load ptr, ptr %tmp, align 8, !dbg !707
  %call = call i32 @mce_available(ptr noundef %5) #10, !dbg !711
  %tobool = icmp ne i32 %call, 0, !dbg !711
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !712

lor.lhs.false:                                    ; preds = %do.end
  %call2 = call i32 @cmci_supported(ptr noundef %banks) #10, !dbg !713
  %tobool3 = icmp ne i32 %call2, 0, !dbg !713
  br i1 %tobool3, label %if.end, label %if.then, !dbg !714

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !715

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body4, !dbg !716

do.body4:                                         ; preds = %if.end
  br label %do.body5, !dbg !717

do.body5:                                         ; preds = %do.body4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !718
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !688, metadata !DIExpression()), !dbg !718
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !718
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !692, metadata !DIExpression()), !dbg !718
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !718
  %conv = zext i1 %cmp to i32, !dbg !718
  store i32 1, ptr %tmp6, align 4, !dbg !718
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !719
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !719
  %6 = load i32, ptr %tmp6, align 4, !dbg !718
  %call7 = call i64 @arch_local_irq_save() #10, !dbg !719
  store i64 %call7, ptr %flags, align 8, !dbg !719
  br label %do.cond8, !dbg !719

do.cond8:                                         ; preds = %do.body5
  br label %do.end9, !dbg !719

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !717

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !717

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !720

do.body12:                                        ; preds = %do.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify13) #11, !dbg !721
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify13, metadata !693, metadata !DIExpression()), !dbg !721
  store ptr null, ptr %__vpp_verify13, align 8, !dbg !721
  %7 = load ptr, ptr %__vpp_verify13, align 8, !dbg !721
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify13) #11, !dbg !720
  br label %do.cond14, !dbg !721

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !721

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__17) #11, !dbg !722
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__17, metadata !696, metadata !DIExpression()), !dbg !722
  %8 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_banks_owned) #12, !dbg !722, !srcloc !723
  store i64 %8, ptr %tcp_ptr__17, align 8, !dbg !722
  %9 = load i64, ptr %tcp_ptr__17, align 8, !dbg !722
  %10 = inttoptr i64 %9 to ptr, !dbg !722
  store ptr %10, ptr %tmp18, align 8, !dbg !722
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__17) #11, !dbg !720
  %11 = load ptr, ptr %tmp18, align 8, !dbg !722
  store ptr %11, ptr %tmp16, align 8, !dbg !721
  %12 = load ptr, ptr %tmp16, align 8, !dbg !720
  %call19 = call zeroext i1 @machine_check_poll(i32 noundef 0, ptr noundef %12) #10, !dbg !724
  br label %do.body20, !dbg !725

do.body20:                                        ; preds = %do.end15
  br label %do.body21, !dbg !726

do.body21:                                        ; preds = %do.body20
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy22) #11, !dbg !727
  call void @llvm.dbg.declare(metadata ptr %__dummy22, metadata !698, metadata !DIExpression()), !dbg !727
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy223) #11, !dbg !727
  call void @llvm.dbg.declare(metadata ptr %__dummy223, metadata !702, metadata !DIExpression()), !dbg !727
  %cmp24 = icmp eq ptr %__dummy22, %__dummy223, !dbg !727
  %conv25 = zext i1 %cmp24 to i32, !dbg !727
  store i32 1, ptr %tmp26, align 4, !dbg !727
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy223) #11, !dbg !728
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy22) #11, !dbg !728
  %13 = load i32, ptr %tmp26, align 4, !dbg !727
  br label %do.body27, !dbg !728

do.body27:                                        ; preds = %do.body21
  br label %do.cond28, !dbg !729

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !729

do.end29:                                         ; preds = %do.cond28
  %14 = load i64, ptr %flags, align 8, !dbg !728
  call void @arch_local_irq_restore(i64 noundef %14) #10, !dbg !728
  br label %do.cond30, !dbg !728

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !728

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !726

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !726

do.end33:                                         ; preds = %do.cond32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !731
  br label %cleanup, !dbg !731

cleanup:                                          ; preds = %do.end33, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %banks) #11, !dbg !731
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !731
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !731

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !732 dso_local i32 @mce_available(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cmci_supported(ptr noundef %banks) #0 align 16 !dbg !735 {
entry:
  %retval = alloca i32, align 4
  %banks.addr = alloca ptr, align 8
  %cap = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x217 = alloca i32, align 4
  %__UNIQUE_ID___y218 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %banks, ptr %banks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %banks.addr, metadata !739, metadata !DIExpression()), !dbg !744
  call void @llvm.lifetime.start.p0(i64 8, ptr %cap) #11, !dbg !745
  call void @llvm.dbg.declare(metadata ptr %cap, metadata !740, metadata !DIExpression()), !dbg !746
  %0 = load i8, ptr getelementptr inbounds (%struct.mca_config, ptr @mca_cfg, i32 0, i32 2), align 1, !dbg !747, !range !658, !noundef !659
  %tobool = trunc i8 %0 to i1, !dbg !747
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !749

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.mca_config, ptr @mca_cfg, i32 0, i32 3), align 2, !dbg !750, !range !658, !noundef !659
  %tobool1 = trunc i8 %1 to i1, !dbg !750
  br i1 %tobool1, label %if.then, label %if.end, !dbg !751

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !752
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !752

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !753
  %conv = zext i8 %2 to i32, !dbg !755
  %cmp = icmp ne i32 %conv, 0, !dbg !756
  br i1 %cmp, label %land.lhs.true, label %if.end7, !dbg !757

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !758
  %conv3 = zext i8 %3 to i32, !dbg !759
  %cmp4 = icmp ne i32 %conv3, 10, !dbg !760
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !761

if.then6:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !762

if.end7:                                          ; preds = %land.lhs.true, %if.end
  br i1 false, label %cond.true, label %cond.false, !dbg !763

cond.true:                                        ; preds = %if.end7
  br i1 true, label %lor.lhs.false9, label %if.then13, !dbg !765

cond.false:                                       ; preds = %if.end7
  %call = call zeroext i1 @arch_test_bit(i64 noundef 9, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !765
  br i1 %call, label %lor.lhs.false9, label %if.then13, !dbg !763

lor.lhs.false9:                                   ; preds = %cond.false, %cond.true
  %call10 = call i32 @lapic_get_maxlvt() #10, !dbg !766
  %cmp11 = icmp slt i32 %call10, 6, !dbg !767
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !768

if.then13:                                        ; preds = %lor.lhs.false9, %cond.false, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !769

if.end14:                                         ; preds = %lor.lhs.false9
  %call15 = call i64 @native_read_msr(i32 noundef 377) #10, !dbg !770
  store i64 %call15, ptr %cap, align 8, !dbg !770
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x217) #11, !dbg !771
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x217, metadata !741, metadata !DIExpression()), !dbg !771
  store i32 64, ptr %__UNIQUE_ID___x217, align 4, !dbg !771
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y218) #11, !dbg !771
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y218, metadata !743, metadata !DIExpression()), !dbg !771
  %4 = load i64, ptr %cap, align 8, !dbg !771
  %and = and i64 %4, 255, !dbg !771
  %conv16 = trunc i64 %and to i32, !dbg !771
  store i32 %conv16, ptr %__UNIQUE_ID___y218, align 4, !dbg !771
  %5 = load i32, ptr %__UNIQUE_ID___x217, align 4, !dbg !771
  %6 = load i32, ptr %__UNIQUE_ID___y218, align 4, !dbg !771
  %cmp17 = icmp ult i32 %5, %6, !dbg !771
  br i1 %cmp17, label %cond.true19, label %cond.false20, !dbg !771

cond.true19:                                      ; preds = %if.end14
  %7 = load i32, ptr %__UNIQUE_ID___x217, align 4, !dbg !771
  br label %cond.end, !dbg !771

cond.false20:                                     ; preds = %if.end14
  %8 = load i32, ptr %__UNIQUE_ID___y218, align 4, !dbg !771
  br label %cond.end, !dbg !771

cond.end:                                         ; preds = %cond.false20, %cond.true19
  %cond = phi i32 [ %7, %cond.true19 ], [ %8, %cond.false20 ], !dbg !771
  store i32 %cond, ptr %tmp, align 4, !dbg !771
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y218) #11, !dbg !772
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x217) #11, !dbg !772
  %9 = load i32, ptr %tmp, align 4, !dbg !771
  %10 = load ptr, ptr %banks.addr, align 8, !dbg !773
  store i32 %9, ptr %10, align 4, !dbg !774
  %11 = load i64, ptr %cap, align 8, !dbg !775
  %and21 = and i64 %11, 1024, !dbg !776
  %tobool22 = icmp ne i64 %and21, 0, !dbg !777
  %lnot = xor i1 %tobool22, true, !dbg !777
  %lnot23 = xor i1 %lnot, true, !dbg !778
  %lnot.ext = zext i1 %lnot23 to i32, !dbg !778
  store i32 %lnot.ext, ptr %retval, align 4, !dbg !779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !779

cleanup:                                          ; preds = %cond.end, %if.then13, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cap) #11, !dbg !780
  %12 = load i32, ptr %retval, align 4, !dbg !780
  ret i32 %12, !dbg !780
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #1 align 16 !dbg !781 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !787
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !786, metadata !DIExpression()), !dbg !788
  %call = call i64 @arch_local_save_flags() #10, !dbg !789
  store i64 %call, ptr %flags, align 8, !dbg !788
  call void @arch_local_irq_disable() #10, !dbg !790
  %0 = load i64, ptr %flags, align 8, !dbg !791
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !792
  ret i64 %0, !dbg !793
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #1 align 16 !dbg !794 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !796, metadata !DIExpression()), !dbg !797
  %0 = load i64, ptr %flags.addr, align 8, !dbg !798
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #10, !dbg !800
  %tobool = icmp ne i32 %call, 0, !dbg !800
  br i1 %tobool, label %if.end, label %if.then, !dbg !801

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #10, !dbg !802
  br label %if.end, !dbg !802

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !803
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cmci_clear() #0 align 16 !dbg !804 {
entry:
  %flags = alloca i64, align 8
  %i = alloca i32, align 4
  %banks = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !817
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !806, metadata !DIExpression()), !dbg !818
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !819
  call void @llvm.dbg.declare(metadata ptr %i, metadata !807, metadata !DIExpression()), !dbg !820
  call void @llvm.lifetime.start.p0(i64 4, ptr %banks) #11, !dbg !821
  call void @llvm.dbg.declare(metadata ptr %banks, metadata !808, metadata !DIExpression()), !dbg !822
  %call = call i32 @cmci_supported(ptr noundef %banks) #10, !dbg !823
  %tobool = icmp ne i32 %call, 0, !dbg !823
  br i1 %tobool, label %if.end, label %if.then, !dbg !825

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !826

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !827

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !828
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !809, metadata !DIExpression()), !dbg !828
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !828
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !812, metadata !DIExpression()), !dbg !828
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !828
  %conv = zext i1 %cmp to i32, !dbg !828
  store i32 1, ptr %tmp, align 4, !dbg !828
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !829
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !829
  %0 = load i32, ptr %tmp, align 4, !dbg !828
  %call1 = call i64 @_raw_spin_lock_irqsave(ptr noundef @cmci_discover_lock) #10, !dbg !829
  store i64 %call1, ptr %flags, align 8, !dbg !829
  br label %do.cond, !dbg !829

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !829

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %i, align 4, !dbg !830
  br label %for.cond, !dbg !832

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i32, ptr %i, align 4, !dbg !833
  %2 = load i32, ptr %banks, align 4, !dbg !835
  %cmp2 = icmp slt i32 %1, %2, !dbg !836
  br i1 %cmp2, label %for.body, label %for.end, !dbg !837

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !838
  call void @__cmci_disable_bank(i32 noundef %3) #10, !dbg !839
  br label %for.inc, !dbg !839

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !840
  %inc = add i32 %4, 1, !dbg !840
  store i32 %inc, ptr %i, align 4, !dbg !840
  br label %for.cond, !dbg !841, !llvm.loop !842

for.end:                                          ; preds = %for.cond
  br label %do.body4, !dbg !844

do.body4:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy5) #11, !dbg !845
  call void @llvm.dbg.declare(metadata ptr %__dummy5, metadata !813, metadata !DIExpression()), !dbg !845
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy26) #11, !dbg !845
  call void @llvm.dbg.declare(metadata ptr %__dummy26, metadata !816, metadata !DIExpression()), !dbg !845
  %cmp7 = icmp eq ptr %__dummy5, %__dummy26, !dbg !845
  %conv8 = zext i1 %cmp7 to i32, !dbg !845
  store i32 1, ptr %tmp9, align 4, !dbg !845
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy26) #11, !dbg !846
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy5) #11, !dbg !846
  %5 = load i32, ptr %tmp9, align 4, !dbg !845
  %6 = load i64, ptr %flags, align 8, !dbg !846
  call void @_raw_spin_unlock_irqrestore(ptr noundef @cmci_discover_lock, i64 noundef %6) #10, !dbg !846
  br label %do.cond10, !dbg !846

do.cond10:                                        ; preds = %do.body4
  br label %do.end11, !dbg !846

do.end11:                                         ; preds = %do.cond10
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !847
  br label %cleanup, !dbg !847

cleanup:                                          ; preds = %do.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %banks) #11, !dbg !847
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !847
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !847
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !847

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !848 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__cmci_disable_bank(i32 noundef %bank) #0 align 16 !dbg !853 {
entry:
  %bank.addr = alloca i32, align 4
  %val = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %tcp_ptr__8 = alloca i64, align 8
  %tmp9 = alloca ptr, align 8
  %__vpp_verify14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %tcp_ptr__18 = alloca i64, align 8
  %tmp19 = alloca ptr, align 8
  %__vpp_verify22 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  %tcp_ptr__26 = alloca i64, align 8
  %tmp27 = alloca ptr, align 8
  %__vpp_verify31 = alloca ptr, align 8
  %tmp34 = alloca ptr, align 8
  %tcp_ptr__35 = alloca i64, align 8
  %tmp36 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify43 = alloca ptr, align 8
  %tmp46 = alloca ptr, align 8
  %tcp_ptr__47 = alloca i64, align 8
  %tmp48 = alloca ptr, align 8
  %__vpp_verify53 = alloca ptr, align 8
  %tmp56 = alloca ptr, align 8
  %tcp_ptr__57 = alloca i64, align 8
  %tmp58 = alloca ptr, align 8
  %__vpp_verify63 = alloca ptr, align 8
  %tmp66 = alloca ptr, align 8
  %tcp_ptr__67 = alloca i64, align 8
  %tmp68 = alloca ptr, align 8
  %__vpp_verify72 = alloca ptr, align 8
  %tmp75 = alloca ptr, align 8
  %tcp_ptr__76 = alloca i64, align 8
  %tmp77 = alloca ptr, align 8
  %__vpp_verify81 = alloca ptr, align 8
  %tmp84 = alloca ptr, align 8
  %tcp_ptr__85 = alloca i64, align 8
  %tmp86 = alloca ptr, align 8
  store i32 %bank, ptr %bank.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bank.addr, metadata !855, metadata !DIExpression()), !dbg !908
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %val, metadata !856, metadata !DIExpression()), !dbg !910
  %0 = load i32, ptr %bank.addr, align 4, !dbg !911
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !911
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !911

land.lhs.true:                                    ; preds = %entry
  br label %do.body, !dbg !912

do.body:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !913
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !857, metadata !DIExpression()), !dbg !913
  store ptr null, ptr %__vpp_verify, align 8, !dbg !913
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !913
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !912
  br label %do.cond, !dbg !913

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !913

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !914
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !861, metadata !DIExpression()), !dbg !914
  %3 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_banks_owned) #12, !dbg !914, !srcloc !915
  store i64 %3, ptr %tcp_ptr__, align 8, !dbg !914
  %4 = load i64, ptr %tcp_ptr__, align 8, !dbg !914
  %5 = inttoptr i64 %4 to ptr, !dbg !914
  store ptr %5, ptr %tmp1, align 8, !dbg !914
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !912
  %6 = load ptr, ptr %tmp1, align 8, !dbg !914
  store ptr %6, ptr %tmp, align 8, !dbg !913
  %7 = load ptr, ptr %tmp, align 8, !dbg !912
  %8 = ptrtoint ptr %7 to i64, !dbg !911
  %cmp = icmp ne i64 %8, 0, !dbg !911
  %conv = zext i1 %cmp to i32, !dbg !911
  %9 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !911
  br i1 %9, label %land.lhs.true2, label %cond.false, !dbg !911

land.lhs.true2:                                   ; preds = %do.end
  br label %do.body3, !dbg !916

do.body3:                                         ; preds = %land.lhs.true2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify4) #11, !dbg !917
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify4, metadata !863, metadata !DIExpression()), !dbg !917
  store ptr null, ptr %__vpp_verify4, align 8, !dbg !917
  %10 = load ptr, ptr %__vpp_verify4, align 8, !dbg !917
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify4) #11, !dbg !916
  br label %do.cond5, !dbg !917

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !917

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__8) #11, !dbg !918
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__8, metadata !866, metadata !DIExpression()), !dbg !918
  %11 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_banks_owned) #12, !dbg !918, !srcloc !919
  store i64 %11, ptr %tcp_ptr__8, align 8, !dbg !918
  %12 = load i64, ptr %tcp_ptr__8, align 8, !dbg !918
  %13 = inttoptr i64 %12 to ptr, !dbg !918
  store ptr %13, ptr %tmp9, align 8, !dbg !918
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__8) #11, !dbg !916
  %14 = load ptr, ptr %tmp9, align 8, !dbg !918
  store ptr %14, ptr %tmp7, align 8, !dbg !917
  %15 = load ptr, ptr %tmp7, align 8, !dbg !916
  %16 = ptrtoint ptr %15 to i64, !dbg !911
  %cmp10 = icmp ne i64 %16, 0, !dbg !911
  br i1 %cmp10, label %land.lhs.true12, label %cond.false, !dbg !911

land.lhs.true12:                                  ; preds = %do.end6
  br label %do.body13, !dbg !920

do.body13:                                        ; preds = %land.lhs.true12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify14) #11, !dbg !921
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify14, metadata !868, metadata !DIExpression()), !dbg !921
  store ptr null, ptr %__vpp_verify14, align 8, !dbg !921
  %17 = load ptr, ptr %__vpp_verify14, align 8, !dbg !921
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify14) #11, !dbg !920
  br label %do.cond15, !dbg !921

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !921

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__18) #11, !dbg !922
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__18, metadata !871, metadata !DIExpression()), !dbg !922
  %18 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_banks_owned) #12, !dbg !922, !srcloc !923
  store i64 %18, ptr %tcp_ptr__18, align 8, !dbg !922
  %19 = load i64, ptr %tcp_ptr__18, align 8, !dbg !922
  %20 = inttoptr i64 %19 to ptr, !dbg !922
  store ptr %20, ptr %tmp19, align 8, !dbg !922
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__18) #11, !dbg !920
  %21 = load ptr, ptr %tmp19, align 8, !dbg !922
  store ptr %21, ptr %tmp17, align 8, !dbg !921
  %22 = load ptr, ptr %tmp17, align 8, !dbg !920
  %23 = load i64, ptr %22, align 8, !dbg !911
  %24 = call i1 @llvm.is.constant.i64(i64 %23), !dbg !911
  br i1 %24, label %cond.true, label %cond.false, !dbg !924

cond.true:                                        ; preds = %do.end16
  %25 = load i32, ptr %bank.addr, align 4, !dbg !911
  %conv20 = sext i32 %25 to i64, !dbg !911
  br label %do.body21, !dbg !925

do.body21:                                        ; preds = %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify22) #11, !dbg !926
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify22, metadata !873, metadata !DIExpression()), !dbg !926
  store ptr null, ptr %__vpp_verify22, align 8, !dbg !926
  %26 = load ptr, ptr %__vpp_verify22, align 8, !dbg !926
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify22) #11, !dbg !925
  br label %do.cond23, !dbg !926

do.cond23:                                        ; preds = %do.body21
  br label %do.end24, !dbg !926

do.end24:                                         ; preds = %do.cond23
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__26) #11, !dbg !927
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__26, metadata !876, metadata !DIExpression()), !dbg !927
  %27 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_banks_owned) #12, !dbg !927, !srcloc !928
  store i64 %27, ptr %tcp_ptr__26, align 8, !dbg !927
  %28 = load i64, ptr %tcp_ptr__26, align 8, !dbg !927
  %29 = inttoptr i64 %28 to ptr, !dbg !927
  store ptr %29, ptr %tmp27, align 8, !dbg !927
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__26) #11, !dbg !925
  %30 = load ptr, ptr %tmp27, align 8, !dbg !927
  store ptr %30, ptr %tmp25, align 8, !dbg !926
  %31 = load ptr, ptr %tmp25, align 8, !dbg !925
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv20, ptr noundef %31) #10, !dbg !911
  br i1 %call, label %if.end, label %if.then, !dbg !911

cond.false:                                       ; preds = %do.end16, %do.end6, %do.end, %entry
  %32 = load i32, ptr %bank.addr, align 4, !dbg !911
  %conv29 = sext i32 %32 to i64, !dbg !911
  br label %do.body30, !dbg !929

do.body30:                                        ; preds = %cond.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify31) #11, !dbg !930
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify31, metadata !878, metadata !DIExpression()), !dbg !930
  store ptr null, ptr %__vpp_verify31, align 8, !dbg !930
  %33 = load ptr, ptr %__vpp_verify31, align 8, !dbg !930
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify31) #11, !dbg !929
  br label %do.cond32, !dbg !930

do.cond32:                                        ; preds = %do.body30
  br label %do.end33, !dbg !930

do.end33:                                         ; preds = %do.cond32
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__35) #11, !dbg !931
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__35, metadata !881, metadata !DIExpression()), !dbg !931
  %34 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_banks_owned) #12, !dbg !931, !srcloc !932
  store i64 %34, ptr %tcp_ptr__35, align 8, !dbg !931
  %35 = load i64, ptr %tcp_ptr__35, align 8, !dbg !931
  %36 = inttoptr i64 %35 to ptr, !dbg !931
  store ptr %36, ptr %tmp36, align 8, !dbg !931
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__35) #11, !dbg !929
  %37 = load ptr, ptr %tmp36, align 8, !dbg !931
  store ptr %37, ptr %tmp34, align 8, !dbg !930
  %38 = load ptr, ptr %tmp34, align 8, !dbg !929
  %call37 = call zeroext i1 @_test_bit(i64 noundef %conv29, ptr noundef %38) #10, !dbg !911
  br i1 %call37, label %if.end, label %if.then, !dbg !924

if.then:                                          ; preds = %do.end33, %do.end24
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !933

if.end:                                           ; preds = %do.end33, %do.end24
  %39 = load i32, ptr %bank.addr, align 4, !dbg !934
  %add = add i32 640, %39, !dbg !934
  %call39 = call i64 @native_read_msr(i32 noundef %add) #10, !dbg !934
  store i64 %call39, ptr %val, align 8, !dbg !934
  %40 = load i64, ptr %val, align 8, !dbg !935
  %and = and i64 %40, -1073741825, !dbg !935
  store i64 %and, ptr %val, align 8, !dbg !935
  %41 = load i32, ptr %bank.addr, align 4, !dbg !936
  %add40 = add i32 640, %41, !dbg !936
  %42 = load i64, ptr %val, align 8, !dbg !937
  call void @wrmsrl(i32 noundef %add40, i64 noundef %42) #10, !dbg !938
  %43 = load i32, ptr %bank.addr, align 4, !dbg !939
  %44 = call i1 @llvm.is.constant.i32(i32 %43), !dbg !939
  br i1 %44, label %land.lhs.true41, label %cond.false78, !dbg !939

land.lhs.true41:                                  ; preds = %if.end
  br label %do.body42, !dbg !940

do.body42:                                        ; preds = %land.lhs.true41
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify43) #11, !dbg !941
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify43, metadata !883, metadata !DIExpression()), !dbg !941
  store ptr null, ptr %__vpp_verify43, align 8, !dbg !941
  %45 = load ptr, ptr %__vpp_verify43, align 8, !dbg !941
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify43) #11, !dbg !940
  br label %do.cond44, !dbg !941

do.cond44:                                        ; preds = %do.body42
  br label %do.end45, !dbg !941

do.end45:                                         ; preds = %do.cond44
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__47) #11, !dbg !942
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__47, metadata !886, metadata !DIExpression()), !dbg !942
  %46 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_banks_owned) #12, !dbg !942, !srcloc !943
  store i64 %46, ptr %tcp_ptr__47, align 8, !dbg !942
  %47 = load i64, ptr %tcp_ptr__47, align 8, !dbg !942
  %48 = inttoptr i64 %47 to ptr, !dbg !942
  store ptr %48, ptr %tmp48, align 8, !dbg !942
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__47) #11, !dbg !940
  %49 = load ptr, ptr %tmp48, align 8, !dbg !942
  store ptr %49, ptr %tmp46, align 8, !dbg !941
  %50 = load ptr, ptr %tmp46, align 8, !dbg !940
  %51 = ptrtoint ptr %50 to i64, !dbg !939
  %cmp49 = icmp ne i64 %51, 0, !dbg !939
  %conv50 = zext i1 %cmp49 to i32, !dbg !939
  %52 = call i1 @llvm.is.constant.i32(i32 %conv50), !dbg !939
  br i1 %52, label %land.lhs.true51, label %cond.false78, !dbg !939

land.lhs.true51:                                  ; preds = %do.end45
  br label %do.body52, !dbg !944

do.body52:                                        ; preds = %land.lhs.true51
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify53) #11, !dbg !945
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify53, metadata !888, metadata !DIExpression()), !dbg !945
  store ptr null, ptr %__vpp_verify53, align 8, !dbg !945
  %53 = load ptr, ptr %__vpp_verify53, align 8, !dbg !945
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify53) #11, !dbg !944
  br label %do.cond54, !dbg !945

do.cond54:                                        ; preds = %do.body52
  br label %do.end55, !dbg !945

do.end55:                                         ; preds = %do.cond54
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__57) #11, !dbg !946
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__57, metadata !891, metadata !DIExpression()), !dbg !946
  %54 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_banks_owned) #12, !dbg !946, !srcloc !947
  store i64 %54, ptr %tcp_ptr__57, align 8, !dbg !946
  %55 = load i64, ptr %tcp_ptr__57, align 8, !dbg !946
  %56 = inttoptr i64 %55 to ptr, !dbg !946
  store ptr %56, ptr %tmp58, align 8, !dbg !946
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__57) #11, !dbg !944
  %57 = load ptr, ptr %tmp58, align 8, !dbg !946
  store ptr %57, ptr %tmp56, align 8, !dbg !945
  %58 = load ptr, ptr %tmp56, align 8, !dbg !944
  %59 = ptrtoint ptr %58 to i64, !dbg !939
  %cmp59 = icmp ne i64 %59, 0, !dbg !939
  br i1 %cmp59, label %land.lhs.true61, label %cond.false78, !dbg !939

land.lhs.true61:                                  ; preds = %do.end55
  br label %do.body62, !dbg !948

do.body62:                                        ; preds = %land.lhs.true61
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify63) #11, !dbg !949
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify63, metadata !893, metadata !DIExpression()), !dbg !949
  store ptr null, ptr %__vpp_verify63, align 8, !dbg !949
  %60 = load ptr, ptr %__vpp_verify63, align 8, !dbg !949
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify63) #11, !dbg !948
  br label %do.cond64, !dbg !949

do.cond64:                                        ; preds = %do.body62
  br label %do.end65, !dbg !949

do.end65:                                         ; preds = %do.cond64
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__67) #11, !dbg !950
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__67, metadata !896, metadata !DIExpression()), !dbg !950
  %61 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_banks_owned) #12, !dbg !950, !srcloc !951
  store i64 %61, ptr %tcp_ptr__67, align 8, !dbg !950
  %62 = load i64, ptr %tcp_ptr__67, align 8, !dbg !950
  %63 = inttoptr i64 %62 to ptr, !dbg !950
  store ptr %63, ptr %tmp68, align 8, !dbg !950
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__67) #11, !dbg !948
  %64 = load ptr, ptr %tmp68, align 8, !dbg !950
  store ptr %64, ptr %tmp66, align 8, !dbg !949
  %65 = load ptr, ptr %tmp66, align 8, !dbg !948
  %66 = load i64, ptr %65, align 8, !dbg !939
  %67 = call i1 @llvm.is.constant.i64(i64 %66), !dbg !939
  br i1 %67, label %cond.true69, label %cond.false78, !dbg !939

cond.true69:                                      ; preds = %do.end65
  %68 = load i32, ptr %bank.addr, align 4, !dbg !939
  %conv70 = sext i32 %68 to i64, !dbg !939
  br label %do.body71, !dbg !952

do.body71:                                        ; preds = %cond.true69
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify72) #11, !dbg !953
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify72, metadata !898, metadata !DIExpression()), !dbg !953
  store ptr null, ptr %__vpp_verify72, align 8, !dbg !953
  %69 = load ptr, ptr %__vpp_verify72, align 8, !dbg !953
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify72) #11, !dbg !952
  br label %do.cond73, !dbg !953

do.cond73:                                        ; preds = %do.body71
  br label %do.end74, !dbg !953

do.end74:                                         ; preds = %do.cond73
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__76) #11, !dbg !954
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__76, metadata !901, metadata !DIExpression()), !dbg !954
  %70 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_banks_owned) #12, !dbg !954, !srcloc !955
  store i64 %70, ptr %tcp_ptr__76, align 8, !dbg !954
  %71 = load i64, ptr %tcp_ptr__76, align 8, !dbg !954
  %72 = inttoptr i64 %71 to ptr, !dbg !954
  store ptr %72, ptr %tmp77, align 8, !dbg !954
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__76) #11, !dbg !952
  %73 = load ptr, ptr %tmp77, align 8, !dbg !954
  store ptr %73, ptr %tmp75, align 8, !dbg !953
  %74 = load ptr, ptr %tmp75, align 8, !dbg !952
  call void @generic___clear_bit(i64 noundef %conv70, ptr noundef %74) #10, !dbg !939
  br label %cond.end, !dbg !939

cond.false78:                                     ; preds = %do.end65, %do.end55, %do.end45, %if.end
  %75 = load i32, ptr %bank.addr, align 4, !dbg !939
  %conv79 = sext i32 %75 to i64, !dbg !939
  br label %do.body80, !dbg !956

do.body80:                                        ; preds = %cond.false78
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify81) #11, !dbg !957
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify81, metadata !903, metadata !DIExpression()), !dbg !957
  store ptr null, ptr %__vpp_verify81, align 8, !dbg !957
  %76 = load ptr, ptr %__vpp_verify81, align 8, !dbg !957
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify81) #11, !dbg !956
  br label %do.cond82, !dbg !957

do.cond82:                                        ; preds = %do.body80
  br label %do.end83, !dbg !957

do.end83:                                         ; preds = %do.cond82
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__85) #11, !dbg !958
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__85, metadata !906, metadata !DIExpression()), !dbg !958
  %77 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_banks_owned) #12, !dbg !958, !srcloc !959
  store i64 %77, ptr %tcp_ptr__85, align 8, !dbg !958
  %78 = load i64, ptr %tcp_ptr__85, align 8, !dbg !958
  %79 = inttoptr i64 %78 to ptr, !dbg !958
  store ptr %79, ptr %tmp86, align 8, !dbg !958
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__85) #11, !dbg !956
  %80 = load ptr, ptr %tmp86, align 8, !dbg !958
  store ptr %80, ptr %tmp84, align 8, !dbg !957
  %81 = load ptr, ptr %tmp84, align 8, !dbg !956
  call void @___clear_bit(i64 noundef %conv79, ptr noundef %81) #10, !dbg !939
  br label %cond.end, !dbg !939

cond.end:                                         ; preds = %do.end83, %do.end74
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !960
  br label %cleanup, !dbg !960

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !960
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !960

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !961 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cmci_rediscover() #0 align 16 !dbg !964 {
entry:
  %banks = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %banks) #11, !dbg !967
  call void @llvm.dbg.declare(metadata ptr %banks, metadata !966, metadata !DIExpression()), !dbg !968
  %call = call i32 @cmci_supported(ptr noundef %banks) #10, !dbg !969
  %tobool = icmp ne i32 %call, 0, !dbg !969
  br i1 %tobool, label %if.end, label %if.then, !dbg !971

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !972

if.end:                                           ; preds = %entry
  call void @on_each_cpu(ptr noundef @cmci_rediscover_work_func, ptr noundef null, i32 noundef 1) #10, !dbg !973
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !974
  br label %cleanup, !dbg !974

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %banks) #11, !dbg !974
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !974

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @on_each_cpu(ptr noundef %func, ptr noundef %info, i32 noundef %wait) #6 align 16 !dbg !975 {
entry:
  %func.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %wait.addr = alloca i32, align 4
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !984, metadata !DIExpression()), !dbg !987
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !985, metadata !DIExpression()), !dbg !988
  store i32 %wait, ptr %wait.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !986, metadata !DIExpression()), !dbg !989
  %0 = load ptr, ptr %func.addr, align 8, !dbg !990
  %1 = load ptr, ptr %info.addr, align 8, !dbg !991
  %2 = load i32, ptr %wait.addr, align 4, !dbg !992
  %tobool = icmp ne i32 %2, 0, !dbg !992
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef %0, ptr noundef %1, i1 noundef zeroext %tobool, ptr noundef @__cpu_online_mask) #10, !dbg !993
  ret void, !dbg !994
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cmci_rediscover_work_func(ptr noundef %arg) #0 align 16 !dbg !995 {
entry:
  %arg.addr = alloca ptr, align 8
  %banks = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !997, metadata !DIExpression()), !dbg !999
  call void @llvm.lifetime.start.p0(i64 4, ptr %banks) #11, !dbg !1000
  call void @llvm.dbg.declare(metadata ptr %banks, metadata !998, metadata !DIExpression()), !dbg !1001
  %call = call i32 @cmci_supported(ptr noundef %banks) #10, !dbg !1002
  %tobool = icmp ne i32 %call, 0, !dbg !1002
  br i1 %tobool, label %if.then, label %if.end, !dbg !1004

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %banks, align 4, !dbg !1005
  call void @cmci_discover(i32 noundef %0) #10, !dbg !1006
  br label %if.end, !dbg !1006

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %banks) #11, !dbg !1007
  ret void, !dbg !1007
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cmci_reenable() #0 align 16 !dbg !1008 {
entry:
  %banks = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %banks) #11, !dbg !1011
  call void @llvm.dbg.declare(metadata ptr %banks, metadata !1010, metadata !DIExpression()), !dbg !1012
  %call = call i32 @cmci_supported(ptr noundef %banks) #10, !dbg !1013
  %tobool = icmp ne i32 %call, 0, !dbg !1013
  br i1 %tobool, label %if.then, label %if.end, !dbg !1015

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %banks, align 4, !dbg !1016
  call void @cmci_discover(i32 noundef %0) #10, !dbg !1017
  br label %if.end, !dbg !1017

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %banks) #11, !dbg !1018
  ret void, !dbg !1018
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cmci_discover(i32 noundef %banks) #0 align 16 !dbg !191 {
entry:
  %banks.addr = alloca i32, align 4
  %owned = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %flags = alloca i64, align 8
  %i = alloca i32, align 4
  %bios_wrong_thresh = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %val = alloca i64, align 8
  %bios_zero_thresh = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify40 = alloca ptr, align 8
  %tmp43 = alloca ptr, align 8
  %tcp_ptr__44 = alloca i64, align 8
  %tmp45 = alloca ptr, align 8
  %__vpp_verify50 = alloca ptr, align 8
  %tmp53 = alloca ptr, align 8
  %tcp_ptr__54 = alloca i64, align 8
  %tmp55 = alloca ptr, align 8
  %__vpp_verify60 = alloca ptr, align 8
  %tmp63 = alloca ptr, align 8
  %tcp_ptr__64 = alloca i64, align 8
  %tmp65 = alloca ptr, align 8
  %__vpp_verify69 = alloca ptr, align 8
  %tmp72 = alloca ptr, align 8
  %tcp_ptr__73 = alloca i64, align 8
  %tmp74 = alloca ptr, align 8
  %__vpp_verify78 = alloca ptr, align 8
  %tmp81 = alloca ptr, align 8
  %tcp_ptr__82 = alloca i64, align 8
  %tmp83 = alloca ptr, align 8
  %__vpp_verify104 = alloca ptr, align 8
  %tmp107 = alloca ptr, align 8
  %tcp_ptr__108 = alloca i64, align 8
  %tmp109 = alloca ptr, align 8
  %__vpp_verify114 = alloca ptr, align 8
  %tmp117 = alloca ptr, align 8
  %tcp_ptr__118 = alloca i64, align 8
  %tmp119 = alloca ptr, align 8
  %__vpp_verify124 = alloca ptr, align 8
  %tmp127 = alloca ptr, align 8
  %tcp_ptr__128 = alloca i64, align 8
  %tmp129 = alloca ptr, align 8
  %__vpp_verify133 = alloca ptr, align 8
  %tmp136 = alloca ptr, align 8
  %tcp_ptr__137 = alloca i64, align 8
  %tmp138 = alloca ptr, align 8
  %__vpp_verify142 = alloca ptr, align 8
  %tmp145 = alloca ptr, align 8
  %tcp_ptr__146 = alloca i64, align 8
  %tmp147 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__vpp_verify164 = alloca ptr, align 8
  %tmp167 = alloca ptr, align 8
  %tcp_ptr__168 = alloca i64, align 8
  %tmp169 = alloca ptr, align 8
  %__vpp_verify174 = alloca ptr, align 8
  %tmp177 = alloca ptr, align 8
  %tcp_ptr__178 = alloca i64, align 8
  %tmp179 = alloca ptr, align 8
  %__vpp_verify184 = alloca ptr, align 8
  %tmp187 = alloca ptr, align 8
  %tcp_ptr__188 = alloca i64, align 8
  %tmp189 = alloca ptr, align 8
  %__vpp_verify193 = alloca ptr, align 8
  %tmp196 = alloca ptr, align 8
  %tcp_ptr__197 = alloca i64, align 8
  %tmp198 = alloca ptr, align 8
  %__vpp_verify204 = alloca ptr, align 8
  %tmp207 = alloca ptr, align 8
  %tcp_ptr__208 = alloca i64, align 8
  %tmp209 = alloca ptr, align 8
  %__flags = alloca i32, align 4
  %tmp237 = alloca i64, align 8
  %__dummy248 = alloca i64, align 8
  %__dummy2249 = alloca i64, align 8
  %tmp252 = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp282 = alloca i64, align 8
  %tmp295 = alloca i32, align 4
  %tmp298 = alloca i64, align 8
  %__ret_do_once306 = alloca i8, align 1
  %__ret_cond307 = alloca i8, align 1
  %__ret_once314 = alloca i8, align 1
  %tmp331 = alloca i64, align 8
  %tmp344 = alloca i32, align 4
  %tmp347 = alloca i64, align 8
  store i32 %banks, ptr %banks.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %banks.addr, metadata !195, metadata !DIExpression()), !dbg !1019
  call void @llvm.lifetime.start.p0(i64 8, ptr %owned) #11, !dbg !1020
  call void @llvm.dbg.declare(metadata ptr %owned, metadata !196, metadata !DIExpression()), !dbg !1021
  br label %do.body, !dbg !1022

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !1023
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !197, metadata !DIExpression()), !dbg !1023
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1023
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1023
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !1022
  br label %do.cond, !dbg !1023

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1023

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !202, metadata !DIExpression()), !dbg !1024
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_banks_owned) #12, !dbg !1024, !srcloc !1025
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !1024
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !1024
  %3 = inttoptr i64 %2 to ptr, !dbg !1024
  store ptr %3, ptr %tmp1, align 8, !dbg !1024
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !1022
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1024
  store ptr %4, ptr %tmp, align 8, !dbg !1023
  %5 = load ptr, ptr %tmp, align 8, !dbg !1022
  store ptr %5, ptr %owned, align 8, !dbg !1021
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !1026
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !204, metadata !DIExpression()), !dbg !1027
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !1028
  call void @llvm.dbg.declare(metadata ptr %i, metadata !205, metadata !DIExpression()), !dbg !1029
  call void @llvm.lifetime.start.p0(i64 4, ptr %bios_wrong_thresh) #11, !dbg !1030
  call void @llvm.dbg.declare(metadata ptr %bios_wrong_thresh, metadata !206, metadata !DIExpression()), !dbg !1031
  store i32 0, ptr %bios_wrong_thresh, align 4, !dbg !1031
  br label %do.body2, !dbg !1032

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !1033
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !207, metadata !DIExpression()), !dbg !1033
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !1033
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !210, metadata !DIExpression()), !dbg !1033
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1033
  %conv = zext i1 %cmp to i32, !dbg !1033
  store i32 1, ptr %tmp3, align 4, !dbg !1033
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !1034
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !1034
  %6 = load i32, ptr %tmp3, align 4, !dbg !1033
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef @cmci_discover_lock) #10, !dbg !1034
  store i64 %call, ptr %flags, align 8, !dbg !1034
  br label %do.cond4, !dbg !1034

do.cond4:                                         ; preds = %do.body2
  br label %do.end5, !dbg !1034

do.end5:                                          ; preds = %do.cond4
  store i32 0, ptr %i, align 4, !dbg !1035
  br label %for.cond, !dbg !1036

for.cond:                                         ; preds = %for.inc, %do.end5
  %7 = load i32, ptr %i, align 4, !dbg !1037
  %8 = load i32, ptr %banks.addr, align 4, !dbg !1038
  %cmp6 = icmp slt i32 %7, %8, !dbg !1039
  br i1 %cmp6, label %for.body, label %for.end, !dbg !1040

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !1041
  call void @llvm.dbg.declare(metadata ptr %val, metadata !211, metadata !DIExpression()), !dbg !1042
  call void @llvm.lifetime.start.p0(i64 4, ptr %bios_zero_thresh) #11, !dbg !1043
  call void @llvm.dbg.declare(metadata ptr %bios_zero_thresh, metadata !215, metadata !DIExpression()), !dbg !1044
  store i32 0, ptr %bios_zero_thresh, align 4, !dbg !1044
  %9 = load i32, ptr %i, align 4, !dbg !1045
  %10 = call i1 @llvm.is.constant.i32(i32 %9), !dbg !1045
  br i1 %10, label %land.lhs.true, label %cond.false, !dbg !1045

land.lhs.true:                                    ; preds = %for.body
  %11 = load ptr, ptr %owned, align 8, !dbg !1045
  %12 = ptrtoint ptr %11 to i64, !dbg !1045
  %cmp8 = icmp ne i64 %12, 0, !dbg !1045
  %conv9 = zext i1 %cmp8 to i32, !dbg !1045
  %13 = call i1 @llvm.is.constant.i32(i32 %conv9), !dbg !1045
  br i1 %13, label %land.lhs.true10, label %cond.false, !dbg !1045

land.lhs.true10:                                  ; preds = %land.lhs.true
  %14 = load ptr, ptr %owned, align 8, !dbg !1045
  %15 = ptrtoint ptr %14 to i64, !dbg !1045
  %cmp11 = icmp ne i64 %15, 0, !dbg !1045
  br i1 %cmp11, label %land.lhs.true13, label %cond.false, !dbg !1045

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %16 = load ptr, ptr %owned, align 8, !dbg !1045
  %17 = load i64, ptr %16, align 8, !dbg !1045
  %18 = call i1 @llvm.is.constant.i64(i64 %17), !dbg !1045
  br i1 %18, label %cond.true, label %cond.false, !dbg !1047

cond.true:                                        ; preds = %land.lhs.true13
  %19 = load i32, ptr %i, align 4, !dbg !1045
  %conv14 = sext i32 %19 to i64, !dbg !1045
  %20 = load ptr, ptr %owned, align 8, !dbg !1045
  %call15 = call zeroext i1 @const_test_bit(i64 noundef %conv14, ptr noundef %20) #10, !dbg !1045
  br i1 %call15, label %if.then, label %if.end, !dbg !1045

cond.false:                                       ; preds = %land.lhs.true13, %land.lhs.true10, %land.lhs.true, %for.body
  %21 = load i32, ptr %i, align 4, !dbg !1045
  %conv17 = sext i32 %21 to i64, !dbg !1045
  %22 = load ptr, ptr %owned, align 8, !dbg !1045
  %call18 = call zeroext i1 @_test_bit(i64 noundef %conv17, ptr noundef %22) #10, !dbg !1045
  br i1 %call18, label %if.then, label %if.end, !dbg !1047

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1048

if.end:                                           ; preds = %cond.false, %cond.true
  %23 = load i32, ptr %i, align 4, !dbg !1049
  %24 = call i1 @llvm.is.constant.i32(i32 %23), !dbg !1049
  br i1 %24, label %land.lhs.true20, label %cond.false29, !dbg !1049

land.lhs.true20:                                  ; preds = %if.end
  %conv21 = zext i1 icmp ne (i64 ptrtoint (ptr @mce_banks_ce_disabled to i64), i64 0) to i32, !dbg !1049
  %25 = call i1 @llvm.is.constant.i32(i32 %conv21), !dbg !1049
  br i1 %25, label %land.lhs.true22, label %cond.false29, !dbg !1049

land.lhs.true22:                                  ; preds = %land.lhs.true20
  br i1 icmp ne (i64 ptrtoint (ptr @mce_banks_ce_disabled to i64), i64 0), label %land.lhs.true24, label %cond.false29, !dbg !1049

land.lhs.true24:                                  ; preds = %land.lhs.true22
  %26 = load i64, ptr @mce_banks_ce_disabled, align 8, !dbg !1049
  %27 = call i1 @llvm.is.constant.i64(i64 %26), !dbg !1049
  br i1 %27, label %cond.true25, label %cond.false29, !dbg !1051

cond.true25:                                      ; preds = %land.lhs.true24
  %28 = load i32, ptr %i, align 4, !dbg !1049
  %conv26 = sext i32 %28 to i64, !dbg !1049
  %call27 = call zeroext i1 @const_test_bit(i64 noundef %conv26, ptr noundef @mce_banks_ce_disabled) #10, !dbg !1049
  br i1 %call27, label %if.then33, label %if.end34, !dbg !1049

cond.false29:                                     ; preds = %land.lhs.true24, %land.lhs.true22, %land.lhs.true20, %if.end
  %29 = load i32, ptr %i, align 4, !dbg !1049
  %conv30 = sext i32 %29 to i64, !dbg !1049
  %call31 = call zeroext i1 @_test_bit(i64 noundef %conv30, ptr noundef @mce_banks_ce_disabled) #10, !dbg !1049
  br i1 %call31, label %if.then33, label %if.end34, !dbg !1051

if.then33:                                        ; preds = %cond.false29, %cond.true25
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1052

if.end34:                                         ; preds = %cond.false29, %cond.true25
  %30 = load i32, ptr %i, align 4, !dbg !1053
  %add = add i32 640, %30, !dbg !1053
  %call35 = call i64 @native_read_msr(i32 noundef %add) #10, !dbg !1053
  store i64 %call35, ptr %val, align 8, !dbg !1053
  %31 = load i64, ptr %val, align 8, !dbg !1054
  %and = and i64 %31, 1073741824, !dbg !1055
  %tobool = icmp ne i64 %and, 0, !dbg !1055
  br i1 %tobool, label %if.then36, label %if.end84, !dbg !1056

if.then36:                                        ; preds = %if.end34
  %32 = load i32, ptr %i, align 4, !dbg !1057
  %conv37 = sext i32 %32 to i64, !dbg !1057
  %33 = load ptr, ptr %owned, align 8, !dbg !1058
  call void @clear_bit(i64 noundef %conv37, ptr noundef %33) #10, !dbg !1059
  %34 = load i32, ptr %i, align 4, !dbg !1060
  %35 = call i1 @llvm.is.constant.i32(i32 %34), !dbg !1060
  br i1 %35, label %land.lhs.true38, label %cond.false75, !dbg !1060

land.lhs.true38:                                  ; preds = %if.then36
  br label %do.body39, !dbg !1061

do.body39:                                        ; preds = %land.lhs.true38
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify40) #11, !dbg !1062
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify40, metadata !216, metadata !DIExpression()), !dbg !1062
  store ptr null, ptr %__vpp_verify40, align 8, !dbg !1062
  %36 = load ptr, ptr %__vpp_verify40, align 8, !dbg !1062
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify40) #11, !dbg !1061
  br label %do.cond41, !dbg !1062

do.cond41:                                        ; preds = %do.body39
  br label %do.end42, !dbg !1062

do.end42:                                         ; preds = %do.cond41
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__44) #11, !dbg !1063
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__44, metadata !221, metadata !DIExpression()), !dbg !1063
  %37 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_poll_banks) #12, !dbg !1063, !srcloc !1064
  store i64 %37, ptr %tcp_ptr__44, align 8, !dbg !1063
  %38 = load i64, ptr %tcp_ptr__44, align 8, !dbg !1063
  %39 = inttoptr i64 %38 to ptr, !dbg !1063
  store ptr %39, ptr %tmp45, align 8, !dbg !1063
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__44) #11, !dbg !1061
  %40 = load ptr, ptr %tmp45, align 8, !dbg !1063
  store ptr %40, ptr %tmp43, align 8, !dbg !1062
  %41 = load ptr, ptr %tmp43, align 8, !dbg !1061
  %42 = ptrtoint ptr %41 to i64, !dbg !1060
  %cmp46 = icmp ne i64 %42, 0, !dbg !1060
  %conv47 = zext i1 %cmp46 to i32, !dbg !1060
  %43 = call i1 @llvm.is.constant.i32(i32 %conv47), !dbg !1060
  br i1 %43, label %land.lhs.true48, label %cond.false75, !dbg !1060

land.lhs.true48:                                  ; preds = %do.end42
  br label %do.body49, !dbg !1065

do.body49:                                        ; preds = %land.lhs.true48
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify50) #11, !dbg !1066
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify50, metadata !223, metadata !DIExpression()), !dbg !1066
  store ptr null, ptr %__vpp_verify50, align 8, !dbg !1066
  %44 = load ptr, ptr %__vpp_verify50, align 8, !dbg !1066
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify50) #11, !dbg !1065
  br label %do.cond51, !dbg !1066

do.cond51:                                        ; preds = %do.body49
  br label %do.end52, !dbg !1066

do.end52:                                         ; preds = %do.cond51
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__54) #11, !dbg !1067
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__54, metadata !226, metadata !DIExpression()), !dbg !1067
  %45 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_poll_banks) #12, !dbg !1067, !srcloc !1068
  store i64 %45, ptr %tcp_ptr__54, align 8, !dbg !1067
  %46 = load i64, ptr %tcp_ptr__54, align 8, !dbg !1067
  %47 = inttoptr i64 %46 to ptr, !dbg !1067
  store ptr %47, ptr %tmp55, align 8, !dbg !1067
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__54) #11, !dbg !1065
  %48 = load ptr, ptr %tmp55, align 8, !dbg !1067
  store ptr %48, ptr %tmp53, align 8, !dbg !1066
  %49 = load ptr, ptr %tmp53, align 8, !dbg !1065
  %50 = ptrtoint ptr %49 to i64, !dbg !1060
  %cmp56 = icmp ne i64 %50, 0, !dbg !1060
  br i1 %cmp56, label %land.lhs.true58, label %cond.false75, !dbg !1060

land.lhs.true58:                                  ; preds = %do.end52
  br label %do.body59, !dbg !1069

do.body59:                                        ; preds = %land.lhs.true58
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify60) #11, !dbg !1070
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify60, metadata !228, metadata !DIExpression()), !dbg !1070
  store ptr null, ptr %__vpp_verify60, align 8, !dbg !1070
  %51 = load ptr, ptr %__vpp_verify60, align 8, !dbg !1070
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify60) #11, !dbg !1069
  br label %do.cond61, !dbg !1070

do.cond61:                                        ; preds = %do.body59
  br label %do.end62, !dbg !1070

do.end62:                                         ; preds = %do.cond61
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__64) #11, !dbg !1071
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__64, metadata !231, metadata !DIExpression()), !dbg !1071
  %52 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_poll_banks) #12, !dbg !1071, !srcloc !1072
  store i64 %52, ptr %tcp_ptr__64, align 8, !dbg !1071
  %53 = load i64, ptr %tcp_ptr__64, align 8, !dbg !1071
  %54 = inttoptr i64 %53 to ptr, !dbg !1071
  store ptr %54, ptr %tmp65, align 8, !dbg !1071
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__64) #11, !dbg !1069
  %55 = load ptr, ptr %tmp65, align 8, !dbg !1071
  store ptr %55, ptr %tmp63, align 8, !dbg !1070
  %56 = load ptr, ptr %tmp63, align 8, !dbg !1069
  %57 = load i64, ptr %56, align 8, !dbg !1060
  %58 = call i1 @llvm.is.constant.i64(i64 %57), !dbg !1060
  br i1 %58, label %cond.true66, label %cond.false75, !dbg !1060

cond.true66:                                      ; preds = %do.end62
  %59 = load i32, ptr %i, align 4, !dbg !1060
  %conv67 = sext i32 %59 to i64, !dbg !1060
  br label %do.body68, !dbg !1073

do.body68:                                        ; preds = %cond.true66
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify69) #11, !dbg !1074
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify69, metadata !233, metadata !DIExpression()), !dbg !1074
  store ptr null, ptr %__vpp_verify69, align 8, !dbg !1074
  %60 = load ptr, ptr %__vpp_verify69, align 8, !dbg !1074
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify69) #11, !dbg !1073
  br label %do.cond70, !dbg !1074

do.cond70:                                        ; preds = %do.body68
  br label %do.end71, !dbg !1074

do.end71:                                         ; preds = %do.cond70
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__73) #11, !dbg !1075
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__73, metadata !236, metadata !DIExpression()), !dbg !1075
  %61 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_poll_banks) #12, !dbg !1075, !srcloc !1076
  store i64 %61, ptr %tcp_ptr__73, align 8, !dbg !1075
  %62 = load i64, ptr %tcp_ptr__73, align 8, !dbg !1075
  %63 = inttoptr i64 %62 to ptr, !dbg !1075
  store ptr %63, ptr %tmp74, align 8, !dbg !1075
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__73) #11, !dbg !1073
  %64 = load ptr, ptr %tmp74, align 8, !dbg !1075
  store ptr %64, ptr %tmp72, align 8, !dbg !1074
  %65 = load ptr, ptr %tmp72, align 8, !dbg !1073
  call void @generic___clear_bit(i64 noundef %conv67, ptr noundef %65) #10, !dbg !1060
  br label %cond.end, !dbg !1060

cond.false75:                                     ; preds = %do.end62, %do.end52, %do.end42, %if.then36
  %66 = load i32, ptr %i, align 4, !dbg !1060
  %conv76 = sext i32 %66 to i64, !dbg !1060
  br label %do.body77, !dbg !1077

do.body77:                                        ; preds = %cond.false75
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify78) #11, !dbg !1078
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify78, metadata !238, metadata !DIExpression()), !dbg !1078
  store ptr null, ptr %__vpp_verify78, align 8, !dbg !1078
  %67 = load ptr, ptr %__vpp_verify78, align 8, !dbg !1078
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify78) #11, !dbg !1077
  br label %do.cond79, !dbg !1078

do.cond79:                                        ; preds = %do.body77
  br label %do.end80, !dbg !1078

do.end80:                                         ; preds = %do.cond79
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__82) #11, !dbg !1079
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__82, metadata !241, metadata !DIExpression()), !dbg !1079
  %68 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_poll_banks) #12, !dbg !1079, !srcloc !1080
  store i64 %68, ptr %tcp_ptr__82, align 8, !dbg !1079
  %69 = load i64, ptr %tcp_ptr__82, align 8, !dbg !1079
  %70 = inttoptr i64 %69 to ptr, !dbg !1079
  store ptr %70, ptr %tmp83, align 8, !dbg !1079
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__82) #11, !dbg !1077
  %71 = load ptr, ptr %tmp83, align 8, !dbg !1079
  store ptr %71, ptr %tmp81, align 8, !dbg !1078
  %72 = load ptr, ptr %tmp81, align 8, !dbg !1077
  call void @___clear_bit(i64 noundef %conv76, ptr noundef %72) #10, !dbg !1060
  br label %cond.end, !dbg !1060

cond.end:                                         ; preds = %do.end80, %do.end71
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1081

if.end84:                                         ; preds = %if.end34
  %bf.load = load i64, ptr @mca_cfg, align 8, !dbg !1082
  %bf.lshr = lshr i64 %bf.load, 4, !dbg !1082
  %bf.clear = and i64 %bf.lshr, 1, !dbg !1082
  %tobool85 = icmp ne i64 %bf.clear, 0, !dbg !1084
  br i1 %tobool85, label %if.else, label %if.then86, !dbg !1085

if.then86:                                        ; preds = %if.end84
  %73 = load i64, ptr %val, align 8, !dbg !1086
  %and87 = and i64 %73, -32768, !dbg !1086
  store i64 %and87, ptr %val, align 8, !dbg !1086
  %74 = load i64, ptr %val, align 8, !dbg !1088
  %or = or i64 %74, 1, !dbg !1088
  store i64 %or, ptr %val, align 8, !dbg !1088
  br label %if.end93, !dbg !1089

if.else:                                          ; preds = %if.end84
  %75 = load i64, ptr %val, align 8, !dbg !1090
  %and88 = and i64 %75, 32767, !dbg !1092
  %tobool89 = icmp ne i64 %and88, 0, !dbg !1092
  br i1 %tobool89, label %if.end92, label %if.then90, !dbg !1093

if.then90:                                        ; preds = %if.else
  store i32 1, ptr %bios_zero_thresh, align 4, !dbg !1094
  %76 = load i64, ptr %val, align 8, !dbg !1096
  %or91 = or i64 %76, 1, !dbg !1096
  store i64 %or91, ptr %val, align 8, !dbg !1096
  br label %if.end92, !dbg !1097

if.end92:                                         ; preds = %if.then90, %if.else
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then86
  %77 = load i64, ptr %val, align 8, !dbg !1098
  %or94 = or i64 %77, 1073741824, !dbg !1098
  store i64 %or94, ptr %val, align 8, !dbg !1098
  %78 = load i32, ptr %i, align 4, !dbg !1099
  %add95 = add i32 640, %78, !dbg !1099
  %79 = load i64, ptr %val, align 8, !dbg !1100
  call void @wrmsrl(i32 noundef %add95, i64 noundef %79) #10, !dbg !1101
  %80 = load i32, ptr %i, align 4, !dbg !1102
  %add96 = add i32 640, %80, !dbg !1102
  %call97 = call i64 @native_read_msr(i32 noundef %add96) #10, !dbg !1102
  store i64 %call97, ptr %val, align 8, !dbg !1102
  %81 = load i64, ptr %val, align 8, !dbg !1103
  %and98 = and i64 %81, 1073741824, !dbg !1104
  %tobool99 = icmp ne i64 %and98, 0, !dbg !1104
  br i1 %tobool99, label %if.then100, label %if.else161, !dbg !1105

if.then100:                                       ; preds = %if.end93
  %82 = load i32, ptr %i, align 4, !dbg !1106
  %conv101 = sext i32 %82 to i64, !dbg !1106
  %83 = load ptr, ptr %owned, align 8, !dbg !1107
  call void @set_bit(i64 noundef %conv101, ptr noundef %83) #10, !dbg !1108
  %84 = load i32, ptr %i, align 4, !dbg !1109
  %85 = call i1 @llvm.is.constant.i32(i32 %84), !dbg !1109
  br i1 %85, label %land.lhs.true102, label %cond.false139, !dbg !1109

land.lhs.true102:                                 ; preds = %if.then100
  br label %do.body103, !dbg !1110

do.body103:                                       ; preds = %land.lhs.true102
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify104) #11, !dbg !1111
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify104, metadata !243, metadata !DIExpression()), !dbg !1111
  store ptr null, ptr %__vpp_verify104, align 8, !dbg !1111
  %86 = load ptr, ptr %__vpp_verify104, align 8, !dbg !1111
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify104) #11, !dbg !1110
  br label %do.cond105, !dbg !1111

do.cond105:                                       ; preds = %do.body103
  br label %do.end106, !dbg !1111

do.end106:                                        ; preds = %do.cond105
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__108) #11, !dbg !1112
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__108, metadata !248, metadata !DIExpression()), !dbg !1112
  %87 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_poll_banks) #12, !dbg !1112, !srcloc !1113
  store i64 %87, ptr %tcp_ptr__108, align 8, !dbg !1112
  %88 = load i64, ptr %tcp_ptr__108, align 8, !dbg !1112
  %89 = inttoptr i64 %88 to ptr, !dbg !1112
  store ptr %89, ptr %tmp109, align 8, !dbg !1112
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__108) #11, !dbg !1110
  %90 = load ptr, ptr %tmp109, align 8, !dbg !1112
  store ptr %90, ptr %tmp107, align 8, !dbg !1111
  %91 = load ptr, ptr %tmp107, align 8, !dbg !1110
  %92 = ptrtoint ptr %91 to i64, !dbg !1109
  %cmp110 = icmp ne i64 %92, 0, !dbg !1109
  %conv111 = zext i1 %cmp110 to i32, !dbg !1109
  %93 = call i1 @llvm.is.constant.i32(i32 %conv111), !dbg !1109
  br i1 %93, label %land.lhs.true112, label %cond.false139, !dbg !1109

land.lhs.true112:                                 ; preds = %do.end106
  br label %do.body113, !dbg !1114

do.body113:                                       ; preds = %land.lhs.true112
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify114) #11, !dbg !1115
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify114, metadata !250, metadata !DIExpression()), !dbg !1115
  store ptr null, ptr %__vpp_verify114, align 8, !dbg !1115
  %94 = load ptr, ptr %__vpp_verify114, align 8, !dbg !1115
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify114) #11, !dbg !1114
  br label %do.cond115, !dbg !1115

do.cond115:                                       ; preds = %do.body113
  br label %do.end116, !dbg !1115

do.end116:                                        ; preds = %do.cond115
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__118) #11, !dbg !1116
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__118, metadata !253, metadata !DIExpression()), !dbg !1116
  %95 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_poll_banks) #12, !dbg !1116, !srcloc !1117
  store i64 %95, ptr %tcp_ptr__118, align 8, !dbg !1116
  %96 = load i64, ptr %tcp_ptr__118, align 8, !dbg !1116
  %97 = inttoptr i64 %96 to ptr, !dbg !1116
  store ptr %97, ptr %tmp119, align 8, !dbg !1116
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__118) #11, !dbg !1114
  %98 = load ptr, ptr %tmp119, align 8, !dbg !1116
  store ptr %98, ptr %tmp117, align 8, !dbg !1115
  %99 = load ptr, ptr %tmp117, align 8, !dbg !1114
  %100 = ptrtoint ptr %99 to i64, !dbg !1109
  %cmp120 = icmp ne i64 %100, 0, !dbg !1109
  br i1 %cmp120, label %land.lhs.true122, label %cond.false139, !dbg !1109

land.lhs.true122:                                 ; preds = %do.end116
  br label %do.body123, !dbg !1118

do.body123:                                       ; preds = %land.lhs.true122
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify124) #11, !dbg !1119
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify124, metadata !255, metadata !DIExpression()), !dbg !1119
  store ptr null, ptr %__vpp_verify124, align 8, !dbg !1119
  %101 = load ptr, ptr %__vpp_verify124, align 8, !dbg !1119
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify124) #11, !dbg !1118
  br label %do.cond125, !dbg !1119

do.cond125:                                       ; preds = %do.body123
  br label %do.end126, !dbg !1119

do.end126:                                        ; preds = %do.cond125
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__128) #11, !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__128, metadata !258, metadata !DIExpression()), !dbg !1120
  %102 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_poll_banks) #12, !dbg !1120, !srcloc !1121
  store i64 %102, ptr %tcp_ptr__128, align 8, !dbg !1120
  %103 = load i64, ptr %tcp_ptr__128, align 8, !dbg !1120
  %104 = inttoptr i64 %103 to ptr, !dbg !1120
  store ptr %104, ptr %tmp129, align 8, !dbg !1120
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__128) #11, !dbg !1118
  %105 = load ptr, ptr %tmp129, align 8, !dbg !1120
  store ptr %105, ptr %tmp127, align 8, !dbg !1119
  %106 = load ptr, ptr %tmp127, align 8, !dbg !1118
  %107 = load i64, ptr %106, align 8, !dbg !1109
  %108 = call i1 @llvm.is.constant.i64(i64 %107), !dbg !1109
  br i1 %108, label %cond.true130, label %cond.false139, !dbg !1109

cond.true130:                                     ; preds = %do.end126
  %109 = load i32, ptr %i, align 4, !dbg !1109
  %conv131 = sext i32 %109 to i64, !dbg !1109
  br label %do.body132, !dbg !1122

do.body132:                                       ; preds = %cond.true130
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify133) #11, !dbg !1123
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify133, metadata !260, metadata !DIExpression()), !dbg !1123
  store ptr null, ptr %__vpp_verify133, align 8, !dbg !1123
  %110 = load ptr, ptr %__vpp_verify133, align 8, !dbg !1123
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify133) #11, !dbg !1122
  br label %do.cond134, !dbg !1123

do.cond134:                                       ; preds = %do.body132
  br label %do.end135, !dbg !1123

do.end135:                                        ; preds = %do.cond134
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__137) #11, !dbg !1124
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__137, metadata !263, metadata !DIExpression()), !dbg !1124
  %111 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_poll_banks) #12, !dbg !1124, !srcloc !1125
  store i64 %111, ptr %tcp_ptr__137, align 8, !dbg !1124
  %112 = load i64, ptr %tcp_ptr__137, align 8, !dbg !1124
  %113 = inttoptr i64 %112 to ptr, !dbg !1124
  store ptr %113, ptr %tmp138, align 8, !dbg !1124
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__137) #11, !dbg !1122
  %114 = load ptr, ptr %tmp138, align 8, !dbg !1124
  store ptr %114, ptr %tmp136, align 8, !dbg !1123
  %115 = load ptr, ptr %tmp136, align 8, !dbg !1122
  call void @generic___clear_bit(i64 noundef %conv131, ptr noundef %115) #10, !dbg !1109
  br label %cond.end148, !dbg !1109

cond.false139:                                    ; preds = %do.end126, %do.end116, %do.end106, %if.then100
  %116 = load i32, ptr %i, align 4, !dbg !1109
  %conv140 = sext i32 %116 to i64, !dbg !1109
  br label %do.body141, !dbg !1126

do.body141:                                       ; preds = %cond.false139
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify142) #11, !dbg !1127
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify142, metadata !265, metadata !DIExpression()), !dbg !1127
  store ptr null, ptr %__vpp_verify142, align 8, !dbg !1127
  %117 = load ptr, ptr %__vpp_verify142, align 8, !dbg !1127
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify142) #11, !dbg !1126
  br label %do.cond143, !dbg !1127

do.cond143:                                       ; preds = %do.body141
  br label %do.end144, !dbg !1127

do.end144:                                        ; preds = %do.cond143
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__146) #11, !dbg !1128
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__146, metadata !268, metadata !DIExpression()), !dbg !1128
  %118 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_poll_banks) #12, !dbg !1128, !srcloc !1129
  store i64 %118, ptr %tcp_ptr__146, align 8, !dbg !1128
  %119 = load i64, ptr %tcp_ptr__146, align 8, !dbg !1128
  %120 = inttoptr i64 %119 to ptr, !dbg !1128
  store ptr %120, ptr %tmp147, align 8, !dbg !1128
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__146) #11, !dbg !1126
  %121 = load ptr, ptr %tmp147, align 8, !dbg !1128
  store ptr %121, ptr %tmp145, align 8, !dbg !1127
  %122 = load ptr, ptr %tmp145, align 8, !dbg !1126
  call void @___clear_bit(i64 noundef %conv140, ptr noundef %122) #10, !dbg !1109
  br label %cond.end148, !dbg !1109

cond.end148:                                      ; preds = %do.end144, %do.end135
  %bf.load149 = load i64, ptr @mca_cfg, align 8, !dbg !1130
  %bf.lshr150 = lshr i64 %bf.load149, 4, !dbg !1130
  %bf.clear151 = and i64 %bf.lshr150, 1, !dbg !1130
  %conv152 = trunc i64 %bf.clear151 to i32, !dbg !1132
  %tobool153 = icmp ne i32 %conv152, 0, !dbg !1132
  br i1 %tobool153, label %land.lhs.true154, label %if.end160, !dbg !1133

land.lhs.true154:                                 ; preds = %cond.end148
  %123 = load i32, ptr %bios_zero_thresh, align 4, !dbg !1134
  %tobool155 = icmp ne i32 %123, 0, !dbg !1134
  br i1 %tobool155, label %land.lhs.true156, label %if.end160, !dbg !1135

land.lhs.true156:                                 ; preds = %land.lhs.true154
  %124 = load i64, ptr %val, align 8, !dbg !1136
  %and157 = and i64 %124, 32767, !dbg !1137
  %tobool158 = icmp ne i64 %and157, 0, !dbg !1137
  br i1 %tobool158, label %if.then159, label %if.end160, !dbg !1138

if.then159:                                       ; preds = %land.lhs.true156
  store i32 1, ptr %bios_wrong_thresh, align 4, !dbg !1139
  br label %if.end160, !dbg !1140

if.end160:                                        ; preds = %if.then159, %land.lhs.true156, %land.lhs.true154, %cond.end148
  br label %if.end245, !dbg !1141

if.else161:                                       ; preds = %if.end93
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1142
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !270, metadata !DIExpression()), !dbg !1142
  %125 = load i32, ptr %i, align 4, !dbg !1142
  %126 = call i1 @llvm.is.constant.i32(i32 %125), !dbg !1142
  br i1 %126, label %land.lhs.true162, label %cond.false201, !dbg !1142

land.lhs.true162:                                 ; preds = %if.else161
  br label %do.body163, !dbg !1143

do.body163:                                       ; preds = %land.lhs.true162
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify164) #11, !dbg !1144
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify164, metadata !273, metadata !DIExpression()), !dbg !1144
  store ptr null, ptr %__vpp_verify164, align 8, !dbg !1144
  %127 = load ptr, ptr %__vpp_verify164, align 8, !dbg !1144
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify164) #11, !dbg !1143
  br label %do.cond165, !dbg !1144

do.cond165:                                       ; preds = %do.body163
  br label %do.end166, !dbg !1144

do.end166:                                        ; preds = %do.cond165
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__168) #11, !dbg !1145
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__168, metadata !276, metadata !DIExpression()), !dbg !1145
  %128 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_poll_banks) #12, !dbg !1145, !srcloc !1146
  store i64 %128, ptr %tcp_ptr__168, align 8, !dbg !1145
  %129 = load i64, ptr %tcp_ptr__168, align 8, !dbg !1145
  %130 = inttoptr i64 %129 to ptr, !dbg !1145
  store ptr %130, ptr %tmp169, align 8, !dbg !1145
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__168) #11, !dbg !1143
  %131 = load ptr, ptr %tmp169, align 8, !dbg !1145
  store ptr %131, ptr %tmp167, align 8, !dbg !1144
  %132 = load ptr, ptr %tmp167, align 8, !dbg !1143
  %133 = ptrtoint ptr %132 to i64, !dbg !1142
  %cmp170 = icmp ne i64 %133, 0, !dbg !1142
  %conv171 = zext i1 %cmp170 to i32, !dbg !1142
  %134 = call i1 @llvm.is.constant.i32(i32 %conv171), !dbg !1142
  br i1 %134, label %land.lhs.true172, label %cond.false201, !dbg !1142

land.lhs.true172:                                 ; preds = %do.end166
  br label %do.body173, !dbg !1147

do.body173:                                       ; preds = %land.lhs.true172
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify174) #11, !dbg !1148
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify174, metadata !278, metadata !DIExpression()), !dbg !1148
  store ptr null, ptr %__vpp_verify174, align 8, !dbg !1148
  %135 = load ptr, ptr %__vpp_verify174, align 8, !dbg !1148
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify174) #11, !dbg !1147
  br label %do.cond175, !dbg !1148

do.cond175:                                       ; preds = %do.body173
  br label %do.end176, !dbg !1148

do.end176:                                        ; preds = %do.cond175
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__178) #11, !dbg !1149
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__178, metadata !281, metadata !DIExpression()), !dbg !1149
  %136 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_poll_banks) #12, !dbg !1149, !srcloc !1150
  store i64 %136, ptr %tcp_ptr__178, align 8, !dbg !1149
  %137 = load i64, ptr %tcp_ptr__178, align 8, !dbg !1149
  %138 = inttoptr i64 %137 to ptr, !dbg !1149
  store ptr %138, ptr %tmp179, align 8, !dbg !1149
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__178) #11, !dbg !1147
  %139 = load ptr, ptr %tmp179, align 8, !dbg !1149
  store ptr %139, ptr %tmp177, align 8, !dbg !1148
  %140 = load ptr, ptr %tmp177, align 8, !dbg !1147
  %141 = ptrtoint ptr %140 to i64, !dbg !1142
  %cmp180 = icmp ne i64 %141, 0, !dbg !1142
  br i1 %cmp180, label %land.lhs.true182, label %cond.false201, !dbg !1142

land.lhs.true182:                                 ; preds = %do.end176
  br label %do.body183, !dbg !1151

do.body183:                                       ; preds = %land.lhs.true182
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify184) #11, !dbg !1152
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify184, metadata !283, metadata !DIExpression()), !dbg !1152
  store ptr null, ptr %__vpp_verify184, align 8, !dbg !1152
  %142 = load ptr, ptr %__vpp_verify184, align 8, !dbg !1152
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify184) #11, !dbg !1151
  br label %do.cond185, !dbg !1152

do.cond185:                                       ; preds = %do.body183
  br label %do.end186, !dbg !1152

do.end186:                                        ; preds = %do.cond185
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__188) #11, !dbg !1153
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__188, metadata !286, metadata !DIExpression()), !dbg !1153
  %143 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_poll_banks) #12, !dbg !1153, !srcloc !1154
  store i64 %143, ptr %tcp_ptr__188, align 8, !dbg !1153
  %144 = load i64, ptr %tcp_ptr__188, align 8, !dbg !1153
  %145 = inttoptr i64 %144 to ptr, !dbg !1153
  store ptr %145, ptr %tmp189, align 8, !dbg !1153
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__188) #11, !dbg !1151
  %146 = load ptr, ptr %tmp189, align 8, !dbg !1153
  store ptr %146, ptr %tmp187, align 8, !dbg !1152
  %147 = load ptr, ptr %tmp187, align 8, !dbg !1151
  %148 = load i64, ptr %147, align 8, !dbg !1142
  %149 = call i1 @llvm.is.constant.i64(i64 %148), !dbg !1142
  br i1 %149, label %cond.true190, label %cond.false201, !dbg !1142

cond.true190:                                     ; preds = %do.end186
  %150 = load i32, ptr %i, align 4, !dbg !1142
  %conv191 = sext i32 %150 to i64, !dbg !1142
  br label %do.body192, !dbg !1155

do.body192:                                       ; preds = %cond.true190
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify193) #11, !dbg !1156
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify193, metadata !288, metadata !DIExpression()), !dbg !1156
  store ptr null, ptr %__vpp_verify193, align 8, !dbg !1156
  %151 = load ptr, ptr %__vpp_verify193, align 8, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify193) #11, !dbg !1155
  br label %do.cond194, !dbg !1156

do.cond194:                                       ; preds = %do.body192
  br label %do.end195, !dbg !1156

do.end195:                                        ; preds = %do.cond194
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__197) #11, !dbg !1157
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__197, metadata !291, metadata !DIExpression()), !dbg !1157
  %152 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_poll_banks) #12, !dbg !1157, !srcloc !1158
  store i64 %152, ptr %tcp_ptr__197, align 8, !dbg !1157
  %153 = load i64, ptr %tcp_ptr__197, align 8, !dbg !1157
  %154 = inttoptr i64 %153 to ptr, !dbg !1157
  store ptr %154, ptr %tmp198, align 8, !dbg !1157
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__197) #11, !dbg !1155
  %155 = load ptr, ptr %tmp198, align 8, !dbg !1157
  store ptr %155, ptr %tmp196, align 8, !dbg !1156
  %156 = load ptr, ptr %tmp196, align 8, !dbg !1155
  %call199 = call zeroext i1 @const_test_bit(i64 noundef %conv191, ptr noundef %156) #10, !dbg !1142
  %conv200 = zext i1 %call199 to i32, !dbg !1142
  br label %cond.end212, !dbg !1142

cond.false201:                                    ; preds = %do.end186, %do.end176, %do.end166, %if.else161
  %157 = load i32, ptr %i, align 4, !dbg !1142
  %conv202 = sext i32 %157 to i64, !dbg !1142
  br label %do.body203, !dbg !1159

do.body203:                                       ; preds = %cond.false201
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify204) #11, !dbg !1160
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify204, metadata !293, metadata !DIExpression()), !dbg !1160
  store ptr null, ptr %__vpp_verify204, align 8, !dbg !1160
  %158 = load ptr, ptr %__vpp_verify204, align 8, !dbg !1160
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify204) #11, !dbg !1159
  br label %do.cond205, !dbg !1160

do.cond205:                                       ; preds = %do.body203
  br label %do.end206, !dbg !1160

do.end206:                                        ; preds = %do.cond205
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__208) #11, !dbg !1161
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__208, metadata !296, metadata !DIExpression()), !dbg !1161
  %159 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_poll_banks) #12, !dbg !1161, !srcloc !1162
  store i64 %159, ptr %tcp_ptr__208, align 8, !dbg !1161
  %160 = load i64, ptr %tcp_ptr__208, align 8, !dbg !1161
  %161 = inttoptr i64 %160 to ptr, !dbg !1161
  store ptr %161, ptr %tmp209, align 8, !dbg !1161
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__208) #11, !dbg !1159
  %162 = load ptr, ptr %tmp209, align 8, !dbg !1161
  store ptr %162, ptr %tmp207, align 8, !dbg !1160
  %163 = load ptr, ptr %tmp207, align 8, !dbg !1159
  %call210 = call zeroext i1 @_test_bit(i64 noundef %conv202, ptr noundef %163) #10, !dbg !1142
  %conv211 = zext i1 %call210 to i32, !dbg !1142
  br label %cond.end212, !dbg !1142

cond.end212:                                      ; preds = %do.end206, %do.end195
  %cond = phi i32 [ %conv200, %do.end195 ], [ %conv211, %do.end206 ], !dbg !1142
  %tobool213 = icmp ne i32 %cond, 0, !dbg !1142
  %lnot = xor i1 %tobool213, true, !dbg !1142
  %lnot214 = xor i1 %lnot, true, !dbg !1142
  %lnot215 = xor i1 %lnot214, true, !dbg !1142
  %lnot.ext = zext i1 %lnot215 to i32, !dbg !1142
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1142
  %164 = load i32, ptr %__ret_warn_on, align 4, !dbg !1163
  %tobool216 = icmp ne i32 %164, 0, !dbg !1163
  %lnot217 = xor i1 %tobool216, true, !dbg !1163
  %lnot219 = xor i1 %lnot217, true, !dbg !1163
  %lnot.ext220 = zext i1 %lnot219 to i32, !dbg !1163
  %conv221 = sext i32 %lnot.ext220 to i64, !dbg !1163
  %expval = call i64 @llvm.expect.i64(i64 %conv221, i64 0), !dbg !1163
  %tobool222 = icmp ne i64 %expval, 0, !dbg !1163
  br i1 %tobool222, label %if.then223, label %if.end236, !dbg !1142

if.then223:                                       ; preds = %cond.end212
  br label %do.body224, !dbg !1163

do.body224:                                       ; preds = %if.then223
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !1164
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !298, metadata !DIExpression()), !dbg !1164
  store i32 2305, ptr %__flags, align 4, !dbg !1164
  br label %do.body225, !dbg !1164

do.body225:                                       ; preds = %do.body224
  br label %do.cond226, !dbg !1165

do.cond226:                                       ; preds = %do.body225
  br label %do.end227, !dbg !1165

do.end227:                                        ; preds = %do.cond226
  br label %do.body228, !dbg !1164

do.body228:                                       ; preds = %do.end227
  %165 = load i32, ptr %__flags, align 4, !dbg !1167
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 333, i32 %165, i64 12) #11, !dbg !1167, !srcloc !1169
  br label %do.cond229, !dbg !1167

do.cond229:                                       ; preds = %do.body228
  br label %do.end230, !dbg !1167

do.end230:                                        ; preds = %do.cond229
  br label %do.body231, !dbg !1164

do.body231:                                       ; preds = %do.end230
  br label %do.cond232, !dbg !1170

do.cond232:                                       ; preds = %do.body231
  br label %do.end233, !dbg !1170

do.end233:                                        ; preds = %do.cond232
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !1163
  br label %do.cond234, !dbg !1164

do.cond234:                                       ; preds = %do.end233
  br label %do.end235, !dbg !1164

do.end235:                                        ; preds = %do.cond234
  br label %if.end236, !dbg !1164

if.end236:                                        ; preds = %do.end235, %cond.end212
  %166 = load i32, ptr %__ret_warn_on, align 4, !dbg !1142
  %tobool238 = icmp ne i32 %166, 0, !dbg !1142
  %lnot239 = xor i1 %tobool238, true, !dbg !1142
  %lnot241 = xor i1 %lnot239, true, !dbg !1142
  %lnot.ext242 = zext i1 %lnot241 to i32, !dbg !1142
  %conv243 = sext i32 %lnot.ext242 to i64, !dbg !1142
  %expval244 = call i64 @llvm.expect.i64(i64 %conv243, i64 0), !dbg !1142
  store i64 %expval244, ptr %tmp237, align 8, !dbg !1163
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1172
  %167 = load i64, ptr %tmp237, align 8, !dbg !1142
  br label %if.end245

if.end245:                                        ; preds = %if.end236, %if.end160
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1173
  br label %cleanup, !dbg !1173

cleanup:                                          ; preds = %if.end245, %cond.end, %if.then33, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %bios_zero_thresh) #11, !dbg !1173
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !1173
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1174

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %168 = load i32, ptr %i, align 4, !dbg !1175
  %inc = add i32 %168, 1, !dbg !1175
  store i32 %inc, ptr %i, align 4, !dbg !1175
  br label %for.cond, !dbg !1176, !llvm.loop !1177

for.end:                                          ; preds = %for.cond
  br label %do.body247, !dbg !1179

do.body247:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy248) #11, !dbg !1180
  call void @llvm.dbg.declare(metadata ptr %__dummy248, metadata !301, metadata !DIExpression()), !dbg !1180
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2249) #11, !dbg !1180
  call void @llvm.dbg.declare(metadata ptr %__dummy2249, metadata !304, metadata !DIExpression()), !dbg !1180
  %cmp250 = icmp eq ptr %__dummy248, %__dummy2249, !dbg !1180
  %conv251 = zext i1 %cmp250 to i32, !dbg !1180
  store i32 1, ptr %tmp252, align 4, !dbg !1180
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2249) #11, !dbg !1181
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy248) #11, !dbg !1181
  %169 = load i32, ptr %tmp252, align 4, !dbg !1180
  %170 = load i64, ptr %flags, align 8, !dbg !1181
  call void @_raw_spin_unlock_irqrestore(ptr noundef @cmci_discover_lock, i64 noundef %170) #10, !dbg !1181
  br label %do.cond253, !dbg !1181

do.cond253:                                       ; preds = %do.body247
  br label %do.end254, !dbg !1181

do.end254:                                        ; preds = %do.cond253
  %bf.load255 = load i64, ptr @mca_cfg, align 8, !dbg !1182
  %bf.lshr256 = lshr i64 %bf.load255, 4, !dbg !1182
  %bf.clear257 = and i64 %bf.lshr256, 1, !dbg !1182
  %conv258 = trunc i64 %bf.clear257 to i32, !dbg !1183
  %tobool259 = icmp ne i32 %conv258, 0, !dbg !1183
  br i1 %tobool259, label %land.lhs.true260, label %if.end355, !dbg !1184

land.lhs.true260:                                 ; preds = %do.end254
  %171 = load i32, ptr %bios_wrong_thresh, align 4, !dbg !1185
  %tobool261 = icmp ne i32 %171, 0, !dbg !1185
  br i1 %tobool261, label %if.then262, label %if.end355, !dbg !1186

if.then262:                                       ; preds = %land.lhs.true260
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #11, !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !305, metadata !DIExpression()), !dbg !1187
  store i8 1, ptr %__ret_do_once, align 1, !dbg !1187
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #11, !dbg !1188
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !309, metadata !DIExpression()), !dbg !1188
  %172 = load i8, ptr %__ret_do_once, align 1, !dbg !1188, !range !658, !noundef !659
  %tobool263 = trunc i8 %172 to i1, !dbg !1188
  %lnot264 = xor i1 %tobool263, true, !dbg !1188
  %lnot266 = xor i1 %lnot264, true, !dbg !1188
  %frombool = zext i1 %lnot266 to i8, !dbg !1188
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !1188
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #11, !dbg !1188
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !312, metadata !DIExpression()), !dbg !1188
  store i8 0, ptr %__ret_once, align 1, !dbg !1188
  %173 = load i8, ptr %__ret_cond, align 1, !dbg !1189, !range !658, !noundef !659
  %tobool268 = trunc i8 %173 to i1, !dbg !1189
  br i1 %tobool268, label %land.rhs, label %land.end, !dbg !1189

land.rhs:                                         ; preds = %if.then262
  %174 = load i8, ptr @cmci_discover.__already_done, align 1, !dbg !1189, !range !658, !noundef !659
  %tobool270 = trunc i8 %174 to i1, !dbg !1189
  %lnot271 = xor i1 %tobool270, true, !dbg !1189
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then262
  %175 = phi i1 [ false, %if.then262 ], [ %lnot271, %land.rhs ], !dbg !1191
  %lnot273 = xor i1 %175, true, !dbg !1189
  %lnot275 = xor i1 %lnot273, true, !dbg !1189
  %lnot.ext276 = zext i1 %lnot275 to i32, !dbg !1189
  %conv277 = sext i32 %lnot.ext276 to i64, !dbg !1189
  %expval278 = call i64 @llvm.expect.i64(i64 %conv277, i64 0), !dbg !1189
  %tobool279 = icmp ne i64 %expval278, 0, !dbg !1189
  br i1 %tobool279, label %if.then280, label %if.end281, !dbg !1188

if.then280:                                       ; preds = %land.end
  store i8 1, ptr @cmci_discover.__already_done, align 1, !dbg !1192
  store i8 1, ptr %__ret_once, align 1, !dbg !1192
  br label %if.end281, !dbg !1192

if.end281:                                        ; preds = %if.then280, %land.end
  %176 = load i8, ptr %__ret_once, align 1, !dbg !1188, !range !658, !noundef !659
  %tobool283 = trunc i8 %176 to i1, !dbg !1188
  %lnot284 = xor i1 %tobool283, true, !dbg !1188
  %lnot286 = xor i1 %lnot284, true, !dbg !1188
  %lnot.ext287 = zext i1 %lnot286 to i32, !dbg !1188
  %conv288 = sext i32 %lnot.ext287 to i64, !dbg !1188
  %expval289 = call i64 @llvm.expect.i64(i64 %conv288, i64 0), !dbg !1188
  store i64 %expval289, ptr %tmp282, align 8, !dbg !1189
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #11, !dbg !1194
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #11, !dbg !1194
  %177 = load i64, ptr %tmp282, align 8, !dbg !1188
  %tobool290 = icmp ne i64 %177, 0, !dbg !1194
  br i1 %tobool290, label %if.then291, label %if.end297, !dbg !1187

if.then291:                                       ; preds = %if.end281
  br label %do.body292, !dbg !1195

do.body292:                                       ; preds = %if.then291
  br label %do.cond293, !dbg !1197

do.cond293:                                       ; preds = %do.body292
  br label %do.end294, !dbg !1197

do.end294:                                        ; preds = %do.cond293
  %call296 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #13, !dbg !1195
  store i32 %call296, ptr %tmp295, align 4, !dbg !1197
  %178 = load i32, ptr %tmp295, align 4, !dbg !1195
  br label %if.end297, !dbg !1194

if.end297:                                        ; preds = %do.end294, %if.end281
  %179 = load i8, ptr %__ret_do_once, align 1, !dbg !1187, !range !658, !noundef !659
  %tobool299 = trunc i8 %179 to i1, !dbg !1187
  %lnot300 = xor i1 %tobool299, true, !dbg !1187
  %lnot302 = xor i1 %lnot300, true, !dbg !1187
  %lnot.ext303 = zext i1 %lnot302 to i32, !dbg !1187
  %conv304 = sext i32 %lnot.ext303 to i64, !dbg !1187
  %expval305 = call i64 @llvm.expect.i64(i64 %conv304, i64 0), !dbg !1187
  store i64 %expval305, ptr %tmp298, align 8, !dbg !1194
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #11, !dbg !1199
  %180 = load i64, ptr %tmp298, align 8, !dbg !1187
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once306) #11, !dbg !1200
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once306, metadata !313, metadata !DIExpression()), !dbg !1200
  store i8 1, ptr %__ret_do_once306, align 1, !dbg !1200
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond307) #11, !dbg !1201
  call void @llvm.dbg.declare(metadata ptr %__ret_cond307, metadata !315, metadata !DIExpression()), !dbg !1201
  %181 = load i8, ptr %__ret_do_once306, align 1, !dbg !1201, !range !658, !noundef !659
  %tobool308 = trunc i8 %181 to i1, !dbg !1201
  %lnot309 = xor i1 %tobool308, true, !dbg !1201
  %lnot311 = xor i1 %lnot309, true, !dbg !1201
  %frombool313 = zext i1 %lnot311 to i8, !dbg !1201
  store i8 %frombool313, ptr %__ret_cond307, align 1, !dbg !1201
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once314) #11, !dbg !1201
  call void @llvm.dbg.declare(metadata ptr %__ret_once314, metadata !318, metadata !DIExpression()), !dbg !1201
  store i8 0, ptr %__ret_once314, align 1, !dbg !1201
  %182 = load i8, ptr %__ret_cond307, align 1, !dbg !1202, !range !658, !noundef !659
  %tobool315 = trunc i8 %182 to i1, !dbg !1202
  br i1 %tobool315, label %land.rhs317, label %land.end321, !dbg !1202

land.rhs317:                                      ; preds = %if.end297
  %183 = load i8, ptr @cmci_discover.__already_done.5, align 1, !dbg !1202, !range !658, !noundef !659
  %tobool318 = trunc i8 %183 to i1, !dbg !1202
  %lnot319 = xor i1 %tobool318, true, !dbg !1202
  br label %land.end321

land.end321:                                      ; preds = %land.rhs317, %if.end297
  %184 = phi i1 [ false, %if.end297 ], [ %lnot319, %land.rhs317 ], !dbg !1204
  %lnot322 = xor i1 %184, true, !dbg !1202
  %lnot324 = xor i1 %lnot322, true, !dbg !1202
  %lnot.ext325 = zext i1 %lnot324 to i32, !dbg !1202
  %conv326 = sext i32 %lnot.ext325 to i64, !dbg !1202
  %expval327 = call i64 @llvm.expect.i64(i64 %conv326, i64 0), !dbg !1202
  %tobool328 = icmp ne i64 %expval327, 0, !dbg !1202
  br i1 %tobool328, label %if.then329, label %if.end330, !dbg !1201

if.then329:                                       ; preds = %land.end321
  store i8 1, ptr @cmci_discover.__already_done.5, align 1, !dbg !1205
  store i8 1, ptr %__ret_once314, align 1, !dbg !1205
  br label %if.end330, !dbg !1205

if.end330:                                        ; preds = %if.then329, %land.end321
  %185 = load i8, ptr %__ret_once314, align 1, !dbg !1201, !range !658, !noundef !659
  %tobool332 = trunc i8 %185 to i1, !dbg !1201
  %lnot333 = xor i1 %tobool332, true, !dbg !1201
  %lnot335 = xor i1 %lnot333, true, !dbg !1201
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !1201
  %conv337 = sext i32 %lnot.ext336 to i64, !dbg !1201
  %expval338 = call i64 @llvm.expect.i64(i64 %conv337, i64 0), !dbg !1201
  store i64 %expval338, ptr %tmp331, align 8, !dbg !1202
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once314) #11, !dbg !1207
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond307) #11, !dbg !1207
  %186 = load i64, ptr %tmp331, align 8, !dbg !1201
  %tobool339 = icmp ne i64 %186, 0, !dbg !1207
  br i1 %tobool339, label %if.then340, label %if.end346, !dbg !1200

if.then340:                                       ; preds = %if.end330
  br label %do.body341, !dbg !1208

do.body341:                                       ; preds = %if.then340
  br label %do.cond342, !dbg !1210

do.cond342:                                       ; preds = %do.body341
  br label %do.end343, !dbg !1210

do.end343:                                        ; preds = %do.cond342
  %call345 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #13, !dbg !1208
  store i32 %call345, ptr %tmp344, align 4, !dbg !1210
  %187 = load i32, ptr %tmp344, align 4, !dbg !1208
  br label %if.end346, !dbg !1207

if.end346:                                        ; preds = %do.end343, %if.end330
  %188 = load i8, ptr %__ret_do_once306, align 1, !dbg !1200, !range !658, !noundef !659
  %tobool348 = trunc i8 %188 to i1, !dbg !1200
  %lnot349 = xor i1 %tobool348, true, !dbg !1200
  %lnot351 = xor i1 %lnot349, true, !dbg !1200
  %lnot.ext352 = zext i1 %lnot351 to i32, !dbg !1200
  %conv353 = sext i32 %lnot.ext352 to i64, !dbg !1200
  %expval354 = call i64 @llvm.expect.i64(i64 %conv353, i64 0), !dbg !1200
  store i64 %expval354, ptr %tmp347, align 8, !dbg !1207
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once306) #11, !dbg !1212
  %189 = load i64, ptr %tmp347, align 8, !dbg !1200
  br label %if.end355, !dbg !1213

if.end355:                                        ; preds = %if.end346, %land.lhs.true260, %do.end254
  call void @llvm.lifetime.end.p0(i64 4, ptr %bios_wrong_thresh) #11, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 8, ptr %owned) #11, !dbg !1214
  ret void, !dbg !1214

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cmci_disable_bank(i32 noundef %bank) #0 align 16 !dbg !1215 {
entry:
  %bank.addr = alloca i32, align 4
  %banks = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  store i32 %bank, ptr %bank.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bank.addr, metadata !1217, metadata !DIExpression()), !dbg !1228
  call void @llvm.lifetime.start.p0(i64 4, ptr %banks) #11, !dbg !1229
  call void @llvm.dbg.declare(metadata ptr %banks, metadata !1218, metadata !DIExpression()), !dbg !1230
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !1231
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1219, metadata !DIExpression()), !dbg !1232
  %call = call i32 @cmci_supported(ptr noundef %banks) #10, !dbg !1233
  %tobool = icmp ne i32 %call, 0, !dbg !1233
  br i1 %tobool, label %if.end, label %if.then, !dbg !1235

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1236

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1237

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !1238
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1220, metadata !DIExpression()), !dbg !1238
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !1238
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1223, metadata !DIExpression()), !dbg !1238
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1238
  %conv = zext i1 %cmp to i32, !dbg !1238
  store i32 1, ptr %tmp, align 4, !dbg !1238
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !1239
  %0 = load i32, ptr %tmp, align 4, !dbg !1238
  %call1 = call i64 @_raw_spin_lock_irqsave(ptr noundef @cmci_discover_lock) #10, !dbg !1239
  store i64 %call1, ptr %flags, align 8, !dbg !1239
  br label %do.cond, !dbg !1239

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1239

do.end:                                           ; preds = %do.cond
  %1 = load i32, ptr %bank.addr, align 4, !dbg !1240
  call void @__cmci_disable_bank(i32 noundef %1) #10, !dbg !1241
  br label %do.body2, !dbg !1242

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #11, !dbg !1243
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1224, metadata !DIExpression()), !dbg !1243
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #11, !dbg !1243
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1227, metadata !DIExpression()), !dbg !1243
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1243
  %conv6 = zext i1 %cmp5 to i32, !dbg !1243
  store i32 1, ptr %tmp7, align 4, !dbg !1243
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #11, !dbg !1244
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #11, !dbg !1244
  %2 = load i32, ptr %tmp7, align 4, !dbg !1243
  %3 = load i64, ptr %flags, align 8, !dbg !1244
  call void @_raw_spin_unlock_irqrestore(ptr noundef @cmci_discover_lock, i64 noundef %3) #10, !dbg !1244
  br label %do.cond8, !dbg !1244

do.cond8:                                         ; preds = %do.body2
  br label %do.end9, !dbg !1244

do.end9:                                          ; preds = %do.cond8
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1245
  br label %cleanup, !dbg !1245

cleanup:                                          ; preds = %do.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !1245
  call void @llvm.lifetime.end.p0(i64 4, ptr %banks) #11, !dbg !1245
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1245

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @intel_init_cmci() #0 align 16 !dbg !1246 {
entry:
  %banks = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %banks) #11, !dbg !1249
  call void @llvm.dbg.declare(metadata ptr %banks, metadata !1248, metadata !DIExpression()), !dbg !1250
  %call = call i32 @cmci_supported(ptr noundef %banks) #10, !dbg !1251
  %tobool = icmp ne i32 %call, 0, !dbg !1251
  br i1 %tobool, label %if.end, label %if.then, !dbg !1253

if.then:                                          ; preds = %entry
  store ptr @cmci_mc_poll_banks, ptr @mc_poll_banks, align 8, !dbg !1254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1256

if.end:                                           ; preds = %entry
  store ptr @intel_threshold_interrupt, ptr @mce_threshold_vector, align 8, !dbg !1257
  %0 = load i32, ptr %banks, align 4, !dbg !1258
  call void @cmci_discover(i32 noundef %0) #10, !dbg !1259
  call void @apic_write(i32 noundef 752, i32 noundef 249) #10, !dbg !1260
  call void @cmci_recheck() #10, !dbg !1261
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1262
  br label %cleanup, !dbg !1262

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %banks) #11, !dbg !1262
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1262

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cmci_mc_poll_banks() #0 align 16 !dbg !1263 {
entry:
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  call void @spin_lock(ptr noundef @cmci_poll_lock) #10, !dbg !1270
  br label %do.body, !dbg !1271

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !1272
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1265, metadata !DIExpression()), !dbg !1272
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1272
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1272
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !1271
  br label %do.end, !dbg !1272

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !1273
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !1268, metadata !DIExpression()), !dbg !1273
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_poll_banks) #12, !dbg !1273, !srcloc !1274
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !1273
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !1273
  %3 = inttoptr i64 %2 to ptr, !dbg !1273
  store ptr %3, ptr %tmp1, align 8, !dbg !1273
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !1271
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1273
  store ptr %4, ptr %tmp, align 8, !dbg !1272
  %5 = load ptr, ptr %tmp, align 8, !dbg !1271
  %call = call zeroext i1 @machine_check_poll(i32 noundef 0, ptr noundef %5) #10, !dbg !1275
  call void @spin_unlock(ptr noundef @cmci_poll_lock) #10, !dbg !1276
  ret void, !dbg !1277
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @intel_threshold_interrupt() #0 align 16 !dbg !1278 {
entry:
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %call = call zeroext i1 @cmci_storm_detect() #10, !dbg !1285
  br i1 %call, label %if.then, label %if.end, !dbg !1287

if.then:                                          ; preds = %entry
  br label %return, !dbg !1288

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1289

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !1290
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1280, metadata !DIExpression()), !dbg !1290
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1290
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1290
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !1289
  br label %do.end, !dbg !1290

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !1291
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !1283, metadata !DIExpression()), !dbg !1291
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @mce_banks_owned) #12, !dbg !1291, !srcloc !1292
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !1291
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !1291
  %3 = inttoptr i64 %2 to ptr, !dbg !1291
  store ptr %3, ptr %tmp1, align 8, !dbg !1291
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #11, !dbg !1289
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1291
  store ptr %4, ptr %tmp, align 8, !dbg !1290
  %5 = load ptr, ptr %tmp, align 8, !dbg !1289
  %call2 = call zeroext i1 @machine_check_poll(i32 noundef 1, ptr noundef %5) #10, !dbg !1293
  br label %return, !dbg !1294

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !1294
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @apic_write(i32 noundef %reg, i32 noundef %val) #1 align 16 !dbg !352 {
entry:
  %reg.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !357, metadata !DIExpression()), !dbg !1295
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !358, metadata !DIExpression()), !dbg !1296
  store ptr @__SCT__apic_call_write, ptr %tmp, align 8, !dbg !1297
  %0 = load ptr, ptr %tmp, align 8, !dbg !1297
  %1 = load i32, ptr %reg.addr, align 4, !dbg !1299
  %2 = load i32, ptr %val.addr, align 4, !dbg !1300
  call void %0(i32 noundef %1, i32 noundef %2) #10, !dbg !1301
  ret void, !dbg !1302
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @intel_init_lmce() #0 align 16 !dbg !1303 {
entry:
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !1306
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1305, metadata !DIExpression()), !dbg !1307
  %call = call zeroext i1 @lmce_supported() #10, !dbg !1308
  br i1 %call, label %if.end, label %if.then, !dbg !1310

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1311

if.end:                                           ; preds = %entry
  %call1 = call i64 @native_read_msr(i32 noundef 1232) #10, !dbg !1312
  store i64 %call1, ptr %val, align 8, !dbg !1312
  %0 = load i64, ptr %val, align 8, !dbg !1313
  %and = and i64 %0, 1, !dbg !1315
  %tobool = icmp ne i64 %and, 0, !dbg !1315
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !1316

if.then2:                                         ; preds = %if.end
  %1 = load i64, ptr %val, align 8, !dbg !1317
  %or = or i64 %1, 1, !dbg !1318
  call void @wrmsrl(i32 noundef 1232, i64 noundef %or) #10, !dbg !1319
  br label %if.end3, !dbg !1319

if.end3:                                          ; preds = %if.then2, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1320
  br label %cleanup, !dbg !1320

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !1320
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1320

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @lmce_supported() #0 align 16 !dbg !1321 {
entry:
  %retval = alloca i1, align 1
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp25 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #11, !dbg !1330
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1323, metadata !DIExpression()), !dbg !1331
  %bf.load = load i64, ptr @mca_cfg, align 8, !dbg !1332
  %bf.clear = and i64 %bf.load, 1, !dbg !1332
  %tobool = icmp ne i64 %bf.clear, 0, !dbg !1334
  br i1 %tobool, label %if.then, label %if.end, !dbg !1335

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1336

if.end:                                           ; preds = %entry
  %call = call i64 @native_read_msr(i32 noundef 377) #10, !dbg !1337
  store i64 %call, ptr %tmp, align 8, !dbg !1337
  %0 = load i64, ptr %tmp, align 8, !dbg !1338
  %and = and i64 %0, 150994944, !dbg !1340
  %cmp = icmp ne i64 %and, 150994944, !dbg !1341
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1342

if.then1:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !1343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1343

if.end2:                                          ; preds = %if.end
  %call3 = call i64 @native_read_msr(i32 noundef 58) #10, !dbg !1344
  store i64 %call3, ptr %tmp, align 8, !dbg !1344
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1345
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1324, metadata !DIExpression()), !dbg !1345
  %1 = load i64, ptr %tmp, align 8, !dbg !1345
  %and4 = and i64 %1, 1, !dbg !1345
  %tobool5 = icmp ne i64 %and4, 0, !dbg !1345
  %lnot = xor i1 %tobool5, true, !dbg !1345
  %lnot6 = xor i1 %lnot, true, !dbg !1345
  %lnot7 = xor i1 %lnot6, true, !dbg !1345
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !1345
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1345
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !1346
  %tobool8 = icmp ne i32 %2, 0, !dbg !1346
  %lnot9 = xor i1 %tobool8, true, !dbg !1346
  %lnot11 = xor i1 %lnot9, true, !dbg !1346
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !1346
  %conv = sext i32 %lnot.ext12 to i64, !dbg !1346
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1346
  %tobool13 = icmp ne i64 %expval, 0, !dbg !1346
  br i1 %tobool13, label %if.then14, label %if.end24, !dbg !1345

if.then14:                                        ; preds = %if.end2
  br label %do.body, !dbg !1346

do.body:                                          ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !1347
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1327, metadata !DIExpression()), !dbg !1347
  store i32 2307, ptr %__flags, align 4, !dbg !1347
  br label %do.body15, !dbg !1347

do.body15:                                        ; preds = %do.body
  br label %do.cond, !dbg !1348

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !1348

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !1347

do.body16:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !1350
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 131, i32 %3, i64 12) #11, !dbg !1350, !srcloc !1352
  br label %do.cond17, !dbg !1350

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !1350

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !1347

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !1353

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !1353

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !1346
  br label %do.cond22, !dbg !1347

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !1347

do.end23:                                         ; preds = %do.cond22
  br label %if.end24, !dbg !1347

if.end24:                                         ; preds = %do.end23, %if.end2
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !1345
  %tobool26 = icmp ne i32 %4, 0, !dbg !1345
  %lnot27 = xor i1 %tobool26, true, !dbg !1345
  %lnot29 = xor i1 %lnot27, true, !dbg !1345
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !1345
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !1345
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !1345
  store i64 %expval32, ptr %tmp25, align 8, !dbg !1346
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1355
  %5 = load i64, ptr %tmp25, align 8, !dbg !1345
  %tobool33 = icmp ne i64 %5, 0, !dbg !1355
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !1356

if.then34:                                        ; preds = %if.end24
  store i1 false, ptr %retval, align 1, !dbg !1357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1357

if.end35:                                         ; preds = %if.end24
  %6 = load i64, ptr %tmp, align 8, !dbg !1358
  %and36 = and i64 %6, 1048576, !dbg !1359
  %tobool37 = icmp ne i64 %and36, 0, !dbg !1358
  store i1 %tobool37, ptr %retval, align 1, !dbg !1360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1360

cleanup:                                          ; preds = %if.end35, %if.then34, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #11, !dbg !1361
  %7 = load i1, ptr %retval, align 1, !dbg !1361
  ret i1 %7, !dbg !1361
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #6 align 16 !dbg !1362 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1367, metadata !DIExpression()), !dbg !1369
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1368, metadata !DIExpression()), !dbg !1371
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1372
  %call = call i64 @__rdmsr(i32 noundef %0) #10, !dbg !1373
  store i64 %call, ptr %val, align 8, !dbg !1374
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #10, !dbg !1375
  br i1 %call1, label %if.then, label %if.end, !dbg !1377

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !1378
  %2 = load i64, ptr %val, align 8, !dbg !1379
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #10, !dbg !1380
  br label %if.end, !dbg !1380

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !1381
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !1382
  ret i64 %3, !dbg !1383
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsrl(i32 noundef %msr, i64 noundef %val) #6 align 16 !dbg !1384 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1388, metadata !DIExpression()), !dbg !1390
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1389, metadata !DIExpression()), !dbg !1391
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1392
  %1 = load i64, ptr %val.addr, align 8, !dbg !1393
  %and = and i64 %1, 4294967295, !dbg !1394
  %conv = trunc i64 %and to i32, !dbg !1395
  %2 = load i64, ptr %val.addr, align 8, !dbg !1396
  %shr = lshr i64 %2, 32, !dbg !1397
  %conv1 = trunc i64 %shr to i32, !dbg !1398
  call void @native_write_msr(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #10, !dbg !1399
  ret void, !dbg !1400
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @intel_clear_lmce() #0 align 16 !dbg !1401 {
entry:
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !1404
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1403, metadata !DIExpression()), !dbg !1405
  %call = call zeroext i1 @lmce_supported() #10, !dbg !1406
  br i1 %call, label %if.end, label %if.then, !dbg !1408

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1409

if.end:                                           ; preds = %entry
  %call1 = call i64 @native_read_msr(i32 noundef 1232) #10, !dbg !1410
  store i64 %call1, ptr %val, align 8, !dbg !1410
  %0 = load i64, ptr %val, align 8, !dbg !1411
  %and = and i64 %0, -2, !dbg !1411
  store i64 %and, ptr %val, align 8, !dbg !1411
  %1 = load i64, ptr %val, align 8, !dbg !1412
  call void @wrmsrl(i32 noundef 1232, i64 noundef %1) #10, !dbg !1413
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1414
  br label %cleanup, !dbg !1414

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !1414
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1414

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mce_intel_feature_init(ptr noundef %c) #0 align 16 !dbg !1415 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1419, metadata !DIExpression()), !dbg !1420
  call void @intel_init_cmci() #10, !dbg !1421
  call void @intel_init_lmce() #10, !dbg !1422
  %0 = load ptr, ptr %c.addr, align 8, !dbg !1423
  call void @intel_imc_init(ptr noundef %0) #10, !dbg !1424
  ret void, !dbg !1425
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @intel_imc_init(ptr noundef %c) #0 align 16 !dbg !1426 {
entry:
  %c.addr = alloca ptr, align 8
  %error_control = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1428, metadata !DIExpression()), !dbg !1430
  call void @llvm.lifetime.start.p0(i64 8, ptr %error_control) #11, !dbg !1431
  call void @llvm.dbg.declare(metadata ptr %error_control, metadata !1429, metadata !DIExpression()), !dbg !1432
  %0 = load ptr, ptr %c.addr, align 8, !dbg !1433
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 0, !dbg !1434
  %x86_model = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !1434
  %2 = load i8, ptr %x86_model, align 8, !dbg !1434
  %conv = zext i8 %2 to i32, !dbg !1433
  switch i32 %conv, label %sw.epilog [
    i32 45, label %sw.bb
    i32 62, label %sw.bb
    i32 63, label %sw.bb
  ], !dbg !1435

sw.bb:                                            ; preds = %entry, %entry, %entry
  %call = call i32 @rdmsrl_safe(i32 noundef 383, ptr noundef %error_control) #10, !dbg !1436
  %tobool = icmp ne i32 %call, 0, !dbg !1436
  br i1 %tobool, label %if.then, label %if.end, !dbg !1439

if.then:                                          ; preds = %sw.bb
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1440

if.end:                                           ; preds = %sw.bb
  %3 = load i64, ptr %error_control, align 8, !dbg !1441
  %or = or i64 %3, 2, !dbg !1441
  store i64 %or, ptr %error_control, align 8, !dbg !1441
  %4 = load i64, ptr %error_control, align 8, !dbg !1442
  %call1 = call i32 @wrmsrl_safe(i32 noundef 383, i64 noundef %4) #10, !dbg !1443
  br label %sw.epilog, !dbg !1444

sw.epilog:                                        ; preds = %entry, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1445
  br label %cleanup, !dbg !1445

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %error_control) #11, !dbg !1445
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1445

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mce_intel_feature_clear(ptr noundef %c) #0 align 16 !dbg !1446 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1448, metadata !DIExpression()), !dbg !1449
  call void @intel_clear_lmce() #10, !dbg !1450
  ret void, !dbg !1451
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @intel_filter_mce(ptr noundef %m) #0 align 16 !dbg !1452 {
entry:
  %retval = alloca i1, align 1
  %m.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !1485, metadata !DIExpression()), !dbg !1487
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #11, !dbg !1488
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1486, metadata !DIExpression()), !dbg !1489
  store ptr @boot_cpu_data, ptr %c, align 8, !dbg !1489
  %0 = load ptr, ptr %c, align 8, !dbg !1490
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 0, !dbg !1492
  %x86 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1, !dbg !1492
  %2 = load i8, ptr %x86, align 1, !dbg !1492
  %conv = zext i8 %2 to i32, !dbg !1490
  %cmp = icmp eq i32 %conv, 6, !dbg !1493
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1494

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %c, align 8, !dbg !1495
  %4 = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 0, !dbg !1496
  %x86_model = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 0, !dbg !1496
  %5 = load i8, ptr %x86_model, align 8, !dbg !1496
  %conv2 = zext i8 %5 to i32, !dbg !1495
  %cmp3 = icmp eq i32 %conv2, 60, !dbg !1497
  br i1 %cmp3, label %land.lhs.true24, label %lor.lhs.false, !dbg !1498

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load ptr, ptr %c, align 8, !dbg !1499
  %7 = getelementptr inbounds %struct.cpuinfo_x86, ptr %6, i32 0, i32 0, !dbg !1500
  %x86_model5 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 0, !dbg !1500
  %8 = load i8, ptr %x86_model5, align 8, !dbg !1500
  %conv6 = zext i8 %8 to i32, !dbg !1499
  %cmp7 = icmp eq i32 %conv6, 69, !dbg !1501
  br i1 %cmp7, label %land.lhs.true24, label %lor.lhs.false9, !dbg !1502

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %9 = load ptr, ptr %c, align 8, !dbg !1503
  %10 = getelementptr inbounds %struct.cpuinfo_x86, ptr %9, i32 0, i32 0, !dbg !1504
  %x86_model10 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 0, !dbg !1504
  %11 = load i8, ptr %x86_model10, align 8, !dbg !1504
  %conv11 = zext i8 %11 to i32, !dbg !1503
  %cmp12 = icmp eq i32 %conv11, 61, !dbg !1505
  br i1 %cmp12, label %land.lhs.true24, label %lor.lhs.false14, !dbg !1506

lor.lhs.false14:                                  ; preds = %lor.lhs.false9
  %12 = load ptr, ptr %c, align 8, !dbg !1507
  %13 = getelementptr inbounds %struct.cpuinfo_x86, ptr %12, i32 0, i32 0, !dbg !1508
  %x86_model15 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 0, !dbg !1508
  %14 = load i8, ptr %x86_model15, align 8, !dbg !1508
  %conv16 = zext i8 %14 to i32, !dbg !1507
  %cmp17 = icmp eq i32 %conv16, 70, !dbg !1509
  br i1 %cmp17, label %land.lhs.true24, label %lor.lhs.false19, !dbg !1510

lor.lhs.false19:                                  ; preds = %lor.lhs.false14
  %15 = load ptr, ptr %c, align 8, !dbg !1511
  %16 = getelementptr inbounds %struct.cpuinfo_x86, ptr %15, i32 0, i32 0, !dbg !1512
  %x86_model20 = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 0, !dbg !1512
  %17 = load i8, ptr %x86_model20, align 8, !dbg !1512
  %conv21 = zext i8 %17 to i32, !dbg !1511
  %cmp22 = icmp eq i32 %conv21, 85, !dbg !1513
  br i1 %cmp22, label %land.lhs.true24, label %if.end, !dbg !1514

land.lhs.true24:                                  ; preds = %lor.lhs.false19, %lor.lhs.false14, %lor.lhs.false9, %lor.lhs.false, %land.lhs.true
  %18 = load ptr, ptr %m.addr, align 8, !dbg !1515
  %bank = getelementptr inbounds %struct.mce, ptr %18, i32 0, i32 13, !dbg !1516
  %19 = load i8, ptr %bank, align 1, !dbg !1516
  %conv25 = zext i8 %19 to i32, !dbg !1515
  %cmp26 = icmp eq i32 %conv25, 0, !dbg !1517
  br i1 %cmp26, label %land.lhs.true28, label %if.end, !dbg !1518

land.lhs.true28:                                  ; preds = %land.lhs.true24
  %20 = load ptr, ptr %m.addr, align 8, !dbg !1519
  %status = getelementptr inbounds %struct.mce, ptr %20, i32 0, i32 0, !dbg !1520
  %21 = load i64, ptr %status, align 8, !dbg !1520
  %and = and i64 %21, -6917529023346114561, !dbg !1521
  %cmp29 = icmp eq i64 %and, -9223372036853792763, !dbg !1522
  br i1 %cmp29, label %if.then, label %if.end, !dbg !1523

if.then:                                          ; preds = %land.lhs.true28
  store i1 true, ptr %retval, align 1, !dbg !1524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1524

if.end:                                           ; preds = %land.lhs.true28, %land.lhs.true24, %lor.lhs.false19, %entry
  store i1 false, ptr %retval, align 1, !dbg !1525
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1525

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #11, !dbg !1526
  %22 = load i1, ptr %retval, align 1, !dbg !1526
  ret i1 %22, !dbg !1526
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !1527 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1539, metadata !DIExpression()), !dbg !1541
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1540, metadata !DIExpression()), !dbg !1542
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1543
  %1 = load i64, ptr %size.addr, align 8, !dbg !1544
  %conv = trunc i64 %1 to i32, !dbg !1544
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !1545
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1546
  %3 = load i64, ptr %size.addr, align 8, !dbg !1546
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #10, !dbg !1546
  ret void, !dbg !1547
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #1 align 16 !dbg !1548 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1551, metadata !DIExpression()), !dbg !1552
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1553
  call void @arch_atomic_dec(ptr noundef %0) #10, !dbg !1554
  ret void, !dbg !1555
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !1556 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1561, metadata !DIExpression()), !dbg !1563
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1562, metadata !DIExpression()), !dbg !1564
  ret i1 true, !dbg !1565
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !1566 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1571, metadata !DIExpression()), !dbg !1574
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1572, metadata !DIExpression()), !dbg !1575
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1573, metadata !DIExpression()), !dbg !1576
  ret void, !dbg !1577
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #1 align 16 !dbg !1578 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1581, metadata !DIExpression()), !dbg !1582
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1583
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !1584
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #11, !dbg !1585, !srcloc !1586
  ret void, !dbg !1587
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_sub_return(i32 noundef %i, ptr noundef %v) #1 align 16 !dbg !1588 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1590, metadata !DIExpression()), !dbg !1592
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1591, metadata !DIExpression()), !dbg !1593
  %0 = load i32, ptr %i.addr, align 4, !dbg !1594
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1595
  %call = call i32 @arch_atomic_sub_return(i32 noundef %0, ptr noundef %1) #10, !dbg !1596
  ret i32 %call, !dbg !1597
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_sub_return(i32 noundef %i, ptr noundef %v) #1 align 16 !dbg !1598 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1600, metadata !DIExpression()), !dbg !1602
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1601, metadata !DIExpression()), !dbg !1603
  %0 = load i32, ptr %i.addr, align 4, !dbg !1604
  %sub = sub i32 0, %0, !dbg !1605
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1606
  %call = call i32 @arch_atomic_add_return(i32 noundef %sub, ptr noundef %1) #10, !dbg !1607
  ret i32 %call, !dbg !1608
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #1 align 16 !dbg !1609 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1611, metadata !DIExpression()), !dbg !1615
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1612, metadata !DIExpression()), !dbg !1616
  %0 = load i32, ptr %i.addr, align 4, !dbg !1617
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #11, !dbg !1618
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1613, metadata !DIExpression()), !dbg !1618
  %1 = load i32, ptr %i.addr, align 4, !dbg !1618
  store i32 %1, ptr %__ret, align 4, !dbg !1618
  %2 = load i32, ptr %__ret, align 4, !dbg !1618
  %3 = load ptr, ptr %v.addr, align 8, !dbg !1618
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !1618
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #11, !dbg !1618, !srcloc !1619
  store i32 %4, ptr %__ret, align 4, !dbg !1618
  %5 = load i32, ptr %__ret, align 4, !dbg !1618
  store i32 %5, ptr %tmp, align 4, !dbg !1618
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #11, !dbg !1620
  %6 = load i32, ptr %tmp, align 4, !dbg !1618
  %add = add i32 %0, %6, !dbg !1621
  ret i32 %add, !dbg !1622
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !1623 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1625, metadata !DIExpression()), !dbg !1627
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1626, metadata !DIExpression()), !dbg !1628
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1629
  %1 = load i64, ptr %size.addr, align 8, !dbg !1630
  %conv = trunc i64 %1 to i32, !dbg !1630
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #10, !dbg !1631
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1632
  %3 = load i64, ptr %size.addr, align 8, !dbg !1632
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #10, !dbg !1632
  ret void, !dbg !1633
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #1 align 16 !dbg !1634 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1636, metadata !DIExpression()), !dbg !1637
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1638
  %call = call i32 @arch_atomic_read(ptr noundef %0) #10, !dbg !1639
  ret i32 %call, !dbg !1640
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !1641 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1643, metadata !DIExpression()), !dbg !1645
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1644, metadata !DIExpression()), !dbg !1646
  ret i1 true, !dbg !1647
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #1 align 16 !dbg !1648 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1650, metadata !DIExpression()), !dbg !1651
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1652
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !1652
  %1 = load volatile i32, ptr %counter, align 4, !dbg !1652
  ret i32 %1, !dbg !1653
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #6 align 16 !dbg !1654 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1659, metadata !DIExpression()), !dbg !1665
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1660, metadata !DIExpression()), !dbg !1666
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !1661, metadata !DIExpression()), !dbg !1667
  %0 = load i64, ptr %size.addr, align 8, !dbg !1668
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1668
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !1668

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1668
  %cmp = icmp ule i64 %2, 64, !dbg !1668
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !1668

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !1668
  %cmp2 = icmp ugt i64 %3, 0, !dbg !1668
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !1669

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !1670
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1662, metadata !DIExpression()), !dbg !1671
  %4 = load i64, ptr %offset.addr, align 8, !dbg !1672
  %5 = load i64, ptr %size.addr, align 8, !dbg !1672
  %cmp3 = icmp uge i64 %4, %5, !dbg !1672
  %lnot = xor i1 %cmp3, true, !dbg !1672
  %lnot4 = xor i1 %lnot, true, !dbg !1672
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1672
  %conv = sext i32 %lnot.ext to i64, !dbg !1672
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1672
  %tobool = icmp ne i64 %expval, 0, !dbg !1672
  br i1 %tobool, label %if.then5, label %if.end, !dbg !1674

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1675
  store i64 %6, ptr %retval, align 8, !dbg !1676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1676

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !1677
  %8 = load i64, ptr %7, align 8, !dbg !1678
  %9 = load i64, ptr %offset.addr, align 8, !dbg !1679
  %shl = shl i64 1, %9, !dbg !1679
  %sub = sub i64 -1, %shl, !dbg !1679
  %add = add i64 %sub, 1, !dbg !1679
  %10 = load i64, ptr %size.addr, align 8, !dbg !1679
  %sub6 = sub i64 %10, 1, !dbg !1679
  %sub7 = sub i64 63, %sub6, !dbg !1679
  %shr = lshr i64 -1, %sub7, !dbg !1679
  %and = and i64 %add, %shr, !dbg !1679
  %add8 = add i64 0, %and, !dbg !1679
  %and9 = and i64 %8, %add8, !dbg !1680
  store i64 %and9, ptr %val, align 8, !dbg !1681
  %11 = load i64, ptr %val, align 8, !dbg !1682
  %tobool10 = icmp ne i64 %11, 0, !dbg !1682
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !1682

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !1683
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !1683
  br i1 %13, label %cond.true11, label %cond.false, !dbg !1683

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !1683
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !1683
  %cast = trunc i64 %15 to i32, !dbg !1683
  %conv12 = sext i32 %cast to i64, !dbg !1683
  br label %cond.end, !dbg !1683

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !1683
  %call = call i64 @variable__ffs(i64 noundef %16) #10, !dbg !1683
  br label %cond.end, !dbg !1683

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !1683
  br label %cond.end14, !dbg !1682

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !1684
  br label %cond.end14, !dbg !1682

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !1682
  store i64 %cond15, ptr %retval, align 8, !dbg !1685
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1685

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !1686
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !1687
  %19 = load i64, ptr %size.addr, align 8, !dbg !1688
  %20 = load i64, ptr %offset.addr, align 8, !dbg !1689
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #10, !dbg !1690
  store i64 %call17, ptr %retval, align 8, !dbg !1691
  br label %return, !dbg !1691

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !1692
  ret i64 %21, !dbg !1692
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #1 align 16 !dbg !1693 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1696, metadata !DIExpression()), !dbg !1697
  %0 = load i64, ptr %word.addr, align 8, !dbg !1698
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #12, !dbg !1699, !srcloc !1700
  store i64 %1, ptr %word.addr, align 8, !dbg !1699
  %2 = load i64, ptr %word.addr, align 8, !dbg !1701
  ret i64 %2, !dbg !1702
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1703 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !1704 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1711, metadata !DIExpression()), !dbg !1713
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1712, metadata !DIExpression()), !dbg !1714
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1715
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1716
  br i1 %1, label %cond.true, label %cond.false, !dbg !1716

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1717
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1718
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !1719
  %conv = zext i1 %call to i32, !dbg !1719
  br label %cond.end, !dbg !1716

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1720
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1721
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #10, !dbg !1722
  %conv2 = zext i1 %call1 to i32, !dbg !1722
  br label %cond.end, !dbg !1716

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1716
  %tobool = icmp ne i32 %cond, 0, !dbg !1716
  ret i1 %tobool, !dbg !1723
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1724 dso_local i32 @lapic_get_maxlvt() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !1725 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1729, metadata !DIExpression()), !dbg !1731
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1730, metadata !DIExpression()), !dbg !1732
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1733
  %and = and i64 %0, 63, !dbg !1734
  %shl = shl i64 1, %and, !dbg !1735
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1736
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1737
  %shr = ashr i64 %2, 6, !dbg !1738
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1736
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1736
  %and1 = and i64 %shl, %3, !dbg !1739
  %cmp = icmp ne i64 %and1, 0, !dbg !1740
  ret i1 %cmp, !dbg !1741
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !1742 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1744, metadata !DIExpression()), !dbg !1747
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1745, metadata !DIExpression()), !dbg !1748
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !1749
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1746, metadata !DIExpression()), !dbg !1750
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1751
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1752
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !1753, !srcloc !1754
  %3 = icmp ult i8 %2, 2, !dbg !1753
  call void @llvm.assume(i1 %3), !dbg !1753
  store i8 %2, ptr %oldbit, align 1, !dbg !1753
  %4 = load i8, ptr %oldbit, align 1, !dbg !1755, !range !658, !noundef !659
  %tobool = trunc i8 %4 to i1, !dbg !1755
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !1756
  ret i1 %tobool, !dbg !1757
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #1 align 16 !dbg !1758 {
entry:
  %call = call i64 @native_save_fl() #10, !dbg !1759
  ret i64 %call, !dbg !1760
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #1 align 16 !dbg !1761 {
entry:
  call void @native_irq_disable() #10, !dbg !1762
  ret void, !dbg !1763
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #1 align 16 !dbg !1764 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !1767
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1766, metadata !DIExpression()), !dbg !1768
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #11, !dbg !1769, !srcloc !1770
  %0 = load i64, ptr %flags, align 8, !dbg !1771
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !1772
  ret i64 %0, !dbg !1773
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #1 align 16 !dbg !1774 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !1775, !srcloc !1776
  ret void, !dbg !1777
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #1 align 16 !dbg !1778 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1782, metadata !DIExpression()), !dbg !1783
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1784
  %and = and i64 %0, 512, !dbg !1785
  %tobool = icmp ne i64 %and, 0, !dbg !1786
  %lnot = xor i1 %tobool, true, !dbg !1786
  %lnot.ext = zext i1 %lnot to i32, !dbg !1786
  ret i32 %lnot.ext, !dbg !1787
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #1 align 16 !dbg !1788 {
entry:
  call void @native_irq_enable() #10, !dbg !1789
  ret void, !dbg !1790
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #1 align 16 !dbg !1791 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !1792, !srcloc !1793
  ret void, !dbg !1794
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !1795 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1798, metadata !DIExpression()), !dbg !1803
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1799, metadata !DIExpression()), !dbg !1804
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !1805
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1800, metadata !DIExpression()), !dbg !1806
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1807
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1808
  %div = udiv i64 %1, 64, !dbg !1808
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1809
  store ptr %add.ptr, ptr %p, align 8, !dbg !1806
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11, !dbg !1810
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1801, metadata !DIExpression()), !dbg !1811
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1812
  %rem = urem i64 %2, 64, !dbg !1812
  %shl = shl i64 1, %rem, !dbg !1812
  store i64 %shl, ptr %mask, align 8, !dbg !1811
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !1813
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1802, metadata !DIExpression()), !dbg !1814
  %3 = load ptr, ptr %p, align 8, !dbg !1815
  %4 = load i64, ptr %3, align 8, !dbg !1816
  store i64 %4, ptr %val, align 8, !dbg !1814
  %5 = load i64, ptr %val, align 8, !dbg !1817
  %6 = load i64, ptr %mask, align 8, !dbg !1818
  %and = and i64 %5, %6, !dbg !1819
  %tobool = icmp ne i64 %and, 0, !dbg !1820
  %lnot = xor i1 %tobool, true, !dbg !1820
  %lnot1 = xor i1 %lnot, true, !dbg !1821
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !1822
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11, !dbg !1822
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !1822
  ret i1 %lnot1, !dbg !1823
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !1824 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1827, metadata !DIExpression()), !dbg !1829
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1828, metadata !DIExpression()), !dbg !1830
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1831
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1832
  %div = udiv i64 %1, 64, !dbg !1832
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1833
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !1834
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1835
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1836
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !1837
  ret i1 %call, !dbg !1838
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___clear_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !1839 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1844, metadata !DIExpression()), !dbg !1848
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1845, metadata !DIExpression()), !dbg !1849
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11, !dbg !1850
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1846, metadata !DIExpression()), !dbg !1851
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1852
  %rem = urem i64 %0, 64, !dbg !1852
  %shl = shl i64 1, %rem, !dbg !1852
  store i64 %shl, ptr %mask, align 8, !dbg !1851
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !1853
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1847, metadata !DIExpression()), !dbg !1854
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1855
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1856
  %div = udiv i64 %2, 64, !dbg !1856
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !1857
  store ptr %add.ptr, ptr %p, align 8, !dbg !1854
  %3 = load i64, ptr %mask, align 8, !dbg !1858
  %not = xor i64 %3, -1, !dbg !1859
  %4 = load ptr, ptr %p, align 8, !dbg !1860
  %5 = load i64, ptr %4, align 8, !dbg !1861
  %and = and i64 %5, %not, !dbg !1861
  store i64 %and, ptr %4, align 8, !dbg !1861
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !1862
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11, !dbg !1862
  ret void, !dbg !1862
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___clear_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !1863 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1865, metadata !DIExpression()), !dbg !1867
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1866, metadata !DIExpression()), !dbg !1868
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1869
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1870
  %div = udiv i64 %1, 64, !dbg !1870
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1871
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !1872
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1873
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1874
  call void @arch___clear_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !1875
  ret void, !dbg !1876
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !1877 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1879, metadata !DIExpression()), !dbg !1881
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1880, metadata !DIExpression()), !dbg !1882
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1883
  %1 = load i64, ptr %size.addr, align 8, !dbg !1884
  %conv = trunc i64 %1 to i32, !dbg !1884
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !1885
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1886
  %3 = load i64, ptr %size.addr, align 8, !dbg !1886
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #10, !dbg !1886
  ret void, !dbg !1887
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___clear_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !1888 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1890, metadata !DIExpression()), !dbg !1892
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1891, metadata !DIExpression()), !dbg !1893
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1894
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1895
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !1896, !srcloc !1897
  ret void, !dbg !1898
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1899 dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !1906 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1911, metadata !DIExpression()), !dbg !1913
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1912, metadata !DIExpression()), !dbg !1914
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1915
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1916
  %div = sdiv i64 %1, 64, !dbg !1916
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1917
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !1918
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1919
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1920
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !1921
  ret void, !dbg !1922
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !1923 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1925, metadata !DIExpression()), !dbg !1927
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1926, metadata !DIExpression()), !dbg !1928
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1929
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1930
  %div = sdiv i64 %1, 64, !dbg !1930
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1931
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !1932
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1933
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1934
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !1935
  ret void, !dbg !1936
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !1937 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1939, metadata !DIExpression()), !dbg !1941
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1940, metadata !DIExpression()), !dbg !1942
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1943
  %1 = load i64, ptr %size.addr, align 8, !dbg !1944
  %conv = trunc i64 %1 to i32, !dbg !1944
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !1945
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1946
  %3 = load i64, ptr %size.addr, align 8, !dbg !1946
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #10, !dbg !1946
  ret void, !dbg !1947
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !1948 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1950, metadata !DIExpression()), !dbg !1952
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1951, metadata !DIExpression()), !dbg !1953
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1954
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1956
  br i1 %1, label %if.then, label %if.else, !dbg !1957

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !1958
  %3 = load i64, ptr %nr.addr, align 8, !dbg !1958
  %shr = ashr i64 %3, 3, !dbg !1958
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !1958
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1960
  %and = and i64 %4, 7, !dbg !1960
  %sh_prom = trunc i64 %and to i32, !dbg !1960
  %shl = shl i32 1, %sh_prom, !dbg !1960
  %not = xor i32 %shl, -1, !dbg !1961
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #11, !dbg !1962, !srcloc !1963
  br label %if.end, !dbg !1964

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1965
  %6 = load i64, ptr %nr.addr, align 8, !dbg !1967
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #11, !dbg !1968, !srcloc !1969
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1970
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !1971 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1973, metadata !DIExpression()), !dbg !1975
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1974, metadata !DIExpression()), !dbg !1976
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1977
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1979
  br i1 %1, label %if.then, label %if.else, !dbg !1980

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !1981
  %3 = load i64, ptr %nr.addr, align 8, !dbg !1981
  %shr = ashr i64 %3, 3, !dbg !1981
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !1981
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1983
  %and = and i64 %4, 7, !dbg !1983
  %sh_prom = trunc i64 %and to i32, !dbg !1983
  %shl = shl i32 1, %sh_prom, !dbg !1983
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #11, !dbg !1984, !srcloc !1985
  br label %if.end, !dbg !1986

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1987
  %6 = load i64, ptr %nr.addr, align 8, !dbg !1989
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #11, !dbg !1990, !srcloc !1991
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1992
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #1 align 16 !dbg !1993 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1999, metadata !DIExpression()), !dbg !2000
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2001
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2001
  call void @_raw_spin_lock(ptr noundef %1) #10, !dbg !2001
  ret void, !dbg !2002
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #1 align 16 !dbg !2003 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2005, metadata !DIExpression()), !dbg !2006
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2007
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2007
  call void @_raw_spin_unlock(ptr noundef %1) #10, !dbg !2007
  ret void, !dbg !2008
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2009 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2012 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cmci_storm_detect() #0 align 16 !dbg !2013 {
entry:
  %retval = alloca i1, align 1
  %cnt = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %ts = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %pscr_ret__5 = alloca i64, align 8
  %__vpp_verify7 = alloca ptr, align 8
  %pfo_val__10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %now = alloca i64, align 8
  %r = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %pscr_ret__14 = alloca i32, align 4
  %__vpp_verify16 = alloca ptr, align 8
  %pfo_val__19 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify30 = alloca ptr, align 8
  %pto_val__ = alloca i64, align 8
  %__vpp_verify41 = alloca ptr, align 8
  %pto_val__45 = alloca i32, align 4
  %__vpp_verify58 = alloca ptr, align 8
  %pto_val__62 = alloca i32, align 4
  %__vpp_verify69 = alloca ptr, align 8
  %pto_val__73 = alloca i32, align 4
  %tmp84 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #11, !dbg !2066
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !2015, metadata !DIExpression()), !dbg !2067
  call void @__this_cpu_preempt_check(ptr noundef @.str) #10, !dbg !2068
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #11, !dbg !2069
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2016, metadata !DIExpression()), !dbg !2069
  br label %do.body, !dbg !2069

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !2070
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2019, metadata !DIExpression()), !dbg !2070
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2070
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2070
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !2069
  br label %do.cond, !dbg !2070

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2070

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !2071
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2021, metadata !DIExpression()), !dbg !2071
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cmci_storm_cnt) #12, !dbg !2071, !srcloc !2072
  store i32 %1, ptr %pfo_val__, align 4, !dbg !2071
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !2071
  %conv = zext i32 %2 to i64, !dbg !2071
  %conv2 = trunc i64 %conv to i32, !dbg !2071
  store i32 %conv2, ptr %tmp1, align 4, !dbg !2071
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !2069
  %3 = load i32, ptr %tmp1, align 4, !dbg !2071
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !2069
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !2069
  store i32 %4, ptr %tmp3, align 4, !dbg !2069
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #11, !dbg !2068
  %5 = load i32, ptr %tmp3, align 4, !dbg !2069
  store i32 %5, ptr %tmp, align 4, !dbg !2068
  %6 = load i32, ptr %tmp, align 4, !dbg !2068
  store i32 %6, ptr %cnt, align 4, !dbg !2067
  call void @llvm.lifetime.start.p0(i64 8, ptr %ts) #11, !dbg !2073
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !2023, metadata !DIExpression()), !dbg !2074
  call void @__this_cpu_preempt_check(ptr noundef @.str) #10, !dbg !2075
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__5) #11, !dbg !2076
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__5, metadata !2024, metadata !DIExpression()), !dbg !2076
  br label %do.body6, !dbg !2076

do.body6:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify7) #11, !dbg !2077
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify7, metadata !2027, metadata !DIExpression()), !dbg !2077
  store ptr null, ptr %__vpp_verify7, align 8, !dbg !2077
  %7 = load ptr, ptr %__vpp_verify7, align 8, !dbg !2077
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify7) #11, !dbg !2076
  br label %do.cond8, !dbg !2077

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !2077

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__10) #11, !dbg !2078
  call void @llvm.dbg.declare(metadata ptr %pfo_val__10, metadata !2029, metadata !DIExpression()), !dbg !2078
  %8 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @cmci_time_stamp) #12, !dbg !2078, !srcloc !2079
  store i64 %8, ptr %pfo_val__10, align 8, !dbg !2078
  %9 = load i64, ptr %pfo_val__10, align 8, !dbg !2078
  store i64 %9, ptr %tmp11, align 8, !dbg !2078
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__10) #11, !dbg !2076
  %10 = load i64, ptr %tmp11, align 8, !dbg !2078
  store i64 %10, ptr %pscr_ret__5, align 8, !dbg !2076
  %11 = load i64, ptr %pscr_ret__5, align 8, !dbg !2076
  store i64 %11, ptr %tmp12, align 8, !dbg !2076
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__5) #11, !dbg !2075
  %12 = load i64, ptr %tmp12, align 8, !dbg !2076
  store i64 %12, ptr %tmp4, align 8, !dbg !2075
  %13 = load i64, ptr %tmp4, align 8, !dbg !2075
  store i64 %13, ptr %ts, align 8, !dbg !2074
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #11, !dbg !2080
  call void @llvm.dbg.declare(metadata ptr %now, metadata !2031, metadata !DIExpression()), !dbg !2081
  %14 = load volatile i64, ptr @jiffies, align 64, !dbg !2082
  store i64 %14, ptr %now, align 8, !dbg !2081
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #11, !dbg !2083
  call void @llvm.dbg.declare(metadata ptr %r, metadata !2032, metadata !DIExpression()), !dbg !2084
  call void @__this_cpu_preempt_check(ptr noundef @.str) #10, !dbg !2085
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__14) #11, !dbg !2086
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__14, metadata !2033, metadata !DIExpression()), !dbg !2086
  br label %do.body15, !dbg !2086

do.body15:                                        ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify16) #11, !dbg !2087
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify16, metadata !2037, metadata !DIExpression()), !dbg !2087
  store ptr null, ptr %__vpp_verify16, align 8, !dbg !2087
  %15 = load ptr, ptr %__vpp_verify16, align 8, !dbg !2087
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify16) #11, !dbg !2086
  br label %do.cond17, !dbg !2087

do.cond17:                                        ; preds = %do.body15
  br label %do.end18, !dbg !2087

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__19) #11, !dbg !2088
  call void @llvm.dbg.declare(metadata ptr %pfo_val__19, metadata !2039, metadata !DIExpression()), !dbg !2088
  %16 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cmci_storm_state) #12, !dbg !2088, !srcloc !2089
  store i32 %16, ptr %pfo_val__19, align 4, !dbg !2088
  %17 = load i32, ptr %pfo_val__19, align 4, !dbg !2088
  %conv21 = zext i32 %17 to i64, !dbg !2088
  %conv22 = trunc i64 %conv21 to i32, !dbg !2088
  store i32 %conv22, ptr %tmp20, align 4, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__19) #11, !dbg !2086
  %18 = load i32, ptr %tmp20, align 4, !dbg !2088
  store i32 %18, ptr %pscr_ret__14, align 4, !dbg !2086
  %19 = load i32, ptr %pscr_ret__14, align 4, !dbg !2086
  store i32 %19, ptr %tmp23, align 4, !dbg !2086
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__14) #11, !dbg !2085
  %20 = load i32, ptr %tmp23, align 4, !dbg !2086
  store i32 %20, ptr %tmp13, align 4, !dbg !2085
  %21 = load i32, ptr %tmp13, align 4, !dbg !2085
  %cmp = icmp ne i32 %21, 0, !dbg !2090
  br i1 %cmp, label %if.then, label %if.end, !dbg !2091

if.then:                                          ; preds = %do.end18
  store i1 true, ptr %retval, align 1, !dbg !2092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2092

if.end:                                           ; preds = %do.end18
  %22 = load i64, ptr %ts, align 8, !dbg !2093
  %add = add i64 %22, 1000, !dbg !2093
  %23 = load i64, ptr %now, align 8, !dbg !2093
  %sub = sub i64 %add, %23, !dbg !2093
  %cmp25 = icmp sge i64 %sub, 0, !dbg !2093
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !2094

if.then27:                                        ; preds = %if.end
  %24 = load i32, ptr %cnt, align 4, !dbg !2095
  %inc = add i32 %24, 1, !dbg !2095
  store i32 %inc, ptr %cnt, align 4, !dbg !2095
  br label %if.end38, !dbg !2097

if.else:                                          ; preds = %if.end
  store i32 1, ptr %cnt, align 4, !dbg !2098
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #10, !dbg !2099
  br label %do.body28, !dbg !2099

do.body28:                                        ; preds = %if.else
  br label %do.body29, !dbg !2100

do.body29:                                        ; preds = %do.body28
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify30) #11, !dbg !2101
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify30, metadata !2041, metadata !DIExpression()), !dbg !2101
  store ptr null, ptr %__vpp_verify30, align 8, !dbg !2101
  %25 = load ptr, ptr %__vpp_verify30, align 8, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify30) #11, !dbg !2100
  br label %do.cond31, !dbg !2101

do.cond31:                                        ; preds = %do.body29
  br label %do.end32, !dbg !2101

do.end32:                                         ; preds = %do.cond31
  br label %do.body33, !dbg !2100

do.body33:                                        ; preds = %do.end32
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #11, !dbg !2102
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !2047, metadata !DIExpression()), !dbg !2102
  %26 = load i64, ptr %now, align 8, !dbg !2102
  store i64 %26, ptr %pto_val__, align 8, !dbg !2102
  %27 = load i64, ptr %pto_val__, align 8, !dbg !2102
  call void asm "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @cmci_time_stamp, i64 %27, ptr elementtype(i64) @cmci_time_stamp) #11, !dbg !2102, !srcloc !2103
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #11, !dbg !2100
  br label %do.cond34, !dbg !2102

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !2102

do.end35:                                         ; preds = %do.cond34
  br label %do.cond36, !dbg !2100

do.cond36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !2100

do.end37:                                         ; preds = %do.cond36
  br label %if.end38

if.end38:                                         ; preds = %do.end37, %if.then27
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #10, !dbg !2104
  br label %do.body39, !dbg !2104

do.body39:                                        ; preds = %if.end38
  br label %do.body40, !dbg !2105

do.body40:                                        ; preds = %do.body39
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify41) #11, !dbg !2106
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify41, metadata !2049, metadata !DIExpression()), !dbg !2106
  store ptr null, ptr %__vpp_verify41, align 8, !dbg !2106
  %28 = load ptr, ptr %__vpp_verify41, align 8, !dbg !2106
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify41) #11, !dbg !2105
  br label %do.cond42, !dbg !2106

do.cond42:                                        ; preds = %do.body40
  br label %do.end43, !dbg !2106

do.end43:                                         ; preds = %do.cond42
  br label %do.body44, !dbg !2105

do.body44:                                        ; preds = %do.end43
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__45) #11, !dbg !2107
  call void @llvm.dbg.declare(metadata ptr %pto_val__45, metadata !2053, metadata !DIExpression()), !dbg !2107
  %29 = load i32, ptr %cnt, align 4, !dbg !2107
  %conv46 = zext i32 %29 to i64, !dbg !2107
  %and = and i64 %conv46, 4294967295, !dbg !2107
  %conv47 = trunc i64 %and to i32, !dbg !2107
  store i32 %conv47, ptr %pto_val__45, align 4, !dbg !2107
  %30 = load i32, ptr %pto_val__45, align 4, !dbg !2107
  call void asm "movl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cmci_storm_cnt, i32 %30, ptr elementtype(i32) @cmci_storm_cnt) #11, !dbg !2107, !srcloc !2108
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__45) #11, !dbg !2105
  br label %do.cond48, !dbg !2107

do.cond48:                                        ; preds = %do.body44
  br label %do.end49, !dbg !2107

do.end49:                                         ; preds = %do.cond48
  br label %do.cond50, !dbg !2105

do.cond50:                                        ; preds = %do.end49
  br label %do.end51, !dbg !2105

do.end51:                                         ; preds = %do.cond50
  %31 = load i32, ptr %cnt, align 4, !dbg !2109
  %cmp52 = icmp ule i32 %31, 15, !dbg !2111
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !2112

if.then54:                                        ; preds = %do.end51
  store i1 false, ptr %retval, align 1, !dbg !2113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2113

if.end55:                                         ; preds = %do.end51
  call void @cmci_toggle_interrupt_mode(i1 noundef zeroext false) #10, !dbg !2114
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #10, !dbg !2115
  br label %do.body56, !dbg !2115

do.body56:                                        ; preds = %if.end55
  br label %do.body57, !dbg !2116

do.body57:                                        ; preds = %do.body56
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify58) #11, !dbg !2117
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify58, metadata !2055, metadata !DIExpression()), !dbg !2117
  store ptr null, ptr %__vpp_verify58, align 8, !dbg !2117
  %32 = load ptr, ptr %__vpp_verify58, align 8, !dbg !2117
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify58) #11, !dbg !2116
  br label %do.cond59, !dbg !2117

do.cond59:                                        ; preds = %do.body57
  br label %do.end60, !dbg !2117

do.end60:                                         ; preds = %do.cond59
  br label %do.body61, !dbg !2116

do.body61:                                        ; preds = %do.end60
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__62) #11, !dbg !2118
  call void @llvm.dbg.declare(metadata ptr %pto_val__62, metadata !2059, metadata !DIExpression()), !dbg !2118
  store i32 1, ptr %pto_val__62, align 4, !dbg !2118
  %33 = load i32, ptr %pto_val__62, align 4, !dbg !2118
  call void asm "movl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cmci_storm_state, i32 %33, ptr elementtype(i32) @cmci_storm_state) #11, !dbg !2118, !srcloc !2119
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__62) #11, !dbg !2116
  br label %do.cond63, !dbg !2118

do.cond63:                                        ; preds = %do.body61
  br label %do.end64, !dbg !2118

do.end64:                                         ; preds = %do.cond63
  br label %do.cond65, !dbg !2116

do.cond65:                                        ; preds = %do.end64
  br label %do.end66, !dbg !2116

do.end66:                                         ; preds = %do.cond65
  %call = call i32 @atomic_add_return(i32 noundef 1, ptr noundef @cmci_storm_on_cpus) #10, !dbg !2120
  store i32 %call, ptr %r, align 4, !dbg !2121
  call void @mce_timer_kick(i64 noundef 1000) #10, !dbg !2122
  br label %do.body67, !dbg !2123

do.body67:                                        ; preds = %do.end66
  br label %do.body68, !dbg !2124

do.body68:                                        ; preds = %do.body67
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify69) #11, !dbg !2125
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify69, metadata !2061, metadata !DIExpression()), !dbg !2125
  store ptr null, ptr %__vpp_verify69, align 8, !dbg !2125
  %34 = load ptr, ptr %__vpp_verify69, align 8, !dbg !2125
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify69) #11, !dbg !2124
  br label %do.cond70, !dbg !2125

do.cond70:                                        ; preds = %do.body68
  br label %do.end71, !dbg !2125

do.end71:                                         ; preds = %do.cond70
  br label %do.body72, !dbg !2124

do.body72:                                        ; preds = %do.end71
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__73) #11, !dbg !2126
  call void @llvm.dbg.declare(metadata ptr %pto_val__73, metadata !2064, metadata !DIExpression()), !dbg !2126
  store i32 300, ptr %pto_val__73, align 4, !dbg !2126
  %35 = load i32, ptr %pto_val__73, align 4, !dbg !2126
  call void asm sideeffect "movl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cmci_backoff_cnt, i32 %35, ptr elementtype(i32) @cmci_backoff_cnt) #11, !dbg !2126, !srcloc !2127
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__73) #11, !dbg !2124
  br label %do.cond74, !dbg !2126

do.cond74:                                        ; preds = %do.body72
  br label %do.end75, !dbg !2126

do.end75:                                         ; preds = %do.cond74
  br label %do.cond76, !dbg !2124

do.cond76:                                        ; preds = %do.end75
  br label %do.end77, !dbg !2124

do.end77:                                         ; preds = %do.cond76
  %36 = load i32, ptr %r, align 4, !dbg !2128
  %cmp78 = icmp eq i32 %36, 1, !dbg !2130
  br i1 %cmp78, label %if.then80, label %if.end86, !dbg !2131

if.then80:                                        ; preds = %do.end77
  br label %do.body81, !dbg !2132

do.body81:                                        ; preds = %if.then80
  br label %do.cond82, !dbg !2134

do.cond82:                                        ; preds = %do.body81
  br label %do.end83, !dbg !2134

do.end83:                                         ; preds = %do.cond82
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #13, !dbg !2132
  store i32 %call85, ptr %tmp84, align 4, !dbg !2134
  %37 = load i32, ptr %tmp84, align 4, !dbg !2132
  br label %if.end86, !dbg !2136

if.end86:                                         ; preds = %do.end83, %do.end77
  store i1 true, ptr %retval, align 1, !dbg !2137
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2137

cleanup:                                          ; preds = %if.end86, %if.then54, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #11, !dbg !2138
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #11, !dbg !2138
  call void @llvm.lifetime.end.p0(i64 8, ptr %ts) #11, !dbg !2138
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #11, !dbg !2138
  %38 = load i1, ptr %retval, align 1, !dbg !2138
  ret i1 %38, !dbg !2138
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_add_return(i32 noundef %i, ptr noundef %v) #1 align 16 !dbg !2139 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2141, metadata !DIExpression()), !dbg !2143
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2142, metadata !DIExpression()), !dbg !2144
  br label %do.body, !dbg !2145

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2146

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2148
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !2149
  %1 = load i32, ptr %i.addr, align 4, !dbg !2150
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2151
  %call = call i32 @raw_atomic_add_return(i32 noundef %1, ptr noundef %2) #10, !dbg !2152
  ret i32 %call, !dbg !2153
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2154 dso_local void @mce_timer_kick(i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_add_return(i32 noundef %i, ptr noundef %v) #1 align 16 !dbg !2156 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2158, metadata !DIExpression()), !dbg !2160
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2159, metadata !DIExpression()), !dbg !2161
  %0 = load i32, ptr %i.addr, align 4, !dbg !2162
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2163
  %call = call i32 @arch_atomic_add_return(i32 noundef %0, ptr noundef %1) #10, !dbg !2164
  ret i32 %call, !dbg !2165
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_write(i32 noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #1 align 16 !dbg !2166 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2168, metadata !DIExpression()), !dbg !2171
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #11, !dbg !2172
  call void @llvm.dbg.declare(metadata ptr %low, metadata !2169, metadata !DIExpression()), !dbg !2172
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #11, !dbg !2172
  call void @llvm.dbg.declare(metadata ptr %high, metadata !2170, metadata !DIExpression()), !dbg !2172
  %0 = load i32, ptr %msr.addr, align 4, !dbg !2173
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #11, !dbg !2174, !srcloc !2175
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !2174
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !2174
  store i64 %asmresult, ptr %low, align 8, !dbg !2174
  store i64 %asmresult1, ptr %high, align 8, !dbg !2174
  %2 = load i64, ptr %low, align 8, !dbg !2176
  %3 = load i64, ptr %high, align 8, !dbg !2176
  %shl = shl i64 %3, 32, !dbg !2176
  %or = or i64 %2, %shl, !dbg !2176
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #11, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #11, !dbg !2177
  ret i64 %or, !dbg !2178
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #1 align 16 !dbg !2179 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2204, metadata !DIExpression()), !dbg !2205
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2206
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #10, !dbg !2207
  ret i1 %call, !dbg !2208
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2209 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #1 align 16 !dbg !2212 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2217, metadata !DIExpression()), !dbg !2220
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !2218, metadata !DIExpression()), !dbg !2221
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2222
  %1 = load i8, ptr %branch.addr, align 1, !dbg !2223, !range !658, !noundef !659
  %tobool = trunc i8 %1 to i1, !dbg !2223
  %conv = zext i1 %tobool to i32, !dbg !2223
  %or = or i32 2, %conv, !dbg !2224
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #11
          to label %asm.fallthrough [label %l_yes], !dbg !2225, !srcloc !2226

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2227
  br label %return, !dbg !2227

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !2219), !dbg !2228
  store i1 true, ptr %retval, align 1, !dbg !2229
  br label %return, !dbg !2229

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !2230
  ret i1 %2, !dbg !2230
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #6 align 16 !dbg !2231 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2235, metadata !DIExpression()), !dbg !2238
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !2236, metadata !DIExpression()), !dbg !2239
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !2237, metadata !DIExpression()), !dbg !2240
  %0 = load i32, ptr %msr.addr, align 4, !dbg !2241
  %1 = load i32, ptr %low.addr, align 4, !dbg !2242
  %2 = load i32, ptr %high.addr, align 4, !dbg !2243
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #10, !dbg !2244
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #10, !dbg !2245
  br i1 %call, label %if.then, label %if.end, !dbg !2247

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !2248
  %4 = load i32, ptr %high.addr, align 4, !dbg !2249
  %conv = zext i32 %4 to i64, !dbg !2250
  %shl = shl i64 %conv, 32, !dbg !2251
  %5 = load i32, ptr %low.addr, align 4, !dbg !2252
  %conv1 = zext i32 %5 to i64, !dbg !2252
  %or = or i64 %shl, %conv1, !dbg !2253
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #10, !dbg !2254
  br label %if.end, !dbg !2254

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2255
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #1 align 16 !dbg !2256 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2258, metadata !DIExpression()), !dbg !2261
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !2259, metadata !DIExpression()), !dbg !2262
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !2260, metadata !DIExpression()), !dbg !2263
  %0 = load i32, ptr %msr.addr, align 4, !dbg !2264
  %1 = load i32, ptr %low.addr, align 4, !dbg !2265
  %2 = load i32, ptr %high.addr, align 4, !dbg !2266
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #11, !dbg !2267, !srcloc !2268
  ret void, !dbg !2269
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2270 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rdmsrl_safe(i32 noundef %msr, ptr noundef %p) #6 align 16 !dbg !2271 {
entry:
  %msr.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2276, metadata !DIExpression()), !dbg !2279
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2277, metadata !DIExpression()), !dbg !2280
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #11, !dbg !2281
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2278, metadata !DIExpression()), !dbg !2282
  %0 = load i32, ptr %msr.addr, align 4, !dbg !2283
  %call = call i64 @native_read_msr_safe(i32 noundef %0, ptr noundef %err) #10, !dbg !2284
  %1 = load ptr, ptr %p.addr, align 8, !dbg !2285
  store i64 %call, ptr %1, align 8, !dbg !2286
  %2 = load i32, ptr %err, align 4, !dbg !2287
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #11, !dbg !2288
  ret i32 %2, !dbg !2289
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @wrmsrl_safe(i32 noundef %msr, i64 noundef %val) #6 align 16 !dbg !2290 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2294, metadata !DIExpression()), !dbg !2296
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2295, metadata !DIExpression()), !dbg !2297
  %0 = load i32, ptr %msr.addr, align 4, !dbg !2298
  %1 = load i64, ptr %val.addr, align 8, !dbg !2299
  %conv = trunc i64 %1 to i32, !dbg !2300
  %2 = load i64, ptr %val.addr, align 8, !dbg !2301
  %shr = lshr i64 %2, 32, !dbg !2302
  %conv1 = trunc i64 %shr to i32, !dbg !2303
  %call = call i32 @wrmsr_safe(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #10, !dbg !2304
  ret i32 %call, !dbg !2305
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr_safe(i32 noundef %msr, ptr noundef %err) #6 align 16 !dbg !2306 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2310, metadata !DIExpression()), !dbg !2314
  store ptr %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !2311, metadata !DIExpression()), !dbg !2315
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #11, !dbg !2316
  call void @llvm.dbg.declare(metadata ptr %low, metadata !2312, metadata !DIExpression()), !dbg !2316
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #11, !dbg !2316
  call void @llvm.dbg.declare(metadata ptr %high, metadata !2313, metadata !DIExpression()), !dbg !2316
  %0 = load ptr, ptr %err.addr, align 8, !dbg !2317
  %1 = load i32, ptr %msr.addr, align 4, !dbg !2318
  %2 = call { i32, i64, i64 } asm sideeffect "1: rdmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=11 \0A.purgem extable_type_reg\0A .popsection\0A", "=r,={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %1) #11, !dbg !2319, !srcloc !2320
  %asmresult = extractvalue { i32, i64, i64 } %2, 0, !dbg !2319
  %asmresult1 = extractvalue { i32, i64, i64 } %2, 1, !dbg !2319
  %asmresult2 = extractvalue { i32, i64, i64 } %2, 2, !dbg !2319
  store i32 %asmresult, ptr %0, align 4, !dbg !2319
  store i64 %asmresult1, ptr %low, align 8, !dbg !2319
  store i64 %asmresult2, ptr %high, align 8, !dbg !2319
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #10, !dbg !2321
  br i1 %call, label %if.then, label %if.end, !dbg !2323

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !2324
  %4 = load i64, ptr %low, align 8, !dbg !2325
  %5 = load i64, ptr %high, align 8, !dbg !2325
  %shl = shl i64 %5, 32, !dbg !2325
  %or = or i64 %4, %shl, !dbg !2325
  %6 = load ptr, ptr %err.addr, align 8, !dbg !2326
  %7 = load i32, ptr %6, align 4, !dbg !2327
  call void @do_trace_read_msr(i32 noundef %3, i64 noundef %or, i32 noundef %7) #10, !dbg !2328
  br label %if.end, !dbg !2328

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %low, align 8, !dbg !2329
  %9 = load i64, ptr %high, align 8, !dbg !2329
  %shl3 = shl i64 %9, 32, !dbg !2329
  %or4 = or i64 %8, %shl3, !dbg !2329
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #11, !dbg !2330
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #11, !dbg !2330
  ret i64 %or4, !dbg !2331
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @wrmsr_safe(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #6 align 16 !dbg !2332 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2336, metadata !DIExpression()), !dbg !2339
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !2337, metadata !DIExpression()), !dbg !2340
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !2338, metadata !DIExpression()), !dbg !2341
  %0 = load i32, ptr %msr.addr, align 4, !dbg !2342
  %1 = load i32, ptr %low.addr, align 4, !dbg !2343
  %2 = load i32, ptr %high.addr, align 4, !dbg !2344
  %call = call i32 @native_write_msr_safe(i32 noundef %0, i32 noundef %1, i32 noundef %2) #10, !dbg !2345
  ret i32 %call, !dbg !2346
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @native_write_msr_safe(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #6 align 16 !dbg !2347 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2349, metadata !DIExpression()), !dbg !2353
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !2350, metadata !DIExpression()), !dbg !2354
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !2351, metadata !DIExpression()), !dbg !2355
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #11, !dbg !2356
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2352, metadata !DIExpression()), !dbg !2357
  %0 = load i32, ptr %msr.addr, align 4, !dbg !2358
  %1 = load i32, ptr %low.addr, align 4, !dbg !2359
  %2 = load i32, ptr %high.addr, align 4, !dbg !2360
  %3 = call i32 asm sideeffect "1: wrmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=10 \0A.purgem extable_type_reg\0A .popsection\0A", "={ax},{cx},0,{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #11, !dbg !2361, !srcloc !2362
  store i32 %3, ptr %err, align 4, !dbg !2361
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #10, !dbg !2363
  br i1 %call, label %if.then, label %if.end, !dbg !2365

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %msr.addr, align 4, !dbg !2366
  %5 = load i32, ptr %high.addr, align 4, !dbg !2367
  %conv = zext i32 %5 to i64, !dbg !2368
  %shl = shl i64 %conv, 32, !dbg !2369
  %6 = load i32, ptr %low.addr, align 4, !dbg !2370
  %conv1 = zext i32 %6 to i64, !dbg !2370
  %or = or i64 %shl, %conv1, !dbg !2371
  %7 = load i32, ptr %err, align 4, !dbg !2372
  call void @do_trace_write_msr(i32 noundef %4, i64 noundef %or, i32 noundef %7) #10, !dbg !2373
  br label %if.end, !dbg !2373

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %err, align 4, !dbg !2374
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #11, !dbg !2375
  ret i32 %8, !dbg !2376
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noredzone }
attributes #11 = { nounwind }
attributes #12 = { nounwind memory(read) }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!359, !360, !361, !362, !363, !364, !365, !366}
!llvm.ident = !{!367}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/kernel/cpu/mce/intel.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d67f83d43018145a424e5704ba88a2d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "cmci_storm_state", scope: !9, file: !2, line: 73, type: !12, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/mce/.intel.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/mce/intel\22 -D KBUILD_BASENAME=\22intel\22 -D KBUILD_MODNAME=\22intel\22 -D __KBUILD_MODNAME=kmod_intel -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/mce/intel.ll arch/x86/kernel/cpu/mce/intel.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !29, globals: !138, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !17, !22}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 75, baseType: !12, size: 32, elements: !13)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "CMCI_STORM_NONE", value: 0)
!15 = !DIEnumerator(name: "CMCI_STORM_ACTIVE", value: 1)
!16 = !DIEnumerator(name: "CMCI_STORM_SUBSIDED", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 10, baseType: !12, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "false", value: 0)
!21 = !DIEnumerator(name: "true", value: 1)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mcp_flags", file: !23, line: 256, baseType: !12, size: 32, elements: !24)
!23 = !DIFile(filename: "./arch/x86/include/asm/mce.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03bdd31ab67561f34e6be65b5717c529")
!24 = !{!25, !26, !27, !28}
!25 = !DIEnumerator(name: "MCP_TIMESTAMP", value: 1)
!26 = !DIEnumerator(name: "MCP_UC", value: 2)
!27 = !DIEnumerator(name: "MCP_DONTLOG", value: 4)
!28 = !DIEnumerator(name: "MCP_QUEUE_LOG", value: 8)
!29 = !{!30, !31, !12, !32, !33, !38, !40, !39, !44, !120, !123, !124, !125, !127, !130, !136, !129, !95}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "mce_banks_t", file: !23, line: 253, baseType: !35)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 64, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 1)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !41, line: 21, baseType: !42)
!41 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !43, line: 27, baseType: !12)
!43 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !46, line: 83, size: 2368, elements: !47)
!46 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!47 = !{!48, !61, !62, !63, !65, !66, !67, !68, !69, !70, !71, !79, !83, !87, !88, !89, !90, !91, !92, !93, !94, !98, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !116, !117, !119}
!48 = !DIDerivedType(tag: DW_TAG_member, scope: !45, file: !46, line: 84, baseType: !49, size: 32)
!49 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !45, file: !46, line: 84, size: 32, elements: !50)
!50 = !{!51, !60}
!51 = !DIDerivedType(tag: DW_TAG_member, scope: !49, file: !46, line: 90, baseType: !52, size: 32)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !49, file: !46, line: 90, size: 32, elements: !53)
!53 = !{!54, !57, !58, !59}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !52, file: !46, line: 91, baseType: !55, size: 8)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !43, line: 21, baseType: !56)
!56 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !52, file: !46, line: 93, baseType: !55, size: 8, offset: 8)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !52, file: !46, line: 95, baseType: !55, size: 8, offset: 16)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !52, file: !46, line: 96, baseType: !55, size: 8, offset: 24)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !49, file: !46, line: 99, baseType: !42, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !45, file: !46, line: 101, baseType: !55, size: 8, offset: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !45, file: !46, line: 104, baseType: !39, size: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !45, file: !46, line: 107, baseType: !64, size: 160, offset: 96)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 160, elements: !5)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !45, file: !46, line: 109, baseType: !55, size: 8, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !45, file: !46, line: 110, baseType: !55, size: 8, offset: 264)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !45, file: !46, line: 112, baseType: !55, size: 8, offset: 272)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !45, file: !46, line: 113, baseType: !55, size: 8, offset: 280)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !45, file: !46, line: 115, baseType: !42, size: 32, offset: 288)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !45, file: !46, line: 117, baseType: !39, size: 32, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, scope: !45, file: !46, line: 123, baseType: !72, size: 768, offset: 384)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !45, file: !46, line: 123, size: 768, elements: !73)
!73 = !{!74, !78}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !72, file: !46, line: 124, baseType: !75, size: 768)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 768, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 24)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !72, file: !46, line: 125, baseType: !32, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !45, file: !46, line: 127, baseType: !80, size: 128, offset: 1152)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 16)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !45, file: !46, line: 128, baseType: !84, size: 512, offset: 1280)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !45, file: !46, line: 130, baseType: !12, size: 32, offset: 1792)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !45, file: !46, line: 131, baseType: !39, size: 32, offset: 1824)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !45, file: !46, line: 133, baseType: !39, size: 32, offset: 1856)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !45, file: !46, line: 134, baseType: !39, size: 32, offset: 1888)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !45, file: !46, line: 135, baseType: !39, size: 32, offset: 1920)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !45, file: !46, line: 136, baseType: !39, size: 32, offset: 1952)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !45, file: !46, line: 137, baseType: !32, size: 64, offset: 1984)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !45, file: !46, line: 139, baseType: !95, size: 64, offset: 2048)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !41, line: 23, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !43, line: 31, baseType: !97)
!97 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !45, file: !46, line: 141, baseType: !99, size: 16, offset: 2112)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !41, line: 19, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !43, line: 24, baseType: !101)
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !45, file: !46, line: 142, baseType: !99, size: 16, offset: 2128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !45, file: !46, line: 143, baseType: !99, size: 16, offset: 2144)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !45, file: !46, line: 144, baseType: !99, size: 16, offset: 2160)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !45, file: !46, line: 146, baseType: !99, size: 16, offset: 2176)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !45, file: !46, line: 148, baseType: !99, size: 16, offset: 2192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !45, file: !46, line: 150, baseType: !99, size: 16, offset: 2208)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !45, file: !46, line: 152, baseType: !99, size: 16, offset: 2224)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !45, file: !46, line: 153, baseType: !99, size: 16, offset: 2240)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !45, file: !46, line: 154, baseType: !99, size: 16, offset: 2256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !45, file: !46, line: 156, baseType: !99, size: 16, offset: 2272)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !45, file: !46, line: 158, baseType: !113, size: 8, offset: 2288)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !114, line: 35, baseType: !115)
!114 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!115 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !45, file: !46, line: 159, baseType: !40, size: 32, offset: 2304)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !45, file: !46, line: 161, baseType: !118, size: 8, offset: 2336)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !41, line: 17, baseType: !55)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !45, file: !46, line: 162, baseType: !12, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !114, line: 42, baseType: !32)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !129)
!129 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !133, line: 19, size: 64, elements: !134)
!133 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !132, file: !133, line: 19, baseType: !35, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!138 = !{!0, !139, !144, !149, !151, !7, !153, !159, !184, !189, !319, !324, !326, !331, !341, !346, !348, !350}
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 199, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 6)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 57)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "mce_banks_owned", scope: !9, file: !2, line: 42, type: !34, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "cmci_backoff_cnt", scope: !9, file: !2, line: 51, type: !39, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "cmci_storm_on_cpus", scope: !9, file: !2, line: 81, type: !155, isLocal: true, isDefinition: true)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !114, line: 174, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 172, size: 32, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !156, file: !114, line: 173, baseType: !39, size: 32)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "cmci_discover_lock", scope: !9, file: !2, line: 57, type: !161, isLocal: true, isDefinition: true)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !162, line: 23, baseType: !163)
!162 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !162, line: 14, size: 32, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !163, file: !162, line: 15, baseType: !166, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !167, line: 44, baseType: !168)
!167 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !167, line: 14, size: 32, elements: !169)
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, scope: !168, file: !167, line: 15, baseType: !171, size: 32)
!171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !168, file: !167, line: 15, size: 32, elements: !172)
!172 = !{!173, !174, !179}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !171, file: !167, line: 16, baseType: !155, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !167, line: 24, baseType: !175, size: 16)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !171, file: !167, line: 24, size: 16, elements: !176)
!176 = !{!177, !178}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !175, file: !167, line: 25, baseType: !118, size: 8)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !175, file: !167, line: 26, baseType: !118, size: 8, offset: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !167, line: 28, baseType: !180, size: 32)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !171, file: !167, line: 28, size: 32, elements: !181)
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !180, file: !167, line: 29, baseType: !99, size: 16)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !180, file: !167, line: 30, baseType: !99, size: 16, offset: 16)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !2, line: 333, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 32)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "__already_done", scope: !191, file: !2, line: 338, type: !113, isLocal: true, isDefinition: true)
!191 = distinct !DISubprogram(name: "cmci_discover", scope: !2, file: !2, line: 274, type: !192, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !194)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !39}
!194 = !{!195, !196, !197, !202, !204, !205, !206, !207, !210, !211, !215, !216, !221, !223, !226, !228, !231, !233, !236, !238, !241, !243, !248, !250, !253, !255, !258, !260, !263, !265, !268, !270, !273, !276, !278, !281, !283, !286, !288, !291, !293, !296, !298, !301, !304, !305, !309, !312, !313, !315, !318}
!195 = !DILocalVariable(name: "banks", arg: 1, scope: !191, file: !2, line: 274, type: !39)
!196 = !DILocalVariable(name: "owned", scope: !191, file: !2, line: 276, type: !123)
!197 = !DILocalVariable(name: "__vpp_verify", scope: !198, file: !2, line: 276, type: !200)
!198 = distinct !DILexicalBlock(scope: !199, file: !2, line: 276, column: 33)
!199 = distinct !DILexicalBlock(scope: !191, file: !2, line: 276, column: 33)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!202 = !DILocalVariable(name: "tcp_ptr__", scope: !203, file: !2, line: 276, type: !32)
!203 = distinct !DILexicalBlock(scope: !199, file: !2, line: 276, column: 33)
!204 = !DILocalVariable(name: "flags", scope: !191, file: !2, line: 277, type: !32)
!205 = !DILocalVariable(name: "i", scope: !191, file: !2, line: 278, type: !39)
!206 = !DILocalVariable(name: "bios_wrong_thresh", scope: !191, file: !2, line: 279, type: !39)
!207 = !DILocalVariable(name: "__dummy", scope: !208, file: !2, line: 281, type: !32)
!208 = distinct !DILexicalBlock(scope: !209, file: !2, line: 281, column: 2)
!209 = distinct !DILexicalBlock(scope: !191, file: !2, line: 281, column: 2)
!210 = !DILocalVariable(name: "__dummy2", scope: !208, file: !2, line: 281, type: !32)
!211 = !DILocalVariable(name: "val", scope: !212, file: !2, line: 283, type: !95)
!212 = distinct !DILexicalBlock(scope: !213, file: !2, line: 282, column: 30)
!213 = distinct !DILexicalBlock(scope: !214, file: !2, line: 282, column: 2)
!214 = distinct !DILexicalBlock(scope: !191, file: !2, line: 282, column: 2)
!215 = !DILocalVariable(name: "bios_zero_thresh", scope: !212, file: !2, line: 284, type: !39)
!216 = !DILocalVariable(name: "__vpp_verify", scope: !217, file: !2, line: 298, type: !200)
!217 = distinct !DILexicalBlock(scope: !218, file: !2, line: 298, column: 4)
!218 = distinct !DILexicalBlock(scope: !219, file: !2, line: 298, column: 4)
!219 = distinct !DILexicalBlock(scope: !220, file: !2, line: 296, column: 31)
!220 = distinct !DILexicalBlock(scope: !212, file: !2, line: 296, column: 7)
!221 = !DILocalVariable(name: "tcp_ptr__", scope: !222, file: !2, line: 298, type: !32)
!222 = distinct !DILexicalBlock(scope: !218, file: !2, line: 298, column: 4)
!223 = !DILocalVariable(name: "__vpp_verify", scope: !224, file: !2, line: 298, type: !200)
!224 = distinct !DILexicalBlock(scope: !225, file: !2, line: 298, column: 4)
!225 = distinct !DILexicalBlock(scope: !219, file: !2, line: 298, column: 4)
!226 = !DILocalVariable(name: "tcp_ptr__", scope: !227, file: !2, line: 298, type: !32)
!227 = distinct !DILexicalBlock(scope: !225, file: !2, line: 298, column: 4)
!228 = !DILocalVariable(name: "__vpp_verify", scope: !229, file: !2, line: 298, type: !200)
!229 = distinct !DILexicalBlock(scope: !230, file: !2, line: 298, column: 4)
!230 = distinct !DILexicalBlock(scope: !219, file: !2, line: 298, column: 4)
!231 = !DILocalVariable(name: "tcp_ptr__", scope: !232, file: !2, line: 298, type: !32)
!232 = distinct !DILexicalBlock(scope: !230, file: !2, line: 298, column: 4)
!233 = !DILocalVariable(name: "__vpp_verify", scope: !234, file: !2, line: 298, type: !200)
!234 = distinct !DILexicalBlock(scope: !235, file: !2, line: 298, column: 4)
!235 = distinct !DILexicalBlock(scope: !219, file: !2, line: 298, column: 4)
!236 = !DILocalVariable(name: "tcp_ptr__", scope: !237, file: !2, line: 298, type: !32)
!237 = distinct !DILexicalBlock(scope: !235, file: !2, line: 298, column: 4)
!238 = !DILocalVariable(name: "__vpp_verify", scope: !239, file: !2, line: 298, type: !200)
!239 = distinct !DILexicalBlock(scope: !240, file: !2, line: 298, column: 4)
!240 = distinct !DILexicalBlock(scope: !219, file: !2, line: 298, column: 4)
!241 = !DILocalVariable(name: "tcp_ptr__", scope: !242, file: !2, line: 298, type: !32)
!242 = distinct !DILexicalBlock(scope: !240, file: !2, line: 298, column: 4)
!243 = !DILocalVariable(name: "__vpp_verify", scope: !244, file: !2, line: 322, type: !200)
!244 = distinct !DILexicalBlock(scope: !245, file: !2, line: 322, column: 4)
!245 = distinct !DILexicalBlock(scope: !246, file: !2, line: 322, column: 4)
!246 = distinct !DILexicalBlock(scope: !247, file: !2, line: 320, column: 31)
!247 = distinct !DILexicalBlock(scope: !212, file: !2, line: 320, column: 7)
!248 = !DILocalVariable(name: "tcp_ptr__", scope: !249, file: !2, line: 322, type: !32)
!249 = distinct !DILexicalBlock(scope: !245, file: !2, line: 322, column: 4)
!250 = !DILocalVariable(name: "__vpp_verify", scope: !251, file: !2, line: 322, type: !200)
!251 = distinct !DILexicalBlock(scope: !252, file: !2, line: 322, column: 4)
!252 = distinct !DILexicalBlock(scope: !246, file: !2, line: 322, column: 4)
!253 = !DILocalVariable(name: "tcp_ptr__", scope: !254, file: !2, line: 322, type: !32)
!254 = distinct !DILexicalBlock(scope: !252, file: !2, line: 322, column: 4)
!255 = !DILocalVariable(name: "__vpp_verify", scope: !256, file: !2, line: 322, type: !200)
!256 = distinct !DILexicalBlock(scope: !257, file: !2, line: 322, column: 4)
!257 = distinct !DILexicalBlock(scope: !246, file: !2, line: 322, column: 4)
!258 = !DILocalVariable(name: "tcp_ptr__", scope: !259, file: !2, line: 322, type: !32)
!259 = distinct !DILexicalBlock(scope: !257, file: !2, line: 322, column: 4)
!260 = !DILocalVariable(name: "__vpp_verify", scope: !261, file: !2, line: 322, type: !200)
!261 = distinct !DILexicalBlock(scope: !262, file: !2, line: 322, column: 4)
!262 = distinct !DILexicalBlock(scope: !246, file: !2, line: 322, column: 4)
!263 = !DILocalVariable(name: "tcp_ptr__", scope: !264, file: !2, line: 322, type: !32)
!264 = distinct !DILexicalBlock(scope: !262, file: !2, line: 322, column: 4)
!265 = !DILocalVariable(name: "__vpp_verify", scope: !266, file: !2, line: 322, type: !200)
!266 = distinct !DILexicalBlock(scope: !267, file: !2, line: 322, column: 4)
!267 = distinct !DILexicalBlock(scope: !246, file: !2, line: 322, column: 4)
!268 = !DILocalVariable(name: "tcp_ptr__", scope: !269, file: !2, line: 322, type: !32)
!269 = distinct !DILexicalBlock(scope: !267, file: !2, line: 322, column: 4)
!270 = !DILocalVariable(name: "__ret_warn_on", scope: !271, file: !2, line: 333, type: !39)
!271 = distinct !DILexicalBlock(scope: !272, file: !2, line: 333, column: 4)
!272 = distinct !DILexicalBlock(scope: !247, file: !2, line: 332, column: 10)
!273 = !DILocalVariable(name: "__vpp_verify", scope: !274, file: !2, line: 333, type: !200)
!274 = distinct !DILexicalBlock(scope: !275, file: !2, line: 333, column: 4)
!275 = distinct !DILexicalBlock(scope: !271, file: !2, line: 333, column: 4)
!276 = !DILocalVariable(name: "tcp_ptr__", scope: !277, file: !2, line: 333, type: !32)
!277 = distinct !DILexicalBlock(scope: !275, file: !2, line: 333, column: 4)
!278 = !DILocalVariable(name: "__vpp_verify", scope: !279, file: !2, line: 333, type: !200)
!279 = distinct !DILexicalBlock(scope: !280, file: !2, line: 333, column: 4)
!280 = distinct !DILexicalBlock(scope: !271, file: !2, line: 333, column: 4)
!281 = !DILocalVariable(name: "tcp_ptr__", scope: !282, file: !2, line: 333, type: !32)
!282 = distinct !DILexicalBlock(scope: !280, file: !2, line: 333, column: 4)
!283 = !DILocalVariable(name: "__vpp_verify", scope: !284, file: !2, line: 333, type: !200)
!284 = distinct !DILexicalBlock(scope: !285, file: !2, line: 333, column: 4)
!285 = distinct !DILexicalBlock(scope: !271, file: !2, line: 333, column: 4)
!286 = !DILocalVariable(name: "tcp_ptr__", scope: !287, file: !2, line: 333, type: !32)
!287 = distinct !DILexicalBlock(scope: !285, file: !2, line: 333, column: 4)
!288 = !DILocalVariable(name: "__vpp_verify", scope: !289, file: !2, line: 333, type: !200)
!289 = distinct !DILexicalBlock(scope: !290, file: !2, line: 333, column: 4)
!290 = distinct !DILexicalBlock(scope: !271, file: !2, line: 333, column: 4)
!291 = !DILocalVariable(name: "tcp_ptr__", scope: !292, file: !2, line: 333, type: !32)
!292 = distinct !DILexicalBlock(scope: !290, file: !2, line: 333, column: 4)
!293 = !DILocalVariable(name: "__vpp_verify", scope: !294, file: !2, line: 333, type: !200)
!294 = distinct !DILexicalBlock(scope: !295, file: !2, line: 333, column: 4)
!295 = distinct !DILexicalBlock(scope: !271, file: !2, line: 333, column: 4)
!296 = !DILocalVariable(name: "tcp_ptr__", scope: !297, file: !2, line: 333, type: !32)
!297 = distinct !DILexicalBlock(scope: !295, file: !2, line: 333, column: 4)
!298 = !DILocalVariable(name: "__flags", scope: !299, file: !2, line: 333, type: !39)
!299 = distinct !DILexicalBlock(scope: !300, file: !2, line: 333, column: 4)
!300 = distinct !DILexicalBlock(scope: !271, file: !2, line: 333, column: 4)
!301 = !DILocalVariable(name: "__dummy", scope: !302, file: !2, line: 336, type: !32)
!302 = distinct !DILexicalBlock(scope: !303, file: !2, line: 336, column: 2)
!303 = distinct !DILexicalBlock(scope: !191, file: !2, line: 336, column: 2)
!304 = !DILocalVariable(name: "__dummy2", scope: !302, file: !2, line: 336, type: !32)
!305 = !DILocalVariable(name: "__ret_do_once", scope: !306, file: !2, line: 338, type: !113)
!306 = distinct !DILexicalBlock(scope: !307, file: !2, line: 338, column: 3)
!307 = distinct !DILexicalBlock(scope: !308, file: !2, line: 337, column: 56)
!308 = distinct !DILexicalBlock(scope: !191, file: !2, line: 337, column: 6)
!309 = !DILocalVariable(name: "__ret_cond", scope: !310, file: !2, line: 338, type: !113)
!310 = distinct !DILexicalBlock(scope: !311, file: !2, line: 338, column: 3)
!311 = distinct !DILexicalBlock(scope: !306, file: !2, line: 338, column: 3)
!312 = !DILocalVariable(name: "__ret_once", scope: !310, file: !2, line: 338, type: !113)
!313 = !DILocalVariable(name: "__ret_do_once", scope: !314, file: !2, line: 340, type: !113)
!314 = distinct !DILexicalBlock(scope: !307, file: !2, line: 340, column: 3)
!315 = !DILocalVariable(name: "__ret_cond", scope: !316, file: !2, line: 340, type: !113)
!316 = distinct !DILexicalBlock(scope: !317, file: !2, line: 340, column: 3)
!317 = distinct !DILexicalBlock(scope: !314, file: !2, line: 340, column: 3)
!318 = !DILocalVariable(name: "__ret_once", scope: !316, file: !2, line: 340, type: !113)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !2, line: 338, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 73)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(name: "__already_done", scope: !191, file: !2, line: 340, type: !113, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !2, line: 340, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 75)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "cmci_poll_lock", scope: !9, file: !2, line: 64, type: !333, isLocal: true, isDefinition: true)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !334, line: 29, baseType: !335)
!334 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !334, line: 17, size: 32, elements: !336)
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !334, line: 18, baseType: !338, size: 32)
!338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !334, line: 18, size: 32, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !338, file: !334, line: 19, baseType: !163, size: 32)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !2, line: 251, type: !343, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 52)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "cmci_storm_cnt", scope: !9, file: !2, line: 72, type: !12, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "cmci_time_stamp", scope: !9, file: !2, line: 71, type: !32, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_write205", scope: !352, file: !353, line: 404, type: !31, isLocal: true, isDefinition: true)
!352 = distinct !DISubprogram(name: "apic_write", scope: !353, file: !353, line: 402, type: !354, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !356)
!353 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!354 = !DISubroutineType(types: !355)
!355 = !{null, !40, !40}
!356 = !{!357, !358}
!357 = !DILocalVariable(name: "reg", arg: 1, scope: !352, file: !353, line: 402, type: !40)
!358 = !DILocalVariable(name: "val", arg: 2, scope: !352, file: !353, line: 402, type: !40)
!359 = !{i32 7, !"Dwarf Version", i32 5}
!360 = !{i32 2, !"Debug Info Version", i32 3}
!361 = !{i32 1, !"wchar_size", i32 2}
!362 = !{i32 8, !"cf-protection-branch", i32 1}
!363 = !{i32 4, !"function_return_thunk_extern", i32 1}
!364 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!365 = !{i32 1, !"Code Model", i32 2}
!366 = !{i32 1, !"override-stack-alignment", i32 8}
!367 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!368 = distinct !DISubprogram(name: "mce_intel_cmci_poll", scope: !2, file: !2, line: 137, type: !369, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{!113}
!371 = !{!372, !376, !378, !380, !384, !386, !389, !391, !394}
!372 = !DILocalVariable(name: "pscr_ret__", scope: !373, file: !2, line: 139, type: !12)
!373 = distinct !DILexicalBlock(scope: !374, file: !2, line: 139, column: 6)
!374 = distinct !DILexicalBlock(scope: !375, file: !2, line: 139, column: 6)
!375 = distinct !DILexicalBlock(scope: !368, file: !2, line: 139, column: 6)
!376 = !DILocalVariable(name: "__vpp_verify", scope: !377, file: !2, line: 139, type: !200)
!377 = distinct !DILexicalBlock(scope: !373, file: !2, line: 139, column: 6)
!378 = !DILocalVariable(name: "pfo_val__", scope: !379, file: !2, line: 139, type: !40)
!379 = distinct !DILexicalBlock(scope: !373, file: !2, line: 139, column: 6)
!380 = !DILocalVariable(name: "__vpp_verify", scope: !381, file: !2, line: 146, type: !200)
!381 = distinct !DILexicalBlock(scope: !382, file: !2, line: 146, column: 28)
!382 = distinct !DILexicalBlock(scope: !383, file: !2, line: 146, column: 28)
!383 = distinct !DILexicalBlock(scope: !368, file: !2, line: 146, column: 6)
!384 = !DILocalVariable(name: "tcp_ptr__", scope: !385, file: !2, line: 146, type: !32)
!385 = distinct !DILexicalBlock(scope: !382, file: !2, line: 146, column: 28)
!386 = !DILocalVariable(name: "__vpp_verify", scope: !387, file: !2, line: 147, type: !200)
!387 = distinct !DILexicalBlock(scope: !388, file: !2, line: 147, column: 3)
!388 = distinct !DILexicalBlock(scope: !383, file: !2, line: 147, column: 3)
!389 = !DILocalVariable(name: "pto_val__", scope: !390, file: !2, line: 147, type: !40)
!390 = distinct !DILexicalBlock(scope: !388, file: !2, line: 147, column: 3)
!391 = !DILocalVariable(name: "__vpp_verify", scope: !392, file: !2, line: 149, type: !200)
!392 = distinct !DILexicalBlock(scope: !393, file: !2, line: 149, column: 3)
!393 = distinct !DILexicalBlock(scope: !383, file: !2, line: 149, column: 3)
!394 = !DILocalVariable(name: "pao_ID__", scope: !395, file: !2, line: 149, type: !396)
!395 = distinct !DILexicalBlock(scope: !393, file: !2, line: 149, column: 3)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!397 = !DILocation(line: 139, column: 6, scope: !374)
!398 = !DILocation(line: 139, column: 6, scope: !373)
!399 = !DILocation(line: 139, column: 6, scope: !377)
!400 = !DILocation(line: 139, column: 6, scope: !379)
!401 = !{i64 2152959186}
!402 = !DILocation(line: 139, column: 40, scope: !375)
!403 = !DILocation(line: 139, column: 6, scope: !368)
!404 = !DILocation(line: 140, column: 3, scope: !375)
!405 = !DILocation(line: 146, column: 28, scope: !382)
!406 = !DILocation(line: 146, column: 28, scope: !381)
!407 = !DILocation(line: 146, column: 28, scope: !385)
!408 = !{i64 2152960317}
!409 = !DILocation(line: 146, column: 6, scope: !383)
!410 = !DILocation(line: 146, column: 6, scope: !368)
!411 = !DILocation(line: 147, column: 3, scope: !383)
!412 = !DILocation(line: 147, column: 3, scope: !388)
!413 = !DILocation(line: 147, column: 3, scope: !387)
!414 = !DILocation(line: 147, column: 3, scope: !390)
!415 = !{i64 2152963765}
!416 = !DILocation(line: 149, column: 3, scope: !383)
!417 = !DILocation(line: 149, column: 3, scope: !393)
!418 = !DILocation(line: 149, column: 3, scope: !392)
!419 = !DILocation(line: 149, column: 3, scope: !395)
!420 = !DILocation(line: 149, column: 3, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !2, line: 149, column: 3)
!422 = distinct !DILexicalBlock(scope: !423, file: !2, line: 149, column: 3)
!423 = distinct !DILexicalBlock(scope: !395, file: !2, line: 149, column: 3)
!424 = !{i64 2152971872}
!425 = !DILocation(line: 151, column: 2, scope: !368)
!426 = !DILocation(line: 152, column: 1, scope: !368)
!427 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !428, file: !428, line: 313, type: !429, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !433)
!428 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!429 = !DISubroutineType(types: !430)
!430 = !{null, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!433 = !{!434}
!434 = !DILocalVariable(name: "op", arg: 1, scope: !427, file: !428, line: 313, type: !431)
!435 = !DILocation(line: 313, column: 66, scope: !427)
!436 = !DILocation(line: 313, column: 72, scope: !427)
!437 = !DISubprogram(name: "machine_check_poll", scope: !23, file: !23, line: 262, type: !438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!438 = !DISubroutineType(types: !439)
!439 = !{!113, !22, !33}
!440 = distinct !DISubprogram(name: "mce_intel_hcpu_update", scope: !2, file: !2, line: 154, type: !441, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !443)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !32}
!443 = !{!444, !445, !449, !451, !454}
!444 = !DILocalVariable(name: "cpu", arg: 1, scope: !440, file: !2, line: 154, type: !32)
!445 = !DILocalVariable(name: "__vpp_verify", scope: !446, file: !2, line: 156, type: !200)
!446 = distinct !DILexicalBlock(scope: !447, file: !2, line: 156, column: 6)
!447 = distinct !DILexicalBlock(scope: !448, file: !2, line: 156, column: 6)
!448 = distinct !DILexicalBlock(scope: !440, file: !2, line: 156, column: 6)
!449 = !DILocalVariable(name: "__ptr", scope: !450, file: !2, line: 156, type: !32)
!450 = distinct !DILexicalBlock(scope: !447, file: !2, line: 156, column: 6)
!451 = !DILocalVariable(name: "__vpp_verify", scope: !452, file: !2, line: 159, type: !200)
!452 = distinct !DILexicalBlock(scope: !453, file: !2, line: 159, column: 2)
!453 = distinct !DILexicalBlock(scope: !440, file: !2, line: 159, column: 2)
!454 = !DILocalVariable(name: "__ptr", scope: !455, file: !2, line: 159, type: !32)
!455 = distinct !DILexicalBlock(scope: !453, file: !2, line: 159, column: 2)
!456 = !DILocation(line: 154, column: 42, scope: !440)
!457 = !DILocation(line: 156, column: 6, scope: !447)
!458 = !DILocation(line: 156, column: 6, scope: !446)
!459 = !DILocation(line: 156, column: 6, scope: !450)
!460 = !DILocation(line: 156, column: 6, scope: !448)
!461 = !DILocation(line: 156, column: 37, scope: !448)
!462 = !DILocation(line: 156, column: 6, scope: !440)
!463 = !DILocation(line: 157, column: 3, scope: !448)
!464 = !DILocation(line: 159, column: 2, scope: !453)
!465 = !DILocation(line: 159, column: 2, scope: !452)
!466 = !DILocation(line: 159, column: 2, scope: !455)
!467 = !DILocation(line: 159, column: 33, scope: !440)
!468 = !DILocation(line: 160, column: 1, scope: !440)
!469 = distinct !DISubprogram(name: "atomic_dec", scope: !470, file: !470, line: 590, type: !471, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !474)
!470 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!471 = !DISubroutineType(types: !472)
!472 = !{null, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!474 = !{!475}
!475 = !DILocalVariable(name: "v", arg: 1, scope: !469, file: !470, line: 590, type: !473)
!476 = !DILocation(line: 590, column: 22, scope: !469)
!477 = !DILocation(line: 592, column: 31, scope: !469)
!478 = !DILocation(line: 592, column: 2, scope: !469)
!479 = !DILocation(line: 593, column: 17, scope: !469)
!480 = !DILocation(line: 593, column: 2, scope: !469)
!481 = !DILocation(line: 594, column: 1, scope: !469)
!482 = distinct !DISubprogram(name: "cmci_intel_adjust_timer", scope: !2, file: !2, line: 183, type: !483, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !485)
!483 = !DISubroutineType(types: !484)
!484 = !{!32, !32}
!485 = !{!486, !487, !490, !492, !494, !497, !499, !501, !504, !506, !508, !513, !515, !521}
!486 = !DILocalVariable(name: "interval", arg: 1, scope: !482, file: !2, line: 183, type: !32)
!487 = !DILocalVariable(name: "pscr_ret__", scope: !488, file: !2, line: 185, type: !39)
!488 = distinct !DILexicalBlock(scope: !489, file: !2, line: 185, column: 7)
!489 = distinct !DILexicalBlock(scope: !482, file: !2, line: 185, column: 6)
!490 = !DILocalVariable(name: "__vpp_verify", scope: !491, file: !2, line: 185, type: !200)
!491 = distinct !DILexicalBlock(scope: !488, file: !2, line: 185, column: 7)
!492 = !DILocalVariable(name: "pfo_val__", scope: !493, file: !2, line: 185, type: !40)
!493 = distinct !DILexicalBlock(scope: !488, file: !2, line: 185, column: 7)
!494 = !DILocalVariable(name: "pscr_ret__", scope: !495, file: !2, line: 186, type: !12)
!495 = distinct !DILexicalBlock(scope: !496, file: !2, line: 186, column: 7)
!496 = distinct !DILexicalBlock(scope: !489, file: !2, line: 186, column: 7)
!497 = !DILocalVariable(name: "__vpp_verify", scope: !498, file: !2, line: 186, type: !200)
!498 = distinct !DILexicalBlock(scope: !495, file: !2, line: 186, column: 7)
!499 = !DILocalVariable(name: "pfo_val__", scope: !500, file: !2, line: 186, type: !40)
!500 = distinct !DILexicalBlock(scope: !495, file: !2, line: 186, column: 7)
!501 = !DILocalVariable(name: "pscr_ret__", scope: !502, file: !2, line: 191, type: !12)
!502 = distinct !DILexicalBlock(scope: !503, file: !2, line: 191, column: 10)
!503 = distinct !DILexicalBlock(scope: !482, file: !2, line: 191, column: 10)
!504 = !DILocalVariable(name: "__vpp_verify", scope: !505, file: !2, line: 191, type: !200)
!505 = distinct !DILexicalBlock(scope: !502, file: !2, line: 191, column: 10)
!506 = !DILocalVariable(name: "pfo_val__", scope: !507, file: !2, line: 191, type: !40)
!507 = distinct !DILexicalBlock(scope: !502, file: !2, line: 191, column: 10)
!508 = !DILocalVariable(name: "__vpp_verify", scope: !509, file: !2, line: 199, type: !200)
!509 = distinct !DILexicalBlock(scope: !510, file: !2, line: 199, column: 3)
!510 = distinct !DILexicalBlock(scope: !511, file: !2, line: 199, column: 3)
!511 = distinct !DILexicalBlock(scope: !512, file: !2, line: 199, column: 3)
!512 = distinct !DILexicalBlock(scope: !482, file: !2, line: 191, column: 45)
!513 = !DILocalVariable(name: "pto_val__", scope: !514, file: !2, line: 199, type: !40)
!514 = distinct !DILexicalBlock(scope: !510, file: !2, line: 199, column: 3)
!515 = !DILocalVariable(name: "__vpp_verify", scope: !516, file: !2, line: 211, type: !200)
!516 = distinct !DILexicalBlock(scope: !517, file: !2, line: 211, column: 4)
!517 = distinct !DILexicalBlock(scope: !518, file: !2, line: 211, column: 4)
!518 = distinct !DILexicalBlock(scope: !519, file: !2, line: 211, column: 4)
!519 = distinct !DILexicalBlock(scope: !520, file: !2, line: 210, column: 42)
!520 = distinct !DILexicalBlock(scope: !512, file: !2, line: 210, column: 7)
!521 = !DILocalVariable(name: "pto_val__", scope: !522, file: !2, line: 211, type: !40)
!522 = distinct !DILexicalBlock(scope: !517, file: !2, line: 211, column: 4)
!523 = !DILocation(line: 183, column: 53, scope: !482)
!524 = !DILocation(line: 185, column: 7, scope: !488)
!525 = !DILocation(line: 185, column: 7, scope: !491)
!526 = !DILocation(line: 185, column: 7, scope: !493)
!527 = !{i64 2152980987}
!528 = !DILocation(line: 185, column: 7, scope: !489)
!529 = !DILocation(line: 185, column: 39, scope: !489)
!530 = !DILocation(line: 185, column: 44, scope: !489)
!531 = !DILocation(line: 186, column: 7, scope: !496)
!532 = !DILocation(line: 186, column: 7, scope: !495)
!533 = !DILocation(line: 186, column: 7, scope: !498)
!534 = !DILocation(line: 186, column: 7, scope: !500)
!535 = !{i64 2152988355}
!536 = !DILocation(line: 186, column: 41, scope: !489)
!537 = !DILocation(line: 185, column: 6, scope: !482)
!538 = !DILocation(line: 187, column: 3, scope: !539)
!539 = distinct !DILexicalBlock(scope: !489, file: !2, line: 186, column: 64)
!540 = !DILocation(line: 188, column: 3, scope: !539)
!541 = !DILocation(line: 191, column: 10, scope: !503)
!542 = !DILocation(line: 191, column: 10, scope: !502)
!543 = !DILocation(line: 191, column: 10, scope: !505)
!544 = !DILocation(line: 191, column: 10, scope: !507)
!545 = !{i64 2152991664}
!546 = !DILocation(line: 191, column: 2, scope: !482)
!547 = !DILocation(line: 199, column: 3, scope: !511)
!548 = !DILocation(line: 199, column: 3, scope: !510)
!549 = !DILocation(line: 199, column: 3, scope: !509)
!550 = !DILocation(line: 199, column: 3, scope: !514)
!551 = !{i64 2152995874}
!552 = !DILocation(line: 200, column: 8, scope: !553)
!553 = distinct !DILexicalBlock(scope: !512, file: !2, line: 200, column: 7)
!554 = !DILocation(line: 200, column: 7, scope: !512)
!555 = !DILocation(line: 201, column: 4, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !2, line: 201, column: 4)
!557 = !DILocation(line: 201, column: 4, scope: !558)
!558 = distinct !DILexicalBlock(scope: !556, file: !2, line: 201, column: 4)
!559 = !DILocation(line: 201, column: 4, scope: !553)
!560 = !DILocation(line: 200, column: 48, scope: !553)
!561 = !DILocation(line: 210, column: 8, scope: !520)
!562 = !DILocation(line: 210, column: 7, scope: !512)
!563 = !DILocation(line: 211, column: 4, scope: !518)
!564 = !DILocation(line: 211, column: 4, scope: !517)
!565 = !DILocation(line: 211, column: 4, scope: !516)
!566 = !DILocation(line: 211, column: 4, scope: !522)
!567 = !{i64 2153000870}
!568 = !DILocation(line: 212, column: 4, scope: !519)
!569 = !DILocation(line: 213, column: 4, scope: !519)
!570 = !DILocation(line: 214, column: 3, scope: !519)
!571 = !DILocation(line: 215, column: 3, scope: !512)
!572 = !DILocation(line: 219, column: 10, scope: !512)
!573 = !DILocation(line: 219, column: 3, scope: !512)
!574 = !DILocation(line: 221, column: 1, scope: !482)
!575 = !DISubprogram(name: "mce_notify_irq", scope: !23, file: !23, line: 264, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!576 = !DISubroutineType(types: !577)
!577 = !{!39}
!578 = distinct !DISubprogram(name: "atomic_sub_return", scope: !470, file: !470, line: 286, type: !579, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !581)
!579 = !DISubroutineType(types: !580)
!580 = !{!39, !39, !473}
!581 = !{!582, !583}
!582 = !DILocalVariable(name: "i", arg: 1, scope: !578, file: !470, line: 286, type: !39)
!583 = !DILocalVariable(name: "v", arg: 2, scope: !578, file: !470, line: 286, type: !473)
!584 = !DILocation(line: 286, column: 23, scope: !578)
!585 = !DILocation(line: 286, column: 36, scope: !578)
!586 = !DILocation(line: 288, column: 2, scope: !578)
!587 = !DILocation(line: 288, column: 2, scope: !588)
!588 = distinct !DILexicalBlock(scope: !578, file: !470, line: 288, column: 2)
!589 = !DILocation(line: 289, column: 31, scope: !578)
!590 = !DILocation(line: 289, column: 2, scope: !578)
!591 = !DILocation(line: 290, column: 31, scope: !578)
!592 = !DILocation(line: 290, column: 34, scope: !578)
!593 = !DILocation(line: 290, column: 9, scope: !578)
!594 = !DILocation(line: 290, column: 2, scope: !578)
!595 = !DISubprogram(name: "_printk", scope: !596, file: !596, line: 153, type: !597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!596 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!597 = !DISubroutineType(types: !598)
!598 = !{!39, !431, null}
!599 = distinct !DISubprogram(name: "atomic_read", scope: !470, file: !470, line: 30, type: !600, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !604)
!600 = !DISubroutineType(types: !601)
!601 = !{!39, !602}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!604 = !{!605}
!605 = !DILocalVariable(name: "v", arg: 1, scope: !599, file: !470, line: 30, type: !602)
!606 = !DILocation(line: 30, column: 29, scope: !599)
!607 = !DILocation(line: 32, column: 25, scope: !599)
!608 = !DILocation(line: 32, column: 2, scope: !599)
!609 = !DILocation(line: 33, column: 25, scope: !599)
!610 = !DILocation(line: 33, column: 9, scope: !599)
!611 = !DILocation(line: 33, column: 2, scope: !599)
!612 = distinct !DISubprogram(name: "cmci_toggle_interrupt_mode", scope: !2, file: !2, line: 162, type: !613, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !615)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !113}
!615 = !{!616, !617, !618, !619, !620, !621, !624, !625, !628, !630, !633}
!616 = !DILocalVariable(name: "on", arg: 1, scope: !612, file: !2, line: 162, type: !113)
!617 = !DILocalVariable(name: "flags", scope: !612, file: !2, line: 164, type: !32)
!618 = !DILocalVariable(name: "owned", scope: !612, file: !2, line: 164, type: !123)
!619 = !DILocalVariable(name: "bank", scope: !612, file: !2, line: 165, type: !39)
!620 = !DILocalVariable(name: "val", scope: !612, file: !2, line: 166, type: !95)
!621 = !DILocalVariable(name: "__dummy", scope: !622, file: !2, line: 168, type: !32)
!622 = distinct !DILexicalBlock(scope: !623, file: !2, line: 168, column: 2)
!623 = distinct !DILexicalBlock(scope: !612, file: !2, line: 168, column: 2)
!624 = !DILocalVariable(name: "__dummy2", scope: !622, file: !2, line: 168, type: !32)
!625 = !DILocalVariable(name: "__vpp_verify", scope: !626, file: !2, line: 169, type: !200)
!626 = distinct !DILexicalBlock(scope: !627, file: !2, line: 169, column: 10)
!627 = distinct !DILexicalBlock(scope: !612, file: !2, line: 169, column: 10)
!628 = !DILocalVariable(name: "tcp_ptr__", scope: !629, file: !2, line: 169, type: !32)
!629 = distinct !DILexicalBlock(scope: !627, file: !2, line: 169, column: 10)
!630 = !DILocalVariable(name: "__dummy", scope: !631, file: !2, line: 180, type: !32)
!631 = distinct !DILexicalBlock(scope: !632, file: !2, line: 180, column: 2)
!632 = distinct !DILexicalBlock(scope: !612, file: !2, line: 180, column: 2)
!633 = !DILocalVariable(name: "__dummy2", scope: !631, file: !2, line: 180, type: !32)
!634 = !DILocation(line: 162, column: 45, scope: !612)
!635 = !DILocation(line: 164, column: 2, scope: !612)
!636 = !DILocation(line: 164, column: 16, scope: !612)
!637 = !DILocation(line: 164, column: 24, scope: !612)
!638 = !DILocation(line: 165, column: 2, scope: !612)
!639 = !DILocation(line: 165, column: 6, scope: !612)
!640 = !DILocation(line: 166, column: 2, scope: !612)
!641 = !DILocation(line: 166, column: 6, scope: !612)
!642 = !DILocation(line: 168, column: 2, scope: !612)
!643 = !DILocation(line: 168, column: 2, scope: !622)
!644 = !DILocation(line: 168, column: 2, scope: !623)
!645 = !DILocation(line: 169, column: 10, scope: !627)
!646 = !DILocation(line: 169, column: 10, scope: !626)
!647 = !DILocation(line: 169, column: 10, scope: !629)
!648 = !{i64 2152977512}
!649 = !DILocation(line: 169, column: 8, scope: !612)
!650 = !DILocation(line: 170, column: 2, scope: !651)
!651 = distinct !DILexicalBlock(scope: !612, file: !2, line: 170, column: 2)
!652 = !DILocation(line: 170, column: 2, scope: !653)
!653 = distinct !DILexicalBlock(scope: !651, file: !2, line: 170, column: 2)
!654 = !DILocation(line: 171, column: 3, scope: !655)
!655 = distinct !DILexicalBlock(scope: !653, file: !2, line: 170, column: 46)
!656 = !DILocation(line: 173, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !655, file: !2, line: 173, column: 7)
!658 = !{i8 0, i8 2}
!659 = !{}
!660 = !DILocation(line: 173, column: 7, scope: !655)
!661 = !DILocation(line: 174, column: 8, scope: !657)
!662 = !DILocation(line: 174, column: 4, scope: !657)
!663 = !DILocation(line: 176, column: 8, scope: !657)
!664 = !DILocation(line: 178, column: 10, scope: !655)
!665 = !DILocation(line: 178, column: 35, scope: !655)
!666 = !DILocation(line: 178, column: 3, scope: !655)
!667 = !DILocation(line: 179, column: 2, scope: !655)
!668 = distinct !{!668, !650, !669, !670, !671}
!669 = !DILocation(line: 179, column: 2, scope: !651)
!670 = !{!"llvm.loop.mustprogress"}
!671 = !{!"llvm.loop.unroll.disable"}
!672 = !DILocation(line: 180, column: 2, scope: !612)
!673 = !DILocation(line: 180, column: 2, scope: !631)
!674 = !DILocation(line: 180, column: 2, scope: !632)
!675 = !DILocation(line: 181, column: 1, scope: !612)
!676 = distinct !DISubprogram(name: "cmci_recheck", scope: !2, file: !2, line: 349, type: !677, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !679)
!677 = !DISubroutineType(types: !678)
!678 = !{null}
!679 = !{!680, !681, !682, !686, !688, !692, !693, !696, !698, !702}
!680 = !DILocalVariable(name: "flags", scope: !676, file: !2, line: 351, type: !32)
!681 = !DILocalVariable(name: "banks", scope: !676, file: !2, line: 352, type: !39)
!682 = !DILocalVariable(name: "__vpp_verify", scope: !683, file: !2, line: 354, type: !200)
!683 = distinct !DILexicalBlock(scope: !684, file: !2, line: 354, column: 21)
!684 = distinct !DILexicalBlock(scope: !685, file: !2, line: 354, column: 21)
!685 = distinct !DILexicalBlock(scope: !676, file: !2, line: 354, column: 6)
!686 = !DILocalVariable(name: "tcp_ptr__", scope: !687, file: !2, line: 354, type: !32)
!687 = distinct !DILexicalBlock(scope: !684, file: !2, line: 354, column: 21)
!688 = !DILocalVariable(name: "__dummy", scope: !689, file: !2, line: 357, type: !32)
!689 = distinct !DILexicalBlock(scope: !690, file: !2, line: 357, column: 2)
!690 = distinct !DILexicalBlock(scope: !691, file: !2, line: 357, column: 2)
!691 = distinct !DILexicalBlock(scope: !676, file: !2, line: 357, column: 2)
!692 = !DILocalVariable(name: "__dummy2", scope: !689, file: !2, line: 357, type: !32)
!693 = !DILocalVariable(name: "__vpp_verify", scope: !694, file: !2, line: 358, type: !200)
!694 = distinct !DILexicalBlock(scope: !695, file: !2, line: 358, column: 24)
!695 = distinct !DILexicalBlock(scope: !676, file: !2, line: 358, column: 24)
!696 = !DILocalVariable(name: "tcp_ptr__", scope: !697, file: !2, line: 358, type: !32)
!697 = distinct !DILexicalBlock(scope: !695, file: !2, line: 358, column: 24)
!698 = !DILocalVariable(name: "__dummy", scope: !699, file: !2, line: 359, type: !32)
!699 = distinct !DILexicalBlock(scope: !700, file: !2, line: 359, column: 2)
!700 = distinct !DILexicalBlock(scope: !701, file: !2, line: 359, column: 2)
!701 = distinct !DILexicalBlock(scope: !676, file: !2, line: 359, column: 2)
!702 = !DILocalVariable(name: "__dummy2", scope: !699, file: !2, line: 359, type: !32)
!703 = !DILocation(line: 351, column: 2, scope: !676)
!704 = !DILocation(line: 351, column: 16, scope: !676)
!705 = !DILocation(line: 352, column: 2, scope: !676)
!706 = !DILocation(line: 352, column: 6, scope: !676)
!707 = !DILocation(line: 354, column: 21, scope: !684)
!708 = !DILocation(line: 354, column: 21, scope: !683)
!709 = !DILocation(line: 354, column: 21, scope: !687)
!710 = !{i64 2153050350}
!711 = !DILocation(line: 354, column: 7, scope: !685)
!712 = !DILocation(line: 354, column: 45, scope: !685)
!713 = !DILocation(line: 354, column: 49, scope: !685)
!714 = !DILocation(line: 354, column: 6, scope: !676)
!715 = !DILocation(line: 355, column: 3, scope: !685)
!716 = !DILocation(line: 357, column: 2, scope: !676)
!717 = !DILocation(line: 357, column: 2, scope: !691)
!718 = !DILocation(line: 357, column: 2, scope: !689)
!719 = !DILocation(line: 357, column: 2, scope: !690)
!720 = !DILocation(line: 358, column: 24, scope: !695)
!721 = !DILocation(line: 358, column: 24, scope: !694)
!722 = !DILocation(line: 358, column: 24, scope: !697)
!723 = !{i64 2153051255}
!724 = !DILocation(line: 358, column: 2, scope: !676)
!725 = !DILocation(line: 359, column: 2, scope: !676)
!726 = !DILocation(line: 359, column: 2, scope: !701)
!727 = !DILocation(line: 359, column: 2, scope: !699)
!728 = !DILocation(line: 359, column: 2, scope: !700)
!729 = !DILocation(line: 359, column: 2, scope: !730)
!730 = distinct !DILexicalBlock(scope: !700, file: !2, line: 359, column: 2)
!731 = !DILocation(line: 360, column: 1, scope: !676)
!732 = !DISubprogram(name: "mce_available", scope: !23, file: !23, line: 245, type: !733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!733 = !DISubroutineType(types: !734)
!734 = !{!39, !44}
!735 = distinct !DISubprogram(name: "cmci_supported", scope: !2, file: !2, line: 83, type: !736, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{!39, !38}
!738 = !{!739, !740, !741, !743}
!739 = !DILocalVariable(name: "banks", arg: 1, scope: !735, file: !2, line: 83, type: !38)
!740 = !DILocalVariable(name: "cap", scope: !735, file: !2, line: 85, type: !95)
!741 = !DILocalVariable(name: "__UNIQUE_ID___x217", scope: !742, file: !2, line: 102, type: !12)
!742 = distinct !DILexicalBlock(scope: !735, file: !2, line: 102, column: 11)
!743 = !DILocalVariable(name: "__UNIQUE_ID___y218", scope: !742, file: !2, line: 102, type: !12)
!744 = !DILocation(line: 83, column: 32, scope: !735)
!745 = !DILocation(line: 85, column: 2, scope: !735)
!746 = !DILocation(line: 85, column: 6, scope: !735)
!747 = !DILocation(line: 87, column: 14, scope: !748)
!748 = distinct !DILexicalBlock(scope: !735, file: !2, line: 87, column: 6)
!749 = !DILocation(line: 87, column: 28, scope: !748)
!750 = !DILocation(line: 87, column: 39, scope: !748)
!751 = !DILocation(line: 87, column: 6, scope: !735)
!752 = !DILocation(line: 88, column: 3, scope: !748)
!753 = !DILocation(line: 95, column: 20, scope: !754)
!754 = distinct !DILexicalBlock(scope: !735, file: !2, line: 95, column: 6)
!755 = !DILocation(line: 95, column: 6, scope: !754)
!756 = !DILocation(line: 95, column: 31, scope: !754)
!757 = !DILocation(line: 95, column: 51, scope: !754)
!758 = !DILocation(line: 96, column: 20, scope: !754)
!759 = !DILocation(line: 96, column: 6, scope: !754)
!760 = !DILocation(line: 96, column: 31, scope: !754)
!761 = !DILocation(line: 95, column: 6, scope: !735)
!762 = !DILocation(line: 97, column: 3, scope: !754)
!763 = !DILocation(line: 99, column: 38, scope: !764)
!764 = distinct !DILexicalBlock(scope: !735, file: !2, line: 99, column: 6)
!765 = !DILocation(line: 99, column: 7, scope: !764)
!766 = !DILocation(line: 99, column: 41, scope: !764)
!767 = !DILocation(line: 99, column: 60, scope: !764)
!768 = !DILocation(line: 99, column: 6, scope: !735)
!769 = !DILocation(line: 100, column: 3, scope: !764)
!770 = !DILocation(line: 101, column: 2, scope: !735)
!771 = !DILocation(line: 102, column: 11, scope: !742)
!772 = !DILocation(line: 102, column: 11, scope: !735)
!773 = !DILocation(line: 102, column: 3, scope: !735)
!774 = !DILocation(line: 102, column: 9, scope: !735)
!775 = !DILocation(line: 103, column: 12, scope: !735)
!776 = !DILocation(line: 103, column: 16, scope: !735)
!777 = !DILocation(line: 103, column: 10, scope: !735)
!778 = !DILocation(line: 103, column: 9, scope: !735)
!779 = !DILocation(line: 103, column: 2, scope: !735)
!780 = !DILocation(line: 104, column: 1, scope: !735)
!781 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !782, file: !782, line: 101, type: !783, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !785)
!782 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!783 = !DISubroutineType(types: !784)
!784 = !{!32}
!785 = !{!786}
!786 = !DILocalVariable(name: "flags", scope: !781, file: !782, line: 103, type: !32)
!787 = !DILocation(line: 103, column: 2, scope: !781)
!788 = !DILocation(line: 103, column: 16, scope: !781)
!789 = !DILocation(line: 103, column: 24, scope: !781)
!790 = !DILocation(line: 104, column: 2, scope: !781)
!791 = !DILocation(line: 105, column: 9, scope: !781)
!792 = !DILocation(line: 106, column: 1, scope: !781)
!793 = !DILocation(line: 105, column: 2, scope: !781)
!794 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !782, file: !782, line: 132, type: !441, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !795)
!795 = !{!796}
!796 = !DILocalVariable(name: "flags", arg: 1, scope: !794, file: !782, line: 132, type: !32)
!797 = !DILocation(line: 132, column: 66, scope: !794)
!798 = !DILocation(line: 134, column: 32, scope: !799)
!799 = distinct !DILexicalBlock(scope: !794, file: !782, line: 134, column: 6)
!800 = !DILocation(line: 134, column: 7, scope: !799)
!801 = !DILocation(line: 134, column: 6, scope: !794)
!802 = !DILocation(line: 135, column: 3, scope: !799)
!803 = !DILocation(line: 136, column: 1, scope: !794)
!804 = distinct !DISubprogram(name: "cmci_clear", scope: !2, file: !2, line: 379, type: !677, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !805)
!805 = !{!806, !807, !808, !809, !812, !813, !816}
!806 = !DILocalVariable(name: "flags", scope: !804, file: !2, line: 381, type: !32)
!807 = !DILocalVariable(name: "i", scope: !804, file: !2, line: 382, type: !39)
!808 = !DILocalVariable(name: "banks", scope: !804, file: !2, line: 383, type: !39)
!809 = !DILocalVariable(name: "__dummy", scope: !810, file: !2, line: 387, type: !32)
!810 = distinct !DILexicalBlock(scope: !811, file: !2, line: 387, column: 2)
!811 = distinct !DILexicalBlock(scope: !804, file: !2, line: 387, column: 2)
!812 = !DILocalVariable(name: "__dummy2", scope: !810, file: !2, line: 387, type: !32)
!813 = !DILocalVariable(name: "__dummy", scope: !814, file: !2, line: 390, type: !32)
!814 = distinct !DILexicalBlock(scope: !815, file: !2, line: 390, column: 2)
!815 = distinct !DILexicalBlock(scope: !804, file: !2, line: 390, column: 2)
!816 = !DILocalVariable(name: "__dummy2", scope: !814, file: !2, line: 390, type: !32)
!817 = !DILocation(line: 381, column: 2, scope: !804)
!818 = !DILocation(line: 381, column: 16, scope: !804)
!819 = !DILocation(line: 382, column: 2, scope: !804)
!820 = !DILocation(line: 382, column: 6, scope: !804)
!821 = !DILocation(line: 383, column: 2, scope: !804)
!822 = !DILocation(line: 383, column: 6, scope: !804)
!823 = !DILocation(line: 385, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !804, file: !2, line: 385, column: 6)
!825 = !DILocation(line: 385, column: 6, scope: !804)
!826 = !DILocation(line: 386, column: 3, scope: !824)
!827 = !DILocation(line: 387, column: 2, scope: !804)
!828 = !DILocation(line: 387, column: 2, scope: !810)
!829 = !DILocation(line: 387, column: 2, scope: !811)
!830 = !DILocation(line: 388, column: 9, scope: !831)
!831 = distinct !DILexicalBlock(scope: !804, file: !2, line: 388, column: 2)
!832 = !DILocation(line: 388, column: 7, scope: !831)
!833 = !DILocation(line: 388, column: 14, scope: !834)
!834 = distinct !DILexicalBlock(scope: !831, file: !2, line: 388, column: 2)
!835 = !DILocation(line: 388, column: 18, scope: !834)
!836 = !DILocation(line: 388, column: 16, scope: !834)
!837 = !DILocation(line: 388, column: 2, scope: !831)
!838 = !DILocation(line: 389, column: 23, scope: !834)
!839 = !DILocation(line: 389, column: 3, scope: !834)
!840 = !DILocation(line: 388, column: 26, scope: !834)
!841 = !DILocation(line: 388, column: 2, scope: !834)
!842 = distinct !{!842, !837, !843, !670, !671}
!843 = !DILocation(line: 389, column: 24, scope: !831)
!844 = !DILocation(line: 390, column: 2, scope: !804)
!845 = !DILocation(line: 390, column: 2, scope: !814)
!846 = !DILocation(line: 390, column: 2, scope: !815)
!847 = !DILocation(line: 391, column: 1, scope: !804)
!848 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !849, file: !849, line: 32, type: !850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!849 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!850 = !DISubroutineType(types: !851)
!851 = !{!32, !852}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!853 = distinct !DISubprogram(name: "__cmci_disable_bank", scope: !2, file: !2, line: 363, type: !192, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !854)
!854 = !{!855, !856, !857, !861, !863, !866, !868, !871, !873, !876, !878, !881, !883, !886, !888, !891, !893, !896, !898, !901, !903, !906}
!855 = !DILocalVariable(name: "bank", arg: 1, scope: !853, file: !2, line: 363, type: !39)
!856 = !DILocalVariable(name: "val", scope: !853, file: !2, line: 365, type: !95)
!857 = !DILocalVariable(name: "__vpp_verify", scope: !858, file: !2, line: 367, type: !200)
!858 = distinct !DILexicalBlock(scope: !859, file: !2, line: 367, column: 7)
!859 = distinct !DILexicalBlock(scope: !860, file: !2, line: 367, column: 7)
!860 = distinct !DILexicalBlock(scope: !853, file: !2, line: 367, column: 6)
!861 = !DILocalVariable(name: "tcp_ptr__", scope: !862, file: !2, line: 367, type: !32)
!862 = distinct !DILexicalBlock(scope: !859, file: !2, line: 367, column: 7)
!863 = !DILocalVariable(name: "__vpp_verify", scope: !864, file: !2, line: 367, type: !200)
!864 = distinct !DILexicalBlock(scope: !865, file: !2, line: 367, column: 7)
!865 = distinct !DILexicalBlock(scope: !860, file: !2, line: 367, column: 7)
!866 = !DILocalVariable(name: "tcp_ptr__", scope: !867, file: !2, line: 367, type: !32)
!867 = distinct !DILexicalBlock(scope: !865, file: !2, line: 367, column: 7)
!868 = !DILocalVariable(name: "__vpp_verify", scope: !869, file: !2, line: 367, type: !200)
!869 = distinct !DILexicalBlock(scope: !870, file: !2, line: 367, column: 7)
!870 = distinct !DILexicalBlock(scope: !860, file: !2, line: 367, column: 7)
!871 = !DILocalVariable(name: "tcp_ptr__", scope: !872, file: !2, line: 367, type: !32)
!872 = distinct !DILexicalBlock(scope: !870, file: !2, line: 367, column: 7)
!873 = !DILocalVariable(name: "__vpp_verify", scope: !874, file: !2, line: 367, type: !200)
!874 = distinct !DILexicalBlock(scope: !875, file: !2, line: 367, column: 7)
!875 = distinct !DILexicalBlock(scope: !860, file: !2, line: 367, column: 7)
!876 = !DILocalVariable(name: "tcp_ptr__", scope: !877, file: !2, line: 367, type: !32)
!877 = distinct !DILexicalBlock(scope: !875, file: !2, line: 367, column: 7)
!878 = !DILocalVariable(name: "__vpp_verify", scope: !879, file: !2, line: 367, type: !200)
!879 = distinct !DILexicalBlock(scope: !880, file: !2, line: 367, column: 7)
!880 = distinct !DILexicalBlock(scope: !860, file: !2, line: 367, column: 7)
!881 = !DILocalVariable(name: "tcp_ptr__", scope: !882, file: !2, line: 367, type: !32)
!882 = distinct !DILexicalBlock(scope: !880, file: !2, line: 367, column: 7)
!883 = !DILocalVariable(name: "__vpp_verify", scope: !884, file: !2, line: 372, type: !200)
!884 = distinct !DILexicalBlock(scope: !885, file: !2, line: 372, column: 2)
!885 = distinct !DILexicalBlock(scope: !853, file: !2, line: 372, column: 2)
!886 = !DILocalVariable(name: "tcp_ptr__", scope: !887, file: !2, line: 372, type: !32)
!887 = distinct !DILexicalBlock(scope: !885, file: !2, line: 372, column: 2)
!888 = !DILocalVariable(name: "__vpp_verify", scope: !889, file: !2, line: 372, type: !200)
!889 = distinct !DILexicalBlock(scope: !890, file: !2, line: 372, column: 2)
!890 = distinct !DILexicalBlock(scope: !853, file: !2, line: 372, column: 2)
!891 = !DILocalVariable(name: "tcp_ptr__", scope: !892, file: !2, line: 372, type: !32)
!892 = distinct !DILexicalBlock(scope: !890, file: !2, line: 372, column: 2)
!893 = !DILocalVariable(name: "__vpp_verify", scope: !894, file: !2, line: 372, type: !200)
!894 = distinct !DILexicalBlock(scope: !895, file: !2, line: 372, column: 2)
!895 = distinct !DILexicalBlock(scope: !853, file: !2, line: 372, column: 2)
!896 = !DILocalVariable(name: "tcp_ptr__", scope: !897, file: !2, line: 372, type: !32)
!897 = distinct !DILexicalBlock(scope: !895, file: !2, line: 372, column: 2)
!898 = !DILocalVariable(name: "__vpp_verify", scope: !899, file: !2, line: 372, type: !200)
!899 = distinct !DILexicalBlock(scope: !900, file: !2, line: 372, column: 2)
!900 = distinct !DILexicalBlock(scope: !853, file: !2, line: 372, column: 2)
!901 = !DILocalVariable(name: "tcp_ptr__", scope: !902, file: !2, line: 372, type: !32)
!902 = distinct !DILexicalBlock(scope: !900, file: !2, line: 372, column: 2)
!903 = !DILocalVariable(name: "__vpp_verify", scope: !904, file: !2, line: 372, type: !200)
!904 = distinct !DILexicalBlock(scope: !905, file: !2, line: 372, column: 2)
!905 = distinct !DILexicalBlock(scope: !853, file: !2, line: 372, column: 2)
!906 = !DILocalVariable(name: "tcp_ptr__", scope: !907, file: !2, line: 372, type: !32)
!907 = distinct !DILexicalBlock(scope: !905, file: !2, line: 372, column: 2)
!908 = !DILocation(line: 363, column: 37, scope: !853)
!909 = !DILocation(line: 365, column: 2, scope: !853)
!910 = !DILocation(line: 365, column: 6, scope: !853)
!911 = !DILocation(line: 367, column: 7, scope: !860)
!912 = !DILocation(line: 367, column: 7, scope: !859)
!913 = !DILocation(line: 367, column: 7, scope: !858)
!914 = !DILocation(line: 367, column: 7, scope: !862)
!915 = !{i64 2153053397}
!916 = !DILocation(line: 367, column: 7, scope: !865)
!917 = !DILocation(line: 367, column: 7, scope: !864)
!918 = !DILocation(line: 367, column: 7, scope: !867)
!919 = !{i64 2153053801}
!920 = !DILocation(line: 367, column: 7, scope: !870)
!921 = !DILocation(line: 367, column: 7, scope: !869)
!922 = !DILocation(line: 367, column: 7, scope: !872)
!923 = !{i64 2153054205}
!924 = !DILocation(line: 367, column: 6, scope: !853)
!925 = !DILocation(line: 367, column: 7, scope: !875)
!926 = !DILocation(line: 367, column: 7, scope: !874)
!927 = !DILocation(line: 367, column: 7, scope: !877)
!928 = !{i64 2153054624}
!929 = !DILocation(line: 367, column: 7, scope: !880)
!930 = !DILocation(line: 367, column: 7, scope: !879)
!931 = !DILocation(line: 367, column: 7, scope: !882)
!932 = !{i64 2153055043}
!933 = !DILocation(line: 368, column: 3, scope: !860)
!934 = !DILocation(line: 369, column: 2, scope: !853)
!935 = !DILocation(line: 370, column: 6, scope: !853)
!936 = !DILocation(line: 371, column: 9, scope: !853)
!937 = !DILocation(line: 371, column: 34, scope: !853)
!938 = !DILocation(line: 371, column: 2, scope: !853)
!939 = !DILocation(line: 372, column: 2, scope: !853)
!940 = !DILocation(line: 372, column: 2, scope: !885)
!941 = !DILocation(line: 372, column: 2, scope: !884)
!942 = !DILocation(line: 372, column: 2, scope: !887)
!943 = !{i64 2153057065}
!944 = !DILocation(line: 372, column: 2, scope: !890)
!945 = !DILocation(line: 372, column: 2, scope: !889)
!946 = !DILocation(line: 372, column: 2, scope: !892)
!947 = !{i64 2153057469}
!948 = !DILocation(line: 372, column: 2, scope: !895)
!949 = !DILocation(line: 372, column: 2, scope: !894)
!950 = !DILocation(line: 372, column: 2, scope: !897)
!951 = !{i64 2153057873}
!952 = !DILocation(line: 372, column: 2, scope: !900)
!953 = !DILocation(line: 372, column: 2, scope: !899)
!954 = !DILocation(line: 372, column: 2, scope: !902)
!955 = !{i64 2153058295}
!956 = !DILocation(line: 372, column: 2, scope: !905)
!957 = !DILocation(line: 372, column: 2, scope: !904)
!958 = !DILocation(line: 372, column: 2, scope: !907)
!959 = !{i64 2153058717}
!960 = !DILocation(line: 373, column: 1, scope: !853)
!961 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !849, file: !849, line: 43, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !852, !32}
!964 = distinct !DISubprogram(name: "cmci_rediscover", scope: !2, file: !2, line: 403, type: !677, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !965)
!965 = !{!966}
!966 = !DILocalVariable(name: "banks", scope: !964, file: !2, line: 405, type: !39)
!967 = !DILocation(line: 405, column: 2, scope: !964)
!968 = !DILocation(line: 405, column: 6, scope: !964)
!969 = !DILocation(line: 407, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !964, file: !2, line: 407, column: 6)
!971 = !DILocation(line: 407, column: 6, scope: !964)
!972 = !DILocation(line: 408, column: 3, scope: !970)
!973 = !DILocation(line: 410, column: 2, scope: !964)
!974 = !DILocation(line: 411, column: 1, scope: !964)
!975 = distinct !DISubprogram(name: "on_each_cpu", scope: !976, file: !976, line: 69, type: !977, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !983)
!976 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e44047123e6e4f39e255273d47d7376")
!977 = !DISubroutineType(types: !978)
!978 = !{null, !979, !31, !39}
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !976, line: 17, baseType: !980)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !31}
!983 = !{!984, !985, !986}
!984 = !DILocalVariable(name: "func", arg: 1, scope: !975, file: !976, line: 69, type: !979)
!985 = !DILocalVariable(name: "info", arg: 2, scope: !975, file: !976, line: 69, type: !31)
!986 = !DILocalVariable(name: "wait", arg: 3, scope: !975, file: !976, line: 69, type: !39)
!987 = !DILocation(line: 69, column: 48, scope: !975)
!988 = !DILocation(line: 69, column: 60, scope: !975)
!989 = !DILocation(line: 69, column: 70, scope: !975)
!990 = !DILocation(line: 71, column: 30, scope: !975)
!991 = !DILocation(line: 71, column: 36, scope: !975)
!992 = !DILocation(line: 71, column: 42, scope: !975)
!993 = !DILocation(line: 71, column: 2, scope: !975)
!994 = !DILocation(line: 72, column: 1, scope: !975)
!995 = distinct !DISubprogram(name: "cmci_rediscover_work_func", scope: !2, file: !2, line: 393, type: !981, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !996)
!996 = !{!997, !998}
!997 = !DILocalVariable(name: "arg", arg: 1, scope: !995, file: !2, line: 393, type: !31)
!998 = !DILocalVariable(name: "banks", scope: !995, file: !2, line: 395, type: !39)
!999 = !DILocation(line: 393, column: 45, scope: !995)
!1000 = !DILocation(line: 395, column: 2, scope: !995)
!1001 = !DILocation(line: 395, column: 6, scope: !995)
!1002 = !DILocation(line: 398, column: 6, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !995, file: !2, line: 398, column: 6)
!1004 = !DILocation(line: 398, column: 6, scope: !995)
!1005 = !DILocation(line: 399, column: 17, scope: !1003)
!1006 = !DILocation(line: 399, column: 3, scope: !1003)
!1007 = !DILocation(line: 400, column: 1, scope: !995)
!1008 = distinct !DISubprogram(name: "cmci_reenable", scope: !2, file: !2, line: 416, type: !677, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1009)
!1009 = !{!1010}
!1010 = !DILocalVariable(name: "banks", scope: !1008, file: !2, line: 418, type: !39)
!1011 = !DILocation(line: 418, column: 2, scope: !1008)
!1012 = !DILocation(line: 418, column: 6, scope: !1008)
!1013 = !DILocation(line: 419, column: 6, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 419, column: 6)
!1015 = !DILocation(line: 419, column: 6, scope: !1008)
!1016 = !DILocation(line: 420, column: 17, scope: !1014)
!1017 = !DILocation(line: 420, column: 3, scope: !1014)
!1018 = !DILocation(line: 421, column: 1, scope: !1008)
!1019 = !DILocation(line: 274, column: 31, scope: !191)
!1020 = !DILocation(line: 276, column: 2, scope: !191)
!1021 = !DILocation(line: 276, column: 17, scope: !191)
!1022 = !DILocation(line: 276, column: 33, scope: !199)
!1023 = !DILocation(line: 276, column: 33, scope: !198)
!1024 = !DILocation(line: 276, column: 33, scope: !203)
!1025 = !{i64 2153030428}
!1026 = !DILocation(line: 277, column: 2, scope: !191)
!1027 = !DILocation(line: 277, column: 16, scope: !191)
!1028 = !DILocation(line: 278, column: 2, scope: !191)
!1029 = !DILocation(line: 278, column: 6, scope: !191)
!1030 = !DILocation(line: 279, column: 2, scope: !191)
!1031 = !DILocation(line: 279, column: 6, scope: !191)
!1032 = !DILocation(line: 281, column: 2, scope: !191)
!1033 = !DILocation(line: 281, column: 2, scope: !208)
!1034 = !DILocation(line: 281, column: 2, scope: !209)
!1035 = !DILocation(line: 282, column: 9, scope: !214)
!1036 = !DILocation(line: 282, column: 7, scope: !214)
!1037 = !DILocation(line: 282, column: 14, scope: !213)
!1038 = !DILocation(line: 282, column: 18, scope: !213)
!1039 = !DILocation(line: 282, column: 16, scope: !213)
!1040 = !DILocation(line: 282, column: 2, scope: !214)
!1041 = !DILocation(line: 283, column: 3, scope: !212)
!1042 = !DILocation(line: 283, column: 7, scope: !212)
!1043 = !DILocation(line: 284, column: 3, scope: !212)
!1044 = !DILocation(line: 284, column: 7, scope: !212)
!1045 = !DILocation(line: 286, column: 7, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !212, file: !2, line: 286, column: 7)
!1047 = !DILocation(line: 286, column: 7, scope: !212)
!1048 = !DILocation(line: 287, column: 4, scope: !1046)
!1049 = !DILocation(line: 290, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !212, file: !2, line: 290, column: 7)
!1051 = !DILocation(line: 290, column: 7, scope: !212)
!1052 = !DILocation(line: 291, column: 4, scope: !1050)
!1053 = !DILocation(line: 293, column: 3, scope: !212)
!1054 = !DILocation(line: 296, column: 7, scope: !220)
!1055 = !DILocation(line: 296, column: 11, scope: !220)
!1056 = !DILocation(line: 296, column: 7, scope: !212)
!1057 = !DILocation(line: 297, column: 14, scope: !219)
!1058 = !DILocation(line: 297, column: 17, scope: !219)
!1059 = !DILocation(line: 297, column: 4, scope: !219)
!1060 = !DILocation(line: 298, column: 4, scope: !219)
!1061 = !DILocation(line: 298, column: 4, scope: !218)
!1062 = !DILocation(line: 298, column: 4, scope: !217)
!1063 = !DILocation(line: 298, column: 4, scope: !222)
!1064 = !{i64 2153033523}
!1065 = !DILocation(line: 298, column: 4, scope: !225)
!1066 = !DILocation(line: 298, column: 4, scope: !224)
!1067 = !DILocation(line: 298, column: 4, scope: !227)
!1068 = !{i64 2153033924}
!1069 = !DILocation(line: 298, column: 4, scope: !230)
!1070 = !DILocation(line: 298, column: 4, scope: !229)
!1071 = !DILocation(line: 298, column: 4, scope: !232)
!1072 = !{i64 2153034325}
!1073 = !DILocation(line: 298, column: 4, scope: !235)
!1074 = !DILocation(line: 298, column: 4, scope: !234)
!1075 = !DILocation(line: 298, column: 4, scope: !237)
!1076 = !{i64 2153034741}
!1077 = !DILocation(line: 298, column: 4, scope: !240)
!1078 = !DILocation(line: 298, column: 4, scope: !239)
!1079 = !DILocation(line: 298, column: 4, scope: !242)
!1080 = !{i64 2153035157}
!1081 = !DILocation(line: 299, column: 4, scope: !219)
!1082 = !DILocation(line: 302, column: 16, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !212, file: !2, line: 302, column: 7)
!1084 = !DILocation(line: 302, column: 8, scope: !1083)
!1085 = !DILocation(line: 302, column: 7, scope: !212)
!1086 = !DILocation(line: 303, column: 8, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 302, column: 37)
!1088 = !DILocation(line: 304, column: 8, scope: !1087)
!1089 = !DILocation(line: 305, column: 3, scope: !1087)
!1090 = !DILocation(line: 305, column: 16, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 305, column: 14)
!1092 = !DILocation(line: 305, column: 20, scope: !1091)
!1093 = !DILocation(line: 305, column: 14, scope: !1083)
!1094 = !DILocation(line: 311, column: 21, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !2, line: 305, column: 53)
!1096 = !DILocation(line: 312, column: 8, scope: !1095)
!1097 = !DILocation(line: 313, column: 3, scope: !1095)
!1098 = !DILocation(line: 315, column: 7, scope: !212)
!1099 = !DILocation(line: 316, column: 10, scope: !212)
!1100 = !DILocation(line: 316, column: 32, scope: !212)
!1101 = !DILocation(line: 316, column: 3, scope: !212)
!1102 = !DILocation(line: 317, column: 3, scope: !212)
!1103 = !DILocation(line: 320, column: 7, scope: !247)
!1104 = !DILocation(line: 320, column: 11, scope: !247)
!1105 = !DILocation(line: 320, column: 7, scope: !212)
!1106 = !DILocation(line: 321, column: 12, scope: !246)
!1107 = !DILocation(line: 321, column: 15, scope: !246)
!1108 = !DILocation(line: 321, column: 4, scope: !246)
!1109 = !DILocation(line: 322, column: 4, scope: !246)
!1110 = !DILocation(line: 322, column: 4, scope: !245)
!1111 = !DILocation(line: 322, column: 4, scope: !244)
!1112 = !DILocation(line: 322, column: 4, scope: !249)
!1113 = !{i64 2153037293}
!1114 = !DILocation(line: 322, column: 4, scope: !252)
!1115 = !DILocation(line: 322, column: 4, scope: !251)
!1116 = !DILocation(line: 322, column: 4, scope: !254)
!1117 = !{i64 2153037694}
!1118 = !DILocation(line: 322, column: 4, scope: !257)
!1119 = !DILocation(line: 322, column: 4, scope: !256)
!1120 = !DILocation(line: 322, column: 4, scope: !259)
!1121 = !{i64 2153038095}
!1122 = !DILocation(line: 322, column: 4, scope: !262)
!1123 = !DILocation(line: 322, column: 4, scope: !261)
!1124 = !DILocation(line: 322, column: 4, scope: !264)
!1125 = !{i64 2153038511}
!1126 = !DILocation(line: 322, column: 4, scope: !267)
!1127 = !DILocation(line: 322, column: 4, scope: !266)
!1128 = !DILocation(line: 322, column: 4, scope: !269)
!1129 = !{i64 2153038927}
!1130 = !DILocation(line: 329, column: 16, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !246, file: !2, line: 329, column: 8)
!1132 = !DILocation(line: 329, column: 8, scope: !1131)
!1133 = !DILocation(line: 329, column: 36, scope: !1131)
!1134 = !DILocation(line: 329, column: 39, scope: !1131)
!1135 = !DILocation(line: 329, column: 56, scope: !1131)
!1136 = !DILocation(line: 330, column: 7, scope: !1131)
!1137 = !DILocation(line: 330, column: 11, scope: !1131)
!1138 = !DILocation(line: 329, column: 8, scope: !246)
!1139 = !DILocation(line: 331, column: 23, scope: !1131)
!1140 = !DILocation(line: 331, column: 5, scope: !1131)
!1141 = !DILocation(line: 332, column: 3, scope: !246)
!1142 = !DILocation(line: 333, column: 4, scope: !271)
!1143 = !DILocation(line: 333, column: 4, scope: !275)
!1144 = !DILocation(line: 333, column: 4, scope: !274)
!1145 = !DILocation(line: 333, column: 4, scope: !277)
!1146 = !{i64 2153043006}
!1147 = !DILocation(line: 333, column: 4, scope: !280)
!1148 = !DILocation(line: 333, column: 4, scope: !279)
!1149 = !DILocation(line: 333, column: 4, scope: !282)
!1150 = !{i64 2153043459}
!1151 = !DILocation(line: 333, column: 4, scope: !285)
!1152 = !DILocation(line: 333, column: 4, scope: !284)
!1153 = !DILocation(line: 333, column: 4, scope: !287)
!1154 = !{i64 2153043946}
!1155 = !DILocation(line: 333, column: 4, scope: !290)
!1156 = !DILocation(line: 333, column: 4, scope: !289)
!1157 = !DILocation(line: 333, column: 4, scope: !292)
!1158 = !{i64 2153044374}
!1159 = !DILocation(line: 333, column: 4, scope: !295)
!1160 = !DILocation(line: 333, column: 4, scope: !294)
!1161 = !DILocation(line: 333, column: 4, scope: !297)
!1162 = !{i64 2153044795}
!1163 = !DILocation(line: 333, column: 4, scope: !300)
!1164 = !DILocation(line: 333, column: 4, scope: !299)
!1165 = !DILocation(line: 333, column: 4, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !299, file: !2, line: 333, column: 4)
!1167 = !DILocation(line: 333, column: 4, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !299, file: !2, line: 333, column: 4)
!1169 = !{i64 2153045365, i64 2153045394, i64 2153045440, i64 2153045498, i64 2153045552, i64 2153045606, i64 2153045661, i64 2153045692, i64 2153046000, i64 2153046006, i64 2153046053, i64 2153046076, i64 2153046102}
!1170 = !DILocation(line: 333, column: 4, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !299, file: !2, line: 333, column: 4)
!1172 = !DILocation(line: 333, column: 4, scope: !272)
!1173 = !DILocation(line: 335, column: 2, scope: !213)
!1174 = !DILocation(line: 335, column: 2, scope: !212)
!1175 = !DILocation(line: 282, column: 26, scope: !213)
!1176 = !DILocation(line: 282, column: 2, scope: !213)
!1177 = distinct !{!1177, !1040, !1178, !670, !671}
!1178 = !DILocation(line: 335, column: 2, scope: !214)
!1179 = !DILocation(line: 336, column: 2, scope: !191)
!1180 = !DILocation(line: 336, column: 2, scope: !302)
!1181 = !DILocation(line: 336, column: 2, scope: !303)
!1182 = !DILocation(line: 337, column: 14, scope: !308)
!1183 = !DILocation(line: 337, column: 6, scope: !308)
!1184 = !DILocation(line: 337, column: 34, scope: !308)
!1185 = !DILocation(line: 337, column: 37, scope: !308)
!1186 = !DILocation(line: 337, column: 6, scope: !191)
!1187 = !DILocation(line: 338, column: 3, scope: !306)
!1188 = !DILocation(line: 338, column: 3, scope: !310)
!1189 = !DILocation(line: 338, column: 3, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !310, file: !2, line: 338, column: 3)
!1191 = !DILocation(line: 0, scope: !1190)
!1192 = !DILocation(line: 338, column: 3, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 338, column: 3)
!1194 = !DILocation(line: 338, column: 3, scope: !311)
!1195 = !DILocation(line: 338, column: 3, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !311, file: !2, line: 338, column: 3)
!1197 = !DILocation(line: 338, column: 3, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 338, column: 3)
!1199 = !DILocation(line: 338, column: 3, scope: !307)
!1200 = !DILocation(line: 340, column: 3, scope: !314)
!1201 = !DILocation(line: 340, column: 3, scope: !316)
!1202 = !DILocation(line: 340, column: 3, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !316, file: !2, line: 340, column: 3)
!1204 = !DILocation(line: 0, scope: !1203)
!1205 = !DILocation(line: 340, column: 3, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 340, column: 3)
!1207 = !DILocation(line: 340, column: 3, scope: !317)
!1208 = !DILocation(line: 340, column: 3, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !317, file: !2, line: 340, column: 3)
!1210 = !DILocation(line: 340, column: 3, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 340, column: 3)
!1212 = !DILocation(line: 340, column: 3, scope: !307)
!1213 = !DILocation(line: 342, column: 2, scope: !307)
!1214 = !DILocation(line: 343, column: 1, scope: !191)
!1215 = distinct !DISubprogram(name: "cmci_disable_bank", scope: !2, file: !2, line: 423, type: !192, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1216)
!1216 = !{!1217, !1218, !1219, !1220, !1223, !1224, !1227}
!1217 = !DILocalVariable(name: "bank", arg: 1, scope: !1215, file: !2, line: 423, type: !39)
!1218 = !DILocalVariable(name: "banks", scope: !1215, file: !2, line: 425, type: !39)
!1219 = !DILocalVariable(name: "flags", scope: !1215, file: !2, line: 426, type: !32)
!1220 = !DILocalVariable(name: "__dummy", scope: !1221, file: !2, line: 431, type: !32)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 431, column: 2)
!1222 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 431, column: 2)
!1223 = !DILocalVariable(name: "__dummy2", scope: !1221, file: !2, line: 431, type: !32)
!1224 = !DILocalVariable(name: "__dummy", scope: !1225, file: !2, line: 433, type: !32)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !2, line: 433, column: 2)
!1226 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 433, column: 2)
!1227 = !DILocalVariable(name: "__dummy2", scope: !1225, file: !2, line: 433, type: !32)
!1228 = !DILocation(line: 423, column: 28, scope: !1215)
!1229 = !DILocation(line: 425, column: 2, scope: !1215)
!1230 = !DILocation(line: 425, column: 6, scope: !1215)
!1231 = !DILocation(line: 426, column: 2, scope: !1215)
!1232 = !DILocation(line: 426, column: 16, scope: !1215)
!1233 = !DILocation(line: 428, column: 7, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 428, column: 6)
!1235 = !DILocation(line: 428, column: 6, scope: !1215)
!1236 = !DILocation(line: 429, column: 3, scope: !1234)
!1237 = !DILocation(line: 431, column: 2, scope: !1215)
!1238 = !DILocation(line: 431, column: 2, scope: !1221)
!1239 = !DILocation(line: 431, column: 2, scope: !1222)
!1240 = !DILocation(line: 432, column: 22, scope: !1215)
!1241 = !DILocation(line: 432, column: 2, scope: !1215)
!1242 = !DILocation(line: 433, column: 2, scope: !1215)
!1243 = !DILocation(line: 433, column: 2, scope: !1225)
!1244 = !DILocation(line: 433, column: 2, scope: !1226)
!1245 = !DILocation(line: 434, column: 1, scope: !1215)
!1246 = distinct !DISubprogram(name: "intel_init_cmci", scope: !2, file: !2, line: 444, type: !677, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1247)
!1247 = !{!1248}
!1248 = !DILocalVariable(name: "banks", scope: !1246, file: !2, line: 446, type: !39)
!1249 = !DILocation(line: 446, column: 2, scope: !1246)
!1250 = !DILocation(line: 446, column: 6, scope: !1246)
!1251 = !DILocation(line: 448, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1246, file: !2, line: 448, column: 6)
!1253 = !DILocation(line: 448, column: 6, scope: !1246)
!1254 = !DILocation(line: 449, column: 17, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 448, column: 31)
!1256 = !DILocation(line: 450, column: 3, scope: !1255)
!1257 = !DILocation(line: 453, column: 23, scope: !1246)
!1258 = !DILocation(line: 454, column: 16, scope: !1246)
!1259 = !DILocation(line: 454, column: 2, scope: !1246)
!1260 = !DILocation(line: 461, column: 2, scope: !1246)
!1261 = !DILocation(line: 462, column: 2, scope: !1246)
!1262 = !DILocation(line: 463, column: 1, scope: !1246)
!1263 = distinct !DISubprogram(name: "cmci_mc_poll_banks", scope: !2, file: !2, line: 437, type: !677, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1264)
!1264 = !{!1265, !1268}
!1265 = !DILocalVariable(name: "__vpp_verify", scope: !1266, file: !2, line: 440, type: !200)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 440, column: 24)
!1267 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 440, column: 24)
!1268 = !DILocalVariable(name: "tcp_ptr__", scope: !1269, file: !2, line: 440, type: !32)
!1269 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 440, column: 24)
!1270 = !DILocation(line: 439, column: 2, scope: !1263)
!1271 = !DILocation(line: 440, column: 24, scope: !1267)
!1272 = !DILocation(line: 440, column: 24, scope: !1266)
!1273 = !DILocation(line: 440, column: 24, scope: !1269)
!1274 = !{i64 2153060344}
!1275 = !DILocation(line: 440, column: 2, scope: !1263)
!1276 = !DILocation(line: 441, column: 2, scope: !1263)
!1277 = !DILocation(line: 442, column: 1, scope: !1263)
!1278 = distinct !DISubprogram(name: "intel_threshold_interrupt", scope: !2, file: !2, line: 261, type: !677, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1279)
!1279 = !{!1280, !1283}
!1280 = !DILocalVariable(name: "__vpp_verify", scope: !1281, file: !2, line: 266, type: !200)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 266, column: 36)
!1282 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 266, column: 36)
!1283 = !DILocalVariable(name: "tcp_ptr__", scope: !1284, file: !2, line: 266, type: !32)
!1284 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 266, column: 36)
!1285 = !DILocation(line: 263, column: 6, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 263, column: 6)
!1287 = !DILocation(line: 263, column: 6, scope: !1278)
!1288 = !DILocation(line: 264, column: 3, scope: !1286)
!1289 = !DILocation(line: 266, column: 36, scope: !1282)
!1290 = !DILocation(line: 266, column: 36, scope: !1281)
!1291 = !DILocation(line: 266, column: 36, scope: !1284)
!1292 = !{i64 2153029776}
!1293 = !DILocation(line: 266, column: 2, scope: !1278)
!1294 = !DILocation(line: 267, column: 1, scope: !1278)
!1295 = !DILocation(line: 402, column: 44, scope: !352)
!1296 = !DILocation(line: 402, column: 53, scope: !352)
!1297 = !DILocation(line: 404, column: 2, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !352, file: !353, line: 404, column: 2)
!1299 = !DILocation(line: 404, column: 31, scope: !352)
!1300 = !DILocation(line: 404, column: 36, scope: !352)
!1301 = !DILocation(line: 404, column: 2, scope: !352)
!1302 = !DILocation(line: 405, column: 1, scope: !352)
!1303 = distinct !DISubprogram(name: "intel_init_lmce", scope: !2, file: !2, line: 465, type: !677, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1304)
!1304 = !{!1305}
!1305 = !DILocalVariable(name: "val", scope: !1303, file: !2, line: 467, type: !95)
!1306 = !DILocation(line: 467, column: 2, scope: !1303)
!1307 = !DILocation(line: 467, column: 6, scope: !1303)
!1308 = !DILocation(line: 469, column: 7, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 469, column: 6)
!1310 = !DILocation(line: 469, column: 6, scope: !1303)
!1311 = !DILocation(line: 470, column: 3, scope: !1309)
!1312 = !DILocation(line: 472, column: 2, scope: !1303)
!1313 = !DILocation(line: 474, column: 8, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 474, column: 6)
!1315 = !DILocation(line: 474, column: 12, scope: !1314)
!1316 = !DILocation(line: 474, column: 6, scope: !1303)
!1317 = !DILocation(line: 475, column: 32, scope: !1314)
!1318 = !DILocation(line: 475, column: 36, scope: !1314)
!1319 = !DILocation(line: 475, column: 3, scope: !1314)
!1320 = !DILocation(line: 476, column: 1, scope: !1303)
!1321 = distinct !DISubprogram(name: "lmce_supported", scope: !2, file: !2, line: 106, type: !369, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1322)
!1322 = !{!1323, !1324, !1327}
!1323 = !DILocalVariable(name: "tmp", scope: !1321, file: !2, line: 108, type: !95)
!1324 = !DILocalVariable(name: "__ret_warn_on", scope: !1325, file: !2, line: 131, type: !39)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 131, column: 6)
!1326 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 131, column: 6)
!1327 = !DILocalVariable(name: "__flags", scope: !1328, file: !2, line: 131, type: !39)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 131, column: 6)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 131, column: 6)
!1330 = !DILocation(line: 108, column: 2, scope: !1321)
!1331 = !DILocation(line: 108, column: 6, scope: !1321)
!1332 = !DILocation(line: 110, column: 14, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 110, column: 6)
!1334 = !DILocation(line: 110, column: 6, scope: !1333)
!1335 = !DILocation(line: 110, column: 6, scope: !1321)
!1336 = !DILocation(line: 111, column: 3, scope: !1333)
!1337 = !DILocation(line: 113, column: 2, scope: !1321)
!1338 = !DILocation(line: 119, column: 7, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 119, column: 6)
!1340 = !DILocation(line: 119, column: 11, scope: !1339)
!1341 = !DILocation(line: 119, column: 39, scope: !1339)
!1342 = !DILocation(line: 119, column: 6, scope: !1321)
!1343 = !DILocation(line: 121, column: 3, scope: !1339)
!1344 = !DILocation(line: 130, column: 2, scope: !1321)
!1345 = !DILocation(line: 131, column: 6, scope: !1325)
!1346 = !DILocation(line: 131, column: 6, scope: !1329)
!1347 = !DILocation(line: 131, column: 6, scope: !1328)
!1348 = !DILocation(line: 131, column: 6, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 131, column: 6)
!1350 = !DILocation(line: 131, column: 6, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 131, column: 6)
!1352 = !{i64 2152955587, i64 2152955616, i64 2152955662, i64 2152955720, i64 2152955774, i64 2152955828, i64 2152955883, i64 2152955914, i64 2152956222, i64 2152956228, i64 2152956275, i64 2152956298, i64 2152956324}
!1353 = !DILocation(line: 131, column: 6, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 131, column: 6)
!1355 = !DILocation(line: 131, column: 6, scope: !1326)
!1356 = !DILocation(line: 131, column: 6, scope: !1321)
!1357 = !DILocation(line: 132, column: 3, scope: !1326)
!1358 = !DILocation(line: 134, column: 9, scope: !1321)
!1359 = !DILocation(line: 134, column: 13, scope: !1321)
!1360 = !DILocation(line: 134, column: 2, scope: !1321)
!1361 = !DILocation(line: 135, column: 1, scope: !1321)
!1362 = distinct !DISubprogram(name: "native_read_msr", scope: !1363, file: !1363, line: 114, type: !1364, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1366)
!1363 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!97, !12}
!1366 = !{!1367, !1368}
!1367 = !DILocalVariable(name: "msr", arg: 1, scope: !1362, file: !1363, line: 114, type: !12)
!1368 = !DILocalVariable(name: "val", scope: !1362, file: !1363, line: 116, type: !97)
!1369 = !DILocation(line: 114, column: 63, scope: !1362)
!1370 = !DILocation(line: 116, column: 2, scope: !1362)
!1371 = !DILocation(line: 116, column: 21, scope: !1362)
!1372 = !DILocation(line: 118, column: 16, scope: !1362)
!1373 = !DILocation(line: 118, column: 8, scope: !1362)
!1374 = !DILocation(line: 118, column: 6, scope: !1362)
!1375 = !DILocation(line: 120, column: 6, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1362, file: !1363, line: 120, column: 6)
!1377 = !DILocation(line: 120, column: 6, scope: !1362)
!1378 = !DILocation(line: 121, column: 21, scope: !1376)
!1379 = !DILocation(line: 121, column: 26, scope: !1376)
!1380 = !DILocation(line: 121, column: 3, scope: !1376)
!1381 = !DILocation(line: 123, column: 9, scope: !1362)
!1382 = !DILocation(line: 124, column: 1, scope: !1362)
!1383 = !DILocation(line: 123, column: 2, scope: !1362)
!1384 = distinct !DISubprogram(name: "wrmsrl", scope: !1363, file: !1363, line: 260, type: !1385, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1387)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !12, !95}
!1387 = !{!1388, !1389}
!1388 = !DILocalVariable(name: "msr", arg: 1, scope: !1384, file: !1363, line: 260, type: !12)
!1389 = !DILocalVariable(name: "val", arg: 2, scope: !1384, file: !1363, line: 260, type: !95)
!1390 = !DILocation(line: 260, column: 40, scope: !1384)
!1391 = !DILocation(line: 260, column: 49, scope: !1384)
!1392 = !DILocation(line: 262, column: 19, scope: !1384)
!1393 = !DILocation(line: 262, column: 30, scope: !1384)
!1394 = !DILocation(line: 262, column: 34, scope: !1384)
!1395 = !DILocation(line: 262, column: 24, scope: !1384)
!1396 = !DILocation(line: 262, column: 58, scope: !1384)
!1397 = !DILocation(line: 262, column: 62, scope: !1384)
!1398 = !DILocation(line: 262, column: 52, scope: !1384)
!1399 = !DILocation(line: 262, column: 2, scope: !1384)
!1400 = !DILocation(line: 263, column: 1, scope: !1384)
!1401 = distinct !DISubprogram(name: "intel_clear_lmce", scope: !2, file: !2, line: 478, type: !677, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1402)
!1402 = !{!1403}
!1403 = !DILocalVariable(name: "val", scope: !1401, file: !2, line: 480, type: !95)
!1404 = !DILocation(line: 480, column: 2, scope: !1401)
!1405 = !DILocation(line: 480, column: 6, scope: !1401)
!1406 = !DILocation(line: 482, column: 7, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 482, column: 6)
!1408 = !DILocation(line: 482, column: 6, scope: !1401)
!1409 = !DILocation(line: 483, column: 3, scope: !1407)
!1410 = !DILocation(line: 485, column: 2, scope: !1401)
!1411 = !DILocation(line: 486, column: 6, scope: !1401)
!1412 = !DILocation(line: 487, column: 31, scope: !1401)
!1413 = !DILocation(line: 487, column: 2, scope: !1401)
!1414 = !DILocation(line: 488, column: 1, scope: !1401)
!1415 = distinct !DISubprogram(name: "mce_intel_feature_init", scope: !2, file: !2, line: 510, type: !1416, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1418)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{null, !44}
!1418 = !{!1419}
!1419 = !DILocalVariable(name: "c", arg: 1, scope: !1415, file: !2, line: 510, type: !44)
!1420 = !DILocation(line: 510, column: 49, scope: !1415)
!1421 = !DILocation(line: 512, column: 2, scope: !1415)
!1422 = !DILocation(line: 513, column: 2, scope: !1415)
!1423 = !DILocation(line: 514, column: 17, scope: !1415)
!1424 = !DILocation(line: 514, column: 2, scope: !1415)
!1425 = !DILocation(line: 515, column: 1, scope: !1415)
!1426 = distinct !DISubprogram(name: "intel_imc_init", scope: !2, file: !2, line: 494, type: !1416, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1427)
!1427 = !{!1428, !1429}
!1428 = !DILocalVariable(name: "c", arg: 1, scope: !1426, file: !2, line: 494, type: !44)
!1429 = !DILocalVariable(name: "error_control", scope: !1426, file: !2, line: 496, type: !95)
!1430 = !DILocation(line: 494, column: 48, scope: !1426)
!1431 = !DILocation(line: 496, column: 2, scope: !1426)
!1432 = !DILocation(line: 496, column: 6, scope: !1426)
!1433 = !DILocation(line: 498, column: 10, scope: !1426)
!1434 = !DILocation(line: 498, column: 13, scope: !1426)
!1435 = !DILocation(line: 498, column: 2, scope: !1426)
!1436 = !DILocation(line: 502, column: 7, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 502, column: 7)
!1438 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 498, column: 24)
!1439 = !DILocation(line: 502, column: 7, scope: !1438)
!1440 = !DILocation(line: 503, column: 4, scope: !1437)
!1441 = !DILocation(line: 504, column: 17, scope: !1438)
!1442 = !DILocation(line: 505, column: 34, scope: !1438)
!1443 = !DILocation(line: 505, column: 3, scope: !1438)
!1444 = !DILocation(line: 506, column: 3, scope: !1438)
!1445 = !DILocation(line: 508, column: 1, scope: !1426)
!1446 = distinct !DISubprogram(name: "mce_intel_feature_clear", scope: !2, file: !2, line: 517, type: !1416, scopeLine: 518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1447)
!1447 = !{!1448}
!1448 = !DILocalVariable(name: "c", arg: 1, scope: !1446, file: !2, line: 517, type: !44)
!1449 = !DILocation(line: 517, column: 50, scope: !1446)
!1450 = !DILocation(line: 519, column: 2, scope: !1446)
!1451 = !DILocation(line: 520, column: 1, scope: !1446)
!1452 = distinct !DISubprogram(name: "intel_filter_mce", scope: !2, file: !2, line: 522, type: !1453, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1484)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!113, !1455}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mce", file: !1457, line: 13, size: 1024, elements: !1458)
!1457 = !DIFile(filename: "./arch/x86/include/uapi/asm/mce.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d46edd5c7cf04919fa578f239ee9b8c1")
!1458 = !{!1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1456, file: !1457, line: 14, baseType: !96, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !1456, file: !1457, line: 15, baseType: !96, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1456, file: !1457, line: 16, baseType: !96, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "mcgstatus", scope: !1456, file: !1457, line: 17, baseType: !96, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1456, file: !1457, line: 18, baseType: !96, size: 64, offset: 256)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "tsc", scope: !1456, file: !1457, line: 19, baseType: !96, size: 64, offset: 320)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1456, file: !1457, line: 20, baseType: !96, size: 64, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cpuvendor", scope: !1456, file: !1457, line: 21, baseType: !55, size: 8, offset: 448)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "inject_flags", scope: !1456, file: !1457, line: 22, baseType: !55, size: 8, offset: 456)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !1456, file: !1457, line: 23, baseType: !55, size: 8, offset: 464)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1456, file: !1457, line: 24, baseType: !55, size: 8, offset: 472)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid", scope: !1456, file: !1457, line: 25, baseType: !42, size: 32, offset: 480)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1456, file: !1457, line: 26, baseType: !55, size: 8, offset: 512)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "bank", scope: !1456, file: !1457, line: 27, baseType: !55, size: 8, offset: 520)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1456, file: !1457, line: 28, baseType: !55, size: 8, offset: 528)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "finished", scope: !1456, file: !1457, line: 29, baseType: !55, size: 8, offset: 536)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "extcpu", scope: !1456, file: !1457, line: 30, baseType: !42, size: 32, offset: 544)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "socketid", scope: !1456, file: !1457, line: 31, baseType: !42, size: 32, offset: 576)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !1456, file: !1457, line: 32, baseType: !42, size: 32, offset: 608)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "mcgcap", scope: !1456, file: !1457, line: 33, baseType: !96, size: 64, offset: 640)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "synd", scope: !1456, file: !1457, line: 34, baseType: !96, size: 64, offset: 704)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ipid", scope: !1456, file: !1457, line: 35, baseType: !96, size: 64, offset: 768)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !1456, file: !1457, line: 36, baseType: !96, size: 64, offset: 832)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !1456, file: !1457, line: 37, baseType: !42, size: 32, offset: 896)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "kflags", scope: !1456, file: !1457, line: 38, baseType: !96, size: 64, offset: 960)
!1484 = !{!1485, !1486}
!1485 = !DILocalVariable(name: "m", arg: 1, scope: !1452, file: !2, line: 522, type: !1455)
!1486 = !DILocalVariable(name: "c", scope: !1452, file: !2, line: 524, type: !44)
!1487 = !DILocation(line: 522, column: 35, scope: !1452)
!1488 = !DILocation(line: 524, column: 2, scope: !1452)
!1489 = !DILocation(line: 524, column: 22, scope: !1452)
!1490 = !DILocation(line: 527, column: 7, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1452, file: !2, line: 527, column: 6)
!1492 = !DILocation(line: 527, column: 10, scope: !1491)
!1493 = !DILocation(line: 527, column: 14, scope: !1491)
!1494 = !DILocation(line: 527, column: 20, scope: !1491)
!1495 = !DILocation(line: 528, column: 8, scope: !1491)
!1496 = !DILocation(line: 528, column: 11, scope: !1491)
!1497 = !DILocation(line: 528, column: 21, scope: !1491)
!1498 = !DILocation(line: 528, column: 44, scope: !1491)
!1499 = !DILocation(line: 529, column: 8, scope: !1491)
!1500 = !DILocation(line: 529, column: 11, scope: !1491)
!1501 = !DILocation(line: 529, column: 21, scope: !1491)
!1502 = !DILocation(line: 529, column: 46, scope: !1491)
!1503 = !DILocation(line: 530, column: 8, scope: !1491)
!1504 = !DILocation(line: 530, column: 11, scope: !1491)
!1505 = !DILocation(line: 530, column: 21, scope: !1491)
!1506 = !DILocation(line: 530, column: 46, scope: !1491)
!1507 = !DILocation(line: 531, column: 8, scope: !1491)
!1508 = !DILocation(line: 531, column: 11, scope: !1491)
!1509 = !DILocation(line: 531, column: 21, scope: !1491)
!1510 = !DILocation(line: 531, column: 46, scope: !1491)
!1511 = !DILocation(line: 532, column: 8, scope: !1491)
!1512 = !DILocation(line: 532, column: 11, scope: !1491)
!1513 = !DILocation(line: 532, column: 21, scope: !1491)
!1514 = !DILocation(line: 532, column: 47, scope: !1491)
!1515 = !DILocation(line: 533, column: 7, scope: !1491)
!1516 = !DILocation(line: 533, column: 10, scope: !1491)
!1517 = !DILocation(line: 533, column: 15, scope: !1491)
!1518 = !DILocation(line: 533, column: 21, scope: !1491)
!1519 = !DILocation(line: 534, column: 8, scope: !1491)
!1520 = !DILocation(line: 534, column: 11, scope: !1491)
!1521 = !DILocation(line: 534, column: 18, scope: !1491)
!1522 = !DILocation(line: 534, column: 40, scope: !1491)
!1523 = !DILocation(line: 527, column: 6, scope: !1452)
!1524 = !DILocation(line: 535, column: 3, scope: !1491)
!1525 = !DILocation(line: 537, column: 2, scope: !1452)
!1526 = !DILocation(line: 538, column: 1, scope: !1452)
!1527 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !1528, file: !1528, line: 94, type: !1529, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1538)
!1528 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1529 = !DISubroutineType(types: !1530)
!1530 = !{null, !1531, !1534}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1533)
!1533 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 61, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1536, line: 72, baseType: !1537)
!1536 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1536, line: 16, baseType: !32)
!1538 = !{!1539, !1540}
!1539 = !DILocalVariable(name: "v", arg: 1, scope: !1527, file: !1528, line: 94, type: !1531)
!1540 = !DILocalVariable(name: "size", arg: 2, scope: !1527, file: !1528, line: 94, type: !1534)
!1541 = !DILocation(line: 94, column: 79, scope: !1527)
!1542 = !DILocation(line: 94, column: 89, scope: !1527)
!1543 = !DILocation(line: 96, column: 20, scope: !1527)
!1544 = !DILocation(line: 96, column: 23, scope: !1527)
!1545 = !DILocation(line: 96, column: 2, scope: !1527)
!1546 = !DILocation(line: 97, column: 2, scope: !1527)
!1547 = !DILocation(line: 98, column: 1, scope: !1527)
!1548 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !1549, file: !1549, line: 1194, type: !471, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1550)
!1549 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!1550 = !{!1551}
!1551 = !DILocalVariable(name: "v", arg: 1, scope: !1548, file: !1549, line: 1194, type: !473)
!1552 = !DILocation(line: 1194, column: 26, scope: !1548)
!1553 = !DILocation(line: 1197, column: 18, scope: !1548)
!1554 = !DILocation(line: 1197, column: 2, scope: !1548)
!1555 = !DILocation(line: 1201, column: 1, scope: !1548)
!1556 = distinct !DISubprogram(name: "kasan_check_write", scope: !1557, file: !1557, line: 44, type: !1558, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1560)
!1557 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!113, !1531, !12}
!1560 = !{!1561, !1562}
!1561 = !DILocalVariable(name: "p", arg: 1, scope: !1556, file: !1557, line: 44, type: !1531)
!1562 = !DILocalVariable(name: "size", arg: 2, scope: !1556, file: !1557, line: 44, type: !12)
!1563 = !DILocation(line: 44, column: 59, scope: !1556)
!1564 = !DILocation(line: 44, column: 75, scope: !1556)
!1565 = !DILocation(line: 46, column: 2, scope: !1556)
!1566 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1567, file: !1567, line: 229, type: !1568, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1570)
!1567 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !1531, !1534, !39}
!1570 = !{!1571, !1572, !1573}
!1571 = !DILocalVariable(name: "ptr", arg: 1, scope: !1566, file: !1567, line: 229, type: !1531)
!1572 = !DILocalVariable(name: "size", arg: 2, scope: !1566, file: !1567, line: 229, type: !1534)
!1573 = !DILocalVariable(name: "type", arg: 3, scope: !1566, file: !1567, line: 230, type: !39)
!1574 = !DILocation(line: 229, column: 60, scope: !1566)
!1575 = !DILocation(line: 229, column: 72, scope: !1566)
!1576 = !DILocation(line: 230, column: 15, scope: !1566)
!1577 = !DILocation(line: 230, column: 23, scope: !1566)
!1578 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !1579, file: !1579, line: 58, type: !471, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1580)
!1579 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!1580 = !{!1581}
!1581 = !DILocalVariable(name: "v", arg: 1, scope: !1578, file: !1579, line: 58, type: !473)
!1582 = !DILocation(line: 58, column: 55, scope: !1578)
!1583 = !DILocation(line: 61, column: 16, scope: !1578)
!1584 = !DILocation(line: 61, column: 19, scope: !1578)
!1585 = !DILocation(line: 60, column: 2, scope: !1578)
!1586 = !{i64 2148906204, i64 2148906243, i64 2148906264, i64 2148906301, i64 2148906324, i64 2148906194}
!1587 = !DILocation(line: 62, column: 1, scope: !1578)
!1588 = distinct !DISubprogram(name: "raw_atomic_sub_return", scope: !1549, file: !1549, line: 771, type: !579, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1589)
!1589 = !{!1590, !1591}
!1590 = !DILocalVariable(name: "i", arg: 1, scope: !1588, file: !1549, line: 771, type: !39)
!1591 = !DILocalVariable(name: "v", arg: 2, scope: !1588, file: !1549, line: 771, type: !473)
!1592 = !DILocation(line: 771, column: 27, scope: !1588)
!1593 = !DILocation(line: 771, column: 40, scope: !1588)
!1594 = !DILocation(line: 774, column: 32, scope: !1588)
!1595 = !DILocation(line: 774, column: 35, scope: !1588)
!1596 = !DILocation(line: 774, column: 9, scope: !1588)
!1597 = !DILocation(line: 774, column: 2, scope: !1588)
!1598 = distinct !DISubprogram(name: "arch_atomic_sub_return", scope: !1579, file: !1579, line: 89, type: !579, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1599)
!1599 = !{!1600, !1601}
!1600 = !DILocalVariable(name: "i", arg: 1, scope: !1598, file: !1579, line: 89, type: !39)
!1601 = !DILocalVariable(name: "v", arg: 2, scope: !1598, file: !1579, line: 89, type: !473)
!1602 = !DILocation(line: 89, column: 55, scope: !1598)
!1603 = !DILocation(line: 89, column: 68, scope: !1598)
!1604 = !DILocation(line: 91, column: 33, scope: !1598)
!1605 = !DILocation(line: 91, column: 32, scope: !1598)
!1606 = !DILocation(line: 91, column: 36, scope: !1598)
!1607 = !DILocation(line: 91, column: 9, scope: !1598)
!1608 = !DILocation(line: 91, column: 2, scope: !1598)
!1609 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !1579, file: !1579, line: 83, type: !579, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1610)
!1610 = !{!1611, !1612, !1613}
!1611 = !DILocalVariable(name: "i", arg: 1, scope: !1609, file: !1579, line: 83, type: !39)
!1612 = !DILocalVariable(name: "v", arg: 2, scope: !1609, file: !1579, line: 83, type: !473)
!1613 = !DILocalVariable(name: "__ret", scope: !1614, file: !1579, line: 85, type: !39)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !1579, line: 85, column: 13)
!1615 = !DILocation(line: 83, column: 55, scope: !1609)
!1616 = !DILocation(line: 83, column: 68, scope: !1609)
!1617 = !DILocation(line: 85, column: 9, scope: !1609)
!1618 = !DILocation(line: 85, column: 13, scope: !1614)
!1619 = !{i64 2148913917, i64 2148913956, i64 2148913977, i64 2148914014, i64 2148914037, i64 2148914046}
!1620 = !DILocation(line: 85, column: 13, scope: !1609)
!1621 = !DILocation(line: 85, column: 11, scope: !1609)
!1622 = !DILocation(line: 85, column: 2, scope: !1609)
!1623 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1528, file: !1528, line: 66, type: !1529, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1624)
!1624 = !{!1625, !1626}
!1625 = !DILocalVariable(name: "v", arg: 1, scope: !1623, file: !1528, line: 66, type: !1531)
!1626 = !DILocalVariable(name: "size", arg: 2, scope: !1623, file: !1528, line: 66, type: !1534)
!1627 = !DILocation(line: 66, column: 73, scope: !1623)
!1628 = !DILocation(line: 66, column: 83, scope: !1623)
!1629 = !DILocation(line: 68, column: 19, scope: !1623)
!1630 = !DILocation(line: 68, column: 22, scope: !1623)
!1631 = !DILocation(line: 68, column: 2, scope: !1623)
!1632 = !DILocation(line: 69, column: 2, scope: !1623)
!1633 = !DILocation(line: 70, column: 1, scope: !1623)
!1634 = distinct !DISubprogram(name: "raw_atomic_read", scope: !1549, file: !1549, line: 442, type: !600, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1635)
!1635 = !{!1636}
!1636 = !DILocalVariable(name: "v", arg: 1, scope: !1634, file: !1549, line: 442, type: !602)
!1637 = !DILocation(line: 442, column: 33, scope: !1634)
!1638 = !DILocation(line: 444, column: 26, scope: !1634)
!1639 = !DILocation(line: 444, column: 9, scope: !1634)
!1640 = !DILocation(line: 444, column: 2, scope: !1634)
!1641 = distinct !DISubprogram(name: "kasan_check_read", scope: !1557, file: !1557, line: 40, type: !1558, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1642)
!1642 = !{!1643, !1644}
!1643 = !DILocalVariable(name: "p", arg: 1, scope: !1641, file: !1557, line: 40, type: !1531)
!1644 = !DILocalVariable(name: "size", arg: 2, scope: !1641, file: !1557, line: 40, type: !12)
!1645 = !DILocation(line: 40, column: 58, scope: !1641)
!1646 = !DILocation(line: 40, column: 74, scope: !1641)
!1647 = !DILocation(line: 42, column: 2, scope: !1641)
!1648 = distinct !DISubprogram(name: "arch_atomic_read", scope: !1579, file: !1579, line: 17, type: !600, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1649)
!1649 = !{!1650}
!1650 = !DILocalVariable(name: "v", arg: 1, scope: !1648, file: !1579, line: 17, type: !602)
!1651 = !DILocation(line: 17, column: 61, scope: !1648)
!1652 = !DILocation(line: 23, column: 9, scope: !1648)
!1653 = !DILocation(line: 23, column: 2, scope: !1648)
!1654 = distinct !DISubprogram(name: "find_next_bit", scope: !1655, file: !1655, line: 54, type: !1656, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1658)
!1655 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!32, !125, !32, !32}
!1658 = !{!1659, !1660, !1661, !1662}
!1659 = !DILocalVariable(name: "addr", arg: 1, scope: !1654, file: !1655, line: 54, type: !125)
!1660 = !DILocalVariable(name: "size", arg: 2, scope: !1654, file: !1655, line: 54, type: !32)
!1661 = !DILocalVariable(name: "offset", arg: 3, scope: !1654, file: !1655, line: 55, type: !32)
!1662 = !DILocalVariable(name: "val", scope: !1663, file: !1655, line: 58, type: !32)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !1655, line: 57, column: 31)
!1664 = distinct !DILexicalBlock(scope: !1654, file: !1655, line: 57, column: 6)
!1665 = !DILocation(line: 54, column: 50, scope: !1654)
!1666 = !DILocation(line: 54, column: 70, scope: !1654)
!1667 = !DILocation(line: 55, column: 22, scope: !1654)
!1668 = !DILocation(line: 57, column: 6, scope: !1664)
!1669 = !DILocation(line: 57, column: 6, scope: !1654)
!1670 = !DILocation(line: 58, column: 3, scope: !1663)
!1671 = !DILocation(line: 58, column: 17, scope: !1663)
!1672 = !DILocation(line: 60, column: 7, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1663, file: !1655, line: 60, column: 7)
!1674 = !DILocation(line: 60, column: 7, scope: !1663)
!1675 = !DILocation(line: 61, column: 11, scope: !1673)
!1676 = !DILocation(line: 61, column: 4, scope: !1673)
!1677 = !DILocation(line: 63, column: 10, scope: !1663)
!1678 = !DILocation(line: 63, column: 9, scope: !1663)
!1679 = !DILocation(line: 63, column: 17, scope: !1663)
!1680 = !DILocation(line: 63, column: 15, scope: !1663)
!1681 = !DILocation(line: 63, column: 7, scope: !1663)
!1682 = !DILocation(line: 64, column: 10, scope: !1663)
!1683 = !DILocation(line: 64, column: 16, scope: !1663)
!1684 = !DILocation(line: 64, column: 29, scope: !1663)
!1685 = !DILocation(line: 64, column: 3, scope: !1663)
!1686 = !DILocation(line: 65, column: 2, scope: !1664)
!1687 = !DILocation(line: 67, column: 24, scope: !1654)
!1688 = !DILocation(line: 67, column: 30, scope: !1654)
!1689 = !DILocation(line: 67, column: 36, scope: !1654)
!1690 = !DILocation(line: 67, column: 9, scope: !1654)
!1691 = !DILocation(line: 67, column: 2, scope: !1654)
!1692 = !DILocation(line: 68, column: 1, scope: !1654)
!1693 = distinct !DISubprogram(name: "variable__ffs", scope: !1694, file: !1694, line: 250, type: !483, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1695)
!1694 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1695 = !{!1696}
!1696 = !DILocalVariable(name: "word", arg: 1, scope: !1693, file: !1694, line: 250, type: !32)
!1697 = !DILocation(line: 250, column: 66, scope: !1693)
!1698 = !DILocation(line: 254, column: 11, scope: !1693)
!1699 = !DILocation(line: 252, column: 2, scope: !1693)
!1700 = !{i64 568425}
!1701 = !DILocation(line: 255, column: 9, scope: !1693)
!1702 = !DILocation(line: 255, column: 2, scope: !1693)
!1703 = !DISubprogram(name: "_find_next_bit", scope: !1655, file: !1655, line: 11, type: !1656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1704 = distinct !DISubprogram(name: "arch_test_bit", scope: !1694, file: !1694, line: 237, type: !1705, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1710)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!113, !32, !1707}
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1709)
!1709 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!1710 = !{!1711, !1712}
!1711 = !DILocalVariable(name: "nr", arg: 1, scope: !1704, file: !1694, line: 237, type: !32)
!1712 = !DILocalVariable(name: "addr", arg: 2, scope: !1704, file: !1694, line: 237, type: !1707)
!1713 = !DILocation(line: 237, column: 29, scope: !1704)
!1714 = !DILocation(line: 237, column: 63, scope: !1704)
!1715 = !DILocation(line: 239, column: 30, scope: !1704)
!1716 = !DILocation(line: 239, column: 9, scope: !1704)
!1717 = !DILocation(line: 239, column: 54, scope: !1704)
!1718 = !DILocation(line: 239, column: 58, scope: !1704)
!1719 = !DILocation(line: 239, column: 36, scope: !1704)
!1720 = !DILocation(line: 240, column: 26, scope: !1704)
!1721 = !DILocation(line: 240, column: 30, scope: !1704)
!1722 = !DILocation(line: 240, column: 8, scope: !1704)
!1723 = !DILocation(line: 239, column: 2, scope: !1704)
!1724 = !DISubprogram(name: "lapic_get_maxlvt", scope: !353, file: !353, line: 124, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1725 = distinct !DISubprogram(name: "constant_test_bit", scope: !1694, file: !1694, line: 204, type: !1726, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1728)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!113, !129, !1707}
!1728 = !{!1729, !1730}
!1729 = !DILocalVariable(name: "nr", arg: 1, scope: !1725, file: !1694, line: 204, type: !129)
!1730 = !DILocalVariable(name: "addr", arg: 2, scope: !1725, file: !1694, line: 204, type: !1707)
!1731 = !DILocation(line: 204, column: 52, scope: !1725)
!1732 = !DILocation(line: 204, column: 86, scope: !1725)
!1733 = !DILocation(line: 206, column: 19, scope: !1725)
!1734 = !DILocation(line: 206, column: 22, scope: !1725)
!1735 = !DILocation(line: 206, column: 15, scope: !1725)
!1736 = !DILocation(line: 207, column: 4, scope: !1725)
!1737 = !DILocation(line: 207, column: 9, scope: !1725)
!1738 = !DILocation(line: 207, column: 12, scope: !1725)
!1739 = !DILocation(line: 206, column: 44, scope: !1725)
!1740 = !DILocation(line: 207, column: 37, scope: !1725)
!1741 = !DILocation(line: 206, column: 2, scope: !1725)
!1742 = distinct !DISubprogram(name: "variable_test_bit", scope: !1694, file: !1694, line: 224, type: !1726, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1743)
!1743 = !{!1744, !1745, !1746}
!1744 = !DILocalVariable(name: "nr", arg: 1, scope: !1742, file: !1694, line: 224, type: !129)
!1745 = !DILocalVariable(name: "addr", arg: 2, scope: !1742, file: !1694, line: 224, type: !1707)
!1746 = !DILocalVariable(name: "oldbit", scope: !1742, file: !1694, line: 226, type: !113)
!1747 = !DILocation(line: 224, column: 52, scope: !1742)
!1748 = !DILocation(line: 224, column: 86, scope: !1742)
!1749 = !DILocation(line: 226, column: 2, scope: !1742)
!1750 = !DILocation(line: 226, column: 7, scope: !1742)
!1751 = !DILocation(line: 231, column: 33, scope: !1742)
!1752 = !DILocation(line: 231, column: 46, scope: !1742)
!1753 = !DILocation(line: 228, column: 2, scope: !1742)
!1754 = !{i64 2148070503, i64 2148070577}
!1755 = !DILocation(line: 233, column: 9, scope: !1742)
!1756 = !DILocation(line: 234, column: 1, scope: !1742)
!1757 = !DILocation(line: 233, column: 2, scope: !1742)
!1758 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !782, file: !782, line: 65, type: !783, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!1759 = !DILocation(line: 67, column: 9, scope: !1758)
!1760 = !DILocation(line: 67, column: 2, scope: !1758)
!1761 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !782, file: !782, line: 70, type: !677, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!1762 = !DILocation(line: 72, column: 2, scope: !1761)
!1763 = !DILocation(line: 73, column: 1, scope: !1761)
!1764 = distinct !DISubprogram(name: "native_save_fl", scope: !782, file: !782, line: 17, type: !783, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1765)
!1765 = !{!1766}
!1766 = !DILocalVariable(name: "flags", scope: !1764, file: !782, line: 19, type: !32)
!1767 = !DILocation(line: 19, column: 2, scope: !1764)
!1768 = !DILocation(line: 19, column: 16, scope: !1764)
!1769 = !DILocation(line: 26, column: 2, scope: !1764)
!1770 = !{i64 1966580, i64 1966601}
!1771 = !DILocation(line: 32, column: 9, scope: !1764)
!1772 = !DILocation(line: 33, column: 1, scope: !1764)
!1773 = !DILocation(line: 32, column: 2, scope: !1764)
!1774 = distinct !DISubprogram(name: "native_irq_disable", scope: !782, file: !782, line: 35, type: !677, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!1775 = !DILocation(line: 37, column: 2, scope: !1774)
!1776 = !{i64 1966784}
!1777 = !DILocation(line: 38, column: 1, scope: !1774)
!1778 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !782, file: !782, line: 120, type: !1779, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1781)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!39, !32}
!1781 = !{!1782}
!1782 = !DILocalVariable(name: "flags", arg: 1, scope: !1778, file: !782, line: 120, type: !32)
!1783 = !DILocation(line: 120, column: 67, scope: !1778)
!1784 = !DILocation(line: 122, column: 11, scope: !1778)
!1785 = !DILocation(line: 122, column: 17, scope: !1778)
!1786 = !DILocation(line: 122, column: 9, scope: !1778)
!1787 = !DILocation(line: 122, column: 2, scope: !1778)
!1788 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !782, file: !782, line: 75, type: !677, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!1789 = !DILocation(line: 77, column: 2, scope: !1788)
!1790 = !DILocation(line: 78, column: 1, scope: !1788)
!1791 = distinct !DISubprogram(name: "native_irq_enable", scope: !782, file: !782, line: 40, type: !677, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!1792 = !DILocation(line: 42, column: 2, scope: !1791)
!1793 = !{i64 1966876}
!1794 = !DILocation(line: 43, column: 1, scope: !1791)
!1795 = distinct !DISubprogram(name: "const_test_bit", scope: !1796, file: !1796, line: 166, type: !1705, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1797)
!1796 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!1797 = !{!1798, !1799, !1800, !1801, !1802}
!1798 = !DILocalVariable(name: "nr", arg: 1, scope: !1795, file: !1796, line: 166, type: !32)
!1799 = !DILocalVariable(name: "addr", arg: 2, scope: !1795, file: !1796, line: 166, type: !1707)
!1800 = !DILocalVariable(name: "p", scope: !1795, file: !1796, line: 168, type: !125)
!1801 = !DILocalVariable(name: "mask", scope: !1795, file: !1796, line: 169, type: !32)
!1802 = !DILocalVariable(name: "val", scope: !1795, file: !1796, line: 170, type: !32)
!1803 = !DILocation(line: 166, column: 30, scope: !1795)
!1804 = !DILocation(line: 166, column: 64, scope: !1795)
!1805 = !DILocation(line: 168, column: 2, scope: !1795)
!1806 = !DILocation(line: 168, column: 23, scope: !1795)
!1807 = !DILocation(line: 168, column: 50, scope: !1795)
!1808 = !DILocation(line: 168, column: 57, scope: !1795)
!1809 = !DILocation(line: 168, column: 55, scope: !1795)
!1810 = !DILocation(line: 169, column: 2, scope: !1795)
!1811 = !DILocation(line: 169, column: 16, scope: !1795)
!1812 = !DILocation(line: 169, column: 23, scope: !1795)
!1813 = !DILocation(line: 170, column: 2, scope: !1795)
!1814 = !DILocation(line: 170, column: 16, scope: !1795)
!1815 = !DILocation(line: 170, column: 23, scope: !1795)
!1816 = !DILocation(line: 170, column: 22, scope: !1795)
!1817 = !DILocation(line: 172, column: 12, scope: !1795)
!1818 = !DILocation(line: 172, column: 18, scope: !1795)
!1819 = !DILocation(line: 172, column: 16, scope: !1795)
!1820 = !DILocation(line: 172, column: 10, scope: !1795)
!1821 = !DILocation(line: 172, column: 9, scope: !1795)
!1822 = !DILocation(line: 173, column: 1, scope: !1795)
!1823 = !DILocation(line: 172, column: 2, scope: !1795)
!1824 = distinct !DISubprogram(name: "_test_bit", scope: !1825, file: !1825, line: 139, type: !1705, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1826)
!1825 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!1826 = !{!1827, !1828}
!1827 = !DILocalVariable(name: "nr", arg: 1, scope: !1824, file: !1825, line: 139, type: !32)
!1828 = !DILocalVariable(name: "addr", arg: 2, scope: !1824, file: !1825, line: 139, type: !1707)
!1829 = !DILocation(line: 139, column: 25, scope: !1824)
!1830 = !DILocation(line: 139, column: 59, scope: !1824)
!1831 = !DILocation(line: 141, column: 25, scope: !1824)
!1832 = !DILocation(line: 141, column: 32, scope: !1824)
!1833 = !DILocation(line: 141, column: 30, scope: !1824)
!1834 = !DILocation(line: 141, column: 2, scope: !1824)
!1835 = !DILocation(line: 142, column: 23, scope: !1824)
!1836 = !DILocation(line: 142, column: 27, scope: !1824)
!1837 = !DILocation(line: 142, column: 9, scope: !1824)
!1838 = !DILocation(line: 142, column: 2, scope: !1824)
!1839 = distinct !DISubprogram(name: "generic___clear_bit", scope: !1796, file: !1796, line: 37, type: !1840, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1843)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !32, !1842}
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1843 = !{!1844, !1845, !1846, !1847}
!1844 = !DILocalVariable(name: "nr", arg: 1, scope: !1839, file: !1796, line: 37, type: !32)
!1845 = !DILocalVariable(name: "addr", arg: 2, scope: !1839, file: !1796, line: 37, type: !1842)
!1846 = !DILocalVariable(name: "mask", scope: !1839, file: !1796, line: 39, type: !32)
!1847 = !DILocalVariable(name: "p", scope: !1839, file: !1796, line: 40, type: !123)
!1848 = !DILocation(line: 37, column: 35, scope: !1839)
!1849 = !DILocation(line: 37, column: 63, scope: !1839)
!1850 = !DILocation(line: 39, column: 2, scope: !1839)
!1851 = !DILocation(line: 39, column: 16, scope: !1839)
!1852 = !DILocation(line: 39, column: 23, scope: !1839)
!1853 = !DILocation(line: 40, column: 2, scope: !1839)
!1854 = !DILocation(line: 40, column: 17, scope: !1839)
!1855 = !DILocation(line: 40, column: 39, scope: !1839)
!1856 = !DILocation(line: 40, column: 47, scope: !1839)
!1857 = !DILocation(line: 40, column: 45, scope: !1839)
!1858 = !DILocation(line: 42, column: 9, scope: !1839)
!1859 = !DILocation(line: 42, column: 8, scope: !1839)
!1860 = !DILocation(line: 42, column: 3, scope: !1839)
!1861 = !DILocation(line: 42, column: 5, scope: !1839)
!1862 = !DILocation(line: 43, column: 1, scope: !1839)
!1863 = distinct !DISubprogram(name: "___clear_bit", scope: !1825, file: !1825, line: 42, type: !1840, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1864)
!1864 = !{!1865, !1866}
!1865 = !DILocalVariable(name: "nr", arg: 1, scope: !1863, file: !1825, line: 42, type: !32)
!1866 = !DILocalVariable(name: "addr", arg: 2, scope: !1863, file: !1825, line: 42, type: !1842)
!1867 = !DILocation(line: 42, column: 28, scope: !1863)
!1868 = !DILocation(line: 42, column: 56, scope: !1863)
!1869 = !DILocation(line: 44, column: 19, scope: !1863)
!1870 = !DILocation(line: 44, column: 26, scope: !1863)
!1871 = !DILocation(line: 44, column: 24, scope: !1863)
!1872 = !DILocation(line: 44, column: 2, scope: !1863)
!1873 = !DILocation(line: 45, column: 19, scope: !1863)
!1874 = !DILocation(line: 45, column: 23, scope: !1863)
!1875 = !DILocation(line: 45, column: 2, scope: !1863)
!1876 = !DILocation(line: 46, column: 1, scope: !1863)
!1877 = distinct !DISubprogram(name: "instrument_write", scope: !1528, file: !1528, line: 38, type: !1529, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1878)
!1878 = !{!1879, !1880}
!1879 = !DILocalVariable(name: "v", arg: 1, scope: !1877, file: !1528, line: 38, type: !1531)
!1880 = !DILocalVariable(name: "size", arg: 2, scope: !1877, file: !1528, line: 38, type: !1534)
!1881 = !DILocation(line: 38, column: 67, scope: !1877)
!1882 = !DILocation(line: 38, column: 77, scope: !1877)
!1883 = !DILocation(line: 40, column: 20, scope: !1877)
!1884 = !DILocation(line: 40, column: 23, scope: !1877)
!1885 = !DILocation(line: 40, column: 2, scope: !1877)
!1886 = !DILocation(line: 41, column: 2, scope: !1877)
!1887 = !DILocation(line: 42, column: 1, scope: !1877)
!1888 = distinct !DISubprogram(name: "arch___clear_bit", scope: !1694, file: !1694, line: 92, type: !1840, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1889)
!1889 = !{!1890, !1891}
!1890 = !DILocalVariable(name: "nr", arg: 1, scope: !1888, file: !1694, line: 92, type: !32)
!1891 = !DILocalVariable(name: "addr", arg: 2, scope: !1888, file: !1694, line: 92, type: !1842)
!1892 = !DILocation(line: 92, column: 32, scope: !1888)
!1893 = !DILocation(line: 92, column: 60, scope: !1888)
!1894 = !DILocation(line: 94, column: 44, scope: !1888)
!1895 = !DILocation(line: 94, column: 56, scope: !1888)
!1896 = !DILocation(line: 94, column: 2, scope: !1888)
!1897 = !{i64 2148059350}
!1898 = !DILocation(line: 95, column: 1, scope: !1888)
!1899 = !DISubprogram(name: "on_each_cpu_cond_mask", scope: !976, file: !976, line: 53, type: !1900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !1902, !979, !31, !113, !130}
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_cond_func_t", file: !976, line: 18, baseType: !1903)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!113, !39, !31}
!1906 = distinct !DISubprogram(name: "clear_bit", scope: !1907, file: !1907, line: 39, type: !1908, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1910)
!1907 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !129, !1842}
!1910 = !{!1911, !1912}
!1911 = !DILocalVariable(name: "nr", arg: 1, scope: !1906, file: !1907, line: 39, type: !129)
!1912 = !DILocalVariable(name: "addr", arg: 2, scope: !1906, file: !1907, line: 39, type: !1842)
!1913 = !DILocation(line: 39, column: 44, scope: !1906)
!1914 = !DILocation(line: 39, column: 72, scope: !1906)
!1915 = !DILocation(line: 41, column: 26, scope: !1906)
!1916 = !DILocation(line: 41, column: 33, scope: !1906)
!1917 = !DILocation(line: 41, column: 31, scope: !1906)
!1918 = !DILocation(line: 41, column: 2, scope: !1906)
!1919 = !DILocation(line: 42, column: 17, scope: !1906)
!1920 = !DILocation(line: 42, column: 21, scope: !1906)
!1921 = !DILocation(line: 42, column: 2, scope: !1906)
!1922 = !DILocation(line: 43, column: 1, scope: !1906)
!1923 = distinct !DISubprogram(name: "set_bit", scope: !1907, file: !1907, line: 26, type: !1908, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1924)
!1924 = !{!1925, !1926}
!1925 = !DILocalVariable(name: "nr", arg: 1, scope: !1923, file: !1907, line: 26, type: !129)
!1926 = !DILocalVariable(name: "addr", arg: 2, scope: !1923, file: !1907, line: 26, type: !1842)
!1927 = !DILocation(line: 26, column: 42, scope: !1923)
!1928 = !DILocation(line: 26, column: 70, scope: !1923)
!1929 = !DILocation(line: 28, column: 26, scope: !1923)
!1930 = !DILocation(line: 28, column: 33, scope: !1923)
!1931 = !DILocation(line: 28, column: 31, scope: !1923)
!1932 = !DILocation(line: 28, column: 2, scope: !1923)
!1933 = !DILocation(line: 29, column: 15, scope: !1923)
!1934 = !DILocation(line: 29, column: 19, scope: !1923)
!1935 = !DILocation(line: 29, column: 2, scope: !1923)
!1936 = !DILocation(line: 30, column: 1, scope: !1923)
!1937 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1528, file: !1528, line: 80, type: !1529, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1938)
!1938 = !{!1939, !1940}
!1939 = !DILocalVariable(name: "v", arg: 1, scope: !1937, file: !1528, line: 80, type: !1531)
!1940 = !DILocalVariable(name: "size", arg: 2, scope: !1937, file: !1528, line: 80, type: !1534)
!1941 = !DILocation(line: 80, column: 74, scope: !1937)
!1942 = !DILocation(line: 80, column: 84, scope: !1937)
!1943 = !DILocation(line: 82, column: 20, scope: !1937)
!1944 = !DILocation(line: 82, column: 23, scope: !1937)
!1945 = !DILocation(line: 82, column: 2, scope: !1937)
!1946 = !DILocation(line: 83, column: 2, scope: !1937)
!1947 = !DILocation(line: 84, column: 1, scope: !1937)
!1948 = distinct !DISubprogram(name: "arch_clear_bit", scope: !1694, file: !1694, line: 72, type: !1908, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1949)
!1949 = !{!1950, !1951}
!1950 = !DILocalVariable(name: "nr", arg: 1, scope: !1948, file: !1694, line: 72, type: !129)
!1951 = !DILocalVariable(name: "addr", arg: 2, scope: !1948, file: !1694, line: 72, type: !1842)
!1952 = !DILocation(line: 72, column: 21, scope: !1948)
!1953 = !DILocation(line: 72, column: 49, scope: !1948)
!1954 = !DILocation(line: 74, column: 27, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1948, file: !1694, line: 74, column: 6)
!1956 = !DILocation(line: 74, column: 6, scope: !1955)
!1957 = !DILocation(line: 74, column: 6, scope: !1948)
!1958 = !DILocation(line: 76, column: 6, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1955, file: !1694, line: 74, column: 32)
!1960 = !DILocation(line: 77, column: 13, scope: !1959)
!1961 = !DILocation(line: 77, column: 12, scope: !1959)
!1962 = !DILocation(line: 75, column: 3, scope: !1959)
!1963 = !{i64 2148058179, i64 2148058218, i64 2148058239, i64 2148058276, i64 2148058299, i64 2148058169}
!1964 = !DILocation(line: 78, column: 2, scope: !1959)
!1965 = !DILocation(line: 80, column: 8, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1955, file: !1694, line: 78, column: 9)
!1967 = !DILocation(line: 80, column: 32, scope: !1966)
!1968 = !DILocation(line: 79, column: 3, scope: !1966)
!1969 = !{i64 2148058464, i64 2148058503, i64 2148058524, i64 2148058561, i64 2148058584, i64 2148058454}
!1970 = !DILocation(line: 82, column: 1, scope: !1948)
!1971 = distinct !DISubprogram(name: "arch_set_bit", scope: !1694, file: !1694, line: 52, type: !1908, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1972)
!1972 = !{!1973, !1974}
!1973 = !DILocalVariable(name: "nr", arg: 1, scope: !1971, file: !1694, line: 52, type: !129)
!1974 = !DILocalVariable(name: "addr", arg: 2, scope: !1971, file: !1694, line: 52, type: !1842)
!1975 = !DILocation(line: 52, column: 19, scope: !1971)
!1976 = !DILocation(line: 52, column: 47, scope: !1971)
!1977 = !DILocation(line: 54, column: 27, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1971, file: !1694, line: 54, column: 6)
!1979 = !DILocation(line: 54, column: 6, scope: !1978)
!1980 = !DILocation(line: 54, column: 6, scope: !1971)
!1981 = !DILocation(line: 56, column: 6, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1978, file: !1694, line: 54, column: 32)
!1983 = !DILocation(line: 57, column: 12, scope: !1982)
!1984 = !DILocation(line: 55, column: 3, scope: !1982)
!1985 = !{i64 2148056891, i64 2148056930, i64 2148056951, i64 2148056988, i64 2148057011, i64 2148056881}
!1986 = !DILocation(line: 59, column: 2, scope: !1982)
!1987 = !DILocation(line: 61, column: 8, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1978, file: !1694, line: 59, column: 9)
!1989 = !DILocation(line: 61, column: 32, scope: !1988)
!1990 = !DILocation(line: 60, column: 3, scope: !1988)
!1991 = !{i64 2148057176, i64 2148057215, i64 2148057236, i64 2148057273, i64 2148057296, i64 2148057166}
!1992 = !DILocation(line: 63, column: 1, scope: !1971)
!1993 = distinct !DISubprogram(name: "spin_lock", scope: !1994, file: !1994, line: 349, type: !1995, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1998)
!1994 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!1995 = !DISubroutineType(types: !1996)
!1996 = !{null, !1997}
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!1998 = !{!1999}
!1999 = !DILocalVariable(name: "lock", arg: 1, scope: !1993, file: !1994, line: 349, type: !1997)
!2000 = !DILocation(line: 349, column: 51, scope: !1993)
!2001 = !DILocation(line: 351, column: 2, scope: !1993)
!2002 = !DILocation(line: 352, column: 1, scope: !1993)
!2003 = distinct !DISubprogram(name: "spin_unlock", scope: !1994, file: !1994, line: 389, type: !1995, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2004)
!2004 = !{!2005}
!2005 = !DILocalVariable(name: "lock", arg: 1, scope: !2003, file: !1994, line: 389, type: !1997)
!2006 = !DILocation(line: 389, column: 53, scope: !2003)
!2007 = !DILocation(line: 391, column: 2, scope: !2003)
!2008 = !DILocation(line: 392, column: 1, scope: !2003)
!2009 = !DISubprogram(name: "_raw_spin_lock", scope: !849, file: !849, line: 22, type: !2010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !852}
!2012 = !DISubprogram(name: "_raw_spin_unlock", scope: !849, file: !849, line: 39, type: !2010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2013 = distinct !DISubprogram(name: "cmci_storm_detect", scope: !2, file: !2, line: 223, type: !369, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2014)
!2014 = !{!2015, !2016, !2019, !2021, !2023, !2024, !2027, !2029, !2031, !2032, !2033, !2037, !2039, !2041, !2047, !2049, !2053, !2055, !2059, !2061, !2064}
!2015 = !DILocalVariable(name: "cnt", scope: !2013, file: !2, line: 225, type: !12)
!2016 = !DILocalVariable(name: "pscr_ret__", scope: !2017, file: !2, line: 225, type: !12)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !2, line: 225, column: 21)
!2018 = distinct !DILexicalBlock(scope: !2013, file: !2, line: 225, column: 21)
!2019 = !DILocalVariable(name: "__vpp_verify", scope: !2020, file: !2, line: 225, type: !200)
!2020 = distinct !DILexicalBlock(scope: !2017, file: !2, line: 225, column: 21)
!2021 = !DILocalVariable(name: "pfo_val__", scope: !2022, file: !2, line: 225, type: !40)
!2022 = distinct !DILexicalBlock(scope: !2017, file: !2, line: 225, column: 21)
!2023 = !DILocalVariable(name: "ts", scope: !2013, file: !2, line: 226, type: !32)
!2024 = !DILocalVariable(name: "pscr_ret__", scope: !2025, file: !2, line: 226, type: !32)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !2, line: 226, column: 21)
!2026 = distinct !DILexicalBlock(scope: !2013, file: !2, line: 226, column: 21)
!2027 = !DILocalVariable(name: "__vpp_verify", scope: !2028, file: !2, line: 226, type: !200)
!2028 = distinct !DILexicalBlock(scope: !2025, file: !2, line: 226, column: 21)
!2029 = !DILocalVariable(name: "pfo_val__", scope: !2030, file: !2, line: 226, type: !95)
!2030 = distinct !DILexicalBlock(scope: !2025, file: !2, line: 226, column: 21)
!2031 = !DILocalVariable(name: "now", scope: !2013, file: !2, line: 227, type: !32)
!2032 = !DILocalVariable(name: "r", scope: !2013, file: !2, line: 228, type: !39)
!2033 = !DILocalVariable(name: "pscr_ret__", scope: !2034, file: !2, line: 230, type: !12)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !2, line: 230, column: 6)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !2, line: 230, column: 6)
!2036 = distinct !DILexicalBlock(scope: !2013, file: !2, line: 230, column: 6)
!2037 = !DILocalVariable(name: "__vpp_verify", scope: !2038, file: !2, line: 230, type: !200)
!2038 = distinct !DILexicalBlock(scope: !2034, file: !2, line: 230, column: 6)
!2039 = !DILocalVariable(name: "pfo_val__", scope: !2040, file: !2, line: 230, type: !40)
!2040 = distinct !DILexicalBlock(scope: !2034, file: !2, line: 230, column: 6)
!2041 = !DILocalVariable(name: "__vpp_verify", scope: !2042, file: !2, line: 237, type: !200)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !2, line: 237, column: 3)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !2, line: 237, column: 3)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !2, line: 237, column: 3)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !2, line: 235, column: 9)
!2046 = distinct !DILexicalBlock(scope: !2013, file: !2, line: 233, column: 6)
!2047 = !DILocalVariable(name: "pto_val__", scope: !2048, file: !2, line: 237, type: !95)
!2048 = distinct !DILexicalBlock(scope: !2043, file: !2, line: 237, column: 3)
!2049 = !DILocalVariable(name: "__vpp_verify", scope: !2050, file: !2, line: 239, type: !200)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !2, line: 239, column: 2)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !2, line: 239, column: 2)
!2052 = distinct !DILexicalBlock(scope: !2013, file: !2, line: 239, column: 2)
!2053 = !DILocalVariable(name: "pto_val__", scope: !2054, file: !2, line: 239, type: !40)
!2054 = distinct !DILexicalBlock(scope: !2051, file: !2, line: 239, column: 2)
!2055 = !DILocalVariable(name: "__vpp_verify", scope: !2056, file: !2, line: 245, type: !200)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !2, line: 245, column: 2)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !2, line: 245, column: 2)
!2058 = distinct !DILexicalBlock(scope: !2013, file: !2, line: 245, column: 2)
!2059 = !DILocalVariable(name: "pto_val__", scope: !2060, file: !2, line: 245, type: !40)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !2, line: 245, column: 2)
!2061 = !DILocalVariable(name: "__vpp_verify", scope: !2062, file: !2, line: 248, type: !200)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !2, line: 248, column: 2)
!2063 = distinct !DILexicalBlock(scope: !2013, file: !2, line: 248, column: 2)
!2064 = !DILocalVariable(name: "pto_val__", scope: !2065, file: !2, line: 248, type: !40)
!2065 = distinct !DILexicalBlock(scope: !2063, file: !2, line: 248, column: 2)
!2066 = !DILocation(line: 225, column: 2, scope: !2013)
!2067 = !DILocation(line: 225, column: 15, scope: !2013)
!2068 = !DILocation(line: 225, column: 21, scope: !2018)
!2069 = !DILocation(line: 225, column: 21, scope: !2017)
!2070 = !DILocation(line: 225, column: 21, scope: !2020)
!2071 = !DILocation(line: 225, column: 21, scope: !2022)
!2072 = !{i64 2153004385}
!2073 = !DILocation(line: 226, column: 2, scope: !2013)
!2074 = !DILocation(line: 226, column: 16, scope: !2013)
!2075 = !DILocation(line: 226, column: 21, scope: !2026)
!2076 = !DILocation(line: 226, column: 21, scope: !2025)
!2077 = !DILocation(line: 226, column: 21, scope: !2028)
!2078 = !DILocation(line: 226, column: 21, scope: !2030)
!2079 = !{i64 2153008233}
!2080 = !DILocation(line: 227, column: 2, scope: !2013)
!2081 = !DILocation(line: 227, column: 16, scope: !2013)
!2082 = !DILocation(line: 227, column: 22, scope: !2013)
!2083 = !DILocation(line: 228, column: 2, scope: !2013)
!2084 = !DILocation(line: 228, column: 6, scope: !2013)
!2085 = !DILocation(line: 230, column: 6, scope: !2035)
!2086 = !DILocation(line: 230, column: 6, scope: !2034)
!2087 = !DILocation(line: 230, column: 6, scope: !2038)
!2088 = !DILocation(line: 230, column: 6, scope: !2040)
!2089 = !{i64 2153010935}
!2090 = !DILocation(line: 230, column: 40, scope: !2036)
!2091 = !DILocation(line: 230, column: 6, scope: !2013)
!2092 = !DILocation(line: 231, column: 3, scope: !2036)
!2093 = !DILocation(line: 233, column: 6, scope: !2046)
!2094 = !DILocation(line: 233, column: 6, scope: !2013)
!2095 = !DILocation(line: 234, column: 6, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2046, file: !2, line: 233, column: 53)
!2097 = !DILocation(line: 235, column: 2, scope: !2096)
!2098 = !DILocation(line: 236, column: 7, scope: !2045)
!2099 = !DILocation(line: 237, column: 3, scope: !2044)
!2100 = !DILocation(line: 237, column: 3, scope: !2043)
!2101 = !DILocation(line: 237, column: 3, scope: !2042)
!2102 = !DILocation(line: 237, column: 3, scope: !2048)
!2103 = !{i64 2153016027}
!2104 = !DILocation(line: 239, column: 2, scope: !2052)
!2105 = !DILocation(line: 239, column: 2, scope: !2051)
!2106 = !DILocation(line: 239, column: 2, scope: !2050)
!2107 = !DILocation(line: 239, column: 2, scope: !2054)
!2108 = !{i64 2153019323}
!2109 = !DILocation(line: 241, column: 6, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2013, file: !2, line: 241, column: 6)
!2111 = !DILocation(line: 241, column: 10, scope: !2110)
!2112 = !DILocation(line: 241, column: 6, scope: !2013)
!2113 = !DILocation(line: 242, column: 3, scope: !2110)
!2114 = !DILocation(line: 244, column: 2, scope: !2013)
!2115 = !DILocation(line: 245, column: 2, scope: !2058)
!2116 = !DILocation(line: 245, column: 2, scope: !2057)
!2117 = !DILocation(line: 245, column: 2, scope: !2056)
!2118 = !DILocation(line: 245, column: 2, scope: !2060)
!2119 = !{i64 2153023685}
!2120 = !DILocation(line: 246, column: 6, scope: !2013)
!2121 = !DILocation(line: 246, column: 4, scope: !2013)
!2122 = !DILocation(line: 247, column: 2, scope: !2013)
!2123 = !DILocation(line: 248, column: 2, scope: !2013)
!2124 = !DILocation(line: 248, column: 2, scope: !2063)
!2125 = !DILocation(line: 248, column: 2, scope: !2062)
!2126 = !DILocation(line: 248, column: 2, scope: !2065)
!2127 = !{i64 2153027879}
!2128 = !DILocation(line: 250, column: 6, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2013, file: !2, line: 250, column: 6)
!2130 = !DILocation(line: 250, column: 8, scope: !2129)
!2131 = !DILocation(line: 250, column: 6, scope: !2013)
!2132 = !DILocation(line: 251, column: 3, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2129, file: !2, line: 251, column: 3)
!2134 = !DILocation(line: 251, column: 3, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2133, file: !2, line: 251, column: 3)
!2136 = !DILocation(line: 251, column: 3, scope: !2129)
!2137 = !DILocation(line: 252, column: 2, scope: !2013)
!2138 = !DILocation(line: 253, column: 1, scope: !2013)
!2139 = distinct !DISubprogram(name: "atomic_add_return", scope: !470, file: !470, line: 120, type: !579, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2140)
!2140 = !{!2141, !2142}
!2141 = !DILocalVariable(name: "i", arg: 1, scope: !2139, file: !470, line: 120, type: !39)
!2142 = !DILocalVariable(name: "v", arg: 2, scope: !2139, file: !470, line: 120, type: !473)
!2143 = !DILocation(line: 120, column: 23, scope: !2139)
!2144 = !DILocation(line: 120, column: 36, scope: !2139)
!2145 = !DILocation(line: 122, column: 2, scope: !2139)
!2146 = !DILocation(line: 122, column: 2, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2139, file: !470, line: 122, column: 2)
!2148 = !DILocation(line: 123, column: 31, scope: !2139)
!2149 = !DILocation(line: 123, column: 2, scope: !2139)
!2150 = !DILocation(line: 124, column: 31, scope: !2139)
!2151 = !DILocation(line: 124, column: 34, scope: !2139)
!2152 = !DILocation(line: 124, column: 9, scope: !2139)
!2153 = !DILocation(line: 124, column: 2, scope: !2139)
!2154 = !DISubprogram(name: "mce_timer_kick", scope: !2155, file: !2155, line: 63, type: !441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2155 = !DIFile(filename: "arch/x86/kernel/cpu/mce/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8c545da49e4aac298c586d134d611df")
!2156 = distinct !DISubprogram(name: "raw_atomic_add_return", scope: !1549, file: !1549, line: 548, type: !579, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2157)
!2157 = !{!2158, !2159}
!2158 = !DILocalVariable(name: "i", arg: 1, scope: !2156, file: !1549, line: 548, type: !39)
!2159 = !DILocalVariable(name: "v", arg: 2, scope: !2156, file: !1549, line: 548, type: !473)
!2160 = !DILocation(line: 548, column: 27, scope: !2156)
!2161 = !DILocation(line: 548, column: 40, scope: !2156)
!2162 = !DILocation(line: 551, column: 32, scope: !2156)
!2163 = !DILocation(line: 551, column: 35, scope: !2156)
!2164 = !DILocation(line: 551, column: 9, scope: !2156)
!2165 = !DILocation(line: 551, column: 2, scope: !2156)
!2166 = distinct !DISubprogram(name: "__rdmsr", scope: !1363, file: !1363, line: 80, type: !1364, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2167)
!2167 = !{!2168, !2169, !2170}
!2168 = !DILocalVariable(name: "msr", arg: 1, scope: !2166, file: !1363, line: 80, type: !12)
!2169 = !DILocalVariable(name: "low", scope: !2166, file: !1363, line: 82, type: !32)
!2170 = !DILocalVariable(name: "high", scope: !2166, file: !1363, line: 82, type: !32)
!2171 = !DILocation(line: 80, column: 64, scope: !2166)
!2172 = !DILocation(line: 82, column: 2, scope: !2166)
!2173 = !DILocation(line: 87, column: 45, scope: !2166)
!2174 = !DILocation(line: 84, column: 2, scope: !2166)
!2175 = !{i64 1242601, i64 1242622, i64 2149425133, i64 2149425177, i64 2149425200, i64 2149425233, i64 2149425264, i64 2149425303}
!2176 = !DILocation(line: 89, column: 9, scope: !2166)
!2177 = !DILocation(line: 90, column: 1, scope: !2166)
!2178 = !DILocation(line: 89, column: 2, scope: !2166)
!2179 = distinct !DISubprogram(name: "static_key_false", scope: !2180, file: !2180, line: 205, type: !2181, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2203)
!2180 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!113, !2183}
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2180, line: 85, size: 128, elements: !2185)
!2185 = !{!2186, !2187}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2184, file: !2180, line: 86, baseType: !155, size: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !2180, line: 101, baseType: !2188, size: 64, offset: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2184, file: !2180, line: 101, size: 64, elements: !2189)
!2189 = !{!2190, !2191, !2200}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2188, file: !2180, line: 102, baseType: !32, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2188, file: !2180, line: 103, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2180, line: 117, size: 128, elements: !2194)
!2194 = !{!2195, !2198, !2199}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2193, file: !2180, line: 118, baseType: !2196, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !41, line: 20, baseType: !2197)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !43, line: 26, baseType: !39)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2193, file: !2180, line: 119, baseType: !2196, size: 32, offset: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2193, file: !2180, line: 120, baseType: !129, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2188, file: !2180, line: 104, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2180, line: 104, flags: DIFlagFwdDecl)
!2203 = !{!2204}
!2204 = !DILocalVariable(name: "key", arg: 1, scope: !2179, file: !2180, line: 205, type: !2183)
!2205 = !DILocation(line: 205, column: 65, scope: !2179)
!2206 = !DILocation(line: 207, column: 28, scope: !2179)
!2207 = !DILocation(line: 207, column: 9, scope: !2179)
!2208 = !DILocation(line: 207, column: 2, scope: !2179)
!2209 = !DISubprogram(name: "do_trace_read_msr", scope: !1363, file: !1363, line: 65, type: !2210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !12, !95, !39}
!2212 = distinct !DISubprogram(name: "arch_static_branch", scope: !2213, file: !2213, line: 25, type: !2214, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2216)
!2213 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!113, !2183, !113}
!2216 = !{!2217, !2218, !2219}
!2217 = !DILocalVariable(name: "key", arg: 1, scope: !2212, file: !2213, line: 25, type: !2183)
!2218 = !DILocalVariable(name: "branch", arg: 2, scope: !2212, file: !2213, line: 25, type: !113)
!2219 = !DILabel(scope: !2212, name: "l_yes", file: !2213, line: 33)
!2220 = !DILocation(line: 25, column: 67, scope: !2212)
!2221 = !DILocation(line: 25, column: 77, scope: !2212)
!2222 = !DILocation(line: 30, column: 13, scope: !2212)
!2223 = !DILocation(line: 30, column: 28, scope: !2212)
!2224 = !DILocation(line: 30, column: 26, scope: !2212)
!2225 = !DILocation(line: 27, column: 2, scope: !2212)
!2226 = !{i64 1146965, i64 1147009, i64 2148631692, i64 2148631713, i64 2148631739, i64 2148631772, i64 2148631806, i64 2148631830}
!2227 = !DILocation(line: 32, column: 2, scope: !2212)
!2228 = !DILocation(line: 33, column: 1, scope: !2212)
!2229 = !DILocation(line: 34, column: 2, scope: !2212)
!2230 = !DILocation(line: 35, column: 1, scope: !2212)
!2231 = distinct !DISubprogram(name: "native_write_msr", scope: !1363, file: !1363, line: 143, type: !2232, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{null, !12, !40, !40}
!2234 = !{!2235, !2236, !2237}
!2235 = !DILocalVariable(name: "msr", arg: 1, scope: !2231, file: !1363, line: 143, type: !12)
!2236 = !DILocalVariable(name: "low", arg: 2, scope: !2231, file: !1363, line: 143, type: !40)
!2237 = !DILocalVariable(name: "high", arg: 3, scope: !2231, file: !1363, line: 143, type: !40)
!2238 = !DILocation(line: 143, column: 31, scope: !2231)
!2239 = !DILocation(line: 143, column: 40, scope: !2231)
!2240 = !DILocation(line: 143, column: 49, scope: !2231)
!2241 = !DILocation(line: 145, column: 10, scope: !2231)
!2242 = !DILocation(line: 145, column: 15, scope: !2231)
!2243 = !DILocation(line: 145, column: 20, scope: !2231)
!2244 = !DILocation(line: 145, column: 2, scope: !2231)
!2245 = !DILocation(line: 147, column: 6, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2231, file: !1363, line: 147, column: 6)
!2247 = !DILocation(line: 147, column: 6, scope: !2231)
!2248 = !DILocation(line: 148, column: 22, scope: !2246)
!2249 = !DILocation(line: 148, column: 33, scope: !2246)
!2250 = !DILocation(line: 148, column: 28, scope: !2246)
!2251 = !DILocation(line: 148, column: 38, scope: !2246)
!2252 = !DILocation(line: 148, column: 46, scope: !2246)
!2253 = !DILocation(line: 148, column: 44, scope: !2246)
!2254 = !DILocation(line: 148, column: 3, scope: !2246)
!2255 = !DILocation(line: 149, column: 1, scope: !2231)
!2256 = distinct !DISubprogram(name: "__wrmsr", scope: !1363, file: !1363, line: 92, type: !2232, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2257)
!2257 = !{!2258, !2259, !2260}
!2258 = !DILocalVariable(name: "msr", arg: 1, scope: !2256, file: !1363, line: 92, type: !12)
!2259 = !DILocalVariable(name: "low", arg: 2, scope: !2256, file: !1363, line: 92, type: !40)
!2260 = !DILocalVariable(name: "high", arg: 3, scope: !2256, file: !1363, line: 92, type: !40)
!2261 = !DILocation(line: 92, column: 50, scope: !2256)
!2262 = !DILocation(line: 92, column: 59, scope: !2256)
!2263 = !DILocation(line: 92, column: 68, scope: !2256)
!2264 = !DILocation(line: 97, column: 17, scope: !2256)
!2265 = !DILocation(line: 97, column: 27, scope: !2256)
!2266 = !DILocation(line: 97, column: 38, scope: !2256)
!2267 = !DILocation(line: 94, column: 2, scope: !2256)
!2268 = !{i64 1242857, i64 1242878, i64 2149425632, i64 2149425676, i64 2149425699, i64 2149425732, i64 2149425763, i64 2149425802}
!2269 = !DILocation(line: 98, column: 1, scope: !2256)
!2270 = !DISubprogram(name: "do_trace_write_msr", scope: !1363, file: !1363, line: 64, type: !2210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2271 = distinct !DISubprogram(name: "rdmsrl_safe", scope: !1363, file: !1363, line: 281, type: !2272, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2275)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!39, !12, !2274}
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!2275 = !{!2276, !2277, !2278}
!2276 = !DILocalVariable(name: "msr", arg: 1, scope: !2271, file: !1363, line: 281, type: !12)
!2277 = !DILocalVariable(name: "p", arg: 2, scope: !2271, file: !1363, line: 281, type: !2274)
!2278 = !DILocalVariable(name: "err", scope: !2271, file: !1363, line: 283, type: !39)
!2279 = !DILocation(line: 281, column: 44, scope: !2271)
!2280 = !DILocation(line: 281, column: 69, scope: !2271)
!2281 = !DILocation(line: 283, column: 2, scope: !2271)
!2282 = !DILocation(line: 283, column: 6, scope: !2271)
!2283 = !DILocation(line: 285, column: 28, scope: !2271)
!2284 = !DILocation(line: 285, column: 7, scope: !2271)
!2285 = !DILocation(line: 285, column: 3, scope: !2271)
!2286 = !DILocation(line: 285, column: 5, scope: !2271)
!2287 = !DILocation(line: 286, column: 9, scope: !2271)
!2288 = !DILocation(line: 287, column: 1, scope: !2271)
!2289 = !DILocation(line: 286, column: 2, scope: !2271)
!2290 = distinct !DISubprogram(name: "wrmsrl_safe", scope: !1363, file: !1363, line: 303, type: !2291, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2293)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!39, !40, !95}
!2293 = !{!2294, !2295}
!2294 = !DILocalVariable(name: "msr", arg: 1, scope: !2290, file: !1363, line: 303, type: !40)
!2295 = !DILocalVariable(name: "val", arg: 2, scope: !2290, file: !1363, line: 303, type: !95)
!2296 = !DILocation(line: 303, column: 35, scope: !2290)
!2297 = !DILocation(line: 303, column: 44, scope: !2290)
!2298 = !DILocation(line: 305, column: 20, scope: !2290)
!2299 = !DILocation(line: 305, column: 30, scope: !2290)
!2300 = !DILocation(line: 305, column: 25, scope: !2290)
!2301 = !DILocation(line: 305, column: 42, scope: !2290)
!2302 = !DILocation(line: 305, column: 46, scope: !2290)
!2303 = !DILocation(line: 305, column: 36, scope: !2290)
!2304 = !DILocation(line: 305, column: 9, scope: !2290)
!2305 = !DILocation(line: 305, column: 2, scope: !2290)
!2306 = distinct !DISubprogram(name: "native_read_msr_safe", scope: !1363, file: !1363, line: 126, type: !2307, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2309)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!97, !12, !38}
!2309 = !{!2310, !2311, !2312, !2313}
!2310 = !DILocalVariable(name: "msr", arg: 1, scope: !2306, file: !1363, line: 126, type: !12)
!2311 = !DILocalVariable(name: "err", arg: 2, scope: !2306, file: !1363, line: 127, type: !38)
!2312 = !DILocalVariable(name: "low", scope: !2306, file: !1363, line: 129, type: !32)
!2313 = !DILocalVariable(name: "high", scope: !2306, file: !1363, line: 129, type: !32)
!2314 = !DILocation(line: 126, column: 68, scope: !2306)
!2315 = !DILocation(line: 127, column: 18, scope: !2306)
!2316 = !DILocation(line: 129, column: 2, scope: !2306)
!2317 = !DILocation(line: 134, column: 23, scope: !2306)
!2318 = !DILocation(line: 135, column: 15, scope: !2306)
!2319 = !DILocation(line: 131, column: 2, scope: !2306)
!2320 = !{i64 1243689, i64 1243730, i64 1243734, i64 2149426342, i64 2149426367, i64 2149426402, i64 2149426619, i64 2149426672, i64 2149426703, i64 2149426734, i64 2149426812, i64 2149426846, i64 2149426884, i64 2149426927, i64 2149426950, i64 2149426988, i64 2149427010, i64 2149427041, i64 2149427126, i64 2149427160, i64 2149427198, i64 2149427241, i64 2149427264, i64 2149427302, i64 2149427324, i64 2149427358, i64 2149427420, i64 2149427443, i64 2149426468, i64 2149427517, i64 2149426579}
!2321 = !DILocation(line: 136, column: 6, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2306, file: !1363, line: 136, column: 6)
!2323 = !DILocation(line: 136, column: 6, scope: !2306)
!2324 = !DILocation(line: 137, column: 21, scope: !2322)
!2325 = !DILocation(line: 137, column: 26, scope: !2322)
!2326 = !DILocation(line: 137, column: 56, scope: !2322)
!2327 = !DILocation(line: 137, column: 55, scope: !2322)
!2328 = !DILocation(line: 137, column: 3, scope: !2322)
!2329 = !DILocation(line: 138, column: 9, scope: !2306)
!2330 = !DILocation(line: 139, column: 1, scope: !2306)
!2331 = !DILocation(line: 138, column: 2, scope: !2306)
!2332 = distinct !DISubprogram(name: "wrmsr_safe", scope: !1363, file: !1363, line: 266, type: !2333, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!39, !12, !40, !40}
!2335 = !{!2336, !2337, !2338}
!2336 = !DILocalVariable(name: "msr", arg: 1, scope: !2332, file: !1363, line: 266, type: !12)
!2337 = !DILocalVariable(name: "low", arg: 2, scope: !2332, file: !1363, line: 266, type: !40)
!2338 = !DILocalVariable(name: "high", arg: 3, scope: !2332, file: !1363, line: 266, type: !40)
!2339 = !DILocation(line: 266, column: 43, scope: !2332)
!2340 = !DILocation(line: 266, column: 52, scope: !2332)
!2341 = !DILocation(line: 266, column: 61, scope: !2332)
!2342 = !DILocation(line: 268, column: 31, scope: !2332)
!2343 = !DILocation(line: 268, column: 36, scope: !2332)
!2344 = !DILocation(line: 268, column: 41, scope: !2332)
!2345 = !DILocation(line: 268, column: 9, scope: !2332)
!2346 = !DILocation(line: 268, column: 2, scope: !2332)
!2347 = distinct !DISubprogram(name: "native_write_msr_safe", scope: !1363, file: !1363, line: 153, type: !2333, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2348)
!2348 = !{!2349, !2350, !2351, !2352}
!2349 = !DILocalVariable(name: "msr", arg: 1, scope: !2347, file: !1363, line: 153, type: !12)
!2350 = !DILocalVariable(name: "low", arg: 2, scope: !2347, file: !1363, line: 153, type: !40)
!2351 = !DILocalVariable(name: "high", arg: 3, scope: !2347, file: !1363, line: 153, type: !40)
!2352 = !DILocalVariable(name: "err", scope: !2347, file: !1363, line: 155, type: !39)
!2353 = !DILocation(line: 153, column: 36, scope: !2347)
!2354 = !DILocation(line: 153, column: 45, scope: !2347)
!2355 = !DILocation(line: 153, column: 54, scope: !2347)
!2356 = !DILocation(line: 155, column: 2, scope: !2347)
!2357 = !DILocation(line: 155, column: 6, scope: !2347)
!2358 = !DILocation(line: 161, column: 15, scope: !2347)
!2359 = !DILocation(line: 161, column: 26, scope: !2347)
!2360 = !DILocation(line: 161, column: 37, scope: !2347)
!2361 = !DILocation(line: 157, column: 2, scope: !2347)
!2362 = !{i64 1244440, i64 1244481, i64 1244485, i64 2149428249, i64 2149428274, i64 2149428309, i64 2149428526, i64 2149428579, i64 2149428610, i64 2149428641, i64 2149428719, i64 2149428753, i64 2149428791, i64 2149428834, i64 2149428857, i64 2149428895, i64 2149428917, i64 2149428948, i64 2149429033, i64 2149429067, i64 2149429105, i64 2149429148, i64 2149429171, i64 2149429209, i64 2149429231, i64 2149429265, i64 2149429327, i64 2149429350, i64 2149428375, i64 2149429424, i64 2149428486}
!2363 = !DILocation(line: 163, column: 6, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2347, file: !1363, line: 163, column: 6)
!2365 = !DILocation(line: 163, column: 6, scope: !2347)
!2366 = !DILocation(line: 164, column: 22, scope: !2364)
!2367 = !DILocation(line: 164, column: 33, scope: !2364)
!2368 = !DILocation(line: 164, column: 28, scope: !2364)
!2369 = !DILocation(line: 164, column: 38, scope: !2364)
!2370 = !DILocation(line: 164, column: 46, scope: !2364)
!2371 = !DILocation(line: 164, column: 44, scope: !2364)
!2372 = !DILocation(line: 164, column: 52, scope: !2364)
!2373 = !DILocation(line: 164, column: 3, scope: !2364)
!2374 = !DILocation(line: 165, column: 9, scope: !2347)
!2375 = !DILocation(line: 166, column: 1, scope: !2347)
!2376 = !DILocation(line: 165, column: 2, scope: !2347)
