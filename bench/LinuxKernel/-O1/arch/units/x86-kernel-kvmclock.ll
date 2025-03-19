; ModuleID = 'arch/x86/kernel/kvmclock.c'
source_filename = "arch/x86/kernel/kvmclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hv_clock_per_cpu: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad hv_clock_per_cpu ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kvm_clock: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kvm_clock ; .previous"
module asm ".section\09\22.initcallearly.init..kmod_kvmclock__308_262_kvm_setup_vsyscall_timeinfo\22, \22a\22\09\09"
module asm "__initcall__kmod_kvmclock__308_262_kvm_setup_vsyscall_timeinfoearly:\09\09\09"
module asm ".long\09__initstub__kmod_kvmclock__308_262_kvm_setup_vsyscall_timeinfoearly - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i64, i64, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pvclock_vsyscall_time_info = type { %struct.pvclock_vcpu_time_info, [32 x i8] }
%struct.pvclock_vcpu_time_info = type { i32, i32, i64, i64, i32, i8, i8, [2 x i8] }
%struct.x86_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.x86_legacy_features, ptr, ptr, ptr, %struct.x86_hyper_runtime, %struct.x86_guest }
%struct.x86_legacy_features = type { i32, i32, i32, i32, i32, %struct.x86_legacy_devices }
%struct.x86_legacy_devices = type { i32 }
%struct.x86_hyper_runtime = type { ptr, ptr, ptr, ptr }
%struct.x86_guest = type { ptr, ptr, ptr, ptr }
%struct.x86_cpuinit_ops = type { ptr, ptr, ptr, i8 }
%struct.cpuinfo_x86 = type { %union.anon.13, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.15, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.13 = type { i32 }
%union.anon.15 = type { i64, [88 x i8] }
%struct.pv_info = type { ptr }
%struct.static_call_key = type { ptr, %union.anon.16 }
%union.anon.16 = type { i64 }
%struct.pcpu_hot = type { %union.anon.17 }
%union.anon.17 = type { %struct.anon.18, [16 x i8] }
%struct.anon.18 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.19 }
%struct.atomic_t = type { i32 }
%union.anon.19 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.pvclock_wall_clock = type { i32, i32, i32 }

@__setup_str_parse_no_kvmclock = internal constant [12 x i8] c"no-kvmclock\00", section ".init.rodata", align 1, !dbg !0
@__setup_parse_no_kvmclock = internal global %struct.obs_kernel_param { ptr @__setup_str_parse_no_kvmclock, ptr @parse_no_kvmclock, i32 1 }, section ".init.setup", align 8, !dbg !4289
@__setup_str_parse_no_kvmclock_vsyscall = internal constant [21 x i8] c"no-kvmclock-vsyscall\00", section ".init.rodata", align 1, !dbg !4379
@__setup_parse_no_kvmclock_vsyscall = internal global %struct.obs_kernel_param { ptr @__setup_str_parse_no_kvmclock_vsyscall, ptr @parse_no_kvmclock_vsyscall, i32 1 }, section ".init.setup", align 8, !dbg !4300
@hv_clock_per_cpu = hidden global ptr null, section ".data..percpu", align 8, !dbg !4377
@__UNIQUE_ID___addressable_hv_clock_per_cpu303 = internal global ptr @hv_clock_per_cpu, section ".discard.addressable", align 8, !dbg !4302
@.str = private unnamed_addr constant [10 x i8] c"kvm-clock\00", align 1, !dbg !4304
@kvm_clock = hidden global %struct.clocksource { ptr @kvm_clock_get_cycles, i64 -1, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str, %struct.list_head zeroinitializer, i32 400, i32 0, i32 0, i64 1, ptr @kvm_cs_enable, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i64 0, i64 0, ptr null }, align 8, !dbg !4309
@__UNIQUE_ID___addressable_kvm_clock307 = internal global ptr @kvm_clock, section ".discard.addressable", align 8, !dbg !4348
@msr_kvm_system_time = internal global i32 0, section ".data..ro_after_init", align 4, !dbg !4370
@__UNIQUE_ID___addressable___initstub__kmod_kvmclock__308_262_kvm_setup_vsyscall_timeinfoearly309 = internal global ptr @__initstub__kmod_kvmclock__308_262_kvm_setup_vsyscall_timeinfoearly, section ".discard.addressable", align 8, !dbg !4350
@kvmclock = internal global i32 1, section ".init.data", align 4, !dbg !4408
@msr_kvm_wall_clock = internal global i32 0, section ".data..ro_after_init", align 4, !dbg !4372
@.str.1 = private unnamed_addr constant [22 x i8] c"kvmclock:setup_percpu\00", align 1, !dbg !4352
@.str.2 = private unnamed_addr constant [34 x i8] c"\016kvm-clock: Using msrs %x and %x\00", align 1, !dbg !4357
@hv_clock_boot = internal global [64 x %struct.pvclock_vsyscall_time_info] zeroinitializer, align 4096, !dbg !4374
@.str.3 = private unnamed_addr constant [18 x i8] c"primary cpu clock\00", align 1, !dbg !4362
@x86_platform = external dso_local global %struct.x86_platform_ops, align 8
@x86_cpuinit = external dso_local global %struct.x86_cpuinit_ops, align 8
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"KVM\00", align 1, !dbg !4367
@pv_info = external dso_local global %struct.pv_info, align 8
@kvmclock_vsyscall = internal global i32 1, section ".init.data", align 4, !dbg !4384
@kvm_clock_read.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace305 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !4386
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@vclocks_used = external dso_local global i32, align 4
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@nopv = external dso_local global i8, align 1
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"\014%s: failed to alloc %d pages\00", align 1, !dbg !4393
@__func__.kvmclock_init_mem = private unnamed_addr constant [18 x i8] c"kvmclock_init_mem\00", align 1, !dbg !4398
@hvclock_mem = internal global ptr null, align 8, !dbg !4406
@.str.6 = private unnamed_addr constant [54 x i8] c"\014kvmclock: set_memory_decrypted() failed. Disabling\0A\00", align 1, !dbg !4401
@vmemmap_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@kvm_sched_clock_offset = internal global i64 0, section ".data..ro_after_init", align 8, !dbg !4415
@.str.7 = private unnamed_addr constant [47 x i8] c"\016kvm-clock: using sched offset of %llu cycles\00", align 1, !dbg !4410
@cpu_caps_set = external dso_local global [24 x i32], align 16
@wall_clock = internal global %struct.pvclock_wall_clock zeroinitializer, align 1, !dbg !4425
@kvm_get_wallclock.__UNIQUE_ID___addressable___SCK__preempt_schedule304 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4417
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"secondary cpu clock\00", align 1, !dbg !4432
@.str.9 = private unnamed_addr constant [26 x i8] c"primary cpu clock, resume\00", align 1, !dbg !4435
@preset_lpj = external dso_local global i64, align 8
@llvm.compiler.used = appending global [7 x ptr] [ptr @__setup_parse_no_kvmclock, ptr @__setup_parse_no_kvmclock_vsyscall, ptr @__UNIQUE_ID___addressable_hv_clock_per_cpu303, ptr @__UNIQUE_ID___addressable_kvm_clock307, ptr @__UNIQUE_ID___addressable___initstub__kmod_kvmclock__308_262_kvm_setup_vsyscall_timeinfoearly309, ptr @kvm_clock_read.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace305, ptr @kvm_get_wallclock.__UNIQUE_ID___addressable___SCK__preempt_schedule304], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @parse_no_kvmclock(ptr noundef %arg) #0 section ".init.text" align 16 !dbg !4451 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4453, metadata !DIExpression()), !dbg !4454
  store i32 0, ptr @kvmclock, align 4, !dbg !4455
  ret i32 0, !dbg !4456
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @parse_no_kvmclock_vsyscall(ptr noundef %arg) #0 section ".init.text" align 16 !dbg !4457 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4459, metadata !DIExpression()), !dbg !4460
  store i32 0, ptr @kvmclock_vsyscall, align 4, !dbg !4461
  ret i32 0, !dbg !4462
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @kvm_check_and_clear_guest_paused() #1 align 16 !dbg !4463 {
entry:
  %retval = alloca i1, align 1
  %src = alloca ptr, align 8
  %ret = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #16, !dbg !4467
  call void @llvm.dbg.declare(metadata ptr %src, metadata !4465, metadata !DIExpression()), !dbg !4468
  %call = call ptr @this_cpu_hvclock() #17, !dbg !4469
  store ptr %call, ptr %src, align 8, !dbg !4468
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #16, !dbg !4470
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4466, metadata !DIExpression()), !dbg !4471
  store i8 0, ptr %ret, align 1, !dbg !4471
  %0 = load ptr, ptr %src, align 8, !dbg !4472
  %tobool = icmp ne ptr %0, null, !dbg !4472
  br i1 %tobool, label %if.end, label %if.then, !dbg !4474

if.then:                                          ; preds = %entry
  %1 = load i8, ptr %ret, align 1, !dbg !4475, !range !4476, !noundef !1222
  %tobool1 = trunc i8 %1 to i1, !dbg !4475
  store i1 %tobool1, ptr %retval, align 1, !dbg !4477
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4477

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %src, align 8, !dbg !4478
  %pvti = getelementptr inbounds %struct.pvclock_vsyscall_time_info, ptr %2, i32 0, i32 0, !dbg !4480
  %flags = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %pvti, i32 0, i32 6, !dbg !4481
  %3 = load i8, ptr %flags, align 1, !dbg !4481
  %conv = zext i8 %3 to i32, !dbg !4478
  %and = and i32 %conv, 2, !dbg !4482
  %cmp = icmp ne i32 %and, 0, !dbg !4483
  br i1 %cmp, label %if.then3, label %if.end9, !dbg !4484

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %src, align 8, !dbg !4485
  %pvti4 = getelementptr inbounds %struct.pvclock_vsyscall_time_info, ptr %4, i32 0, i32 0, !dbg !4487
  %flags5 = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %pvti4, i32 0, i32 6, !dbg !4488
  %5 = load i8, ptr %flags5, align 1, !dbg !4489
  %conv6 = zext i8 %5 to i32, !dbg !4489
  %and7 = and i32 %conv6, -3, !dbg !4489
  %conv8 = trunc i32 %and7 to i8, !dbg !4489
  store i8 %conv8, ptr %flags5, align 1, !dbg !4489
  call void @pvclock_touch_watchdogs() #17, !dbg !4490
  store i8 1, ptr %ret, align 1, !dbg !4491
  br label %if.end9, !dbg !4492

if.end9:                                          ; preds = %if.then3, %if.end
  %6 = load i8, ptr %ret, align 1, !dbg !4493, !range !4476, !noundef !1222
  %tobool10 = trunc i8 %6 to i1, !dbg !4493
  store i1 %tobool10, ptr %retval, align 1, !dbg !4494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4494

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #16, !dbg !4495
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #16, !dbg !4495
  %7 = load i1, ptr %retval, align 1, !dbg !4495
  ret i1 %7, !dbg !4495
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @this_cpu_hvclock() #4 align 16 !dbg !4496 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #16, !dbg !4507
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4501, metadata !DIExpression()), !dbg !4507
  br label %do.body, !dbg !4507

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !4508
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4503, metadata !DIExpression()), !dbg !4508
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4508
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4508
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !4507
  br label %do.cond, !dbg !4508

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4508

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #16, !dbg !4509
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4505, metadata !DIExpression()), !dbg !4509
  %1 = call i64 asm sideeffect "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @hv_clock_per_cpu) #16, !dbg !4509, !srcloc !4510
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4509
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4509
  %3 = inttoptr i64 %2 to ptr, !dbg !4509
  store ptr %3, ptr %tmp, align 8, !dbg !4509
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #16, !dbg !4507
  %4 = load ptr, ptr %tmp, align 8, !dbg !4509
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4507
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4507
  store ptr %5, ptr %tmp1, align 8, !dbg !4507
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #16, !dbg !4511
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4507
  ret ptr %6, !dbg !4512
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4513 dso_local void @pvclock_touch_watchdogs() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kvm_clock_get_cycles(ptr noundef %cs) #1 align 16 !dbg !4514 {
entry:
  %cs.addr = alloca ptr, align 8
  store ptr %cs, ptr %cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !4516, metadata !DIExpression()), !dbg !4517
  %call = call i64 @kvm_clock_read() #17, !dbg !4518
  ret i64 %call, !dbg !4519
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kvm_cs_enable(ptr noundef %cs) #1 align 16 !dbg !4520 {
entry:
  %cs.addr = alloca ptr, align 8
  store ptr %cs, ptr %cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !4522, metadata !DIExpression()), !dbg !4523
  call void @vclocks_set_used(i32 noundef 2) #17, !dbg !4524
  ret i32 0, !dbg !4525
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kvmclock_disable() #1 align 16 !dbg !4526 {
entry:
  %0 = load i32, ptr @msr_kvm_system_time, align 4, !dbg !4527
  %tobool = icmp ne i32 %0, 0, !dbg !4527
  br i1 %tobool, label %if.then, label %if.end, !dbg !4529

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @msr_kvm_system_time, align 4, !dbg !4530
  call void @native_write_msr(i32 noundef %1, i32 noundef 0, i32 noundef 0) #17, !dbg !4531
  br label %if.end, !dbg !4531

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4532
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #4 align 16 !dbg !4533 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !4538, metadata !DIExpression()), !dbg !4541
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !4539, metadata !DIExpression()), !dbg !4542
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !4540, metadata !DIExpression()), !dbg !4543
  %0 = load i32, ptr %msr.addr, align 4, !dbg !4544
  %1 = load i32, ptr %low.addr, align 4, !dbg !4545
  %2 = load i32, ptr %high.addr, align 4, !dbg !4546
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #17, !dbg !4547
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #17, !dbg !4548
  br i1 %call, label %if.then, label %if.end, !dbg !4550

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !4551
  %4 = load i32, ptr %high.addr, align 4, !dbg !4552
  %conv = zext i32 %4 to i64, !dbg !4553
  %shl = shl i64 %conv, 32, !dbg !4554
  %5 = load i32, ptr %low.addr, align 4, !dbg !4555
  %conv1 = zext i32 %5 to i64, !dbg !4555
  %or = or i64 %shl, %conv1, !dbg !4556
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #17, !dbg !4557
  br label %if.end, !dbg !4557

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4558
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_kvmclock__308_262_kvm_setup_vsyscall_timeinfoearly() #0 section ".init.text" align 16 !dbg !4559 {
entry:
  %call = call i32 @kvm_setup_vsyscall_timeinfo() #18, !dbg !4560
  ret i32 %call, !dbg !4560
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @kvm_setup_vsyscall_timeinfo() #0 section ".init.text" align 16 !dbg !4561 {
entry:
  %retval = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp3 = alloca ptr, align 8
  %flags = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %call = call zeroext i1 @kvm_para_available() #17, !dbg !4571
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !4573

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr @kvmclock, align 4, !dbg !4574
  %tobool = icmp ne i32 %0, 0, !dbg !4574
  br i1 %tobool, label %lor.lhs.false1, label %if.then, !dbg !4575

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %1 = load i8, ptr @nopv, align 1, !dbg !4576, !range !4476, !noundef !1222
  %tobool2 = trunc i8 %1 to i1, !dbg !4576
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4577

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !4578
  br label %return, !dbg !4578

if.end:                                           ; preds = %lor.lhs.false1
  call void @kvmclock_init_mem() #18, !dbg !4579
  br label %do.body, !dbg !4580

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !4581
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4563, metadata !DIExpression()), !dbg !4581
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4581
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !4581
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !4580
  br label %do.end, !dbg !4581

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !4582
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4567, metadata !DIExpression()), !dbg !4582
  store i64 ptrtoint (ptr @hv_clock_per_cpu to i64), ptr %__ptr, align 8, !dbg !4582
  %3 = load i64, ptr %__ptr, align 8, !dbg !4582
  %4 = load i64, ptr @__per_cpu_offset, align 16, !dbg !4582
  %add = add i64 %3, %4, !dbg !4582
  %5 = inttoptr i64 %add to ptr, !dbg !4582
  store ptr %5, ptr %tmp3, align 8, !dbg !4582
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !4580
  %6 = load ptr, ptr %tmp3, align 8, !dbg !4582
  store ptr %6, ptr %tmp, align 8, !dbg !4581
  %7 = load ptr, ptr %tmp, align 8, !dbg !4580
  %8 = load ptr, ptr %7, align 8, !dbg !4583
  %tobool4 = icmp ne ptr %8, null, !dbg !4583
  br i1 %tobool4, label %land.lhs.true, label %if.end11, !dbg !4584

land.lhs.true:                                    ; preds = %do.end
  %9 = load i32, ptr @kvmclock_vsyscall, align 4, !dbg !4585
  %tobool5 = icmp ne i32 %9, 0, !dbg !4585
  br i1 %tobool5, label %if.then6, label %if.end11, !dbg !4586

if.then6:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr %flags) #16, !dbg !4587
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4569, metadata !DIExpression()), !dbg !4588
  %call7 = call zeroext i8 @pvclock_read_flags(ptr noundef @hv_clock_boot) #17, !dbg !4589
  store i8 %call7, ptr %flags, align 1, !dbg !4590
  %10 = load i8, ptr %flags, align 1, !dbg !4591
  %conv = zext i8 %10 to i32, !dbg !4591
  %and = and i32 %conv, 1, !dbg !4593
  %tobool8 = icmp ne i32 %and, 0, !dbg !4593
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4594

if.then9:                                         ; preds = %if.then6
  store i32 0, ptr %retval, align 4, !dbg !4595
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4595

if.end10:                                         ; preds = %if.then6
  store i32 2, ptr getelementptr inbounds (%struct.clocksource, ptr @kvm_clock, i32 0, i32 12), align 8, !dbg !4596
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4597
  br label %cleanup, !dbg !4597

cleanup:                                          ; preds = %if.end10, %if.then9
  call void @llvm.lifetime.end.p0(i64 1, ptr %flags) #16, !dbg !4597
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end11, !dbg !4598

if.end11:                                         ; preds = %cleanup.cont, %land.lhs.true, %do.end
  store i32 0, ptr %retval, align 4, !dbg !4599
  br label %return, !dbg !4599

return:                                           ; preds = %if.end11, %cleanup, %if.then
  %11 = load i32, ptr %retval, align 4, !dbg !4600
  ret i32 %11, !dbg !4600

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @kvmclock_init() #0 section ".init.text" align 16 !dbg !4601 {
entry:
  %flags = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pto_val__ = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %flags) #16, !dbg !4609
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4603, metadata !DIExpression()), !dbg !4610
  %call = call zeroext i1 @kvm_para_available() #17, !dbg !4611
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !4613

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr @kvmclock, align 4, !dbg !4614
  %tobool = icmp ne i32 %0, 0, !dbg !4614
  br i1 %tobool, label %if.end, label %if.then, !dbg !4615

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4616

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call zeroext i1 @kvm_para_has_feature(i32 noundef 3) #17, !dbg !4617
  br i1 %call1, label %if.then2, label %if.else, !dbg !4619

if.then2:                                         ; preds = %if.end
  store i32 1263947009, ptr @msr_kvm_system_time, align 4, !dbg !4620
  store i32 1263947008, ptr @msr_kvm_wall_clock, align 4, !dbg !4622
  br label %if.end7, !dbg !4623

if.else:                                          ; preds = %if.end
  %call3 = call zeroext i1 @kvm_para_has_feature(i32 noundef 0) #17, !dbg !4624
  br i1 %call3, label %if.then4, label %if.else5, !dbg !4626

if.then4:                                         ; preds = %if.else
  store i32 18, ptr @msr_kvm_system_time, align 4, !dbg !4627
  store i32 17, ptr @msr_kvm_wall_clock, align 4, !dbg !4629
  br label %if.end6, !dbg !4630

if.else5:                                         ; preds = %if.else
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4631

if.end6:                                          ; preds = %if.then4
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then2
  %call8 = call i32 @cpuhp_setup_state(i32 noundef 71, ptr noundef @.str.1, ptr noundef @kvmclock_setup_percpu, ptr noundef null) #17, !dbg !4633
  %cmp = icmp slt i32 %call8, 0, !dbg !4635
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !4636

if.then9:                                         ; preds = %if.end7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4637

if.end10:                                         ; preds = %if.end7
  br label %do.body, !dbg !4639

do.body:                                          ; preds = %if.end10
  br label %do.cond, !dbg !4641

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4641

do.end:                                           ; preds = %do.cond
  %1 = load i32, ptr @msr_kvm_system_time, align 4, !dbg !4639
  %2 = load i32, ptr @msr_kvm_wall_clock, align 4, !dbg !4639
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %1, i32 noundef %2) #18, !dbg !4639
  store i32 %call11, ptr %tmp, align 4, !dbg !4641
  %3 = load i32, ptr %tmp, align 4, !dbg !4639
  br label %do.body12, !dbg !4643

do.body12:                                        ; preds = %do.end
  br label %do.body13, !dbg !4644

do.body13:                                        ; preds = %do.body12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !4645
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4604, metadata !DIExpression()), !dbg !4645
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4645
  %4 = load ptr, ptr %__vpp_verify, align 8, !dbg !4645
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !4644
  br label %do.cond14, !dbg !4645

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4645

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !4644

do.body16:                                        ; preds = %do.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #16, !dbg !4646
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !4607, metadata !DIExpression()), !dbg !4646
  store i64 ptrtoint (ptr @hv_clock_boot to i64), ptr %pto_val__, align 8, !dbg !4646
  %5 = load i64, ptr %pto_val__, align 8, !dbg !4646
  call void asm sideeffect "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @hv_clock_per_cpu, i64 %5, ptr elementtype(ptr) @hv_clock_per_cpu) #16, !dbg !4646, !srcloc !4647
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #16, !dbg !4644
  br label %do.cond17, !dbg !4646

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !4646

do.end18:                                         ; preds = %do.cond17
  br label %do.cond19, !dbg !4644

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !4644

do.end20:                                         ; preds = %do.cond19
  call void @kvm_register_clock(ptr noundef @.str.3) #17, !dbg !4648
  call void @pvclock_set_pvti_cpu0_va(ptr noundef @hv_clock_boot) #17, !dbg !4649
  %call21 = call zeroext i1 @kvm_para_has_feature(i32 noundef 24) #17, !dbg !4650
  br i1 %call21, label %if.then22, label %if.end23, !dbg !4652

if.then22:                                        ; preds = %do.end20
  call void @pvclock_set_flags(i8 noundef zeroext 1) #17, !dbg !4653
  br label %if.end23, !dbg !4653

if.end23:                                         ; preds = %if.then22, %do.end20
  %call24 = call zeroext i8 @pvclock_read_flags(ptr noundef @hv_clock_boot) #17, !dbg !4654
  store i8 %call24, ptr %flags, align 1, !dbg !4655
  %6 = load i8, ptr %flags, align 1, !dbg !4656
  %conv = zext i8 %6 to i32, !dbg !4656
  %and = and i32 %conv, 1, !dbg !4657
  %tobool25 = icmp ne i32 %and, 0, !dbg !4656
  call void @kvm_sched_clock_init(i1 noundef zeroext %tobool25) #17, !dbg !4658
  store ptr @kvm_get_tsc_khz, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 1), align 8, !dbg !4659
  store ptr @kvm_get_tsc_khz, ptr @x86_platform, align 8, !dbg !4660
  store ptr @kvm_get_wallclock, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 2), align 8, !dbg !4661
  store ptr @kvm_set_wallclock, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 3), align 8, !dbg !4662
  store ptr @kvm_setup_secondary_clock, ptr getelementptr inbounds (%struct.x86_cpuinit_ops, ptr @x86_cpuinit, i32 0, i32 1), align 8, !dbg !4663
  store ptr @kvm_save_sched_clock_state, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 8), align 8, !dbg !4664
  store ptr @kvm_restore_sched_clock_state, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 9), align 8, !dbg !4665
  call void @kvm_get_preset_lpj() #18, !dbg !4666
  br i1 false, label %cond.true, label %cond.false, !dbg !4667

cond.true:                                        ; preds = %if.end23
  br i1 true, label %land.lhs.true, label %if.end36, !dbg !4669

cond.false:                                       ; preds = %if.end23
  %call26 = call zeroext i1 @arch_test_bit(i64 noundef 104, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #17, !dbg !4669
  br i1 %call26, label %land.lhs.true, label %if.end36, !dbg !4667

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  br i1 false, label %cond.true28, label %cond.false29, !dbg !4670

cond.true28:                                      ; preds = %land.lhs.true
  br i1 true, label %land.lhs.true32, label %if.end36, !dbg !4671

cond.false29:                                     ; preds = %land.lhs.true
  %call30 = call zeroext i1 @arch_test_bit(i64 noundef 120, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #17, !dbg !4671
  br i1 %call30, label %land.lhs.true32, label %if.end36, !dbg !4670

land.lhs.true32:                                  ; preds = %cond.false29, %cond.true28
  %call33 = call i32 @check_tsc_unstable() #17, !dbg !4672
  %tobool34 = icmp ne i32 %call33, 0, !dbg !4672
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !4673

if.then35:                                        ; preds = %land.lhs.true32
  store i32 299, ptr getelementptr inbounds (%struct.clocksource, ptr @kvm_clock, i32 0, i32 10), align 8, !dbg !4674
  br label %if.end36, !dbg !4675

if.end36:                                         ; preds = %if.then35, %land.lhs.true32, %cond.false29, %cond.true28, %cond.false, %cond.true
  %call37 = call i32 @clocksource_register_hz(ptr noundef @kvm_clock, i32 noundef 1000000000) #17, !dbg !4676
  store ptr @.str.4, ptr @pv_info, align 8, !dbg !4677
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4678
  br label %cleanup, !dbg !4678

cleanup:                                          ; preds = %if.end36, %if.then9, %if.else5, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %flags) #16, !dbg !4678
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4678

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4679 dso_local zeroext i1 @kvm_para_available() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kvm_para_has_feature(i32 noundef %feature) #4 align 16 !dbg !4681 {
entry:
  %feature.addr = alloca i32, align 4
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !4686, metadata !DIExpression()), !dbg !4687
  %call = call i32 @kvm_arch_para_features() #17, !dbg !4688
  %conv = zext i32 %call to i64, !dbg !4688
  %0 = load i32, ptr %feature.addr, align 4, !dbg !4689
  %sh_prom = zext i32 %0 to i64, !dbg !4690
  %shl = shl i64 1, %sh_prom, !dbg !4690
  %and = and i64 %conv, %shl, !dbg !4691
  %tobool = icmp ne i64 %and, 0, !dbg !4692
  %lnot = xor i1 %tobool, true, !dbg !4692
  %lnot1 = xor i1 %lnot, true, !dbg !4693
  ret i1 %lnot1, !dbg !4694
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #4 align 16 !dbg !4695 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4702, metadata !DIExpression()), !dbg !4706
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4703, metadata !DIExpression()), !dbg !4707
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !4704, metadata !DIExpression()), !dbg !4708
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !4705, metadata !DIExpression()), !dbg !4709
  %0 = load i32, ptr %state.addr, align 4, !dbg !4710
  %1 = load ptr, ptr %name.addr, align 8, !dbg !4711
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !4712
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !4713
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #17, !dbg !4714
  ret i32 %call, !dbg !4715
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kvmclock_setup_percpu(i32 noundef %cpu) #1 align 16 !dbg !4716 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__vpp_verify4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %__ptr8 = alloca i64, align 8
  %tmp9 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify23 = alloca ptr, align 8
  %tmp26 = alloca ptr, align 8
  %__ptr27 = alloca i64, align 8
  %tmp28 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4718, metadata !DIExpression()), !dbg !4736
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4737
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4719, metadata !DIExpression()), !dbg !4738
  br label %do.body, !dbg !4739

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !4740
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4720, metadata !DIExpression()), !dbg !4740
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4740
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4740
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !4739
  br label %do.cond, !dbg !4740

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4740

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !4741
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4723, metadata !DIExpression()), !dbg !4741
  store i64 ptrtoint (ptr @hv_clock_per_cpu to i64), ptr %__ptr, align 8, !dbg !4741
  %1 = load i64, ptr %__ptr, align 8, !dbg !4741
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !4741
  %idxprom = zext i32 %2 to i64, !dbg !4741
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4741
  %3 = load i64, ptr %arrayidx, align 8, !dbg !4741
  %add = add i64 %1, %3, !dbg !4741
  %4 = inttoptr i64 %add to ptr, !dbg !4741
  store ptr %4, ptr %tmp1, align 8, !dbg !4741
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !4739
  %5 = load ptr, ptr %tmp1, align 8, !dbg !4741
  store ptr %5, ptr %tmp, align 8, !dbg !4740
  %6 = load ptr, ptr %tmp, align 8, !dbg !4739
  %7 = load ptr, ptr %6, align 8, !dbg !4742
  store ptr %7, ptr %p, align 8, !dbg !4738
  %8 = load i32, ptr %cpu.addr, align 4, !dbg !4743
  %tobool = icmp ne i32 %8, 0, !dbg !4743
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4744

lor.lhs.false:                                    ; preds = %do.end
  %9 = load ptr, ptr %p, align 8, !dbg !4745
  %tobool2 = icmp ne ptr %9, null, !dbg !4745
  br i1 %tobool2, label %land.lhs.true, label %if.end, !dbg !4746

land.lhs.true:                                    ; preds = %lor.lhs.false
  %10 = load ptr, ptr %p, align 8, !dbg !4747
  br label %do.body3, !dbg !4748

do.body3:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify4) #16, !dbg !4749
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify4, metadata !4725, metadata !DIExpression()), !dbg !4749
  store ptr null, ptr %__vpp_verify4, align 8, !dbg !4749
  %11 = load ptr, ptr %__vpp_verify4, align 8, !dbg !4749
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify4) #16, !dbg !4748
  br label %do.cond5, !dbg !4749

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !4749

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr8) #16, !dbg !4750
  call void @llvm.dbg.declare(metadata ptr %__ptr8, metadata !4729, metadata !DIExpression()), !dbg !4750
  store i64 ptrtoint (ptr @hv_clock_per_cpu to i64), ptr %__ptr8, align 8, !dbg !4750
  %12 = load i64, ptr %__ptr8, align 8, !dbg !4750
  %13 = load i64, ptr @__per_cpu_offset, align 16, !dbg !4750
  %add10 = add i64 %12, %13, !dbg !4750
  %14 = inttoptr i64 %add10 to ptr, !dbg !4750
  store ptr %14, ptr %tmp9, align 8, !dbg !4750
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr8) #16, !dbg !4748
  %15 = load ptr, ptr %tmp9, align 8, !dbg !4750
  store ptr %15, ptr %tmp7, align 8, !dbg !4749
  %16 = load ptr, ptr %tmp7, align 8, !dbg !4748
  %17 = load ptr, ptr %16, align 8, !dbg !4751
  %cmp = icmp ne ptr %10, %17, !dbg !4752
  br i1 %cmp, label %if.then, label %if.end, !dbg !4753

if.then:                                          ; preds = %do.end6, %do.end
  store i32 0, ptr %retval, align 4, !dbg !4754
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4754

if.end:                                           ; preds = %do.end6, %lor.lhs.false
  %18 = load i32, ptr %cpu.addr, align 4, !dbg !4755
  %conv = zext i32 %18 to i64, !dbg !4755
  %cmp11 = icmp ult i64 %conv, 64, !dbg !4757
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !4758

if.then13:                                        ; preds = %if.end
  %19 = load i32, ptr %cpu.addr, align 4, !dbg !4759
  %idxprom14 = zext i32 %19 to i64, !dbg !4760
  %arrayidx15 = getelementptr [64 x %struct.pvclock_vsyscall_time_info], ptr @hv_clock_boot, i64 0, i64 %idxprom14, !dbg !4760
  store ptr %arrayidx15, ptr %p, align 8, !dbg !4761
  br label %if.end21, !dbg !4762

if.else:                                          ; preds = %if.end
  %20 = load ptr, ptr @hvclock_mem, align 8, !dbg !4763
  %tobool16 = icmp ne ptr %20, null, !dbg !4763
  br i1 %tobool16, label %if.then17, label %if.else19, !dbg !4765

if.then17:                                        ; preds = %if.else
  %21 = load ptr, ptr @hvclock_mem, align 8, !dbg !4766
  %22 = load i32, ptr %cpu.addr, align 4, !dbg !4767
  %idx.ext = zext i32 %22 to i64, !dbg !4768
  %add.ptr = getelementptr %struct.pvclock_vsyscall_time_info, ptr %21, i64 %idx.ext, !dbg !4768
  %add.ptr18 = getelementptr %struct.pvclock_vsyscall_time_info, ptr %add.ptr, i64 -64, !dbg !4769
  store ptr %add.ptr18, ptr %p, align 8, !dbg !4770
  br label %if.end20, !dbg !4771

if.else19:                                        ; preds = %if.else
  store i32 -12, ptr %retval, align 4, !dbg !4772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4772

if.end20:                                         ; preds = %if.then17
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then13
  %23 = load ptr, ptr %p, align 8, !dbg !4773
  br label %do.body22, !dbg !4774

do.body22:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify23) #16, !dbg !4775
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify23, metadata !4731, metadata !DIExpression()), !dbg !4775
  store ptr null, ptr %__vpp_verify23, align 8, !dbg !4775
  %24 = load ptr, ptr %__vpp_verify23, align 8, !dbg !4775
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify23) #16, !dbg !4774
  br label %do.cond24, !dbg !4775

do.cond24:                                        ; preds = %do.body22
  br label %do.end25, !dbg !4775

do.end25:                                         ; preds = %do.cond24
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr27) #16, !dbg !4776
  call void @llvm.dbg.declare(metadata ptr %__ptr27, metadata !4734, metadata !DIExpression()), !dbg !4776
  store i64 ptrtoint (ptr @hv_clock_per_cpu to i64), ptr %__ptr27, align 8, !dbg !4776
  %25 = load i64, ptr %__ptr27, align 8, !dbg !4776
  %26 = load i32, ptr %cpu.addr, align 4, !dbg !4776
  %idxprom29 = zext i32 %26 to i64, !dbg !4776
  %arrayidx30 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom29, !dbg !4776
  %27 = load i64, ptr %arrayidx30, align 8, !dbg !4776
  %add31 = add i64 %25, %27, !dbg !4776
  %28 = inttoptr i64 %add31 to ptr, !dbg !4776
  store ptr %28, ptr %tmp28, align 8, !dbg !4776
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr27) #16, !dbg !4774
  %29 = load ptr, ptr %tmp28, align 8, !dbg !4776
  store ptr %29, ptr %tmp26, align 8, !dbg !4775
  %30 = load ptr, ptr %tmp26, align 8, !dbg !4774
  store ptr %23, ptr %30, align 8, !dbg !4777
  %31 = load ptr, ptr %p, align 8, !dbg !4778
  %tobool32 = icmp ne ptr %31, null, !dbg !4778
  %32 = zext i1 %tobool32 to i64, !dbg !4778
  %cond = select i1 %tobool32, i32 0, i32 -12, !dbg !4778
  store i32 %cond, ptr %retval, align 4, !dbg !4779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4779

cleanup:                                          ; preds = %do.end25, %if.else19, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !4780
  %33 = load i32, ptr %retval, align 4, !dbg !4780
  ret i32 %33, !dbg !4780
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4781 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kvm_register_clock(ptr noundef %txt) #1 align 16 !dbg !4785 {
entry:
  %txt.addr = alloca ptr, align 8
  %src = alloca ptr, align 8
  %pa = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %txt, ptr %txt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %txt.addr, metadata !4789, metadata !DIExpression()), !dbg !4792
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #16, !dbg !4793
  call void @llvm.dbg.declare(metadata ptr %src, metadata !4790, metadata !DIExpression()), !dbg !4794
  %call = call ptr @this_cpu_hvclock() #17, !dbg !4795
  store ptr %call, ptr %src, align 8, !dbg !4794
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa) #16, !dbg !4796
  call void @llvm.dbg.declare(metadata ptr %pa, metadata !4791, metadata !DIExpression()), !dbg !4797
  %0 = load ptr, ptr %src, align 8, !dbg !4798
  %tobool = icmp ne ptr %0, null, !dbg !4798
  br i1 %tobool, label %if.end, label %if.then, !dbg !4800

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4801

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %src, align 8, !dbg !4802
  %pvti = getelementptr inbounds %struct.pvclock_vsyscall_time_info, ptr %1, i32 0, i32 0, !dbg !4803
  %call1 = call i64 @slow_virt_to_phys(ptr noundef %pvti) #17, !dbg !4804
  %or = or i64 %call1, 1, !dbg !4805
  store i64 %or, ptr %pa, align 8, !dbg !4806
  %2 = load i32, ptr @msr_kvm_system_time, align 4, !dbg !4807
  %3 = load i64, ptr %pa, align 8, !dbg !4808
  call void @wrmsrl(i32 noundef %2, i64 noundef %3) #17, !dbg !4809
  store i32 0, ptr %tmp, align 4, !dbg !4810
  %4 = load i32, ptr %tmp, align 4, !dbg !4813
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4814
  br label %cleanup, !dbg !4814

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa) #16, !dbg !4814
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #16, !dbg !4814
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4814

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4815 dso_local void @pvclock_set_pvti_cpu0_va(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4818 dso_local void @pvclock_set_flags(i8 noundef zeroext) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4821 dso_local zeroext i8 @pvclock_read_flags(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kvm_sched_clock_init(i1 noundef zeroext %stable) #4 align 16 !dbg !4825 {
entry:
  %stable.addr = alloca i8, align 1
  %tmp = alloca i32, align 4
  %frombool = zext i1 %stable to i8
  store i8 %frombool, ptr %stable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %stable.addr, metadata !4829, metadata !DIExpression()), !dbg !4830
  %0 = load i8, ptr %stable.addr, align 1, !dbg !4831, !range !4476, !noundef !1222
  %tobool = trunc i8 %0 to i1, !dbg !4831
  br i1 %tobool, label %if.end, label %if.then, !dbg !4833

if.then:                                          ; preds = %entry
  call void @clear_sched_clock_stable() #17, !dbg !4834
  br label %if.end, !dbg !4834

if.end:                                           ; preds = %if.then, %entry
  %call = call i64 @kvm_clock_read() #17, !dbg !4835
  store i64 %call, ptr @kvm_sched_clock_offset, align 8, !dbg !4836
  call void @paravirt_set_sched_clock(ptr noundef @kvm_sched_clock_read) #17, !dbg !4837
  br label %do.body, !dbg !4838

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4840

do.end:                                           ; preds = %do.body
  %1 = load i64, ptr @kvm_sched_clock_offset, align 8, !dbg !4838
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i64 noundef %1) #18, !dbg !4838
  store i32 %call1, ptr %tmp, align 4, !dbg !4840
  %2 = load i32, ptr %tmp, align 4, !dbg !4838
  br label %do.body2, !dbg !4842

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !4843

do.end3:                                          ; preds = %do.body2
  ret void, !dbg !4845
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kvm_get_tsc_khz() #1 align 16 !dbg !4846 {
entry:
  br label %do.body, !dbg !4849

do.body:                                          ; preds = %entry
  call void @set_bit(i64 noundef 127, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #17, !dbg !4850
  call void @set_bit(i64 noundef 127, ptr noundef @cpu_caps_set) #17, !dbg !4850
  br label %do.end, !dbg !4850

do.end:                                           ; preds = %do.body
  %call = call ptr @this_cpu_pvti() #17, !dbg !4852
  %call1 = call i64 @pvclock_tsc_khz(ptr noundef %call) #17, !dbg !4853
  ret i64 %call1, !dbg !4854
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kvm_get_wallclock(ptr noundef %now) #1 align 16 !dbg !4419 {
entry:
  %now.addr = alloca ptr, align 8
  store ptr %now, ptr %now.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %now.addr, metadata !4424, metadata !DIExpression()), !dbg !4855
  %0 = load i32, ptr @msr_kvm_wall_clock, align 4, !dbg !4856
  %call = call i64 @slow_virt_to_phys(ptr noundef @wall_clock) #17, !dbg !4857
  call void @wrmsrl(i32 noundef %0, i64 noundef %call) #17, !dbg !4858
  br label %do.body, !dbg !4859

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #17, !dbg !4860
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !4860, !srcloc !4862
  br label %do.end, !dbg !4860

do.end:                                           ; preds = %do.body
  %call1 = call ptr @this_cpu_pvti() #17, !dbg !4863
  %1 = load ptr, ptr %now.addr, align 8, !dbg !4864
  call void @pvclock_read_wallclock(ptr noundef @wall_clock, ptr noundef %call1, ptr noundef %1) #17, !dbg !4865
  br label %do.body2, !dbg !4866

do.body2:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !4867, !srcloc !4869
  %call3 = call zeroext i1 @__preempt_count_dec_and_test() #17, !dbg !4870
  %lnot = xor i1 %call3, true, !dbg !4870
  %lnot4 = xor i1 %lnot, true, !dbg !4870
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4870
  %conv = sext i32 %lnot.ext to i64, !dbg !4870
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4870
  %tobool = icmp ne i64 %expval, 0, !dbg !4870
  br i1 %tobool, label %if.then, label %if.end, !dbg !4867

if.then:                                          ; preds = %do.body2
  br label %do.body5, !dbg !4870

do.body5:                                         ; preds = %if.then
  %2 = call i64 @llvm.read_register.i64(metadata !4441), !dbg !4872
  %3 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %2) #16, !dbg !4872, !srcloc !4874
  call void @llvm.write_register.i64(metadata !4441, i64 %3), !dbg !4872
  br label %do.end6, !dbg !4872

do.end6:                                          ; preds = %do.body5
  br label %if.end, !dbg !4872

if.end:                                           ; preds = %do.end6, %do.body2
  br label %do.end7, !dbg !4867

do.end7:                                          ; preds = %if.end
  ret void, !dbg !4875
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kvm_set_wallclock(ptr noundef %now) #1 align 16 !dbg !4876 {
entry:
  %now.addr = alloca ptr, align 8
  store ptr %now, ptr %now.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %now.addr, metadata !4882, metadata !DIExpression()), !dbg !4883
  ret i32 -19, !dbg !4884
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kvm_setup_secondary_clock() #1 align 16 !dbg !4885 {
entry:
  call void @kvm_register_clock(ptr noundef @.str.8) #17, !dbg !4886
  ret void, !dbg !4887
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kvm_save_sched_clock_state() #1 align 16 !dbg !4888 {
entry:
  ret void, !dbg !4889
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kvm_restore_sched_clock_state() #1 align 16 !dbg !4890 {
entry:
  call void @kvm_register_clock(ptr noundef @.str.9) #17, !dbg !4891
  ret void, !dbg !4892
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @kvm_get_preset_lpj() #0 section ".init.text" align 16 !dbg !4893 {
entry:
  %khz = alloca i64, align 8
  %lpj = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %khz) #16, !dbg !4900
  call void @llvm.dbg.declare(metadata ptr %khz, metadata !4895, metadata !DIExpression()), !dbg !4901
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpj) #16, !dbg !4902
  call void @llvm.dbg.declare(metadata ptr %lpj, metadata !4896, metadata !DIExpression()), !dbg !4903
  %call = call i64 @kvm_get_tsc_khz() #17, !dbg !4904
  store i64 %call, ptr %khz, align 8, !dbg !4905
  %0 = load i64, ptr %khz, align 8, !dbg !4906
  %mul = mul i64 %0, 1000, !dbg !4907
  store i64 %mul, ptr %lpj, align 8, !dbg !4908
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #16, !dbg !4909
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !4897, metadata !DIExpression()), !dbg !4909
  store i32 1000, ptr %__base, align 4, !dbg !4909
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #16, !dbg !4909
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !4899, metadata !DIExpression()), !dbg !4909
  %1 = load i64, ptr %lpj, align 8, !dbg !4909
  %2 = load i32, ptr %__base, align 4, !dbg !4909
  %conv = zext i32 %2 to i64, !dbg !4909
  %rem = urem i64 %1, %conv, !dbg !4909
  %conv1 = trunc i64 %rem to i32, !dbg !4909
  store i32 %conv1, ptr %__rem, align 4, !dbg !4909
  %3 = load i64, ptr %lpj, align 8, !dbg !4909
  %4 = load i32, ptr %__base, align 4, !dbg !4909
  %conv2 = zext i32 %4 to i64, !dbg !4909
  %div = udiv i64 %3, %conv2, !dbg !4909
  store i64 %div, ptr %lpj, align 8, !dbg !4909
  %5 = load i32, ptr %__rem, align 4, !dbg !4909
  store i32 %5, ptr %tmp, align 4, !dbg !4909
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #16, !dbg !4910
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #16, !dbg !4910
  %6 = load i32, ptr %tmp, align 4, !dbg !4909
  %7 = load i64, ptr %lpj, align 8, !dbg !4911
  store i64 %7, ptr @preset_lpj, align 8, !dbg !4912
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpj) #16, !dbg !4913
  call void @llvm.lifetime.end.p0(i64 8, ptr %khz) #16, !dbg !4913
  ret void, !dbg !4913
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !4914 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4922, metadata !DIExpression()), !dbg !4924
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4923, metadata !DIExpression()), !dbg !4925
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4926
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4927
  br i1 %1, label %cond.true, label %cond.false, !dbg !4927

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4928
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4929
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !4930
  %conv = zext i1 %call to i32, !dbg !4930
  br label %cond.end, !dbg !4927

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4931
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4932
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !4933
  %conv2 = zext i1 %call1 to i32, !dbg !4933
  br label %cond.end, !dbg !4927

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4927
  %tobool = icmp ne i32 %cond, 0, !dbg !4927
  ret i1 %tobool, !dbg !4934
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4935 dso_local i32 @check_tsc_unstable() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clocksource_register_hz(ptr noundef %cs, i32 noundef %hz) #4 align 16 !dbg !4937 {
entry:
  %cs.addr = alloca ptr, align 8
  %hz.addr = alloca i32, align 4
  store ptr %cs, ptr %cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !4941, metadata !DIExpression()), !dbg !4943
  store i32 %hz, ptr %hz.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hz.addr, metadata !4942, metadata !DIExpression()), !dbg !4944
  %0 = load ptr, ptr %cs.addr, align 8, !dbg !4945
  %1 = load i32, ptr %hz.addr, align 4, !dbg !4946
  %call = call i32 @__clocksource_register_scale(ptr noundef %0, i32 noundef 1, i32 noundef %1) #17, !dbg !4947
  ret i32 %call, !dbg !4948
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kvm_clock_read() #1 align 16 !dbg !4388 {
entry:
  %ret = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #16, !dbg !4949
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4392, metadata !DIExpression()), !dbg !4950
  br label %do.body, !dbg !4951

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #17, !dbg !4952
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !4952, !srcloc !4954
  br label %do.cond, !dbg !4952

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4952

do.end:                                           ; preds = %do.cond
  %call = call ptr @this_cpu_pvti() #17, !dbg !4955
  %call1 = call i64 @pvclock_clocksource_read_nowd(ptr noundef %call) #17, !dbg !4956
  store i64 %call1, ptr %ret, align 8, !dbg !4957
  br label %do.body2, !dbg !4958

do.body2:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !4959, !srcloc !4961
  %call3 = call zeroext i1 @__preempt_count_dec_and_test() #17, !dbg !4962
  %lnot = xor i1 %call3, true, !dbg !4962
  %lnot4 = xor i1 %lnot, true, !dbg !4962
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4962
  %conv = sext i32 %lnot.ext to i64, !dbg !4962
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4962
  %tobool = icmp ne i64 %expval, 0, !dbg !4962
  br i1 %tobool, label %if.then, label %if.end, !dbg !4959

if.then:                                          ; preds = %do.body2
  br label %do.body5, !dbg !4962

do.body5:                                         ; preds = %if.then
  %0 = call i64 @llvm.read_register.i64(metadata !4441), !dbg !4964
  %1 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %0) #16, !dbg !4964, !srcloc !4966
  call void @llvm.write_register.i64(metadata !4441, i64 %1), !dbg !4964
  br label %do.cond6, !dbg !4964

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4964

do.end7:                                          ; preds = %do.cond6
  br label %if.end, !dbg !4964

if.end:                                           ; preds = %do.end7, %do.body2
  br label %do.cond8, !dbg !4959

do.cond8:                                         ; preds = %if.end
  br label %do.end9, !dbg !4959

do.end9:                                          ; preds = %do.cond8
  %2 = load i64, ptr %ret, align 8, !dbg !4967
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #16, !dbg !4968
  ret i64 %2, !dbg !4969
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #7 align 16 !dbg !4970 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4973, metadata !DIExpression()), !dbg !4980
  br label %do.body, !dbg !4981

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #16, !dbg !4982
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !4974, metadata !DIExpression()), !dbg !4982
  %0 = load i32, ptr %val.addr, align 4, !dbg !4982
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4982
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !4982

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !4982
  %cmp = icmp eq i32 %2, 1, !dbg !4982
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4982

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !4982
  %cmp1 = icmp eq i32 %3, -1, !dbg !4982
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4982

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !4982
  br label %cond.end, !dbg !4982

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !4982

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !4982
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !4982
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !4983
  %cmp2 = icmp eq i32 %5, 1, !dbg !4983
  br i1 %cmp2, label %if.then, label %if.else, !dbg !4982

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.18, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.18, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !4984, !srcloc !4986
  br label %if.end8, !dbg !4983

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !4987
  %cmp3 = icmp eq i32 %6, -1, !dbg !4987
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !4983

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.18, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.18, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !4988, !srcloc !4990
  br label %if.end, !dbg !4987

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !4987

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #16, !dbg !4991
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !4976, metadata !DIExpression()), !dbg !4991
  %7 = load i32, ptr %val.addr, align 4, !dbg !4991
  %conv = sext i32 %7 to i64, !dbg !4991
  %and = and i64 %conv, 4294967295, !dbg !4991
  %conv7 = trunc i64 %and to i32, !dbg !4991
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !4991
  %8 = load i32, ptr %pto_val__, align 4, !dbg !4991
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.18, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.18, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !4991, !srcloc !4992
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #16, !dbg !4987
  br label %do.cond, !dbg !4991

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !4991

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #16, !dbg !4981
  br label %do.end10, !dbg !4982

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !4993
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4994 dso_local i64 @pvclock_clocksource_read_nowd(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @this_cpu_pvti() #7 align 16 !dbg !4997 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #16, !dbg !5007
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5001, metadata !DIExpression()), !dbg !5007
  br label %do.body, !dbg !5007

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5008
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5003, metadata !DIExpression()), !dbg !5008
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5008
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5008
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5007
  br label %do.cond, !dbg !5008

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5008

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #16, !dbg !5009
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5005, metadata !DIExpression()), !dbg !5009
  %1 = call i64 asm sideeffect "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @hv_clock_per_cpu) #16, !dbg !5009, !srcloc !5010
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5009
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5009
  %3 = inttoptr i64 %2 to ptr, !dbg !5009
  store ptr %3, ptr %tmp, align 8, !dbg !5009
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #16, !dbg !5007
  %4 = load ptr, ptr %tmp, align 8, !dbg !5009
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5007
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5007
  store ptr %5, ptr %tmp1, align 8, !dbg !5007
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #16, !dbg !5011
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5007
  %pvti = getelementptr inbounds %struct.pvclock_vsyscall_time_info, ptr %6, i32 0, i32 0, !dbg !5012
  ret ptr %pvti, !dbg !5013
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #7 align 16 !dbg !5014 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #16, !dbg !5018
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5016, metadata !DIExpression()), !dbg !5018
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.18, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.18, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !5018, !srcloc !5019
  %1 = icmp ult i8 %0, 2, !dbg !5018
  call void @llvm.assume(i1 %1), !dbg !5018
  store i8 %0, ptr %c, align 1, !dbg !5018
  %2 = load i8, ptr %c, align 1, !dbg !5018, !range !4476, !noundef !1222
  %tobool = trunc i8 %2 to i1, !dbg !5018
  %frombool = zext i1 %tobool to i8, !dbg !5018
  store i8 %frombool, ptr %tmp, align 1, !dbg !5018
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #16, !dbg !5020
  %3 = load i8, ptr %tmp, align 1, !dbg !5018, !range !4476, !noundef !1222
  %tobool1 = trunc i8 %3 to i1, !dbg !5018
  ret i1 %tobool1, !dbg !5021
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vclocks_set_used(i32 noundef %which) #4 align 16 !dbg !5022 {
entry:
  %which.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %which, ptr %which.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !5027, metadata !DIExpression()), !dbg !5028
  br label %do.body, !dbg !5029

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5030

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5032

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5030

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !5034

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5037

do.end4:                                          ; preds = %do.body3
  %0 = load volatile i32, ptr @vclocks_used, align 4, !dbg !5034
  store i32 %0, ptr %tmp, align 4, !dbg !5037
  %1 = load i32, ptr %tmp, align 4, !dbg !5034
  %2 = load i32, ptr %which.addr, align 4, !dbg !5039
  %shl = shl i32 1, %2, !dbg !5039
  %or = or i32 %1, %shl, !dbg !5039
  store volatile i32 %or, ptr @vclocks_used, align 4, !dbg !5039
  br label %do.end5, !dbg !5039

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !5030

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5040
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #7 align 16 !dbg !5041 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5043, metadata !DIExpression()), !dbg !5046
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !5044, metadata !DIExpression()), !dbg !5047
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !5045, metadata !DIExpression()), !dbg !5048
  %0 = load i32, ptr %msr.addr, align 4, !dbg !5049
  %1 = load i32, ptr %low.addr, align 4, !dbg !5050
  %2 = load i32, ptr %high.addr, align 4, !dbg !5051
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #16, !dbg !5052, !srcloc !5053
  ret void, !dbg !5054
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #7 align 16 !dbg !5055 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5071, metadata !DIExpression()), !dbg !5072
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5073
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #17, !dbg !5074
  ret i1 %call, !dbg !5075
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5076 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #7 align 16 !dbg !5079 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5084, metadata !DIExpression()), !dbg !5087
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !5085, metadata !DIExpression()), !dbg !5088
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5089
  %1 = load i8, ptr %branch.addr, align 1, !dbg !5090, !range !4476, !noundef !1222
  %tobool = trunc i8 %1 to i1, !dbg !5090
  %conv = zext i1 %tobool to i32, !dbg !5090
  %or = or i32 2, %conv, !dbg !5091
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #16
          to label %asm.fallthrough [label %l_yes], !dbg !5092, !srcloc !5093

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5094
  br label %return, !dbg !5094

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !5086), !dbg !5095
  store i1 true, ptr %retval, align 1, !dbg !5096
  br label %return, !dbg !5096

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !5097
  ret i1 %2, !dbg !5097
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @kvmclock_init_mem() #0 section ".init.text" align 16 !dbg !5098 {
entry:
  %ncpus = alloca i64, align 8
  %order = alloca i32, align 4
  %p = alloca ptr, align 8
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncpus) #16, !dbg !5104
  call void @llvm.dbg.declare(metadata ptr %ncpus, metadata !5100, metadata !DIExpression()), !dbg !5105
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #16, !dbg !5106
  call void @llvm.dbg.declare(metadata ptr %order, metadata !5101, metadata !DIExpression()), !dbg !5107
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5108
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5102, metadata !DIExpression()), !dbg !5109
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #16, !dbg !5110
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5103, metadata !DIExpression()), !dbg !5111
  %call = call i32 @cpumask_weight(ptr noundef @__cpu_possible_mask) #17, !dbg !5112
  %conv = zext i32 %call to i64, !dbg !5112
  %cmp = icmp uge i64 64, %conv, !dbg !5114
  br i1 %cmp, label %if.then, label %if.end, !dbg !5115

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5116

if.end:                                           ; preds = %entry
  %call2 = call i32 @cpumask_weight(ptr noundef @__cpu_possible_mask) #17, !dbg !5117
  %conv3 = zext i32 %call2 to i64, !dbg !5117
  %sub = sub i64 %conv3, 64, !dbg !5118
  store i64 %sub, ptr %ncpus, align 8, !dbg !5119
  %0 = load i64, ptr %ncpus, align 8, !dbg !5120
  %mul = mul i64 %0, 64, !dbg !5121
  %call4 = call i32 @get_order(i64 noundef %mul) #19, !dbg !5122
  store i32 %call4, ptr %order, align 4, !dbg !5123
  %1 = load i32, ptr %order, align 4, !dbg !5124
  %call5 = call ptr @alloc_pages(i32 noundef 3264, i32 noundef %1) #17, !dbg !5125
  store ptr %call5, ptr %p, align 8, !dbg !5126
  %2 = load ptr, ptr %p, align 8, !dbg !5127
  %tobool = icmp ne ptr %2, null, !dbg !5127
  br i1 %tobool, label %if.end8, label %if.then6, !dbg !5129

if.then6:                                         ; preds = %if.end
  br label %do.body, !dbg !5130

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !5133

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5133

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %order, align 4, !dbg !5130
  %shl = shl i32 1, %3, !dbg !5130
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef @__func__.kvmclock_init_mem, i32 noundef %shl) #18, !dbg !5130
  store i32 %call7, ptr %tmp, align 4, !dbg !5133
  %4 = load i32, ptr %tmp, align 4, !dbg !5130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5135

if.end8:                                          ; preds = %if.end
  %5 = load ptr, ptr %p, align 8, !dbg !5136
  %call9 = call ptr @lowmem_page_address(ptr noundef %5) #17, !dbg !5136
  store ptr %call9, ptr @hvclock_mem, align 8, !dbg !5137
  %call10 = call zeroext i1 @cc_platform_has(i32 noundef 2) #17, !dbg !5138
  br i1 %call10, label %if.then11, label %if.end23, !dbg !5140

if.then11:                                        ; preds = %if.end8
  %6 = load ptr, ptr @hvclock_mem, align 8, !dbg !5141
  %7 = ptrtoint ptr %6 to i64, !dbg !5143
  %8 = load i32, ptr %order, align 4, !dbg !5144
  %sh_prom = zext i32 %8 to i64, !dbg !5145
  %shl12 = shl i64 1, %sh_prom, !dbg !5145
  %conv13 = trunc i64 %shl12 to i32, !dbg !5146
  %call14 = call i32 @set_memory_decrypted(i64 noundef %7, i32 noundef %conv13) #17, !dbg !5147
  store i32 %call14, ptr %r, align 4, !dbg !5148
  %9 = load i32, ptr %r, align 4, !dbg !5149
  %tobool15 = icmp ne i32 %9, 0, !dbg !5149
  br i1 %tobool15, label %if.then16, label %if.end22, !dbg !5151

if.then16:                                        ; preds = %if.then11
  %10 = load ptr, ptr %p, align 8, !dbg !5152
  %11 = load i32, ptr %order, align 4, !dbg !5154
  call void @__free_pages(ptr noundef %10, i32 noundef %11) #17, !dbg !5155
  store ptr null, ptr @hvclock_mem, align 8, !dbg !5156
  br label %do.body17, !dbg !5157

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !5159

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5159

do.end19:                                         ; preds = %do.cond18
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #18, !dbg !5157
  store i32 %call21, ptr %tmp20, align 4, !dbg !5159
  %12 = load i32, ptr %tmp20, align 4, !dbg !5157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5161

if.end22:                                         ; preds = %if.then11
  br label %if.end23, !dbg !5162

if.end23:                                         ; preds = %if.end22, %if.end8
  %13 = load ptr, ptr @hvclock_mem, align 8, !dbg !5163
  %14 = load i32, ptr %order, align 4, !dbg !5164
  %sh_prom24 = zext i32 %14 to i64, !dbg !5165
  %shl25 = shl i64 4096, %sh_prom24, !dbg !5165
  call void @llvm.memset.p0.i64(ptr align 64 %13, i8 0, i64 %shl25, i1 false), !dbg !5166
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5167
  br label %cleanup, !dbg !5167

cleanup:                                          ; preds = %if.end23, %do.end19, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #16, !dbg !5167
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5167
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #16, !dbg !5167
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncpus) #16, !dbg !5167
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5167

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_weight(ptr noundef %srcp) #4 align 16 !dbg !5168 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !5172, metadata !DIExpression()), !dbg !5173
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !5174
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !5174
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5174
  %call = call i32 @bitmap_weight(ptr noundef %arraydecay, i32 noundef 64) #17, !dbg !5175
  ret i32 %call, !dbg !5176
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @get_order(i64 noundef %size) #13 align 16 !dbg !5177 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5182, metadata !DIExpression()), !dbg !5183
  %0 = load i64, ptr %size.addr, align 8, !dbg !5184
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5186
  br i1 %1, label %if.then, label %if.end14, !dbg !5187

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5188
  %tobool = icmp ne i64 %2, 0, !dbg !5188
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5191

if.then1:                                         ; preds = %if.then
  store i32 52, ptr %retval, align 4, !dbg !5192
  br label %return, !dbg !5192

if.end:                                           ; preds = %if.then
  %3 = load i64, ptr %size.addr, align 8, !dbg !5193
  %cmp = icmp ult i64 %3, 4096, !dbg !5195
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5196

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5197
  br label %return, !dbg !5197

if.end3:                                          ; preds = %if.end
  %4 = load i64, ptr %size.addr, align 8, !dbg !5198
  %sub = sub i64 %4, 1, !dbg !5198
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5198
  br i1 %5, label %cond.true, label %cond.false9, !dbg !5198

cond.true:                                        ; preds = %if.end3
  %6 = load i64, ptr %size.addr, align 8, !dbg !5198
  %sub4 = sub i64 %6, 1, !dbg !5198
  %cmp5 = icmp ult i64 %sub4, 2, !dbg !5198
  br i1 %cmp5, label %cond.true6, label %cond.false, !dbg !5198

cond.true6:                                       ; preds = %cond.true
  br label %cond.end, !dbg !5198

cond.false:                                       ; preds = %cond.true
  %7 = load i64, ptr %size.addr, align 8, !dbg !5198
  %sub7 = sub i64 %7, 1, !dbg !5198
  %8 = call i64 @llvm.ctlz.i64(i64 %sub7, i1 true), !dbg !5198
  %cast = trunc i64 %8 to i32, !dbg !5198
  %sub8 = sub i32 63, %cast, !dbg !5198
  br label %cond.end, !dbg !5198

cond.end:                                         ; preds = %cond.false, %cond.true6
  %cond = phi i32 [ 0, %cond.true6 ], [ %sub8, %cond.false ], !dbg !5198
  br label %cond.end11, !dbg !5198

cond.false9:                                      ; preds = %if.end3
  %9 = load i64, ptr %size.addr, align 8, !dbg !5198
  %sub10 = sub i64 %9, 1, !dbg !5198
  %call = call i32 @__ilog2_u64(i64 noundef %sub10) #19, !dbg !5198
  br label %cond.end11, !dbg !5198

cond.end11:                                       ; preds = %cond.false9, %cond.end
  %cond12 = phi i32 [ %cond, %cond.end ], [ %call, %cond.false9 ], !dbg !5198
  %sub13 = sub i32 %cond12, 12, !dbg !5199
  %add = add i32 %sub13, 1, !dbg !5200
  store i32 %add, ptr %retval, align 4, !dbg !5201
  br label %return, !dbg !5201

if.end14:                                         ; preds = %entry
  %10 = load i64, ptr %size.addr, align 8, !dbg !5202
  %dec = add i64 %10, -1, !dbg !5202
  store i64 %dec, ptr %size.addr, align 8, !dbg !5202
  %11 = load i64, ptr %size.addr, align 8, !dbg !5203
  %shr = lshr i64 %11, 12, !dbg !5203
  store i64 %shr, ptr %size.addr, align 8, !dbg !5203
  %12 = load i64, ptr %size.addr, align 8, !dbg !5204
  %call15 = call i32 @fls64(i64 noundef %12) #17, !dbg !5205
  store i32 %call15, ptr %retval, align 4, !dbg !5206
  br label %return, !dbg !5206

return:                                           ; preds = %if.end14, %cond.end11, %if.then2, %if.then1
  %13 = load i32, ptr %retval, align 4, !dbg !5207
  ret i32 %13, !dbg !5207
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5208 dso_local ptr @alloc_pages(i32 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #7 align 16 !dbg !5212 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5218, metadata !DIExpression()), !dbg !5219
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5220
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !5220
  %2 = inttoptr i64 %1 to ptr, !dbg !5220
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !5220
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !5220
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5220
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5220
  %shl = shl i64 %sub.ptr.div, 12, !dbg !5220
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !5220
  %add = add i64 %shl, %3, !dbg !5220
  %4 = inttoptr i64 %add to ptr, !dbg !5220
  ret ptr %4, !dbg !5221
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cc_platform_has(i32 noundef %attr) #4 align 16 !dbg !5222 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5226, metadata !DIExpression()), !dbg !5227
  ret i1 false, !dbg !5228
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5229 dso_local i32 @set_memory_decrypted(i64 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5233 dso_local void @__free_pages(ptr noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bitmap_weight(ptr noundef %src, i32 noundef %nbits) #7 align 16 !dbg !5236 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5242, metadata !DIExpression()), !dbg !5244
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5243, metadata !DIExpression()), !dbg !5245
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5246
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5246
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !5246

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !5246
  %cmp = icmp ule i32 %2, 64, !dbg !5246
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !5246

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5246
  %cmp2 = icmp ugt i32 %3, 0, !dbg !5246
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5248

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !5249
  %5 = load i64, ptr %4, align 8, !dbg !5250
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !5251
  %sub = sub i32 0, %6, !dbg !5251
  %and = and i32 %sub, 63, !dbg !5251
  %sh_prom = zext i32 %and to i64, !dbg !5251
  %shr = lshr i64 -1, %sh_prom, !dbg !5251
  %and3 = and i64 %5, %shr, !dbg !5252
  %call = call i64 @hweight_long(i64 noundef %and3) #17, !dbg !5253
  %conv = trunc i64 %call to i32, !dbg !5253
  store i32 %conv, ptr %retval, align 4, !dbg !5254
  br label %return, !dbg !5254

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !5255
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !5256
  %call4 = call i32 @__bitmap_weight(ptr noundef %7, i32 noundef %8) #17, !dbg !5257
  store i32 %call4, ptr %retval, align 4, !dbg !5258
  br label %return, !dbg !5258

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !5259
  ret i32 %9, !dbg !5259
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #7 align 16 !dbg !5260 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !5265, metadata !DIExpression()), !dbg !5266
  %0 = load i64, ptr %w.addr, align 8, !dbg !5267
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5267
  br i1 %1, label %cond.true, label %cond.false, !dbg !5267

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !5267
  %and = and i64 %2, 1, !dbg !5267
  %tobool = icmp ne i64 %and, 0, !dbg !5267
  %lnot = xor i1 %tobool, true, !dbg !5267
  %lnot1 = xor i1 %lnot, true, !dbg !5267
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5267
  %3 = load i64, ptr %w.addr, align 8, !dbg !5267
  %and2 = and i64 %3, 2, !dbg !5267
  %tobool3 = icmp ne i64 %and2, 0, !dbg !5267
  %lnot4 = xor i1 %tobool3, true, !dbg !5267
  %lnot6 = xor i1 %lnot4, true, !dbg !5267
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5267
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !5267
  %4 = load i64, ptr %w.addr, align 8, !dbg !5267
  %and8 = and i64 %4, 4, !dbg !5267
  %tobool9 = icmp ne i64 %and8, 0, !dbg !5267
  %lnot10 = xor i1 %tobool9, true, !dbg !5267
  %lnot12 = xor i1 %lnot10, true, !dbg !5267
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !5267
  %add14 = add i32 %add, %lnot.ext13, !dbg !5267
  %5 = load i64, ptr %w.addr, align 8, !dbg !5267
  %and15 = and i64 %5, 8, !dbg !5267
  %tobool16 = icmp ne i64 %and15, 0, !dbg !5267
  %lnot17 = xor i1 %tobool16, true, !dbg !5267
  %lnot19 = xor i1 %lnot17, true, !dbg !5267
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5267
  %add21 = add i32 %add14, %lnot.ext20, !dbg !5267
  %6 = load i64, ptr %w.addr, align 8, !dbg !5267
  %and22 = and i64 %6, 16, !dbg !5267
  %tobool23 = icmp ne i64 %and22, 0, !dbg !5267
  %lnot24 = xor i1 %tobool23, true, !dbg !5267
  %lnot26 = xor i1 %lnot24, true, !dbg !5267
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !5267
  %add28 = add i32 %add21, %lnot.ext27, !dbg !5267
  %7 = load i64, ptr %w.addr, align 8, !dbg !5267
  %and29 = and i64 %7, 32, !dbg !5267
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5267
  %lnot31 = xor i1 %tobool30, true, !dbg !5267
  %lnot33 = xor i1 %lnot31, true, !dbg !5267
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !5267
  %add35 = add i32 %add28, %lnot.ext34, !dbg !5267
  %8 = load i64, ptr %w.addr, align 8, !dbg !5267
  %and36 = and i64 %8, 64, !dbg !5267
  %tobool37 = icmp ne i64 %and36, 0, !dbg !5267
  %lnot38 = xor i1 %tobool37, true, !dbg !5267
  %lnot40 = xor i1 %lnot38, true, !dbg !5267
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !5267
  %add42 = add i32 %add35, %lnot.ext41, !dbg !5267
  %9 = load i64, ptr %w.addr, align 8, !dbg !5267
  %and43 = and i64 %9, 128, !dbg !5267
  %tobool44 = icmp ne i64 %and43, 0, !dbg !5267
  %lnot45 = xor i1 %tobool44, true, !dbg !5267
  %lnot47 = xor i1 %lnot45, true, !dbg !5267
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !5267
  %add49 = add i32 %add42, %lnot.ext48, !dbg !5267
  %10 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr = lshr i64 %10, 8, !dbg !5267
  %and50 = and i64 %shr, 1, !dbg !5267
  %tobool51 = icmp ne i64 %and50, 0, !dbg !5267
  %lnot52 = xor i1 %tobool51, true, !dbg !5267
  %lnot54 = xor i1 %lnot52, true, !dbg !5267
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5267
  %11 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr56 = lshr i64 %11, 8, !dbg !5267
  %and57 = and i64 %shr56, 2, !dbg !5267
  %tobool58 = icmp ne i64 %and57, 0, !dbg !5267
  %lnot59 = xor i1 %tobool58, true, !dbg !5267
  %lnot61 = xor i1 %lnot59, true, !dbg !5267
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !5267
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !5267
  %12 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr64 = lshr i64 %12, 8, !dbg !5267
  %and65 = and i64 %shr64, 4, !dbg !5267
  %tobool66 = icmp ne i64 %and65, 0, !dbg !5267
  %lnot67 = xor i1 %tobool66, true, !dbg !5267
  %lnot69 = xor i1 %lnot67, true, !dbg !5267
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !5267
  %add71 = add i32 %add63, %lnot.ext70, !dbg !5267
  %13 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr72 = lshr i64 %13, 8, !dbg !5267
  %and73 = and i64 %shr72, 8, !dbg !5267
  %tobool74 = icmp ne i64 %and73, 0, !dbg !5267
  %lnot75 = xor i1 %tobool74, true, !dbg !5267
  %lnot77 = xor i1 %lnot75, true, !dbg !5267
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !5267
  %add79 = add i32 %add71, %lnot.ext78, !dbg !5267
  %14 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr80 = lshr i64 %14, 8, !dbg !5267
  %and81 = and i64 %shr80, 16, !dbg !5267
  %tobool82 = icmp ne i64 %and81, 0, !dbg !5267
  %lnot83 = xor i1 %tobool82, true, !dbg !5267
  %lnot85 = xor i1 %lnot83, true, !dbg !5267
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !5267
  %add87 = add i32 %add79, %lnot.ext86, !dbg !5267
  %15 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr88 = lshr i64 %15, 8, !dbg !5267
  %and89 = and i64 %shr88, 32, !dbg !5267
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5267
  %lnot91 = xor i1 %tobool90, true, !dbg !5267
  %lnot93 = xor i1 %lnot91, true, !dbg !5267
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !5267
  %add95 = add i32 %add87, %lnot.ext94, !dbg !5267
  %16 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr96 = lshr i64 %16, 8, !dbg !5267
  %and97 = and i64 %shr96, 64, !dbg !5267
  %tobool98 = icmp ne i64 %and97, 0, !dbg !5267
  %lnot99 = xor i1 %tobool98, true, !dbg !5267
  %lnot101 = xor i1 %lnot99, true, !dbg !5267
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !5267
  %add103 = add i32 %add95, %lnot.ext102, !dbg !5267
  %17 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr104 = lshr i64 %17, 8, !dbg !5267
  %and105 = and i64 %shr104, 128, !dbg !5267
  %tobool106 = icmp ne i64 %and105, 0, !dbg !5267
  %lnot107 = xor i1 %tobool106, true, !dbg !5267
  %lnot109 = xor i1 %lnot107, true, !dbg !5267
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !5267
  %add111 = add i32 %add103, %lnot.ext110, !dbg !5267
  %add112 = add i32 %add49, %add111, !dbg !5267
  %18 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr113 = lshr i64 %18, 16, !dbg !5267
  %and114 = and i64 %shr113, 1, !dbg !5267
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5267
  %lnot116 = xor i1 %tobool115, true, !dbg !5267
  %lnot118 = xor i1 %lnot116, true, !dbg !5267
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !5267
  %19 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr120 = lshr i64 %19, 16, !dbg !5267
  %and121 = and i64 %shr120, 2, !dbg !5267
  %tobool122 = icmp ne i64 %and121, 0, !dbg !5267
  %lnot123 = xor i1 %tobool122, true, !dbg !5267
  %lnot125 = xor i1 %lnot123, true, !dbg !5267
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !5267
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !5267
  %20 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr128 = lshr i64 %20, 16, !dbg !5267
  %and129 = and i64 %shr128, 4, !dbg !5267
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5267
  %lnot131 = xor i1 %tobool130, true, !dbg !5267
  %lnot133 = xor i1 %lnot131, true, !dbg !5267
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !5267
  %add135 = add i32 %add127, %lnot.ext134, !dbg !5267
  %21 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr136 = lshr i64 %21, 16, !dbg !5267
  %and137 = and i64 %shr136, 8, !dbg !5267
  %tobool138 = icmp ne i64 %and137, 0, !dbg !5267
  %lnot139 = xor i1 %tobool138, true, !dbg !5267
  %lnot141 = xor i1 %lnot139, true, !dbg !5267
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !5267
  %add143 = add i32 %add135, %lnot.ext142, !dbg !5267
  %22 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr144 = lshr i64 %22, 16, !dbg !5267
  %and145 = and i64 %shr144, 16, !dbg !5267
  %tobool146 = icmp ne i64 %and145, 0, !dbg !5267
  %lnot147 = xor i1 %tobool146, true, !dbg !5267
  %lnot149 = xor i1 %lnot147, true, !dbg !5267
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !5267
  %add151 = add i32 %add143, %lnot.ext150, !dbg !5267
  %23 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr152 = lshr i64 %23, 16, !dbg !5267
  %and153 = and i64 %shr152, 32, !dbg !5267
  %tobool154 = icmp ne i64 %and153, 0, !dbg !5267
  %lnot155 = xor i1 %tobool154, true, !dbg !5267
  %lnot157 = xor i1 %lnot155, true, !dbg !5267
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !5267
  %add159 = add i32 %add151, %lnot.ext158, !dbg !5267
  %24 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr160 = lshr i64 %24, 16, !dbg !5267
  %and161 = and i64 %shr160, 64, !dbg !5267
  %tobool162 = icmp ne i64 %and161, 0, !dbg !5267
  %lnot163 = xor i1 %tobool162, true, !dbg !5267
  %lnot165 = xor i1 %lnot163, true, !dbg !5267
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !5267
  %add167 = add i32 %add159, %lnot.ext166, !dbg !5267
  %25 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr168 = lshr i64 %25, 16, !dbg !5267
  %and169 = and i64 %shr168, 128, !dbg !5267
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5267
  %lnot171 = xor i1 %tobool170, true, !dbg !5267
  %lnot173 = xor i1 %lnot171, true, !dbg !5267
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !5267
  %add175 = add i32 %add167, %lnot.ext174, !dbg !5267
  %26 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr176 = lshr i64 %26, 16, !dbg !5267
  %shr177 = lshr i64 %shr176, 8, !dbg !5267
  %and178 = and i64 %shr177, 1, !dbg !5267
  %tobool179 = icmp ne i64 %and178, 0, !dbg !5267
  %lnot180 = xor i1 %tobool179, true, !dbg !5267
  %lnot182 = xor i1 %lnot180, true, !dbg !5267
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !5267
  %27 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr184 = lshr i64 %27, 16, !dbg !5267
  %shr185 = lshr i64 %shr184, 8, !dbg !5267
  %and186 = and i64 %shr185, 2, !dbg !5267
  %tobool187 = icmp ne i64 %and186, 0, !dbg !5267
  %lnot188 = xor i1 %tobool187, true, !dbg !5267
  %lnot190 = xor i1 %lnot188, true, !dbg !5267
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !5267
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !5267
  %28 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr193 = lshr i64 %28, 16, !dbg !5267
  %shr194 = lshr i64 %shr193, 8, !dbg !5267
  %and195 = and i64 %shr194, 4, !dbg !5267
  %tobool196 = icmp ne i64 %and195, 0, !dbg !5267
  %lnot197 = xor i1 %tobool196, true, !dbg !5267
  %lnot199 = xor i1 %lnot197, true, !dbg !5267
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !5267
  %add201 = add i32 %add192, %lnot.ext200, !dbg !5267
  %29 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr202 = lshr i64 %29, 16, !dbg !5267
  %shr203 = lshr i64 %shr202, 8, !dbg !5267
  %and204 = and i64 %shr203, 8, !dbg !5267
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5267
  %lnot206 = xor i1 %tobool205, true, !dbg !5267
  %lnot208 = xor i1 %lnot206, true, !dbg !5267
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !5267
  %add210 = add i32 %add201, %lnot.ext209, !dbg !5267
  %30 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr211 = lshr i64 %30, 16, !dbg !5267
  %shr212 = lshr i64 %shr211, 8, !dbg !5267
  %and213 = and i64 %shr212, 16, !dbg !5267
  %tobool214 = icmp ne i64 %and213, 0, !dbg !5267
  %lnot215 = xor i1 %tobool214, true, !dbg !5267
  %lnot217 = xor i1 %lnot215, true, !dbg !5267
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !5267
  %add219 = add i32 %add210, %lnot.ext218, !dbg !5267
  %31 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr220 = lshr i64 %31, 16, !dbg !5267
  %shr221 = lshr i64 %shr220, 8, !dbg !5267
  %and222 = and i64 %shr221, 32, !dbg !5267
  %tobool223 = icmp ne i64 %and222, 0, !dbg !5267
  %lnot224 = xor i1 %tobool223, true, !dbg !5267
  %lnot226 = xor i1 %lnot224, true, !dbg !5267
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !5267
  %add228 = add i32 %add219, %lnot.ext227, !dbg !5267
  %32 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr229 = lshr i64 %32, 16, !dbg !5267
  %shr230 = lshr i64 %shr229, 8, !dbg !5267
  %and231 = and i64 %shr230, 64, !dbg !5267
  %tobool232 = icmp ne i64 %and231, 0, !dbg !5267
  %lnot233 = xor i1 %tobool232, true, !dbg !5267
  %lnot235 = xor i1 %lnot233, true, !dbg !5267
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !5267
  %add237 = add i32 %add228, %lnot.ext236, !dbg !5267
  %33 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr238 = lshr i64 %33, 16, !dbg !5267
  %shr239 = lshr i64 %shr238, 8, !dbg !5267
  %and240 = and i64 %shr239, 128, !dbg !5267
  %tobool241 = icmp ne i64 %and240, 0, !dbg !5267
  %lnot242 = xor i1 %tobool241, true, !dbg !5267
  %lnot244 = xor i1 %lnot242, true, !dbg !5267
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !5267
  %add246 = add i32 %add237, %lnot.ext245, !dbg !5267
  %add247 = add i32 %add175, %add246, !dbg !5267
  %add248 = add i32 %add112, %add247, !dbg !5267
  %34 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr249 = lshr i64 %34, 32, !dbg !5267
  %and250 = and i64 %shr249, 1, !dbg !5267
  %tobool251 = icmp ne i64 %and250, 0, !dbg !5267
  %lnot252 = xor i1 %tobool251, true, !dbg !5267
  %lnot254 = xor i1 %lnot252, true, !dbg !5267
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !5267
  %35 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr256 = lshr i64 %35, 32, !dbg !5267
  %and257 = and i64 %shr256, 2, !dbg !5267
  %tobool258 = icmp ne i64 %and257, 0, !dbg !5267
  %lnot259 = xor i1 %tobool258, true, !dbg !5267
  %lnot261 = xor i1 %lnot259, true, !dbg !5267
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !5267
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !5267
  %36 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr264 = lshr i64 %36, 32, !dbg !5267
  %and265 = and i64 %shr264, 4, !dbg !5267
  %tobool266 = icmp ne i64 %and265, 0, !dbg !5267
  %lnot267 = xor i1 %tobool266, true, !dbg !5267
  %lnot269 = xor i1 %lnot267, true, !dbg !5267
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !5267
  %add271 = add i32 %add263, %lnot.ext270, !dbg !5267
  %37 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr272 = lshr i64 %37, 32, !dbg !5267
  %and273 = and i64 %shr272, 8, !dbg !5267
  %tobool274 = icmp ne i64 %and273, 0, !dbg !5267
  %lnot275 = xor i1 %tobool274, true, !dbg !5267
  %lnot277 = xor i1 %lnot275, true, !dbg !5267
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !5267
  %add279 = add i32 %add271, %lnot.ext278, !dbg !5267
  %38 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr280 = lshr i64 %38, 32, !dbg !5267
  %and281 = and i64 %shr280, 16, !dbg !5267
  %tobool282 = icmp ne i64 %and281, 0, !dbg !5267
  %lnot283 = xor i1 %tobool282, true, !dbg !5267
  %lnot285 = xor i1 %lnot283, true, !dbg !5267
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !5267
  %add287 = add i32 %add279, %lnot.ext286, !dbg !5267
  %39 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr288 = lshr i64 %39, 32, !dbg !5267
  %and289 = and i64 %shr288, 32, !dbg !5267
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5267
  %lnot291 = xor i1 %tobool290, true, !dbg !5267
  %lnot293 = xor i1 %lnot291, true, !dbg !5267
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !5267
  %add295 = add i32 %add287, %lnot.ext294, !dbg !5267
  %40 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr296 = lshr i64 %40, 32, !dbg !5267
  %and297 = and i64 %shr296, 64, !dbg !5267
  %tobool298 = icmp ne i64 %and297, 0, !dbg !5267
  %lnot299 = xor i1 %tobool298, true, !dbg !5267
  %lnot301 = xor i1 %lnot299, true, !dbg !5267
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !5267
  %add303 = add i32 %add295, %lnot.ext302, !dbg !5267
  %41 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr304 = lshr i64 %41, 32, !dbg !5267
  %and305 = and i64 %shr304, 128, !dbg !5267
  %tobool306 = icmp ne i64 %and305, 0, !dbg !5267
  %lnot307 = xor i1 %tobool306, true, !dbg !5267
  %lnot309 = xor i1 %lnot307, true, !dbg !5267
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !5267
  %add311 = add i32 %add303, %lnot.ext310, !dbg !5267
  %42 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr312 = lshr i64 %42, 32, !dbg !5267
  %shr313 = lshr i64 %shr312, 8, !dbg !5267
  %and314 = and i64 %shr313, 1, !dbg !5267
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5267
  %lnot316 = xor i1 %tobool315, true, !dbg !5267
  %lnot318 = xor i1 %lnot316, true, !dbg !5267
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !5267
  %43 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr320 = lshr i64 %43, 32, !dbg !5267
  %shr321 = lshr i64 %shr320, 8, !dbg !5267
  %and322 = and i64 %shr321, 2, !dbg !5267
  %tobool323 = icmp ne i64 %and322, 0, !dbg !5267
  %lnot324 = xor i1 %tobool323, true, !dbg !5267
  %lnot326 = xor i1 %lnot324, true, !dbg !5267
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !5267
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !5267
  %44 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr329 = lshr i64 %44, 32, !dbg !5267
  %shr330 = lshr i64 %shr329, 8, !dbg !5267
  %and331 = and i64 %shr330, 4, !dbg !5267
  %tobool332 = icmp ne i64 %and331, 0, !dbg !5267
  %lnot333 = xor i1 %tobool332, true, !dbg !5267
  %lnot335 = xor i1 %lnot333, true, !dbg !5267
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !5267
  %add337 = add i32 %add328, %lnot.ext336, !dbg !5267
  %45 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr338 = lshr i64 %45, 32, !dbg !5267
  %shr339 = lshr i64 %shr338, 8, !dbg !5267
  %and340 = and i64 %shr339, 8, !dbg !5267
  %tobool341 = icmp ne i64 %and340, 0, !dbg !5267
  %lnot342 = xor i1 %tobool341, true, !dbg !5267
  %lnot344 = xor i1 %lnot342, true, !dbg !5267
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !5267
  %add346 = add i32 %add337, %lnot.ext345, !dbg !5267
  %46 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr347 = lshr i64 %46, 32, !dbg !5267
  %shr348 = lshr i64 %shr347, 8, !dbg !5267
  %and349 = and i64 %shr348, 16, !dbg !5267
  %tobool350 = icmp ne i64 %and349, 0, !dbg !5267
  %lnot351 = xor i1 %tobool350, true, !dbg !5267
  %lnot353 = xor i1 %lnot351, true, !dbg !5267
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !5267
  %add355 = add i32 %add346, %lnot.ext354, !dbg !5267
  %47 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr356 = lshr i64 %47, 32, !dbg !5267
  %shr357 = lshr i64 %shr356, 8, !dbg !5267
  %and358 = and i64 %shr357, 32, !dbg !5267
  %tobool359 = icmp ne i64 %and358, 0, !dbg !5267
  %lnot360 = xor i1 %tobool359, true, !dbg !5267
  %lnot362 = xor i1 %lnot360, true, !dbg !5267
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !5267
  %add364 = add i32 %add355, %lnot.ext363, !dbg !5267
  %48 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr365 = lshr i64 %48, 32, !dbg !5267
  %shr366 = lshr i64 %shr365, 8, !dbg !5267
  %and367 = and i64 %shr366, 64, !dbg !5267
  %tobool368 = icmp ne i64 %and367, 0, !dbg !5267
  %lnot369 = xor i1 %tobool368, true, !dbg !5267
  %lnot371 = xor i1 %lnot369, true, !dbg !5267
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !5267
  %add373 = add i32 %add364, %lnot.ext372, !dbg !5267
  %49 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr374 = lshr i64 %49, 32, !dbg !5267
  %shr375 = lshr i64 %shr374, 8, !dbg !5267
  %and376 = and i64 %shr375, 128, !dbg !5267
  %tobool377 = icmp ne i64 %and376, 0, !dbg !5267
  %lnot378 = xor i1 %tobool377, true, !dbg !5267
  %lnot380 = xor i1 %lnot378, true, !dbg !5267
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !5267
  %add382 = add i32 %add373, %lnot.ext381, !dbg !5267
  %add383 = add i32 %add311, %add382, !dbg !5267
  %50 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr384 = lshr i64 %50, 32, !dbg !5267
  %shr385 = lshr i64 %shr384, 16, !dbg !5267
  %and386 = and i64 %shr385, 1, !dbg !5267
  %tobool387 = icmp ne i64 %and386, 0, !dbg !5267
  %lnot388 = xor i1 %tobool387, true, !dbg !5267
  %lnot390 = xor i1 %lnot388, true, !dbg !5267
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !5267
  %51 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr392 = lshr i64 %51, 32, !dbg !5267
  %shr393 = lshr i64 %shr392, 16, !dbg !5267
  %and394 = and i64 %shr393, 2, !dbg !5267
  %tobool395 = icmp ne i64 %and394, 0, !dbg !5267
  %lnot396 = xor i1 %tobool395, true, !dbg !5267
  %lnot398 = xor i1 %lnot396, true, !dbg !5267
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !5267
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !5267
  %52 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr401 = lshr i64 %52, 32, !dbg !5267
  %shr402 = lshr i64 %shr401, 16, !dbg !5267
  %and403 = and i64 %shr402, 4, !dbg !5267
  %tobool404 = icmp ne i64 %and403, 0, !dbg !5267
  %lnot405 = xor i1 %tobool404, true, !dbg !5267
  %lnot407 = xor i1 %lnot405, true, !dbg !5267
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !5267
  %add409 = add i32 %add400, %lnot.ext408, !dbg !5267
  %53 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr410 = lshr i64 %53, 32, !dbg !5267
  %shr411 = lshr i64 %shr410, 16, !dbg !5267
  %and412 = and i64 %shr411, 8, !dbg !5267
  %tobool413 = icmp ne i64 %and412, 0, !dbg !5267
  %lnot414 = xor i1 %tobool413, true, !dbg !5267
  %lnot416 = xor i1 %lnot414, true, !dbg !5267
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !5267
  %add418 = add i32 %add409, %lnot.ext417, !dbg !5267
  %54 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr419 = lshr i64 %54, 32, !dbg !5267
  %shr420 = lshr i64 %shr419, 16, !dbg !5267
  %and421 = and i64 %shr420, 16, !dbg !5267
  %tobool422 = icmp ne i64 %and421, 0, !dbg !5267
  %lnot423 = xor i1 %tobool422, true, !dbg !5267
  %lnot425 = xor i1 %lnot423, true, !dbg !5267
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !5267
  %add427 = add i32 %add418, %lnot.ext426, !dbg !5267
  %55 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr428 = lshr i64 %55, 32, !dbg !5267
  %shr429 = lshr i64 %shr428, 16, !dbg !5267
  %and430 = and i64 %shr429, 32, !dbg !5267
  %tobool431 = icmp ne i64 %and430, 0, !dbg !5267
  %lnot432 = xor i1 %tobool431, true, !dbg !5267
  %lnot434 = xor i1 %lnot432, true, !dbg !5267
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !5267
  %add436 = add i32 %add427, %lnot.ext435, !dbg !5267
  %56 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr437 = lshr i64 %56, 32, !dbg !5267
  %shr438 = lshr i64 %shr437, 16, !dbg !5267
  %and439 = and i64 %shr438, 64, !dbg !5267
  %tobool440 = icmp ne i64 %and439, 0, !dbg !5267
  %lnot441 = xor i1 %tobool440, true, !dbg !5267
  %lnot443 = xor i1 %lnot441, true, !dbg !5267
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !5267
  %add445 = add i32 %add436, %lnot.ext444, !dbg !5267
  %57 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr446 = lshr i64 %57, 32, !dbg !5267
  %shr447 = lshr i64 %shr446, 16, !dbg !5267
  %and448 = and i64 %shr447, 128, !dbg !5267
  %tobool449 = icmp ne i64 %and448, 0, !dbg !5267
  %lnot450 = xor i1 %tobool449, true, !dbg !5267
  %lnot452 = xor i1 %lnot450, true, !dbg !5267
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !5267
  %add454 = add i32 %add445, %lnot.ext453, !dbg !5267
  %58 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr455 = lshr i64 %58, 32, !dbg !5267
  %shr456 = lshr i64 %shr455, 16, !dbg !5267
  %shr457 = lshr i64 %shr456, 8, !dbg !5267
  %and458 = and i64 %shr457, 1, !dbg !5267
  %tobool459 = icmp ne i64 %and458, 0, !dbg !5267
  %lnot460 = xor i1 %tobool459, true, !dbg !5267
  %lnot462 = xor i1 %lnot460, true, !dbg !5267
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !5267
  %59 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr464 = lshr i64 %59, 32, !dbg !5267
  %shr465 = lshr i64 %shr464, 16, !dbg !5267
  %shr466 = lshr i64 %shr465, 8, !dbg !5267
  %and467 = and i64 %shr466, 2, !dbg !5267
  %tobool468 = icmp ne i64 %and467, 0, !dbg !5267
  %lnot469 = xor i1 %tobool468, true, !dbg !5267
  %lnot471 = xor i1 %lnot469, true, !dbg !5267
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !5267
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !5267
  %60 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr474 = lshr i64 %60, 32, !dbg !5267
  %shr475 = lshr i64 %shr474, 16, !dbg !5267
  %shr476 = lshr i64 %shr475, 8, !dbg !5267
  %and477 = and i64 %shr476, 4, !dbg !5267
  %tobool478 = icmp ne i64 %and477, 0, !dbg !5267
  %lnot479 = xor i1 %tobool478, true, !dbg !5267
  %lnot481 = xor i1 %lnot479, true, !dbg !5267
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !5267
  %add483 = add i32 %add473, %lnot.ext482, !dbg !5267
  %61 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr484 = lshr i64 %61, 32, !dbg !5267
  %shr485 = lshr i64 %shr484, 16, !dbg !5267
  %shr486 = lshr i64 %shr485, 8, !dbg !5267
  %and487 = and i64 %shr486, 8, !dbg !5267
  %tobool488 = icmp ne i64 %and487, 0, !dbg !5267
  %lnot489 = xor i1 %tobool488, true, !dbg !5267
  %lnot491 = xor i1 %lnot489, true, !dbg !5267
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !5267
  %add493 = add i32 %add483, %lnot.ext492, !dbg !5267
  %62 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr494 = lshr i64 %62, 32, !dbg !5267
  %shr495 = lshr i64 %shr494, 16, !dbg !5267
  %shr496 = lshr i64 %shr495, 8, !dbg !5267
  %and497 = and i64 %shr496, 16, !dbg !5267
  %tobool498 = icmp ne i64 %and497, 0, !dbg !5267
  %lnot499 = xor i1 %tobool498, true, !dbg !5267
  %lnot501 = xor i1 %lnot499, true, !dbg !5267
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !5267
  %add503 = add i32 %add493, %lnot.ext502, !dbg !5267
  %63 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr504 = lshr i64 %63, 32, !dbg !5267
  %shr505 = lshr i64 %shr504, 16, !dbg !5267
  %shr506 = lshr i64 %shr505, 8, !dbg !5267
  %and507 = and i64 %shr506, 32, !dbg !5267
  %tobool508 = icmp ne i64 %and507, 0, !dbg !5267
  %lnot509 = xor i1 %tobool508, true, !dbg !5267
  %lnot511 = xor i1 %lnot509, true, !dbg !5267
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !5267
  %add513 = add i32 %add503, %lnot.ext512, !dbg !5267
  %64 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr514 = lshr i64 %64, 32, !dbg !5267
  %shr515 = lshr i64 %shr514, 16, !dbg !5267
  %shr516 = lshr i64 %shr515, 8, !dbg !5267
  %and517 = and i64 %shr516, 64, !dbg !5267
  %tobool518 = icmp ne i64 %and517, 0, !dbg !5267
  %lnot519 = xor i1 %tobool518, true, !dbg !5267
  %lnot521 = xor i1 %lnot519, true, !dbg !5267
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !5267
  %add523 = add i32 %add513, %lnot.ext522, !dbg !5267
  %65 = load i64, ptr %w.addr, align 8, !dbg !5267
  %shr524 = lshr i64 %65, 32, !dbg !5267
  %shr525 = lshr i64 %shr524, 16, !dbg !5267
  %shr526 = lshr i64 %shr525, 8, !dbg !5267
  %and527 = and i64 %shr526, 128, !dbg !5267
  %tobool528 = icmp ne i64 %and527, 0, !dbg !5267
  %lnot529 = xor i1 %tobool528, true, !dbg !5267
  %lnot531 = xor i1 %lnot529, true, !dbg !5267
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !5267
  %add533 = add i32 %add523, %lnot.ext532, !dbg !5267
  %add534 = add i32 %add454, %add533, !dbg !5267
  %add535 = add i32 %add383, %add534, !dbg !5267
  %add536 = add i32 %add248, %add535, !dbg !5267
  %conv = zext i32 %add536 to i64, !dbg !5267
  br label %cond.end, !dbg !5267

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !5267
  %call = call i64 @__arch_hweight64(i64 noundef %66) #17, !dbg !5267
  br label %cond.end, !dbg !5267

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !5267
  ret i64 %cond, !dbg !5268
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5269 dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #7 align 16 !dbg !5270 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !5275, metadata !DIExpression()), !dbg !5277
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !5278
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5276, metadata !DIExpression()), !dbg !5279
  %0 = load i64, ptr %w.addr, align 8, !dbg !5280
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #20, !dbg !5281, !srcloc !5282
  store i64 %1, ptr %res, align 8, !dbg !5281
  %2 = load i64, ptr %res, align 8, !dbg !5283
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !5284
  ret i64 %2, !dbg !5285
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__ilog2_u64(i64 noundef %n) #13 align 16 !dbg !5286 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5291, metadata !DIExpression()), !dbg !5292
  %0 = load i64, ptr %n.addr, align 8, !dbg !5293
  %call = call i32 @fls64(i64 noundef %0) #17, !dbg !5294
  %sub = sub i32 %call, 1, !dbg !5295
  ret i32 %sub, !dbg !5296
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #7 align 16 !dbg !5297 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !5301, metadata !DIExpression()), !dbg !5303
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #16, !dbg !5304
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !5302, metadata !DIExpression()), !dbg !5305
  store i32 -1, ptr %bitpos, align 4, !dbg !5305
  %0 = load i32, ptr %bitpos, align 4, !dbg !5306
  %1 = load i64, ptr %x.addr, align 8, !dbg !5307
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #21, !dbg !5306, !srcloc !5308
  store i32 %2, ptr %bitpos, align 4, !dbg !5306
  %3 = load i32, ptr %bitpos, align 4, !dbg !5309
  %add = add i32 %3, 1, !dbg !5310
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #16, !dbg !5311
  ret i32 %add, !dbg !5312
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5313 dso_local i32 @kvm_arch_para_features() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5316 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5319 dso_local i64 @slow_virt_to_phys(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsrl(i32 noundef %msr, i64 noundef %val) #4 align 16 !dbg !5322 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5326, metadata !DIExpression()), !dbg !5328
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5327, metadata !DIExpression()), !dbg !5329
  %0 = load i32, ptr %msr.addr, align 4, !dbg !5330
  %1 = load i64, ptr %val.addr, align 8, !dbg !5331
  %and = and i64 %1, 4294967295, !dbg !5332
  %conv = trunc i64 %and to i32, !dbg !5333
  %2 = load i64, ptr %val.addr, align 8, !dbg !5334
  %shr = lshr i64 %2, 32, !dbg !5335
  %conv1 = trunc i64 %shr to i32, !dbg !5336
  call void @native_write_msr(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #17, !dbg !5337
  ret void, !dbg !5338
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5339 dso_local void @clear_sched_clock_stable() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5341 dso_local void @paravirt_set_sched_clock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kvm_sched_clock_read() #15 section ".noinstr.text" align 16 !dbg !5346 {
entry:
  %call = call ptr @this_cpu_pvti() #17, !dbg !5347
  %call1 = call i64 @pvclock_clocksource_read_nowd(ptr noundef %call) #17, !dbg !5348
  %0 = load i64, ptr @kvm_sched_clock_offset, align 8, !dbg !5349
  %sub = sub i64 %call1, %0, !dbg !5350
  ret i64 %sub, !dbg !5351
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5352 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5358, metadata !DIExpression()), !dbg !5360
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5359, metadata !DIExpression()), !dbg !5361
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5362
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5363
  %div = sdiv i64 %1, 64, !dbg !5363
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5364
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !5365
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5366
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5367
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5368
  ret void, !dbg !5369
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5370 dso_local i64 @pvclock_tsc_khz(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5373 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5381, metadata !DIExpression()), !dbg !5383
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5382, metadata !DIExpression()), !dbg !5384
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5385
  %1 = load i64, ptr %size.addr, align 8, !dbg !5386
  %conv = trunc i64 %1 to i32, !dbg !5386
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !5387
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5388
  %3 = load i64, ptr %size.addr, align 8, !dbg !5388
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !5388
  ret void, !dbg !5389
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5390 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5392, metadata !DIExpression()), !dbg !5394
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5393, metadata !DIExpression()), !dbg !5395
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5396
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5398
  br i1 %1, label %if.then, label %if.else, !dbg !5399

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5400
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5400
  %shr = ashr i64 %3, 3, !dbg !5400
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5400
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5402
  %and = and i64 %4, 7, !dbg !5402
  %sh_prom = trunc i64 %and to i32, !dbg !5402
  %shl = shl i32 1, %sh_prom, !dbg !5402
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #16, !dbg !5403, !srcloc !5404
  br label %if.end, !dbg !5405

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5406
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5408
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !5409, !srcloc !5410
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5411
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !5412 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5417, metadata !DIExpression()), !dbg !5419
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5418, metadata !DIExpression()), !dbg !5420
  ret i1 true, !dbg !5421
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !5422 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5427, metadata !DIExpression()), !dbg !5430
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5428, metadata !DIExpression()), !dbg !5431
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5429, metadata !DIExpression()), !dbg !5432
  ret void, !dbg !5433
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5434 dso_local void @pvclock_read_wallclock(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5438 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5442, metadata !DIExpression()), !dbg !5444
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5443, metadata !DIExpression()), !dbg !5445
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5446
  %and = and i64 %0, 63, !dbg !5447
  %shl = shl i64 1, %and, !dbg !5448
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5449
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5450
  %shr = ashr i64 %2, 6, !dbg !5451
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5449
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5449
  %and1 = and i64 %shl, %3, !dbg !5452
  %cmp = icmp ne i64 %and1, 0, !dbg !5453
  ret i1 %cmp, !dbg !5454
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5455 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5457, metadata !DIExpression()), !dbg !5460
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5458, metadata !DIExpression()), !dbg !5461
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !5462
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5459, metadata !DIExpression()), !dbg !5463
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5464
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5465
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !5466, !srcloc !5467
  %3 = icmp ult i8 %2, 2, !dbg !5466
  call void @llvm.assume(i1 %3), !dbg !5466
  store i8 %2, ptr %oldbit, align 1, !dbg !5466
  %4 = load i8, ptr %oldbit, align 1, !dbg !5468, !range !4476, !noundef !1222
  %tobool = trunc i8 %4 to i1, !dbg !5468
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !5469
  ret i1 %tobool, !dbg !5470
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5471 dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) #5

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone nounwind willreturn memory(none) }
attributes #20 = { nounwind memory(none) }
attributes #21 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4441}
!llvm.module.flags = !{!4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449}
!llvm.ident = !{!4450}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_parse_no_kvmclock", scope: !2, file: !3, line: 36, type: !4440, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.kvmclock.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/kvmclock\22 -D KBUILD_BASENAME=\22kvmclock\22 -D KBUILD_MODNAME=\22kvmclock\22 -D __KBUILD_MODNAME=kmod_kvmclock -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/kvmclock.ll arch/x86/kernel/kvmclock.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !312, globals: !4288, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/kvmclock.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0a22185698ea6348e6dce4bc0341942")
!4 = !{!5, !11, !17, !26, !33, !38, !44, !49, !57, !73, !81, !87, !94, !101, !107, !302}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clocksource_ids", file: !12, line: 6, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/clocksource_ids.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "774f19ce120af1af8c42b816fa8c1ff1")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "CSID_GENERIC", value: 0)
!15 = !DIEnumerator(name: "CSID_ARM_ARCH_COUNTER", value: 1)
!16 = !DIEnumerator(name: "CSID_MAX", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vdso_clock_mode", file: !18, line: 11, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/vdso/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5c94bac8b1931d6fab42a415ede12b1")
!19 = !{!20, !21, !22, !23, !24, !25}
!20 = !DIEnumerator(name: "VDSO_CLOCKMODE_NONE", value: 0)
!21 = !DIEnumerator(name: "VDSO_CLOCKMODE_TSC", value: 1)
!22 = !DIEnumerator(name: "VDSO_CLOCKMODE_PVCLOCK", value: 2)
!23 = !DIEnumerator(name: "VDSO_CLOCKMODE_HVCLOCK", value: 3)
!24 = !DIEnumerator(name: "VDSO_CLOCKMODE_MAX", value: 4)
!25 = !DIEnumerator(name: "VDSO_CLOCKMODE_TIMENS", value: 2147483647)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !27, line: 312, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!28 = !{!29, !30, !31, !32}
!29 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!30 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!31 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!32 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !34, line: 2052, baseType: !7, size: 32, elements: !35)
!34 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!35 = !{!36, !37}
!36 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!37 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !39, line: 54, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!40 = !{!41, !42, !43}
!41 = !DIEnumerator(name: "USRQUOTA", value: 0)
!42 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!43 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !45, line: 65, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!46 = !{!47, !48}
!47 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!48 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !50, line: 9, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!51 = !{!52, !53, !54, !55, !56}
!52 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!53 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!54 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!55 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!56 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !58, line: 1325, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!60 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!61 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!62 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!63 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!64 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!65 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!66 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!67 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!68 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!69 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!70 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!71 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!72 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !74, line: 68, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!75 = !{!76, !77, !78, !79, !80}
!76 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!77 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!78 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!79 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!80 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !82, line: 16, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "TT_NONE", value: 0)
!85 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!86 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !88, line: 51, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!89 = !{!90, !91, !92, !93}
!90 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!91 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!92 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!93 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !95, line: 15, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!96 = !{!97, !98, !99, !100}
!97 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!98 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!99 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!100 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !102, line: 26, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!103 = !{!104, !105, !106}
!104 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!105 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!106 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !108, line: 57, baseType: !109, size: 32, elements: !110)
!108 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c163170cdc0ca5f55decccd45901b0e")
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301}
!111 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!112 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!113 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!114 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!115 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!116 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!117 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!118 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!119 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!120 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!121 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!122 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!123 = !DIEnumerator(name: "CPUHP_IBMVNIC_DEAD", value: 11)
!124 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 12)
!125 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 13)
!126 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 14)
!127 = !DIEnumerator(name: "CPUHP_MM_DEMOTION_DEAD", value: 15)
!128 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 16)
!129 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 17)
!130 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 18)
!131 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 19)
!132 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 20)
!133 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 21)
!134 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 22)
!135 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 23)
!136 = !DIEnumerator(name: "CPUHP_BIO_DEAD", value: 24)
!137 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 25)
!138 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 26)
!139 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 27)
!140 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 28)
!141 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 29)
!142 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 30)
!143 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 31)
!144 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 32)
!145 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC", value: 33)
!146 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 34)
!147 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 35)
!148 = !DIEnumerator(name: "CPUHP_IOMMU_IOVA_DEAD", value: 36)
!149 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 37)
!150 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 38)
!151 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 39)
!152 = !DIEnumerator(name: "CPUHP_AP_DTPM_CPU_DEAD", value: 40)
!153 = !DIEnumerator(name: "CPUHP_RANDOM_PREPARE", value: 41)
!154 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 42)
!155 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 43)
!156 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 44)
!157 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 45)
!158 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 46)
!159 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 47)
!160 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 48)
!161 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 49)
!162 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 50)
!163 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 51)
!164 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 52)
!165 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 53)
!166 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 54)
!167 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 55)
!168 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 56)
!169 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 57)
!170 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 58)
!171 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 59)
!172 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 60)
!173 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 61)
!174 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 62)
!175 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 63)
!176 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 64)
!177 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 65)
!178 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 66)
!179 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 67)
!180 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 68)
!181 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 69)
!182 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 70)
!183 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 71)
!184 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 91)
!185 = !DIEnumerator(name: "CPUHP_BP_KICK_AP", value: 92)
!186 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 93)
!187 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 94)
!188 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 95)
!189 = !DIEnumerator(name: "CPUHP_AP_CACHECTRL_STARTING", value: 96)
!190 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 97)
!191 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 98)
!192 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 99)
!193 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 100)
!194 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 101)
!195 = !DIEnumerator(name: "CPUHP_AP_IRQ_APPLE_AIC_STARTING", value: 102)
!196 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 103)
!197 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 104)
!198 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 105)
!199 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 106)
!200 = !DIEnumerator(name: "CPUHP_AP_IRQ_LOONGARCH_STARTING", value: 107)
!201 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 108)
!202 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 109)
!203 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 110)
!204 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 111)
!205 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 112)
!206 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 113)
!207 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 114)
!208 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 115)
!209 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 116)
!210 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 117)
!211 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 118)
!212 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 119)
!213 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 120)
!214 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 121)
!215 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 122)
!216 = !DIEnumerator(name: "CPUHP_AP_PERF_RISCV_STARTING", value: 123)
!217 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 124)
!218 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 125)
!219 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 126)
!220 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 127)
!221 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 128)
!222 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 129)
!223 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 130)
!224 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 131)
!225 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 132)
!226 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 133)
!227 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 134)
!228 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 135)
!229 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 136)
!230 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 137)
!231 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 138)
!232 = !DIEnumerator(name: "CPUHP_AP_TI_GP_TIMER_STARTING", value: 139)
!233 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 140)
!234 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 141)
!235 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 142)
!236 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_RUNSTATE_STARTING", value: 143)
!237 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 144)
!238 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 145)
!239 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 146)
!240 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 147)
!241 = !DIEnumerator(name: "CPUHP_AP_HRTIMERS_DYING", value: 148)
!242 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 149)
!243 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 150)
!244 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 151)
!245 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 152)
!246 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 153)
!247 = !DIEnumerator(name: "CPUHP_AP_HYPERV_ONLINE", value: 154)
!248 = !DIEnumerator(name: "CPUHP_AP_KVM_ONLINE", value: 155)
!249 = !DIEnumerator(name: "CPUHP_AP_SCHED_WAIT_EMPTY", value: 156)
!250 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 157)
!251 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 158)
!252 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 159)
!253 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 160)
!254 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 161)
!255 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 162)
!256 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 163)
!257 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 164)
!258 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 165)
!259 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 166)
!260 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 167)
!261 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 168)
!262 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 169)
!263 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 170)
!264 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_IDXD_ONLINE", value: 171)
!265 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 172)
!266 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 173)
!267 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 174)
!268 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 175)
!269 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_CPA_ONLINE", value: 176)
!270 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 177)
!271 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 178)
!272 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 179)
!273 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PA_ONLINE", value: 180)
!274 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_SLLC_ONLINE", value: 181)
!275 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE", value: 182)
!276 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HNS3_PMU_ONLINE", value: 183)
!277 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 184)
!278 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 185)
!279 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 186)
!280 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 187)
!281 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 188)
!282 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_MARVELL_CN10K_DDR_ONLINE", value: 189)
!283 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 190)
!284 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 191)
!285 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 192)
!286 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 193)
!287 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 194)
!288 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 195)
!289 = !DIEnumerator(name: "CPUHP_AP_PERF_CSKY_ONLINE", value: 196)
!290 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 197)
!291 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 198)
!292 = !DIEnumerator(name: "CPUHP_AP_RANDOM_ONLINE", value: 199)
!293 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 200)
!294 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 201)
!295 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 202)
!296 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 232)
!297 = !DIEnumerator(name: "CPUHP_AP_MM_DEMOTION_ONLINE", value: 233)
!298 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 234)
!299 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 235)
!300 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 236)
!301 = !DIEnumerator(name: "CPUHP_ONLINE", value: 237)
!302 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cc_attr", file: !303, line: 22, baseType: !7, size: 32, elements: !304)
!303 = !DIFile(filename: "./include/linux/cc_platform.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec881fca7f8cde0abb6c64a9f159f14b")
!304 = !{!305, !306, !307, !308, !309, !310, !311}
!305 = !DIEnumerator(name: "CC_ATTR_MEM_ENCRYPT", value: 0)
!306 = !DIEnumerator(name: "CC_ATTR_HOST_MEM_ENCRYPT", value: 1)
!307 = !DIEnumerator(name: "CC_ATTR_GUEST_MEM_ENCRYPT", value: 2)
!308 = !DIEnumerator(name: "CC_ATTR_GUEST_STATE_ENCRYPT", value: 3)
!309 = !DIEnumerator(name: "CC_ATTR_GUEST_UNROLL_STRING_IO", value: 4)
!310 = !DIEnumerator(name: "CC_ATTR_GUEST_SEV_SNP", value: 5)
!311 = !DIEnumerator(name: "CC_ATTR_HOTPLUG_DISABLED", value: 6)
!312 = !{!313, !314, !330, !109, !347, !315, !348, !324, !349, !352, !353, !362, !7, !331, !364, !365, !4283, !4285, !4287}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvclock_vsyscall_time_info", file: !317, line: 91, size: 512, align: 512, elements: !318)
!317 = !DIFile(filename: "./arch/x86/include/asm/pvclock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0842e5b6b68f91de74c4dd8305b2bfa6")
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pvti", scope: !316, file: !317, line: 92, baseType: !320, size: 256)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvclock_vcpu_time_info", file: !321, line: 26, size: 256, elements: !322)
!321 = !DIFile(filename: "./arch/x86/include/asm/pvclock-abi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "63a96b2b2f7b6470cea45a7a079d9d9a")
!322 = !{!323, !328, !329, !333, !334, !335, !339, !343}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !320, file: !321, line: 27, baseType: !324, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !325, line: 21, baseType: !326)
!325 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !327, line: 27, baseType: !7)
!327 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pad0", scope: !320, file: !321, line: 28, baseType: !324, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_timestamp", scope: !320, file: !321, line: 29, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !325, line: 23, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !327, line: 31, baseType: !332)
!332 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "system_time", scope: !320, file: !321, line: 30, baseType: !330, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_to_system_mul", scope: !320, file: !321, line: 31, baseType: !324, size: 32, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_shift", scope: !320, file: !321, line: 32, baseType: !336, size: 8, offset: 224)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !325, line: 16, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !327, line: 20, baseType: !338)
!338 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !321, line: 33, baseType: !340, size: 8, offset: 232)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !325, line: 17, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !327, line: 21, baseType: !342)
!342 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !320, file: !321, line: 34, baseType: !344, size: 16, offset: 240)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 16, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 2)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !356, line: 19, size: 64, elements: !357)
!356 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !355, file: !356, line: 19, baseType: !359, size: 64)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 64, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 1)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !363, line: 154, baseType: !7)
!363 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !363, line: 159, baseType: !330)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !58, line: 74, size: 512, align: 128, elements: !367)
!367 = !{!368, !369, !4277, !4282}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !58, line: 75, baseType: !348, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !58, line: 83, baseType: !370, size: 320, offset: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !366, file: !58, line: 83, size: 320, elements: !371)
!371 = !{!372, !4183, !4197, !4201, !4276}
!372 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !58, line: 84, baseType: !373, size: 320)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !58, line: 84, size: 320, elements: !374)
!374 = !{!375, !391, !4177, !4182}
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !58, line: 90, baseType: !376, size: 128)
!376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !58, line: 90, size: 128, elements: !377)
!377 = !{!378, !384, !389, !390}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !376, file: !58, line: 91, baseType: !379, size: 128)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !363, line: 190, size: 128, elements: !380)
!380 = !{!381, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !379, file: !363, line: 191, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !379, file: !363, line: 191, baseType: !382, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, scope: !376, file: !58, line: 94, baseType: !385, size: 128)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !376, file: !58, line: 94, size: 128, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !385, file: !58, line: 96, baseType: !313, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !385, file: !58, line: 98, baseType: !7, size: 32, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !376, file: !58, line: 102, baseType: !379, size: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !376, file: !58, line: 103, baseType: !379, size: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !373, file: !58, line: 106, baseType: !392, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !34, line: 472, size: 1536, align: 64, elements: !394)
!394 = !{!395, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4171, !4172, !4173, !4174, !4175, !4176}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !393, file: !34, line: 473, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !34, line: 641, size: 4800, elements: !398)
!398 = !{!399, !402, !403, !412, !413, !420, !421, !424, !425, !3950, !3951, !3952, !3953, !3954, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3994, !3997, !3998, !3999, !4008, !4009, !4010, !4011}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !397, file: !34, line: 642, baseType: !400, size: 16)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !363, line: 24, baseType: !401)
!401 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !397, file: !34, line: 643, baseType: !401, size: 16, offset: 16)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !397, file: !34, line: 644, baseType: !404, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !405, line: 23, baseType: !406)
!405 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !405, line: 21, size: 32, elements: !407)
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !406, file: !405, line: 22, baseType: !409, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !363, line: 37, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !411, line: 49, baseType: !7)
!411 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !397, file: !34, line: 645, baseType: !379, size: 128, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !397, file: !34, line: 646, baseType: !414, size: 32, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !405, line: 28, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !405, line: 26, size: 32, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !415, file: !405, line: 27, baseType: !418, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !363, line: 38, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !411, line: 50, baseType: !7)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !397, file: !34, line: 647, baseType: !7, size: 32, offset: 224)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !397, file: !34, line: 650, baseType: !422, size: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !34, line: 607, flags: DIFlagFwdDecl)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !397, file: !34, line: 651, baseType: !422, size: 64, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !397, file: !34, line: 654, baseType: !426, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !34, line: 1966, size: 2048, align: 512, elements: !429)
!429 = !{!430, !3778, !3788, !3792, !3796, !3800, !3804, !3808, !3812, !3816, !3820, !3821, !3825, !3829, !3866, !3895, !3899, !3905, !3909, !3913, !3917, !3921, !3925, !3931, !3935}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !428, file: !34, line: 1967, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!434, !396, !434, !7}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !436, line: 82, size: 1536, elements: !437)
!436 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!437 = !{!438, !439, !449, !457, !458, !473, !474, !478, !527, !3761, !3762, !3763, !3764, !3770, !3771, !3772}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !435, file: !436, line: 84, baseType: !7, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !435, file: !436, line: 85, baseType: !440, size: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !441, line: 275, baseType: !442)
!441 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !441, line: 275, size: 32, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !442, file: !441, line: 275, baseType: !445, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !441, line: 69, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !441, line: 64, size: 32, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !446, file: !441, line: 65, baseType: !7, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !435, file: !436, line: 86, baseType: !450, size: 128, offset: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !451, line: 38, size: 128, elements: !452)
!451 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!452 = !{!453, !455}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !450, file: !451, line: 39, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !450, file: !451, line: 39, baseType: !456, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !435, file: !436, line: 87, baseType: !434, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !435, file: !436, line: 88, baseType: !459, size: 128, offset: 256)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !436, line: 49, size: 128, elements: !460)
!460 = !{!461, !470}
!461 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !436, line: 50, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !459, file: !436, line: 50, size: 64, elements: !463)
!463 = !{!464, !469}
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !436, line: 51, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !436, line: 51, size: 64, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !465, file: !436, line: 52, baseType: !324, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !465, file: !436, line: 52, baseType: !324, size: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !462, file: !436, line: 54, baseType: !330, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !459, file: !436, line: 56, baseType: !471, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !435, file: !436, line: 89, baseType: !396, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !435, file: !436, line: 91, baseType: !475, size: 256, offset: 448)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 256, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !435, file: !436, line: 94, baseType: !479, size: 64, offset: 704)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !480, line: 25, size: 64, elements: !481)
!480 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!481 = !{!482}
!482 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !480, line: 26, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !479, file: !480, line: 26, size: 64, elements: !484)
!484 = !{!485, !486}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !483, file: !480, line: 28, baseType: !331, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !480, line: 30, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !483, file: !480, line: 30, size: 64, elements: !488)
!488 = !{!489, !526}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !487, file: !480, line: 31, baseType: !490, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !491, line: 29, baseType: !492)
!491 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !491, line: 17, size: 32, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, scope: !492, file: !491, line: 18, baseType: !495, size: 32)
!495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !492, file: !491, line: 18, size: 32, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !495, file: !491, line: 19, baseType: !498, size: 32)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !499, line: 14, size: 32, elements: !500)
!499 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!500 = !{!501}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !498, file: !499, line: 15, baseType: !502, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !503, line: 44, baseType: !504)
!503 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !503, line: 14, size: 32, elements: !505)
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !503, line: 15, baseType: !507, size: 32)
!507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !503, line: 15, size: 32, elements: !508)
!508 = !{!509, !514, !519}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !507, file: !503, line: 16, baseType: !510, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !363, line: 174, baseType: !511)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 172, size: 32, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !511, file: !363, line: 173, baseType: !109, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !503, line: 24, baseType: !515, size: 16)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !507, file: !503, line: 24, size: 16, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !515, file: !503, line: 25, baseType: !340, size: 8)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !515, file: !503, line: 26, baseType: !340, size: 8, offset: 8)
!519 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !503, line: 28, baseType: !520, size: 32)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !507, file: !503, line: 28, size: 32, elements: !521)
!521 = !{!522, !525}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !520, file: !503, line: 29, baseType: !523, size: 16)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !325, line: 19, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !327, line: 24, baseType: !401)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !520, file: !503, line: 30, baseType: !523, size: 16, offset: 16)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !487, file: !480, line: 32, baseType: !109, size: 32, offset: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !435, file: !436, line: 95, baseType: !528, size: 64, offset: 768)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !436, line: 128, size: 1024, align: 512, elements: !531)
!531 = !{!532, !536, !537, !544, !553, !557, !561, !565, !566, !570, !575, !3751, !3755}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !530, file: !436, line: 129, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!109, !434, !7}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !530, file: !436, line: 130, baseType: !533, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !530, file: !436, line: 131, baseType: !538, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!109, !541, !543}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !530, file: !436, line: 132, baseType: !545, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!109, !541, !7, !548, !551}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !530, file: !436, line: 134, baseType: !554, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!109, !541}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !530, file: !436, line: 135, baseType: !558, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!109, !434}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !530, file: !436, line: 136, baseType: !562, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !434}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !530, file: !436, line: 137, baseType: !562, size: 64, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !530, file: !436, line: 138, baseType: !567, size: 64, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !434, !396}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !530, file: !436, line: 139, baseType: !571, size: 64, offset: 576)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!574, !434, !574, !109}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !530, file: !436, line: 140, baseType: !576, size: 64, offset: 640)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!579, !3750}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !581, line: 70, size: 256, elements: !582)
!581 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!582 = !{!583, !584, !3746, !3747}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !580, file: !581, line: 71, baseType: !434, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !580, file: !581, line: 72, baseType: !585, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !34, line: 1190, size: 10752, elements: !587)
!587 = !{!588, !589, !592, !593, !594, !598, !2137, !2271, !2311, !2396, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2413, !2417, !2418, !2421, !2424, !2427, !2430, !2431, !2432, !2473, !3679, !3680, !3681, !3682, !3683, !3684, !3687, !3689, !3696, !3697, !3698, !3699, !3700, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !586, file: !34, line: 1191, baseType: !379, size: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !586, file: !34, line: 1192, baseType: !590, size: 32, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !363, line: 21, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !363, line: 18, baseType: !324)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !586, file: !34, line: 1193, baseType: !342, size: 8, offset: 160)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !586, file: !34, line: 1194, baseType: !348, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !586, file: !34, line: 1195, baseType: !595, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !363, line: 52, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !411, line: 88, baseType: !597)
!597 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !586, file: !34, line: 1196, baseType: !599, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !34, line: 2366, size: 576, elements: !601)
!601 = !{!602, !603, !604, !611, !615, !619, !623, !2125, !2126, !2127, !2129, !2130, !2131, !2133, !2134, !2135, !2136}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !600, file: !34, line: 2367, baseType: !548, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !600, file: !34, line: 2368, baseType: !109, size: 32, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !600, file: !34, line: 2376, baseType: !605, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!109, !608}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !610, line: 32, flags: DIFlagFwdDecl)
!610 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!611 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !600, file: !34, line: 2377, baseType: !612, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !34, line: 75, flags: DIFlagFwdDecl)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !600, file: !34, line: 2378, baseType: !616, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!434, !599, !109, !548, !313}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !600, file: !34, line: 2380, baseType: !620, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !585}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !600, file: !34, line: 2381, baseType: !624, size: 64, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !27, line: 402, size: 9216, align: 512, elements: !626)
!626 = !{!627, !628, !629, !633, !1787, !1813, !1814, !1815, !1816, !1820, !1823, !1824, !1825, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1890, !1894, !1912, !1930, !1931, !1932, !1933, !1942, !1965, !1966, !1969, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1983, !1984, !2084, !2092, !2093, !2094, !2096, !2100, !2101, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2118, !2119, !2120, !2124}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !625, file: !27, line: 403, baseType: !26, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !625, file: !27, line: 406, baseType: !379, size: 128, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !625, file: !27, line: 409, baseType: !630, size: 448, offset: 192)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 448, elements: !631)
!631 = !{!632}
!632 = !DISubrange(count: 56)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !625, file: !27, line: 417, baseType: !634, size: 768, offset: 640)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !27, line: 45, size: 768, elements: !635)
!635 = !{!636, !1770, !1771, !1772, !1775}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !634, file: !27, line: 46, baseType: !637, size: 512)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !638, line: 64, size: 512, elements: !639)
!638 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!639 = !{!640, !641, !642, !644, !690, !1654, !1760, !1765, !1766, !1767, !1768, !1769}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !637, file: !638, line: 65, baseType: !548, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !637, file: !638, line: 66, baseType: !379, size: 128, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !637, file: !638, line: 67, baseType: !643, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !637, file: !638, line: 68, baseType: !645, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !638, line: 168, size: 768, elements: !647)
!647 = !{!648, !649, !650, !651}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !646, file: !638, line: 169, baseType: !379, size: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !646, file: !638, line: 170, baseType: !490, size: 32, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !646, file: !638, line: 171, baseType: !637, size: 512, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !646, file: !638, line: 172, baseType: !652, size: 64, offset: 704)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !638, line: 133, size: 192, elements: !655)
!655 = !{!656, !663, !668}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !654, file: !638, line: 134, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!109, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !654, file: !638, line: 135, baseType: !664, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!548, !661}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !654, file: !638, line: 136, baseType: !669, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!109, !661, !673}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !638, line: 125, size: 20736, elements: !675)
!675 = !{!676, !680, !684, !685, !689}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !674, file: !638, line: 126, baseType: !677, size: 192)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 192, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 3)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !674, file: !638, line: 127, baseType: !681, size: 4096, offset: 192)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 4096, elements: !682)
!682 = !{!683}
!683 = !DISubrange(count: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !674, file: !638, line: 128, baseType: !109, size: 32, offset: 4288)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !674, file: !638, line: 129, baseType: !686, size: 16384, offset: 4320)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 16384, elements: !687)
!687 = !{!688}
!688 = !DISubrange(count: 2048)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !674, file: !638, line: 130, baseType: !109, size: 32, offset: 20704)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !637, file: !638, line: 69, baseType: !691, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !638, line: 116, size: 384, elements: !694)
!694 = !{!695, !699, !725, !1613, !1644, !1648}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !693, file: !638, line: 117, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !643}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !693, file: !638, line: 118, baseType: !700, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !703, line: 254, size: 128, elements: !704)
!703 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!704 = !{!705, !718}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !702, file: !703, line: 255, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!709, !643, !713, !574}
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !363, line: 66, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !411, line: 73, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !411, line: 15, baseType: !712)
!712 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !703, line: 30, size: 128, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !714, file: !703, line: 31, baseType: !548, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !714, file: !703, line: 32, baseType: !400, size: 16, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !702, file: !703, line: 256, baseType: !719, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!709, !643, !713, !548, !722}
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !363, line: 61, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !411, line: 72, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !411, line: 16, baseType: !348)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !693, file: !638, line: 119, baseType: !726, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !703, line: 84, size: 320, elements: !730)
!730 = !{!731, !732, !736, !1609, !1611}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !729, file: !703, line: 85, baseType: !548, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !729, file: !703, line: 86, baseType: !733, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!400, !643, !713, !109}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !729, file: !703, line: 88, baseType: !737, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!400, !643, !740, !109}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !703, line: 175, size: 512, elements: !742)
!742 = !{!743, !744, !745, !746, !750, !1604, !1605}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !741, file: !703, line: 176, baseType: !714, size: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !741, file: !703, line: 177, baseType: !722, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !741, file: !703, line: 178, baseType: !313, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !741, file: !703, line: 179, baseType: !747, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!392}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !741, file: !703, line: 180, baseType: !751, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!709, !754, !643, !740, !574, !595, !722}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !34, line: 994, size: 1856, align: 64, elements: !756)
!756 = !{!757, !776, !777, !779, !788, !801, !802, !803, !875, !1087, !1096, !1102, !1103, !1594, !1595, !1596, !1597, !1599, !1600, !1603}
!757 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !34, line: 995, baseType: !758, size: 128)
!758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !34, line: 995, size: 128, elements: !759)
!759 = !{!760, !766, !775}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !758, file: !34, line: 996, baseType: !761, size: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !762, line: 60, size: 64, elements: !763)
!762 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!763 = !{!764}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !761, file: !762, line: 61, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !758, file: !34, line: 997, baseType: !767, size: 128, align: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !363, line: 232, size: 128, align: 64, elements: !768)
!768 = !{!769, !771}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !767, file: !363, line: 233, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !767, file: !363, line: 234, baseType: !772, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !770}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !758, file: !34, line: 998, baseType: !7, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !755, file: !34, line: 1005, baseType: !490, size: 32, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !755, file: !34, line: 1006, baseType: !778, size: 32, offset: 160)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !363, line: 156, baseType: !7)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !755, file: !34, line: 1007, baseType: !780, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !781, line: 13, baseType: !782)
!781 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !363, line: 181, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 179, size: 64, elements: !784)
!784 = !{!785}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !783, file: !363, line: 180, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !325, line: 22, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !327, line: 30, baseType: !597)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !755, file: !34, line: 1008, baseType: !789, size: 256, offset: 256)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !790, line: 66, size: 256, elements: !791)
!790 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!791 = !{!792, !793, !795, !800}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !789, file: !790, line: 67, baseType: !780, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !789, file: !790, line: 68, baseType: !794, size: 32, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !499, line: 23, baseType: !498)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !789, file: !790, line: 70, baseType: !796, size: 32, offset: 96)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !797, line: 15, size: 32, elements: !798)
!797 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!798 = !{!799}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !796, file: !797, line: 20, baseType: !510, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !789, file: !790, line: 72, baseType: !379, size: 128, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !755, file: !34, line: 1009, baseType: !595, size: 64, offset: 512)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !755, file: !34, line: 1010, baseType: !7, size: 32, offset: 576)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !755, file: !34, line: 1011, baseType: !804, size: 256, offset: 640)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !34, line: 948, size: 256, elements: !805)
!805 = !{!806, !827, !871, !872, !873, !874}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !804, file: !34, line: 949, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !808, line: 34, baseType: !809)
!808 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !808, line: 25, size: 64, elements: !810)
!810 = !{!811}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !809, file: !808, line: 26, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !813, line: 27, baseType: !814)
!813 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !813, line: 13, size: 64, elements: !815)
!815 = !{!816, !826}
!816 = !DIDerivedType(tag: DW_TAG_member, scope: !814, file: !813, line: 14, baseType: !817, size: 32)
!817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !814, file: !813, line: 14, size: 32, elements: !818)
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !817, file: !813, line: 15, baseType: !510, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !813, line: 16, baseType: !821, size: 32)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !817, file: !813, line: 16, size: 32, elements: !822)
!822 = !{!823, !824}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !821, file: !813, line: 18, baseType: !340, size: 8)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !821, file: !813, line: 19, baseType: !825, size: 24, offset: 8)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 24, elements: !678)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !814, file: !813, line: 26, baseType: !502, size: 32, offset: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !804, file: !34, line: 950, baseType: !828, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !50, line: 59, size: 768, elements: !830)
!830 = !{!831, !837, !838, !839, !852, !853, !860, !861}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !829, file: !50, line: 61, baseType: !832, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !833, line: 113, baseType: !834)
!833 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !833, line: 111, size: 32, elements: !835)
!835 = !{!836}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !834, file: !833, line: 112, baseType: !510, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !829, file: !50, line: 62, baseType: !7, size: 32, offset: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !829, file: !50, line: 63, baseType: !490, size: 32, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !829, file: !50, line: 65, baseType: !840, size: 256, offset: 128)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 256, elements: !850)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !363, line: 194, size: 64, elements: !842)
!842 = !{!843}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !841, file: !363, line: 195, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !363, line: 198, size: 128, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !845, file: !363, line: 199, baseType: !844, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !845, file: !363, line: 199, baseType: !849, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!850 = !{!851}
!851 = !DISubrange(count: 4)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !829, file: !50, line: 66, baseType: !841, size: 64, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !829, file: !50, line: 68, baseType: !854, size: 192, offset: 448)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !855, line: 41, baseType: !856)
!855 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !855, line: 37, size: 192, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !856, file: !855, line: 38, baseType: !490, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !856, file: !855, line: 39, baseType: !379, size: 128, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !829, file: !50, line: 69, baseType: !767, size: 128, align: 64, offset: 640)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !829, file: !50, line: 70, baseType: !862, offset: 768)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !863, elements: !869)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !50, line: 54, size: 128, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !863, file: !50, line: 55, baseType: !109, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !863, file: !50, line: 56, baseType: !867, size: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !50, line: 56, flags: DIFlagFwdDecl)
!869 = !{!870}
!870 = !DISubrange(count: -1)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !804, file: !34, line: 951, baseType: !49, size: 32, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !804, file: !34, line: 952, baseType: !404, size: 32, offset: 160)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !804, file: !34, line: 952, baseType: !404, size: 32, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !804, file: !34, line: 953, baseType: !109, size: 32, offset: 224)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !755, file: !34, line: 1012, baseType: !876, size: 64, offset: 896)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !879, line: 110, size: 1472, elements: !880)
!879 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!880 = !{!881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !897, !898, !899, !900, !901, !902, !1032, !1033, !1034, !1035, !1036, !1067, !1070, !1074, !1082}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !878, file: !879, line: 111, baseType: !780, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !878, file: !879, line: 112, baseType: !404, size: 32, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !878, file: !879, line: 113, baseType: !414, size: 32, offset: 96)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !878, file: !879, line: 114, baseType: !404, size: 32, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !878, file: !879, line: 115, baseType: !414, size: 32, offset: 160)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !878, file: !879, line: 116, baseType: !404, size: 32, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !878, file: !879, line: 117, baseType: !414, size: 32, offset: 224)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !878, file: !879, line: 118, baseType: !404, size: 32, offset: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !878, file: !879, line: 119, baseType: !414, size: 32, offset: 288)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !878, file: !879, line: 120, baseType: !7, size: 32, offset: 320)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !878, file: !879, line: 121, baseType: !892, size: 64, offset: 384)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !893, line: 24, baseType: !894)
!893 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !893, line: 24, size: 64, elements: !895)
!895 = !{!896}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !894, file: !893, line: 24, baseType: !330, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !878, file: !879, line: 122, baseType: !892, size: 64, offset: 448)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !878, file: !879, line: 123, baseType: !892, size: 64, offset: 512)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !878, file: !879, line: 124, baseType: !892, size: 64, offset: 576)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !878, file: !879, line: 125, baseType: !892, size: 64, offset: 640)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !878, file: !879, line: 127, baseType: !342, size: 8, offset: 704)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !878, file: !879, line: 129, baseType: !903, size: 64, offset: 768)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !905, line: 195, size: 1728, elements: !906)
!905 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!906 = !{!907, !908, !913, !925, !934, !937, !938, !945, !946, !947, !948, !951, !952, !953, !955, !956, !996, !1017}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !904, file: !905, line: 196, baseType: !832, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !904, file: !905, line: 197, baseType: !909, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !905, line: 28, baseType: !910)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !363, line: 104, baseType: !911)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !325, line: 20, baseType: !912)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !327, line: 26, baseType: !109)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !904, file: !905, line: 198, baseType: !914, size: 192, offset: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !904, file: !905, line: 198, size: 192, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !914, file: !905, line: 199, baseType: !379, size: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !914, file: !905, line: 200, baseType: !918, size: 192, align: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !919, line: 5, size: 192, align: 64, elements: !920)
!919 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!920 = !{!921, !922, !924}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !918, file: !919, line: 6, baseType: !348, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !918, file: !919, line: 7, baseType: !923, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !918, file: !919, line: 8, baseType: !923, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !904, file: !905, line: 205, baseType: !926, size: 320, offset: 256)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !927, line: 48, size: 320, elements: !928)
!927 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!928 = !{!929, !930, !931, !932, !933}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !926, file: !927, line: 49, baseType: !780, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !926, file: !927, line: 55, baseType: !780, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !926, file: !927, line: 57, baseType: !796, size: 32, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !926, file: !927, line: 59, baseType: !794, size: 32, offset: 160)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !926, file: !927, line: 60, baseType: !379, size: 128, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !904, file: !905, line: 206, baseType: !935, size: 64, offset: 576)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !905, line: 206, flags: DIFlagFwdDecl)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !904, file: !905, line: 207, baseType: !313, size: 64, offset: 640)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !904, file: !905, line: 208, baseType: !939, size: 64, offset: 704)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !904, file: !905, line: 208, size: 64, elements: !940)
!940 = !{!941, !944}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !939, file: !905, line: 209, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !943, line: 8, baseType: !787)
!943 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!944 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !939, file: !905, line: 210, baseType: !942, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !904, file: !905, line: 212, baseType: !942, size: 64, offset: 768)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !904, file: !905, line: 213, baseType: !404, size: 32, offset: 832)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !904, file: !905, line: 214, baseType: !414, size: 32, offset: 864)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !904, file: !905, line: 215, baseType: !949, size: 32, offset: 896)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !905, line: 31, baseType: !950)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !363, line: 110, baseType: !324)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !904, file: !905, line: 216, baseType: !401, size: 16, offset: 928)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !904, file: !905, line: 217, baseType: !401, size: 16, offset: 944)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !904, file: !905, line: 221, baseType: !954, size: 16, offset: 960)
!954 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !904, file: !905, line: 228, baseType: !348, size: 64, offset: 1024)
!956 = !DIDerivedType(tag: DW_TAG_member, scope: !904, file: !905, line: 245, baseType: !957, size: 320, offset: 1088)
!957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !904, file: !905, line: 245, size: 320, elements: !958)
!958 = !{!959, !988}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !957, file: !905, line: 246, baseType: !960, size: 320)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !905, line: 114, size: 320, elements: !961)
!961 = !{!962, !963, !975, !978, !987}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !960, file: !905, line: 116, baseType: !348, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !905, line: 117, baseType: !964, size: 64, offset: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !905, line: 117, size: 64, elements: !965)
!965 = !{!966, !974}
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !964, file: !905, line: 118, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !964, file: !905, line: 118, size: 64, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !967, file: !905, line: 120, baseType: !523, size: 16)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !967, file: !905, line: 121, baseType: !971, size: 48, offset: 16)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 48, elements: !972)
!972 = !{!973}
!973 = !DISubrange(count: 6)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !964, file: !905, line: 127, baseType: !348, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !960, file: !905, line: 129, baseType: !976, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !905, line: 102, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !960, file: !905, line: 130, baseType: !979, size: 64, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !905, line: 108, size: 192, elements: !981)
!981 = !{!982, !983, !984}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !980, file: !905, line: 109, baseType: !767, size: 128, align: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !980, file: !905, line: 110, baseType: !832, size: 32, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !980, file: !905, line: 111, baseType: !985, size: 8, offset: 160)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !363, line: 35, baseType: !986)
!986 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !960, file: !905, line: 131, baseType: !548, size: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !905, line: 247, baseType: !989, size: 320)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !957, file: !905, line: 247, size: 320, elements: !990)
!990 = !{!991, !992, !993, !994, !995}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !989, file: !905, line: 248, baseType: !348, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !989, file: !905, line: 249, baseType: !348, size: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !989, file: !905, line: 250, baseType: !976, size: 64, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !989, file: !905, line: 251, baseType: !979, size: 64, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !989, file: !905, line: 252, baseType: !574, size: 64, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !904, file: !905, line: 260, baseType: !997, size: 256, offset: 1408)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !904, file: !905, line: 260, size: 256, elements: !998)
!998 = !{!999, !1005}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !997, file: !905, line: 261, baseType: !1000, size: 256)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !905, line: 134, size: 256, elements: !1001)
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1000, file: !905, line: 135, baseType: !313, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1000, file: !905, line: 136, baseType: !1004, size: 256)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 256, elements: !850)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !905, line: 262, baseType: !1006, size: 256)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !905, line: 262, size: 256, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1006, file: !905, line: 264, baseType: !379, size: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1006, file: !905, line: 265, baseType: !1010, size: 128, offset: 128)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1011, line: 22, size: 128, elements: !1012)
!1011 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1012 = !{!1013, !1016}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1010, file: !1011, line: 23, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1011, line: 23, flags: DIFlagFwdDecl)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1010, file: !1011, line: 24, baseType: !348, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !904, file: !905, line: 280, baseType: !1018, size: 64, offset: 1664)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !905, line: 176, size: 192, elements: !1020)
!1020 = !{!1021, !1030, !1031}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1019, file: !905, line: 177, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !905, line: 171, baseType: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!109, !903, !1026, !1028, !903}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !977)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1000)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1019, file: !905, line: 178, baseType: !903, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1019, file: !905, line: 179, baseType: !976, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !878, file: !879, line: 130, baseType: !903, size: 64, offset: 832)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !878, file: !879, line: 131, baseType: !903, size: 64, offset: 896)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !878, file: !879, line: 132, baseType: !903, size: 64, offset: 960)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !878, file: !879, line: 135, baseType: !313, size: 64, offset: 1024)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !878, file: !879, line: 137, baseType: !1037, size: 64, offset: 1088)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1039, line: 14, size: 1088, elements: !1040)
!1039 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1040 = !{!1041, !1042, !1051, !1052, !1053, !1054, !1055, !1056}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1038, file: !1039, line: 15, baseType: !832, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1038, file: !1039, line: 17, baseType: !1043, size: 320, offset: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1044, line: 22, size: 320, elements: !1045)
!1044 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1045 = !{!1046, !1047, !1048, !1049}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1043, file: !1044, line: 23, baseType: !794, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1043, file: !1044, line: 24, baseType: !786, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1043, file: !1044, line: 26, baseType: !379, size: 128, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1043, file: !1044, line: 28, baseType: !1050, size: 64, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1038, file: !1039, line: 19, baseType: !348, size: 64, offset: 384)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1038, file: !1039, line: 20, baseType: !780, size: 64, offset: 448)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1038, file: !1039, line: 23, baseType: !845, size: 128, offset: 512)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1038, file: !1039, line: 24, baseType: !404, size: 32, offset: 640)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1038, file: !1039, line: 29, baseType: !780, size: 64, offset: 704)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1038, file: !1039, line: 36, baseType: !1057, size: 320, offset: 768)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1058, line: 15, size: 320, elements: !1059)
!1058 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1065, !1066}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1057, file: !1058, line: 16, baseType: !794, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1057, file: !1058, line: 18, baseType: !109, size: 32, offset: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1057, file: !1058, line: 19, baseType: !109, size: 32, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1057, file: !1058, line: 20, baseType: !109, size: 32, offset: 96)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1057, file: !1058, line: 21, baseType: !109, size: 32, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1057, file: !1058, line: 22, baseType: !348, size: 64, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1057, file: !1058, line: 23, baseType: !348, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !878, file: !879, line: 138, baseType: !1068, size: 64, offset: 1152)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !58, line: 901, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !878, file: !879, line: 139, baseType: !1071, size: 64, offset: 1216)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1073, line: 16, flags: DIFlagFwdDecl)
!1073 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !878, file: !879, line: 140, baseType: !1075, size: 64, offset: 1280)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !879, line: 25, size: 64, elements: !1077)
!1077 = !{!1078, !1079, !1080}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1076, file: !879, line: 26, baseType: !510, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1076, file: !879, line: 27, baseType: !109, size: 32, offset: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1076, file: !879, line: 28, baseType: !1081, offset: 64)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, elements: !869)
!1082 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !879, line: 142, baseType: !1083, size: 128, offset: 1344)
!1083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !879, line: 142, size: 128, elements: !1084)
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1083, file: !879, line: 143, baseType: !109, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1083, file: !879, line: 144, baseType: !767, size: 128, align: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !755, file: !34, line: 1013, baseType: !1088, size: 256, offset: 960)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !34, line: 970, size: 256, elements: !1089)
!1089 = !{!1090, !1091, !1092, !1093, !1094, !1095}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1088, file: !34, line: 971, baseType: !348, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1088, file: !34, line: 972, baseType: !7, size: 32, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1088, file: !34, line: 973, baseType: !7, size: 32, offset: 96)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1088, file: !34, line: 974, baseType: !7, size: 32, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1088, file: !34, line: 975, baseType: !7, size: 32, offset: 160)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1088, file: !34, line: 976, baseType: !595, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !755, file: !34, line: 1014, baseType: !1097, size: 128, offset: 1216)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1098, line: 8, size: 128, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1099 = !{!1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1097, file: !1098, line: 9, baseType: !579, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1097, file: !1098, line: 10, baseType: !434, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !755, file: !34, line: 1015, baseType: !396, size: 64, offset: 1344)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !755, file: !34, line: 1016, baseType: !1104, size: 64, offset: 1408)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1106)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !34, line: 1914, size: 2112, elements: !1107)
!1107 = !{!1108, !1109, !1113, !1118, !1122, !1151, !1152, !1158, !1171, !1179, !1183, !1184, !1513, !1514, !1518, !1523, !1524, !1528, !1532, !1538, !1539, !1543, !1544, !1551, !1555, !1559, !1565, !1569, !1575, !1579, !1583, !1584, !1590}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1106, file: !34, line: 1915, baseType: !624, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1106, file: !34, line: 1916, baseType: !1110, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!595, !754, !595, !109}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1106, file: !34, line: 1917, baseType: !1114, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!709, !754, !574, !722, !1117}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1106, file: !34, line: 1918, baseType: !1119, size: 64, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!709, !754, !548, !722, !1117}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1106, file: !34, line: 1919, baseType: !1123, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!709, !1126, !1148}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !34, line: 373, size: 384, elements: !1128)
!1128 = !{!1129, !1130, !1131, !1135, !1136, !1137, !1138}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1127, file: !34, line: 374, baseType: !754, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1127, file: !34, line: 375, baseType: !595, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1127, file: !34, line: 376, baseType: !1132, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !1126, !712}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1127, file: !34, line: 377, baseType: !313, size: 64, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1127, file: !34, line: 378, baseType: !109, size: 32, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1127, file: !34, line: 379, baseType: !523, size: 16, offset: 288)
!1138 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !34, line: 380, baseType: !1139, size: 64, offset: 320)
!1139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !34, line: 380, size: 64, elements: !1140)
!1140 = !{!1141, !1144}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1139, file: !34, line: 386, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !34, line: 386, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1139, file: !34, line: 395, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!709, !313}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1150, line: 17, flags: DIFlagFwdDecl)
!1150 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1106, file: !34, line: 1920, baseType: !1123, size: 64, offset: 320)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1106, file: !34, line: 1921, baseType: !1153, size: 64, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!109, !1126, !1156, !7}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !34, line: 53, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1106, file: !34, line: 1923, baseType: !1159, size: 64, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!109, !754, !1162}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !34, line: 1858, size: 128, elements: !1164)
!1164 = !{!1165, !1170}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1163, file: !34, line: 1859, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !34, line: 1855, baseType: !1167)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!985, !1162, !548, !109, !595, !330, !7}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1163, file: !34, line: 1860, baseType: !595, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1106, file: !34, line: 1924, baseType: !1172, size: 64, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!1175, !754, !1177}
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1176, line: 59, baseType: !7)
!1176 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !610, line: 31, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1106, file: !34, line: 1925, baseType: !1180, size: 64, offset: 576)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!712, !754, !7, !348}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1106, file: !34, line: 1926, baseType: !1180, size: 64, offset: 640)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1106, file: !34, line: 1927, baseType: !1185, size: 64, offset: 704)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!109, !754, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !58, line: 625, size: 1344, elements: !1190)
!1190 = !{!1191, !1200, !1369, !1375, !1382, !1383, !1388, !1389, !1394, !1395, !1398, !1506, !1507, !1508, !1509, !1510, !1511}
!1191 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !58, line: 628, baseType: !1192, size: 128)
!1192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1189, file: !58, line: 628, size: 128, elements: !1193)
!1193 = !{!1194, !1199}
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !58, line: 629, baseType: !1195, size: 128)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1192, file: !58, line: 629, size: 128, elements: !1196)
!1196 = !{!1197, !1198}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1195, file: !58, line: 631, baseType: !348, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1195, file: !58, line: 632, baseType: !348, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1192, file: !58, line: 635, baseType: !767, size: 128, align: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1189, file: !58, line: 639, baseType: !1201, size: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !58, line: 733, size: 10240, elements: !1203)
!1203 = !{!1204, !1367}
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !58, line: 734, baseType: !1205, size: 10240)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !58, line: 734, size: 10240, elements: !1206)
!1206 = !{!1207, !1211, !1225, !1229, !1230, !1231, !1232, !1233, !1234, !1243, !1244, !1245, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1284, !1286, !1289, !1336, !1337, !1338, !1341, !1342, !1343, !1346, !1347, !1348, !1354, !1355}
!1207 = !DIDerivedType(tag: DW_TAG_member, scope: !1205, file: !58, line: 739, baseType: !1208, size: 512, align: 512)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1205, file: !58, line: 739, size: 512, align: 512, elements: !1209)
!1209 = !{!1210}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1208, file: !58, line: 747, baseType: !510, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1205, file: !58, line: 750, baseType: !1212, size: 128, offset: 512)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1213, line: 218, size: 128, elements: !1214)
!1213 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1214 = !{!1215, !1223, !1224}
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !1213, line: 219, baseType: !1216, size: 32)
!1216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !1213, line: 219, size: 32, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1216, file: !1213, line: 220, baseType: !490, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1216, file: !1213, line: 221, baseType: !1220)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1213, line: 197, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1213, line: 197, elements: !1222)
!1222 = !{}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1212, file: !1213, line: 223, baseType: !7, size: 32, offset: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1212, file: !1213, line: 224, baseType: !313, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1205, file: !58, line: 752, baseType: !1226, size: 64, offset: 640)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!348, !754, !348, !348, !348, !348}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1205, file: !58, line: 756, baseType: !348, size: 64, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1205, file: !58, line: 757, baseType: !348, size: 64, offset: 768)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1205, file: !58, line: 760, baseType: !348, size: 64, offset: 832)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1205, file: !58, line: 761, baseType: !348, size: 64, offset: 896)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1205, file: !58, line: 763, baseType: !348, size: 64, offset: 960)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1205, file: !58, line: 764, baseType: !1235, size: 64, offset: 1024)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1237, line: 299, baseType: !1238)
!1237 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1237, line: 299, size: 64, elements: !1239)
!1239 = !{!1240}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1238, file: !1237, line: 299, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1242, line: 18, baseType: !348)
!1242 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1205, file: !58, line: 773, baseType: !510, size: 32, offset: 1088)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1205, file: !58, line: 785, baseType: !510, size: 32, offset: 1120)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1205, file: !58, line: 795, baseType: !1246, size: 64, offset: 1152)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !58, line: 726, size: 128, elements: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1247, file: !58, line: 727, baseType: !330, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1247, file: !58, line: 728, baseType: !109, size: 32, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1205, file: !58, line: 801, baseType: !348, size: 64, offset: 1216)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1205, file: !58, line: 804, baseType: !780, size: 64, offset: 1280)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1205, file: !58, line: 806, baseType: !109, size: 32, offset: 1344)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1205, file: !58, line: 808, baseType: !490, size: 32, offset: 1376)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1205, file: !58, line: 823, baseType: !926, size: 320, offset: 1408)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1205, file: !58, line: 825, baseType: !379, size: 128, offset: 1728)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1205, file: !58, line: 845, baseType: !109, size: 32, offset: 1856)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1205, file: !58, line: 849, baseType: !348, size: 64, offset: 1920)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1205, file: !58, line: 850, baseType: !348, size: 64, offset: 1984)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1205, file: !58, line: 852, baseType: !348, size: 64, offset: 2048)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1205, file: !58, line: 853, baseType: !348, size: 64, offset: 2112)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1205, file: !58, line: 854, baseType: !782, size: 64, offset: 2176)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1205, file: !58, line: 855, baseType: !348, size: 64, offset: 2240)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1205, file: !58, line: 856, baseType: !348, size: 64, offset: 2304)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1205, file: !58, line: 857, baseType: !348, size: 64, offset: 2368)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1205, file: !58, line: 858, baseType: !348, size: 64, offset: 2432)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1205, file: !58, line: 865, baseType: !445, size: 32, offset: 2496)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1205, file: !58, line: 867, baseType: !490, size: 32, offset: 2528)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1205, file: !58, line: 869, baseType: !348, size: 64, offset: 2560)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1205, file: !58, line: 869, baseType: !348, size: 64, offset: 2624)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1205, file: !58, line: 869, baseType: !348, size: 64, offset: 2688)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1205, file: !58, line: 869, baseType: !348, size: 64, offset: 2752)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1205, file: !58, line: 870, baseType: !348, size: 64, offset: 2816)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1205, file: !58, line: 870, baseType: !348, size: 64, offset: 2880)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1205, file: !58, line: 870, baseType: !348, size: 64, offset: 2944)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1205, file: !58, line: 871, baseType: !348, size: 64, offset: 3008)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1205, file: !58, line: 871, baseType: !348, size: 64, offset: 3072)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1205, file: !58, line: 871, baseType: !348, size: 64, offset: 3136)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1205, file: !58, line: 871, baseType: !348, size: 64, offset: 3200)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1205, file: !58, line: 873, baseType: !1281, size: 3328, offset: 3264)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 3328, elements: !1282)
!1282 = !{!1283}
!1283 = !DISubrange(count: 52)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1205, file: !58, line: 875, baseType: !1285, size: 1280, offset: 6592)
!1285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1043, size: 1280, elements: !850)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1205, file: !58, line: 877, baseType: !1287, size: 64, offset: 7872)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !58, line: 877, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1205, file: !58, line: 880, baseType: !1290, size: 1088, offset: 7936)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1291, line: 72, baseType: !1292)
!1291 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1291, line: 23, size: 1088, elements: !1293)
!1293 = !{!1294, !1295, !1296, !1297, !1298, !1301, !1302, !1303, !1304, !1331, !1332, !1333}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1292, file: !1291, line: 28, baseType: !330, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1292, file: !1291, line: 38, baseType: !782, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1292, file: !1291, line: 40, baseType: !348, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1292, file: !1291, line: 43, baseType: !926, size: 320, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1292, file: !1291, line: 44, baseType: !1299, size: 64, offset: 512)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1291, line: 44, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1292, file: !1291, line: 48, baseType: !348, size: 64, offset: 576)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1292, file: !1291, line: 59, baseType: !789, size: 256, offset: 640)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1292, file: !1291, line: 60, baseType: !313, size: 64, offset: 896)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1292, file: !1291, line: 61, baseType: !1305, size: 64, offset: 960)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1308, line: 13, size: 1216, elements: !1309)
!1308 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1309 = !{!1310, !1311, !1312, !1313, !1314, !1315, !1316, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1307, file: !1308, line: 14, baseType: !313, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1307, file: !1308, line: 15, baseType: !348, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1307, file: !1308, line: 17, baseType: !348, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1307, file: !1308, line: 17, baseType: !348, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1307, file: !1308, line: 18, baseType: !348, size: 64, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1307, file: !1308, line: 18, baseType: !348, size: 64, offset: 320)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1307, file: !1308, line: 19, baseType: !1317, size: 64, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1307, file: !1308, line: 21, baseType: !712, size: 64, offset: 448)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1307, file: !1308, line: 23, baseType: !712, size: 64, offset: 512)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1307, file: !1308, line: 24, baseType: !712, size: 64, offset: 576)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1307, file: !1308, line: 25, baseType: !712, size: 64, offset: 640)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1307, file: !1308, line: 26, baseType: !712, size: 64, offset: 704)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1307, file: !1308, line: 27, baseType: !712, size: 64, offset: 768)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1307, file: !1308, line: 28, baseType: !712, size: 64, offset: 832)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1307, file: !1308, line: 29, baseType: !712, size: 64, offset: 896)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1307, file: !1308, line: 30, baseType: !712, size: 64, offset: 960)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1307, file: !1308, line: 31, baseType: !712, size: 64, offset: 1024)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1307, file: !1308, line: 32, baseType: !712, size: 64, offset: 1088)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1307, file: !1308, line: 33, baseType: !712, size: 64, offset: 1152)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1292, file: !1291, line: 63, baseType: !510, size: 32, offset: 1024)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1292, file: !1291, line: 69, baseType: !523, size: 16, offset: 1056)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1292, file: !1291, line: 70, baseType: !1334, size: 16, offset: 1072)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !325, line: 18, baseType: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !327, line: 23, baseType: !954)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1205, file: !58, line: 882, baseType: !348, size: 64, offset: 9024)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1205, file: !58, line: 885, baseType: !490, size: 32, offset: 9088)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1205, file: !58, line: 886, baseType: !1339, size: 64, offset: 9152)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !58, line: 732, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1205, file: !58, line: 901, baseType: !1068, size: 64, offset: 9216)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1205, file: !58, line: 904, baseType: !754, size: 64, offset: 9280)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1205, file: !58, line: 906, baseType: !1344, size: 64, offset: 9344)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !58, line: 906, flags: DIFlagFwdDecl)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1205, file: !58, line: 930, baseType: !510, size: 32, offset: 9408)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1205, file: !58, line: 933, baseType: !510, size: 32, offset: 9440)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1205, file: !58, line: 935, baseType: !1349, size: 64, offset: 9472)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !88, line: 103, size: 64, elements: !1350)
!1350 = !{!1351}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1349, file: !88, line: 104, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !88, line: 101, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1205, file: !58, line: 940, baseType: !780, size: 64, offset: 9536)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1205, file: !58, line: 942, baseType: !1356, size: 256, offset: 9600)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1357, line: 98, size: 256, elements: !1358)
!1357 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1358 = !{!1359, !1360, !1361}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1356, file: !1357, line: 99, baseType: !780, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1356, file: !1357, line: 100, baseType: !379, size: 128, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1356, file: !1357, line: 101, baseType: !1362, size: 64, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1357, line: 21, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1202, file: !58, line: 986, baseType: !1368, offset: 10240)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, elements: !869)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1189, file: !58, line: 640, baseType: !1370, size: 64, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1237, line: 297, baseType: !1371)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1237, line: 297, size: 64, elements: !1372)
!1372 = !{!1373}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1371, file: !1237, line: 297, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1242, line: 19, baseType: !348)
!1375 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !58, line: 646, baseType: !1376, size: 64, offset: 256)
!1376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1189, file: !58, line: 646, size: 64, elements: !1377)
!1377 = !{!1378, !1381}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1376, file: !58, line: 647, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1380)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !58, line: 542, baseType: !348)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1376, file: !58, line: 648, baseType: !1380, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1189, file: !58, line: 666, baseType: !109, size: 32, offset: 320)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1189, file: !58, line: 667, baseType: !1384, size: 64, offset: 384)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !58, line: 579, size: 320, elements: !1386)
!1386 = !{!1387}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1385, file: !58, line: 580, baseType: !926, size: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1189, file: !58, line: 670, baseType: !985, size: 8, offset: 448)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1189, file: !58, line: 681, baseType: !1390, size: 256, offset: 512)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1189, file: !58, line: 678, size: 256, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1390, file: !58, line: 679, baseType: !918, size: 192, align: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1390, file: !58, line: 680, baseType: !348, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1189, file: !58, line: 689, baseType: !379, size: 128, offset: 768)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1189, file: !58, line: 691, baseType: !1396, size: 64, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !58, line: 691, flags: DIFlagFwdDecl)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1189, file: !58, line: 694, baseType: !1399, size: 64, offset: 960)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1401)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1402, line: 563, size: 1024, elements: !1403)
!1402 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1403 = !{!1404, !1408, !1409, !1413, !1417, !1421, !1470, !1474, !1478, !1482, !1483, !1484, !1488, !1492, !1498, !1502}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1401, file: !1402, line: 564, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !1188}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1401, file: !1402, line: 569, baseType: !1405, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1401, file: !1402, line: 571, baseType: !1410, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!109, !1188, !348}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1401, file: !1402, line: 572, baseType: !1414, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!109, !1188}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1401, file: !1402, line: 578, baseType: !1418, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!109, !1188, !348, !348, !348}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1401, file: !1402, line: 580, baseType: !1422, size: 64, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !58, line: 1184, baseType: !7)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1402, line: 512, size: 896, elements: !1428)
!1428 = !{!1429, !1437, !1438, !1445, !1452, !1462, !1463, !1464, !1466, !1468}
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !1402, line: 513, baseType: !1430, size: 320)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1427, file: !1402, line: 513, size: 320, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435, !1436}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1430, file: !1402, line: 514, baseType: !1188, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1430, file: !1402, line: 515, baseType: !362, size: 32, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1430, file: !1402, line: 516, baseType: !348, size: 64, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1430, file: !1402, line: 517, baseType: !348, size: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1430, file: !1402, line: 518, baseType: !348, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1427, file: !1402, line: 520, baseType: !57, size: 32, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1427, file: !1402, line: 522, baseType: !1439, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1242, line: 22, baseType: !1441)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1242, line: 22, size: 64, elements: !1442)
!1442 = !{!1443}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1441, file: !1242, line: 22, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1242, line: 15, baseType: !348)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1427, file: !1402, line: 524, baseType: !1446, size: 64, offset: 448)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1237, line: 372, baseType: !1448)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1237, line: 372, size: 64, elements: !1449)
!1449 = !{!1450}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1448, file: !1237, line: 372, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1242, line: 16, baseType: !348)
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !1402, line: 527, baseType: !1453, size: 64, offset: 512)
!1453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1427, file: !1402, line: 527, size: 64, elements: !1454)
!1454 = !{!1455, !1461}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1453, file: !1402, line: 528, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1242, line: 21, baseType: !1457)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1242, line: 21, size: 64, elements: !1458)
!1458 = !{!1459}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1457, file: !1242, line: 21, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1242, line: 14, baseType: !348)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1453, file: !1402, line: 529, baseType: !1440, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1427, file: !1402, line: 534, baseType: !365, size: 64, offset: 576)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1427, file: !1402, line: 535, baseType: !365, size: 64, offset: 640)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1427, file: !1402, line: 541, baseType: !1465, size: 64, offset: 704)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1427, file: !1402, line: 545, baseType: !1467, size: 64, offset: 768)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1427, file: !1402, line: 549, baseType: !1469, size: 64, offset: 832)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1237, line: 520, baseType: !365)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1401, file: !1402, line: 581, baseType: !1471, size: 64, offset: 384)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!1425, !1426, !7}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1401, file: !1402, line: 582, baseType: !1475, size: 64, offset: 448)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!1425, !1426, !348, !348}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1401, file: !1402, line: 584, baseType: !1479, size: 64, offset: 512)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!348, !1188}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1401, file: !1402, line: 588, baseType: !1422, size: 64, offset: 576)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1401, file: !1402, line: 591, baseType: !1422, size: 64, offset: 640)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1401, file: !1402, line: 597, baseType: !1485, size: 64, offset: 704)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!109, !1188, !348, !313, !109, !109}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1401, file: !1402, line: 603, baseType: !1489, size: 64, offset: 768)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!548, !1188}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1401, file: !1402, line: 613, baseType: !1493, size: 64, offset: 832)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!109, !1188, !1496}
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !58, line: 717, flags: DIFlagFwdDecl)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1401, file: !1402, line: 625, baseType: !1499, size: 64, offset: 896)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!1496, !1188, !348}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1401, file: !1402, line: 633, baseType: !1503, size: 64, offset: 960)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!365, !1188, !348}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1189, file: !58, line: 697, baseType: !348, size: 64, offset: 1024)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1189, file: !58, line: 699, baseType: !754, size: 64, offset: 1088)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1189, file: !58, line: 700, baseType: !313, size: 64, offset: 1152)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1189, file: !58, line: 711, baseType: !780, size: 64, offset: 1216)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1189, file: !58, line: 717, baseType: !1496, size: 64, offset: 1280)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1189, file: !58, line: 722, baseType: !1512, offset: 1344)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !58, line: 570, elements: !1222)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1106, file: !34, line: 1928, baseType: !348, size: 64, offset: 768)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1106, file: !34, line: 1929, baseType: !1515, size: 64, offset: 832)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!109, !396, !754}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1106, file: !34, line: 1930, baseType: !1519, size: 64, offset: 896)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!109, !754, !1522}
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !34, line: 1061, baseType: !313)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1106, file: !34, line: 1931, baseType: !1515, size: 64, offset: 960)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1106, file: !34, line: 1932, baseType: !1525, size: 64, offset: 1024)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!109, !754, !595, !595, !109}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1106, file: !34, line: 1933, baseType: !1529, size: 64, offset: 1088)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!109, !109, !754, !109}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1106, file: !34, line: 1934, baseType: !1533, size: 64, offset: 1152)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!109, !754, !109, !1536}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !34, line: 1063, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1106, file: !34, line: 1935, baseType: !1226, size: 64, offset: 1216)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1106, file: !34, line: 1936, baseType: !1540, size: 64, offset: 1280)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!109, !109}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1106, file: !34, line: 1937, baseType: !1533, size: 64, offset: 1344)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1106, file: !34, line: 1938, baseType: !1545, size: 64, offset: 1408)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!709, !1548, !754, !1117, !722, !7}
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1550, line: 59, flags: DIFlagFwdDecl)
!1550 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1106, file: !34, line: 1939, baseType: !1552, size: 64, offset: 1472)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!709, !754, !1117, !1548, !722, !7}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1106, file: !34, line: 1940, baseType: !1556, size: 64, offset: 1536)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !754}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1106, file: !34, line: 1941, baseType: !1560, size: 64, offset: 1600)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!109, !754, !109, !1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1106, file: !34, line: 1942, baseType: !1566, size: 64, offset: 1664)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!712, !754, !109, !595, !595}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1106, file: !34, line: 1944, baseType: !1570, size: 64, offset: 1728)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{null, !1573, !754}
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1550, line: 66, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1106, file: !34, line: 1948, baseType: !1576, size: 64, offset: 1792)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!709, !754, !595, !754, !595, !722, !7}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1106, file: !34, line: 1950, baseType: !1580, size: 64, offset: 1856)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!595, !754, !595, !754, !595, !595, !7}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1106, file: !34, line: 1953, baseType: !1525, size: 64, offset: 1920)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1106, file: !34, line: 1954, baseType: !1585, size: 64, offset: 1984)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!109, !1588, !7}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !34, line: 1911, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1106, file: !34, line: 1955, baseType: !1591, size: 64, offset: 2048)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!109, !1588, !1156, !7}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !755, file: !34, line: 1018, baseType: !330, size: 64, offset: 1472)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !755, file: !34, line: 1020, baseType: !313, size: 64, offset: 1536)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !755, file: !34, line: 1023, baseType: !313, size: 64, offset: 1600)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !755, file: !34, line: 1027, baseType: !1598, size: 64, offset: 1664)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !755, file: !34, line: 1029, baseType: !392, size: 64, offset: 1728)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !755, file: !34, line: 1030, baseType: !1601, size: 32, offset: 1792)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1602, line: 8, baseType: !324)
!1602 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !755, file: !34, line: 1031, baseType: !1601, size: 32, offset: 1824)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !741, file: !703, line: 182, baseType: !751, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !741, file: !703, line: 184, baseType: !1606, size: 64, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!109, !754, !643, !740, !1188}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !729, file: !703, line: 90, baseType: !1610, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !729, file: !703, line: 91, baseType: !1612, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !693, file: !638, line: 120, baseType: !1614, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1617, !661}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1619)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !102, line: 39, size: 384, elements: !1620)
!1620 = !{!1621, !1622, !1626, !1630, !1636, !1640}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1619, file: !102, line: 40, baseType: !101, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1619, file: !102, line: 41, baseType: !1623, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!985}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1619, file: !102, line: 42, baseType: !1627, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!313}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1619, file: !102, line: 43, baseType: !1631, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!1317, !1634}
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !102, line: 19, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1619, file: !102, line: 44, baseType: !1637, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!1317}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1619, file: !102, line: 45, baseType: !1641, size: 64, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !313}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !693, file: !638, line: 121, baseType: !1645, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!1317, !661}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !693, file: !638, line: 122, baseType: !1649, size: 64, offset: 320)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !661, !1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !637, file: !638, line: 70, baseType: !1655, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !610, line: 190, size: 1152, elements: !1657)
!1657 = !{!1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1752, !1753, !1754, !1755, !1756, !1759}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1656, file: !610, line: 191, baseType: !510, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1656, file: !610, line: 192, baseType: !510, size: 32, offset: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1656, file: !610, line: 202, baseType: !1655, size: 64, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1656, file: !610, line: 203, baseType: !548, size: 64, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1656, file: !610, line: 205, baseType: !918, size: 192, align: 64, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1656, file: !610, line: 207, baseType: !1317, size: 64, offset: 384)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1656, file: !610, line: 208, baseType: !7, size: 32, offset: 448)
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1656, file: !610, line: 209, baseType: !1666, size: 256, offset: 512)
!1666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1656, file: !610, line: 209, size: 256, elements: !1667)
!1667 = !{!1668, !1680, !1684}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1666, file: !610, line: 210, baseType: !1669, size: 256)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !610, line: 153, size: 256, elements: !1670)
!1670 = !{!1671, !1672, !1676, !1679}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1669, file: !610, line: 154, baseType: !348, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1669, file: !610, line: 156, baseType: !1673, size: 64, offset: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !919, line: 12, size: 64, elements: !1674)
!1674 = !{!1675}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1673, file: !919, line: 13, baseType: !923, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1669, file: !610, line: 162, baseType: !1677, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !610, line: 162, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1669, file: !610, line: 167, baseType: !348, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1666, file: !610, line: 211, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !610, line: 170, size: 64, elements: !1682)
!1682 = !{!1683}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1681, file: !610, line: 171, baseType: !1655, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1666, file: !610, line: 212, baseType: !1685, size: 256)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !610, line: 174, size: 256, elements: !1686)
!1686 = !{!1687, !1747, !1750, !1751}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1685, file: !610, line: 175, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1690)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !610, line: 271, size: 768, elements: !1691)
!1691 = !{!1692, !1712, !1716, !1720, !1724, !1728, !1732, !1736, !1737, !1738, !1739, !1743}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1690, file: !610, line: 276, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!109, !1696}
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !610, line: 251, size: 1216, elements: !1698)
!1698 = !{!1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1697, file: !610, line: 253, baseType: !1655, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1697, file: !610, line: 254, baseType: !754, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1697, file: !610, line: 255, baseType: !1573, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1697, file: !610, line: 256, baseType: !313, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1697, file: !610, line: 259, baseType: !789, size: 256, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1697, file: !610, line: 260, baseType: !789, size: 256, offset: 512)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1697, file: !610, line: 261, baseType: !109, size: 32, offset: 768)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1697, file: !610, line: 262, baseType: !379, size: 128, offset: 832)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1697, file: !610, line: 263, baseType: !574, size: 64, offset: 960)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1697, file: !610, line: 265, baseType: !722, size: 64, offset: 1024)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1697, file: !610, line: 266, baseType: !985, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1697, file: !610, line: 267, baseType: !985, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1697, file: !610, line: 268, baseType: !1399, size: 64, offset: 1152)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1690, file: !610, line: 277, baseType: !1713, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{null, !1696}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1690, file: !610, line: 290, baseType: !1717, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!109, !1573, !313}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1690, file: !610, line: 292, baseType: !1721, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!313, !1573, !1117}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1690, file: !610, line: 293, baseType: !1725, size: 64, offset: 256)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!313, !1573, !313, !1117}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1690, file: !610, line: 294, baseType: !1729, size: 64, offset: 320)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{null, !1573, !313}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1690, file: !610, line: 296, baseType: !1733, size: 64, offset: 384)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!709, !1696, !574, !722, !595}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1690, file: !610, line: 306, baseType: !722, size: 64, offset: 448)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1690, file: !610, line: 313, baseType: !985, size: 8, offset: 512)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1690, file: !610, line: 314, baseType: !1733, size: 64, offset: 576)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1690, file: !610, line: 317, baseType: !1740, size: 64, offset: 640)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!1175, !1696, !1177}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1690, file: !610, line: 320, baseType: !1744, size: 64, offset: 704)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!109, !1696, !1188}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1685, file: !610, line: 176, baseType: !1748, size: 64, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !610, line: 35, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1685, file: !610, line: 177, baseType: !595, size: 64, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1685, file: !610, line: 178, baseType: !1655, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1656, file: !610, line: 215, baseType: !313, size: 64, offset: 768)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1656, file: !610, line: 221, baseType: !330, size: 64, offset: 832)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1656, file: !610, line: 223, baseType: !401, size: 16, offset: 896)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1656, file: !610, line: 224, baseType: !400, size: 16, offset: 912)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1656, file: !610, line: 225, baseType: !1757, size: 64, offset: 960)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !610, line: 36, flags: DIFlagFwdDecl)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1656, file: !610, line: 227, baseType: !767, size: 128, align: 64, offset: 1024)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !637, file: !638, line: 71, baseType: !1761, size: 32, offset: 448)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1762, line: 19, size: 32, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1763 = !{!1764}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1761, file: !1762, line: 20, baseType: !832, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !637, file: !638, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !637, file: !638, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !637, file: !638, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !637, file: !638, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !637, file: !638, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !634, file: !27, line: 47, baseType: !624, size: 64, offset: 512)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !634, file: !27, line: 48, baseType: !643, size: 64, offset: 576)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !634, file: !27, line: 49, baseType: !1773, size: 64, offset: 640)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !27, line: 49, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !634, file: !27, line: 50, baseType: !1776, size: 64, offset: 704)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1778, line: 26, size: 256, elements: !1779)
!1778 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1779 = !{!1780, !1781}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1777, file: !1778, line: 27, baseType: !7, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1777, file: !1778, line: 28, baseType: !1782, size: 192, offset: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1783, line: 43, size: 192, elements: !1784)
!1783 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1782, file: !1783, line: 44, baseType: !794, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1782, file: !1783, line: 45, baseType: !379, size: 128, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !625, file: !27, line: 418, baseType: !1788, size: 64, offset: 1408)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !27, line: 53, size: 448, elements: !1790)
!1790 = !{!1791, !1792, !1797, !1801, !1805, !1809}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1789, file: !27, line: 54, baseType: !714, size: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1789, file: !27, line: 55, baseType: !1793, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!709, !1788, !1796, !574}
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1789, file: !27, line: 57, baseType: !1798, size: 64, offset: 192)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!709, !1788, !1796, !548, !722}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1789, file: !27, line: 59, baseType: !1802, size: 64, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{null, !624, !548}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1789, file: !27, line: 60, baseType: !1806, size: 64, offset: 320)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!109, !624}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1789, file: !27, line: 61, baseType: !1810, size: 64, offset: 384)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{null, !624}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !625, file: !27, line: 419, baseType: !548, size: 64, offset: 1472)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !625, file: !27, line: 420, baseType: !548, size: 64, offset: 1536)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !625, file: !27, line: 421, baseType: !643, size: 64, offset: 1600)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !625, file: !27, line: 424, baseType: !1817, size: 64, offset: 1664)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1819)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !27, line: 424, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !625, file: !27, line: 425, baseType: !1821, size: 64, offset: 1728)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !911)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !625, file: !27, line: 426, baseType: !7, size: 32, offset: 1792)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !625, file: !27, line: 435, baseType: !789, size: 256, offset: 1856)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !625, file: !27, line: 437, baseType: !1826, size: 64, offset: 2112)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1828, line: 69, size: 320, elements: !1829)
!1828 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1829 = !{!1830, !1831, !1832, !1849, !1851, !1852, !1853}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1827, file: !1828, line: 70, baseType: !548, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1827, file: !1828, line: 71, baseType: !624, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1827, file: !1828, line: 72, baseType: !1833, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1835)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1828, line: 47, size: 256, elements: !1836)
!1836 = !{!1837, !1838, !1844, !1848}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1835, file: !1828, line: 49, baseType: !7, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1835, file: !1828, line: 51, baseType: !1839, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!109, !548, !1842}
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1827)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1835, file: !1828, line: 53, baseType: !1845, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!109, !574, !1842}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1835, file: !1828, line: 55, baseType: !1641, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1827, file: !1828, line: 73, baseType: !1850, size: 16, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1827, file: !1828, line: 74, baseType: !336, size: 8, offset: 208)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1827, file: !1828, line: 75, baseType: !340, size: 8, offset: 216)
!1853 = !DIDerivedType(tag: DW_TAG_member, scope: !1827, file: !1828, line: 76, baseType: !1854, size: 64, offset: 256)
!1854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1827, file: !1828, line: 76, size: 64, elements: !1855)
!1855 = !{!1856, !1857, !1864}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1854, file: !1828, line: 77, baseType: !313, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1854, file: !1828, line: 78, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1860)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1828, line: 86, size: 128, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1860, file: !1828, line: 87, baseType: !7, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1860, file: !1828, line: 88, baseType: !574, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1854, file: !1828, line: 79, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1867)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1828, line: 92, size: 256, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1873, !1874}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1867, file: !1828, line: 94, baseType: !7, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1867, file: !1828, line: 95, baseType: !7, size: 32, offset: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1867, file: !1828, line: 96, baseType: !1872, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1867, file: !1828, line: 97, baseType: !1833, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1867, file: !1828, line: 98, baseType: !313, size: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !625, file: !27, line: 438, baseType: !7, size: 32, offset: 2176)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !625, file: !27, line: 441, baseType: !7, size: 32, offset: 2208)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !625, file: !27, line: 442, baseType: !1817, size: 64, offset: 2240)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !625, file: !27, line: 443, baseType: !1821, size: 64, offset: 2304)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !625, file: !27, line: 444, baseType: !985, size: 8, offset: 2368)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !625, file: !27, line: 451, baseType: !985, size: 8, offset: 2376)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !625, file: !27, line: 454, baseType: !7, size: 32, offset: 2400)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !625, file: !27, line: 455, baseType: !1883, size: 64, offset: 2432)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1885, line: 23, size: 96, elements: !1886)
!1885 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1886 = !{!1887, !1888, !1889}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1884, file: !1885, line: 24, baseType: !109, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1884, file: !1885, line: 24, baseType: !109, size: 32, offset: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1884, file: !1885, line: 24, baseType: !109, size: 32, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !625, file: !27, line: 458, baseType: !1891, size: 64, offset: 2496)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!109}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !625, file: !27, line: 460, baseType: !1895, size: 4032, align: 512, offset: 2560)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1896, size: 4032, elements: !1910)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !27, line: 362, size: 576, elements: !1897)
!1897 = !{!1898, !1899, !1900}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1896, file: !27, line: 363, baseType: !313, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1896, file: !27, line: 364, baseType: !7, size: 32, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1896, file: !27, line: 367, baseType: !1901, size: 448, offset: 128)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !27, line: 319, size: 448, elements: !1902)
!1902 = !{!1903, !1904}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1901, file: !27, line: 320, baseType: !624, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1901, file: !27, line: 321, baseType: !1905, size: 384, offset: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1906, line: 40, size: 384, elements: !1907)
!1906 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1907 = !{!1908}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1905, file: !1906, line: 41, baseType: !1909, size: 384, align: 64)
!1909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 384, align: 64, elements: !345)
!1910 = !{!1911}
!1911 = !DISubrange(count: 7)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !625, file: !27, line: 463, baseType: !1913, size: 192, offset: 6592)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1914, line: 8, size: 192, elements: !1915)
!1914 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1915 = !{!1916, !1917, !1919}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1913, file: !1914, line: 10, baseType: !7, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1913, file: !1914, line: 11, baseType: !1918, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1913, file: !1914, line: 12, baseType: !1920, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1922, line: 59, size: 48, elements: !1923)
!1922 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1923 = !{!1924, !1925, !1926, !1927, !1928, !1929}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1921, file: !1922, line: 60, baseType: !1334, size: 16)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1921, file: !1922, line: 61, baseType: !1334, size: 16, offset: 16)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1921, file: !1922, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1921, file: !1922, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1921, file: !1922, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1921, file: !1922, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !625, file: !27, line: 465, baseType: !348, size: 64, offset: 6784)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !625, file: !27, line: 469, baseType: !7, size: 32, offset: 6848)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !625, file: !27, line: 470, baseType: !379, size: 128, offset: 6912)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !625, file: !27, line: 471, baseType: !1934, size: 64, offset: 7040)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1936, line: 33, size: 96, elements: !1937)
!1936 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1937 = !{!1938, !1939, !1940, !1941}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1935, file: !1936, line: 37, baseType: !109, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1935, file: !1936, line: 43, baseType: !109, size: 32, offset: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1935, file: !1936, line: 45, baseType: !401, size: 16, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1935, file: !1936, line: 47, baseType: !401, size: 16, offset: 80)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !625, file: !27, line: 476, baseType: !1943, size: 64, offset: 7104)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !27, line: 378, size: 256, elements: !1945)
!1945 = !{!1946, !1962, !1963, !1964}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1944, file: !27, line: 379, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1949, line: 204, baseType: !1950)
!1949 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1949, line: 197, size: 192, elements: !1951)
!1951 = !{!1952, !1954, !1955, !1956, !1958, !1960}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1950, file: !1949, line: 198, baseType: !1953, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1949, line: 21, baseType: !326)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1950, file: !1949, line: 199, baseType: !342, size: 8, offset: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1950, file: !1949, line: 200, baseType: !342, size: 8, offset: 40)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1950, file: !1949, line: 201, baseType: !1957, size: 16, offset: 48)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1949, line: 17, baseType: !524)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1950, file: !1949, line: 202, baseType: !1959, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1949, line: 16, baseType: !331)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1950, file: !1949, line: 203, baseType: !1961, size: 64, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1949, line: 22, baseType: !331)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1944, file: !27, line: 380, baseType: !7, size: 32, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1944, file: !27, line: 381, baseType: !574, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1944, file: !27, line: 382, baseType: !574, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !625, file: !27, line: 477, baseType: !1944, size: 256, offset: 7168)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !625, file: !27, line: 480, baseType: !1967, size: 64, offset: 7424)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !27, line: 480, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !625, file: !27, line: 483, baseType: !1970, size: 64, offset: 7488)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !27, line: 483, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !625, file: !27, line: 488, baseType: !574, size: 64, offset: 7552)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !625, file: !27, line: 492, baseType: !313, size: 64, offset: 7616)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !625, file: !27, line: 493, baseType: !7, size: 32, offset: 7680)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !625, file: !27, line: 495, baseType: !313, size: 64, offset: 7744)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !625, file: !27, line: 496, baseType: !7, size: 32, offset: 7808)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !625, file: !27, line: 499, baseType: !7, size: 32, offset: 7840)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !625, file: !27, line: 500, baseType: !1979, size: 64, offset: 7872)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1981, line: 45, baseType: !1982)
!1981 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !625, file: !27, line: 503, baseType: !7, size: 32, offset: 7936)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !625, file: !27, line: 504, baseType: !1985, size: 64, offset: 8000)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1988, line: 96, size: 192, elements: !1989)
!1988 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1989 = !{!1990, !1991, !2045, !2048}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1987, file: !1988, line: 97, baseType: !7, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1987, file: !1988, line: 98, baseType: !1992, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1988, line: 24, size: 3072, elements: !1994)
!1994 = !{!1995, !1997, !1998, !1999, !2000, !2014, !2015, !2016, !2017, !2029, !2030, !2031, !2042, !2043, !2044}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1993, file: !1988, line: 26, baseType: !1996, size: 128)
!1996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !780, size: 128, elements: !345)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1993, file: !1988, line: 27, baseType: !1996, size: 128, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1993, file: !1988, line: 28, baseType: !109, size: 32, offset: 256)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1993, file: !1988, line: 31, baseType: !490, size: 32, align: 512, offset: 512)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1993, file: !1988, line: 32, baseType: !2001, size: 960, offset: 576)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2002, line: 206, size: 960, elements: !2003)
!2002 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2003 = !{!2004, !2005, !2008, !2010, !2011, !2013}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2001, file: !2002, line: 207, baseType: !770, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2001, file: !2002, line: 208, baseType: !2006, size: 256, offset: 64)
!2006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2007, size: 256, elements: !850)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2001, file: !2002, line: 209, baseType: !2009, size: 256, offset: 320)
!2009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 256, elements: !850)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2001, file: !2002, line: 213, baseType: !712, size: 64, offset: 576)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2001, file: !2002, line: 215, baseType: !2012, size: 256, offset: 640)
!2012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, size: 256, elements: !850)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2001, file: !2002, line: 216, baseType: !340, size: 8, offset: 896)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1993, file: !1988, line: 33, baseType: !348, size: 64, offset: 1536)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1993, file: !1988, line: 34, baseType: !348, size: 64, offset: 1600)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1993, file: !1988, line: 35, baseType: !985, size: 8, offset: 1664)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1993, file: !1988, line: 36, baseType: !2018, size: 320, offset: 1728)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2019, line: 11, size: 320, elements: !2020)
!2019 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2020 = !{!2021, !2022, !2023, !2028}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2018, file: !2019, line: 16, baseType: !845, size: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2018, file: !2019, line: 17, baseType: !348, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2018, file: !2019, line: 18, baseType: !2024, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !2027}
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2018, file: !2019, line: 19, baseType: !324, size: 32, offset: 256)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1993, file: !1988, line: 37, baseType: !1356, size: 256, offset: 2048)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1993, file: !1988, line: 38, baseType: !767, size: 128, align: 64, offset: 2304)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1993, file: !1988, line: 39, baseType: !2032, size: 64, offset: 2432)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1988, line: 49, size: 768, elements: !2034)
!2034 = !{!2035, !2036, !2037, !2038, !2039, !2040, !2041}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2033, file: !1988, line: 50, baseType: !490, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2033, file: !1988, line: 51, baseType: !2009, size: 256, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2033, file: !1988, line: 53, baseType: !2009, size: 256, offset: 320)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2033, file: !1988, line: 54, baseType: !348, size: 64, offset: 576)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2033, file: !1988, line: 55, baseType: !2032, size: 64, offset: 640)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2033, file: !1988, line: 56, baseType: !109, size: 32, offset: 704)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2033, file: !1988, line: 57, baseType: !109, size: 32, offset: 736)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1993, file: !1988, line: 40, baseType: !348, size: 64, offset: 2496)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1993, file: !1988, line: 42, baseType: !109, size: 32, offset: 2560)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1993, file: !1988, line: 43, baseType: !1986, size: 64, offset: 2624)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1987, file: !1988, line: 99, baseType: !2046, offset: 128)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2047, line: 211, elements: !1222)
!2047 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1987, file: !1988, line: 100, baseType: !2049, size: 64, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1988, line: 63, size: 3008, elements: !2051)
!2051 = !{!2052, !2053, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2083}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2050, file: !1988, line: 64, baseType: !2032, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2050, file: !1988, line: 65, baseType: !2054, size: 192, offset: 64)
!2054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2032, size: 192, elements: !678)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2050, file: !1988, line: 67, baseType: !109, size: 32, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2050, file: !1988, line: 68, baseType: !789, size: 256, offset: 320)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2050, file: !1988, line: 69, baseType: !490, size: 32, offset: 576)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2050, file: !1988, line: 70, baseType: !789, size: 256, offset: 640)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2050, file: !1988, line: 71, baseType: !348, size: 64, offset: 896)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2050, file: !1988, line: 72, baseType: !348, size: 64, offset: 960)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2050, file: !1988, line: 73, baseType: !348, size: 64, offset: 1024)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2050, file: !1988, line: 74, baseType: !348, size: 64, offset: 1088)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2050, file: !1988, line: 75, baseType: !348, size: 64, offset: 1152)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2050, file: !1988, line: 76, baseType: !348, size: 64, offset: 1216)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2050, file: !1988, line: 77, baseType: !348, size: 64, offset: 1280)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2050, file: !1988, line: 78, baseType: !348, size: 64, offset: 1344)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2050, file: !1988, line: 79, baseType: !985, size: 8, offset: 1408)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2050, file: !1988, line: 80, baseType: !348, size: 64, offset: 1472)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2050, file: !1988, line: 81, baseType: !789, size: 256, offset: 1536)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2050, file: !1988, line: 82, baseType: !1777, size: 256, offset: 1792)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2050, file: !1988, line: 84, baseType: !510, size: 32, offset: 2048)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2050, file: !1988, line: 87, baseType: !348, size: 64, offset: 2112)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2050, file: !1988, line: 88, baseType: !348, size: 64, offset: 2176)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2050, file: !1988, line: 89, baseType: !2075, size: 704, offset: 2240)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1357, line: 111, size: 704, elements: !2076)
!2076 = !{!2077, !2078, !2079, !2082}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2075, file: !1357, line: 112, baseType: !1356, size: 256)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2075, file: !1357, line: 113, baseType: !2018, size: 320, offset: 256)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2075, file: !1357, line: 116, baseType: !2080, size: 64, offset: 576)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1357, line: 18, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2075, file: !1357, line: 117, baseType: !109, size: 32, offset: 640)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2050, file: !1988, line: 90, baseType: !1986, size: 64, offset: 2944)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !625, file: !27, line: 515, baseType: !2085, size: 64, offset: 8064)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2087, line: 117, size: 128, elements: !2088)
!2087 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2088 = !{!2089, !2090, !2091}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2086, file: !2087, line: 118, baseType: !911, size: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2086, file: !2087, line: 119, baseType: !911, size: 32, offset: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2086, file: !2087, line: 120, baseType: !712, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !625, file: !27, line: 516, baseType: !7, size: 32, offset: 8128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !625, file: !27, line: 519, baseType: !7, size: 32, offset: 8160)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !625, file: !27, line: 520, baseType: !2095, size: 64, offset: 8192)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !625, file: !27, line: 523, baseType: !2097, size: 64, offset: 8256)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !27, line: 523, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !625, file: !27, line: 524, baseType: !7, size: 32, offset: 8320)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !625, file: !27, line: 525, baseType: !2102, size: 64, offset: 8384)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !27, line: 525, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !625, file: !27, line: 526, baseType: !7, size: 32, offset: 8448)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !625, file: !27, line: 533, baseType: !313, size: 64, offset: 8512)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !625, file: !27, line: 534, baseType: !7, size: 32, offset: 8576)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !625, file: !27, line: 535, baseType: !347, size: 64, offset: 8640)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !625, file: !27, line: 536, baseType: !7, size: 32, offset: 8704)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !625, file: !27, line: 539, baseType: !109, size: 32, offset: 8736)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !625, file: !27, line: 540, baseType: !2112, size: 64, offset: 8768)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2114, line: 32, size: 64, elements: !2115)
!2114 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2113, file: !2114, line: 33, baseType: !911, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2113, file: !2114, line: 34, baseType: !911, size: 32, offset: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !625, file: !27, line: 563, baseType: !379, size: 128, offset: 8832)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !625, file: !27, line: 565, baseType: !379, size: 128, offset: 8960)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !625, file: !27, line: 568, baseType: !2121, size: 64, offset: 9088)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !625, file: !27, line: 570, baseType: !510, size: 32, offset: 9152)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !600, file: !34, line: 2382, baseType: !599, size: 64, offset: 448)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !600, file: !34, line: 2383, baseType: !841, size: 64, offset: 512)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !600, file: !34, line: 2385, baseType: !2128, offset: 576)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2047, line: 206, elements: !1222)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !600, file: !34, line: 2386, baseType: !2128, offset: 576)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !600, file: !34, line: 2387, baseType: !2128, offset: 576)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !600, file: !34, line: 2388, baseType: !2132, offset: 576)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2128, elements: !678)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !600, file: !34, line: 2390, baseType: !2128, offset: 576)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !600, file: !34, line: 2391, baseType: !2128, offset: 576)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !600, file: !34, line: 2392, baseType: !2128, offset: 576)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !600, file: !34, line: 2393, baseType: !2128, offset: 576)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !586, file: !34, line: 1197, baseType: !2138, size: 64, offset: 384)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2140)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !34, line: 2057, size: 1664, elements: !2141)
!2141 = !{!2142, !2146, !2150, !2151, !2155, !2161, !2165, !2166, !2167, !2171, !2175, !2179, !2180, !2181, !2187, !2191, !2192, !2196, !2197, !2198, !2199, !2203, !2207, !2254, !2269, !2270}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2140, file: !34, line: 2058, baseType: !2143, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!396, !585}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2140, file: !34, line: 2059, baseType: !2147, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{null, !396}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2140, file: !34, line: 2060, baseType: !2147, size: 64, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2140, file: !34, line: 2062, baseType: !2152, size: 64, offset: 192)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{null, !396, !109}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2140, file: !34, line: 2063, baseType: !2156, size: 64, offset: 256)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!109, !396, !2159}
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !34, line: 309, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2140, file: !34, line: 2064, baseType: !2162, size: 64, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!109, !396}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2140, file: !34, line: 2065, baseType: !2147, size: 64, offset: 384)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2140, file: !34, line: 2066, baseType: !620, size: 64, offset: 448)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2140, file: !34, line: 2067, baseType: !2168, size: 64, offset: 512)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!109, !585, !109}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2140, file: !34, line: 2068, baseType: !2172, size: 64, offset: 576)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!109, !585, !33}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2140, file: !34, line: 2069, baseType: !2176, size: 64, offset: 640)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!109, !585}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2140, file: !34, line: 2070, baseType: !2172, size: 64, offset: 704)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2140, file: !34, line: 2071, baseType: !2176, size: 64, offset: 768)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2140, file: !34, line: 2072, baseType: !2182, size: 64, offset: 832)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!109, !434, !2185}
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !34, line: 62, flags: DIFlagFwdDecl)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2140, file: !34, line: 2073, baseType: !2188, size: 64, offset: 896)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!109, !585, !1918, !574}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2140, file: !34, line: 2074, baseType: !620, size: 64, offset: 960)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2140, file: !34, line: 2076, baseType: !2193, size: 64, offset: 1024)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!109, !1573, !434}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2140, file: !34, line: 2077, baseType: !2193, size: 64, offset: 1088)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2140, file: !34, line: 2078, baseType: !2193, size: 64, offset: 1152)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2140, file: !34, line: 2079, baseType: !2193, size: 64, offset: 1216)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2140, file: !34, line: 2081, baseType: !2200, size: 64, offset: 1280)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!709, !585, !109, !574, !722, !595}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2140, file: !34, line: 2082, baseType: !2204, size: 64, offset: 1344)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!709, !585, !109, !548, !722, !595}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2140, file: !34, line: 2083, baseType: !2208, size: 64, offset: 1408)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!2211, !396}
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !39, line: 296, size: 1664, elements: !2214)
!2214 = !{!2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2239, !2240, !2241}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2213, file: !39, line: 297, baseType: !845, size: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2213, file: !39, line: 298, baseType: !379, size: 128, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2213, file: !39, line: 299, baseType: !379, size: 128, offset: 256)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2213, file: !39, line: 300, baseType: !379, size: 128, offset: 384)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2213, file: !39, line: 301, baseType: !789, size: 256, offset: 512)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2213, file: !39, line: 302, baseType: !490, size: 32, offset: 768)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2213, file: !39, line: 303, baseType: !510, size: 32, offset: 800)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2213, file: !39, line: 304, baseType: !585, size: 64, offset: 832)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2213, file: !39, line: 305, baseType: !2224, size: 64, offset: 896)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !39, line: 68, size: 64, elements: !2225)
!2225 = !{!2226, !2238}
!2226 = !DIDerivedType(tag: DW_TAG_member, scope: !2224, file: !39, line: 69, baseType: !2227, size: 32)
!2227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2224, file: !39, line: 69, size: 32, elements: !2228)
!2228 = !{!2229, !2230, !2231}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2227, file: !39, line: 70, baseType: !404, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2227, file: !39, line: 71, baseType: !414, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2227, file: !39, line: 72, baseType: !2232, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2233, line: 24, baseType: !2234)
!2233 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2233, line: 22, size: 32, elements: !2235)
!2235 = !{!2236}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2234, file: !2233, line: 23, baseType: !2237, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2233, line: 20, baseType: !410)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2224, file: !39, line: 74, baseType: !38, size: 32, offset: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2213, file: !39, line: 306, baseType: !595, size: 64, offset: 960)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2213, file: !39, line: 307, baseType: !348, size: 64, offset: 1024)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2213, file: !39, line: 308, baseType: !2242, size: 576, offset: 1088)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !39, line: 205, size: 576, elements: !2243)
!2243 = !{!2244, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2242, file: !39, line: 206, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !39, line: 66, baseType: !597)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2242, file: !39, line: 207, baseType: !2245, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2242, file: !39, line: 208, baseType: !2245, size: 64, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2242, file: !39, line: 209, baseType: !2245, size: 64, offset: 192)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2242, file: !39, line: 210, baseType: !2245, size: 64, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2242, file: !39, line: 211, baseType: !2245, size: 64, offset: 320)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2242, file: !39, line: 212, baseType: !2245, size: 64, offset: 384)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2242, file: !39, line: 213, baseType: !942, size: 64, offset: 448)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2242, file: !39, line: 214, baseType: !942, size: 64, offset: 512)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2140, file: !34, line: 2085, baseType: !2255, size: 64, offset: 1472)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!712, !585, !2258}
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2260, line: 15, size: 256, elements: !2261)
!2260 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2261 = !{!2262, !2263, !2264, !2265, !2266}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2259, file: !2260, line: 16, baseType: !362, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2259, file: !2260, line: 19, baseType: !109, size: 32, offset: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2259, file: !2260, line: 26, baseType: !348, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2259, file: !2260, line: 33, baseType: !348, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2259, file: !2260, line: 36, baseType: !2267, size: 64, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !58, line: 33, flags: DIFlagFwdDecl)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2140, file: !34, line: 2087, baseType: !2255, size: 64, offset: 1536)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2140, file: !34, line: 2089, baseType: !620, size: 64, offset: 1600)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !586, file: !34, line: 1198, baseType: !2272, size: 64, offset: 448)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2274)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !39, line: 324, size: 704, elements: !2275)
!2275 = !{!2276, !2280, !2284, !2288, !2289, !2290, !2291, !2292, !2297, !2302, !2306}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2274, file: !39, line: 325, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!109, !2212}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2274, file: !39, line: 326, baseType: !2281, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!2212, !585, !109}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2274, file: !39, line: 327, baseType: !2285, size: 64, offset: 128)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{null, !2212}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2274, file: !39, line: 328, baseType: !2277, size: 64, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2274, file: !39, line: 329, baseType: !2277, size: 64, offset: 256)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2274, file: !39, line: 330, baseType: !2277, size: 64, offset: 320)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2274, file: !39, line: 331, baseType: !2168, size: 64, offset: 384)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2274, file: !39, line: 334, baseType: !2293, size: 64, offset: 448)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!2296, !396}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2274, file: !39, line: 335, baseType: !2298, size: 64, offset: 512)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!109, !396, !2301}
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2274, file: !39, line: 337, baseType: !2303, size: 64, offset: 576)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!109, !396, !2296}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2274, file: !39, line: 339, baseType: !2307, size: 64, offset: 640)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!109, !585, !2310}
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !586, file: !34, line: 1199, baseType: !2312, size: 64, offset: 512)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2314)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !39, line: 430, size: 704, elements: !2315)
!2315 = !{!2316, !2322, !2323, !2327, !2328, !2329, !2344, !2367, !2371, !2372, !2395}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2314, file: !39, line: 431, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!109, !585, !109, !109, !2320}
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1097)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2314, file: !39, line: 432, baseType: !2168, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2314, file: !39, line: 433, baseType: !2324, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!109, !585, !7}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2314, file: !39, line: 434, baseType: !2324, size: 64, offset: 192)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2314, file: !39, line: 435, baseType: !2168, size: 64, offset: 256)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2314, file: !39, line: 436, baseType: !2330, size: 64, offset: 320)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!109, !585, !109, !2333}
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !39, line: 417, size: 256, elements: !2335)
!2335 = !{!2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2334, file: !39, line: 418, baseType: !109, size: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2334, file: !39, line: 419, baseType: !7, size: 32, offset: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2334, file: !39, line: 420, baseType: !7, size: 32, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2334, file: !39, line: 422, baseType: !7, size: 32, offset: 96)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2334, file: !39, line: 423, baseType: !7, size: 32, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2334, file: !39, line: 424, baseType: !7, size: 32, offset: 160)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2334, file: !39, line: 425, baseType: !7, size: 32, offset: 192)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2334, file: !39, line: 426, baseType: !7, size: 32, offset: 224)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2314, file: !39, line: 437, baseType: !2345, size: 64, offset: 384)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!109, !585, !2224, !2348}
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !39, line: 345, size: 960, elements: !2350)
!2350 = !{!2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2349, file: !39, line: 346, baseType: !109, size: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2349, file: !39, line: 347, baseType: !330, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2349, file: !39, line: 348, baseType: !330, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2349, file: !39, line: 349, baseType: !330, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2349, file: !39, line: 350, baseType: !330, size: 64, offset: 256)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2349, file: !39, line: 351, baseType: !330, size: 64, offset: 320)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2349, file: !39, line: 352, baseType: !330, size: 64, offset: 384)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2349, file: !39, line: 353, baseType: !786, size: 64, offset: 448)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2349, file: !39, line: 355, baseType: !786, size: 64, offset: 512)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2349, file: !39, line: 356, baseType: !109, size: 32, offset: 576)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2349, file: !39, line: 357, baseType: !109, size: 32, offset: 608)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2349, file: !39, line: 358, baseType: !330, size: 64, offset: 640)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2349, file: !39, line: 359, baseType: !330, size: 64, offset: 704)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2349, file: !39, line: 360, baseType: !330, size: 64, offset: 768)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2349, file: !39, line: 361, baseType: !786, size: 64, offset: 832)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2349, file: !39, line: 362, baseType: !109, size: 32, offset: 896)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2314, file: !39, line: 438, baseType: !2368, size: 64, offset: 448)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!109, !585, !2310, !2348}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2314, file: !39, line: 440, baseType: !2345, size: 64, offset: 512)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2314, file: !39, line: 441, baseType: !2373, size: 64, offset: 576)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!109, !585, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !39, line: 411, size: 1408, elements: !2378)
!2378 = !{!2379, !2380}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2377, file: !39, line: 412, baseType: !7, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2377, file: !39, line: 413, baseType: !2381, size: 1344, offset: 64)
!2381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2382, size: 1344, elements: !678)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !39, line: 397, size: 448, elements: !2383)
!2383 = !{!2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2394}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2382, file: !39, line: 398, baseType: !7, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2382, file: !39, line: 399, baseType: !7, size: 32, offset: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2382, file: !39, line: 401, baseType: !7, size: 32, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2382, file: !39, line: 402, baseType: !7, size: 32, offset: 96)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2382, file: !39, line: 403, baseType: !7, size: 32, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2382, file: !39, line: 404, baseType: !7, size: 32, offset: 160)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2382, file: !39, line: 405, baseType: !7, size: 32, offset: 192)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2382, file: !39, line: 406, baseType: !332, size: 64, offset: 256)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2382, file: !39, line: 407, baseType: !2393, size: 64, offset: 320)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !363, line: 132, baseType: !330)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2382, file: !39, line: 408, baseType: !2393, size: 64, offset: 384)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2314, file: !39, line: 442, baseType: !2324, size: 64, offset: 640)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !586, file: !34, line: 1200, baseType: !2397, size: 64, offset: 576)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2399)
!2399 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !34, line: 54, flags: DIFlagFwdDecl)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !586, file: !34, line: 1201, baseType: !348, size: 64, offset: 640)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !586, file: !34, line: 1202, baseType: !348, size: 64, offset: 704)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !586, file: !34, line: 1203, baseType: !348, size: 64, offset: 768)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !586, file: !34, line: 1204, baseType: !434, size: 64, offset: 832)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !586, file: !34, line: 1205, baseType: !926, size: 320, offset: 896)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !586, file: !34, line: 1206, baseType: !109, size: 32, offset: 1216)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !586, file: !34, line: 1207, baseType: !510, size: 32, offset: 1248)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !586, file: !34, line: 1209, baseType: !313, size: 64, offset: 1280)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !586, file: !34, line: 1211, baseType: !2409, size: 64, offset: 1344)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2412)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !34, line: 1211, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !586, file: !34, line: 1223, baseType: !2414, size: 64, offset: 1408)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !451, line: 34, size: 64, elements: !2415)
!2415 = !{!2416}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2414, file: !451, line: 35, baseType: !454, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !586, file: !34, line: 1224, baseType: !379, size: 128, offset: 1472)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !586, file: !34, line: 1225, baseType: !2419, size: 64, offset: 1600)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !34, line: 1225, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !586, file: !34, line: 1226, baseType: !2422, size: 64, offset: 1664)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !34, line: 1226, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !586, file: !34, line: 1227, baseType: !2425, size: 64, offset: 1728)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !34, line: 50, flags: DIFlagFwdDecl)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !586, file: !34, line: 1228, baseType: !2428, size: 64, offset: 1792)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !34, line: 1228, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !586, file: !34, line: 1229, baseType: !845, size: 128, offset: 1856)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !586, file: !34, line: 1230, baseType: !7, size: 32, offset: 1984)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !586, file: !34, line: 1231, baseType: !2433, size: 2496, offset: 2048)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !39, line: 521, size: 2496, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2439, !2471}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2433, file: !39, line: 522, baseType: !7, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2433, file: !39, line: 523, baseType: !926, size: 320, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2433, file: !39, line: 524, baseType: !2438, size: 192, offset: 384)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 192, elements: !678)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2433, file: !39, line: 525, baseType: !2440, size: 1728, offset: 576)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2441, size: 1728, elements: !678)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !39, line: 222, size: 576, elements: !2442)
!2442 = !{!2443, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2441, file: !39, line: 223, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !39, line: 445, size: 256, elements: !2446)
!2446 = !{!2447, !2448, !2461, !2462}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2445, file: !39, line: 446, baseType: !109, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2445, file: !39, line: 447, baseType: !2449, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2451)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !39, line: 312, size: 512, elements: !2452)
!2452 = !{!2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2451, file: !39, line: 313, baseType: !2168, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2451, file: !39, line: 314, baseType: !2168, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2451, file: !39, line: 315, baseType: !2168, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2451, file: !39, line: 316, baseType: !2168, size: 64, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2451, file: !39, line: 317, baseType: !2277, size: 64, offset: 256)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2451, file: !39, line: 318, baseType: !2277, size: 64, offset: 320)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2451, file: !39, line: 319, baseType: !2277, size: 64, offset: 384)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2451, file: !39, line: 320, baseType: !2307, size: 64, offset: 448)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2445, file: !39, line: 448, baseType: !624, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2445, file: !39, line: 449, baseType: !2444, size: 64, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2441, file: !39, line: 224, baseType: !109, size: 32, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2441, file: !39, line: 226, baseType: !379, size: 128, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2441, file: !39, line: 227, baseType: !348, size: 64, offset: 256)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2441, file: !39, line: 228, baseType: !7, size: 32, offset: 320)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2441, file: !39, line: 229, baseType: !7, size: 32, offset: 352)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2441, file: !39, line: 230, baseType: !2245, size: 64, offset: 384)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2441, file: !39, line: 231, baseType: !2245, size: 64, offset: 448)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2441, file: !39, line: 232, baseType: !313, size: 64, offset: 512)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2433, file: !39, line: 526, baseType: !2472, size: 192, offset: 2304)
!2472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2449, size: 192, elements: !678)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !586, file: !34, line: 1233, baseType: !2474, size: 2368, offset: 4544)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !34, line: 1184, size: 2368, elements: !2475)
!2475 = !{!2476, !2477, !2478}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2474, file: !34, line: 1185, baseType: !401, size: 16)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2474, file: !34, line: 1186, baseType: !401, size: 16, offset: 16)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2474, file: !34, line: 1187, baseType: !2479, size: 2304, offset: 64)
!2479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2480, size: 2304, elements: !678)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2481, line: 12, size: 768, elements: !2482)
!2481 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2482 = !{!2483, !2491, !2492, !3677, !3678}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2480, file: !2481, line: 13, baseType: !2484, size: 384)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2485, line: 17, size: 384, elements: !2486)
!2485 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2486 = !{!2487, !2488, !2489, !2490}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2484, file: !2485, line: 18, baseType: !109, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2484, file: !2485, line: 19, baseType: !109, size: 32, offset: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2484, file: !2485, line: 20, baseType: !854, size: 192, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2484, file: !2485, line: 22, baseType: !767, size: 128, align: 64, offset: 256)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2480, file: !2481, line: 14, baseType: !1872, size: 64, offset: 384)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2480, file: !2481, line: 15, baseType: !2493, size: 64, offset: 448)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2494, line: 16, size: 64, elements: !2495)
!2494 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2495 = !{!2496}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2493, file: !2494, line: 17, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1550, line: 746, size: 58368, elements: !2499)
!2499 = !{!2500, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2580, !2591, !2683, !2687, !2690, !2721, !2722, !2723, !2724, !2728, !2730, !2731, !2732, !2733, !2734, !2735, !2746, !2747, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2764, !2765, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2853, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2901, !2907, !2908, !2909, !2910, !2911, !2915, !2918, !2925, !2930, !2933, !2936, !2939, !2942, !3080, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3118, !3119, !3120, !3129, !3137, !3138, !3139, !3140, !3141, !3146, !3147, !3148, !3151, !3152, !3155, !3158, !3161, !3169, !3172, !3173, !3259, !3260, !3261, !3262, !3263, !3269, !3270, !3271, !3272, !3275, !3276, !3279, !3282, !3283, !3286, !3287, !3288, !3291, !3292, !3293, !3294, !3295, !3296, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3328, !3329, !3335, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3347, !3419, !3421, !3422, !3423, !3424, !3425, !3426, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3454, !3455, !3456}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2498, file: !1550, line: 752, baseType: !2501, size: 192)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2502, line: 56, size: 192, elements: !2503)
!2502 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2503 = !{!2504, !2505, !2506, !2507}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2501, file: !2502, line: 57, baseType: !348, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2501, file: !2502, line: 58, baseType: !348, size: 64, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2501, file: !2502, line: 59, baseType: !324, size: 32, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2501, file: !2502, line: 61, baseType: !324, size: 32, offset: 160)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2498, file: !1550, line: 754, baseType: !7, size: 32, offset: 192)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2498, file: !1550, line: 767, baseType: !313, size: 64, offset: 256)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2498, file: !1550, line: 768, baseType: !832, size: 32, offset: 320)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2498, file: !1550, line: 770, baseType: !7, size: 32, offset: 352)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2498, file: !1550, line: 771, baseType: !7, size: 32, offset: 384)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2498, file: !1550, line: 774, baseType: !109, size: 32, offset: 416)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2498, file: !1550, line: 775, baseType: !2515, size: 128, offset: 448)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2516, line: 58, size: 128, elements: !2517)
!2516 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2517 = !{!2518, !2519, !2524, !2525}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2515, file: !2516, line: 59, baseType: !761, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, scope: !2515, file: !2516, line: 60, baseType: !2520, size: 32, offset: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2515, file: !2516, line: 60, size: 32, elements: !2521)
!2521 = !{!2522, !2523}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2520, file: !2516, line: 61, baseType: !7, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2520, file: !2516, line: 62, baseType: !510, size: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2515, file: !2516, line: 65, baseType: !523, size: 16, offset: 96)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2515, file: !2516, line: 65, baseType: !523, size: 16, offset: 112)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2498, file: !1550, line: 776, baseType: !7, size: 32, offset: 576)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2498, file: !1550, line: 777, baseType: !348, size: 64, offset: 640)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2498, file: !1550, line: 778, baseType: !2497, size: 64, offset: 704)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2498, file: !1550, line: 787, baseType: !109, size: 32, offset: 768)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2498, file: !1550, line: 788, baseType: !109, size: 32, offset: 800)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2498, file: !1550, line: 790, baseType: !109, size: 32, offset: 832)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2498, file: !1550, line: 792, baseType: !109, size: 32, offset: 864)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2498, file: !1550, line: 793, baseType: !109, size: 32, offset: 896)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2498, file: !1550, line: 794, baseType: !109, size: 32, offset: 928)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2498, file: !1550, line: 795, baseType: !7, size: 32, offset: 960)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2498, file: !1550, line: 797, baseType: !2537, size: 2048, offset: 1024)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1550, line: 551, size: 2048, elements: !2538)
!2538 = !{!2539, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2559, !2562, !2563, !2564}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2537, file: !1550, line: 553, baseType: !2540, size: 128)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1550, line: 411, size: 128, elements: !2541)
!2541 = !{!2542, !2543}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2540, file: !1550, line: 412, baseType: !348, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2540, file: !1550, line: 413, baseType: !324, size: 32, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2537, file: !1550, line: 554, baseType: !918, size: 192, align: 64, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2537, file: !1550, line: 555, baseType: !330, size: 64, offset: 320)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2537, file: !1550, line: 556, baseType: !330, size: 64, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2537, file: !1550, line: 558, baseType: !379, size: 128, offset: 448)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2537, file: !1550, line: 559, baseType: !7, size: 32, offset: 576)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2537, file: !1550, line: 561, baseType: !330, size: 64, offset: 640)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2537, file: !1550, line: 562, baseType: !330, size: 64, offset: 704)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2537, file: !1550, line: 563, baseType: !330, size: 64, offset: 768)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2537, file: !1550, line: 564, baseType: !330, size: 64, offset: 832)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2537, file: !1550, line: 565, baseType: !786, size: 64, offset: 896)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2537, file: !1550, line: 566, baseType: !330, size: 64, offset: 960)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2537, file: !1550, line: 568, baseType: !330, size: 64, offset: 1024)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2537, file: !1550, line: 571, baseType: !109, size: 32, offset: 1088)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2537, file: !1550, line: 572, baseType: !2558, size: 64, offset: 1152)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2537, file: !1550, line: 574, baseType: !2560, size: 64, offset: 1216)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1550, line: 49, flags: DIFlagFwdDecl)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2537, file: !1550, line: 576, baseType: !2560, size: 64, offset: 1280)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2537, file: !1550, line: 578, baseType: !348, size: 64, offset: 1344)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2537, file: !1550, line: 588, baseType: !2565, size: 512, align: 512, offset: 1536)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1550, line: 497, size: 512, align: 512, elements: !2566)
!2566 = !{!2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2565, file: !1550, line: 498, baseType: !330, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2565, file: !1550, line: 499, baseType: !330, size: 64, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2565, file: !1550, line: 500, baseType: !330, size: 64, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2565, file: !1550, line: 501, baseType: !324, size: 32, offset: 192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2565, file: !1550, line: 502, baseType: !324, size: 32, offset: 224)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2565, file: !1550, line: 503, baseType: !348, size: 64, offset: 256)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2565, file: !1550, line: 504, baseType: !348, size: 64, offset: 320)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2565, file: !1550, line: 505, baseType: !348, size: 64, offset: 384)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2565, file: !1550, line: 506, baseType: !2576, size: 64, align: 64, offset: 448)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1550, line: 445, size: 64, align: 64, elements: !2577)
!2577 = !{!2578, !2579}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2576, file: !1550, line: 446, baseType: !7, size: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2576, file: !1550, line: 447, baseType: !7, size: 32, offset: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2498, file: !1550, line: 798, baseType: !2581, size: 384, offset: 3072)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1550, line: 592, size: 384, elements: !2582)
!2582 = !{!2583, !2584, !2585, !2586, !2587, !2588, !2589}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2581, file: !1550, line: 593, baseType: !379, size: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2581, file: !1550, line: 594, baseType: !348, size: 64, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2581, file: !1550, line: 595, baseType: !348, size: 64, offset: 192)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2581, file: !1550, line: 596, baseType: !7, size: 32, offset: 256)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2581, file: !1550, line: 597, baseType: !401, size: 16, offset: 288)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2581, file: !1550, line: 598, baseType: !401, size: 16, offset: 304)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2581, file: !1550, line: 600, baseType: !2590, size: 64, offset: 320)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2498, file: !1550, line: 799, baseType: !2592, size: 1792, offset: 3456)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1550, line: 610, size: 1792, elements: !2593)
!2593 = !{!2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2680, !2681}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2592, file: !1550, line: 611, baseType: !918, size: 192, align: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2592, file: !1550, line: 618, baseType: !330, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2592, file: !1550, line: 619, baseType: !330, size: 64, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2592, file: !1550, line: 620, baseType: !330, size: 64, offset: 320)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2592, file: !1550, line: 621, baseType: !330, size: 64, offset: 384)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2592, file: !1550, line: 622, baseType: !330, size: 64, offset: 448)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2592, file: !1550, line: 629, baseType: !786, size: 64, offset: 512)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2592, file: !1550, line: 630, baseType: !330, size: 64, offset: 576)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2592, file: !1550, line: 631, baseType: !7, size: 32, offset: 640)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2592, file: !1550, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2592, file: !1550, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2592, file: !1550, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2592, file: !1550, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2592, file: !1550, line: 662, baseType: !2608, size: 512, offset: 704)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !45, line: 118, size: 512, elements: !2609)
!2609 = !{!2610, !2618, !2619, !2624, !2676, !2677, !2678, !2679}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2608, file: !45, line: 119, baseType: !2611, size: 256)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2612, line: 9, size: 256, elements: !2613)
!2612 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2613 = !{!2614, !2615}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2611, file: !2612, line: 10, baseType: !918, size: 192, align: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2611, file: !2612, line: 11, baseType: !2616, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2617, line: 29, baseType: !786)
!2617 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2608, file: !45, line: 120, baseType: !2616, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2608, file: !45, line: 121, baseType: !2620, size: 64, offset: 320)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!44, !2623}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2608, file: !45, line: 122, baseType: !2625, size: 64, offset: 384)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !45, line: 159, size: 512, align: 512, elements: !2627)
!2627 = !{!2628, !2653, !2654, !2657, !2662, !2663, !2671, !2675}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2626, file: !45, line: 160, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !45, line: 215, size: 4608, align: 512, elements: !2631)
!2631 = !{!2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2630, file: !45, line: 216, baseType: !794, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2630, file: !45, line: 217, baseType: !7, size: 32, offset: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2630, file: !45, line: 218, baseType: !7, size: 32, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2630, file: !45, line: 219, baseType: !7, size: 32, offset: 96)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2630, file: !45, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2630, file: !45, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2630, file: !45, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2630, file: !45, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2630, file: !45, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2630, file: !45, line: 226, baseType: !7, size: 32, offset: 160)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2630, file: !45, line: 227, baseType: !401, size: 16, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2630, file: !45, line: 228, baseType: !401, size: 16, offset: 208)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2630, file: !45, line: 229, baseType: !7, size: 32, offset: 224)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2630, file: !45, line: 235, baseType: !2616, size: 64, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2630, file: !45, line: 236, baseType: !2623, size: 64, offset: 320)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2630, file: !45, line: 237, baseType: !2616, size: 64, offset: 384)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2630, file: !45, line: 238, baseType: !2623, size: 64, offset: 448)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2630, file: !45, line: 239, baseType: !2650, size: 4096, align: 512, offset: 512)
!2650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2626, size: 4096, align: 512, elements: !2651)
!2651 = !{!2652}
!2652 = !DISubrange(count: 8)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2626, file: !45, line: 161, baseType: !7, size: 32, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2626, file: !45, line: 162, baseType: !2655, size: 32, offset: 96)
!2655 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !363, line: 32, baseType: !2656)
!2656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !411, line: 96, baseType: !109)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2626, file: !45, line: 163, baseType: !2658, size: 32, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !441, line: 274, baseType: !2659)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !441, line: 274, size: 32, elements: !2660)
!2660 = !{!2661}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2659, file: !441, line: 274, baseType: !445, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2626, file: !45, line: 164, baseType: !2623, size: 64, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2626, file: !45, line: 165, baseType: !2664, size: 128, offset: 256)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2612, line: 14, size: 128, elements: !2665)
!2665 = !{!2666}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2664, file: !2612, line: 15, baseType: !2667, size: 128)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !919, line: 26, size: 128, elements: !2668)
!2668 = !{!2669, !2670}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2667, file: !919, line: 27, baseType: !1673, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2667, file: !919, line: 28, baseType: !923, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2626, file: !45, line: 166, baseType: !2672, size: 64, offset: 384)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!2616}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2626, file: !45, line: 167, baseType: !2616, size: 64, offset: 448)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2608, file: !45, line: 123, baseType: !340, size: 8, offset: 448)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2608, file: !45, line: 124, baseType: !340, size: 8, offset: 456)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2608, file: !45, line: 125, baseType: !340, size: 8, offset: 464)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2608, file: !45, line: 126, baseType: !340, size: 8, offset: 472)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2592, file: !1550, line: 671, baseType: !2608, size: 512, offset: 1216)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2592, file: !1550, line: 679, baseType: !2682, size: 64, offset: 1728)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2498, file: !1550, line: 800, baseType: !2684, size: 64, offset: 5248)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2686)
!2686 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1550, line: 800, flags: DIFlagFwdDecl)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2498, file: !1550, line: 809, baseType: !2688, size: 64, offset: 5312)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1550, line: 70, flags: DIFlagFwdDecl)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2498, file: !1550, line: 825, baseType: !2691, size: 2048, align: 512, offset: 5632)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1550, line: 509, size: 2048, align: 512, elements: !2692)
!2692 = !{!2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2691, file: !1550, line: 511, baseType: !330, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2691, file: !1550, line: 512, baseType: !330, size: 64, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2691, file: !1550, line: 513, baseType: !330, size: 64, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2691, file: !1550, line: 514, baseType: !330, size: 64, offset: 192)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2691, file: !1550, line: 515, baseType: !330, size: 64, offset: 256)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2691, file: !1550, line: 516, baseType: !330, size: 64, offset: 320)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2691, file: !1550, line: 518, baseType: !330, size: 64, offset: 384)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2691, file: !1550, line: 519, baseType: !330, size: 64, offset: 448)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2691, file: !1550, line: 520, baseType: !786, size: 64, offset: 512)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2691, file: !1550, line: 522, baseType: !330, size: 64, offset: 576)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2691, file: !1550, line: 523, baseType: !330, size: 64, offset: 640)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2691, file: !1550, line: 524, baseType: !786, size: 64, offset: 704)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2691, file: !1550, line: 526, baseType: !786, size: 64, offset: 768)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2691, file: !1550, line: 527, baseType: !330, size: 64, offset: 832)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2691, file: !1550, line: 529, baseType: !330, size: 64, offset: 896)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2691, file: !1550, line: 530, baseType: !330, size: 64, offset: 960)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2691, file: !1550, line: 531, baseType: !330, size: 64, offset: 1024)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2691, file: !1550, line: 532, baseType: !330, size: 64, offset: 1088)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2691, file: !1550, line: 533, baseType: !330, size: 64, offset: 1152)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2691, file: !1550, line: 535, baseType: !330, size: 64, offset: 1216)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2691, file: !1550, line: 536, baseType: !330, size: 64, offset: 1280)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2691, file: !1550, line: 537, baseType: !330, size: 64, offset: 1344)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2691, file: !1550, line: 538, baseType: !330, size: 64, offset: 1408)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2691, file: !1550, line: 539, baseType: !330, size: 64, offset: 1472)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2691, file: !1550, line: 540, baseType: !330, size: 64, offset: 1536)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2691, file: !1550, line: 541, baseType: !330, size: 64, offset: 1600)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2691, file: !1550, line: 542, baseType: !330, size: 64, offset: 1664)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2691, file: !1550, line: 543, baseType: !330, size: 64, offset: 1728)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2498, file: !1550, line: 833, baseType: !7, size: 32, offset: 7680)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2498, file: !1550, line: 836, baseType: !7, size: 32, offset: 7712)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2498, file: !1550, line: 837, baseType: !109, size: 32, offset: 7744)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2498, file: !1550, line: 838, baseType: !2725, size: 64, offset: 7808)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2727)
!2727 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !356, line: 19, baseType: !355)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2498, file: !1550, line: 839, baseType: !2729, size: 64, offset: 7872)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2498, file: !1550, line: 840, baseType: !2727, size: 64, offset: 7936)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2498, file: !1550, line: 841, baseType: !313, size: 64, offset: 8000)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2498, file: !1550, line: 843, baseType: !401, size: 16, offset: 8064)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2498, file: !1550, line: 845, baseType: !401, size: 16, offset: 8080)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2498, file: !1550, line: 848, baseType: !109, size: 32, offset: 8096)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2498, file: !1550, line: 849, baseType: !2736, size: 32, offset: 8128)
!2736 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1550, line: 718, size: 32, elements: !2737)
!2737 = !{!2738, !2745}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2736, file: !1550, line: 724, baseType: !2739, size: 32)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2736, file: !1550, line: 719, size: 32, elements: !2740)
!2740 = !{!2741, !2742, !2743, !2744}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2739, file: !1550, line: 720, baseType: !340, size: 8)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2739, file: !1550, line: 721, baseType: !340, size: 8, offset: 8)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2739, file: !1550, line: 722, baseType: !340, size: 8, offset: 16)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2739, file: !1550, line: 723, baseType: !340, size: 8, offset: 24)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2736, file: !1550, line: 725, baseType: !324, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2498, file: !1550, line: 850, baseType: !379, size: 128, offset: 8192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2498, file: !1550, line: 851, baseType: !2748, size: 64, offset: 8320)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1550, line: 60, flags: DIFlagFwdDecl)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2498, file: !1550, line: 855, baseType: !348, size: 64, offset: 8384)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2498, file: !1550, line: 856, baseType: !340, size: 8, offset: 8448)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2498, file: !1550, line: 857, baseType: !340, size: 8, offset: 8456)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2498, file: !1550, line: 858, baseType: !109, size: 32, offset: 8480)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2498, file: !1550, line: 859, baseType: !379, size: 128, offset: 8512)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2498, file: !1550, line: 860, baseType: !109, size: 32, offset: 8640)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2498, file: !1550, line: 861, baseType: !379, size: 128, offset: 8704)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2498, file: !1550, line: 873, baseType: !2758, size: 256, offset: 8832)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1550, line: 376, size: 256, elements: !2759)
!2759 = !{!2760, !2761, !2762, !2763}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2758, file: !1550, line: 381, baseType: !348, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2758, file: !1550, line: 384, baseType: !332, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2758, file: !1550, line: 389, baseType: !332, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2758, file: !1550, line: 392, baseType: !332, size: 64, offset: 192)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2498, file: !1550, line: 875, baseType: !379, size: 128, offset: 9088)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2498, file: !1550, line: 877, baseType: !2766, size: 320, offset: 9216)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2767, line: 86, size: 320, elements: !2768)
!2767 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2768 = !{!2769, !2770, !2771}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2766, file: !2767, line: 87, baseType: !109, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2766, file: !2767, line: 88, baseType: !379, size: 128, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2766, file: !2767, line: 89, baseType: !379, size: 128, offset: 192)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2498, file: !1550, line: 878, baseType: !918, size: 192, align: 64, offset: 9536)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2498, file: !1550, line: 881, baseType: !1201, size: 64, offset: 9728)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2498, file: !1550, line: 882, baseType: !1201, size: 64, offset: 9792)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2498, file: !1550, line: 884, baseType: !109, size: 32, offset: 9856)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2498, file: !1550, line: 885, baseType: !109, size: 32, offset: 9888)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2498, file: !1550, line: 886, baseType: !109, size: 32, offset: 9920)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2498, file: !1550, line: 888, baseType: !109, size: 32, offset: 9952)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2498, file: !1550, line: 890, baseType: !348, size: 64, offset: 9984)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2498, file: !1550, line: 893, baseType: !7, size: 32, offset: 10048)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2498, file: !1550, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2498, file: !1550, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2498, file: !1550, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2498, file: !1550, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2498, file: !1550, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2498, file: !1550, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2498, file: !1550, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2498, file: !1550, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2498, file: !1550, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2498, file: !1550, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2498, file: !1550, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2498, file: !1550, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2498, file: !1550, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2498, file: !1550, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2498, file: !1550, line: 969, baseType: !348, size: 64, offset: 10176)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2498, file: !1550, line: 971, baseType: !2797, size: 448, offset: 10240)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !82, line: 25, size: 448, elements: !2798)
!2798 = !{!2799, !2800, !2805}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2797, file: !82, line: 26, baseType: !348, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2797, file: !82, line: 27, baseType: !2801, size: 64, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!712, !2804}
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, scope: !2797, file: !82, line: 28, baseType: !2806, size: 320, offset: 128)
!2806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2797, file: !82, line: 28, size: 320, elements: !2807)
!2807 = !{!2808, !2818, !2843}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2806, file: !82, line: 37, baseType: !2809, size: 320)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2806, file: !82, line: 30, size: 320, elements: !2810)
!2810 = !{!2811, !2813, !2814, !2815, !2816, !2817}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2809, file: !82, line: 31, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2809, file: !82, line: 32, baseType: !324, size: 32, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2809, file: !82, line: 33, baseType: !324, size: 32, offset: 96)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2809, file: !82, line: 34, baseType: !324, size: 32, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2809, file: !82, line: 35, baseType: !330, size: 64, offset: 192)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2809, file: !82, line: 36, baseType: !2812, size: 64, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2806, file: !82, line: 47, baseType: !2819, size: 192)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2806, file: !82, line: 39, size: 192, elements: !2820)
!2820 = !{!2821, !2822, !2823, !2842}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2819, file: !82, line: 40, baseType: !2655, size: 32)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2819, file: !82, line: 41, baseType: !81, size: 32, offset: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, scope: !2819, file: !82, line: 42, baseType: !2824, size: 64, offset: 64)
!2824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2819, file: !82, line: 42, size: 64, elements: !2825)
!2825 = !{!2826, !2834}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2824, file: !82, line: 43, baseType: !2827, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2829, line: 7, size: 128, elements: !2830)
!2829 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2830 = !{!2831, !2833}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2828, file: !2829, line: 8, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !411, line: 93, baseType: !597)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2828, file: !2829, line: 9, baseType: !597, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2824, file: !82, line: 44, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2837, line: 7, size: 64, elements: !2838)
!2837 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2838 = !{!2839, !2841}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2836, file: !2837, line: 8, baseType: !2840, size: 32)
!2840 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2837, line: 5, baseType: !911)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2836, file: !2837, line: 9, baseType: !911, size: 32, offset: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2819, file: !82, line: 46, baseType: !330, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2806, file: !82, line: 55, baseType: !2844, size: 256)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2806, file: !82, line: 49, size: 256, elements: !2845)
!2845 = !{!2846, !2849, !2850, !2851, !2852}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2844, file: !82, line: 50, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !82, line: 14, flags: DIFlagFwdDecl)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2844, file: !82, line: 51, baseType: !109, size: 32, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2844, file: !82, line: 52, baseType: !109, size: 32, offset: 96)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2844, file: !82, line: 53, baseType: !348, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2844, file: !82, line: 54, baseType: !348, size: 64, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2498, file: !1550, line: 973, baseType: !2854, size: 32, offset: 10688)
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !363, line: 27, baseType: !2855)
!2855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !411, line: 28, baseType: !109)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2498, file: !1550, line: 974, baseType: !2854, size: 32, offset: 10720)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2498, file: !1550, line: 978, baseType: !348, size: 64, offset: 10752)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2498, file: !1550, line: 987, baseType: !2497, size: 64, offset: 10816)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2498, file: !1550, line: 990, baseType: !2497, size: 64, offset: 10880)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2498, file: !1550, line: 995, baseType: !379, size: 128, offset: 10944)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2498, file: !1550, line: 996, baseType: !379, size: 128, offset: 11072)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2498, file: !1550, line: 997, baseType: !2497, size: 64, offset: 11200)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2498, file: !1550, line: 1005, baseType: !379, size: 128, offset: 11264)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2498, file: !1550, line: 1006, baseType: !379, size: 128, offset: 11392)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2498, file: !1550, line: 1009, baseType: !828, size: 64, offset: 11520)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2498, file: !1550, line: 1010, baseType: !2867, size: 512, offset: 11584)
!2867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 512, elements: !850)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2498, file: !1550, line: 1011, baseType: !379, size: 128, offset: 12096)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2498, file: !1550, line: 1012, baseType: !379, size: 128, offset: 12224)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2498, file: !1550, line: 1014, baseType: !1776, size: 64, offset: 12352)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2498, file: !1550, line: 1017, baseType: !1918, size: 64, offset: 12416)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2498, file: !1550, line: 1020, baseType: !1918, size: 64, offset: 12480)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2498, file: !1550, line: 1023, baseType: !313, size: 64, offset: 12544)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2498, file: !1550, line: 1025, baseType: !330, size: 64, offset: 12608)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2498, file: !1550, line: 1026, baseType: !330, size: 64, offset: 12672)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2498, file: !1550, line: 1031, baseType: !330, size: 64, offset: 12736)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2498, file: !1550, line: 1032, baseType: !2878, size: 192, offset: 12800)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1550, line: 324, size: 192, elements: !2879)
!2879 = !{!2880, !2881, !2882}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2878, file: !1550, line: 326, baseType: !330, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2878, file: !1550, line: 327, baseType: !330, size: 64, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2878, file: !1550, line: 328, baseType: !794, size: 32, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2498, file: !1550, line: 1041, baseType: !348, size: 64, offset: 12992)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2498, file: !1550, line: 1042, baseType: !348, size: 64, offset: 13056)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2498, file: !1550, line: 1045, baseType: !330, size: 64, offset: 13120)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2498, file: !1550, line: 1048, baseType: !330, size: 64, offset: 13184)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2498, file: !1550, line: 1051, baseType: !348, size: 64, offset: 13248)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2498, file: !1550, line: 1052, baseType: !348, size: 64, offset: 13312)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2498, file: !1550, line: 1055, baseType: !2890, size: 640, offset: 13376)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2891, line: 132, size: 640, elements: !2892)
!2891 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2892 = !{!2893, !2899, !2900}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2890, file: !2891, line: 133, baseType: !2894, size: 576)
!2894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2895, size: 576, elements: !678)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2891, line: 117, size: 192, elements: !2896)
!2896 = !{!2897, !2898}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2895, file: !2891, line: 118, baseType: !330, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2895, file: !2891, line: 119, baseType: !2664, size: 128, offset: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2890, file: !2891, line: 134, baseType: !7, size: 32, offset: 576)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2890, file: !2891, line: 135, baseType: !7, size: 32, offset: 608)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2498, file: !1550, line: 1058, baseType: !2902, size: 448, offset: 14016)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2891, line: 144, size: 448, elements: !2903)
!2903 = !{!2904, !2905, !2906}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2902, file: !2891, line: 145, baseType: !767, size: 128, align: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2902, file: !2891, line: 146, baseType: !789, size: 256, offset: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2902, file: !2891, line: 147, baseType: !7, size: 32, offset: 384)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2498, file: !1550, line: 1064, baseType: !876, size: 64, offset: 14464)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2498, file: !1550, line: 1067, baseType: !876, size: 64, offset: 14528)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2498, file: !1550, line: 1070, baseType: !876, size: 64, offset: 14592)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2498, file: !1550, line: 1074, baseType: !903, size: 64, offset: 14656)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2498, file: !1550, line: 1084, baseType: !2912, size: 128, offset: 14720)
!2912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 128, elements: !2913)
!2913 = !{!2914}
!2914 = !DISubrange(count: 16)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2498, file: !1550, line: 1086, baseType: !2916, size: 64, offset: 14848)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1550, line: 55, flags: DIFlagFwdDecl)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2498, file: !1550, line: 1089, baseType: !2919, size: 64, offset: 14912)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2920, line: 12, size: 64, elements: !2921)
!2920 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2921 = !{!2922}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2919, file: !2920, line: 13, baseType: !2923, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2920, line: 8, flags: DIFlagFwdDecl)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2498, file: !1550, line: 1090, baseType: !2926, size: 128, offset: 14976)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2927, line: 13, size: 128, elements: !2928)
!2927 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2928 = !{!2929}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2926, file: !2927, line: 14, baseType: !379, size: 128)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2498, file: !1550, line: 1097, baseType: !2931, size: 64, offset: 15104)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1550, line: 50, flags: DIFlagFwdDecl)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2498, file: !1550, line: 1100, baseType: !2934, size: 64, offset: 15168)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1550, line: 1100, flags: DIFlagFwdDecl)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2498, file: !1550, line: 1103, baseType: !2937, size: 64, offset: 15232)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1550, line: 53, flags: DIFlagFwdDecl)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2498, file: !1550, line: 1107, baseType: !2940, size: 64, offset: 15296)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1550, line: 56, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2498, file: !1550, line: 1110, baseType: !2943, size: 64, offset: 15360)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2945, line: 93, size: 8768, elements: !2946)
!2945 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2946 = !{!2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2994, !3003, !3004, !3006, !3007, !3008, !3011, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3049, !3050, !3057, !3067, !3070, !3071, !3074, !3075, !3076, !3077, !3078, !3079}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2944, file: !2945, line: 94, baseType: !832, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2944, file: !2945, line: 95, baseType: !510, size: 32, offset: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2944, file: !2945, line: 96, baseType: !109, size: 32, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2944, file: !2945, line: 97, baseType: !109, size: 32, offset: 96)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2944, file: !2945, line: 98, baseType: !379, size: 128, offset: 128)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2944, file: !2945, line: 100, baseType: !854, size: 192, offset: 256)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2944, file: !2945, line: 103, baseType: !2497, size: 64, offset: 448)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2944, file: !2945, line: 106, baseType: !2955, size: 192, offset: 512)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1073, line: 32, size: 192, elements: !2956)
!2956 = !{!2957, !2958}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2955, file: !1073, line: 33, baseType: !379, size: 128)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2955, file: !1073, line: 34, baseType: !2959, size: 64, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2960, line: 25, baseType: !2961)
!2960 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2960, line: 23, size: 64, elements: !2962)
!2962 = !{!2963}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2961, file: !2960, line: 24, baseType: !359, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2944, file: !2945, line: 109, baseType: !841, size: 64, offset: 704)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2944, file: !2945, line: 112, baseType: !109, size: 32, offset: 768)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2944, file: !2945, line: 114, baseType: !109, size: 32, offset: 800)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2944, file: !2945, line: 115, baseType: !2497, size: 64, offset: 832)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2944, file: !2945, line: 118, baseType: !109, size: 32, offset: 896)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2944, file: !2945, line: 119, baseType: !7, size: 32, offset: 928)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2944, file: !2945, line: 121, baseType: !2971, size: 64, offset: 960)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2945, line: 80, size: 448, elements: !2973)
!2973 = !{!2974, !2975, !2981}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2972, file: !2945, line: 81, baseType: !510, size: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2972, file: !2945, line: 82, baseType: !2976, size: 128, offset: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2945, line: 75, size: 128, elements: !2977)
!2977 = !{!2978, !2979}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2976, file: !2945, line: 76, baseType: !2497, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2976, file: !2945, line: 77, baseType: !2980, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2972, file: !2945, line: 83, baseType: !1777, size: 256, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2944, file: !2945, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2944, file: !2945, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2944, file: !2945, line: 138, baseType: !7, size: 32, offset: 1056)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2944, file: !2945, line: 139, baseType: !379, size: 128, offset: 1088)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2944, file: !2945, line: 142, baseType: !2608, size: 512, offset: 1216)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2944, file: !2945, line: 143, baseType: !2616, size: 64, offset: 1728)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2944, file: !2945, line: 150, baseType: !2989, size: 256, offset: 1792)
!2989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2990, size: 256, elements: !345)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2945, line: 38, size: 128, elements: !2991)
!2991 = !{!2992, !2993}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2990, file: !2945, line: 39, baseType: !330, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2990, file: !2945, line: 40, baseType: !330, size: 64, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2944, file: !2945, line: 156, baseType: !2995, size: 192, offset: 2048)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2945, line: 66, size: 192, elements: !2996)
!2996 = !{!2997}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2995, file: !2945, line: 67, baseType: !2998, size: 192)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2945, line: 47, size: 192, elements: !2999)
!2999 = !{!3000, !3001, !3002}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2998, file: !2945, line: 48, baseType: !782, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2998, file: !2945, line: 49, baseType: !782, size: 64, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2998, file: !2945, line: 50, baseType: !782, size: 64, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2944, file: !2945, line: 160, baseType: !2890, size: 640, offset: 2240)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2944, file: !2945, line: 163, baseType: !3005, size: 256, offset: 2880)
!3005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !828, size: 256, elements: !850)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2944, file: !2945, line: 169, baseType: !828, size: 64, offset: 3136)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2944, file: !2945, line: 172, baseType: !109, size: 32, offset: 3200)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2944, file: !2945, line: 174, baseType: !3009, size: 64, offset: 3264)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2945, line: 174, flags: DIFlagFwdDecl)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2944, file: !2945, line: 185, baseType: !3012, size: 64, offset: 3328)
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !441, line: 860, baseType: !3013)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 853, size: 64, elements: !3014)
!3014 = !{!3015, !3016}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3013, file: !441, line: 858, baseType: !440, size: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3013, file: !441, line: 859, baseType: !490, size: 32, offset: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2944, file: !2945, line: 186, baseType: !330, size: 64, offset: 3392)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2944, file: !2945, line: 186, baseType: !330, size: 64, offset: 3456)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2944, file: !2945, line: 186, baseType: !330, size: 64, offset: 3520)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2944, file: !2945, line: 186, baseType: !330, size: 64, offset: 3584)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2944, file: !2945, line: 187, baseType: !330, size: 64, offset: 3648)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2944, file: !2945, line: 188, baseType: !330, size: 64, offset: 3712)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2944, file: !2945, line: 189, baseType: !2878, size: 192, offset: 3776)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2944, file: !2945, line: 190, baseType: !348, size: 64, offset: 3968)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2944, file: !2945, line: 190, baseType: !348, size: 64, offset: 4032)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2944, file: !2945, line: 190, baseType: !348, size: 64, offset: 4096)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2944, file: !2945, line: 190, baseType: !348, size: 64, offset: 4160)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2944, file: !2945, line: 191, baseType: !348, size: 64, offset: 4224)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2944, file: !2945, line: 191, baseType: !348, size: 64, offset: 4288)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2944, file: !2945, line: 191, baseType: !348, size: 64, offset: 4352)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2944, file: !2945, line: 191, baseType: !348, size: 64, offset: 4416)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2944, file: !2945, line: 192, baseType: !348, size: 64, offset: 4480)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2944, file: !2945, line: 192, baseType: !348, size: 64, offset: 4544)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2944, file: !2945, line: 192, baseType: !348, size: 64, offset: 4608)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2944, file: !2945, line: 192, baseType: !348, size: 64, offset: 4672)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2944, file: !2945, line: 193, baseType: !348, size: 64, offset: 4736)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2944, file: !2945, line: 193, baseType: !348, size: 64, offset: 4800)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2944, file: !2945, line: 194, baseType: !3039, size: 448, offset: 4864)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3040, line: 12, size: 448, elements: !3041)
!3040 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3041 = !{!3042, !3043, !3044, !3045, !3046, !3047, !3048}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3039, file: !3040, line: 15, baseType: !330, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3039, file: !3040, line: 17, baseType: !330, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3039, file: !3040, line: 19, baseType: !330, size: 64, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3039, file: !3040, line: 21, baseType: !330, size: 64, offset: 192)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3039, file: !3040, line: 29, baseType: !330, size: 64, offset: 256)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3039, file: !3040, line: 35, baseType: !330, size: 64, offset: 320)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3039, file: !3040, line: 44, baseType: !330, size: 64, offset: 384)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2944, file: !2945, line: 202, baseType: !332, size: 64, offset: 5312)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2944, file: !2945, line: 213, baseType: !3051, size: 2048, offset: 5376)
!3051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3052, size: 2048, elements: !2913)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3053, line: 43, size: 128, elements: !3054)
!3053 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3054 = !{!3055, !3056}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3052, file: !3053, line: 44, baseType: !724, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3052, file: !3053, line: 45, baseType: !724, size: 64, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2944, file: !2945, line: 216, baseType: !3058, size: 448, offset: 7424)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2945, line: 30, size: 448, elements: !3059)
!3059 = !{!3060, !3061, !3062, !3063, !3064, !3065, !3066}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3058, file: !2945, line: 31, baseType: !109, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3058, file: !2945, line: 32, baseType: !712, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3058, file: !2945, line: 33, baseType: !348, size: 64, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3058, file: !2945, line: 34, baseType: !330, size: 64, offset: 192)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3058, file: !2945, line: 34, baseType: !330, size: 64, offset: 256)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3058, file: !2945, line: 35, baseType: !348, size: 64, offset: 320)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3058, file: !2945, line: 35, baseType: !348, size: 64, offset: 384)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2944, file: !2945, line: 219, baseType: !3068, size: 64, offset: 7872)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2945, line: 219, flags: DIFlagFwdDecl)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2944, file: !2945, line: 222, baseType: !7, size: 32, offset: 7936)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2944, file: !2945, line: 223, baseType: !3072, size: 64, offset: 8000)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2945, line: 223, flags: DIFlagFwdDecl)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2944, file: !2945, line: 230, baseType: !985, size: 8, offset: 8064)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2944, file: !2945, line: 231, baseType: !954, size: 16, offset: 8080)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2944, file: !2945, line: 232, baseType: !954, size: 16, offset: 8096)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2944, file: !2945, line: 234, baseType: !1201, size: 64, offset: 8128)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2944, file: !2945, line: 237, baseType: !789, size: 256, offset: 8192)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2944, file: !2945, line: 243, baseType: !926, size: 320, offset: 8448)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2498, file: !1550, line: 1111, baseType: !3081, size: 64, offset: 15424)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2945, line: 20, size: 16640, elements: !3083)
!3083 = !{!3084, !3085, !3086, !3087}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3082, file: !2945, line: 21, baseType: !490, size: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3082, file: !2945, line: 22, baseType: !832, size: 32, offset: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3082, file: !2945, line: 23, baseType: !854, size: 192, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3082, file: !2945, line: 24, baseType: !3088, size: 16384, offset: 256)
!3088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3089, size: 16384, elements: !682)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1073, line: 51, size: 256, elements: !3090)
!3090 = !{!3091}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3089, file: !1073, line: 52, baseType: !3092, size: 256)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1073, line: 37, size: 256, elements: !3093)
!3093 = !{!3094, !3101, !3102, !3106}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3092, file: !1073, line: 39, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3096, line: 83, baseType: !3097)
!3096 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3096, line: 82, baseType: !3099)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{null, !109}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3092, file: !1073, line: 40, baseType: !348, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3092, file: !1073, line: 46, baseType: !3103, size: 64, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3096, line: 86, baseType: !3104)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3096, line: 85, baseType: !2122)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3092, file: !1073, line: 48, baseType: !2959, size: 64, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2498, file: !1550, line: 1112, baseType: !2959, size: 64, offset: 15488)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2498, file: !1550, line: 1113, baseType: !2959, size: 64, offset: 15552)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2498, file: !1550, line: 1115, baseType: !2959, size: 64, offset: 15616)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2498, file: !1550, line: 1116, baseType: !2955, size: 192, offset: 15680)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2498, file: !1550, line: 1117, baseType: !348, size: 64, offset: 15872)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2498, file: !1550, line: 1118, baseType: !722, size: 64, offset: 15936)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2498, file: !1550, line: 1119, baseType: !7, size: 32, offset: 16000)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2498, file: !1550, line: 1121, baseType: !770, size: 64, offset: 16064)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2498, file: !1550, line: 1125, baseType: !3116, size: 64, offset: 16128)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1550, line: 43, flags: DIFlagFwdDecl)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2498, file: !1550, line: 1127, baseType: !404, size: 32, offset: 16192)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2498, file: !1550, line: 1128, baseType: !7, size: 32, offset: 16224)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2498, file: !1550, line: 1130, baseType: !3121, size: 128, offset: 16256)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3122, line: 37, size: 128, elements: !3123)
!3122 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3123 = !{!3124, !3125, !3126}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3121, file: !3122, line: 38, baseType: !109, size: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3121, file: !3122, line: 39, baseType: !510, size: 32, offset: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3121, file: !3122, line: 40, baseType: !3127, size: 64, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3122, line: 24, flags: DIFlagFwdDecl)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2498, file: !1550, line: 1131, baseType: !3130, size: 256, offset: 16384)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3131, line: 12, size: 256, elements: !3132)
!3131 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3132 = !{!3133, !3134, !3135, !3136}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3130, file: !3131, line: 13, baseType: !574, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3130, file: !3131, line: 14, baseType: !348, size: 64, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3130, file: !3131, line: 15, baseType: !348, size: 64, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3130, file: !3131, line: 16, baseType: !985, size: 8, offset: 192)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2498, file: !1550, line: 1134, baseType: !330, size: 64, offset: 16640)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2498, file: !1550, line: 1135, baseType: !330, size: 64, offset: 16704)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2498, file: !1550, line: 1138, baseType: !490, size: 32, offset: 16768)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2498, file: !1550, line: 1141, baseType: !794, size: 32, offset: 16800)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2498, file: !1550, line: 1143, baseType: !3142, size: 64, offset: 16832)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1550, line: 735, size: 64, elements: !3143)
!3143 = !{!3144}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3142, file: !1550, line: 736, baseType: !3145, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2498, file: !1550, line: 1147, baseType: !2667, size: 128, offset: 16896)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2498, file: !1550, line: 1149, baseType: !2497, size: 64, offset: 17024)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2498, file: !1550, line: 1151, baseType: !3149, size: 64, offset: 17088)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1550, line: 1151, flags: DIFlagFwdDecl)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2498, file: !1550, line: 1188, baseType: !313, size: 64, offset: 17152)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2498, file: !1550, line: 1191, baseType: !3153, size: 64, offset: 17216)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1550, line: 44, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2498, file: !1550, line: 1194, baseType: !3156, size: 64, offset: 17280)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1550, line: 45, flags: DIFlagFwdDecl)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2498, file: !1550, line: 1197, baseType: !3159, size: 64, offset: 17344)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1550, line: 61, flags: DIFlagFwdDecl)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2498, file: !1550, line: 1199, baseType: !3162, size: 64, offset: 17408)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3164, line: 99, size: 128, elements: !3165)
!3164 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3165 = !{!3166, !3167, !3168}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3163, file: !3164, line: 100, baseType: !780, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3163, file: !3164, line: 101, baseType: !510, size: 32, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3163, file: !3164, line: 103, baseType: !401, size: 16, offset: 96)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2498, file: !1550, line: 1202, baseType: !3170, size: 64, offset: 17472)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1550, line: 48, flags: DIFlagFwdDecl)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2498, file: !1550, line: 1205, baseType: !348, size: 64, offset: 17536)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2498, file: !1550, line: 1206, baseType: !3174, size: 64, offset: 17600)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1073, line: 14, baseType: !3176)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1073, line: 12, size: 384, elements: !3177)
!3177 = !{!3178}
!3178 = !DIDerivedType(tag: DW_TAG_member, scope: !3176, file: !1073, line: 13, baseType: !3179, size: 384)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3176, file: !1073, line: 13, size: 384, elements: !3180)
!3180 = !{!3181, !3182, !3183, !3184}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3179, file: !1073, line: 13, baseType: !109, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3179, file: !1073, line: 13, baseType: !109, size: 32, offset: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3179, file: !1073, line: 13, baseType: !109, size: 32, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3179, file: !1073, line: 13, baseType: !3185, size: 256, offset: 128)
!3185 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3186, line: 37, size: 256, elements: !3187)
!3186 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3187 = !{!3188, !3193, !3206, !3212, !3221, !3248, !3253}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3185, file: !3186, line: 42, baseType: !3189, size: 64)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3185, file: !3186, line: 39, size: 64, elements: !3190)
!3190 = !{!3191, !3192}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3189, file: !3186, line: 40, baseType: !2855, size: 32)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3189, file: !3186, line: 41, baseType: !410, size: 32, offset: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3185, file: !3186, line: 50, baseType: !3194, size: 192)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3185, file: !3186, line: 45, size: 192, elements: !3195)
!3195 = !{!3196, !3198, !3199, !3205}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3194, file: !3186, line: 46, baseType: !3197, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !411, line: 95, baseType: !109)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3194, file: !3186, line: 47, baseType: !109, size: 32, offset: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3194, file: !3186, line: 48, baseType: !3200, size: 64, offset: 64)
!3200 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3186, line: 11, baseType: !3201)
!3201 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3186, line: 8, size: 64, elements: !3202)
!3202 = !{!3203, !3204}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3201, file: !3186, line: 9, baseType: !109, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3201, file: !3186, line: 10, baseType: !313, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3194, file: !3186, line: 49, baseType: !109, size: 32, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3185, file: !3186, line: 57, baseType: !3207, size: 128)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3185, file: !3186, line: 53, size: 128, elements: !3208)
!3208 = !{!3209, !3210, !3211}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3207, file: !3186, line: 54, baseType: !2855, size: 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3207, file: !3186, line: 55, baseType: !410, size: 32, offset: 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3207, file: !3186, line: 56, baseType: !3200, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3185, file: !3186, line: 66, baseType: !3213, size: 256)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3185, file: !3186, line: 60, size: 256, elements: !3214)
!3214 = !{!3215, !3216, !3217, !3218, !3220}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3213, file: !3186, line: 61, baseType: !2855, size: 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3213, file: !3186, line: 62, baseType: !410, size: 32, offset: 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3213, file: !3186, line: 63, baseType: !109, size: 32, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3213, file: !3186, line: 64, baseType: !3219, size: 64, offset: 128)
!3219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !411, line: 94, baseType: !711)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3213, file: !3186, line: 65, baseType: !3219, size: 64, offset: 192)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3185, file: !3186, line: 105, baseType: !3222, size: 256)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3185, file: !3186, line: 69, size: 256, elements: !3223)
!3223 = !{!3224, !3225}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3222, file: !3186, line: 70, baseType: !313, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, scope: !3222, file: !3186, line: 79, baseType: !3226, size: 192, offset: 64)
!3226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3222, file: !3186, line: 79, size: 192, elements: !3227)
!3227 = !{!3228, !3229, !3230, !3237, !3242}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3226, file: !3186, line: 81, baseType: !109, size: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3226, file: !3186, line: 86, baseType: !954, size: 16)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3226, file: !3186, line: 92, baseType: !3231, size: 192)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3226, file: !3186, line: 88, size: 192, elements: !3232)
!3232 = !{!3233, !3235, !3236}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3231, file: !3186, line: 89, baseType: !3234, size: 64)
!3234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 64, elements: !2651)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3231, file: !3186, line: 90, baseType: !313, size: 64, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3231, file: !3186, line: 91, baseType: !313, size: 64, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3226, file: !3186, line: 97, baseType: !3238, size: 96)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3226, file: !3186, line: 94, size: 96, elements: !3239)
!3239 = !{!3240, !3241}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3238, file: !3186, line: 95, baseType: !3234, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3238, file: !3186, line: 96, baseType: !326, size: 32, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3226, file: !3186, line: 103, baseType: !3243, size: 128)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3226, file: !3186, line: 99, size: 128, elements: !3244)
!3244 = !{!3245, !3246, !3247}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3243, file: !3186, line: 100, baseType: !348, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3243, file: !3186, line: 101, baseType: !326, size: 32, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3243, file: !3186, line: 102, baseType: !326, size: 32, offset: 96)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3185, file: !3186, line: 111, baseType: !3249, size: 128)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3185, file: !3186, line: 108, size: 128, elements: !3250)
!3250 = !{!3251, !3252}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3249, file: !3186, line: 109, baseType: !712, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3249, file: !3186, line: 110, baseType: !109, size: 32, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3185, file: !3186, line: 118, baseType: !3254, size: 128)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3185, file: !3186, line: 114, size: 128, elements: !3255)
!3255 = !{!3256, !3257, !3258}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3254, file: !3186, line: 115, baseType: !313, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3254, file: !3186, line: 116, baseType: !109, size: 32, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3254, file: !3186, line: 117, baseType: !7, size: 32, offset: 96)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2498, file: !1550, line: 1208, baseType: !3039, size: 448, offset: 17664)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2498, file: !1550, line: 1215, baseType: !330, size: 64, offset: 18112)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2498, file: !1550, line: 1217, baseType: !330, size: 64, offset: 18176)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2498, file: !1550, line: 1219, baseType: !330, size: 64, offset: 18240)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2498, file: !1550, line: 1223, baseType: !3264, size: 64, offset: 18304)
!3264 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3265, line: 99, baseType: !3266)
!3265 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3265, line: 99, size: 64, elements: !3267)
!3267 = !{!3268}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3266, file: !3265, line: 99, baseType: !359, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2498, file: !1550, line: 1225, baseType: !440, size: 32, offset: 18368)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2498, file: !1550, line: 1226, baseType: !109, size: 32, offset: 18400)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2498, file: !1550, line: 1227, baseType: !109, size: 32, offset: 18432)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2498, file: !1550, line: 1231, baseType: !3273, size: 64, offset: 18496)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1550, line: 1231, flags: DIFlagFwdDecl)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2498, file: !1550, line: 1233, baseType: !379, size: 128, offset: 18560)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2498, file: !1550, line: 1240, baseType: !3277, size: 64, offset: 18688)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1550, line: 62, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2498, file: !1550, line: 1242, baseType: !3280, size: 64, offset: 18752)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1550, line: 1242, flags: DIFlagFwdDecl)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2498, file: !1550, line: 1244, baseType: !379, size: 128, offset: 18816)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2498, file: !1550, line: 1245, baseType: !3284, size: 64, offset: 18944)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1550, line: 51, flags: DIFlagFwdDecl)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2498, file: !1550, line: 1246, baseType: !789, size: 256, offset: 19008)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2498, file: !1550, line: 1247, baseType: !7, size: 32, offset: 19264)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2498, file: !1550, line: 1250, baseType: !3289, size: 64, offset: 19328)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1550, line: 57, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2498, file: !1550, line: 1251, baseType: !789, size: 256, offset: 19392)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2498, file: !1550, line: 1252, baseType: !379, size: 128, offset: 19648)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2498, file: !1550, line: 1259, baseType: !1496, size: 64, offset: 19776)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2498, file: !1550, line: 1260, baseType: !954, size: 16, offset: 19840)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2498, file: !1550, line: 1261, baseType: !954, size: 16, offset: 19856)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2498, file: !1550, line: 1314, baseType: !3297, size: 64, offset: 19904)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3299, line: 62, size: 256, align: 256, elements: !3300)
!3299 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3300 = !{!3301, !3302, !3303, !3304, !3305, !3306, !3307}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3298, file: !3299, line: 75, baseType: !326, size: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3298, file: !3299, line: 90, baseType: !326, size: 32, offset: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3298, file: !3299, line: 112, baseType: !331, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3298, file: !3299, line: 132, baseType: !326, size: 32, offset: 128)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3298, file: !3299, line: 140, baseType: !326, size: 32, offset: 160)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3298, file: !3299, line: 149, baseType: !326, size: 32, offset: 192)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3298, file: !3299, line: 154, baseType: !3308, offset: 224)
!3308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, elements: !869)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2498, file: !1550, line: 1315, baseType: !324, size: 32, offset: 19968)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2498, file: !1550, line: 1316, baseType: !324, size: 32, offset: 20000)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2498, file: !1550, line: 1321, baseType: !348, size: 64, offset: 20032)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2498, file: !1550, line: 1325, baseType: !109, size: 32, offset: 20096)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2498, file: !1550, line: 1326, baseType: !109, size: 32, offset: 20128)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2498, file: !1550, line: 1327, baseType: !109, size: 32, offset: 20160)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2498, file: !1550, line: 1328, baseType: !109, size: 32, offset: 20192)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2498, file: !1550, line: 1329, baseType: !767, size: 128, align: 64, offset: 20224)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2498, file: !1550, line: 1332, baseType: !3318, size: 128, offset: 20352)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3319, line: 51, size: 128, elements: !3320)
!3319 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3320 = !{!3321, !3326, !3327}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3318, file: !3319, line: 60, baseType: !3322, size: 64)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3323, line: 7, size: 64, elements: !3324)
!3323 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3324 = !{!3325}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3322, file: !3323, line: 12, baseType: !355, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3318, file: !3319, line: 63, baseType: !985, size: 8, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3318, file: !3319, line: 70, baseType: !985, size: 8, offset: 72)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2498, file: !1550, line: 1335, baseType: !1548, size: 64, offset: 20480)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2498, file: !1550, line: 1337, baseType: !3330, size: 128, offset: 20544)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3319, line: 39, size: 128, elements: !3331)
!3331 = !{!3332, !3333, !3334}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3330, file: !3319, line: 40, baseType: !365, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3330, file: !3319, line: 42, baseType: !326, size: 32, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3330, file: !3319, line: 43, baseType: !326, size: 32, offset: 96)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2498, file: !1550, line: 1340, baseType: !3336, size: 64, offset: 20672)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1550, line: 69, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2498, file: !1550, line: 1351, baseType: !109, size: 32, offset: 20736)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2498, file: !1550, line: 1352, baseType: !109, size: 32, offset: 20768)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2498, file: !1550, line: 1354, baseType: !348, size: 64, offset: 20800)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2498, file: !1550, line: 1364, baseType: !330, size: 64, offset: 20864)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2498, file: !1550, line: 1365, baseType: !330, size: 64, offset: 20928)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2498, file: !1550, line: 1412, baseType: !348, size: 64, offset: 20992)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2498, file: !1550, line: 1453, baseType: !3345, size: 64, offset: 21056)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1550, line: 1453, flags: DIFlagFwdDecl)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2498, file: !1550, line: 1457, baseType: !3348, size: 64, offset: 21120)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !88, line: 61, size: 576, elements: !3350)
!3350 = !{!3351, !3352, !3371, !3374, !3375, !3408, !3418}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3349, file: !88, line: 62, baseType: !87, size: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, scope: !3349, file: !88, line: 64, baseType: !3353, size: 192, offset: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3349, file: !88, line: 64, size: 192, elements: !3354)
!3354 = !{!3355, !3366}
!3355 = !DIDerivedType(tag: DW_TAG_member, scope: !3353, file: !88, line: 65, baseType: !3356, size: 192)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3353, file: !88, line: 65, size: 192, elements: !3357)
!3357 = !{!3358, !3365}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3356, file: !88, line: 66, baseType: !3359, size: 128)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3360, line: 50, size: 128, elements: !3361)
!3360 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3361 = !{!3362, !3363, !3364}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3359, file: !3360, line: 52, baseType: !348, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3359, file: !3360, line: 54, baseType: !7, size: 32, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3359, file: !3360, line: 55, baseType: !7, size: 32, offset: 96)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3356, file: !88, line: 67, baseType: !348, size: 64, offset: 128)
!3366 = !DIDerivedType(tag: DW_TAG_member, scope: !3353, file: !88, line: 70, baseType: !3367, size: 192)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3353, file: !88, line: 70, size: 192, elements: !3368)
!3368 = !{!3369, !3370}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3367, file: !88, line: 71, baseType: !767, size: 128, align: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3367, file: !88, line: 72, baseType: !348, size: 64, offset: 128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3349, file: !88, line: 76, baseType: !3372, size: 64, offset: 256)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !88, line: 76, flags: DIFlagFwdDecl)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3349, file: !88, line: 77, baseType: !348, size: 64, offset: 320)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3349, file: !88, line: 79, baseType: !3376, size: 64, offset: 384)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3360, line: 25, size: 256, elements: !3378)
!3378 = !{!3379, !3385, !3389}
!3379 = !DIDerivedType(tag: DW_TAG_member, scope: !3377, file: !3360, line: 26, baseType: !3380, size: 128)
!3380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3377, file: !3360, line: 26, size: 128, elements: !3381)
!3381 = !{!3382, !3384}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3380, file: !3360, line: 27, baseType: !3383, size: 128)
!3383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 128, elements: !2913)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3380, file: !3360, line: 28, baseType: !3383, size: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3377, file: !3360, line: 31, baseType: !3386, size: 64, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3388)
!3388 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3360, line: 23, flags: DIFlagFwdDecl)
!3389 = !DIDerivedType(tag: DW_TAG_member, scope: !3377, file: !3360, line: 33, baseType: !3390, size: 64, offset: 192)
!3390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3377, file: !3360, line: 33, size: 64, elements: !3391)
!3391 = !{!3392, !3398, !3403}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3390, file: !3360, line: 38, baseType: !3393, size: 64)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !3360, line: 34, size: 64, elements: !3394)
!3394 = !{!3395, !3396, !3397}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3393, file: !3360, line: 35, baseType: !911, size: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3393, file: !3360, line: 36, baseType: !340, size: 8, offset: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3393, file: !3360, line: 37, baseType: !340, size: 8, offset: 40)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3390, file: !3360, line: 42, baseType: !3399, size: 16)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !3360, line: 39, size: 16, elements: !3400)
!3400 = !{!3401, !3402}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3399, file: !3360, line: 40, baseType: !340, size: 8)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3399, file: !3360, line: 41, baseType: !340, size: 8, offset: 8)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3390, file: !3360, line: 46, baseType: !3404, size: 16)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !3360, line: 43, size: 16, elements: !3405)
!3405 = !{!3406, !3407}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3404, file: !3360, line: 44, baseType: !340, size: 8)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3404, file: !3360, line: 45, baseType: !340, size: 8, offset: 8)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3349, file: !88, line: 81, baseType: !3409, size: 64, offset: 448)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !88, line: 85, size: 384, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415, !3416, !3417}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3410, file: !88, line: 86, baseType: !3372, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3410, file: !88, line: 87, baseType: !348, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3410, file: !88, line: 88, baseType: !348, size: 64, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3410, file: !88, line: 89, baseType: !348, size: 64, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3410, file: !88, line: 90, baseType: !985, size: 8, offset: 256)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3410, file: !88, line: 92, baseType: !3409, size: 64, offset: 320)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3349, file: !88, line: 82, baseType: !7, size: 32, offset: 512)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2498, file: !1550, line: 1463, baseType: !3420, offset: 21184)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1550, line: 739, elements: !1222)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2498, file: !1550, line: 1470, baseType: !767, size: 128, align: 64, offset: 21184)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2498, file: !1550, line: 1471, baseType: !832, size: 32, offset: 21312)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2498, file: !1550, line: 1472, baseType: !109, size: 32, offset: 21344)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2498, file: !1550, line: 1474, baseType: !2497, size: 64, offset: 21376)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2498, file: !1550, line: 1475, baseType: !2018, size: 320, offset: 21440)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2498, file: !1550, line: 1478, baseType: !3427, size: 64, offset: 21760)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1150, line: 49, size: 512, elements: !3429)
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3436, !3437, !3438, !3439}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3428, file: !1150, line: 50, baseType: !3427, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3428, file: !1150, line: 51, baseType: !313, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3428, file: !1150, line: 52, baseType: !348, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3428, file: !1150, line: 53, baseType: !348, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3428, file: !1150, line: 54, baseType: !3435, size: 64, offset: 256)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3428, file: !1150, line: 56, baseType: !7, size: 32, offset: 320)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3428, file: !1150, line: 58, baseType: !7, size: 32, offset: 352)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3428, file: !1150, line: 59, baseType: !364, size: 64, offset: 384)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3428, file: !1150, line: 60, baseType: !1317, size: 64, offset: 448)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2498, file: !1550, line: 1482, baseType: !832, size: 32, offset: 21824)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2498, file: !1550, line: 1489, baseType: !313, size: 64, offset: 21888)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2498, file: !1550, line: 1504, baseType: !313, size: 64, offset: 21952)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2498, file: !1550, line: 1505, baseType: !331, size: 64, offset: 22016)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2498, file: !1550, line: 1506, baseType: !330, size: 64, offset: 22080)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2498, file: !1550, line: 1507, baseType: !331, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2498, file: !1550, line: 1508, baseType: !331, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2498, file: !1550, line: 1509, baseType: !331, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2498, file: !1550, line: 1510, baseType: !767, size: 128, align: 64, offset: 22208)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2498, file: !1550, line: 1511, baseType: !109, size: 32, offset: 22336)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2498, file: !1550, line: 1515, baseType: !3451, size: 64, offset: 22400)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !762, line: 56, size: 64, elements: !3452)
!3452 = !{!3453}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3451, file: !762, line: 57, baseType: !765, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2498, file: !1550, line: 1518, baseType: !3451, size: 64, offset: 22464)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2498, file: !1550, line: 1528, baseType: !767, size: 128, align: 64, offset: 22528)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2498, file: !1550, line: 1552, baseType: !3457, size: 35328, offset: 23040)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3458, line: 430, size: 35328, elements: !3459)
!3458 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3459 = !{!3460, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3489, !3490, !3491, !3492, !3493, !3494, !3497, !3498, !3499, !3500}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3457, file: !3458, line: 432, baseType: !3461, size: 192)
!3461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3462, size: 192, elements: !678)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3463, line: 16, size: 64, elements: !3464)
!3463 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3464 = !{!3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3462, file: !3463, line: 17, baseType: !523, size: 16)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3462, file: !3463, line: 18, baseType: !523, size: 16, offset: 16)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3462, file: !3463, line: 19, baseType: !523, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3462, file: !3463, line: 19, baseType: !523, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3462, file: !3463, line: 19, baseType: !523, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3462, file: !3463, line: 19, baseType: !523, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3462, file: !3463, line: 19, baseType: !523, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3462, file: !3463, line: 20, baseType: !523, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3462, file: !3463, line: 20, baseType: !523, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3462, file: !3463, line: 20, baseType: !523, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3462, file: !3463, line: 20, baseType: !523, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3462, file: !3463, line: 20, baseType: !523, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3462, file: !3463, line: 20, baseType: !523, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3457, file: !3458, line: 436, baseType: !348, size: 64, offset: 192)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3457, file: !3458, line: 440, baseType: !401, size: 16, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3457, file: !3458, line: 441, baseType: !401, size: 16, offset: 272)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3457, file: !3458, line: 442, baseType: !401, size: 16, offset: 288)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3457, file: !3458, line: 443, baseType: !401, size: 16, offset: 304)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3457, file: !3458, line: 447, baseType: !348, size: 64, offset: 320)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3457, file: !3458, line: 448, baseType: !348, size: 64, offset: 384)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3457, file: !3458, line: 459, baseType: !3486, size: 256, offset: 448)
!3486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3487, size: 256, elements: !850)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3458, line: 428, flags: DIFlagFwdDecl)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3457, file: !3458, line: 461, baseType: !348, size: 64, offset: 704)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3457, file: !3458, line: 463, baseType: !348, size: 64, offset: 768)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3457, file: !3458, line: 465, baseType: !348, size: 64, offset: 832)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3457, file: !3458, line: 466, baseType: !348, size: 64, offset: 896)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3457, file: !3458, line: 467, baseType: !348, size: 64, offset: 960)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3457, file: !3458, line: 473, baseType: !3495, size: 64, offset: 1024)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3458, line: 10, flags: DIFlagFwdDecl)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3457, file: !3458, line: 480, baseType: !348, size: 64, offset: 1088)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3457, file: !3458, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3457, file: !3458, line: 491, baseType: !324, size: 32, offset: 1184)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3457, file: !3458, line: 501, baseType: !3501, size: 33792, offset: 1536)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3502, line: 448, size: 33792, elements: !3503)
!3502 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3503 = !{!3504, !3505, !3506, !3668, !3669, !3675, !3676}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3501, file: !3502, line: 461, baseType: !7, size: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3501, file: !3502, line: 468, baseType: !348, size: 64, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3501, file: !3502, line: 476, baseType: !3507, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3502, line: 356, size: 33280, align: 512, elements: !3509)
!3509 = !{!3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3508, file: !3502, line: 358, baseType: !7, size: 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3508, file: !3502, line: 361, baseType: !7, size: 32, offset: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3508, file: !3502, line: 364, baseType: !330, size: 64, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3508, file: !3502, line: 367, baseType: !330, size: 64, offset: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3508, file: !3502, line: 370, baseType: !330, size: 64, offset: 192)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3508, file: !3502, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3508, file: !3502, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3508, file: !3502, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3508, file: !3502, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3508, file: !3502, line: 397, baseType: !3520, size: 32768, offset: 512)
!3520 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3502, line: 348, size: 32768, elements: !3521)
!3521 = !{!3522, !3537, !3574, !3651, !3664}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3520, file: !3502, line: 349, baseType: !3523, size: 896)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3502, line: 12, size: 896, elements: !3524)
!3524 = !{!3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3536}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3523, file: !3502, line: 13, baseType: !324, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3523, file: !3502, line: 14, baseType: !324, size: 32, offset: 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3523, file: !3502, line: 15, baseType: !324, size: 32, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3523, file: !3502, line: 16, baseType: !324, size: 32, offset: 96)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3523, file: !3502, line: 17, baseType: !324, size: 32, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3523, file: !3502, line: 18, baseType: !324, size: 32, offset: 160)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3523, file: !3502, line: 19, baseType: !324, size: 32, offset: 192)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3523, file: !3502, line: 22, baseType: !3533, size: 640, offset: 224)
!3533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 640, elements: !3534)
!3534 = !{!3535}
!3535 = !DISubrange(count: 20)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3523, file: !3502, line: 25, baseType: !324, size: 32, offset: 864)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3520, file: !3502, line: 350, baseType: !3538, size: 4096, align: 128)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3502, line: 34, size: 4096, align: 128, elements: !3539)
!3539 = !{!3540, !3541, !3542, !3543, !3544, !3559, !3560, !3561, !3563, !3565, !3569}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3538, file: !3502, line: 35, baseType: !523, size: 16)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3538, file: !3502, line: 36, baseType: !523, size: 16, offset: 16)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3538, file: !3502, line: 37, baseType: !523, size: 16, offset: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3538, file: !3502, line: 38, baseType: !523, size: 16, offset: 48)
!3544 = !DIDerivedType(tag: DW_TAG_member, scope: !3538, file: !3502, line: 39, baseType: !3545, size: 128, offset: 64)
!3545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3538, file: !3502, line: 39, size: 128, elements: !3546)
!3546 = !{!3547, !3552}
!3547 = !DIDerivedType(tag: DW_TAG_member, scope: !3545, file: !3502, line: 40, baseType: !3548, size: 128)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3545, file: !3502, line: 40, size: 128, elements: !3549)
!3549 = !{!3550, !3551}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3548, file: !3502, line: 41, baseType: !330, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3548, file: !3502, line: 42, baseType: !330, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, scope: !3545, file: !3502, line: 44, baseType: !3553, size: 128)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3545, file: !3502, line: 44, size: 128, elements: !3554)
!3554 = !{!3555, !3556, !3557, !3558}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3553, file: !3502, line: 45, baseType: !324, size: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3553, file: !3502, line: 46, baseType: !324, size: 32, offset: 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3553, file: !3502, line: 47, baseType: !324, size: 32, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3553, file: !3502, line: 48, baseType: !324, size: 32, offset: 96)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3538, file: !3502, line: 51, baseType: !324, size: 32, offset: 192)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3538, file: !3502, line: 52, baseType: !324, size: 32, offset: 224)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3538, file: !3502, line: 55, baseType: !3562, size: 1024, offset: 256)
!3562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 1024, elements: !476)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3538, file: !3502, line: 58, baseType: !3564, size: 2048, offset: 1280)
!3564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 2048, elements: !682)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3538, file: !3502, line: 60, baseType: !3566, size: 384, offset: 3328)
!3566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 384, elements: !3567)
!3567 = !{!3568}
!3568 = !DISubrange(count: 12)
!3569 = !DIDerivedType(tag: DW_TAG_member, scope: !3538, file: !3502, line: 62, baseType: !3570, size: 384, offset: 3712)
!3570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3538, file: !3502, line: 62, size: 384, elements: !3571)
!3571 = !{!3572, !3573}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3570, file: !3502, line: 63, baseType: !3566, size: 384)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3570, file: !3502, line: 64, baseType: !3566, size: 384)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3520, file: !3502, line: 351, baseType: !3575, size: 1088)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3502, line: 79, size: 1088, elements: !3576)
!3576 = !{!3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3650}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3575, file: !3502, line: 80, baseType: !324, size: 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3575, file: !3502, line: 81, baseType: !324, size: 32, offset: 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3575, file: !3502, line: 82, baseType: !324, size: 32, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3575, file: !3502, line: 83, baseType: !324, size: 32, offset: 96)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3575, file: !3502, line: 84, baseType: !324, size: 32, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3575, file: !3502, line: 85, baseType: !324, size: 32, offset: 160)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3575, file: !3502, line: 86, baseType: !324, size: 32, offset: 192)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3575, file: !3502, line: 88, baseType: !3533, size: 640, offset: 224)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3575, file: !3502, line: 89, baseType: !340, size: 8, offset: 864)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3575, file: !3502, line: 90, baseType: !340, size: 8, offset: 872)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3575, file: !3502, line: 91, baseType: !340, size: 8, offset: 880)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3575, file: !3502, line: 92, baseType: !340, size: 8, offset: 888)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3575, file: !3502, line: 93, baseType: !340, size: 8, offset: 896)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3575, file: !3502, line: 94, baseType: !340, size: 8, offset: 904)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3575, file: !3502, line: 95, baseType: !3592, size: 64, offset: 960)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3594, line: 11, size: 128, elements: !3595)
!3594 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3595 = !{!3596, !3597}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3593, file: !3594, line: 12, baseType: !712, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3593, file: !3594, line: 13, baseType: !3598, size: 64, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3600, line: 103, size: 1344, elements: !3601)
!3600 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3601 = !{!3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3630, !3631, !3632}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3599, file: !3600, line: 109, baseType: !348, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3599, file: !3600, line: 110, baseType: !348, size: 64, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3599, file: !3600, line: 111, baseType: !348, size: 64, offset: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3599, file: !3600, line: 112, baseType: !348, size: 64, offset: 192)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3599, file: !3600, line: 113, baseType: !348, size: 64, offset: 256)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3599, file: !3600, line: 114, baseType: !348, size: 64, offset: 320)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3599, file: !3600, line: 117, baseType: !348, size: 64, offset: 384)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3599, file: !3600, line: 118, baseType: !348, size: 64, offset: 448)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3599, file: !3600, line: 119, baseType: !348, size: 64, offset: 512)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3599, file: !3600, line: 120, baseType: !348, size: 64, offset: 576)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3599, file: !3600, line: 121, baseType: !348, size: 64, offset: 640)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3599, file: !3600, line: 122, baseType: !348, size: 64, offset: 704)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3599, file: !3600, line: 123, baseType: !348, size: 64, offset: 768)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3599, file: !3600, line: 124, baseType: !348, size: 64, offset: 832)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3599, file: !3600, line: 125, baseType: !348, size: 64, offset: 896)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3599, file: !3600, line: 139, baseType: !348, size: 64, offset: 960)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3599, file: !3600, line: 142, baseType: !348, size: 64, offset: 1024)
!3619 = !DIDerivedType(tag: DW_TAG_member, scope: !3599, file: !3600, line: 144, baseType: !3620, size: 64, offset: 1088)
!3620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3599, file: !3600, line: 144, size: 64, elements: !3621)
!3621 = !{!3622, !3623, !3624}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3620, file: !3600, line: 146, baseType: !523, size: 16)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3620, file: !3600, line: 148, baseType: !330, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3620, file: !3600, line: 150, baseType: !3625, size: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3600, line: 59, size: 64, elements: !3626)
!3626 = !{!3627, !3628, !3629}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3625, file: !3600, line: 61, baseType: !330, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3625, file: !3600, line: 63, baseType: !330, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3625, file: !3600, line: 65, baseType: !330, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3599, file: !3600, line: 153, baseType: !348, size: 64, offset: 1152)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3599, file: !3600, line: 154, baseType: !348, size: 64, offset: 1216)
!3632 = !DIDerivedType(tag: DW_TAG_member, scope: !3599, file: !3600, line: 156, baseType: !3633, size: 64, offset: 1280)
!3633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3599, file: !3600, line: 156, size: 64, elements: !3634)
!3634 = !{!3635, !3636, !3637}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3633, file: !3600, line: 158, baseType: !523, size: 16)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3633, file: !3600, line: 160, baseType: !330, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3633, file: !3600, line: 162, baseType: !3638, size: 64)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3600, line: 69, size: 64, elements: !3639)
!3639 = !{!3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3638, file: !3600, line: 71, baseType: !330, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3638, file: !3600, line: 73, baseType: !330, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3638, file: !3600, line: 75, baseType: !330, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3638, file: !3600, line: 77, baseType: !330, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3638, file: !3600, line: 80, baseType: !330, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3638, file: !3600, line: 83, baseType: !330, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3638, file: !3600, line: 86, baseType: !330, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3638, file: !3600, line: 88, baseType: !330, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3638, file: !3600, line: 93, baseType: !330, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3638, file: !3600, line: 100, baseType: !330, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3575, file: !3502, line: 96, baseType: !324, size: 32, offset: 1024)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3520, file: !3502, line: 352, baseType: !3652, size: 4608, align: 512)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3502, line: 333, size: 4608, align: 512, elements: !3653)
!3653 = !{!3654, !3655, !3662}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3652, file: !3502, line: 334, baseType: !3538, size: 4096, align: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3652, file: !3502, line: 335, baseType: !3656, size: 512, offset: 4096)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3502, line: 312, size: 512, elements: !3657)
!3657 = !{!3658, !3659, !3660}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3656, file: !3502, line: 313, baseType: !330, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3656, file: !3502, line: 314, baseType: !330, size: 64, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3656, file: !3502, line: 315, baseType: !3661, size: 384, offset: 128)
!3661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 384, elements: !972)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3652, file: !3502, line: 336, baseType: !3663, offset: 4608)
!3663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, elements: !869)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3520, file: !3502, line: 353, baseType: !3665, size: 32768)
!3665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 32768, elements: !3666)
!3666 = !{!3667}
!3667 = !DISubrange(count: 4096)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3501, file: !3502, line: 484, baseType: !3507, size: 64, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3501, file: !3502, line: 491, baseType: !3670, size: 128, offset: 256)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3502, line: 404, size: 128, elements: !3671)
!3671 = !{!3672, !3673, !3674}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3670, file: !3502, line: 424, baseType: !330, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3670, file: !3502, line: 432, baseType: !7, size: 32, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3670, file: !3502, line: 440, baseType: !7, size: 32, offset: 96)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3501, file: !3502, line: 498, baseType: !3670, size: 128, offset: 384)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3501, file: !3502, line: 508, baseType: !3508, size: 33280, align: 512, offset: 512)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2480, file: !2481, line: 16, baseType: !854, size: 192, offset: 512)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2480, file: !2481, line: 17, baseType: !510, size: 32, offset: 704)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !586, file: !34, line: 1240, baseType: !313, size: 64, offset: 6912)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !586, file: !34, line: 1243, baseType: !324, size: 32, offset: 6976)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !586, file: !34, line: 1245, baseType: !942, size: 64, offset: 7040)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !586, file: !34, line: 1246, baseType: !942, size: 64, offset: 7104)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !586, file: !34, line: 1248, baseType: !326, size: 32, offset: 7168)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !586, file: !34, line: 1249, baseType: !3685, size: 64, offset: 7232)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !34, line: 634, flags: DIFlagFwdDecl)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !586, file: !34, line: 1252, baseType: !3688, size: 256, offset: 7296)
!3688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 256, elements: !476)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !586, file: !34, line: 1253, baseType: !3690, size: 128, offset: 7552)
!3690 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3691, line: 21, baseType: !3692)
!3691 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3691, line: 19, size: 128, elements: !3693)
!3693 = !{!3694}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3692, file: !3691, line: 20, baseType: !3695, size: 128)
!3695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 128, elements: !2913)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !586, file: !34, line: 1255, baseType: !7, size: 32, offset: 7680)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !586, file: !34, line: 1261, baseType: !789, size: 256, offset: 7744)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !586, file: !34, line: 1267, baseType: !548, size: 64, offset: 8000)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !586, file: !34, line: 1269, baseType: !528, size: 64, offset: 8064)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !586, file: !34, line: 1271, baseType: !3701, size: 448, offset: 8128)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2260, line: 63, size: 448, elements: !3702)
!3702 = !{!3703, !3708, !3709, !3710, !3711, !3712, !3713}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3701, file: !2260, line: 64, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!348, !3707, !2258}
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3701, file: !2260, line: 66, baseType: !3704, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3701, file: !2260, line: 69, baseType: !712, size: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3701, file: !2260, line: 70, baseType: !109, size: 32, offset: 192)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3701, file: !2260, line: 71, baseType: !7, size: 32, offset: 224)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3701, file: !2260, line: 74, baseType: !379, size: 128, offset: 256)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3701, file: !2260, line: 85, baseType: !3714, size: 64, offset: 384)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !586, file: !34, line: 1274, baseType: !780, size: 64, offset: 8576)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !586, file: !34, line: 1280, baseType: !780, size: 64, offset: 8640)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !586, file: !34, line: 1283, baseType: !109, size: 32, offset: 8704)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !586, file: !34, line: 1286, baseType: !1601, size: 32, offset: 8736)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !586, file: !34, line: 1289, baseType: !2080, size: 64, offset: 8768)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !586, file: !34, line: 1290, baseType: !841, size: 64, offset: 8832)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !586, file: !34, line: 1297, baseType: !1068, size: 64, offset: 8896)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !586, file: !34, line: 1304, baseType: !3723, size: 64, offset: 8960)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3724, line: 49, size: 64, elements: !3725)
!3724 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3725 = !{!3726}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3723, file: !3724, line: 50, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3724, line: 41, size: 512, align: 512, elements: !3729)
!3729 = !{!3730, !3731, !3736}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3728, file: !3724, line: 43, baseType: !490, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3728, file: !3724, line: 45, baseType: !3732, size: 192, offset: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3724, line: 29, size: 192, elements: !3733)
!3733 = !{!3734, !3735}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3732, file: !3724, line: 30, baseType: !379, size: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3732, file: !3724, line: 32, baseType: !712, size: 64, offset: 128)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3728, file: !3724, line: 46, baseType: !712, size: 64, offset: 256)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !586, file: !34, line: 1305, baseType: !3723, size: 64, offset: 9024)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !586, file: !34, line: 1306, baseType: !767, size: 128, align: 64, offset: 9088)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !586, file: !34, line: 1307, baseType: !1356, size: 256, offset: 9216)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !586, file: !34, line: 1309, baseType: !789, size: 256, offset: 9472)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !586, file: !34, line: 1314, baseType: !109, size: 32, offset: 9728)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !586, file: !34, line: 1317, baseType: !490, size: 32, align: 512, offset: 10240)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !586, file: !34, line: 1318, baseType: !379, size: 128, offset: 10304)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !586, file: !34, line: 1320, baseType: !490, size: 32, offset: 10432)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !586, file: !34, line: 1321, baseType: !379, size: 128, offset: 10496)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !580, file: !581, line: 73, baseType: !109, size: 32, offset: 128)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !580, file: !581, line: 74, baseType: !3748, size: 64, offset: 192)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !893, line: 42, flags: DIFlagFwdDecl)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !530, file: !436, line: 141, baseType: !3752, size: 64, offset: 704)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!109, !2320, !985}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !530, file: !436, line: 142, baseType: !3756, size: 64, offset: 768)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!434, !434, !3759}
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !435, file: !436, line: 96, baseType: !585, size: 64, offset: 832)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !435, file: !436, line: 97, baseType: !348, size: 64, offset: 896)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !435, file: !436, line: 98, baseType: !313, size: 64, offset: 960)
!3764 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !436, line: 100, baseType: !3765, size: 128, offset: 1024)
!3765 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !435, file: !436, line: 100, size: 128, elements: !3766)
!3766 = !{!3767, !3768}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3765, file: !436, line: 101, baseType: !379, size: 128)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3765, file: !436, line: 102, baseType: !3769, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !435, file: !436, line: 104, baseType: !379, size: 128, offset: 1152)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !435, file: !436, line: 105, baseType: !379, size: 128, offset: 1280)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !435, file: !436, line: 113, baseType: !3773, size: 128, offset: 1408)
!3773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !435, file: !436, line: 109, size: 128, elements: !3774)
!3774 = !{!3775, !3776, !3777}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3773, file: !436, line: 110, baseType: !845, size: 128)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3773, file: !436, line: 111, baseType: !450, size: 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3773, file: !436, line: 112, baseType: !767, size: 128, align: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !428, file: !34, line: 1968, baseType: !3779, size: 64, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!548, !434, !396, !3782}
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3784, line: 10, size: 128, elements: !3785)
!3784 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3785 = !{!3786, !3787}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3783, file: !3784, line: 11, baseType: !1641, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3783, file: !3784, line: 12, baseType: !313, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !428, file: !34, line: 1969, baseType: !3789, size: 64, offset: 128)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!109, !3748, !396, !109}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !428, file: !34, line: 1970, baseType: !3793, size: 64, offset: 192)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!422, !396, !109, !985}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !428, file: !34, line: 1972, baseType: !3797, size: 64, offset: 256)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!109, !434, !574, !109}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !428, file: !34, line: 1974, baseType: !3801, size: 64, offset: 320)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!109, !3748, !396, !434, !400, !985}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !428, file: !34, line: 1976, baseType: !3805, size: 64, offset: 384)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!109, !434, !396, !434}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !428, file: !34, line: 1977, baseType: !3809, size: 64, offset: 448)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!109, !396, !434}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !428, file: !34, line: 1978, baseType: !3813, size: 64, offset: 512)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!109, !3748, !396, !434, !548}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !428, file: !34, line: 1980, baseType: !3817, size: 64, offset: 576)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!109, !3748, !396, !434, !400}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !428, file: !34, line: 1982, baseType: !3809, size: 64, offset: 640)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !428, file: !34, line: 1983, baseType: !3822, size: 64, offset: 704)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!109, !3748, !396, !434, !400, !590}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !428, file: !34, line: 1985, baseType: !3826, size: 64, offset: 768)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!109, !3748, !396, !434, !396, !434, !7}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !428, file: !34, line: 1987, baseType: !3830, size: 64, offset: 832)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!109, !3748, !434, !3833}
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !34, line: 226, size: 640, elements: !3835)
!3835 = !{!3836, !3837, !3838, !3848, !3857, !3858, !3863, !3864, !3865}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3834, file: !34, line: 227, baseType: !7, size: 32)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3834, file: !34, line: 228, baseType: !400, size: 16, offset: 32)
!3838 = !DIDerivedType(tag: DW_TAG_member, scope: !3834, file: !34, line: 241, baseType: !3839, size: 32, offset: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3834, file: !34, line: 241, size: 32, elements: !3840)
!3840 = !{!3841, !3842}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3839, file: !34, line: 242, baseType: !404, size: 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3839, file: !34, line: 243, baseType: !3843, size: 32)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3844, line: 16, baseType: !3845)
!3844 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3844, line: 14, size: 32, elements: !3846)
!3846 = !{!3847}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3845, file: !3844, line: 15, baseType: !409, size: 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, scope: !3834, file: !34, line: 245, baseType: !3849, size: 32, offset: 96)
!3849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3834, file: !34, line: 245, size: 32, elements: !3850)
!3850 = !{!3851, !3852}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3849, file: !34, line: 246, baseType: !414, size: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3849, file: !34, line: 247, baseType: !3853, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3844, line: 20, baseType: !3854)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3844, line: 18, size: 32, elements: !3855)
!3855 = !{!3856}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3854, file: !3844, line: 19, baseType: !418, size: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3834, file: !34, line: 249, baseType: !595, size: 64, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3834, file: !34, line: 250, baseType: !3859, size: 128, offset: 192)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !943, line: 13, size: 128, elements: !3860)
!3860 = !{!3861, !3862}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3859, file: !943, line: 14, baseType: !942, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3859, file: !943, line: 15, baseType: !712, size: 64, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3834, file: !34, line: 251, baseType: !3859, size: 128, offset: 320)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3834, file: !34, line: 252, baseType: !3859, size: 128, offset: 448)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3834, file: !34, line: 259, baseType: !754, size: 64, offset: 576)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !428, file: !34, line: 1988, baseType: !3867, size: 64, offset: 896)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!109, !3748, !2320, !3870, !324, !7}
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3872, line: 22, size: 1280, elements: !3873)
!3872 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3873 = !{!3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3871, file: !3872, line: 23, baseType: !324, size: 32)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3871, file: !3872, line: 24, baseType: !400, size: 16, offset: 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3871, file: !3872, line: 25, baseType: !7, size: 32, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3871, file: !3872, line: 26, baseType: !950, size: 32, offset: 96)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3871, file: !3872, line: 27, baseType: !330, size: 64, offset: 128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3871, file: !3872, line: 28, baseType: !330, size: 64, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3871, file: !3872, line: 41, baseType: !330, size: 64, offset: 256)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3871, file: !3872, line: 42, baseType: !590, size: 32, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3871, file: !3872, line: 43, baseType: !590, size: 32, offset: 352)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3871, file: !3872, line: 44, baseType: !404, size: 32, offset: 384)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3871, file: !3872, line: 45, baseType: !414, size: 32, offset: 416)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3871, file: !3872, line: 46, baseType: !595, size: 64, offset: 448)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3871, file: !3872, line: 47, baseType: !3859, size: 128, offset: 512)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3871, file: !3872, line: 48, baseType: !3859, size: 128, offset: 640)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3871, file: !3872, line: 49, baseType: !3859, size: 128, offset: 768)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3871, file: !3872, line: 50, baseType: !3859, size: 128, offset: 896)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3871, file: !3872, line: 51, baseType: !330, size: 64, offset: 1024)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3871, file: !3872, line: 52, baseType: !330, size: 64, offset: 1088)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3871, file: !3872, line: 53, baseType: !324, size: 32, offset: 1152)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3871, file: !3872, line: 54, baseType: !324, size: 32, offset: 1184)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3871, file: !3872, line: 55, baseType: !330, size: 64, offset: 1216)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !428, file: !34, line: 1990, baseType: !3896, size: 64, offset: 960)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!709, !434, !574, !722}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !428, file: !34, line: 1991, baseType: !3900, size: 64, offset: 1024)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!109, !396, !3903, !330, !330}
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !34, line: 55, flags: DIFlagFwdDecl)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !428, file: !34, line: 1993, baseType: !3906, size: 64, offset: 1088)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!109, !396, !109}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !428, file: !34, line: 1994, baseType: !3910, size: 64, offset: 1152)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!109, !396, !434, !754, !7, !400}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !428, file: !34, line: 1997, baseType: !3914, size: 64, offset: 1216)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!109, !3748, !396, !754, !400}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !428, file: !34, line: 1999, baseType: !3918, size: 64, offset: 1280)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!422, !3748, !434, !109}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !428, file: !34, line: 2001, baseType: !3922, size: 64, offset: 1344)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!109, !3748, !434, !422, !109}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !428, file: !34, line: 2003, baseType: !3926, size: 64, offset: 1408)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!109, !3748, !434, !3929}
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !34, line: 76, flags: DIFlagFwdDecl)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !428, file: !34, line: 2005, baseType: !3932, size: 64, offset: 1472)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!109, !434, !3929}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !428, file: !34, line: 2006, baseType: !3936, size: 64, offset: 1536)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!3939, !396}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !34, line: 3192, size: 192, elements: !3941)
!3941 = !{!3942, !3949}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3940, file: !34, line: 3193, baseType: !3943, size: 128)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3944, line: 296, size: 128, elements: !3945)
!3944 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3945 = !{!3946, !3947, !3948}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3943, file: !3944, line: 297, baseType: !490, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3943, file: !3944, line: 299, baseType: !362, size: 32, offset: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3943, file: !3944, line: 300, baseType: !313, size: 64, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3940, file: !34, line: 3194, baseType: !324, size: 32, offset: 128)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !397, file: !34, line: 655, baseType: !585, size: 64, offset: 448)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !397, file: !34, line: 656, baseType: !392, size: 64, offset: 512)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !397, file: !34, line: 659, baseType: !313, size: 64, offset: 576)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !397, file: !34, line: 663, baseType: !348, size: 64, offset: 640)
!3954 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !34, line: 671, baseType: !3955, size: 32, offset: 704)
!3955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !34, line: 671, size: 32, elements: !3956)
!3956 = !{!3957, !3959}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3955, file: !34, line: 672, baseType: !3958, size: 32)
!3958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3955, file: !34, line: 673, baseType: !7, size: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !397, file: !34, line: 675, baseType: !590, size: 32, offset: 736)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !397, file: !34, line: 676, baseType: !595, size: 64, offset: 768)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !397, file: !34, line: 677, baseType: !3859, size: 128, offset: 832)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !397, file: !34, line: 678, baseType: !3859, size: 128, offset: 960)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !397, file: !34, line: 679, baseType: !3859, size: 128, offset: 1088)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !397, file: !34, line: 680, baseType: !490, size: 32, offset: 1216)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !397, file: !34, line: 681, baseType: !401, size: 16, offset: 1248)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !397, file: !34, line: 682, baseType: !340, size: 8, offset: 1264)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !397, file: !34, line: 683, baseType: !340, size: 8, offset: 1272)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !397, file: !34, line: 684, baseType: !2393, size: 64, offset: 1280)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !397, file: !34, line: 691, baseType: !348, size: 64, offset: 1344)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !397, file: !34, line: 692, baseType: !926, size: 320, offset: 1408)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !397, file: !34, line: 694, baseType: !348, size: 64, offset: 1728)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !397, file: !34, line: 695, baseType: !348, size: 64, offset: 1792)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !397, file: !34, line: 697, baseType: !845, size: 128, offset: 1856)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !397, file: !34, line: 698, baseType: !379, size: 128, offset: 1984)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !397, file: !34, line: 707, baseType: !379, size: 128, offset: 2112)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !397, file: !34, line: 708, baseType: !379, size: 128, offset: 2240)
!3978 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !34, line: 709, baseType: !3979, size: 128, offset: 2368)
!3979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !34, line: 709, size: 128, elements: !3980)
!3980 = !{!3981, !3982}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3979, file: !34, line: 710, baseType: !841, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3979, file: !34, line: 711, baseType: !767, size: 128, align: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !397, file: !34, line: 713, baseType: !782, size: 64, offset: 2496)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !397, file: !34, line: 714, baseType: !782, size: 64, offset: 2560)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !397, file: !34, line: 715, baseType: !510, size: 32, offset: 2624)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !397, file: !34, line: 716, baseType: !510, size: 32, offset: 2656)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !397, file: !34, line: 717, baseType: !510, size: 32, offset: 2688)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !397, file: !34, line: 719, baseType: !510, size: 32, offset: 2720)
!3989 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !34, line: 721, baseType: !3990, size: 64, offset: 2752)
!3990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !34, line: 721, size: 64, elements: !3991)
!3991 = !{!3992, !3993}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3990, file: !34, line: 722, baseType: !1104, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3990, file: !34, line: 723, baseType: !2147, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !397, file: !34, line: 725, baseType: !3995, size: 64, offset: 2816)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !34, line: 725, flags: DIFlagFwdDecl)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !397, file: !34, line: 726, baseType: !393, size: 1536, align: 64, offset: 2880)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !397, file: !34, line: 727, baseType: !379, size: 128, offset: 4416)
!3999 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !34, line: 728, baseType: !4000, size: 64, offset: 4544)
!4000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !34, line: 728, size: 64, elements: !4001)
!4001 = !{!4002, !4003, !4006, !4007}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4000, file: !34, line: 729, baseType: !1548, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4000, file: !34, line: 730, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !34, line: 730, flags: DIFlagFwdDecl)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4000, file: !34, line: 731, baseType: !574, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4000, file: !34, line: 732, baseType: !7, size: 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !397, file: !34, line: 735, baseType: !326, size: 32, offset: 4608)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !397, file: !34, line: 738, baseType: !326, size: 32, offset: 4640)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !397, file: !34, line: 739, baseType: !3685, size: 64, offset: 4672)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !397, file: !34, line: 750, baseType: !313, size: 64, offset: 4736)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !393, file: !34, line: 474, baseType: !3943, size: 128, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !393, file: !34, line: 475, baseType: !926, size: 320, offset: 192)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !393, file: !34, line: 476, baseType: !362, size: 32, offset: 512)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !393, file: !34, line: 477, baseType: !510, size: 32, offset: 544)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !393, file: !34, line: 482, baseType: !2667, size: 128, offset: 576)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !393, file: !34, line: 483, baseType: !348, size: 64, offset: 704)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !393, file: !34, line: 484, baseType: !348, size: 64, offset: 768)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !393, file: !34, line: 485, baseType: !4020, size: 64, offset: 832)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4022)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !34, line: 404, size: 1280, elements: !4023)
!4023 = !{!4024, !4028, !4098, !4102, !4106, !4112, !4116, !4120, !4125, !4129, !4133, !4137, !4138, !4142, !4146, !4150, !4155, !4159, !4166, !4167}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4022, file: !34, line: 405, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!109, !365, !2159}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4022, file: !34, line: 406, baseType: !4029, size: 64, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!109, !754, !4032}
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !58, line: 293, size: 1536, elements: !4034)
!4034 = !{!4035, !4065, !4079}
!4035 = !DIDerivedType(tag: DW_TAG_member, scope: !4033, file: !58, line: 295, baseType: !4036, size: 512)
!4036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4033, file: !58, line: 295, size: 512, elements: !4037)
!4037 = !{!4038, !4064}
!4038 = !DIDerivedType(tag: DW_TAG_member, scope: !4036, file: !58, line: 296, baseType: !4039, size: 448)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4036, file: !58, line: 296, size: 448, elements: !4040)
!4040 = !{!4041, !4042, !4051, !4052, !4053, !4062, !4063}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4039, file: !58, line: 298, baseType: !348, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, scope: !4039, file: !58, line: 299, baseType: !4043, size: 128, offset: 64)
!4043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4039, file: !58, line: 299, size: 128, elements: !4044)
!4044 = !{!4045, !4046}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4043, file: !58, line: 300, baseType: !379, size: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, scope: !4043, file: !58, line: 302, baseType: !4047, size: 128)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4043, file: !58, line: 302, size: 128, elements: !4048)
!4048 = !{!4049, !4050}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4047, file: !58, line: 303, baseType: !313, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4047, file: !58, line: 305, baseType: !7, size: 32, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4039, file: !58, line: 310, baseType: !392, size: 64, offset: 192)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4039, file: !58, line: 311, baseType: !348, size: 64, offset: 256)
!4053 = !DIDerivedType(tag: DW_TAG_member, scope: !4039, file: !58, line: 312, baseType: !4054, size: 64, offset: 320)
!4054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4039, file: !58, line: 312, size: 64, elements: !4055)
!4055 = !{!4056, !4057}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4054, file: !58, line: 313, baseType: !313, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4054, file: !58, line: 314, baseType: !4058, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !58, line: 257, baseType: !4059)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 255, size: 64, elements: !4060)
!4060 = !{!4061}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4059, file: !58, line: 256, baseType: !348, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4039, file: !58, line: 316, baseType: !510, size: 32, offset: 384)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4039, file: !58, line: 317, baseType: !510, size: 32, offset: 416)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4036, file: !58, line: 323, baseType: !366, size: 512, align: 128)
!4065 = !DIDerivedType(tag: DW_TAG_member, scope: !4033, file: !58, line: 325, baseType: !4066, size: 512, offset: 512)
!4066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4033, file: !58, line: 325, size: 512, elements: !4067)
!4067 = !{!4068, !4078}
!4068 = !DIDerivedType(tag: DW_TAG_member, scope: !4066, file: !58, line: 326, baseType: !4069, size: 320)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4066, file: !58, line: 326, size: 320, elements: !4070)
!4070 = !{!4071, !4072, !4073, !4074, !4075, !4076, !4077}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4069, file: !58, line: 327, baseType: !348, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4069, file: !58, line: 328, baseType: !348, size: 64, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4069, file: !58, line: 329, baseType: !348, size: 64, offset: 128)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4069, file: !58, line: 331, baseType: !510, size: 32, offset: 192)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4069, file: !58, line: 332, baseType: !510, size: 32, offset: 224)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4069, file: !58, line: 333, baseType: !510, size: 32, offset: 256)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4069, file: !58, line: 335, baseType: !7, size: 32, offset: 288)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4066, file: !58, line: 339, baseType: !366, size: 512, align: 128)
!4079 = !DIDerivedType(tag: DW_TAG_member, scope: !4033, file: !58, line: 341, baseType: !4080, size: 512, offset: 1024)
!4080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4033, file: !58, line: 341, size: 512, elements: !4081)
!4081 = !{!4082, !4091, !4097}
!4082 = !DIDerivedType(tag: DW_TAG_member, scope: !4080, file: !58, line: 342, baseType: !4083, size: 384)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4080, file: !58, line: 342, size: 384, elements: !4084)
!4084 = !{!4085, !4086, !4087, !4088, !4089, !4090}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4083, file: !58, line: 343, baseType: !348, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4083, file: !58, line: 344, baseType: !348, size: 64, offset: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4083, file: !58, line: 346, baseType: !313, size: 64, offset: 128)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4083, file: !58, line: 347, baseType: !313, size: 64, offset: 192)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4083, file: !58, line: 348, baseType: !313, size: 64, offset: 256)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4083, file: !58, line: 349, baseType: !313, size: 64, offset: 320)
!4091 = !DIDerivedType(tag: DW_TAG_member, scope: !4080, file: !58, line: 352, baseType: !4092, size: 256)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4080, file: !58, line: 352, size: 256, elements: !4093)
!4093 = !{!4094, !4095, !4096}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4092, file: !58, line: 353, baseType: !348, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4092, file: !58, line: 354, baseType: !348, size: 64, offset: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4092, file: !58, line: 356, baseType: !379, size: 128, offset: 128)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4080, file: !58, line: 359, baseType: !366, size: 512, align: 128)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4022, file: !34, line: 409, baseType: !4099, size: 64, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!109, !392, !2159}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4022, file: !34, line: 412, baseType: !4103, size: 64, offset: 192)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!985, !392, !4032}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4022, file: !34, line: 414, baseType: !4107, size: 64, offset: 256)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{null, !4110}
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !34, line: 310, flags: DIFlagFwdDecl)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4022, file: !34, line: 416, baseType: !4113, size: 64, offset: 320)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!109, !754, !392, !595, !7, !3435, !1564}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4022, file: !34, line: 419, baseType: !4117, size: 64, offset: 384)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!109, !754, !392, !595, !7, !7, !365, !313}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4022, file: !34, line: 424, baseType: !4121, size: 64, offset: 448)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!4124, !392, !4124}
!4124 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !363, line: 131, baseType: !330)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4022, file: !34, line: 425, baseType: !4126, size: 64, offset: 512)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{null, !4032, !722, !722}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4022, file: !34, line: 426, baseType: !4130, size: 64, offset: 576)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!985, !4032, !362}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4022, file: !34, line: 427, baseType: !4134, size: 64, offset: 640)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{null, !4032}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4022, file: !34, line: 428, baseType: !1123, size: 64, offset: 704)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4022, file: !34, line: 433, baseType: !4139, size: 64, offset: 768)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!109, !392, !4032, !4032, !94}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4022, file: !34, line: 435, baseType: !4143, size: 64, offset: 832)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!109, !4032}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4022, file: !34, line: 436, baseType: !4147, size: 64, offset: 896)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!985, !4032, !722, !722}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4022, file: !34, line: 438, baseType: !4151, size: 64, offset: 960)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{null, !4032, !4154, !4154}
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4022, file: !34, line: 439, baseType: !4156, size: 64, offset: 1024)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!109, !392, !365}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4022, file: !34, line: 442, baseType: !4160, size: 64, offset: 1088)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!109, !4163, !754, !4165}
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !34, line: 66, flags: DIFlagFwdDecl)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4022, file: !34, line: 444, baseType: !1556, size: 64, offset: 1152)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4022, file: !34, line: 445, baseType: !4168, size: 64, offset: 1216)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!109, !1126, !1148}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !393, file: !34, line: 486, baseType: !348, size: 64, offset: 896)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !393, file: !34, line: 487, baseType: !926, size: 320, offset: 960)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !393, file: !34, line: 488, baseType: !1601, size: 32, offset: 1280)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !393, file: !34, line: 489, baseType: !490, size: 32, offset: 1312)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !393, file: !34, line: 490, baseType: !379, size: 128, offset: 1344)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !393, file: !34, line: 491, baseType: !313, size: 64, offset: 1472)
!4177 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !58, line: 107, baseType: !4178, size: 64, offset: 192)
!4178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !58, line: 107, size: 64, elements: !4179)
!4179 = !{!4180, !4181}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4178, file: !58, line: 108, baseType: !348, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4178, file: !58, line: 109, baseType: !348, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !373, file: !58, line: 117, baseType: !348, size: 64, offset: 256)
!4183 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !58, line: 119, baseType: !4184, size: 320)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !58, line: 119, size: 320, elements: !4185)
!4185 = !{!4186, !4187, !4190, !4191, !4192}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4184, file: !58, line: 124, baseType: !348, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4184, file: !58, line: 125, baseType: !4188, size: 64, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !58, line: 125, flags: DIFlagFwdDecl)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4184, file: !58, line: 126, baseType: !348, size: 64, offset: 128)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4184, file: !58, line: 127, baseType: !348, size: 64, offset: 192)
!4192 = !DIDerivedType(tag: DW_TAG_member, scope: !4184, file: !58, line: 128, baseType: !4193, size: 64, offset: 256)
!4193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4184, file: !58, line: 128, size: 64, elements: !4194)
!4194 = !{!4195, !4196}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4193, file: !58, line: 133, baseType: !348, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4193, file: !58, line: 138, baseType: !780, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !58, line: 141, baseType: !4198, size: 64)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !58, line: 141, size: 64, elements: !4199)
!4199 = !{!4200}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4198, file: !58, line: 142, baseType: !348, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !58, line: 144, baseType: !4202, size: 128)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !58, line: 144, size: 128, elements: !4203)
!4203 = !{!4204, !4275}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4202, file: !58, line: 146, baseType: !4205, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !74, line: 126, size: 1216, elements: !4207)
!4207 = !{!4208, !4218, !4239, !4240, !4241, !4242, !4243, !4257, !4258, !4259}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4206, file: !74, line: 127, baseType: !4209, size: 384)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !74, line: 21, size: 384, elements: !4210)
!4210 = !{!4211, !4212, !4214, !4215, !4216, !4217}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4209, file: !74, line: 22, baseType: !348, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4209, file: !74, line: 23, baseType: !4213, size: 64, offset: 64)
!4213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4209, file: !74, line: 24, baseType: !4213, size: 64, offset: 128)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4209, file: !74, line: 25, baseType: !348, size: 64, offset: 192)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4209, file: !74, line: 26, baseType: !348, size: 64, offset: 256)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4209, file: !74, line: 27, baseType: !348, size: 64, offset: 320)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4206, file: !74, line: 128, baseType: !4219, size: 128, offset: 384)
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4220, line: 105, size: 128, elements: !4221)
!4220 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4221 = !{!4222, !4223}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4219, file: !4220, line: 110, baseType: !348, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4219, file: !4220, line: 118, baseType: !4224, size: 64, offset: 64)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4220, line: 95, size: 448, elements: !4226)
!4226 = !{!4227, !4228, !4234, !4235, !4236, !4237, !4238}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4225, file: !4220, line: 96, baseType: !780, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4225, file: !4220, line: 97, baseType: !4229, size: 64, offset: 64)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4220, line: 60, baseType: !4231)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{null, !4233}
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4225, file: !4220, line: 98, baseType: !4229, size: 64, offset: 128)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4225, file: !4220, line: 99, baseType: !985, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4225, file: !4220, line: 100, baseType: !985, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4225, file: !4220, line: 101, baseType: !767, size: 128, align: 64, offset: 256)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4225, file: !4220, line: 102, baseType: !4233, size: 64, offset: 384)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4206, file: !74, line: 129, baseType: !1777, size: 256, offset: 512)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4206, file: !74, line: 130, baseType: !73, size: 32, offset: 768)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4206, file: !74, line: 131, baseType: !7, size: 32, offset: 800)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4206, file: !74, line: 132, baseType: !348, size: 64, offset: 832)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4206, file: !74, line: 133, baseType: !4244, size: 64, offset: 896)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4246)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !74, line: 77, size: 192, elements: !4247)
!4247 = !{!4248, !4252, !4253}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4246, file: !74, line: 83, baseType: !4249, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{null, !365}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4246, file: !74, line: 89, baseType: !1422, size: 64, offset: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4246, file: !74, line: 100, baseType: !4254, size: 64, offset: 128)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!109, !4205, !348, !348, !109}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4206, file: !74, line: 134, baseType: !313, size: 64, offset: 960)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4206, file: !74, line: 135, baseType: !109, size: 32, offset: 1024)
!4259 = !DIDerivedType(tag: DW_TAG_member, scope: !4206, file: !74, line: 136, baseType: !4260, size: 128, offset: 1088)
!4260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4206, file: !74, line: 136, size: 128, elements: !4261)
!4261 = !{!4262, !4268}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4260, file: !74, line: 137, baseType: !4263, size: 128)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4264, line: 6, size: 128, elements: !4265)
!4264 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4265 = !{!4266, !4267}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4263, file: !4264, line: 7, baseType: !330, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4263, file: !4264, line: 8, baseType: !330, size: 64, offset: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, scope: !4260, file: !74, line: 138, baseType: !4269)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4260, file: !74, line: 138, elements: !4270)
!4270 = !{!4271, !4273}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4269, file: !74, line: 138, baseType: !4272)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4269, file: !74, line: 138, elements: !1222)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4269, file: !74, line: 138, baseType: !4274)
!4274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4263, elements: !869)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4202, file: !58, line: 147, baseType: !313, size: 64, offset: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !370, file: !58, line: 161, baseType: !767, size: 128, align: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !58, line: 164, baseType: !4278, size: 32, offset: 384)
!4278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !366, file: !58, line: 164, size: 32, elements: !4279)
!4279 = !{!4280, !4281}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4278, file: !58, line: 169, baseType: !510, size: 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4278, file: !58, line: 177, baseType: !7, size: 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !366, file: !58, line: 181, baseType: !510, size: 32, offset: 416)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !550)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !712)
!4287 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !363, line: 113, baseType: !330)
!4288 = !{!4289, !4300, !4302, !4304, !4309, !4348, !4350, !4352, !4357, !4362, !4367, !4370, !4372, !4374, !4377, !0, !4379, !4384, !4386, !4393, !4398, !4401, !4406, !4408, !4410, !4415, !4417, !4425, !4432, !4435}
!4289 = !DIGlobalVariableExpression(var: !4290, expr: !DIExpression())
!4290 = distinct !DIGlobalVariable(name: "__setup_parse_no_kvmclock", scope: !2, file: !3, line: 36, type: !4291, isLocal: true, isDefinition: true, align: 64)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !4292, line: 324, size: 192, elements: !4293)
!4292 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4293 = !{!4294, !4295, !4299}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4291, file: !4292, line: 325, baseType: !548, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !4291, file: !4292, line: 326, baseType: !4296, size: 64, offset: 64)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!109, !574}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !4291, file: !4292, line: 327, baseType: !109, size: 32, offset: 128)
!4300 = !DIGlobalVariableExpression(var: !4301, expr: !DIExpression())
!4301 = distinct !DIGlobalVariable(name: "__setup_parse_no_kvmclock_vsyscall", scope: !2, file: !3, line: 43, type: !4291, isLocal: true, isDefinition: true, align: 64)
!4302 = !DIGlobalVariableExpression(var: !4303, expr: !DIExpression())
!4303 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hv_clock_per_cpu303", scope: !2, file: !3, line: 54, type: !313, isLocal: true, isDefinition: true)
!4304 = !DIGlobalVariableExpression(var: !4305, expr: !DIExpression())
!4305 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !4306, isLocal: true, isDefinition: true)
!4306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 80, elements: !4307)
!4307 = !{!4308}
!4308 = !DISubrange(count: 10)
!4309 = !DIGlobalVariableExpression(var: !4310, expr: !DIExpression())
!4310 = distinct !DIGlobalVariable(name: "kvm_clock", scope: !2, file: !3, line: 157, type: !4311, isLocal: false, isDefinition: true)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clocksource", file: !4312, line: 96, size: 1472, elements: !4313)
!4312 = !DIFile(filename: "./include/linux/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f664f6d0ed93221709a7301012f8ae1")
!4313 = !{!4314, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4336, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4311, file: !4312, line: 97, baseType: !4315, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!330, !4318}
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4311, file: !4312, line: 98, baseType: !330, size: 64, offset: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !4311, file: !4312, line: 99, baseType: !324, size: 32, offset: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !4311, file: !4312, line: 100, baseType: !324, size: 32, offset: 160)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "max_idle_ns", scope: !4311, file: !4312, line: 101, baseType: !330, size: 64, offset: 192)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "maxadj", scope: !4311, file: !4312, line: 102, baseType: !324, size: 32, offset: 256)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "uncertainty_margin", scope: !4311, file: !4312, line: 103, baseType: !324, size: 32, offset: 288)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "max_cycles", scope: !4311, file: !4312, line: 107, baseType: !330, size: 64, offset: 320)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4311, file: !4312, line: 108, baseType: !548, size: 64, offset: 384)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4311, file: !4312, line: 109, baseType: !379, size: 128, offset: 448)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !4311, file: !4312, line: 110, baseType: !109, size: 32, offset: 576)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4311, file: !4312, line: 111, baseType: !11, size: 32, offset: 608)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_clock_mode", scope: !4311, file: !4312, line: 112, baseType: !17, size: 32, offset: 640)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4311, file: !4312, line: 113, baseType: !348, size: 64, offset: 704)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4311, file: !4312, line: 115, baseType: !4333, size: 64, offset: 768)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{!109, !4318}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !4311, file: !4312, line: 116, baseType: !4337, size: 64, offset: 832)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{null, !4318}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4311, file: !4312, line: 117, baseType: !4337, size: 64, offset: 896)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4311, file: !4312, line: 118, baseType: !4337, size: 64, offset: 960)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "mark_unstable", scope: !4311, file: !4312, line: 119, baseType: !4337, size: 64, offset: 1024)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "tick_stable", scope: !4311, file: !4312, line: 120, baseType: !4337, size: 64, offset: 1088)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "wd_list", scope: !4311, file: !4312, line: 125, baseType: !379, size: 128, offset: 1152)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "cs_last", scope: !4311, file: !4312, line: 126, baseType: !330, size: 64, offset: 1280)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "wd_last", scope: !4311, file: !4312, line: 127, baseType: !330, size: 64, offset: 1344)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4311, file: !4312, line: 129, baseType: !624, size: 64, offset: 1408)
!4348 = !DIGlobalVariableExpression(var: !4349, expr: !DIExpression())
!4349 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kvm_clock307", scope: !2, file: !3, line: 165, type: !313, isLocal: true, isDefinition: true)
!4350 = !DIGlobalVariableExpression(var: !4351, expr: !DIExpression())
!4351 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_kvmclock__308_262_kvm_setup_vsyscall_timeinfoearly309", scope: !2, file: !3, line: 262, type: !313, isLocal: true, isDefinition: true)
!4352 = !DIGlobalVariableExpression(var: !4353, expr: !DIExpression())
!4353 = distinct !DIGlobalVariable(scope: null, file: !3, line: 305, type: !4354, isLocal: true, isDefinition: true)
!4354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 176, elements: !4355)
!4355 = !{!4356}
!4356 = !DISubrange(count: 22)
!4357 = !DIGlobalVariableExpression(var: !4358, expr: !DIExpression())
!4358 = distinct !DIGlobalVariable(scope: null, file: !3, line: 310, type: !4359, isLocal: true, isDefinition: true)
!4359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 272, elements: !4360)
!4360 = !{!4361}
!4361 = !DISubrange(count: 34)
!4362 = !DIGlobalVariableExpression(var: !4363, expr: !DIExpression())
!4363 = distinct !DIGlobalVariable(scope: null, file: !3, line: 314, type: !4364, isLocal: true, isDefinition: true)
!4364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 144, elements: !4365)
!4365 = !{!4366}
!4366 = !DISubrange(count: 18)
!4367 = !DIGlobalVariableExpression(var: !4368, expr: !DIExpression())
!4368 = distinct !DIGlobalVariable(scope: null, file: !3, line: 348, type: !4369, isLocal: true, isDefinition: true)
!4369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 32, elements: !850)
!4370 = !DIGlobalVariableExpression(var: !4371, expr: !DIExpression())
!4371 = distinct !DIGlobalVariable(name: "msr_kvm_system_time", scope: !2, file: !3, line: 27, type: !109, isLocal: true, isDefinition: true)
!4372 = !DIGlobalVariableExpression(var: !4373, expr: !DIExpression())
!4373 = distinct !DIGlobalVariable(name: "msr_kvm_wall_clock", scope: !2, file: !3, line: 28, type: !109, isLocal: true, isDefinition: true)
!4374 = !DIGlobalVariableExpression(var: !4375, expr: !DIExpression())
!4375 = distinct !DIGlobalVariable(name: "hv_clock_boot", scope: !2, file: !3, line: 50, type: !4376, isLocal: true, isDefinition: true, align: 32768)
!4376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 32768, align: 512, elements: !682)
!4377 = !DIGlobalVariableExpression(var: !4378, expr: !DIExpression())
!4378 = distinct !DIGlobalVariable(name: "hv_clock_per_cpu", scope: !2, file: !3, line: 53, type: !315, isLocal: false, isDefinition: true)
!4379 = !DIGlobalVariableExpression(var: !4380, expr: !DIExpression())
!4380 = distinct !DIGlobalVariable(name: "__setup_str_parse_no_kvmclock_vsyscall", scope: !2, file: !3, line: 43, type: !4381, isLocal: true, isDefinition: true, align: 8)
!4381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 168, elements: !4382)
!4382 = !{!4383}
!4383 = !DISubrange(count: 21)
!4384 = !DIGlobalVariableExpression(var: !4385, expr: !DIExpression())
!4385 = distinct !DIGlobalVariable(name: "kvmclock_vsyscall", scope: !2, file: !3, line: 26, type: !109, isLocal: true, isDefinition: true)
!4386 = !DIGlobalVariableExpression(var: !4387, expr: !DIExpression())
!4387 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace305", scope: !4388, file: !3, line: 80, type: !313, isLocal: true, isDefinition: true)
!4388 = distinct !DISubprogram(name: "kvm_clock_read", scope: !3, file: !3, line: 74, type: !4389, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4391)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!330}
!4391 = !{!4392}
!4392 = !DILocalVariable(name: "ret", scope: !4388, file: !3, line: 76, type: !330)
!4393 = !DIGlobalVariableExpression(var: !4394, expr: !DIExpression())
!4394 = distinct !DIGlobalVariable(scope: null, file: !3, line: 217, type: !4395, isLocal: true, isDefinition: true)
!4395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 248, elements: !4396)
!4396 = !{!4397}
!4397 = !DISubrange(count: 31)
!4398 = !DIGlobalVariableExpression(var: !4399, expr: !DIExpression())
!4399 = distinct !DIGlobalVariable(scope: null, file: !3, line: 217, type: !4400, isLocal: true, isDefinition: true)
!4400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 144, elements: !4365)
!4401 = !DIGlobalVariableExpression(var: !4402, expr: !DIExpression())
!4402 = distinct !DIGlobalVariable(scope: null, file: !3, line: 233, type: !4403, isLocal: true, isDefinition: true)
!4403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 432, elements: !4404)
!4404 = !{!4405}
!4405 = !DISubrange(count: 54)
!4406 = !DIGlobalVariableExpression(var: !4407, expr: !DIExpression())
!4407 = distinct !DIGlobalVariable(name: "hvclock_mem", scope: !2, file: !3, line: 52, type: !315, isLocal: true, isDefinition: true)
!4408 = !DIGlobalVariableExpression(var: !4409, expr: !DIExpression())
!4409 = distinct !DIGlobalVariable(name: "kvmclock", scope: !2, file: !3, line: 25, type: !109, isLocal: true, isDefinition: true)
!4410 = !DIGlobalVariableExpression(var: !4411, expr: !DIExpression())
!4411 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !4412, isLocal: true, isDefinition: true)
!4412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 376, elements: !4413)
!4413 = !{!4414}
!4414 = !DISubrange(count: 47)
!4415 = !DIGlobalVariableExpression(var: !4416, expr: !DIExpression())
!4416 = distinct !DIGlobalVariable(name: "kvm_sched_clock_offset", scope: !2, file: !3, line: 29, type: !330, isLocal: true, isDefinition: true)
!4417 = !DIGlobalVariableExpression(var: !4418, expr: !DIExpression())
!4418 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule304", scope: !4419, file: !3, line: 66, type: !313, isLocal: true, isDefinition: true)
!4419 = distinct !DISubprogram(name: "kvm_get_wallclock", scope: !3, file: !3, line: 61, type: !4420, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4423)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{null, !4422}
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!4423 = !{!4424}
!4424 = !DILocalVariable(name: "now", arg: 1, scope: !4419, file: !3, line: 61, type: !4422)
!4425 = !DIGlobalVariableExpression(var: !4426, expr: !DIExpression())
!4426 = distinct !DIGlobalVariable(name: "wall_clock", scope: !2, file: !3, line: 51, type: !4427, isLocal: true, isDefinition: true)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvclock_wall_clock", file: !321, line: 37, size: 96, elements: !4428)
!4428 = !{!4429, !4430, !4431}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4427, file: !321, line: 38, baseType: !324, size: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !4427, file: !321, line: 39, baseType: !324, size: 32, offset: 32)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !4427, file: !321, line: 40, baseType: !324, size: 32, offset: 64)
!4432 = !DIGlobalVariableExpression(var: !4433, expr: !DIExpression())
!4433 = distinct !DIGlobalVariable(scope: null, file: !3, line: 192, type: !4434, isLocal: true, isDefinition: true)
!4434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 160, elements: !3534)
!4435 = !DIGlobalVariableExpression(var: !4436, expr: !DIExpression())
!4436 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !4437, isLocal: true, isDefinition: true)
!4437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 208, elements: !4438)
!4438 = !{!4439}
!4439 = !DISubrange(count: 26)
!4440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 96, elements: !3567)
!4441 = !{!"rsp"}
!4442 = !{i32 7, !"Dwarf Version", i32 5}
!4443 = !{i32 2, !"Debug Info Version", i32 3}
!4444 = !{i32 1, !"wchar_size", i32 2}
!4445 = !{i32 8, !"cf-protection-branch", i32 1}
!4446 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4447 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4448 = !{i32 1, !"Code Model", i32 2}
!4449 = !{i32 1, !"override-stack-alignment", i32 8}
!4450 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4451 = distinct !DISubprogram(name: "parse_no_kvmclock", scope: !3, file: !3, line: 31, type: !4297, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4452)
!4452 = !{!4453}
!4453 = !DILocalVariable(name: "arg", arg: 1, scope: !4451, file: !3, line: 31, type: !574)
!4454 = !DILocation(line: 31, column: 43, scope: !4451)
!4455 = !DILocation(line: 33, column: 11, scope: !4451)
!4456 = !DILocation(line: 34, column: 2, scope: !4451)
!4457 = distinct !DISubprogram(name: "parse_no_kvmclock_vsyscall", scope: !3, file: !3, line: 38, type: !4297, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4458)
!4458 = !{!4459}
!4459 = !DILocalVariable(name: "arg", arg: 1, scope: !4457, file: !3, line: 38, type: !574)
!4460 = !DILocation(line: 38, column: 52, scope: !4457)
!4461 = !DILocation(line: 40, column: 20, scope: !4457)
!4462 = !DILocation(line: 41, column: 2, scope: !4457)
!4463 = distinct !DISubprogram(name: "kvm_check_and_clear_guest_paused", scope: !3, file: !3, line: 135, type: !1624, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4464)
!4464 = !{!4465, !4466}
!4465 = !DILocalVariable(name: "src", scope: !4463, file: !3, line: 137, type: !315)
!4466 = !DILocalVariable(name: "ret", scope: !4463, file: !3, line: 138, type: !985)
!4467 = !DILocation(line: 137, column: 2, scope: !4463)
!4468 = !DILocation(line: 137, column: 37, scope: !4463)
!4469 = !DILocation(line: 137, column: 43, scope: !4463)
!4470 = !DILocation(line: 138, column: 2, scope: !4463)
!4471 = !DILocation(line: 138, column: 7, scope: !4463)
!4472 = !DILocation(line: 140, column: 7, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 140, column: 6)
!4474 = !DILocation(line: 140, column: 6, scope: !4463)
!4475 = !DILocation(line: 141, column: 10, scope: !4473)
!4476 = !{i8 0, i8 2}
!4477 = !DILocation(line: 141, column: 3, scope: !4473)
!4478 = !DILocation(line: 143, column: 7, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 143, column: 6)
!4480 = !DILocation(line: 143, column: 12, scope: !4479)
!4481 = !DILocation(line: 143, column: 17, scope: !4479)
!4482 = !DILocation(line: 143, column: 23, scope: !4479)
!4483 = !DILocation(line: 143, column: 48, scope: !4479)
!4484 = !DILocation(line: 143, column: 6, scope: !4463)
!4485 = !DILocation(line: 144, column: 3, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 143, column: 54)
!4487 = !DILocation(line: 144, column: 8, scope: !4486)
!4488 = !DILocation(line: 144, column: 13, scope: !4486)
!4489 = !DILocation(line: 144, column: 19, scope: !4486)
!4490 = !DILocation(line: 145, column: 3, scope: !4486)
!4491 = !DILocation(line: 146, column: 7, scope: !4486)
!4492 = !DILocation(line: 147, column: 2, scope: !4486)
!4493 = !DILocation(line: 148, column: 9, scope: !4463)
!4494 = !DILocation(line: 148, column: 2, scope: !4463)
!4495 = !DILocation(line: 149, column: 1, scope: !4463)
!4496 = distinct !DISubprogram(name: "this_cpu_hvclock", scope: !4497, file: !4497, line: 16, type: !4498, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4500)
!4497 = !DIFile(filename: "./arch/x86/include/asm/kvmclock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a73948890f86029d071282148546f477")
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!315}
!4500 = !{!4501, !4503, !4505}
!4501 = !DILocalVariable(name: "pscr_ret__", scope: !4502, file: !4497, line: 18, type: !315)
!4502 = distinct !DILexicalBlock(scope: !4496, file: !4497, line: 18, column: 9)
!4503 = !DILocalVariable(name: "__vpp_verify", scope: !4504, file: !4497, line: 18, type: !1317)
!4504 = distinct !DILexicalBlock(scope: !4502, file: !4497, line: 18, column: 9)
!4505 = !DILocalVariable(name: "pfo_val__", scope: !4506, file: !4497, line: 18, type: !330)
!4506 = distinct !DILexicalBlock(scope: !4502, file: !4497, line: 18, column: 9)
!4507 = !DILocation(line: 18, column: 9, scope: !4502)
!4508 = !DILocation(line: 18, column: 9, scope: !4504)
!4509 = !DILocation(line: 18, column: 9, scope: !4506)
!4510 = !{i64 2155018316}
!4511 = !DILocation(line: 18, column: 9, scope: !4496)
!4512 = !DILocation(line: 18, column: 2, scope: !4496)
!4513 = !DISubprogram(name: "pvclock_touch_watchdogs", scope: !317, file: !317, line: 19, type: !2122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4514 = distinct !DISubprogram(name: "kvm_clock_get_cycles", scope: !3, file: !3, line: 84, type: !4316, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4515)
!4515 = !{!4516}
!4516 = !DILocalVariable(name: "cs", arg: 1, scope: !4514, file: !3, line: 84, type: !4318)
!4517 = !DILocation(line: 84, column: 53, scope: !4514)
!4518 = !DILocation(line: 86, column: 9, scope: !4514)
!4519 = !DILocation(line: 86, column: 2, scope: !4514)
!4520 = distinct !DISubprogram(name: "kvm_cs_enable", scope: !3, file: !3, line: 151, type: !4334, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4521)
!4521 = !{!4522}
!4522 = !DILocalVariable(name: "cs", arg: 1, scope: !4520, file: !3, line: 151, type: !4318)
!4523 = !DILocation(line: 151, column: 46, scope: !4520)
!4524 = !DILocation(line: 153, column: 2, scope: !4520)
!4525 = !DILocation(line: 154, column: 2, scope: !4520)
!4526 = distinct !DISubprogram(name: "kvmclock_disable", scope: !3, file: !3, line: 196, type: !2122, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4527 = !DILocation(line: 198, column: 6, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 198, column: 6)
!4529 = !DILocation(line: 198, column: 6, scope: !4526)
!4530 = !DILocation(line: 199, column: 20, scope: !4528)
!4531 = !DILocation(line: 199, column: 3, scope: !4528)
!4532 = !DILocation(line: 200, column: 1, scope: !4526)
!4533 = distinct !DISubprogram(name: "native_write_msr", scope: !4534, file: !4534, line: 143, type: !4535, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4537)
!4534 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!4535 = !DISubroutineType(types: !4536)
!4536 = !{null, !7, !324, !324}
!4537 = !{!4538, !4539, !4540}
!4538 = !DILocalVariable(name: "msr", arg: 1, scope: !4533, file: !4534, line: 143, type: !7)
!4539 = !DILocalVariable(name: "low", arg: 2, scope: !4533, file: !4534, line: 143, type: !324)
!4540 = !DILocalVariable(name: "high", arg: 3, scope: !4533, file: !4534, line: 143, type: !324)
!4541 = !DILocation(line: 143, column: 31, scope: !4533)
!4542 = !DILocation(line: 143, column: 40, scope: !4533)
!4543 = !DILocation(line: 143, column: 49, scope: !4533)
!4544 = !DILocation(line: 145, column: 10, scope: !4533)
!4545 = !DILocation(line: 145, column: 15, scope: !4533)
!4546 = !DILocation(line: 145, column: 20, scope: !4533)
!4547 = !DILocation(line: 145, column: 2, scope: !4533)
!4548 = !DILocation(line: 147, column: 6, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4533, file: !4534, line: 147, column: 6)
!4550 = !DILocation(line: 147, column: 6, scope: !4533)
!4551 = !DILocation(line: 148, column: 22, scope: !4549)
!4552 = !DILocation(line: 148, column: 33, scope: !4549)
!4553 = !DILocation(line: 148, column: 28, scope: !4549)
!4554 = !DILocation(line: 148, column: 38, scope: !4549)
!4555 = !DILocation(line: 148, column: 46, scope: !4549)
!4556 = !DILocation(line: 148, column: 44, scope: !4549)
!4557 = !DILocation(line: 148, column: 3, scope: !4549)
!4558 = !DILocation(line: 149, column: 1, scope: !4533)
!4559 = distinct !DISubprogram(name: "__initstub__kmod_kvmclock__308_262_kvm_setup_vsyscall_timeinfoearly", scope: !3, file: !3, line: 262, type: !1892, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4560 = !DILocation(line: 262, column: 1, scope: !4559)
!4561 = distinct !DISubprogram(name: "kvm_setup_vsyscall_timeinfo", scope: !3, file: !3, line: 241, type: !1892, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4562)
!4562 = !{!4563, !4567, !4569}
!4563 = !DILocalVariable(name: "__vpp_verify", scope: !4564, file: !3, line: 249, type: !1317)
!4564 = distinct !DILexicalBlock(scope: !4565, file: !3, line: 249, column: 6)
!4565 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 249, column: 6)
!4566 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 249, column: 6)
!4567 = !DILocalVariable(name: "__ptr", scope: !4568, file: !3, line: 249, type: !348)
!4568 = distinct !DILexicalBlock(scope: !4565, file: !3, line: 249, column: 6)
!4569 = !DILocalVariable(name: "flags", scope: !4570, file: !3, line: 250, type: !340)
!4570 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 249, column: 57)
!4571 = !DILocation(line: 243, column: 7, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 243, column: 6)
!4573 = !DILocation(line: 243, column: 28, scope: !4572)
!4574 = !DILocation(line: 243, column: 32, scope: !4572)
!4575 = !DILocation(line: 243, column: 41, scope: !4572)
!4576 = !DILocation(line: 243, column: 44, scope: !4572)
!4577 = !DILocation(line: 243, column: 6, scope: !4561)
!4578 = !DILocation(line: 244, column: 3, scope: !4572)
!4579 = !DILocation(line: 246, column: 2, scope: !4561)
!4580 = !DILocation(line: 249, column: 6, scope: !4565)
!4581 = !DILocation(line: 249, column: 6, scope: !4564)
!4582 = !DILocation(line: 249, column: 6, scope: !4568)
!4583 = !DILocation(line: 249, column: 6, scope: !4566)
!4584 = !DILocation(line: 249, column: 35, scope: !4566)
!4585 = !DILocation(line: 249, column: 38, scope: !4566)
!4586 = !DILocation(line: 249, column: 6, scope: !4561)
!4587 = !DILocation(line: 250, column: 3, scope: !4570)
!4588 = !DILocation(line: 250, column: 6, scope: !4570)
!4589 = !DILocation(line: 252, column: 11, scope: !4570)
!4590 = !DILocation(line: 252, column: 9, scope: !4570)
!4591 = !DILocation(line: 253, column: 9, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 253, column: 7)
!4593 = !DILocation(line: 253, column: 15, scope: !4592)
!4594 = !DILocation(line: 253, column: 7, scope: !4570)
!4595 = !DILocation(line: 254, column: 4, scope: !4592)
!4596 = !DILocation(line: 256, column: 29, scope: !4570)
!4597 = !DILocation(line: 257, column: 2, scope: !4566)
!4598 = !DILocation(line: 257, column: 2, scope: !4570)
!4599 = !DILocation(line: 260, column: 2, scope: !4561)
!4600 = !DILocation(line: 261, column: 1, scope: !4561)
!4601 = distinct !DISubprogram(name: "kvmclock_init", scope: !3, file: !3, line: 288, type: !2122, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4602)
!4602 = !{!4603, !4604, !4607}
!4603 = !DILocalVariable(name: "flags", scope: !4601, file: !3, line: 290, type: !340)
!4604 = !DILocalVariable(name: "__vpp_verify", scope: !4605, file: !3, line: 313, type: !1317)
!4605 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 313, column: 2)
!4606 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 313, column: 2)
!4607 = !DILocalVariable(name: "pto_val__", scope: !4608, file: !3, line: 313, type: !330)
!4608 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 313, column: 2)
!4609 = !DILocation(line: 290, column: 2, scope: !4601)
!4610 = !DILocation(line: 290, column: 5, scope: !4601)
!4611 = !DILocation(line: 292, column: 7, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 292, column: 6)
!4613 = !DILocation(line: 292, column: 28, scope: !4612)
!4614 = !DILocation(line: 292, column: 32, scope: !4612)
!4615 = !DILocation(line: 292, column: 6, scope: !4601)
!4616 = !DILocation(line: 293, column: 3, scope: !4612)
!4617 = !DILocation(line: 295, column: 6, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 295, column: 6)
!4619 = !DILocation(line: 295, column: 6, scope: !4601)
!4620 = !DILocation(line: 296, column: 23, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4618, file: !3, line: 295, column: 54)
!4622 = !DILocation(line: 297, column: 22, scope: !4621)
!4623 = !DILocation(line: 298, column: 2, scope: !4621)
!4624 = !DILocation(line: 298, column: 13, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4618, file: !3, line: 298, column: 13)
!4626 = !DILocation(line: 298, column: 13, scope: !4618)
!4627 = !DILocation(line: 299, column: 23, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4625, file: !3, line: 298, column: 60)
!4629 = !DILocation(line: 300, column: 22, scope: !4628)
!4630 = !DILocation(line: 301, column: 2, scope: !4628)
!4631 = !DILocation(line: 302, column: 3, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4625, file: !3, line: 301, column: 9)
!4633 = !DILocation(line: 305, column: 6, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 305, column: 6)
!4635 = !DILocation(line: 306, column: 39, scope: !4634)
!4636 = !DILocation(line: 305, column: 6, scope: !4601)
!4637 = !DILocation(line: 307, column: 3, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 306, column: 44)
!4639 = !DILocation(line: 310, column: 2, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 310, column: 2)
!4641 = !DILocation(line: 310, column: 2, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 310, column: 2)
!4643 = !DILocation(line: 313, column: 2, scope: !4601)
!4644 = !DILocation(line: 313, column: 2, scope: !4606)
!4645 = !DILocation(line: 313, column: 2, scope: !4605)
!4646 = !DILocation(line: 313, column: 2, scope: !4608)
!4647 = !{i64 2155059354}
!4648 = !DILocation(line: 314, column: 2, scope: !4601)
!4649 = !DILocation(line: 315, column: 2, scope: !4601)
!4650 = !DILocation(line: 317, column: 6, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 317, column: 6)
!4652 = !DILocation(line: 317, column: 6, scope: !4601)
!4653 = !DILocation(line: 318, column: 3, scope: !4651)
!4654 = !DILocation(line: 320, column: 10, scope: !4601)
!4655 = !DILocation(line: 320, column: 8, scope: !4601)
!4656 = !DILocation(line: 321, column: 23, scope: !4601)
!4657 = !DILocation(line: 321, column: 29, scope: !4601)
!4658 = !DILocation(line: 321, column: 2, scope: !4601)
!4659 = !DILocation(line: 323, column: 29, scope: !4601)
!4660 = !DILocation(line: 324, column: 29, scope: !4601)
!4661 = !DILocation(line: 325, column: 29, scope: !4601)
!4662 = !DILocation(line: 326, column: 29, scope: !4601)
!4663 = !DILocation(line: 328, column: 38, scope: !4601)
!4664 = !DILocation(line: 330, column: 38, scope: !4601)
!4665 = !DILocation(line: 331, column: 41, scope: !4601)
!4666 = !DILocation(line: 332, column: 2, scope: !4601)
!4667 = !DILocation(line: 342, column: 45, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 342, column: 6)
!4669 = !DILocation(line: 342, column: 6, scope: !4668)
!4670 = !DILocation(line: 343, column: 44, scope: !4668)
!4671 = !DILocation(line: 343, column: 6, scope: !4668)
!4672 = !DILocation(line: 344, column: 7, scope: !4668)
!4673 = !DILocation(line: 342, column: 6, scope: !4601)
!4674 = !DILocation(line: 345, column: 20, scope: !4668)
!4675 = !DILocation(line: 345, column: 3, scope: !4668)
!4676 = !DILocation(line: 347, column: 2, scope: !4601)
!4677 = !DILocation(line: 348, column: 15, scope: !4601)
!4678 = !DILocation(line: 349, column: 1, scope: !4601)
!4679 = !DISubprogram(name: "kvm_para_available", scope: !4680, file: !4680, line: 123, type: !1624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4680 = !DIFile(filename: "./arch/x86/include/asm/kvm_para.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "780f37e3ea06926454ceb60b0563e4b2")
!4681 = distinct !DISubprogram(name: "kvm_para_has_feature", scope: !4682, file: !4682, line: 8, type: !4683, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4685)
!4682 = !DIFile(filename: "./include/linux/kvm_para.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6140a9ae936ebae60a506bfa2a09985d")
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!985, !7}
!4685 = !{!4686}
!4686 = !DILocalVariable(name: "feature", arg: 1, scope: !4681, file: !4682, line: 8, type: !7)
!4687 = !DILocation(line: 8, column: 54, scope: !4681)
!4688 = !DILocation(line: 10, column: 12, scope: !4681)
!4689 = !DILocation(line: 10, column: 47, scope: !4681)
!4690 = !DILocation(line: 10, column: 44, scope: !4681)
!4691 = !DILocation(line: 10, column: 37, scope: !4681)
!4692 = !DILocation(line: 10, column: 10, scope: !4681)
!4693 = !DILocation(line: 10, column: 9, scope: !4681)
!4694 = !DILocation(line: 10, column: 2, scope: !4681)
!4695 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !108, file: !108, line: 283, type: !4696, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4701)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!109, !107, !548, !4698, !4698}
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!109, !7}
!4701 = !{!4702, !4703, !4704, !4705}
!4702 = !DILocalVariable(name: "state", arg: 1, scope: !4695, file: !108, line: 283, type: !107)
!4703 = !DILocalVariable(name: "name", arg: 2, scope: !4695, file: !108, line: 284, type: !548)
!4704 = !DILocalVariable(name: "startup", arg: 3, scope: !4695, file: !108, line: 285, type: !4698)
!4705 = !DILocalVariable(name: "teardown", arg: 4, scope: !4695, file: !108, line: 286, type: !4698)
!4706 = !DILocation(line: 283, column: 54, scope: !4695)
!4707 = !DILocation(line: 284, column: 21, scope: !4695)
!4708 = !DILocation(line: 285, column: 15, scope: !4695)
!4709 = !DILocation(line: 286, column: 15, scope: !4695)
!4710 = !DILocation(line: 288, column: 29, scope: !4695)
!4711 = !DILocation(line: 288, column: 36, scope: !4695)
!4712 = !DILocation(line: 288, column: 48, scope: !4695)
!4713 = !DILocation(line: 288, column: 57, scope: !4695)
!4714 = !DILocation(line: 288, column: 9, scope: !4695)
!4715 = !DILocation(line: 288, column: 2, scope: !4695)
!4716 = distinct !DISubprogram(name: "kvmclock_setup_percpu", scope: !3, file: !3, line: 264, type: !4699, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4717)
!4717 = !{!4718, !4719, !4720, !4723, !4725, !4729, !4731, !4734}
!4718 = !DILocalVariable(name: "cpu", arg: 1, scope: !4716, file: !3, line: 264, type: !7)
!4719 = !DILocalVariable(name: "p", scope: !4716, file: !3, line: 266, type: !315)
!4720 = !DILocalVariable(name: "__vpp_verify", scope: !4721, file: !3, line: 266, type: !1317)
!4721 = distinct !DILexicalBlock(scope: !4722, file: !3, line: 266, column: 41)
!4722 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 266, column: 41)
!4723 = !DILocalVariable(name: "__ptr", scope: !4724, file: !3, line: 266, type: !348)
!4724 = distinct !DILexicalBlock(scope: !4722, file: !3, line: 266, column: 41)
!4725 = !DILocalVariable(name: "__vpp_verify", scope: !4726, file: !3, line: 273, type: !1317)
!4726 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 273, column: 25)
!4727 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 273, column: 25)
!4728 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 273, column: 6)
!4729 = !DILocalVariable(name: "__ptr", scope: !4730, file: !3, line: 273, type: !348)
!4730 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 273, column: 25)
!4731 = !DILocalVariable(name: "__vpp_verify", scope: !4732, file: !3, line: 284, type: !1317)
!4732 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 284, column: 2)
!4733 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 284, column: 2)
!4734 = !DILocalVariable(name: "__ptr", scope: !4735, file: !3, line: 284, type: !348)
!4735 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 284, column: 2)
!4736 = !DILocation(line: 264, column: 47, scope: !4716)
!4737 = !DILocation(line: 266, column: 2, scope: !4716)
!4738 = !DILocation(line: 266, column: 37, scope: !4716)
!4739 = !DILocation(line: 266, column: 41, scope: !4722)
!4740 = !DILocation(line: 266, column: 41, scope: !4721)
!4741 = !DILocation(line: 266, column: 41, scope: !4724)
!4742 = !DILocation(line: 266, column: 41, scope: !4716)
!4743 = !DILocation(line: 273, column: 7, scope: !4728)
!4744 = !DILocation(line: 273, column: 11, scope: !4728)
!4745 = !DILocation(line: 273, column: 15, scope: !4728)
!4746 = !DILocation(line: 273, column: 17, scope: !4728)
!4747 = !DILocation(line: 273, column: 20, scope: !4728)
!4748 = !DILocation(line: 273, column: 25, scope: !4727)
!4749 = !DILocation(line: 273, column: 25, scope: !4726)
!4750 = !DILocation(line: 273, column: 25, scope: !4730)
!4751 = !DILocation(line: 273, column: 25, scope: !4728)
!4752 = !DILocation(line: 273, column: 22, scope: !4728)
!4753 = !DILocation(line: 273, column: 6, scope: !4716)
!4754 = !DILocation(line: 274, column: 3, scope: !4728)
!4755 = !DILocation(line: 277, column: 6, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 277, column: 6)
!4757 = !DILocation(line: 277, column: 10, scope: !4756)
!4758 = !DILocation(line: 277, column: 6, scope: !4716)
!4759 = !DILocation(line: 278, column: 22, scope: !4756)
!4760 = !DILocation(line: 278, column: 8, scope: !4756)
!4761 = !DILocation(line: 278, column: 5, scope: !4756)
!4762 = !DILocation(line: 278, column: 3, scope: !4756)
!4763 = !DILocation(line: 279, column: 11, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4756, file: !3, line: 279, column: 11)
!4765 = !DILocation(line: 279, column: 11, scope: !4756)
!4766 = !DILocation(line: 280, column: 7, scope: !4764)
!4767 = !DILocation(line: 280, column: 21, scope: !4764)
!4768 = !DILocation(line: 280, column: 19, scope: !4764)
!4769 = !DILocation(line: 280, column: 25, scope: !4764)
!4770 = !DILocation(line: 280, column: 5, scope: !4764)
!4771 = !DILocation(line: 280, column: 3, scope: !4764)
!4772 = !DILocation(line: 282, column: 3, scope: !4764)
!4773 = !DILocation(line: 284, column: 35, scope: !4716)
!4774 = !DILocation(line: 284, column: 2, scope: !4733)
!4775 = !DILocation(line: 284, column: 2, scope: !4732)
!4776 = !DILocation(line: 284, column: 2, scope: !4735)
!4777 = !DILocation(line: 284, column: 33, scope: !4716)
!4778 = !DILocation(line: 285, column: 9, scope: !4716)
!4779 = !DILocation(line: 285, column: 2, scope: !4716)
!4780 = !DILocation(line: 286, column: 1, scope: !4716)
!4781 = !DISubprogram(name: "_printk", scope: !4782, file: !4782, line: 153, type: !4783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4782 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!109, !548, null}
!4785 = distinct !DISubprogram(name: "kvm_register_clock", scope: !3, file: !3, line: 167, type: !4786, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4788)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{null, !574}
!4788 = !{!4789, !4790, !4791}
!4789 = !DILocalVariable(name: "txt", arg: 1, scope: !4785, file: !3, line: 167, type: !574)
!4790 = !DILocalVariable(name: "src", scope: !4785, file: !3, line: 169, type: !315)
!4791 = !DILocalVariable(name: "pa", scope: !4785, file: !3, line: 170, type: !330)
!4792 = !DILocation(line: 167, column: 38, scope: !4785)
!4793 = !DILocation(line: 169, column: 2, scope: !4785)
!4794 = !DILocation(line: 169, column: 37, scope: !4785)
!4795 = !DILocation(line: 169, column: 43, scope: !4785)
!4796 = !DILocation(line: 170, column: 2, scope: !4785)
!4797 = !DILocation(line: 170, column: 6, scope: !4785)
!4798 = !DILocation(line: 172, column: 7, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4785, file: !3, line: 172, column: 6)
!4800 = !DILocation(line: 172, column: 6, scope: !4785)
!4801 = !DILocation(line: 173, column: 3, scope: !4799)
!4802 = !DILocation(line: 175, column: 26, scope: !4785)
!4803 = !DILocation(line: 175, column: 31, scope: !4785)
!4804 = !DILocation(line: 175, column: 7, scope: !4785)
!4805 = !DILocation(line: 175, column: 37, scope: !4785)
!4806 = !DILocation(line: 175, column: 5, scope: !4785)
!4807 = !DILocation(line: 176, column: 9, scope: !4785)
!4808 = !DILocation(line: 176, column: 30, scope: !4785)
!4809 = !DILocation(line: 176, column: 2, scope: !4785)
!4810 = !DILocation(line: 177, column: 2, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 177, column: 2)
!4812 = distinct !DILexicalBlock(scope: !4785, file: !3, line: 177, column: 2)
!4813 = !DILocation(line: 177, column: 2, scope: !4812)
!4814 = !DILocation(line: 178, column: 1, scope: !4785)
!4815 = !DISubprogram(name: "pvclock_set_pvti_cpu0_va", scope: !317, file: !317, line: 98, type: !4816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{null, !315}
!4818 = !DISubprogram(name: "pvclock_set_flags", scope: !317, file: !317, line: 12, type: !4819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{null, !340}
!4821 = !DISubprogram(name: "pvclock_read_flags", scope: !317, file: !317, line: 11, type: !4822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!340, !4824}
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!4825 = distinct !DISubprogram(name: "kvm_sched_clock_init", scope: !3, file: !3, line: 94, type: !4826, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4828)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{null, !985}
!4828 = !{!4829}
!4829 = !DILocalVariable(name: "stable", arg: 1, scope: !4825, file: !3, line: 94, type: !985)
!4830 = !DILocation(line: 94, column: 46, scope: !4825)
!4831 = !DILocation(line: 96, column: 7, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 96, column: 6)
!4833 = !DILocation(line: 96, column: 6, scope: !4825)
!4834 = !DILocation(line: 97, column: 3, scope: !4832)
!4835 = !DILocation(line: 98, column: 27, scope: !4825)
!4836 = !DILocation(line: 98, column: 25, scope: !4825)
!4837 = !DILocation(line: 99, column: 2, scope: !4825)
!4838 = !DILocation(line: 101, column: 2, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 101, column: 2)
!4840 = !DILocation(line: 101, column: 2, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 101, column: 2)
!4842 = !DILocation(line: 104, column: 2, scope: !4825)
!4843 = !DILocation(line: 104, column: 2, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 104, column: 2)
!4845 = !DILocation(line: 106, column: 1, scope: !4825)
!4846 = distinct !DISubprogram(name: "kvm_get_tsc_khz", scope: !3, file: !3, line: 117, type: !4847, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!348}
!4849 = !DILocation(line: 119, column: 2, scope: !4846)
!4850 = !DILocation(line: 119, column: 2, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4846, file: !3, line: 119, column: 2)
!4852 = !DILocation(line: 120, column: 25, scope: !4846)
!4853 = !DILocation(line: 120, column: 9, scope: !4846)
!4854 = !DILocation(line: 120, column: 2, scope: !4846)
!4855 = !DILocation(line: 61, column: 50, scope: !4419)
!4856 = !DILocation(line: 63, column: 9, scope: !4419)
!4857 = !DILocation(line: 63, column: 29, scope: !4419)
!4858 = !DILocation(line: 63, column: 2, scope: !4419)
!4859 = !DILocation(line: 64, column: 2, scope: !4419)
!4860 = !DILocation(line: 64, column: 2, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 64, column: 2)
!4862 = !{i64 2155023368}
!4863 = !DILocation(line: 65, column: 38, scope: !4419)
!4864 = !DILocation(line: 65, column: 55, scope: !4419)
!4865 = !DILocation(line: 65, column: 2, scope: !4419)
!4866 = !DILocation(line: 66, column: 2, scope: !4419)
!4867 = !DILocation(line: 66, column: 2, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 66, column: 2)
!4869 = !{i64 2155023514}
!4870 = !DILocation(line: 66, column: 2, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 66, column: 2)
!4872 = !DILocation(line: 66, column: 2, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 66, column: 2)
!4874 = !{i64 2155023696}
!4875 = !DILocation(line: 67, column: 1, scope: !4419)
!4876 = distinct !DISubprogram(name: "kvm_set_wallclock", scope: !3, file: !3, line: 69, type: !4877, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4881)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!109, !4879}
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3859)
!4881 = !{!4882}
!4882 = !DILocalVariable(name: "now", arg: 1, scope: !4876, file: !3, line: 69, type: !4879)
!4883 = !DILocation(line: 69, column: 55, scope: !4876)
!4884 = !DILocation(line: 71, column: 2, scope: !4876)
!4885 = distinct !DISubprogram(name: "kvm_setup_secondary_clock", scope: !3, file: !3, line: 190, type: !2122, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4886 = !DILocation(line: 192, column: 2, scope: !4885)
!4887 = !DILocation(line: 193, column: 1, scope: !4885)
!4888 = distinct !DISubprogram(name: "kvm_save_sched_clock_state", scope: !3, file: !3, line: 180, type: !2122, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4889 = !DILocation(line: 182, column: 1, scope: !4888)
!4890 = distinct !DISubprogram(name: "kvm_restore_sched_clock_state", scope: !3, file: !3, line: 184, type: !2122, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4891 = !DILocation(line: 186, column: 2, scope: !4890)
!4892 = !DILocation(line: 187, column: 1, scope: !4890)
!4893 = distinct !DISubprogram(name: "kvm_get_preset_lpj", scope: !3, file: !3, line: 123, type: !2122, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4894)
!4894 = !{!4895, !4896, !4897, !4899}
!4895 = !DILocalVariable(name: "khz", scope: !4893, file: !3, line: 125, type: !348)
!4896 = !DILocalVariable(name: "lpj", scope: !4893, file: !3, line: 126, type: !330)
!4897 = !DILocalVariable(name: "__base", scope: !4898, file: !3, line: 131, type: !950)
!4898 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 131, column: 2)
!4899 = !DILocalVariable(name: "__rem", scope: !4898, file: !3, line: 131, type: !950)
!4900 = !DILocation(line: 125, column: 2, scope: !4893)
!4901 = !DILocation(line: 125, column: 16, scope: !4893)
!4902 = !DILocation(line: 126, column: 2, scope: !4893)
!4903 = !DILocation(line: 126, column: 6, scope: !4893)
!4904 = !DILocation(line: 128, column: 8, scope: !4893)
!4905 = !DILocation(line: 128, column: 6, scope: !4893)
!4906 = !DILocation(line: 130, column: 14, scope: !4893)
!4907 = !DILocation(line: 130, column: 18, scope: !4893)
!4908 = !DILocation(line: 130, column: 6, scope: !4893)
!4909 = !DILocation(line: 131, column: 2, scope: !4898)
!4910 = !DILocation(line: 131, column: 2, scope: !4893)
!4911 = !DILocation(line: 132, column: 15, scope: !4893)
!4912 = !DILocation(line: 132, column: 13, scope: !4893)
!4913 = !DILocation(line: 133, column: 1, scope: !4893)
!4914 = distinct !DISubprogram(name: "arch_test_bit", scope: !4915, file: !4915, line: 237, type: !4916, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4921)
!4915 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!985, !348, !4918}
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4920)
!4920 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !348)
!4921 = !{!4922, !4923}
!4922 = !DILocalVariable(name: "nr", arg: 1, scope: !4914, file: !4915, line: 237, type: !348)
!4923 = !DILocalVariable(name: "addr", arg: 2, scope: !4914, file: !4915, line: 237, type: !4918)
!4924 = !DILocation(line: 237, column: 29, scope: !4914)
!4925 = !DILocation(line: 237, column: 63, scope: !4914)
!4926 = !DILocation(line: 239, column: 30, scope: !4914)
!4927 = !DILocation(line: 239, column: 9, scope: !4914)
!4928 = !DILocation(line: 239, column: 54, scope: !4914)
!4929 = !DILocation(line: 239, column: 58, scope: !4914)
!4930 = !DILocation(line: 239, column: 36, scope: !4914)
!4931 = !DILocation(line: 240, column: 26, scope: !4914)
!4932 = !DILocation(line: 240, column: 30, scope: !4914)
!4933 = !DILocation(line: 240, column: 8, scope: !4914)
!4934 = !DILocation(line: 239, column: 2, scope: !4914)
!4935 = !DISubprogram(name: "check_tsc_unstable", scope: !4936, file: !4936, line: 37, type: !1892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4936 = !DIFile(filename: "./arch/x86/include/asm/tsc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c263a7d672afe42de3ea9a5e4b53aa46")
!4937 = distinct !DISubprogram(name: "clocksource_register_hz", scope: !4312, file: !4312, line: 244, type: !4938, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4940)
!4938 = !DISubroutineType(types: !4939)
!4939 = !{!109, !4318, !324}
!4940 = !{!4941, !4942}
!4941 = !DILocalVariable(name: "cs", arg: 1, scope: !4937, file: !4312, line: 244, type: !4318)
!4942 = !DILocalVariable(name: "hz", arg: 2, scope: !4937, file: !4312, line: 244, type: !324)
!4943 = !DILocation(line: 244, column: 63, scope: !4937)
!4944 = !DILocation(line: 244, column: 71, scope: !4937)
!4945 = !DILocation(line: 246, column: 38, scope: !4937)
!4946 = !DILocation(line: 246, column: 45, scope: !4937)
!4947 = !DILocation(line: 246, column: 9, scope: !4937)
!4948 = !DILocation(line: 246, column: 2, scope: !4937)
!4949 = !DILocation(line: 76, column: 2, scope: !4388)
!4950 = !DILocation(line: 76, column: 6, scope: !4388)
!4951 = !DILocation(line: 78, column: 2, scope: !4388)
!4952 = !DILocation(line: 78, column: 2, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 78, column: 2)
!4954 = !{i64 2155025404}
!4955 = !DILocation(line: 79, column: 38, scope: !4388)
!4956 = !DILocation(line: 79, column: 8, scope: !4388)
!4957 = !DILocation(line: 79, column: 6, scope: !4388)
!4958 = !DILocation(line: 80, column: 2, scope: !4388)
!4959 = !DILocation(line: 80, column: 2, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 80, column: 2)
!4961 = !{i64 2155025560}
!4962 = !DILocation(line: 80, column: 2, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 80, column: 2)
!4964 = !DILocation(line: 80, column: 2, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4963, file: !3, line: 80, column: 2)
!4966 = !{i64 2155025719}
!4967 = !DILocation(line: 81, column: 9, scope: !4388)
!4968 = !DILocation(line: 82, column: 1, scope: !4388)
!4969 = !DILocation(line: 81, column: 2, scope: !4388)
!4970 = distinct !DISubprogram(name: "__preempt_count_add", scope: !4971, file: !4971, line: 78, type: !3099, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4972)
!4971 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!4972 = !{!4973, !4974, !4976}
!4973 = !DILocalVariable(name: "val", arg: 1, scope: !4970, file: !4971, line: 78, type: !109)
!4974 = !DILocalVariable(name: "pao_ID__", scope: !4975, file: !4971, line: 80, type: !1982)
!4975 = distinct !DILexicalBlock(scope: !4970, file: !4971, line: 80, column: 2)
!4976 = !DILocalVariable(name: "pto_val__", scope: !4977, file: !4971, line: 80, type: !324)
!4977 = distinct !DILexicalBlock(scope: !4978, file: !4971, line: 80, column: 2)
!4978 = distinct !DILexicalBlock(scope: !4979, file: !4971, line: 80, column: 2)
!4979 = distinct !DILexicalBlock(scope: !4975, file: !4971, line: 80, column: 2)
!4980 = !DILocation(line: 78, column: 53, scope: !4970)
!4981 = !DILocation(line: 80, column: 2, scope: !4970)
!4982 = !DILocation(line: 80, column: 2, scope: !4975)
!4983 = !DILocation(line: 80, column: 2, scope: !4979)
!4984 = !DILocation(line: 80, column: 2, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4979, file: !4971, line: 80, column: 2)
!4986 = !{i64 2149604733}
!4987 = !DILocation(line: 80, column: 2, scope: !4978)
!4988 = !DILocation(line: 80, column: 2, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4978, file: !4971, line: 80, column: 2)
!4990 = !{i64 2149605028}
!4991 = !DILocation(line: 80, column: 2, scope: !4977)
!4992 = !{i64 2149605733}
!4993 = !DILocation(line: 81, column: 1, scope: !4970)
!4994 = !DISubprogram(name: "pvclock_clocksource_read_nowd", scope: !317, file: !317, line: 10, type: !4995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!330, !4824}
!4997 = distinct !DISubprogram(name: "this_cpu_pvti", scope: !4497, file: !4497, line: 11, type: !4998, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5000)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!4824}
!5000 = !{!5001, !5003, !5005}
!5001 = !DILocalVariable(name: "pscr_ret__", scope: !5002, file: !4497, line: 13, type: !315)
!5002 = distinct !DILexicalBlock(scope: !4997, file: !4497, line: 13, column: 10)
!5003 = !DILocalVariable(name: "__vpp_verify", scope: !5004, file: !4497, line: 13, type: !1317)
!5004 = distinct !DILexicalBlock(scope: !5002, file: !4497, line: 13, column: 10)
!5005 = !DILocalVariable(name: "pfo_val__", scope: !5006, file: !4497, line: 13, type: !330)
!5006 = distinct !DILexicalBlock(scope: !5002, file: !4497, line: 13, column: 10)
!5007 = !DILocation(line: 13, column: 10, scope: !5002)
!5008 = !DILocation(line: 13, column: 10, scope: !5004)
!5009 = !DILocation(line: 13, column: 10, scope: !5006)
!5010 = !{i64 2155014887}
!5011 = !DILocation(line: 13, column: 10, scope: !4997)
!5012 = !DILocation(line: 13, column: 43, scope: !4997)
!5013 = !DILocation(line: 13, column: 2, scope: !4997)
!5014 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !4971, file: !4971, line: 93, type: !1624, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5015)
!5015 = !{!5016}
!5016 = !DILocalVariable(name: "c", scope: !5017, file: !4971, line: 95, type: !985)
!5017 = distinct !DILexicalBlock(scope: !5014, file: !4971, line: 95, column: 9)
!5018 = !DILocation(line: 95, column: 9, scope: !5017)
!5019 = !{i64 2149609089, i64 2149609182}
!5020 = !DILocation(line: 95, column: 9, scope: !5014)
!5021 = !DILocation(line: 95, column: 2, scope: !5014)
!5022 = distinct !DISubprogram(name: "vclocks_set_used", scope: !5023, file: !5023, line: 16, type: !5024, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5026)
!5023 = !DIFile(filename: "./arch/x86/include/asm/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6361f957ffa0e49ae33c4db6e2a6729d")
!5024 = !DISubroutineType(types: !5025)
!5025 = !{null, !7}
!5026 = !{!5027}
!5027 = !DILocalVariable(name: "which", arg: 1, scope: !5022, file: !5023, line: 16, type: !7)
!5028 = !DILocation(line: 16, column: 50, scope: !5022)
!5029 = !DILocation(line: 18, column: 2, scope: !5022)
!5030 = !DILocation(line: 18, column: 2, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5022, file: !5023, line: 18, column: 2)
!5032 = !DILocation(line: 18, column: 2, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5031, file: !5023, line: 18, column: 2)
!5034 = !DILocation(line: 18, column: 2, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5036, file: !5023, line: 18, column: 2)
!5036 = distinct !DILexicalBlock(scope: !5031, file: !5023, line: 18, column: 2)
!5037 = !DILocation(line: 18, column: 2, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5035, file: !5023, line: 18, column: 2)
!5039 = !DILocation(line: 18, column: 2, scope: !5036)
!5040 = !DILocation(line: 19, column: 1, scope: !5022)
!5041 = distinct !DISubprogram(name: "__wrmsr", scope: !4534, file: !4534, line: 92, type: !4535, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5042)
!5042 = !{!5043, !5044, !5045}
!5043 = !DILocalVariable(name: "msr", arg: 1, scope: !5041, file: !4534, line: 92, type: !7)
!5044 = !DILocalVariable(name: "low", arg: 2, scope: !5041, file: !4534, line: 92, type: !324)
!5045 = !DILocalVariable(name: "high", arg: 3, scope: !5041, file: !4534, line: 92, type: !324)
!5046 = !DILocation(line: 92, column: 50, scope: !5041)
!5047 = !DILocation(line: 92, column: 59, scope: !5041)
!5048 = !DILocation(line: 92, column: 68, scope: !5041)
!5049 = !DILocation(line: 97, column: 17, scope: !5041)
!5050 = !DILocation(line: 97, column: 27, scope: !5041)
!5051 = !DILocation(line: 97, column: 38, scope: !5041)
!5052 = !DILocation(line: 94, column: 2, scope: !5041)
!5053 = !{i64 986986, i64 987007, i64 2149203462, i64 2149203506, i64 2149203529, i64 2149203562, i64 2149203593, i64 2149203632}
!5054 = !DILocation(line: 98, column: 1, scope: !5041)
!5055 = distinct !DISubprogram(name: "static_key_false", scope: !2087, file: !2087, line: 205, type: !5056, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5070)
!5056 = !DISubroutineType(types: !5057)
!5057 = !{!985, !5058}
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2087, line: 85, size: 128, elements: !5060)
!5060 = !{!5061, !5062}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5059, file: !2087, line: 86, baseType: !510, size: 32)
!5062 = !DIDerivedType(tag: DW_TAG_member, scope: !5059, file: !2087, line: 101, baseType: !5063, size: 64, offset: 64)
!5063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5059, file: !2087, line: 101, size: 64, elements: !5064)
!5064 = !{!5065, !5066, !5067}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5063, file: !2087, line: 102, baseType: !348, size: 64)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5063, file: !2087, line: 103, baseType: !2085, size: 64)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5063, file: !2087, line: 104, baseType: !5068, size: 64)
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!5069 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2087, line: 104, flags: DIFlagFwdDecl)
!5070 = !{!5071}
!5071 = !DILocalVariable(name: "key", arg: 1, scope: !5055, file: !2087, line: 205, type: !5058)
!5072 = !DILocation(line: 205, column: 65, scope: !5055)
!5073 = !DILocation(line: 207, column: 28, scope: !5055)
!5074 = !DILocation(line: 207, column: 9, scope: !5055)
!5075 = !DILocation(line: 207, column: 2, scope: !5055)
!5076 = !DISubprogram(name: "do_trace_write_msr", scope: !4534, file: !4534, line: 64, type: !5077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{null, !7, !330, !109}
!5079 = distinct !DISubprogram(name: "arch_static_branch", scope: !5080, file: !5080, line: 25, type: !5081, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5083)
!5080 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!985, !5058, !985}
!5083 = !{!5084, !5085, !5086}
!5084 = !DILocalVariable(name: "key", arg: 1, scope: !5079, file: !5080, line: 25, type: !5058)
!5085 = !DILocalVariable(name: "branch", arg: 2, scope: !5079, file: !5080, line: 25, type: !985)
!5086 = !DILabel(scope: !5079, name: "l_yes", file: !5080, line: 33)
!5087 = !DILocation(line: 25, column: 67, scope: !5079)
!5088 = !DILocation(line: 25, column: 77, scope: !5079)
!5089 = !DILocation(line: 30, column: 13, scope: !5079)
!5090 = !DILocation(line: 30, column: 28, scope: !5079)
!5091 = !DILocation(line: 30, column: 26, scope: !5079)
!5092 = !DILocation(line: 27, column: 2, scope: !5079)
!5093 = !{i64 503101, i64 503145, i64 2147990120, i64 2147990141, i64 2147990167, i64 2147990200, i64 2147990234, i64 2147990258}
!5094 = !DILocation(line: 32, column: 2, scope: !5079)
!5095 = !DILocation(line: 33, column: 1, scope: !5079)
!5096 = !DILocation(line: 34, column: 2, scope: !5079)
!5097 = !DILocation(line: 35, column: 1, scope: !5079)
!5098 = distinct !DISubprogram(name: "kvmclock_init_mem", scope: !3, file: !3, line: 202, type: !2122, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5099)
!5099 = !{!5100, !5101, !5102, !5103}
!5100 = !DILocalVariable(name: "ncpus", scope: !5098, file: !3, line: 204, type: !348)
!5101 = !DILocalVariable(name: "order", scope: !5098, file: !3, line: 205, type: !7)
!5102 = !DILocalVariable(name: "p", scope: !5098, file: !3, line: 206, type: !365)
!5103 = !DILocalVariable(name: "r", scope: !5098, file: !3, line: 207, type: !109)
!5104 = !DILocation(line: 204, column: 2, scope: !5098)
!5105 = !DILocation(line: 204, column: 16, scope: !5098)
!5106 = !DILocation(line: 205, column: 2, scope: !5098)
!5107 = !DILocation(line: 205, column: 15, scope: !5098)
!5108 = !DILocation(line: 206, column: 2, scope: !5098)
!5109 = !DILocation(line: 206, column: 15, scope: !5098)
!5110 = !DILocation(line: 207, column: 2, scope: !5098)
!5111 = !DILocation(line: 207, column: 6, scope: !5098)
!5112 = !DILocation(line: 209, column: 29, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 209, column: 6)
!5114 = !DILocation(line: 209, column: 26, scope: !5113)
!5115 = !DILocation(line: 209, column: 6, scope: !5098)
!5116 = !DILocation(line: 210, column: 3, scope: !5113)
!5117 = !DILocation(line: 212, column: 10, scope: !5098)
!5118 = !DILocation(line: 212, column: 30, scope: !5098)
!5119 = !DILocation(line: 212, column: 8, scope: !5098)
!5120 = !DILocation(line: 213, column: 20, scope: !5098)
!5121 = !DILocation(line: 213, column: 26, scope: !5098)
!5122 = !DILocation(line: 213, column: 10, scope: !5098)
!5123 = !DILocation(line: 213, column: 8, scope: !5098)
!5124 = !DILocation(line: 215, column: 30, scope: !5098)
!5125 = !DILocation(line: 215, column: 6, scope: !5098)
!5126 = !DILocation(line: 215, column: 4, scope: !5098)
!5127 = !DILocation(line: 216, column: 7, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 216, column: 6)
!5129 = !DILocation(line: 216, column: 6, scope: !5098)
!5130 = !DILocation(line: 217, column: 3, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 217, column: 3)
!5132 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 216, column: 10)
!5133 = !DILocation(line: 217, column: 3, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 217, column: 3)
!5135 = !DILocation(line: 218, column: 3, scope: !5132)
!5136 = !DILocation(line: 221, column: 16, scope: !5098)
!5137 = !DILocation(line: 221, column: 14, scope: !5098)
!5138 = !DILocation(line: 227, column: 6, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 227, column: 6)
!5140 = !DILocation(line: 227, column: 6, scope: !5098)
!5141 = !DILocation(line: 228, column: 44, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5139, file: !3, line: 227, column: 50)
!5143 = !DILocation(line: 228, column: 28, scope: !5142)
!5144 = !DILocation(line: 229, column: 14, scope: !5142)
!5145 = !DILocation(line: 229, column: 11, scope: !5142)
!5146 = !DILocation(line: 229, column: 7, scope: !5142)
!5147 = !DILocation(line: 228, column: 7, scope: !5142)
!5148 = !DILocation(line: 228, column: 5, scope: !5142)
!5149 = !DILocation(line: 230, column: 7, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 230, column: 7)
!5151 = !DILocation(line: 230, column: 7, scope: !5142)
!5152 = !DILocation(line: 231, column: 17, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 230, column: 10)
!5154 = !DILocation(line: 231, column: 20, scope: !5153)
!5155 = !DILocation(line: 231, column: 4, scope: !5153)
!5156 = !DILocation(line: 232, column: 16, scope: !5153)
!5157 = !DILocation(line: 233, column: 4, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 233, column: 4)
!5159 = !DILocation(line: 233, column: 4, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 233, column: 4)
!5161 = !DILocation(line: 234, column: 4, scope: !5153)
!5162 = !DILocation(line: 236, column: 2, scope: !5142)
!5163 = !DILocation(line: 238, column: 9, scope: !5098)
!5164 = !DILocation(line: 238, column: 38, scope: !5098)
!5165 = !DILocation(line: 238, column: 35, scope: !5098)
!5166 = !DILocation(line: 238, column: 2, scope: !5098)
!5167 = !DILocation(line: 239, column: 1, scope: !5098)
!5168 = distinct !DISubprogram(name: "cpumask_weight", scope: !356, file: !356, line: 690, type: !5169, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5171)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!7, !353}
!5171 = !{!5172}
!5172 = !DILocalVariable(name: "srcp", arg: 1, scope: !5168, file: !356, line: 690, type: !353)
!5173 = !DILocation(line: 690, column: 65, scope: !5168)
!5174 = !DILocation(line: 692, column: 23, scope: !5168)
!5175 = !DILocation(line: 692, column: 9, scope: !5168)
!5176 = !DILocation(line: 692, column: 2, scope: !5168)
!5177 = distinct !DISubprogram(name: "get_order", scope: !5178, file: !5178, line: 29, type: !5179, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5181)
!5178 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6ad2a20729bf2780fb61509a4eca111b")
!5179 = !DISubroutineType(types: !5180)
!5180 = !{!109, !348}
!5181 = !{!5182}
!5182 = !DILocalVariable(name: "size", arg: 1, scope: !5177, file: !5178, line: 29, type: !348)
!5183 = !DILocation(line: 29, column: 72, scope: !5177)
!5184 = !DILocation(line: 31, column: 27, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5177, file: !5178, line: 31, column: 6)
!5186 = !DILocation(line: 31, column: 6, scope: !5185)
!5187 = !DILocation(line: 31, column: 6, scope: !5177)
!5188 = !DILocation(line: 32, column: 8, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5190, file: !5178, line: 32, column: 7)
!5190 = distinct !DILexicalBlock(scope: !5185, file: !5178, line: 31, column: 34)
!5191 = !DILocation(line: 32, column: 7, scope: !5190)
!5192 = !DILocation(line: 33, column: 4, scope: !5189)
!5193 = !DILocation(line: 35, column: 7, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5190, file: !5178, line: 35, column: 7)
!5195 = !DILocation(line: 35, column: 12, scope: !5194)
!5196 = !DILocation(line: 35, column: 7, scope: !5190)
!5197 = !DILocation(line: 36, column: 4, scope: !5194)
!5198 = !DILocation(line: 38, column: 10, scope: !5190)
!5199 = !DILocation(line: 38, column: 28, scope: !5190)
!5200 = !DILocation(line: 38, column: 41, scope: !5190)
!5201 = !DILocation(line: 38, column: 3, scope: !5190)
!5202 = !DILocation(line: 41, column: 6, scope: !5177)
!5203 = !DILocation(line: 42, column: 7, scope: !5177)
!5204 = !DILocation(line: 46, column: 15, scope: !5177)
!5205 = !DILocation(line: 46, column: 9, scope: !5177)
!5206 = !DILocation(line: 46, column: 2, scope: !5177)
!5207 = !DILocation(line: 48, column: 1, scope: !5177)
!5208 = !DISubprogram(name: "alloc_pages", scope: !5209, file: !5209, line: 264, type: !5210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5209 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!5210 = !DISubroutineType(types: !5211)
!5211 = !{!365, !362, !7}
!5212 = distinct !DISubprogram(name: "lowmem_page_address", scope: !1402, file: !1402, line: 2176, type: !5213, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5217)
!5213 = !DISubroutineType(types: !5214)
!5214 = !{!313, !5215}
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!5217 = !{!5218}
!5218 = !DILocalVariable(name: "page", arg: 1, scope: !5212, file: !1402, line: 2176, type: !5215)
!5219 = !DILocation(line: 2176, column: 69, scope: !5212)
!5220 = !DILocation(line: 2178, column: 9, scope: !5212)
!5221 = !DILocation(line: 2178, column: 2, scope: !5212)
!5222 = distinct !DISubprogram(name: "cc_platform_has", scope: !303, file: !303, line: 113, type: !5223, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5225)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!985, !302}
!5225 = !{!5226}
!5226 = !DILocalVariable(name: "attr", arg: 1, scope: !5222, file: !303, line: 113, type: !302)
!5227 = !DILocation(line: 113, column: 49, scope: !5222)
!5228 = !DILocation(line: 113, column: 57, scope: !5222)
!5229 = !DISubprogram(name: "set_memory_decrypted", scope: !5230, file: !5230, line: 52, type: !5231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5230 = !DIFile(filename: "./arch/x86/include/asm/set_memory.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ed4c9c9f9b5c1359158a637c4326a39")
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!109, !348, !109}
!5233 = !DISubprogram(name: "__free_pages", scope: !5209, file: !5209, line: 302, type: !5234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{null, !365, !7}
!5236 = distinct !DISubprogram(name: "bitmap_weight", scope: !5237, file: !5237, line: 453, type: !5238, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5241)
!5237 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!7, !5240, !7}
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!5241 = !{!5242, !5243}
!5242 = !DILocalVariable(name: "src", arg: 1, scope: !5236, file: !5237, line: 453, type: !5240)
!5243 = !DILocalVariable(name: "nbits", arg: 2, scope: !5236, file: !5237, line: 453, type: !7)
!5244 = !DILocation(line: 453, column: 49, scope: !5236)
!5245 = !DILocation(line: 453, column: 67, scope: !5236)
!5246 = !DILocation(line: 455, column: 6, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5236, file: !5237, line: 455, column: 6)
!5248 = !DILocation(line: 455, column: 6, scope: !5236)
!5249 = !DILocation(line: 456, column: 24, scope: !5247)
!5250 = !DILocation(line: 456, column: 23, scope: !5247)
!5251 = !DILocation(line: 456, column: 30, scope: !5247)
!5252 = !DILocation(line: 456, column: 28, scope: !5247)
!5253 = !DILocation(line: 456, column: 10, scope: !5247)
!5254 = !DILocation(line: 456, column: 3, scope: !5247)
!5255 = !DILocation(line: 457, column: 25, scope: !5236)
!5256 = !DILocation(line: 457, column: 30, scope: !5236)
!5257 = !DILocation(line: 457, column: 9, scope: !5236)
!5258 = !DILocation(line: 457, column: 2, scope: !5236)
!5259 = !DILocation(line: 458, column: 1, scope: !5236)
!5260 = distinct !DISubprogram(name: "hweight_long", scope: !5261, file: !5261, line: 95, type: !5262, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5264)
!5261 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!348, !348}
!5264 = !{!5265}
!5265 = !DILocalVariable(name: "w", arg: 1, scope: !5260, file: !5261, line: 95, type: !348)
!5266 = !DILocation(line: 95, column: 65, scope: !5260)
!5267 = !DILocation(line: 97, column: 41, scope: !5260)
!5268 = !DILocation(line: 97, column: 2, scope: !5260)
!5269 = !DISubprogram(name: "__bitmap_weight", scope: !5237, file: !5237, line: 171, type: !5238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5270 = distinct !DISubprogram(name: "__arch_hweight64", scope: !5271, file: !5271, line: 43, type: !5272, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5274)
!5271 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!5272 = !DISubroutineType(types: !5273)
!5273 = !{!348, !331}
!5274 = !{!5275, !5276}
!5275 = !DILocalVariable(name: "w", arg: 1, scope: !5270, file: !5271, line: 43, type: !331)
!5276 = !DILocalVariable(name: "res", scope: !5270, file: !5271, line: 45, type: !348)
!5277 = !DILocation(line: 43, column: 61, scope: !5270)
!5278 = !DILocation(line: 45, column: 2, scope: !5270)
!5279 = !DILocation(line: 45, column: 16, scope: !5270)
!5280 = !DILocation(line: 49, column: 15, scope: !5270)
!5281 = !DILocation(line: 47, column: 2, scope: !5270)
!5282 = !{i64 2148225505, i64 2148225533, i64 2148225539, i64 2148225555, i64 2148225571, i64 2148225598, i64 2148225931, i64 2148225231, i64 2148225937, i64 2148225985, i64 2148226049, i64 2148226113, i64 2148226170, i64 2148225312, i64 2148225337, i64 2148226377, i64 2148226507, i64 2148226438, i64 2148226521, i64 2148225429}
!5283 = !DILocation(line: 51, column: 9, scope: !5270)
!5284 = !DILocation(line: 52, column: 1, scope: !5270)
!5285 = !DILocation(line: 51, column: 2, scope: !5270)
!5286 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5287, file: !5287, line: 30, type: !5288, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5290)
!5287 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!109, !330}
!5290 = !{!5291}
!5291 = !DILocalVariable(name: "n", arg: 1, scope: !5286, file: !5287, line: 30, type: !330)
!5292 = !DILocation(line: 30, column: 21, scope: !5286)
!5293 = !DILocation(line: 32, column: 15, scope: !5286)
!5294 = !DILocation(line: 32, column: 9, scope: !5286)
!5295 = !DILocation(line: 32, column: 18, scope: !5286)
!5296 = !DILocation(line: 32, column: 2, scope: !5286)
!5297 = distinct !DISubprogram(name: "fls64", scope: !4915, file: !4915, line: 401, type: !5298, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5300)
!5298 = !DISubroutineType(types: !5299)
!5299 = !{!109, !331}
!5300 = !{!5301, !5302}
!5301 = !DILocalVariable(name: "x", arg: 1, scope: !5297, file: !4915, line: 401, type: !331)
!5302 = !DILocalVariable(name: "bitpos", scope: !5297, file: !4915, line: 403, type: !109)
!5303 = !DILocation(line: 401, column: 40, scope: !5297)
!5304 = !DILocation(line: 403, column: 2, scope: !5297)
!5305 = !DILocation(line: 403, column: 6, scope: !5297)
!5306 = !DILocation(line: 409, column: 2, scope: !5297)
!5307 = !DILocation(line: 411, column: 14, scope: !5297)
!5308 = !{i64 718159}
!5309 = !DILocation(line: 412, column: 9, scope: !5297)
!5310 = !DILocation(line: 412, column: 16, scope: !5297)
!5311 = !DILocation(line: 413, column: 1, scope: !5297)
!5312 = !DILocation(line: 412, column: 2, scope: !5297)
!5313 = !DISubprogram(name: "kvm_arch_para_features", scope: !4680, file: !4680, line: 124, type: !5314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{!7}
!5316 = !DISubprogram(name: "__cpuhp_setup_state", scope: !108, file: !108, line: 263, type: !5317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5317 = !DISubroutineType(types: !5318)
!5318 = !{!109, !107, !548, !985, !4698, !4698, !985}
!5319 = !DISubprogram(name: "slow_virt_to_phys", scope: !1237, file: !1237, line: 577, type: !5320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5320 = !DISubroutineType(types: !5321)
!5321 = !{!364, !313}
!5322 = distinct !DISubprogram(name: "wrmsrl", scope: !4534, file: !4534, line: 260, type: !5323, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5325)
!5323 = !DISubroutineType(types: !5324)
!5324 = !{null, !7, !330}
!5325 = !{!5326, !5327}
!5326 = !DILocalVariable(name: "msr", arg: 1, scope: !5322, file: !4534, line: 260, type: !7)
!5327 = !DILocalVariable(name: "val", arg: 2, scope: !5322, file: !4534, line: 260, type: !330)
!5328 = !DILocation(line: 260, column: 40, scope: !5322)
!5329 = !DILocation(line: 260, column: 49, scope: !5322)
!5330 = !DILocation(line: 262, column: 19, scope: !5322)
!5331 = !DILocation(line: 262, column: 30, scope: !5322)
!5332 = !DILocation(line: 262, column: 34, scope: !5322)
!5333 = !DILocation(line: 262, column: 24, scope: !5322)
!5334 = !DILocation(line: 262, column: 58, scope: !5322)
!5335 = !DILocation(line: 262, column: 62, scope: !5322)
!5336 = !DILocation(line: 262, column: 52, scope: !5322)
!5337 = !DILocation(line: 262, column: 2, scope: !5322)
!5338 = !DILocation(line: 263, column: 1, scope: !5322)
!5339 = !DISubprogram(name: "clear_sched_clock_stable", scope: !5340, file: !5340, line: 68, type: !2122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5340 = !DIFile(filename: "./include/linux/sched/clock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "820797187d326b72c061635bf384b4aa")
!5341 = !DISubprogram(name: "paravirt_set_sched_clock", scope: !5342, file: !5342, line: 27, type: !5343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5342 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03130265545439d5fc6fd2b961c93410")
!5343 = !DISubroutineType(types: !5344)
!5344 = !{null, !5345}
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!5346 = distinct !DISubprogram(name: "kvm_sched_clock_read", scope: !3, file: !3, line: 89, type: !4389, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5347 = !DILocation(line: 91, column: 39, scope: !5346)
!5348 = !DILocation(line: 91, column: 9, scope: !5346)
!5349 = !DILocation(line: 91, column: 58, scope: !5346)
!5350 = !DILocation(line: 91, column: 56, scope: !5346)
!5351 = !DILocation(line: 91, column: 2, scope: !5346)
!5352 = distinct !DISubprogram(name: "set_bit", scope: !5353, file: !5353, line: 26, type: !5354, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5357)
!5353 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5354 = !DISubroutineType(types: !5355)
!5355 = !{null, !712, !5356}
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!5357 = !{!5358, !5359}
!5358 = !DILocalVariable(name: "nr", arg: 1, scope: !5352, file: !5353, line: 26, type: !712)
!5359 = !DILocalVariable(name: "addr", arg: 2, scope: !5352, file: !5353, line: 26, type: !5356)
!5360 = !DILocation(line: 26, column: 42, scope: !5352)
!5361 = !DILocation(line: 26, column: 70, scope: !5352)
!5362 = !DILocation(line: 28, column: 26, scope: !5352)
!5363 = !DILocation(line: 28, column: 33, scope: !5352)
!5364 = !DILocation(line: 28, column: 31, scope: !5352)
!5365 = !DILocation(line: 28, column: 2, scope: !5352)
!5366 = !DILocation(line: 29, column: 15, scope: !5352)
!5367 = !DILocation(line: 29, column: 19, scope: !5352)
!5368 = !DILocation(line: 29, column: 2, scope: !5352)
!5369 = !DILocation(line: 30, column: 1, scope: !5352)
!5370 = !DISubprogram(name: "pvclock_tsc_khz", scope: !317, file: !317, line: 13, type: !5371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5371 = !DISubroutineType(types: !5372)
!5372 = !{!348, !4824}
!5373 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5374, file: !5374, line: 80, type: !5375, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5380)
!5374 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5375 = !DISubroutineType(types: !5376)
!5376 = !{null, !5377, !722}
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5379)
!5379 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5380 = !{!5381, !5382}
!5381 = !DILocalVariable(name: "v", arg: 1, scope: !5373, file: !5374, line: 80, type: !5377)
!5382 = !DILocalVariable(name: "size", arg: 2, scope: !5373, file: !5374, line: 80, type: !722)
!5383 = !DILocation(line: 80, column: 74, scope: !5373)
!5384 = !DILocation(line: 80, column: 84, scope: !5373)
!5385 = !DILocation(line: 82, column: 20, scope: !5373)
!5386 = !DILocation(line: 82, column: 23, scope: !5373)
!5387 = !DILocation(line: 82, column: 2, scope: !5373)
!5388 = !DILocation(line: 83, column: 2, scope: !5373)
!5389 = !DILocation(line: 84, column: 1, scope: !5373)
!5390 = distinct !DISubprogram(name: "arch_set_bit", scope: !4915, file: !4915, line: 52, type: !5354, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5391)
!5391 = !{!5392, !5393}
!5392 = !DILocalVariable(name: "nr", arg: 1, scope: !5390, file: !4915, line: 52, type: !712)
!5393 = !DILocalVariable(name: "addr", arg: 2, scope: !5390, file: !4915, line: 52, type: !5356)
!5394 = !DILocation(line: 52, column: 19, scope: !5390)
!5395 = !DILocation(line: 52, column: 47, scope: !5390)
!5396 = !DILocation(line: 54, column: 27, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5390, file: !4915, line: 54, column: 6)
!5398 = !DILocation(line: 54, column: 6, scope: !5397)
!5399 = !DILocation(line: 54, column: 6, scope: !5390)
!5400 = !DILocation(line: 56, column: 6, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5397, file: !4915, line: 54, column: 32)
!5402 = !DILocation(line: 57, column: 12, scope: !5401)
!5403 = !DILocation(line: 55, column: 3, scope: !5401)
!5404 = !{i64 2148205444, i64 2148205483, i64 2148205504, i64 2148205541, i64 2148205564, i64 2148205434}
!5405 = !DILocation(line: 59, column: 2, scope: !5401)
!5406 = !DILocation(line: 61, column: 8, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5397, file: !4915, line: 59, column: 9)
!5408 = !DILocation(line: 61, column: 32, scope: !5407)
!5409 = !DILocation(line: 60, column: 3, scope: !5407)
!5410 = !{i64 2148205729, i64 2148205768, i64 2148205789, i64 2148205826, i64 2148205849, i64 2148205719}
!5411 = !DILocation(line: 63, column: 1, scope: !5390)
!5412 = distinct !DISubprogram(name: "kasan_check_write", scope: !5413, file: !5413, line: 44, type: !5414, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5416)
!5413 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5414 = !DISubroutineType(types: !5415)
!5415 = !{!985, !5377, !7}
!5416 = !{!5417, !5418}
!5417 = !DILocalVariable(name: "p", arg: 1, scope: !5412, file: !5413, line: 44, type: !5377)
!5418 = !DILocalVariable(name: "size", arg: 2, scope: !5412, file: !5413, line: 44, type: !7)
!5419 = !DILocation(line: 44, column: 59, scope: !5412)
!5420 = !DILocation(line: 44, column: 75, scope: !5412)
!5421 = !DILocation(line: 46, column: 2, scope: !5412)
!5422 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5423, file: !5423, line: 229, type: !5424, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5426)
!5423 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5424 = !DISubroutineType(types: !5425)
!5425 = !{null, !5377, !722, !109}
!5426 = !{!5427, !5428, !5429}
!5427 = !DILocalVariable(name: "ptr", arg: 1, scope: !5422, file: !5423, line: 229, type: !5377)
!5428 = !DILocalVariable(name: "size", arg: 2, scope: !5422, file: !5423, line: 229, type: !722)
!5429 = !DILocalVariable(name: "type", arg: 3, scope: !5422, file: !5423, line: 230, type: !109)
!5430 = !DILocation(line: 229, column: 60, scope: !5422)
!5431 = !DILocation(line: 229, column: 72, scope: !5422)
!5432 = !DILocation(line: 230, column: 15, scope: !5422)
!5433 = !DILocation(line: 230, column: 23, scope: !5422)
!5434 = !DISubprogram(name: "pvclock_read_wallclock", scope: !317, file: !317, line: 14, type: !5435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5435 = !DISubroutineType(types: !5436)
!5436 = !{null, !5437, !4824, !4422}
!5437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!5438 = distinct !DISubprogram(name: "constant_test_bit", scope: !4915, file: !4915, line: 204, type: !5439, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5441)
!5439 = !DISubroutineType(types: !5440)
!5440 = !{!985, !712, !4918}
!5441 = !{!5442, !5443}
!5442 = !DILocalVariable(name: "nr", arg: 1, scope: !5438, file: !4915, line: 204, type: !712)
!5443 = !DILocalVariable(name: "addr", arg: 2, scope: !5438, file: !4915, line: 204, type: !4918)
!5444 = !DILocation(line: 204, column: 52, scope: !5438)
!5445 = !DILocation(line: 204, column: 86, scope: !5438)
!5446 = !DILocation(line: 206, column: 19, scope: !5438)
!5447 = !DILocation(line: 206, column: 22, scope: !5438)
!5448 = !DILocation(line: 206, column: 15, scope: !5438)
!5449 = !DILocation(line: 207, column: 4, scope: !5438)
!5450 = !DILocation(line: 207, column: 9, scope: !5438)
!5451 = !DILocation(line: 207, column: 12, scope: !5438)
!5452 = !DILocation(line: 206, column: 44, scope: !5438)
!5453 = !DILocation(line: 207, column: 37, scope: !5438)
!5454 = !DILocation(line: 206, column: 2, scope: !5438)
!5455 = distinct !DISubprogram(name: "variable_test_bit", scope: !4915, file: !4915, line: 224, type: !5439, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5456)
!5456 = !{!5457, !5458, !5459}
!5457 = !DILocalVariable(name: "nr", arg: 1, scope: !5455, file: !4915, line: 224, type: !712)
!5458 = !DILocalVariable(name: "addr", arg: 2, scope: !5455, file: !4915, line: 224, type: !4918)
!5459 = !DILocalVariable(name: "oldbit", scope: !5455, file: !4915, line: 226, type: !985)
!5460 = !DILocation(line: 224, column: 52, scope: !5455)
!5461 = !DILocation(line: 224, column: 86, scope: !5455)
!5462 = !DILocation(line: 226, column: 2, scope: !5455)
!5463 = !DILocation(line: 226, column: 7, scope: !5455)
!5464 = !DILocation(line: 231, column: 33, scope: !5455)
!5465 = !DILocation(line: 231, column: 46, scope: !5455)
!5466 = !DILocation(line: 228, column: 2, scope: !5455)
!5467 = !{i64 2148219056, i64 2148219130}
!5468 = !DILocation(line: 233, column: 9, scope: !5455)
!5469 = !DILocation(line: 234, column: 1, scope: !5455)
!5470 = !DILocation(line: 233, column: 2, scope: !5455)
!5471 = !DISubprogram(name: "__clocksource_register_scale", scope: !4312, file: !4312, line: 231, type: !5472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5472 = !DISubroutineType(types: !5473)
!5473 = !{!109, !4318, !324, !324}
