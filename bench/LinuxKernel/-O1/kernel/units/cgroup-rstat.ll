; ModuleID = 'kernel/cgroup/rstat.c'
source_filename = "kernel/cgroup/rstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init..kmod_rstat__336_540_bpf_rstat_kfunc_init\22, \22a\22\09\09"
module asm "__initcall__kmod_rstat__336_540_bpf_rstat_kfunc_init7:\09\09\09"
module asm ".long\09__initstub__kmod_rstat__336_540_bpf_rstat_kfunc_init7 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.cpumask = type { [1 x i64] }
%struct.static_call_key = type { ptr, %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.pcpu_hot = type { %union.anon.15 }
%union.anon.15 = type { %struct.anon.16, [16 x i8] }
%struct.anon.16 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.kernel_cpustat = type { [10 x i64] }
%struct.btf_kfunc_id_set = type { ptr, ptr, ptr }
%struct.btf_id_set8 = type { i32, i32, [0 x %struct.anon.22] }
%struct.anon.22 = type { i32, i32 }
%struct.cgroup_rstat_cpu = type { %struct.u64_stats_sync, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.cgroup_base_stat, ptr, ptr }
%struct.u64_stats_sync = type {}
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.cgroup = type { %struct.cgroup_subsys_state, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, [0 x %struct.cgroup_file], i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x ptr] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i64, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cgroup_file = type { ptr, i64, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.cgroup_bpf = type {}
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.thread_info = type { i64, i64, i32, i32 }

@cgroup_rstat_cpu_lock = internal global %struct.raw_spinlock zeroinitializer, section ".data..percpu", align 4, !dbg !0
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@cgroup_rstat_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !5428
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str = private unnamed_addr constant [22 x i8] c"kernel/cgroup/rstat.c\00", align 1, !dbg !5412
@.str.1 = private unnamed_addr constant [49 x i8] c"usage_usec %llu\0Auser_usec %llu\0Asystem_usec %llu\0A\00", align 1, !dbg !5417
@__UNIQUE_ID___addressable___initstub__kmod_rstat__336_540_bpf_rstat_kfunc_init7337 = internal global ptr @__initstub__kmod_rstat__336_540_bpf_rstat_kfunc_init7, section ".discard.addressable", align 8, !dbg !5422
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !5424
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched144 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !5430
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !5433
@cgroup_base_stat_cputime_account_end.__UNIQUE_ID___addressable___SCK__preempt_schedule335 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !5436
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@kernel_cpustat = external dso_local global %struct.kernel_cpustat, section ".data..percpu", align 8
@bpf_rstat_kfunc_set = internal constant %struct.btf_kfunc_id_set { ptr null, ptr @bpf_rstat_kfunc_ids, ptr null }, align 8, !dbg !5452
@bpf_rstat_kfunc_ids = internal global %struct.btf_id_set8 zeroinitializer, align 4, !dbg !6312
@llvm.compiler.used = appending global [6 x ptr] [ptr @cgroup_rstat_updated, ptr @cgroup_rstat_flush, ptr @__UNIQUE_ID___addressable___initstub__kmod_rstat__336_540_bpf_rstat_kfunc_init7337, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2, ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched144, ptr @cgroup_base_stat_cputime_account_end.__UNIQUE_ID___addressable___SCK__preempt_schedule335], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cgroup_rstat_updated(ptr noundef %cgrp, i32 noundef %cpu) #0 align 16 !dbg !6324 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %cpu_lock = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__v = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp5 = alloca i32, align 4
  %rstatc = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %prstatc = alloca ptr, align 8
  %__dummy25 = alloca i64, align 8
  %__dummy226 = alloca i64, align 8
  %tmp29 = alloca i32, align 4
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !6328, metadata !DIExpression()), !dbg !6352
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6329, metadata !DIExpression()), !dbg !6353
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu_lock) #16, !dbg !6354
  call void @llvm.dbg.declare(metadata ptr %cpu_lock, metadata !6330, metadata !DIExpression()), !dbg !6355
  br label %do.body, !dbg !6356

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6357
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6331, metadata !DIExpression()), !dbg !6357
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6357
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6357
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6356
  br label %do.cond, !dbg !6357

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6357

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !6358
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6334, metadata !DIExpression()), !dbg !6358
  store i64 ptrtoint (ptr @cgroup_rstat_cpu_lock to i64), ptr %__ptr, align 8, !dbg !6358
  %1 = load i64, ptr %__ptr, align 8, !dbg !6358
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !6358
  %idxprom = sext i32 %2 to i64, !dbg !6358
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6358
  %3 = load i64, ptr %arrayidx, align 8, !dbg !6358
  %add = add i64 %1, %3, !dbg !6358
  %4 = inttoptr i64 %add to ptr, !dbg !6358
  store ptr %4, ptr %tmp1, align 8, !dbg !6358
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !6356
  %5 = load ptr, ptr %tmp1, align 8, !dbg !6358
  store ptr %5, ptr %tmp, align 8, !dbg !6357
  %6 = load ptr, ptr %tmp, align 8, !dbg !6356
  store ptr %6, ptr %cpu_lock, align 8, !dbg !6355
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6336, metadata !DIExpression()), !dbg !6360
  call void @llvm.lifetime.start.p0(i64 8, ptr %__v) #16, !dbg !6361
  call void @llvm.dbg.declare(metadata ptr %__v, metadata !6337, metadata !DIExpression()), !dbg !6361
  call void @__kcsan_disable_current() #17, !dbg !6362
  %7 = load ptr, ptr %cgrp.addr, align 8, !dbg !6362
  %8 = load i32, ptr %cpu.addr, align 4, !dbg !6362
  %call = call ptr @cgroup_rstat_cpu(ptr noundef %7, i32 noundef %8) #17, !dbg !6362
  %updated_next = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %call, i32 0, i32 6, !dbg !6362
  %9 = load ptr, ptr %updated_next, align 8, !dbg !6362
  store ptr %9, ptr %tmp2, align 8, !dbg !6362
  %10 = load ptr, ptr %tmp2, align 8, !dbg !6362
  store ptr %10, ptr %__v, align 8, !dbg !6361
  call void @__kcsan_enable_current() #17, !dbg !6361
  %11 = load ptr, ptr %__v, align 8, !dbg !6361
  store ptr %11, ptr %tmp3, align 8, !dbg !6361
  call void @llvm.lifetime.end.p0(i64 8, ptr %__v) #16, !dbg !6364
  %12 = load ptr, ptr %tmp3, align 8, !dbg !6361
  %tobool = icmp ne ptr %12, null, !dbg !6364
  br i1 %tobool, label %if.then, label %if.end, !dbg !6365

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !6366

if.end:                                           ; preds = %do.end
  br label %do.body4, !dbg !6367

do.body4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !6368
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6340, metadata !DIExpression()), !dbg !6368
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !6368
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6343, metadata !DIExpression()), !dbg !6368
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6368
  %conv = zext i1 %cmp to i32, !dbg !6368
  store i32 1, ptr %tmp5, align 4, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !6369
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !6369
  %13 = load i32, ptr %tmp5, align 4, !dbg !6368
  %14 = load ptr, ptr %cpu_lock, align 8, !dbg !6369
  %call6 = call i64 @_raw_spin_lock_irqsave(ptr noundef %14) #17, !dbg !6369
  store i64 %call6, ptr %flags, align 8, !dbg !6369
  br label %do.cond7, !dbg !6369

do.cond7:                                         ; preds = %do.body4
  br label %do.end8, !dbg !6369

do.end8:                                          ; preds = %do.cond7
  br label %while.cond, !dbg !6370

while.cond:                                       ; preds = %cleanup.cont, %do.end8
  br label %while.body, !dbg !6370

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %rstatc) #16, !dbg !6371
  call void @llvm.dbg.declare(metadata ptr %rstatc, metadata !6344, metadata !DIExpression()), !dbg !6372
  %15 = load ptr, ptr %cgrp.addr, align 8, !dbg !6373
  %16 = load i32, ptr %cpu.addr, align 4, !dbg !6374
  %call9 = call ptr @cgroup_rstat_cpu(ptr noundef %15, i32 noundef %16) #17, !dbg !6375
  store ptr %call9, ptr %rstatc, align 8, !dbg !6372
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !6376
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !6346, metadata !DIExpression()), !dbg !6377
  %17 = load ptr, ptr %cgrp.addr, align 8, !dbg !6378
  %call10 = call ptr @cgroup_parent(ptr noundef %17) #17, !dbg !6379
  store ptr %call10, ptr %parent, align 8, !dbg !6377
  call void @llvm.lifetime.start.p0(i64 8, ptr %prstatc) #16, !dbg !6380
  call void @llvm.dbg.declare(metadata ptr %prstatc, metadata !6347, metadata !DIExpression()), !dbg !6381
  %18 = load ptr, ptr %rstatc, align 8, !dbg !6382
  %updated_next11 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %18, i32 0, i32 6, !dbg !6384
  %19 = load ptr, ptr %updated_next11, align 8, !dbg !6384
  %tobool12 = icmp ne ptr %19, null, !dbg !6382
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6385

if.then13:                                        ; preds = %while.body
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6386

if.end14:                                         ; preds = %while.body
  %20 = load ptr, ptr %parent, align 8, !dbg !6387
  %tobool15 = icmp ne ptr %20, null, !dbg !6387
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !6389

if.then16:                                        ; preds = %if.end14
  %21 = load ptr, ptr %cgrp.addr, align 8, !dbg !6390
  %22 = load ptr, ptr %rstatc, align 8, !dbg !6392
  %updated_next17 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %22, i32 0, i32 6, !dbg !6393
  store ptr %21, ptr %updated_next17, align 8, !dbg !6394
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6395

if.end18:                                         ; preds = %if.end14
  %23 = load ptr, ptr %parent, align 8, !dbg !6396
  %24 = load i32, ptr %cpu.addr, align 4, !dbg !6397
  %call19 = call ptr @cgroup_rstat_cpu(ptr noundef %23, i32 noundef %24) #17, !dbg !6398
  store ptr %call19, ptr %prstatc, align 8, !dbg !6399
  %25 = load ptr, ptr %prstatc, align 8, !dbg !6400
  %updated_children = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %25, i32 0, i32 5, !dbg !6401
  %26 = load ptr, ptr %updated_children, align 8, !dbg !6401
  %27 = load ptr, ptr %rstatc, align 8, !dbg !6402
  %updated_next20 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %27, i32 0, i32 6, !dbg !6403
  store ptr %26, ptr %updated_next20, align 8, !dbg !6404
  %28 = load ptr, ptr %cgrp.addr, align 8, !dbg !6405
  %29 = load ptr, ptr %prstatc, align 8, !dbg !6406
  %updated_children21 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %29, i32 0, i32 5, !dbg !6407
  store ptr %28, ptr %updated_children21, align 8, !dbg !6408
  %30 = load ptr, ptr %parent, align 8, !dbg !6409
  store ptr %30, ptr %cgrp.addr, align 8, !dbg !6410
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6411
  br label %cleanup, !dbg !6411

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %prstatc) #16, !dbg !6411
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !6411
  call void @llvm.lifetime.end.p0(i64 8, ptr %rstatc) #16, !dbg !6411
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !6370, !llvm.loop !6412

while.end:                                        ; preds = %cleanup
  br label %do.body24, !dbg !6414

do.body24:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy25) #16, !dbg !6415
  call void @llvm.dbg.declare(metadata ptr %__dummy25, metadata !6348, metadata !DIExpression()), !dbg !6415
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy226) #16, !dbg !6415
  call void @llvm.dbg.declare(metadata ptr %__dummy226, metadata !6351, metadata !DIExpression()), !dbg !6415
  %cmp27 = icmp eq ptr %__dummy25, %__dummy226, !dbg !6415
  %conv28 = zext i1 %cmp27 to i32, !dbg !6415
  store i32 1, ptr %tmp29, align 4, !dbg !6415
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy226) #16, !dbg !6416
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy25) #16, !dbg !6416
  %31 = load i32, ptr %tmp29, align 4, !dbg !6415
  %32 = load ptr, ptr %cpu_lock, align 8, !dbg !6416
  %33 = load i64, ptr %flags, align 8, !dbg !6416
  call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i64 noundef %33) #17, !dbg !6416
  br label %do.cond30, !dbg !6416

do.cond30:                                        ; preds = %do.body24
  br label %do.end31, !dbg !6416

do.end31:                                         ; preds = %do.cond30
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6417
  br label %cleanup32, !dbg !6417

cleanup32:                                        ; preds = %do.end31, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !6417
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu_lock) #16, !dbg !6417
  %cleanup.dest34 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest34, label %unreachable [
    i32 0, label %cleanup.cont35
    i32 1, label %cleanup.cont35
  ]

cleanup.cont35:                                   ; preds = %cleanup32, %cleanup32
  ret void, !dbg !6417

unreachable:                                      ; preds = %cleanup32, %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kcsan_disable_current() #3 align 16 !dbg !6418 {
entry:
  ret void, !dbg !6420
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @cgroup_rstat_cpu(ptr noundef %cgrp, i32 noundef %cpu) #4 align 16 !dbg !6421 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !6425, metadata !DIExpression()), !dbg !6432
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6426, metadata !DIExpression()), !dbg !6433
  br label %do.body, !dbg !6434

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6435
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6427, metadata !DIExpression()), !dbg !6435
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6435
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6435
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6434
  br label %do.end, !dbg !6435

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !6436
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6430, metadata !DIExpression()), !dbg !6436
  %1 = load ptr, ptr %cgrp.addr, align 8, !dbg !6436
  %rstat_cpu = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 26, !dbg !6436
  %2 = load ptr, ptr %rstat_cpu, align 8, !dbg !6436
  %3 = ptrtoint ptr %2 to i64, !dbg !6436
  store i64 %3, ptr %__ptr, align 8, !dbg !6436
  %4 = load i64, ptr %__ptr, align 8, !dbg !6436
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !6436
  %idxprom = sext i32 %5 to i64, !dbg !6436
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6436
  %6 = load i64, ptr %arrayidx, align 8, !dbg !6436
  %add = add i64 %4, %6, !dbg !6436
  %7 = inttoptr i64 %add to ptr, !dbg !6436
  store ptr %7, ptr %tmp1, align 8, !dbg !6436
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !6434
  %8 = load ptr, ptr %tmp1, align 8, !dbg !6436
  store ptr %8, ptr %tmp, align 8, !dbg !6435
  %9 = load ptr, ptr %tmp, align 8, !dbg !6434
  ret ptr %9, !dbg !6437
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kcsan_enable_current() #3 align 16 !dbg !6438 {
entry:
  ret void, !dbg !6439
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6440 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @cgroup_parent(ptr noundef %cgrp) #3 align 16 !dbg !6444 {
entry:
  %retval = alloca ptr, align 8
  %cgrp.addr = alloca ptr, align 8
  %parent_css = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !6448, metadata !DIExpression()), !dbg !6453
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_css) #16, !dbg !6454
  call void @llvm.dbg.declare(metadata ptr %parent_css, metadata !6449, metadata !DIExpression()), !dbg !6455
  %0 = load ptr, ptr %cgrp.addr, align 8, !dbg !6456
  %self = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 0, !dbg !6457
  %parent = getelementptr inbounds %struct.cgroup_subsys_state, ptr %self, i32 0, i32 12, !dbg !6458
  %1 = load ptr, ptr %parent, align 8, !dbg !6458
  store ptr %1, ptr %parent_css, align 8, !dbg !6455
  %2 = load ptr, ptr %parent_css, align 8, !dbg !6459
  %tobool = icmp ne ptr %2, null, !dbg !6459
  br i1 %tobool, label %if.then, label %if.end, !dbg !6460

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6461
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6450, metadata !DIExpression()), !dbg !6461
  %3 = load ptr, ptr %parent_css, align 8, !dbg !6461
  store ptr %3, ptr %__mptr, align 8, !dbg !6461
  %4 = load ptr, ptr %__mptr, align 8, !dbg !6461
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !6461
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6461
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6462
  %5 = load ptr, ptr %tmp, align 8, !dbg !6461
  store ptr %5, ptr %retval, align 8, !dbg !6463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6463

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6464

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_css) #16, !dbg !6465
  %6 = load ptr, ptr %retval, align 8, !dbg !6465
  ret ptr %6, !dbg !6465
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6466 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden void @bpf_rstat_flush(ptr noundef %cgrp, ptr noundef %parent, i32 noundef %cpu) #0 align 16 !dbg !6469 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !6473, metadata !DIExpression()), !dbg !6476
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !6474, metadata !DIExpression()), !dbg !6477
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6475, metadata !DIExpression()), !dbg !6478
  ret void, !dbg !6479
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cgroup_rstat_flush(ptr noundef %cgrp) #0 align 16 !dbg !6480 {
entry:
  %cgrp.addr = alloca ptr, align 8
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !6484, metadata !DIExpression()), !dbg !6485
  br label %do.body, !dbg !6486

do.body:                                          ; preds = %entry
  call void @might_resched() #17, !dbg !6487
  br label %do.end, !dbg !6487

do.end:                                           ; preds = %do.body
  call void @spin_lock_irq(ptr noundef @cgroup_rstat_lock) #17, !dbg !6489
  %0 = load ptr, ptr %cgrp.addr, align 8, !dbg !6490
  call void @cgroup_rstat_flush_locked(ptr noundef %0) #17, !dbg !6491
  call void @spin_unlock_irq(ptr noundef @cgroup_rstat_lock) #17, !dbg !6492
  ret void, !dbg !6493
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #6 align 16 !dbg !5426 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !6494
  %0 = load ptr, ptr %tmp, align 8, !dbg !6494
  %call = call i32 %0() #17, !dbg !6496
  ret void, !dbg !6497
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #6 align 16 !dbg !6498 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6503, metadata !DIExpression()), !dbg !6504
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6505
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6505
  call void @_raw_spin_lock_irq(ptr noundef %1) #17, !dbg !6505
  ret void, !dbg !6506
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cgroup_rstat_flush_locked(ptr noundef %cgrp) #4 align 16 !dbg !6507 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %cpu_lock = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp6 = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %css = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %tmp20 = alloca ptr, align 8
  %__mptr26 = alloca ptr, align 8
  %tmp30 = alloca ptr, align 8
  %tmp33 = alloca ptr, align 8
  %__dummy36 = alloca i64, align 8
  %__dummy237 = alloca i64, align 8
  %tmp40 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !6509, metadata !DIExpression()), !dbg !6538
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #16, !dbg !6539
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !6510, metadata !DIExpression()), !dbg !6540
  br label %do.body, !dbg !6541

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6542

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6542

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cpu, align 4, !dbg !6544
  br label %for.cond, !dbg !6544

for.cond:                                         ; preds = %for.inc52, %do.end
  %0 = load i32, ptr %cpu, align 4, !dbg !6545
  %conv = sext i32 %0 to i64, !dbg !6545
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #17, !dbg !6545
  %conv1 = trunc i64 %call to i32, !dbg !6545
  store i32 %conv1, ptr %cpu, align 4, !dbg !6545
  %1 = load i32, ptr %cpu, align 4, !dbg !6545
  %cmp = icmp ult i32 %1, 64, !dbg !6545
  br i1 %cmp, label %for.body, label %for.end53, !dbg !6544

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu_lock) #16, !dbg !6546
  call void @llvm.dbg.declare(metadata ptr %cpu_lock, metadata !6511, metadata !DIExpression()), !dbg !6547
  br label %do.body3, !dbg !6548

do.body3:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6549
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6515, metadata !DIExpression()), !dbg !6549
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6549
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !6549
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6548
  br label %do.cond4, !dbg !6549

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6549

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !6550
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6518, metadata !DIExpression()), !dbg !6550
  store i64 ptrtoint (ptr @cgroup_rstat_cpu_lock to i64), ptr %__ptr, align 8, !dbg !6550
  %3 = load i64, ptr %__ptr, align 8, !dbg !6550
  %4 = load i32, ptr %cpu, align 4, !dbg !6550
  %idxprom = sext i32 %4 to i64, !dbg !6550
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6550
  %5 = load i64, ptr %arrayidx, align 8, !dbg !6550
  %add = add i64 %3, %5, !dbg !6550
  %6 = inttoptr i64 %add to ptr, !dbg !6550
  store ptr %6, ptr %tmp6, align 8, !dbg !6550
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !6548
  %7 = load ptr, ptr %tmp6, align 8, !dbg !6550
  store ptr %7, ptr %tmp, align 8, !dbg !6549
  %8 = load ptr, ptr %tmp, align 8, !dbg !6548
  store ptr %8, ptr %cpu_lock, align 8, !dbg !6547
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #16, !dbg !6551
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !6520, metadata !DIExpression()), !dbg !6552
  store ptr null, ptr %pos, align 8, !dbg !6552
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !6553
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6521, metadata !DIExpression()), !dbg !6554
  br label %do.body7, !dbg !6555

do.body7:                                         ; preds = %do.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !6556
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6522, metadata !DIExpression()), !dbg !6556
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !6556
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6525, metadata !DIExpression()), !dbg !6556
  %cmp8 = icmp eq ptr %__dummy, %__dummy2, !dbg !6556
  %conv9 = zext i1 %cmp8 to i32, !dbg !6556
  store i32 1, ptr %tmp10, align 4, !dbg !6556
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !6557
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !6557
  %9 = load i32, ptr %tmp10, align 4, !dbg !6556
  %10 = load ptr, ptr %cpu_lock, align 8, !dbg !6557
  %call11 = call i64 @_raw_spin_lock_irqsave(ptr noundef %10) #17, !dbg !6557
  store i64 %call11, ptr %flags, align 8, !dbg !6557
  br label %do.cond12, !dbg !6557

do.cond12:                                        ; preds = %do.body7
  br label %do.end13, !dbg !6557

do.end13:                                         ; preds = %do.cond12
  br label %while.cond, !dbg !6558

while.cond:                                       ; preds = %for.end, %do.end13
  %11 = load ptr, ptr %pos, align 8, !dbg !6559
  %12 = load ptr, ptr %cgrp.addr, align 8, !dbg !6560
  %13 = load i32, ptr %cpu, align 4, !dbg !6561
  %call14 = call ptr @cgroup_rstat_cpu_pop_updated(ptr noundef %11, ptr noundef %12, i32 noundef %13) #17, !dbg !6562
  store ptr %call14, ptr %pos, align 8, !dbg !6563
  %tobool = icmp ne ptr %call14, null, !dbg !6558
  br i1 %tobool, label %while.body, label %while.end, !dbg !6558

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %css) #16, !dbg !6564
  call void @llvm.dbg.declare(metadata ptr %css, metadata !6526, metadata !DIExpression()), !dbg !6565
  %14 = load ptr, ptr %pos, align 8, !dbg !6566
  %15 = load i32, ptr %cpu, align 4, !dbg !6567
  call void @cgroup_base_stat_flush(ptr noundef %14, i32 noundef %15) #17, !dbg !6568
  %16 = load ptr, ptr %pos, align 8, !dbg !6569
  %17 = load ptr, ptr %pos, align 8, !dbg !6570
  %call15 = call ptr @cgroup_parent(ptr noundef %17) #17, !dbg !6571
  %18 = load i32, ptr %cpu, align 4, !dbg !6572
  call void @bpf_rstat_flush(ptr noundef %16, ptr noundef %call15, i32 noundef %18) #17, !dbg !6573
  call void @rcu_read_lock() #17, !dbg !6574
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6575
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6528, metadata !DIExpression()), !dbg !6575
  br label %do.body16, !dbg !6576

do.body16:                                        ; preds = %while.body
  br label %do.cond17, !dbg !6578

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6578

do.end18:                                         ; preds = %do.cond17
  %19 = load ptr, ptr %pos, align 8, !dbg !6576
  %rstat_css_list = getelementptr inbounds %struct.cgroup, ptr %19, i32 0, i32 27, !dbg !6576
  %next = getelementptr inbounds %struct.list_head, ptr %rstat_css_list, i32 0, i32 0, !dbg !6576
  %20 = load volatile ptr, ptr %next, align 8, !dbg !6576
  store ptr %20, ptr %tmp19, align 8, !dbg !6578
  %21 = load ptr, ptr %tmp19, align 8, !dbg !6576
  store ptr %21, ptr %__mptr, align 8, !dbg !6575
  %22 = load ptr, ptr %__mptr, align 8, !dbg !6575
  %add.ptr = getelementptr i8, ptr %22, i64 -64, !dbg !6575
  store ptr %add.ptr, ptr %tmp20, align 8, !dbg !6575
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6580
  %23 = load ptr, ptr %tmp20, align 8, !dbg !6575
  store ptr %23, ptr %css, align 8, !dbg !6580
  br label %for.cond21, !dbg !6580

for.cond21:                                       ; preds = %do.end29, %do.end18
  %24 = load ptr, ptr %css, align 8, !dbg !6581
  %rstat_css_node = getelementptr inbounds %struct.cgroup_subsys_state, ptr %24, i32 0, i32 5, !dbg !6581
  %25 = load ptr, ptr %pos, align 8, !dbg !6581
  %rstat_css_list22 = getelementptr inbounds %struct.cgroup, ptr %25, i32 0, i32 27, !dbg !6581
  %cmp23 = icmp ne ptr %rstat_css_node, %rstat_css_list22, !dbg !6581
  br i1 %cmp23, label %for.body25, label %for.end, !dbg !6580

for.body25:                                       ; preds = %for.cond21
  %26 = load ptr, ptr %css, align 8, !dbg !6582
  %ss = getelementptr inbounds %struct.cgroup_subsys_state, ptr %26, i32 0, i32 1, !dbg !6583
  %27 = load ptr, ptr %ss, align 8, !dbg !6583
  %css_rstat_flush = getelementptr inbounds %struct.cgroup_subsys, ptr %27, i32 0, i32 6, !dbg !6584
  %28 = load ptr, ptr %css_rstat_flush, align 8, !dbg !6584
  %29 = load ptr, ptr %css, align 8, !dbg !6585
  %30 = load i32, ptr %cpu, align 4, !dbg !6586
  call void %28(ptr noundef %29, i32 noundef %30) #17, !dbg !6582
  br label %for.inc, !dbg !6582

for.inc:                                          ; preds = %for.body25
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr26) #16, !dbg !6587
  call void @llvm.dbg.declare(metadata ptr %__mptr26, metadata !6531, metadata !DIExpression()), !dbg !6587
  br label %do.body27, !dbg !6588

do.body27:                                        ; preds = %for.inc
  br label %do.cond28, !dbg !6590

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !6590

do.end29:                                         ; preds = %do.cond28
  %31 = load ptr, ptr %css, align 8, !dbg !6588
  %rstat_css_node31 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %31, i32 0, i32 5, !dbg !6588
  %next32 = getelementptr inbounds %struct.list_head, ptr %rstat_css_node31, i32 0, i32 0, !dbg !6588
  %32 = load volatile ptr, ptr %next32, align 8, !dbg !6588
  store ptr %32, ptr %tmp30, align 8, !dbg !6590
  %33 = load ptr, ptr %tmp30, align 8, !dbg !6588
  store ptr %33, ptr %__mptr26, align 8, !dbg !6587
  %34 = load ptr, ptr %__mptr26, align 8, !dbg !6587
  %add.ptr34 = getelementptr i8, ptr %34, i64 -64, !dbg !6587
  store ptr %add.ptr34, ptr %tmp33, align 8, !dbg !6587
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr26) #16, !dbg !6581
  %35 = load ptr, ptr %tmp33, align 8, !dbg !6587
  store ptr %35, ptr %css, align 8, !dbg !6581
  br label %for.cond21, !dbg !6581, !llvm.loop !6592

for.end:                                          ; preds = %for.cond21
  call void @rcu_read_unlock() #17, !dbg !6595
  call void @llvm.lifetime.end.p0(i64 8, ptr %css) #16, !dbg !6596
  br label %while.cond, !dbg !6558, !llvm.loop !6597

while.end:                                        ; preds = %while.cond
  br label %do.body35, !dbg !6598

do.body35:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy36) #16, !dbg !6599
  call void @llvm.dbg.declare(metadata ptr %__dummy36, metadata !6534, metadata !DIExpression()), !dbg !6599
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy237) #16, !dbg !6599
  call void @llvm.dbg.declare(metadata ptr %__dummy237, metadata !6537, metadata !DIExpression()), !dbg !6599
  %cmp38 = icmp eq ptr %__dummy36, %__dummy237, !dbg !6599
  %conv39 = zext i1 %cmp38 to i32, !dbg !6599
  store i32 1, ptr %tmp40, align 4, !dbg !6599
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy237) #16, !dbg !6600
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy36) #16, !dbg !6600
  %36 = load i32, ptr %tmp40, align 4, !dbg !6599
  %37 = load ptr, ptr %cpu_lock, align 8, !dbg !6600
  %38 = load i64, ptr %flags, align 8, !dbg !6600
  call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i64 noundef %38) #17, !dbg !6600
  br label %do.cond41, !dbg !6600

do.cond41:                                        ; preds = %do.body35
  br label %do.end42, !dbg !6600

do.end42:                                         ; preds = %do.cond41
  %call43 = call zeroext i1 @need_resched() #17, !dbg !6601
  br i1 %call43, label %if.then, label %lor.lhs.false, !dbg !6603

lor.lhs.false:                                    ; preds = %do.end42
  %call45 = call i32 @spin_needbreak(ptr noundef @cgroup_rstat_lock) #17, !dbg !6604
  %tobool46 = icmp ne i32 %call45, 0, !dbg !6604
  br i1 %tobool46, label %if.then, label %if.end51, !dbg !6605

if.then:                                          ; preds = %lor.lhs.false, %do.end42
  call void @spin_unlock_irq(ptr noundef @cgroup_rstat_lock) #17, !dbg !6606
  call void @__might_resched(ptr noundef @.str, i32 noundef 213, i32 noundef 0) #17, !dbg !6608
  %call48 = call i32 @_cond_resched() #17, !dbg !6608
  store i32 %call48, ptr %tmp47, align 4, !dbg !6608
  %39 = load i32, ptr %tmp47, align 4, !dbg !6608
  %tobool49 = icmp ne i32 %39, 0, !dbg !6611
  br i1 %tobool49, label %if.end, label %if.then50, !dbg !6612

if.then50:                                        ; preds = %if.then
  call void @cpu_relax() #17, !dbg !6613
  br label %if.end, !dbg !6613

if.end:                                           ; preds = %if.then50, %if.then
  call void @spin_lock_irq(ptr noundef @cgroup_rstat_lock) #17, !dbg !6614
  br label %if.end51, !dbg !6615

if.end51:                                         ; preds = %if.end, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !6616
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #16, !dbg !6616
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu_lock) #16, !dbg !6616
  br label %for.inc52, !dbg !6617

for.inc52:                                        ; preds = %if.end51
  %40 = load i32, ptr %cpu, align 4, !dbg !6545
  %inc = add i32 %40, 1, !dbg !6545
  store i32 %inc, ptr %cpu, align 4, !dbg !6545
  br label %for.cond, !dbg !6545, !llvm.loop !6618

for.end53:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #16, !dbg !6620
  ret void, !dbg !6620
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #6 align 16 !dbg !6621 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6623, metadata !DIExpression()), !dbg !6624
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6625
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6625
  call void @_raw_spin_unlock_irq(ptr noundef %1) #17, !dbg !6625
  ret void, !dbg !6626
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cgroup_rstat_flush_hold(ptr noundef %cgrp) #4 align 16 !dbg !6627 {
entry:
  %cgrp.addr = alloca ptr, align 8
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !6629, metadata !DIExpression()), !dbg !6630
  br label %do.body, !dbg !6631

do.body:                                          ; preds = %entry
  call void @might_resched() #17, !dbg !6632
  br label %do.end, !dbg !6632

do.end:                                           ; preds = %do.body
  call void @spin_lock_irq(ptr noundef @cgroup_rstat_lock) #17, !dbg !6634
  %0 = load ptr, ptr %cgrp.addr, align 8, !dbg !6635
  call void @cgroup_rstat_flush_locked(ptr noundef %0) #17, !dbg !6636
  ret void, !dbg !6637
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cgroup_rstat_flush_release() #4 align 16 !dbg !6638 {
entry:
  call void @spin_unlock_irq(ptr noundef @cgroup_rstat_lock) #17, !dbg !6639
  ret void, !dbg !6640
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cgroup_rstat_init(ptr noundef %cgrp) #4 align 16 !dbg !6641 {
entry:
  %retval = alloca i32, align 4
  %cgrp.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %rstatc = alloca ptr, align 8
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !6645, metadata !DIExpression()), !dbg !6651
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #16, !dbg !6652
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !6646, metadata !DIExpression()), !dbg !6653
  %0 = load ptr, ptr %cgrp.addr, align 8, !dbg !6654
  %rstat_cpu = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 26, !dbg !6656
  %1 = load ptr, ptr %rstat_cpu, align 8, !dbg !6656
  %tobool = icmp ne ptr %1, null, !dbg !6654
  br i1 %tobool, label %if.end5, label %if.then, !dbg !6657

if.then:                                          ; preds = %entry
  %call = call noalias ptr @__alloc_percpu(i64 noundef 112, i64 noundef 8) #18, !dbg !6658
  %2 = load ptr, ptr %cgrp.addr, align 8, !dbg !6660
  %rstat_cpu1 = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 26, !dbg !6661
  store ptr %call, ptr %rstat_cpu1, align 8, !dbg !6662
  %3 = load ptr, ptr %cgrp.addr, align 8, !dbg !6663
  %rstat_cpu2 = getelementptr inbounds %struct.cgroup, ptr %3, i32 0, i32 26, !dbg !6665
  %4 = load ptr, ptr %rstat_cpu2, align 8, !dbg !6665
  %tobool3 = icmp ne ptr %4, null, !dbg !6663
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !6666

if.then4:                                         ; preds = %if.then
  store i32 -12, ptr %retval, align 4, !dbg !6667
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6667

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !6668

if.end5:                                          ; preds = %if.end, %entry
  store i32 0, ptr %cpu, align 4, !dbg !6669
  br label %for.cond, !dbg !6669

for.cond:                                         ; preds = %for.inc, %if.end5
  %5 = load i32, ptr %cpu, align 4, !dbg !6670
  %conv = sext i32 %5 to i64, !dbg !6670
  %call6 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #17, !dbg !6670
  %conv7 = trunc i64 %call6 to i32, !dbg !6670
  store i32 %conv7, ptr %cpu, align 4, !dbg !6670
  %6 = load i32, ptr %cpu, align 4, !dbg !6670
  %cmp = icmp ult i32 %6, 64, !dbg !6670
  br i1 %cmp, label %for.body, label %for.end, !dbg !6669

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %rstatc) #16, !dbg !6671
  call void @llvm.dbg.declare(metadata ptr %rstatc, metadata !6647, metadata !DIExpression()), !dbg !6672
  %7 = load ptr, ptr %cgrp.addr, align 8, !dbg !6673
  %8 = load i32, ptr %cpu, align 4, !dbg !6674
  %call9 = call ptr @cgroup_rstat_cpu(ptr noundef %7, i32 noundef %8) #17, !dbg !6675
  store ptr %call9, ptr %rstatc, align 8, !dbg !6672
  %9 = load ptr, ptr %cgrp.addr, align 8, !dbg !6676
  %10 = load ptr, ptr %rstatc, align 8, !dbg !6677
  %updated_children = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %10, i32 0, i32 5, !dbg !6678
  store ptr %9, ptr %updated_children, align 8, !dbg !6679
  %11 = load ptr, ptr %rstatc, align 8, !dbg !6680
  %bsync = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %11, i32 0, i32 0, !dbg !6681
  call void @u64_stats_init(ptr noundef %bsync) #17, !dbg !6682
  call void @llvm.lifetime.end.p0(i64 8, ptr %rstatc) #16, !dbg !6683
  br label %for.inc, !dbg !6684

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %cpu, align 4, !dbg !6670
  %inc = add i32 %12, 1, !dbg !6670
  store i32 %inc, ptr %cpu, align 4, !dbg !6670
  br label %for.cond, !dbg !6670, !llvm.loop !6685

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !6687
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6687

cleanup:                                          ; preds = %for.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #16, !dbg !6688
  %13 = load i32, ptr %retval, align 4, !dbg !6688
  ret i32 %13, !dbg !6688
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6689 dso_local noalias ptr @__alloc_percpu(i64 noundef, i64 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !6693 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6699, metadata !DIExpression()), !dbg !6705
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6700, metadata !DIExpression()), !dbg !6706
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6701, metadata !DIExpression()), !dbg !6707
  %0 = load i64, ptr %size.addr, align 8, !dbg !6708
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6708
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !6708

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6708
  %cmp = icmp ule i64 %2, 64, !dbg !6708
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !6708

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !6708
  %cmp2 = icmp ugt i64 %3, 0, !dbg !6708
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !6709

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !6710
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6702, metadata !DIExpression()), !dbg !6711
  %4 = load i64, ptr %offset.addr, align 8, !dbg !6712
  %5 = load i64, ptr %size.addr, align 8, !dbg !6712
  %cmp3 = icmp uge i64 %4, %5, !dbg !6712
  %lnot = xor i1 %cmp3, true, !dbg !6712
  %lnot4 = xor i1 %lnot, true, !dbg !6712
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6712
  %conv = sext i32 %lnot.ext to i64, !dbg !6712
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6712
  %tobool = icmp ne i64 %expval, 0, !dbg !6712
  br i1 %tobool, label %if.then5, label %if.end, !dbg !6714

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6715
  store i64 %6, ptr %retval, align 8, !dbg !6716
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6716

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !6717
  %8 = load i64, ptr %7, align 8, !dbg !6718
  %9 = load i64, ptr %offset.addr, align 8, !dbg !6719
  %shl = shl i64 1, %9, !dbg !6719
  %sub = sub i64 -1, %shl, !dbg !6719
  %add = add i64 %sub, 1, !dbg !6719
  %10 = load i64, ptr %size.addr, align 8, !dbg !6719
  %sub6 = sub i64 %10, 1, !dbg !6719
  %sub7 = sub i64 63, %sub6, !dbg !6719
  %shr = lshr i64 -1, %sub7, !dbg !6719
  %and = and i64 %add, %shr, !dbg !6719
  %add8 = add i64 0, %and, !dbg !6719
  %and9 = and i64 %8, %add8, !dbg !6720
  store i64 %and9, ptr %val, align 8, !dbg !6721
  %11 = load i64, ptr %val, align 8, !dbg !6722
  %tobool10 = icmp ne i64 %11, 0, !dbg !6722
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !6722

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !6723
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6723
  br i1 %13, label %cond.true11, label %cond.false, !dbg !6723

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !6723
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !6723
  %cast = trunc i64 %15 to i32, !dbg !6723
  %conv12 = sext i32 %cast to i64, !dbg !6723
  br label %cond.end, !dbg !6723

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !6723
  %call = call i64 @variable__ffs(i64 noundef %16) #17, !dbg !6723
  br label %cond.end, !dbg !6723

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !6723
  br label %cond.end14, !dbg !6722

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !6724
  br label %cond.end14, !dbg !6722

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !6722
  store i64 %cond15, ptr %retval, align 8, !dbg !6725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6725

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !6726
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !6727
  %19 = load i64, ptr %size.addr, align 8, !dbg !6728
  %20 = load i64, ptr %offset.addr, align 8, !dbg !6729
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #17, !dbg !6730
  store i64 %call17, ptr %retval, align 8, !dbg !6731
  br label %return, !dbg !6731

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !6732
  ret i64 %21, !dbg !6732
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @u64_stats_init(ptr noundef %syncp) #3 align 16 !dbg !6733 {
entry:
  %syncp.addr = alloca ptr, align 8
  store ptr %syncp, ptr %syncp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %syncp.addr, metadata !6738, metadata !DIExpression()), !dbg !6739
  ret void, !dbg !6740
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cgroup_rstat_exit(ptr noundef %cgrp) #4 align 16 !dbg !6741 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %rstatc = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on30 = alloca i32, align 4
  %__flags46 = alloca i32, align 4
  %tmp59 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !6743, metadata !DIExpression()), !dbg !6760
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #16, !dbg !6761
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !6744, metadata !DIExpression()), !dbg !6762
  %0 = load ptr, ptr %cgrp.addr, align 8, !dbg !6763
  call void @cgroup_rstat_flush(ptr noundef %0) #17, !dbg !6764
  store i32 0, ptr %cpu, align 4, !dbg !6765
  br label %for.cond, !dbg !6765

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %cpu, align 4, !dbg !6766
  %conv = sext i32 %1 to i64, !dbg !6766
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #17, !dbg !6766
  %conv1 = trunc i64 %call to i32, !dbg !6766
  store i32 %conv1, ptr %cpu, align 4, !dbg !6766
  %2 = load i32, ptr %cpu, align 4, !dbg !6766
  %cmp = icmp ult i32 %2, 64, !dbg !6766
  br i1 %cmp, label %for.body, label %for.end, !dbg !6765

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %rstatc) #16, !dbg !6767
  call void @llvm.dbg.declare(metadata ptr %rstatc, metadata !6745, metadata !DIExpression()), !dbg !6768
  %3 = load ptr, ptr %cgrp.addr, align 8, !dbg !6769
  %4 = load i32, ptr %cpu, align 4, !dbg !6770
  %call3 = call ptr @cgroup_rstat_cpu(ptr noundef %3, i32 noundef %4) #17, !dbg !6771
  store ptr %call3, ptr %rstatc, align 8, !dbg !6768
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6772
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6749, metadata !DIExpression()), !dbg !6772
  %5 = load ptr, ptr %rstatc, align 8, !dbg !6772
  %updated_children = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %5, i32 0, i32 5, !dbg !6772
  %6 = load ptr, ptr %updated_children, align 8, !dbg !6772
  %7 = load ptr, ptr %cgrp.addr, align 8, !dbg !6772
  %cmp4 = icmp ne ptr %6, %7, !dbg !6772
  %lnot = xor i1 %cmp4, true, !dbg !6772
  %lnot6 = xor i1 %lnot, true, !dbg !6772
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6772
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6772
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6773
  %tobool = icmp ne i32 %8, 0, !dbg !6773
  %lnot7 = xor i1 %tobool, true, !dbg !6773
  %lnot9 = xor i1 %lnot7, true, !dbg !6773
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !6773
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !6773
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !6773
  %tobool12 = icmp ne i64 %expval, 0, !dbg !6773
  br i1 %tobool12, label %if.then, label %if.end, !dbg !6772

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !6773

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !6774
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6752, metadata !DIExpression()), !dbg !6774
  store i32 2307, ptr %__flags, align 4, !dbg !6774
  br label %do.body13, !dbg !6774

do.body13:                                        ; preds = %do.body
  br label %do.cond, !dbg !6775

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !6775

do.end:                                           ; preds = %do.cond
  br label %do.body14, !dbg !6774

do.body14:                                        ; preds = %do.end
  %9 = load i32, ptr %__flags, align 4, !dbg !6777
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 300, i32 %9, i64 12) #16, !dbg !6777, !srcloc !6779
  br label %do.cond15, !dbg !6777

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6777

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6774

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6780

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6780

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !6773
  br label %do.cond20, !dbg !6774

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6774

do.end21:                                         ; preds = %do.cond20
  br label %if.end, !dbg !6774

if.end:                                           ; preds = %do.end21, %for.body
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !6772
  %tobool22 = icmp ne i32 %10, 0, !dbg !6772
  %lnot23 = xor i1 %tobool22, true, !dbg !6772
  %lnot25 = xor i1 %lnot23, true, !dbg !6772
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !6772
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !6772
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !6772
  store i64 %expval28, ptr %tmp, align 8, !dbg !6773
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6782
  %11 = load i64, ptr %tmp, align 8, !dbg !6772
  %tobool29 = icmp ne i64 %11, 0, !dbg !6782
  br i1 %tobool29, label %if.then68, label %lor.lhs.false, !dbg !6783

lor.lhs.false:                                    ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on30) #16, !dbg !6784
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on30, metadata !6755, metadata !DIExpression()), !dbg !6784
  %12 = load ptr, ptr %rstatc, align 8, !dbg !6784
  %updated_next = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %12, i32 0, i32 6, !dbg !6784
  %13 = load ptr, ptr %updated_next, align 8, !dbg !6784
  %tobool31 = icmp ne ptr %13, null, !dbg !6784
  %lnot32 = xor i1 %tobool31, true, !dbg !6784
  %lnot34 = xor i1 %lnot32, true, !dbg !6784
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !6784
  store i32 %lnot.ext35, ptr %__ret_warn_on30, align 4, !dbg !6784
  %14 = load i32, ptr %__ret_warn_on30, align 4, !dbg !6785
  %tobool36 = icmp ne i32 %14, 0, !dbg !6785
  %lnot37 = xor i1 %tobool36, true, !dbg !6785
  %lnot39 = xor i1 %lnot37, true, !dbg !6785
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !6785
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !6785
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 0), !dbg !6785
  %tobool43 = icmp ne i64 %expval42, 0, !dbg !6785
  br i1 %tobool43, label %if.then44, label %if.end58, !dbg !6784

if.then44:                                        ; preds = %lor.lhs.false
  br label %do.body45, !dbg !6785

do.body45:                                        ; preds = %if.then44
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags46) #16, !dbg !6786
  call void @llvm.dbg.declare(metadata ptr %__flags46, metadata !6757, metadata !DIExpression()), !dbg !6786
  store i32 2307, ptr %__flags46, align 4, !dbg !6786
  br label %do.body47, !dbg !6786

do.body47:                                        ; preds = %do.body45
  br label %do.cond48, !dbg !6787

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !6787

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !6786

do.body50:                                        ; preds = %do.end49
  %15 = load i32, ptr %__flags46, align 4, !dbg !6789
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 301, i32 %15, i64 12) #16, !dbg !6789, !srcloc !6791
  br label %do.cond51, !dbg !6789

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !6789

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !6786

do.body53:                                        ; preds = %do.end52
  br label %do.cond54, !dbg !6792

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !6792

do.end55:                                         ; preds = %do.cond54
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags46) #16, !dbg !6785
  br label %do.cond56, !dbg !6786

do.cond56:                                        ; preds = %do.end55
  br label %do.end57, !dbg !6786

do.end57:                                         ; preds = %do.cond56
  br label %if.end58, !dbg !6786

if.end58:                                         ; preds = %do.end57, %lor.lhs.false
  %16 = load i32, ptr %__ret_warn_on30, align 4, !dbg !6784
  %tobool60 = icmp ne i32 %16, 0, !dbg !6784
  %lnot61 = xor i1 %tobool60, true, !dbg !6784
  %lnot63 = xor i1 %lnot61, true, !dbg !6784
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !6784
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !6784
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 0), !dbg !6784
  store i64 %expval66, ptr %tmp59, align 8, !dbg !6785
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on30) #16, !dbg !6794
  %17 = load i64, ptr %tmp59, align 8, !dbg !6784
  %tobool67 = icmp ne i64 %17, 0, !dbg !6794
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !6795

if.then68:                                        ; preds = %if.end58, %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6796

if.end69:                                         ; preds = %if.end58
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6797
  br label %cleanup, !dbg !6797

cleanup:                                          ; preds = %if.end69, %if.then68
  call void @llvm.lifetime.end.p0(i64 8, ptr %rstatc) #16, !dbg !6797
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup71 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6798

for.inc:                                          ; preds = %cleanup.cont
  %18 = load i32, ptr %cpu, align 4, !dbg !6766
  %inc = add i32 %18, 1, !dbg !6766
  store i32 %inc, ptr %cpu, align 4, !dbg !6766
  br label %for.cond, !dbg !6766, !llvm.loop !6799

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %cgrp.addr, align 8, !dbg !6801
  %rstat_cpu = getelementptr inbounds %struct.cgroup, ptr %19, i32 0, i32 26, !dbg !6802
  %20 = load ptr, ptr %rstat_cpu, align 8, !dbg !6802
  call void @free_percpu(ptr noundef %20) #17, !dbg !6803
  %21 = load ptr, ptr %cgrp.addr, align 8, !dbg !6804
  %rstat_cpu70 = getelementptr inbounds %struct.cgroup, ptr %21, i32 0, i32 26, !dbg !6805
  store ptr null, ptr %rstat_cpu70, align 8, !dbg !6806
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6807
  br label %cleanup71, !dbg !6807

cleanup71:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #16, !dbg !6807
  %cleanup.dest72 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest72, label %unreachable [
    i32 0, label %cleanup.cont73
    i32 1, label %cleanup.cont73
  ]

cleanup.cont73:                                   ; preds = %cleanup71, %cleanup71
  ret void, !dbg !6807

unreachable:                                      ; preds = %cleanup71
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6808 dso_local void @free_percpu(ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @cgroup_rstat_boot() #9 section ".init.text" align 16 !dbg !6809 {
entry:
  %cpu = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp4 = alloca ptr, align 8
  %.compoundliteral = alloca %struct.raw_spinlock, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #16, !dbg !6820
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !6811, metadata !DIExpression()), !dbg !6821
  store i32 0, ptr %cpu, align 4, !dbg !6822
  br label %for.cond, !dbg !6822

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %cpu, align 4, !dbg !6823
  %conv = sext i32 %0 to i64, !dbg !6823
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #17, !dbg !6823
  %conv1 = trunc i64 %call to i32, !dbg !6823
  store i32 %conv1, ptr %cpu, align 4, !dbg !6823
  %1 = load i32, ptr %cpu, align 4, !dbg !6823
  %cmp = icmp ult i32 %1, 64, !dbg !6823
  br i1 %cmp, label %for.body, label %for.end, !dbg !6822

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !6824

do.body:                                          ; preds = %for.body
  br label %do.body3, !dbg !6825

do.body3:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6826
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6812, metadata !DIExpression()), !dbg !6826
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6826
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !6826
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6825
  br label %do.cond, !dbg !6826

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !6826

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !6827
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6818, metadata !DIExpression()), !dbg !6827
  store i64 ptrtoint (ptr @cgroup_rstat_cpu_lock to i64), ptr %__ptr, align 8, !dbg !6827
  %3 = load i64, ptr %__ptr, align 8, !dbg !6827
  %4 = load i32, ptr %cpu, align 4, !dbg !6827
  %idxprom = sext i32 %4 to i64, !dbg !6827
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6827
  %5 = load i64, ptr %arrayidx, align 8, !dbg !6827
  %add = add i64 %3, %5, !dbg !6827
  %6 = inttoptr i64 %add to ptr, !dbg !6827
  store ptr %6, ptr %tmp4, align 8, !dbg !6827
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !6825
  %7 = load ptr, ptr %tmp4, align 8, !dbg !6827
  store ptr %7, ptr %tmp, align 8, !dbg !6826
  %8 = load ptr, ptr %tmp, align 8, !dbg !6825
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !6828
  %9 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !6828
  %counter = getelementptr inbounds %struct.atomic_t, ptr %9, i32 0, i32 0, !dbg !6828
  store i32 0, ptr %counter, align 4, !dbg !6828
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !6828
  br label %do.cond5, !dbg !6828

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !6828

do.end6:                                          ; preds = %do.cond5
  br label %for.inc, !dbg !6828

for.inc:                                          ; preds = %do.end6
  %10 = load i32, ptr %cpu, align 4, !dbg !6823
  %inc = add i32 %10, 1, !dbg !6823
  store i32 %inc, ptr %cpu, align 4, !dbg !6823
  br label %for.cond, !dbg !6823, !llvm.loop !6829

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #16, !dbg !6831
  ret void, !dbg !6831
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__cgroup_account_cputime(ptr noundef %cgrp, i64 noundef %delta_exec) #4 align 16 !dbg !6832 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %delta_exec.addr = alloca i64, align 8
  %rstatc = alloca ptr, align 8
  %flags = alloca i64, align 8
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !6836, metadata !DIExpression()), !dbg !6840
  store i64 %delta_exec, ptr %delta_exec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delta_exec.addr, metadata !6837, metadata !DIExpression()), !dbg !6841
  call void @llvm.lifetime.start.p0(i64 8, ptr %rstatc) #16, !dbg !6842
  call void @llvm.dbg.declare(metadata ptr %rstatc, metadata !6838, metadata !DIExpression()), !dbg !6843
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !6844
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6839, metadata !DIExpression()), !dbg !6845
  %0 = load ptr, ptr %cgrp.addr, align 8, !dbg !6846
  %call = call ptr @cgroup_base_stat_cputime_account_begin(ptr noundef %0, ptr noundef %flags) #17, !dbg !6847
  store ptr %call, ptr %rstatc, align 8, !dbg !6848
  %1 = load i64, ptr %delta_exec.addr, align 8, !dbg !6849
  %2 = load ptr, ptr %rstatc, align 8, !dbg !6850
  %bstat = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %2, i32 0, i32 1, !dbg !6851
  %cputime = getelementptr inbounds %struct.cgroup_base_stat, ptr %bstat, i32 0, i32 0, !dbg !6852
  %sum_exec_runtime = getelementptr inbounds %struct.task_cputime, ptr %cputime, i32 0, i32 2, !dbg !6853
  %3 = load i64, ptr %sum_exec_runtime, align 8, !dbg !6854
  %add = add i64 %3, %1, !dbg !6854
  store i64 %add, ptr %sum_exec_runtime, align 8, !dbg !6854
  %4 = load ptr, ptr %cgrp.addr, align 8, !dbg !6855
  %5 = load ptr, ptr %rstatc, align 8, !dbg !6856
  %6 = load i64, ptr %flags, align 8, !dbg !6857
  call void @cgroup_base_stat_cputime_account_end(ptr noundef %4, ptr noundef %5, i64 noundef %6) #17, !dbg !6858
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !6859
  call void @llvm.lifetime.end.p0(i64 8, ptr %rstatc) #16, !dbg !6859
  ret void, !dbg !6859
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @cgroup_base_stat_cputime_account_begin(ptr noundef %cgrp, ptr noundef %flags) #4 align 16 !dbg !6860 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  %rstatc = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !6864, metadata !DIExpression()), !dbg !6873
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6865, metadata !DIExpression()), !dbg !6874
  call void @llvm.lifetime.start.p0(i64 8, ptr %rstatc) #16, !dbg !6875
  call void @llvm.dbg.declare(metadata ptr %rstatc, metadata !6866, metadata !DIExpression()), !dbg !6876
  br label %do.body, !dbg !6877

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #17, !dbg !6878
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6878, !srcloc !6880
  br label %do.cond, !dbg !6878

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6878

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !6881

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6882
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6867, metadata !DIExpression()), !dbg !6882
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6882
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6882
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6881
  br label %do.cond2, !dbg !6882

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !6882

do.end3:                                          ; preds = %do.cond2
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #16, !dbg !6883
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6871, metadata !DIExpression()), !dbg !6883
  %1 = load ptr, ptr %cgrp.addr, align 8, !dbg !6883
  %rstat_cpu = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 26, !dbg !6883
  %2 = load ptr, ptr %rstat_cpu, align 8, !dbg !6883
  %3 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %2) #19, !dbg !6883, !srcloc !6884
  store i64 %3, ptr %tcp_ptr__, align 8, !dbg !6883
  %4 = load i64, ptr %tcp_ptr__, align 8, !dbg !6883
  %5 = inttoptr i64 %4 to ptr, !dbg !6883
  store ptr %5, ptr %tmp5, align 8, !dbg !6883
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #16, !dbg !6881
  %6 = load ptr, ptr %tmp5, align 8, !dbg !6883
  store ptr %6, ptr %tmp4, align 8, !dbg !6882
  %7 = load ptr, ptr %tmp4, align 8, !dbg !6881
  store ptr %7, ptr %tmp, align 8, !dbg !6878
  %8 = load ptr, ptr %tmp, align 8, !dbg !6877
  store ptr %8, ptr %rstatc, align 8, !dbg !6885
  %9 = load ptr, ptr %rstatc, align 8, !dbg !6886
  %bsync = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %9, i32 0, i32 0, !dbg !6887
  %call = call i64 @u64_stats_update_begin_irqsave(ptr noundef %bsync) #17, !dbg !6888
  %10 = load ptr, ptr %flags.addr, align 8, !dbg !6889
  store i64 %call, ptr %10, align 8, !dbg !6890
  %11 = load ptr, ptr %rstatc, align 8, !dbg !6891
  call void @llvm.lifetime.end.p0(i64 8, ptr %rstatc) #16, !dbg !6892
  ret ptr %11, !dbg !6893
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cgroup_base_stat_cputime_account_end(ptr noundef %cgrp, ptr noundef %rstatc, i64 noundef %flags) #4 align 16 !dbg !5438 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %rstatc.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !5442, metadata !DIExpression()), !dbg !6894
  store ptr %rstatc, ptr %rstatc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rstatc.addr, metadata !5443, metadata !DIExpression()), !dbg !6895
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5444, metadata !DIExpression()), !dbg !6896
  %0 = load ptr, ptr %rstatc.addr, align 8, !dbg !6897
  %bsync = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %0, i32 0, i32 0, !dbg !6898
  %1 = load i64, ptr %flags.addr, align 8, !dbg !6899
  call void @u64_stats_update_end_irqrestore(ptr noundef %bsync, i64 noundef %1) #17, !dbg !6900
  %2 = load ptr, ptr %cgrp.addr, align 8, !dbg !6901
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #17, !dbg !6902
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #16, !dbg !6903
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5445, metadata !DIExpression()), !dbg !6903
  br label %do.body, !dbg !6903

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6904
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5448, metadata !DIExpression()), !dbg !6904
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6904
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !6904
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6903
  br label %do.cond, !dbg !6904

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6904

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #16, !dbg !6905
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5450, metadata !DIExpression()), !dbg !6905
  %4 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 2)) #19, !dbg !6905, !srcloc !6906
  store i32 %4, ptr %pfo_val__, align 4, !dbg !6905
  %5 = load i32, ptr %pfo_val__, align 4, !dbg !6905
  %conv = zext i32 %5 to i64, !dbg !6905
  %conv2 = trunc i64 %conv to i32, !dbg !6905
  store i32 %conv2, ptr %tmp1, align 4, !dbg !6905
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #16, !dbg !6903
  %6 = load i32, ptr %tmp1, align 4, !dbg !6905
  store i32 %6, ptr %pscr_ret__, align 4, !dbg !6903
  %7 = load i32, ptr %pscr_ret__, align 4, !dbg !6903
  store i32 %7, ptr %tmp3, align 4, !dbg !6903
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #16, !dbg !6902
  %8 = load i32, ptr %tmp3, align 4, !dbg !6903
  store i32 %8, ptr %tmp, align 4, !dbg !6902
  %9 = load i32, ptr %tmp, align 4, !dbg !6902
  call void @cgroup_rstat_updated(ptr noundef %2, i32 noundef %9) #17, !dbg !6907
  br label %do.body4, !dbg !6908

do.body4:                                         ; preds = %do.end
  %10 = load ptr, ptr %rstatc.addr, align 8, !dbg !6909
  br label %do.body5, !dbg !6909

do.body5:                                         ; preds = %do.body4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6911, !srcloc !6913
  %call = call zeroext i1 @__preempt_count_dec_and_test() #17, !dbg !6914
  %lnot = xor i1 %call, true, !dbg !6914
  %lnot6 = xor i1 %lnot, true, !dbg !6914
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6914
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6914
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6914
  %tobool = icmp ne i64 %expval, 0, !dbg !6914
  br i1 %tobool, label %if.then, label %if.end, !dbg !6911

if.then:                                          ; preds = %do.body5
  br label %do.body8, !dbg !6914

do.body8:                                         ; preds = %if.then
  %11 = call i64 @llvm.read_register.i64(metadata !6314), !dbg !6916
  %12 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %11) #16, !dbg !6916, !srcloc !6918
  call void @llvm.write_register.i64(metadata !6314, i64 %12), !dbg !6916
  br label %do.end10, !dbg !6916

do.end10:                                         ; preds = %do.body8
  br label %if.end, !dbg !6916

if.end:                                           ; preds = %do.end10, %do.body5
  br label %do.end12, !dbg !6911

do.end12:                                         ; preds = %if.end
  br label %do.end14, !dbg !6909

do.end14:                                         ; preds = %do.end12
  ret void, !dbg !6919
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__cgroup_account_cputime_field(ptr noundef %cgrp, i32 noundef %index, i64 noundef %delta_exec) #4 align 16 !dbg !6920 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %delta_exec.addr = alloca i64, align 8
  %rstatc = alloca ptr, align 8
  %flags = alloca i64, align 8
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !6924, metadata !DIExpression()), !dbg !6929
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6925, metadata !DIExpression()), !dbg !6930
  store i64 %delta_exec, ptr %delta_exec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delta_exec.addr, metadata !6926, metadata !DIExpression()), !dbg !6931
  call void @llvm.lifetime.start.p0(i64 8, ptr %rstatc) #16, !dbg !6932
  call void @llvm.dbg.declare(metadata ptr %rstatc, metadata !6927, metadata !DIExpression()), !dbg !6933
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !6934
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6928, metadata !DIExpression()), !dbg !6935
  %0 = load ptr, ptr %cgrp.addr, align 8, !dbg !6936
  %call = call ptr @cgroup_base_stat_cputime_account_begin(ptr noundef %0, ptr noundef %flags) #17, !dbg !6937
  store ptr %call, ptr %rstatc, align 8, !dbg !6938
  %1 = load i32, ptr %index.addr, align 4, !dbg !6939
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb1
    i32 3, label %sw.bb1
  ], !dbg !6940

sw.bb:                                            ; preds = %entry, %entry
  %2 = load i64, ptr %delta_exec.addr, align 8, !dbg !6941
  %3 = load ptr, ptr %rstatc, align 8, !dbg !6943
  %bstat = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %3, i32 0, i32 1, !dbg !6944
  %cputime = getelementptr inbounds %struct.cgroup_base_stat, ptr %bstat, i32 0, i32 0, !dbg !6945
  %utime = getelementptr inbounds %struct.task_cputime, ptr %cputime, i32 0, i32 1, !dbg !6946
  %4 = load i64, ptr %utime, align 8, !dbg !6947
  %add = add i64 %4, %2, !dbg !6947
  store i64 %add, ptr %utime, align 8, !dbg !6947
  br label %sw.epilog, !dbg !6948

sw.bb1:                                           ; preds = %entry, %entry, %entry
  %5 = load i64, ptr %delta_exec.addr, align 8, !dbg !6949
  %6 = load ptr, ptr %rstatc, align 8, !dbg !6950
  %bstat2 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %6, i32 0, i32 1, !dbg !6951
  %cputime3 = getelementptr inbounds %struct.cgroup_base_stat, ptr %bstat2, i32 0, i32 0, !dbg !6952
  %stime = getelementptr inbounds %struct.task_cputime, ptr %cputime3, i32 0, i32 0, !dbg !6953
  %7 = load i64, ptr %stime, align 8, !dbg !6954
  %add4 = add i64 %7, %5, !dbg !6954
  store i64 %add4, ptr %stime, align 8, !dbg !6954
  br label %sw.epilog, !dbg !6955

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !6956

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %8 = load ptr, ptr %cgrp.addr, align 8, !dbg !6957
  %9 = load ptr, ptr %rstatc, align 8, !dbg !6958
  %10 = load i64, ptr %flags, align 8, !dbg !6959
  call void @cgroup_base_stat_cputime_account_end(ptr noundef %8, ptr noundef %9, i64 noundef %10) #17, !dbg !6960
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !6961
  call void @llvm.lifetime.end.p0(i64 8, ptr %rstatc) #16, !dbg !6961
  ret void, !dbg !6961
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cgroup_base_stat_cputime_show(ptr noundef %seq) #4 align 16 !dbg !6962 {
entry:
  %seq.addr = alloca ptr, align 8
  %cgrp = alloca ptr, align 8
  %usage = alloca i64, align 8
  %utime = alloca i64, align 8
  %stime = alloca i64, align 8
  %bstat = alloca %struct.cgroup_base_stat, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__base13 = alloca i32, align 4
  %__rem14 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %__base21 = alloca i32, align 4
  %__rem22 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6966, metadata !DIExpression()), !dbg !6981
  call void @llvm.lifetime.start.p0(i64 8, ptr %cgrp) #16, !dbg !6982
  call void @llvm.dbg.declare(metadata ptr %cgrp, metadata !6967, metadata !DIExpression()), !dbg !6983
  %0 = load ptr, ptr %seq.addr, align 8, !dbg !6984
  %call = call ptr @seq_css(ptr noundef %0) #17, !dbg !6985
  %cgroup = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 0, !dbg !6986
  %1 = load ptr, ptr %cgroup, align 8, !dbg !6986
  store ptr %1, ptr %cgrp, align 8, !dbg !6983
  call void @llvm.lifetime.start.p0(i64 8, ptr %usage) #16, !dbg !6987
  call void @llvm.dbg.declare(metadata ptr %usage, metadata !6968, metadata !DIExpression()), !dbg !6988
  call void @llvm.lifetime.start.p0(i64 8, ptr %utime) #16, !dbg !6987
  call void @llvm.dbg.declare(metadata ptr %utime, metadata !6969, metadata !DIExpression()), !dbg !6989
  call void @llvm.lifetime.start.p0(i64 8, ptr %stime) #16, !dbg !6987
  call void @llvm.dbg.declare(metadata ptr %stime, metadata !6970, metadata !DIExpression()), !dbg !6990
  call void @llvm.lifetime.start.p0(i64 24, ptr %bstat) #16, !dbg !6991
  call void @llvm.dbg.declare(metadata ptr %bstat, metadata !6971, metadata !DIExpression()), !dbg !6992
  %2 = load ptr, ptr %cgrp, align 8, !dbg !6993
  %call1 = call ptr @cgroup_parent(ptr noundef %2) #17, !dbg !6995
  %tobool = icmp ne ptr %call1, null, !dbg !6995
  br i1 %tobool, label %if.then, label %if.else, !dbg !6996

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cgrp, align 8, !dbg !6997
  call void @cgroup_rstat_flush_hold(ptr noundef %3) #17, !dbg !6999
  %4 = load ptr, ptr %cgrp, align 8, !dbg !7000
  %bstat2 = getelementptr inbounds %struct.cgroup, ptr %4, i32 0, i32 29, !dbg !7001
  %cputime = getelementptr inbounds %struct.cgroup_base_stat, ptr %bstat2, i32 0, i32 0, !dbg !7002
  %sum_exec_runtime = getelementptr inbounds %struct.task_cputime, ptr %cputime, i32 0, i32 2, !dbg !7003
  %5 = load i64, ptr %sum_exec_runtime, align 8, !dbg !7003
  store i64 %5, ptr %usage, align 8, !dbg !7004
  %6 = load ptr, ptr %cgrp, align 8, !dbg !7005
  %bstat3 = getelementptr inbounds %struct.cgroup, ptr %6, i32 0, i32 29, !dbg !7006
  %cputime4 = getelementptr inbounds %struct.cgroup_base_stat, ptr %bstat3, i32 0, i32 0, !dbg !7007
  %7 = load ptr, ptr %cgrp, align 8, !dbg !7008
  %prev_cputime = getelementptr inbounds %struct.cgroup, ptr %7, i32 0, i32 30, !dbg !7009
  call void @cputime_adjust(ptr noundef %cputime4, ptr noundef %prev_cputime, ptr noundef %utime, ptr noundef %stime) #17, !dbg !7010
  call void @cgroup_rstat_flush_release() #17, !dbg !7011
  br label %if.end, !dbg !7012

if.else:                                          ; preds = %entry
  call void @root_cgroup_cputime(ptr noundef %bstat) #17, !dbg !7013
  %cputime5 = getelementptr inbounds %struct.cgroup_base_stat, ptr %bstat, i32 0, i32 0, !dbg !7015
  %sum_exec_runtime6 = getelementptr inbounds %struct.task_cputime, ptr %cputime5, i32 0, i32 2, !dbg !7016
  %8 = load i64, ptr %sum_exec_runtime6, align 8, !dbg !7016
  store i64 %8, ptr %usage, align 8, !dbg !7017
  %cputime7 = getelementptr inbounds %struct.cgroup_base_stat, ptr %bstat, i32 0, i32 0, !dbg !7018
  %utime8 = getelementptr inbounds %struct.task_cputime, ptr %cputime7, i32 0, i32 1, !dbg !7019
  %9 = load i64, ptr %utime8, align 8, !dbg !7019
  store i64 %9, ptr %utime, align 8, !dbg !7020
  %cputime9 = getelementptr inbounds %struct.cgroup_base_stat, ptr %bstat, i32 0, i32 0, !dbg !7021
  %stime10 = getelementptr inbounds %struct.task_cputime, ptr %cputime9, i32 0, i32 0, !dbg !7022
  %10 = load i64, ptr %stime10, align 8, !dbg !7022
  store i64 %10, ptr %stime, align 8, !dbg !7023
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #16, !dbg !7024
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !6972, metadata !DIExpression()), !dbg !7024
  store i32 1000, ptr %__base, align 4, !dbg !7024
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #16, !dbg !7024
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !6974, metadata !DIExpression()), !dbg !7024
  %11 = load i64, ptr %usage, align 8, !dbg !7024
  %12 = load i32, ptr %__base, align 4, !dbg !7024
  %conv = zext i32 %12 to i64, !dbg !7024
  %rem = urem i64 %11, %conv, !dbg !7024
  %conv11 = trunc i64 %rem to i32, !dbg !7024
  store i32 %conv11, ptr %__rem, align 4, !dbg !7024
  %13 = load i64, ptr %usage, align 8, !dbg !7024
  %14 = load i32, ptr %__base, align 4, !dbg !7024
  %conv12 = zext i32 %14 to i64, !dbg !7024
  %div = udiv i64 %13, %conv12, !dbg !7024
  store i64 %div, ptr %usage, align 8, !dbg !7024
  %15 = load i32, ptr %__rem, align 4, !dbg !7024
  store i32 %15, ptr %tmp, align 4, !dbg !7024
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #16, !dbg !7025
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #16, !dbg !7025
  %16 = load i32, ptr %tmp, align 4, !dbg !7024
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base13) #16, !dbg !7026
  call void @llvm.dbg.declare(metadata ptr %__base13, metadata !6975, metadata !DIExpression()), !dbg !7026
  store i32 1000, ptr %__base13, align 4, !dbg !7026
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem14) #16, !dbg !7026
  call void @llvm.dbg.declare(metadata ptr %__rem14, metadata !6977, metadata !DIExpression()), !dbg !7026
  %17 = load i64, ptr %utime, align 8, !dbg !7026
  %18 = load i32, ptr %__base13, align 4, !dbg !7026
  %conv15 = zext i32 %18 to i64, !dbg !7026
  %rem16 = urem i64 %17, %conv15, !dbg !7026
  %conv17 = trunc i64 %rem16 to i32, !dbg !7026
  store i32 %conv17, ptr %__rem14, align 4, !dbg !7026
  %19 = load i64, ptr %utime, align 8, !dbg !7026
  %20 = load i32, ptr %__base13, align 4, !dbg !7026
  %conv18 = zext i32 %20 to i64, !dbg !7026
  %div19 = udiv i64 %19, %conv18, !dbg !7026
  store i64 %div19, ptr %utime, align 8, !dbg !7026
  %21 = load i32, ptr %__rem14, align 4, !dbg !7026
  store i32 %21, ptr %tmp20, align 4, !dbg !7026
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem14) #16, !dbg !7027
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base13) #16, !dbg !7027
  %22 = load i32, ptr %tmp20, align 4, !dbg !7026
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base21) #16, !dbg !7028
  call void @llvm.dbg.declare(metadata ptr %__base21, metadata !6978, metadata !DIExpression()), !dbg !7028
  store i32 1000, ptr %__base21, align 4, !dbg !7028
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem22) #16, !dbg !7028
  call void @llvm.dbg.declare(metadata ptr %__rem22, metadata !6980, metadata !DIExpression()), !dbg !7028
  %23 = load i64, ptr %stime, align 8, !dbg !7028
  %24 = load i32, ptr %__base21, align 4, !dbg !7028
  %conv23 = zext i32 %24 to i64, !dbg !7028
  %rem24 = urem i64 %23, %conv23, !dbg !7028
  %conv25 = trunc i64 %rem24 to i32, !dbg !7028
  store i32 %conv25, ptr %__rem22, align 4, !dbg !7028
  %25 = load i64, ptr %stime, align 8, !dbg !7028
  %26 = load i32, ptr %__base21, align 4, !dbg !7028
  %conv26 = zext i32 %26 to i64, !dbg !7028
  %div27 = udiv i64 %25, %conv26, !dbg !7028
  store i64 %div27, ptr %stime, align 8, !dbg !7028
  %27 = load i32, ptr %__rem22, align 4, !dbg !7028
  store i32 %27, ptr %tmp28, align 4, !dbg !7028
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem22) #16, !dbg !7029
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base21) #16, !dbg !7029
  %28 = load i32, ptr %tmp28, align 4, !dbg !7028
  %29 = load ptr, ptr %seq.addr, align 8, !dbg !7030
  %30 = load i64, ptr %usage, align 8, !dbg !7031
  %31 = load i64, ptr %utime, align 8, !dbg !7032
  %32 = load i64, ptr %stime, align 8, !dbg !7033
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef @.str.1, i64 noundef %30, i64 noundef %31, i64 noundef %32) #17, !dbg !7034
  call void @llvm.lifetime.end.p0(i64 24, ptr %bstat) #16, !dbg !7035
  call void @llvm.lifetime.end.p0(i64 8, ptr %stime) #16, !dbg !7035
  call void @llvm.lifetime.end.p0(i64 8, ptr %utime) #16, !dbg !7035
  call void @llvm.lifetime.end.p0(i64 8, ptr %usage) #16, !dbg !7035
  call void @llvm.lifetime.end.p0(i64 8, ptr %cgrp) #16, !dbg !7035
  ret void, !dbg !7035
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @seq_css(ptr noundef %seq) #3 align 16 !dbg !7036 {
entry:
  %seq.addr = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !7040, metadata !DIExpression()), !dbg !7041
  %0 = load ptr, ptr %seq.addr, align 8, !dbg !7042
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !7043
  %1 = load ptr, ptr %private, align 8, !dbg !7043
  %call = call ptr @of_css(ptr noundef %1) #17, !dbg !7044
  ret ptr %call, !dbg !7045
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7046 dso_local void @cputime_adjust(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @root_cgroup_cputime(ptr noundef %bstat) #4 align 16 !dbg !7052 {
entry:
  %bstat.addr = alloca ptr, align 8
  %cputime = alloca ptr, align 8
  %i = alloca i32, align 4
  %kcpustat = alloca %struct.kernel_cpustat, align 8
  %cpustat = alloca ptr, align 8
  %user = alloca i64, align 8
  %sys = alloca i64, align 8
  store ptr %bstat, ptr %bstat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bstat.addr, metadata !7057, metadata !DIExpression()), !dbg !7067
  call void @llvm.lifetime.start.p0(i64 8, ptr %cputime) #16, !dbg !7068
  call void @llvm.dbg.declare(metadata ptr %cputime, metadata !7058, metadata !DIExpression()), !dbg !7069
  %0 = load ptr, ptr %bstat.addr, align 8, !dbg !7070
  %cputime1 = getelementptr inbounds %struct.cgroup_base_stat, ptr %0, i32 0, i32 0, !dbg !7071
  store ptr %cputime1, ptr %cputime, align 8, !dbg !7069
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !7072
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7059, metadata !DIExpression()), !dbg !7073
  %1 = load ptr, ptr %bstat.addr, align 8, !dbg !7074
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 24, i1 false), !dbg !7075
  store i32 0, ptr %i, align 4, !dbg !7076
  br label %for.cond, !dbg !7076

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !7077
  %conv = sext i32 %2 to i64, !dbg !7077
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #17, !dbg !7077
  %conv2 = trunc i64 %call to i32, !dbg !7077
  store i32 %conv2, ptr %i, align 4, !dbg !7077
  %3 = load i32, ptr %i, align 4, !dbg !7077
  %cmp = icmp ult i32 %3, 64, !dbg !7077
  br i1 %cmp, label %for.body, label %for.end, !dbg !7076

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 80, ptr %kcpustat) #16, !dbg !7078
  call void @llvm.dbg.declare(metadata ptr %kcpustat, metadata !7060, metadata !DIExpression()), !dbg !7079
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpustat) #16, !dbg !7080
  call void @llvm.dbg.declare(metadata ptr %cpustat, metadata !7064, metadata !DIExpression()), !dbg !7081
  %cpustat4 = getelementptr inbounds %struct.kernel_cpustat, ptr %kcpustat, i32 0, i32 0, !dbg !7082
  %arraydecay = getelementptr inbounds [10 x i64], ptr %cpustat4, i64 0, i64 0, !dbg !7083
  store ptr %arraydecay, ptr %cpustat, align 8, !dbg !7081
  call void @llvm.lifetime.start.p0(i64 8, ptr %user) #16, !dbg !7084
  call void @llvm.dbg.declare(metadata ptr %user, metadata !7065, metadata !DIExpression()), !dbg !7085
  store i64 0, ptr %user, align 8, !dbg !7085
  call void @llvm.lifetime.start.p0(i64 8, ptr %sys) #16, !dbg !7086
  call void @llvm.dbg.declare(metadata ptr %sys, metadata !7066, metadata !DIExpression()), !dbg !7087
  store i64 0, ptr %sys, align 8, !dbg !7087
  %4 = load i32, ptr %i, align 4, !dbg !7088
  call void @kcpustat_cpu_fetch(ptr noundef %kcpustat, i32 noundef %4) #17, !dbg !7089
  %5 = load ptr, ptr %cpustat, align 8, !dbg !7090
  %arrayidx = getelementptr i64, ptr %5, i64 0, !dbg !7090
  %6 = load i64, ptr %arrayidx, align 8, !dbg !7090
  %7 = load i64, ptr %user, align 8, !dbg !7091
  %add = add i64 %7, %6, !dbg !7091
  store i64 %add, ptr %user, align 8, !dbg !7091
  %8 = load ptr, ptr %cpustat, align 8, !dbg !7092
  %arrayidx5 = getelementptr i64, ptr %8, i64 1, !dbg !7092
  %9 = load i64, ptr %arrayidx5, align 8, !dbg !7092
  %10 = load i64, ptr %user, align 8, !dbg !7093
  %add6 = add i64 %10, %9, !dbg !7093
  store i64 %add6, ptr %user, align 8, !dbg !7093
  %11 = load i64, ptr %user, align 8, !dbg !7094
  %12 = load ptr, ptr %cputime, align 8, !dbg !7095
  %utime = getelementptr inbounds %struct.task_cputime, ptr %12, i32 0, i32 1, !dbg !7096
  %13 = load i64, ptr %utime, align 8, !dbg !7097
  %add7 = add i64 %13, %11, !dbg !7097
  store i64 %add7, ptr %utime, align 8, !dbg !7097
  %14 = load ptr, ptr %cpustat, align 8, !dbg !7098
  %arrayidx8 = getelementptr i64, ptr %14, i64 2, !dbg !7098
  %15 = load i64, ptr %arrayidx8, align 8, !dbg !7098
  %16 = load i64, ptr %sys, align 8, !dbg !7099
  %add9 = add i64 %16, %15, !dbg !7099
  store i64 %add9, ptr %sys, align 8, !dbg !7099
  %17 = load ptr, ptr %cpustat, align 8, !dbg !7100
  %arrayidx10 = getelementptr i64, ptr %17, i64 4, !dbg !7100
  %18 = load i64, ptr %arrayidx10, align 8, !dbg !7100
  %19 = load i64, ptr %sys, align 8, !dbg !7101
  %add11 = add i64 %19, %18, !dbg !7101
  store i64 %add11, ptr %sys, align 8, !dbg !7101
  %20 = load ptr, ptr %cpustat, align 8, !dbg !7102
  %arrayidx12 = getelementptr i64, ptr %20, i64 3, !dbg !7102
  %21 = load i64, ptr %arrayidx12, align 8, !dbg !7102
  %22 = load i64, ptr %sys, align 8, !dbg !7103
  %add13 = add i64 %22, %21, !dbg !7103
  store i64 %add13, ptr %sys, align 8, !dbg !7103
  %23 = load i64, ptr %sys, align 8, !dbg !7104
  %24 = load ptr, ptr %cputime, align 8, !dbg !7105
  %stime = getelementptr inbounds %struct.task_cputime, ptr %24, i32 0, i32 0, !dbg !7106
  %25 = load i64, ptr %stime, align 8, !dbg !7107
  %add14 = add i64 %25, %23, !dbg !7107
  store i64 %add14, ptr %stime, align 8, !dbg !7107
  %26 = load i64, ptr %user, align 8, !dbg !7108
  %27 = load ptr, ptr %cputime, align 8, !dbg !7109
  %sum_exec_runtime = getelementptr inbounds %struct.task_cputime, ptr %27, i32 0, i32 2, !dbg !7110
  %28 = load i64, ptr %sum_exec_runtime, align 8, !dbg !7111
  %add15 = add i64 %28, %26, !dbg !7111
  store i64 %add15, ptr %sum_exec_runtime, align 8, !dbg !7111
  %29 = load i64, ptr %sys, align 8, !dbg !7112
  %30 = load ptr, ptr %cputime, align 8, !dbg !7113
  %sum_exec_runtime16 = getelementptr inbounds %struct.task_cputime, ptr %30, i32 0, i32 2, !dbg !7114
  %31 = load i64, ptr %sum_exec_runtime16, align 8, !dbg !7115
  %add17 = add i64 %31, %29, !dbg !7115
  store i64 %add17, ptr %sum_exec_runtime16, align 8, !dbg !7115
  call void @llvm.lifetime.end.p0(i64 8, ptr %sys) #16, !dbg !7116
  call void @llvm.lifetime.end.p0(i64 8, ptr %user) #16, !dbg !7116
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpustat) #16, !dbg !7116
  call void @llvm.lifetime.end.p0(i64 80, ptr %kcpustat) #16, !dbg !7116
  br label %for.inc, !dbg !7117

for.inc:                                          ; preds = %for.body
  %32 = load i32, ptr %i, align 4, !dbg !7077
  %inc = add i32 %32, 1, !dbg !7077
  store i32 %inc, ptr %i, align 4, !dbg !7077
  br label %for.cond, !dbg !7077, !llvm.loop !7118

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !7120
  call void @llvm.lifetime.end.p0(i64 8, ptr %cputime) #16, !dbg !7120
  ret void, !dbg !7120
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7121 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_rstat__336_540_bpf_rstat_kfunc_init7() #9 section ".init.text" align 16 !dbg !7124 {
entry:
  %call = call i32 @bpf_rstat_kfunc_init() #20, !dbg !7125
  ret i32 %call, !dbg !7125
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @bpf_rstat_kfunc_init() #9 section ".init.text" align 16 !dbg !7126 {
entry:
  %call = call i32 @register_btf_kfunc_id_set(i32 noundef 26, ptr noundef @bpf_rstat_kfunc_set) #17, !dbg !7127
  ret i32 %call, !dbg !7128
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7129 dso_local void @_raw_spin_lock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @cgroup_rstat_cpu_pop_updated(ptr noundef %pos, ptr noundef %root, i32 noundef %cpu) #4 align 16 !dbg !7132 {
entry:
  %retval = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %rstatc = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %prstatc = alloca ptr, align 8
  %nextp = alloca ptr, align 8
  %nrstatc = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !7136, metadata !DIExpression()), !dbg !7153
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !7137, metadata !DIExpression()), !dbg !7154
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7138, metadata !DIExpression()), !dbg !7155
  call void @llvm.lifetime.start.p0(i64 8, ptr %rstatc) #16, !dbg !7156
  call void @llvm.dbg.declare(metadata ptr %rstatc, metadata !7139, metadata !DIExpression()), !dbg !7157
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !7158
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !7140, metadata !DIExpression()), !dbg !7159
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !7160
  %1 = load ptr, ptr %root.addr, align 8, !dbg !7162
  %cmp = icmp eq ptr %0, %1, !dbg !7163
  br i1 %cmp, label %if.then, label %if.end, !dbg !7164

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !7165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7165

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pos.addr, align 8, !dbg !7166
  %tobool = icmp ne ptr %2, null, !dbg !7166
  br i1 %tobool, label %if.else, label %if.then1, !dbg !7168

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %root.addr, align 8, !dbg !7169
  store ptr %3, ptr %pos.addr, align 8, !dbg !7171
  %4 = load ptr, ptr %pos.addr, align 8, !dbg !7172
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !7174
  %call = call ptr @cgroup_rstat_cpu(ptr noundef %4, i32 noundef %5) #17, !dbg !7175
  %updated_next = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %call, i32 0, i32 6, !dbg !7176
  %6 = load ptr, ptr %updated_next, align 8, !dbg !7176
  %tobool2 = icmp ne ptr %6, null, !dbg !7175
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !7177

if.then3:                                         ; preds = %if.then1
  store ptr null, ptr %retval, align 8, !dbg !7178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7178

if.end4:                                          ; preds = %if.then1
  br label %if.end6, !dbg !7179

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %pos.addr, align 8, !dbg !7180
  %call5 = call ptr @cgroup_parent(ptr noundef %7) #17, !dbg !7182
  store ptr %call5, ptr %pos.addr, align 8, !dbg !7183
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end4
  br label %while.cond, !dbg !7184

while.cond:                                       ; preds = %if.end10, %if.end6
  br label %while.body, !dbg !7184

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %pos.addr, align 8, !dbg !7185
  %9 = load i32, ptr %cpu.addr, align 4, !dbg !7187
  %call7 = call ptr @cgroup_rstat_cpu(ptr noundef %8, i32 noundef %9) #17, !dbg !7188
  store ptr %call7, ptr %rstatc, align 8, !dbg !7189
  %10 = load ptr, ptr %rstatc, align 8, !dbg !7190
  %updated_children = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %10, i32 0, i32 5, !dbg !7192
  %11 = load ptr, ptr %updated_children, align 8, !dbg !7192
  %12 = load ptr, ptr %pos.addr, align 8, !dbg !7193
  %cmp8 = icmp eq ptr %11, %12, !dbg !7194
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !7195

if.then9:                                         ; preds = %while.body
  br label %while.end, !dbg !7196

if.end10:                                         ; preds = %while.body
  %13 = load ptr, ptr %rstatc, align 8, !dbg !7197
  %updated_children11 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %13, i32 0, i32 5, !dbg !7198
  %14 = load ptr, ptr %updated_children11, align 8, !dbg !7198
  store ptr %14, ptr %pos.addr, align 8, !dbg !7199
  br label %while.cond, !dbg !7184, !llvm.loop !7200

while.end:                                        ; preds = %if.then9
  %15 = load ptr, ptr %pos.addr, align 8, !dbg !7202
  %call12 = call ptr @cgroup_parent(ptr noundef %15) #17, !dbg !7203
  store ptr %call12, ptr %parent, align 8, !dbg !7204
  %16 = load ptr, ptr %parent, align 8, !dbg !7205
  %tobool13 = icmp ne ptr %16, null, !dbg !7205
  br i1 %tobool13, label %if.then14, label %if.end50, !dbg !7206

if.then14:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %prstatc) #16, !dbg !7207
  call void @llvm.dbg.declare(metadata ptr %prstatc, metadata !7141, metadata !DIExpression()), !dbg !7208
  call void @llvm.lifetime.start.p0(i64 8, ptr %nextp) #16, !dbg !7209
  call void @llvm.dbg.declare(metadata ptr %nextp, metadata !7144, metadata !DIExpression()), !dbg !7210
  %17 = load ptr, ptr %parent, align 8, !dbg !7211
  %18 = load i32, ptr %cpu.addr, align 4, !dbg !7212
  %call15 = call ptr @cgroup_rstat_cpu(ptr noundef %17, i32 noundef %18) #17, !dbg !7213
  store ptr %call15, ptr %prstatc, align 8, !dbg !7214
  %19 = load ptr, ptr %prstatc, align 8, !dbg !7215
  %updated_children16 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %19, i32 0, i32 5, !dbg !7216
  store ptr %updated_children16, ptr %nextp, align 8, !dbg !7217
  br label %while.cond17, !dbg !7218

while.cond17:                                     ; preds = %if.end39, %if.then14
  %20 = load ptr, ptr %nextp, align 8, !dbg !7219
  %21 = load ptr, ptr %20, align 8, !dbg !7220
  %22 = load ptr, ptr %pos.addr, align 8, !dbg !7221
  %cmp18 = icmp ne ptr %21, %22, !dbg !7222
  br i1 %cmp18, label %while.body19, label %while.end48, !dbg !7218

while.body19:                                     ; preds = %while.cond17
  call void @llvm.lifetime.start.p0(i64 8, ptr %nrstatc) #16, !dbg !7223
  call void @llvm.dbg.declare(metadata ptr %nrstatc, metadata !7146, metadata !DIExpression()), !dbg !7224
  %23 = load ptr, ptr %nextp, align 8, !dbg !7225
  %24 = load ptr, ptr %23, align 8, !dbg !7226
  %25 = load i32, ptr %cpu.addr, align 4, !dbg !7227
  %call20 = call ptr @cgroup_rstat_cpu(ptr noundef %24, i32 noundef %25) #17, !dbg !7228
  store ptr %call20, ptr %nrstatc, align 8, !dbg !7229
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !7230
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7148, metadata !DIExpression()), !dbg !7230
  %26 = load ptr, ptr %nextp, align 8, !dbg !7230
  %27 = load ptr, ptr %26, align 8, !dbg !7230
  %28 = load ptr, ptr %parent, align 8, !dbg !7230
  %cmp21 = icmp eq ptr %27, %28, !dbg !7230
  %lnot = xor i1 %cmp21, true, !dbg !7230
  %lnot22 = xor i1 %lnot, true, !dbg !7230
  %lnot.ext = zext i1 %lnot22 to i32, !dbg !7230
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !7230
  %29 = load i32, ptr %__ret_warn_on, align 4, !dbg !7231
  %tobool23 = icmp ne i32 %29, 0, !dbg !7231
  %lnot24 = xor i1 %tobool23, true, !dbg !7231
  %lnot26 = xor i1 %lnot24, true, !dbg !7231
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !7231
  %conv = sext i32 %lnot.ext27 to i64, !dbg !7231
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7231
  %tobool28 = icmp ne i64 %expval, 0, !dbg !7231
  br i1 %tobool28, label %if.then29, label %if.end39, !dbg !7230

if.then29:                                        ; preds = %while.body19
  br label %do.body, !dbg !7231

do.body:                                          ; preds = %if.then29
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !7232
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7150, metadata !DIExpression()), !dbg !7232
  store i32 2307, ptr %__flags, align 4, !dbg !7232
  br label %do.body30, !dbg !7232

do.body30:                                        ; preds = %do.body
  br label %do.cond, !dbg !7233

do.cond:                                          ; preds = %do.body30
  br label %do.end, !dbg !7233

do.end:                                           ; preds = %do.cond
  br label %do.body31, !dbg !7232

do.body31:                                        ; preds = %do.end
  %30 = load i32, ptr %__flags, align 4, !dbg !7235
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 138, i32 %30, i64 12) #16, !dbg !7235, !srcloc !7237
  br label %do.cond32, !dbg !7235

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !7235

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !7232

do.body34:                                        ; preds = %do.end33
  br label %do.cond35, !dbg !7238

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !7238

do.end36:                                         ; preds = %do.cond35
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !7231
  br label %do.cond37, !dbg !7232

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !7232

do.end38:                                         ; preds = %do.cond37
  br label %if.end39, !dbg !7232

if.end39:                                         ; preds = %do.end38, %while.body19
  %31 = load i32, ptr %__ret_warn_on, align 4, !dbg !7230
  %tobool40 = icmp ne i32 %31, 0, !dbg !7230
  %lnot41 = xor i1 %tobool40, true, !dbg !7230
  %lnot43 = xor i1 %lnot41, true, !dbg !7230
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !7230
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !7230
  %expval46 = call i64 @llvm.expect.i64(i64 %conv45, i64 0), !dbg !7230
  store i64 %expval46, ptr %tmp, align 8, !dbg !7231
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !7240
  %32 = load i64, ptr %tmp, align 8, !dbg !7230
  %33 = load ptr, ptr %nrstatc, align 8, !dbg !7241
  %updated_next47 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %33, i32 0, i32 6, !dbg !7242
  store ptr %updated_next47, ptr %nextp, align 8, !dbg !7243
  call void @llvm.lifetime.end.p0(i64 8, ptr %nrstatc) #16, !dbg !7244
  br label %while.cond17, !dbg !7218, !llvm.loop !7245

while.end48:                                      ; preds = %while.cond17
  %34 = load ptr, ptr %rstatc, align 8, !dbg !7246
  %updated_next49 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %34, i32 0, i32 6, !dbg !7247
  %35 = load ptr, ptr %updated_next49, align 8, !dbg !7247
  %36 = load ptr, ptr %nextp, align 8, !dbg !7248
  store ptr %35, ptr %36, align 8, !dbg !7249
  call void @llvm.lifetime.end.p0(i64 8, ptr %nextp) #16, !dbg !7250
  call void @llvm.lifetime.end.p0(i64 8, ptr %prstatc) #16, !dbg !7250
  br label %if.end50, !dbg !7251

if.end50:                                         ; preds = %while.end48, %while.end
  %37 = load ptr, ptr %rstatc, align 8, !dbg !7252
  %updated_next51 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %37, i32 0, i32 6, !dbg !7253
  store ptr null, ptr %updated_next51, align 8, !dbg !7254
  %38 = load ptr, ptr %pos.addr, align 8, !dbg !7255
  store ptr %38, ptr %retval, align 8, !dbg !7256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7256

cleanup:                                          ; preds = %if.end50, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !7257
  call void @llvm.lifetime.end.p0(i64 8, ptr %rstatc) #16, !dbg !7257
  %39 = load ptr, ptr %retval, align 8, !dbg !7257
  ret ptr %39, !dbg !7257
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cgroup_base_stat_flush(ptr noundef %cgrp, i32 noundef %cpu) #4 align 16 !dbg !7258 {
entry:
  %cgrp.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %rstatc = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %prstatc = alloca ptr, align 8
  %delta = alloca %struct.cgroup_base_stat, align 8
  %seq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cgrp, ptr %cgrp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgrp.addr, metadata !7260, metadata !DIExpression()), !dbg !7267
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7261, metadata !DIExpression()), !dbg !7268
  call void @llvm.lifetime.start.p0(i64 8, ptr %rstatc) #16, !dbg !7269
  call void @llvm.dbg.declare(metadata ptr %rstatc, metadata !7262, metadata !DIExpression()), !dbg !7270
  %0 = load ptr, ptr %cgrp.addr, align 8, !dbg !7271
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !7272
  %call = call ptr @cgroup_rstat_cpu(ptr noundef %0, i32 noundef %1) #17, !dbg !7273
  store ptr %call, ptr %rstatc, align 8, !dbg !7270
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !7274
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !7263, metadata !DIExpression()), !dbg !7275
  %2 = load ptr, ptr %cgrp.addr, align 8, !dbg !7276
  %call1 = call ptr @cgroup_parent(ptr noundef %2) #17, !dbg !7277
  store ptr %call1, ptr %parent, align 8, !dbg !7275
  call void @llvm.lifetime.start.p0(i64 8, ptr %prstatc) #16, !dbg !7278
  call void @llvm.dbg.declare(metadata ptr %prstatc, metadata !7264, metadata !DIExpression()), !dbg !7279
  call void @llvm.lifetime.start.p0(i64 24, ptr %delta) #16, !dbg !7280
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !7265, metadata !DIExpression()), !dbg !7281
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #16, !dbg !7282
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !7266, metadata !DIExpression()), !dbg !7283
  %3 = load ptr, ptr %parent, align 8, !dbg !7284
  %tobool = icmp ne ptr %3, null, !dbg !7284
  br i1 %tobool, label %if.end, label %if.then, !dbg !7286

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7287

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !7288

do.body:                                          ; preds = %do.cond, %if.end
  %4 = load ptr, ptr %rstatc, align 8, !dbg !7289
  %bsync = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %4, i32 0, i32 0, !dbg !7291
  %call2 = call i32 @__u64_stats_fetch_begin(ptr noundef %bsync) #17, !dbg !7292
  store i32 %call2, ptr %seq, align 4, !dbg !7293
  %5 = load ptr, ptr %rstatc, align 8, !dbg !7294
  %bstat = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %5, i32 0, i32 1, !dbg !7295
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %delta, ptr align 8 %bstat, i64 24, i1 false), !dbg !7295
  br label %do.cond, !dbg !7296

do.cond:                                          ; preds = %do.body
  %6 = load ptr, ptr %rstatc, align 8, !dbg !7297
  %bsync3 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %6, i32 0, i32 0, !dbg !7298
  %7 = load i32, ptr %seq, align 4, !dbg !7299
  %call4 = call zeroext i1 @__u64_stats_fetch_retry(ptr noundef %bsync3, i32 noundef %7) #17, !dbg !7300
  br i1 %call4, label %do.body, label %do.end, !dbg !7296, !llvm.loop !7301

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %rstatc, align 8, !dbg !7303
  %last_bstat = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %8, i32 0, i32 2, !dbg !7304
  call void @cgroup_base_stat_sub(ptr noundef %delta, ptr noundef %last_bstat) #17, !dbg !7305
  %9 = load ptr, ptr %cgrp.addr, align 8, !dbg !7306
  %bstat5 = getelementptr inbounds %struct.cgroup, ptr %9, i32 0, i32 29, !dbg !7307
  call void @cgroup_base_stat_add(ptr noundef %bstat5, ptr noundef %delta) #17, !dbg !7308
  %10 = load ptr, ptr %rstatc, align 8, !dbg !7309
  %last_bstat6 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %10, i32 0, i32 2, !dbg !7310
  call void @cgroup_base_stat_add(ptr noundef %last_bstat6, ptr noundef %delta) #17, !dbg !7311
  %11 = load ptr, ptr %rstatc, align 8, !dbg !7312
  %subtree_bstat = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %11, i32 0, i32 3, !dbg !7313
  call void @cgroup_base_stat_add(ptr noundef %subtree_bstat, ptr noundef %delta) #17, !dbg !7314
  %12 = load ptr, ptr %parent, align 8, !dbg !7315
  %call7 = call ptr @cgroup_parent(ptr noundef %12) #17, !dbg !7317
  %tobool8 = icmp ne ptr %call7, null, !dbg !7317
  br i1 %tobool8, label %if.then9, label %if.end18, !dbg !7318

if.then9:                                         ; preds = %do.end
  %13 = load ptr, ptr %cgrp.addr, align 8, !dbg !7319
  %bstat10 = getelementptr inbounds %struct.cgroup, ptr %13, i32 0, i32 29, !dbg !7321
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %delta, ptr align 8 %bstat10, i64 24, i1 false), !dbg !7321
  %14 = load ptr, ptr %cgrp.addr, align 8, !dbg !7322
  %last_bstat11 = getelementptr inbounds %struct.cgroup, ptr %14, i32 0, i32 28, !dbg !7323
  call void @cgroup_base_stat_sub(ptr noundef %delta, ptr noundef %last_bstat11) #17, !dbg !7324
  %15 = load ptr, ptr %parent, align 8, !dbg !7325
  %bstat12 = getelementptr inbounds %struct.cgroup, ptr %15, i32 0, i32 29, !dbg !7326
  call void @cgroup_base_stat_add(ptr noundef %bstat12, ptr noundef %delta) #17, !dbg !7327
  %16 = load ptr, ptr %cgrp.addr, align 8, !dbg !7328
  %last_bstat13 = getelementptr inbounds %struct.cgroup, ptr %16, i32 0, i32 28, !dbg !7329
  call void @cgroup_base_stat_add(ptr noundef %last_bstat13, ptr noundef %delta) #17, !dbg !7330
  %17 = load ptr, ptr %rstatc, align 8, !dbg !7331
  %subtree_bstat14 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %17, i32 0, i32 3, !dbg !7332
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %delta, ptr align 8 %subtree_bstat14, i64 24, i1 false), !dbg !7332
  %18 = load ptr, ptr %parent, align 8, !dbg !7333
  %19 = load i32, ptr %cpu.addr, align 4, !dbg !7334
  %call15 = call ptr @cgroup_rstat_cpu(ptr noundef %18, i32 noundef %19) #17, !dbg !7335
  store ptr %call15, ptr %prstatc, align 8, !dbg !7336
  %20 = load ptr, ptr %rstatc, align 8, !dbg !7337
  %last_subtree_bstat = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %20, i32 0, i32 4, !dbg !7338
  call void @cgroup_base_stat_sub(ptr noundef %delta, ptr noundef %last_subtree_bstat) #17, !dbg !7339
  %21 = load ptr, ptr %prstatc, align 8, !dbg !7340
  %subtree_bstat16 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %21, i32 0, i32 3, !dbg !7341
  call void @cgroup_base_stat_add(ptr noundef %subtree_bstat16, ptr noundef %delta) #17, !dbg !7342
  %22 = load ptr, ptr %rstatc, align 8, !dbg !7343
  %last_subtree_bstat17 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %22, i32 0, i32 4, !dbg !7344
  call void @cgroup_base_stat_add(ptr noundef %last_subtree_bstat17, ptr noundef %delta) #17, !dbg !7345
  br label %if.end18, !dbg !7346

if.end18:                                         ; preds = %if.then9, %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7347
  br label %cleanup, !dbg !7347

cleanup:                                          ; preds = %if.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #16, !dbg !7347
  call void @llvm.lifetime.end.p0(i64 24, ptr %delta) #16, !dbg !7347
  call void @llvm.lifetime.end.p0(i64 8, ptr %prstatc) #16, !dbg !7347
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !7347
  call void @llvm.lifetime.end.p0(i64 8, ptr %rstatc) #16, !dbg !7347
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7347

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #6 align 16 !dbg !7348 {
entry:
  call void @__rcu_read_lock() #17, !dbg !7350
  br label %do.body, !dbg !7351

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7352

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !7354

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !7355

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !7357
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #3 align 16 !dbg !7358 {
entry:
  br label %do.body, !dbg !7359

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7360

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #17, !dbg !7362
  br label %do.body1, !dbg !7363

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !7364

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !7366
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @need_resched() #6 align 16 !dbg !7367 {
entry:
  %call = call zeroext i1 @tif_need_resched() #17, !dbg !7368
  %lnot = xor i1 %call, true, !dbg !7368
  %lnot1 = xor i1 %lnot, true, !dbg !7368
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7368
  %conv = sext i32 %lnot.ext to i64, !dbg !7368
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7368
  %tobool = icmp ne i64 %expval, 0, !dbg !7368
  ret i1 %tobool, !dbg !7369
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @spin_needbreak(ptr noundef %lock) #3 align 16 !dbg !7370 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7374, metadata !DIExpression()), !dbg !7375
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7376
  %call = call i32 @spin_is_contended(ptr noundef %0) #17, !dbg !7377
  ret i32 %call, !dbg !7378
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #3 align 16 !dbg !7379 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7383, metadata !DIExpression()), !dbg !7386
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !7384, metadata !DIExpression()), !dbg !7387
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !7385, metadata !DIExpression()), !dbg !7388
  ret void, !dbg !7389
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #6 align 16 !dbg !5432 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !7390
  %0 = load ptr, ptr %tmp, align 8, !dbg !7390
  %call = call i32 %0() #17, !dbg !7392
  ret i32 %call, !dbg !7393
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #6 align 16 !dbg !7394 {
entry:
  call void @rep_nop() #17, !dbg !7396
  ret void, !dbg !7397
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__u64_stats_fetch_begin(ptr noundef %syncp) #3 align 16 !dbg !7398 {
entry:
  %syncp.addr = alloca ptr, align 8
  store ptr %syncp, ptr %syncp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %syncp.addr, metadata !7404, metadata !DIExpression()), !dbg !7405
  ret i32 0, !dbg !7406
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__u64_stats_fetch_retry(ptr noundef %syncp, i32 noundef %start) #3 align 16 !dbg !7407 {
entry:
  %syncp.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  store ptr %syncp, ptr %syncp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %syncp.addr, metadata !7411, metadata !DIExpression()), !dbg !7413
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !7412, metadata !DIExpression()), !dbg !7414
  ret i1 false, !dbg !7415
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cgroup_base_stat_sub(ptr noundef %dst_bstat, ptr noundef %src_bstat) #4 align 16 !dbg !7416 {
entry:
  %dst_bstat.addr = alloca ptr, align 8
  %src_bstat.addr = alloca ptr, align 8
  store ptr %dst_bstat, ptr %dst_bstat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_bstat.addr, metadata !7420, metadata !DIExpression()), !dbg !7422
  store ptr %src_bstat, ptr %src_bstat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src_bstat.addr, metadata !7421, metadata !DIExpression()), !dbg !7423
  %0 = load ptr, ptr %src_bstat.addr, align 8, !dbg !7424
  %cputime = getelementptr inbounds %struct.cgroup_base_stat, ptr %0, i32 0, i32 0, !dbg !7425
  %utime = getelementptr inbounds %struct.task_cputime, ptr %cputime, i32 0, i32 1, !dbg !7426
  %1 = load i64, ptr %utime, align 8, !dbg !7426
  %2 = load ptr, ptr %dst_bstat.addr, align 8, !dbg !7427
  %cputime1 = getelementptr inbounds %struct.cgroup_base_stat, ptr %2, i32 0, i32 0, !dbg !7428
  %utime2 = getelementptr inbounds %struct.task_cputime, ptr %cputime1, i32 0, i32 1, !dbg !7429
  %3 = load i64, ptr %utime2, align 8, !dbg !7430
  %sub = sub i64 %3, %1, !dbg !7430
  store i64 %sub, ptr %utime2, align 8, !dbg !7430
  %4 = load ptr, ptr %src_bstat.addr, align 8, !dbg !7431
  %cputime3 = getelementptr inbounds %struct.cgroup_base_stat, ptr %4, i32 0, i32 0, !dbg !7432
  %stime = getelementptr inbounds %struct.task_cputime, ptr %cputime3, i32 0, i32 0, !dbg !7433
  %5 = load i64, ptr %stime, align 8, !dbg !7433
  %6 = load ptr, ptr %dst_bstat.addr, align 8, !dbg !7434
  %cputime4 = getelementptr inbounds %struct.cgroup_base_stat, ptr %6, i32 0, i32 0, !dbg !7435
  %stime5 = getelementptr inbounds %struct.task_cputime, ptr %cputime4, i32 0, i32 0, !dbg !7436
  %7 = load i64, ptr %stime5, align 8, !dbg !7437
  %sub6 = sub i64 %7, %5, !dbg !7437
  store i64 %sub6, ptr %stime5, align 8, !dbg !7437
  %8 = load ptr, ptr %src_bstat.addr, align 8, !dbg !7438
  %cputime7 = getelementptr inbounds %struct.cgroup_base_stat, ptr %8, i32 0, i32 0, !dbg !7439
  %sum_exec_runtime = getelementptr inbounds %struct.task_cputime, ptr %cputime7, i32 0, i32 2, !dbg !7440
  %9 = load i64, ptr %sum_exec_runtime, align 8, !dbg !7440
  %10 = load ptr, ptr %dst_bstat.addr, align 8, !dbg !7441
  %cputime8 = getelementptr inbounds %struct.cgroup_base_stat, ptr %10, i32 0, i32 0, !dbg !7442
  %sum_exec_runtime9 = getelementptr inbounds %struct.task_cputime, ptr %cputime8, i32 0, i32 2, !dbg !7443
  %11 = load i64, ptr %sum_exec_runtime9, align 8, !dbg !7444
  %sub10 = sub i64 %11, %9, !dbg !7444
  store i64 %sub10, ptr %sum_exec_runtime9, align 8, !dbg !7444
  ret void, !dbg !7445
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cgroup_base_stat_add(ptr noundef %dst_bstat, ptr noundef %src_bstat) #4 align 16 !dbg !7446 {
entry:
  %dst_bstat.addr = alloca ptr, align 8
  %src_bstat.addr = alloca ptr, align 8
  store ptr %dst_bstat, ptr %dst_bstat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_bstat.addr, metadata !7448, metadata !DIExpression()), !dbg !7450
  store ptr %src_bstat, ptr %src_bstat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src_bstat.addr, metadata !7449, metadata !DIExpression()), !dbg !7451
  %0 = load ptr, ptr %src_bstat.addr, align 8, !dbg !7452
  %cputime = getelementptr inbounds %struct.cgroup_base_stat, ptr %0, i32 0, i32 0, !dbg !7453
  %utime = getelementptr inbounds %struct.task_cputime, ptr %cputime, i32 0, i32 1, !dbg !7454
  %1 = load i64, ptr %utime, align 8, !dbg !7454
  %2 = load ptr, ptr %dst_bstat.addr, align 8, !dbg !7455
  %cputime1 = getelementptr inbounds %struct.cgroup_base_stat, ptr %2, i32 0, i32 0, !dbg !7456
  %utime2 = getelementptr inbounds %struct.task_cputime, ptr %cputime1, i32 0, i32 1, !dbg !7457
  %3 = load i64, ptr %utime2, align 8, !dbg !7458
  %add = add i64 %3, %1, !dbg !7458
  store i64 %add, ptr %utime2, align 8, !dbg !7458
  %4 = load ptr, ptr %src_bstat.addr, align 8, !dbg !7459
  %cputime3 = getelementptr inbounds %struct.cgroup_base_stat, ptr %4, i32 0, i32 0, !dbg !7460
  %stime = getelementptr inbounds %struct.task_cputime, ptr %cputime3, i32 0, i32 0, !dbg !7461
  %5 = load i64, ptr %stime, align 8, !dbg !7461
  %6 = load ptr, ptr %dst_bstat.addr, align 8, !dbg !7462
  %cputime4 = getelementptr inbounds %struct.cgroup_base_stat, ptr %6, i32 0, i32 0, !dbg !7463
  %stime5 = getelementptr inbounds %struct.task_cputime, ptr %cputime4, i32 0, i32 0, !dbg !7464
  %7 = load i64, ptr %stime5, align 8, !dbg !7465
  %add6 = add i64 %7, %5, !dbg !7465
  store i64 %add6, ptr %stime5, align 8, !dbg !7465
  %8 = load ptr, ptr %src_bstat.addr, align 8, !dbg !7466
  %cputime7 = getelementptr inbounds %struct.cgroup_base_stat, ptr %8, i32 0, i32 0, !dbg !7467
  %sum_exec_runtime = getelementptr inbounds %struct.task_cputime, ptr %cputime7, i32 0, i32 2, !dbg !7468
  %9 = load i64, ptr %sum_exec_runtime, align 8, !dbg !7468
  %10 = load ptr, ptr %dst_bstat.addr, align 8, !dbg !7469
  %cputime8 = getelementptr inbounds %struct.cgroup_base_stat, ptr %10, i32 0, i32 0, !dbg !7470
  %sum_exec_runtime9 = getelementptr inbounds %struct.task_cputime, ptr %cputime8, i32 0, i32 2, !dbg !7471
  %11 = load i64, ptr %sum_exec_runtime9, align 8, !dbg !7472
  %add10 = add i64 %11, %9, !dbg !7472
  store i64 %add10, ptr %sum_exec_runtime9, align 8, !dbg !7472
  ret void, !dbg !7473
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7474 dso_local void @__rcu_read_lock() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7475 dso_local void @__rcu_read_unlock() #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tif_need_resched() #6 align 16 !dbg !7476 {
entry:
  %call = call ptr @get_current() #17, !dbg !7478
  %flags = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 0, !dbg !7479
  %call1 = call zeroext i1 @arch_test_bit(i64 noundef 3, ptr noundef %flags) #17, !dbg !7480
  ret i1 %call1, !dbg !7481
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7482 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7490, metadata !DIExpression()), !dbg !7492
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7491, metadata !DIExpression()), !dbg !7493
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7494
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7495
  br i1 %1, label %cond.true, label %cond.false, !dbg !7495

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7496
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7497
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7498
  %conv = zext i1 %call to i32, !dbg !7498
  br label %cond.end, !dbg !7495

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7499
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7500
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !7501
  %conv2 = zext i1 %call1 to i32, !dbg !7501
  br label %cond.end, !dbg !7495

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7495
  %tobool = icmp ne i32 %cond, 0, !dbg !7495
  ret i1 %tobool, !dbg !7502
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !7503 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #16, !dbg !7514
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !7508, metadata !DIExpression()), !dbg !7514
  br label %do.body, !dbg !7514

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !7515
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7510, metadata !DIExpression()), !dbg !7515
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7515
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7515
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !7514
  br label %do.cond, !dbg !7515

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7515

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #16, !dbg !7516
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !7512, metadata !DIExpression()), !dbg !7516
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #21, !dbg !7516, !srcloc !7517
  store i64 %1, ptr %pfo_val__, align 8, !dbg !7516
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !7516
  %3 = inttoptr i64 %2 to ptr, !dbg !7516
  store ptr %3, ptr %tmp, align 8, !dbg !7516
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #16, !dbg !7514
  %4 = load ptr, ptr %tmp, align 8, !dbg !7516
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !7514
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !7514
  store ptr %5, ptr %tmp1, align 8, !dbg !7514
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #16, !dbg !7518
  %6 = load ptr, ptr %tmp1, align 8, !dbg !7514
  ret ptr %6, !dbg !7519
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7520 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7524, metadata !DIExpression()), !dbg !7526
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7525, metadata !DIExpression()), !dbg !7527
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7528
  %and = and i64 %0, 63, !dbg !7529
  %shl = shl i64 1, %and, !dbg !7530
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7531
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7532
  %shr = ashr i64 %2, 6, !dbg !7533
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7531
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7531
  %and1 = and i64 %shl, %3, !dbg !7534
  %cmp = icmp ne i64 %and1, 0, !dbg !7535
  ret i1 %cmp, !dbg !7536
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7537 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7539, metadata !DIExpression()), !dbg !7542
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7540, metadata !DIExpression()), !dbg !7543
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !7544
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7541, metadata !DIExpression()), !dbg !7545
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7546
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7547
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !7548, !srcloc !7549
  %3 = icmp ult i8 %2, 2, !dbg !7548
  call void @llvm.assume(i1 %3), !dbg !7548
  store i8 %2, ptr %oldbit, align 1, !dbg !7548
  %4 = load i8, ptr %oldbit, align 1, !dbg !7550, !range !7551, !noundef !473
  %tobool = trunc i8 %4 to i1, !dbg !7550
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !7552
  ret i1 %tobool, !dbg !7553
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @spin_is_contended(ptr noundef %lock) #6 align 16 !dbg !7554 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7556, metadata !DIExpression()), !dbg !7557
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7558
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7558
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %1, i32 0, i32 0, !dbg !7558
  %call = call i32 @queued_spin_is_contended(ptr noundef %raw_lock) #17, !dbg !7558
  ret i32 %call, !dbg !7559
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queued_spin_is_contended(ptr noundef %lock) #6 align 16 !dbg !7560 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7566, metadata !DIExpression()), !dbg !7567
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7568
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !7569
  %call = call i32 @atomic_read(ptr noundef %1) #17, !dbg !7570
  %and = and i32 %call, -256, !dbg !7571
  ret i32 %and, !dbg !7572
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #6 align 16 !dbg !7573 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7580, metadata !DIExpression()), !dbg !7581
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7582
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #17, !dbg !7583
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7584
  %call = call i32 @raw_atomic_read(ptr noundef %1) #17, !dbg !7585
  ret i32 %call, !dbg !7586
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !7587 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7595, metadata !DIExpression()), !dbg !7597
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7596, metadata !DIExpression()), !dbg !7598
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7599
  %1 = load i64, ptr %size.addr, align 8, !dbg !7600
  %conv = trunc i64 %1 to i32, !dbg !7600
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !7601
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7602
  %3 = load i64, ptr %size.addr, align 8, !dbg !7602
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !7602
  ret void, !dbg !7603
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #6 align 16 !dbg !7604 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7607, metadata !DIExpression()), !dbg !7608
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7609
  %call = call i32 @arch_atomic_read(ptr noundef %0) #17, !dbg !7610
  ret i32 %call, !dbg !7611
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7612 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7617, metadata !DIExpression()), !dbg !7619
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7618, metadata !DIExpression()), !dbg !7620
  ret i1 true, !dbg !7621
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !7622 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7626, metadata !DIExpression()), !dbg !7629
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7627, metadata !DIExpression()), !dbg !7630
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7628, metadata !DIExpression()), !dbg !7631
  ret void, !dbg !7632
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #6 align 16 !dbg !7633 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7636, metadata !DIExpression()), !dbg !7637
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7638
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7638
  %1 = load volatile i32, ptr %counter, align 4, !dbg !7638
  ret i32 %1, !dbg !7639
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #6 align 16 !dbg !7640 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !7641, !srcloc !7642
  ret void, !dbg !7643
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7644 dso_local void @_raw_spin_unlock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !7645 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !7649, metadata !DIExpression()), !dbg !7650
  %0 = load i64, ptr %word.addr, align 8, !dbg !7651
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #19, !dbg !7652, !srcloc !7653
  store i64 %1, ptr %word.addr, align 8, !dbg !7652
  %2 = load i64, ptr %word.addr, align 8, !dbg !7654
  ret i64 %2, !dbg !7655
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7656 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #6 align 16 !dbg !7657 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7660, metadata !DIExpression()), !dbg !7667
  br label %do.body, !dbg !7668

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #16, !dbg !7669
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !7661, metadata !DIExpression()), !dbg !7669
  %0 = load i32, ptr %val.addr, align 4, !dbg !7669
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !7669
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !7669

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !7669
  %cmp = icmp eq i32 %2, 1, !dbg !7669
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !7669

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !7669
  %cmp1 = icmp eq i32 %3, -1, !dbg !7669
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !7669

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !7669
  br label %cond.end, !dbg !7669

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !7669

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !7669
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !7669
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !7670
  %cmp2 = icmp eq i32 %5, 1, !dbg !7670
  br i1 %cmp2, label %if.then, label %if.else, !dbg !7669

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !7671, !srcloc !7673
  br label %if.end8, !dbg !7670

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !7674
  %cmp3 = icmp eq i32 %6, -1, !dbg !7674
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !7670

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !7675, !srcloc !7677
  br label %if.end, !dbg !7674

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !7674

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #16, !dbg !7678
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !7663, metadata !DIExpression()), !dbg !7678
  %7 = load i32, ptr %val.addr, align 4, !dbg !7678
  %conv = sext i32 %7 to i64, !dbg !7678
  %and = and i64 %conv, 4294967295, !dbg !7678
  %conv7 = trunc i64 %and to i32, !dbg !7678
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !7678
  %8 = load i32, ptr %pto_val__, align 4, !dbg !7678
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !7678, !srcloc !7679
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #16, !dbg !7674
  br label %do.cond, !dbg !7678

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !7678

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #16, !dbg !7668
  br label %do.end10, !dbg !7669

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !7680
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @u64_stats_update_begin_irqsave(ptr noundef %syncp) #3 align 16 !dbg !7681 {
entry:
  %syncp.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  store ptr %syncp, ptr %syncp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %syncp.addr, metadata !7685, metadata !DIExpression()), !dbg !7687
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !7688
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !7686, metadata !DIExpression()), !dbg !7689
  %call = call i64 @__u64_stats_irqsave() #17, !dbg !7690
  store i64 %call, ptr %flags, align 8, !dbg !7689
  %0 = load ptr, ptr %syncp.addr, align 8, !dbg !7691
  call void @__u64_stats_update_begin(ptr noundef %0) #17, !dbg !7692
  %1 = load i64, ptr %flags, align 8, !dbg !7693
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !7694
  ret i64 %1, !dbg !7695
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__u64_stats_irqsave() #3 align 16 !dbg !7696 {
entry:
  ret i64 0, !dbg !7699
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__u64_stats_update_begin(ptr noundef %syncp) #3 align 16 !dbg !7700 {
entry:
  %syncp.addr = alloca ptr, align 8
  store ptr %syncp, ptr %syncp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %syncp.addr, metadata !7702, metadata !DIExpression()), !dbg !7703
  ret void, !dbg !7704
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @u64_stats_update_end_irqrestore(ptr noundef %syncp, i64 noundef %flags) #3 align 16 !dbg !7705 {
entry:
  %syncp.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %syncp, ptr %syncp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %syncp.addr, metadata !7709, metadata !DIExpression()), !dbg !7711
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7710, metadata !DIExpression()), !dbg !7712
  %0 = load ptr, ptr %syncp.addr, align 8, !dbg !7713
  call void @__u64_stats_update_end(ptr noundef %0) #17, !dbg !7714
  %1 = load i64, ptr %flags.addr, align 8, !dbg !7715
  call void @__u64_stats_irqrestore(i64 noundef %1) #17, !dbg !7716
  ret void, !dbg !7717
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #6 align 16 !dbg !7718 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !7723, metadata !DIExpression()), !dbg !7724
  ret void, !dbg !7725
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #6 align 16 !dbg !7726 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #16, !dbg !7730
  call void @llvm.dbg.declare(metadata ptr %c, metadata !7728, metadata !DIExpression()), !dbg !7730
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !7730, !srcloc !7731
  %1 = icmp ult i8 %0, 2, !dbg !7730
  call void @llvm.assume(i1 %1), !dbg !7730
  store i8 %0, ptr %c, align 1, !dbg !7730
  %2 = load i8, ptr %c, align 1, !dbg !7730, !range !7551, !noundef !473
  %tobool = trunc i8 %2 to i1, !dbg !7730
  %frombool = zext i1 %tobool to i8, !dbg !7730
  store i8 %frombool, ptr %tmp, align 1, !dbg !7730
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #16, !dbg !7732
  %3 = load i8, ptr %tmp, align 1, !dbg !7730, !range !7551, !noundef !473
  %tobool1 = trunc i8 %3 to i1, !dbg !7730
  ret i1 %tobool1, !dbg !7733
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__u64_stats_update_end(ptr noundef %syncp) #3 align 16 !dbg !7734 {
entry:
  %syncp.addr = alloca ptr, align 8
  store ptr %syncp, ptr %syncp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %syncp.addr, metadata !7736, metadata !DIExpression()), !dbg !7737
  ret void, !dbg !7738
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__u64_stats_irqrestore(i64 noundef %flags) #3 align 16 !dbg !7739 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7743, metadata !DIExpression()), !dbg !7744
  ret void, !dbg !7745
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7746 dso_local ptr @of_css(ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcpustat_cpu_fetch(ptr noundef %dst, i32 noundef %cpu) #3 align 16 !dbg !7749 {
entry:
  %dst.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !7753, metadata !DIExpression()), !dbg !7760
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7754, metadata !DIExpression()), !dbg !7761
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !7762
  br label %do.body, !dbg !7763

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !7764
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7755, metadata !DIExpression()), !dbg !7764
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7764
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !7764
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !7763
  br label %do.end, !dbg !7764

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !7765
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !7758, metadata !DIExpression()), !dbg !7765
  store i64 ptrtoint (ptr @kernel_cpustat to i64), ptr %__ptr, align 8, !dbg !7765
  %2 = load i64, ptr %__ptr, align 8, !dbg !7765
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !7765
  %idxprom = sext i32 %3 to i64, !dbg !7765
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !7765
  %4 = load i64, ptr %arrayidx, align 8, !dbg !7765
  %add = add i64 %2, %4, !dbg !7765
  %5 = inttoptr i64 %add to ptr, !dbg !7765
  store ptr %5, ptr %tmp1, align 8, !dbg !7765
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !7763
  %6 = load ptr, ptr %tmp1, align 8, !dbg !7765
  store ptr %6, ptr %tmp, align 8, !dbg !7764
  %7 = load ptr, ptr %tmp, align 8, !dbg !7763
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %7, i64 80, i1 false), !dbg !7766
  ret void, !dbg !7767
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @register_btf_kfunc_id_set(i32 noundef %prog_type, ptr noundef %s) #3 align 16 !dbg !7768 {
entry:
  %prog_type.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  store i32 %prog_type, ptr %prog_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prog_type.addr, metadata !7773, metadata !DIExpression()), !dbg !7775
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7774, metadata !DIExpression()), !dbg !7776
  ret i32 0, !dbg !7777
}

attributes #0 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nocallback nounwind }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { nounwind memory(read) }
attributes #20 = { cold noredzone }
attributes #21 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!6314}
!llvm.module.flags = !{!6315, !6316, !6317, !6318, !6319, !6320, !6321, !6322}
!llvm.ident = !{!6323}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cgroup_rstat_cpu_lock", scope: !2, file: !3, line: 11, type: !465, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/cgroup/.rstat.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/cgroup/rstat\22 -D KBUILD_BASENAME=\22rstat\22 -D KBUILD_MODNAME=\22rstat\22 -D __KBUILD_MODNAME=kmod_rstat -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/cgroup/rstat.ll kernel/cgroup/rstat.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !463, globals: !5411, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/cgroup/rstat.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "070288b7a04dbf034550ec6dc3c2932f")
!4 = !{!5, !14, !110, !119, !126, !134, !150, !155, !162, !168, !173, !182, !187, !193, !199, !206, !211, !219, !226, !235, !240, !245, !251, !263, !269, !276, !281, !295, !331, !383, !414, !450}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !16, file: !15, line: 147, baseType: !7, size: 32, elements: !107)
!15 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !15, line: 135, size: 512, elements: !17)
!17 = !{!18, !22, !24, !26, !30, !31, !47, !105, !106}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !16, file: !15, line: 136, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !16, file: !15, line: 137, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !16, file: !15, line: 138, baseType: !25, size: 32, offset: 128)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !16, file: !15, line: 139, baseType: !27, size: 16, offset: 160)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !28, line: 24, baseType: !29)
!28 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !16, file: !15, line: 150, baseType: !14, size: 32, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !16, file: !15, line: 151, baseType: !32, size: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !15, line: 64, baseType: !34)
!34 = !DISubroutineType(types: !35)
!35 = !{!25, !36, !25, !23, !37, !43}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 61, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !40, line: 72, baseType: !41)
!40 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !40, line: 16, baseType: !42)
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !28, line: 52, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !40, line: 88, baseType: !46)
!46 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !16, file: !15, line: 152, baseType: !48, size: 64, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !15, line: 117, size: 256, elements: !50)
!50 = !{!51, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !49, file: !15, line: 118, baseType: !52, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !28, line: 174, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 172, size: 32, elements: !54)
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !53, file: !28, line: 173, baseType: !25, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !49, file: !15, line: 119, baseType: !57, size: 192, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !58, line: 41, baseType: !59)
!58 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !58, line: 37, size: 192, elements: !60)
!60 = !{!61, !99}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !59, file: !58, line: 38, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !63, line: 29, baseType: !64)
!63 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !63, line: 17, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, scope: !64, file: !63, line: 18, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !64, file: !63, line: 18, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !67, file: !63, line: 19, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !71, line: 14, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !70, file: !71, line: 15, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !75, line: 44, baseType: !76)
!75 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !75, line: 14, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !75, line: 15, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !76, file: !75, line: 15, size: 32, elements: !80)
!80 = !{!81, !82, !92}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !79, file: !75, line: 16, baseType: !52, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !75, line: 24, baseType: !83, size: 16)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !75, line: 24, size: 16, elements: !84)
!84 = !{!85, !91}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !83, file: !75, line: 25, baseType: !86, size: 8)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !87, line: 17, baseType: !88)
!87 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !89, line: 21, baseType: !90)
!89 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!90 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !83, file: !75, line: 26, baseType: !86, size: 8, offset: 8)
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !75, line: 28, baseType: !93, size: 32)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !75, line: 28, size: 32, elements: !94)
!94 = !{!95, !98}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !93, file: !75, line: 29, baseType: !96, size: 16)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !87, line: 19, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !89, line: 24, baseType: !29)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !93, file: !75, line: 30, baseType: !96, size: 16, offset: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !59, file: !58, line: 39, baseType: !100, size: 128, offset: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !28, line: 190, size: 128, elements: !101)
!101 = !{!102, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !28, line: 191, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !100, file: !28, line: 191, baseType: !103, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !16, file: !15, line: 153, baseType: !23, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !16, file: !15, line: 154, baseType: !23, size: 64, offset: 448)
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!109 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_value_type", file: !111, line: 51, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/fs_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58f4e15024eca636c2bdb50c4534d2c5")
!112 = !{!113, !114, !115, !116, !117, !118}
!113 = !DIEnumerator(name: "fs_value_is_undefined", value: 0)
!114 = !DIEnumerator(name: "fs_value_is_flag", value: 1)
!115 = !DIEnumerator(name: "fs_value_is_string", value: 2)
!116 = !DIEnumerator(name: "fs_value_is_blob", value: 3)
!117 = !DIEnumerator(name: "fs_value_is_filename", value: 4)
!118 = !DIEnumerator(name: "fs_value_is_file", value: 5)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !120, line: 312, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!123 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!124 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!125 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !127, line: 68, baseType: !7, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!128 = !{!129, !130, !131, !132, !133}
!129 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!130 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!131 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!132 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!133 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !135, line: 1325, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!137 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!138 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!139 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!140 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!141 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!142 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!143 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!144 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!145 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!146 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!147 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!148 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!149 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !151, line: 32, baseType: !7, size: 32, elements: !152)
!151 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!152 = !{!153, !154}
!153 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!154 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !156, line: 15, baseType: !7, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!157 = !{!158, !159, !160, !161}
!158 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!159 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!160 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!161 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !163, line: 26, baseType: !7, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!164 = !{!165, !166, !167}
!165 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!166 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!167 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_purpose", file: !111, line: 29, baseType: !7, size: 32, elements: !169)
!169 = !{!170, !171, !172}
!170 = !DIEnumerator(name: "FS_CONTEXT_FOR_MOUNT", value: 0)
!171 = !DIEnumerator(name: "FS_CONTEXT_FOR_SUBMOUNT", value: 1)
!172 = !DIEnumerator(name: "FS_CONTEXT_FOR_RECONFIGURE", value: 2)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_phase", file: !111, line: 38, baseType: !7, size: 32, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !181}
!175 = !DIEnumerator(name: "FS_CONTEXT_CREATE_PARAMS", value: 0)
!176 = !DIEnumerator(name: "FS_CONTEXT_CREATING", value: 1)
!177 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_MOUNT", value: 2)
!178 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_RECONF", value: 3)
!179 = !DIEnumerator(name: "FS_CONTEXT_RECONF_PARAMS", value: 4)
!180 = !DIEnumerator(name: "FS_CONTEXT_RECONFIGURING", value: 5)
!181 = !DIEnumerator(name: "FS_CONTEXT_FAILED", value: 6)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !183, line: 2052, baseType: !7, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!184 = !{!185, !186}
!185 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!186 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !188, line: 54, baseType: !7, size: 32, elements: !189)
!188 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!189 = !{!190, !191, !192}
!190 = !DIEnumerator(name: "USRQUOTA", value: 0)
!191 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!192 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !194, line: 45, baseType: !7, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!195 = !{!196, !197, !198}
!196 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!197 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!198 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !200, line: 487, baseType: !7, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!201 = !{!202, !203, !204, !205}
!202 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!203 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!204 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!205 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !207, line: 65, baseType: !7, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!208 = !{!209, !210}
!209 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!210 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !212, line: 620, baseType: !7, size: 32, elements: !213)
!212 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!213 = !{!214, !215, !216, !217, !218}
!214 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!215 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!216 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!217 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!218 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !212, line: 597, baseType: !25, size: 32, elements: !220)
!220 = !{!221, !222, !223, !224, !225}
!221 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!222 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!223 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!224 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!225 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !200, line: 547, baseType: !7, size: 32, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234}
!228 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!229 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!230 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!231 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!232 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!233 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!234 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !200, line: 564, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239}
!237 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!238 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!239 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !200, line: 577, baseType: !7, size: 32, elements: !241)
!241 = !{!242, !243, !244}
!242 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!243 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!244 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !200, line: 503, baseType: !7, size: 32, elements: !246)
!246 = !{!247, !248, !249, !250}
!247 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!248 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!249 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!250 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !252, line: 44, baseType: !7, size: 32, elements: !253)
!252 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262}
!254 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!255 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!256 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!257 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!258 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!259 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!260 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!261 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!262 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !264, line: 16, baseType: !7, size: 32, elements: !265)
!264 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!265 = !{!266, !267, !268}
!266 = !DIEnumerator(name: "TT_NONE", value: 0)
!267 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!268 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !270, line: 51, baseType: !7, size: 32, elements: !271)
!270 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!271 = !{!272, !273, !274, !275}
!272 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!273 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!274 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!275 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !277, line: 10, baseType: !7, size: 32, elements: !278)
!277 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!278 = !{!279, !280}
!279 = !DIEnumerator(name: "false", value: 0)
!280 = !DIEnumerator(name: "true", value: 1)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpu_usage_stat", file: !282, line: 20, baseType: !7, size: 32, elements: !283)
!282 = !DIFile(filename: "./include/linux/kernel_stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3834cb8375a149cb1dacea31b5d9e6b8")
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!284 = !DIEnumerator(name: "CPUTIME_USER", value: 0)
!285 = !DIEnumerator(name: "CPUTIME_NICE", value: 1)
!286 = !DIEnumerator(name: "CPUTIME_SYSTEM", value: 2)
!287 = !DIEnumerator(name: "CPUTIME_SOFTIRQ", value: 3)
!288 = !DIEnumerator(name: "CPUTIME_IRQ", value: 4)
!289 = !DIEnumerator(name: "CPUTIME_IDLE", value: 5)
!290 = !DIEnumerator(name: "CPUTIME_IOWAIT", value: 6)
!291 = !DIEnumerator(name: "CPUTIME_STEAL", value: 7)
!292 = !DIEnumerator(name: "CPUTIME_GUEST", value: 8)
!293 = !DIEnumerator(name: "CPUTIME_GUEST_NICE", value: 9)
!294 = !DIEnumerator(name: "NR_STATS", value: 10)
!295 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bpf_prog_type", file: !296, line: 974, baseType: !7, size: 32, elements: !297)
!296 = !DIFile(filename: "./include/uapi/linux/bpf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da4d52c087c117c9c4498881ce48947e")
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!298 = !DIEnumerator(name: "BPF_PROG_TYPE_UNSPEC", value: 0)
!299 = !DIEnumerator(name: "BPF_PROG_TYPE_SOCKET_FILTER", value: 1)
!300 = !DIEnumerator(name: "BPF_PROG_TYPE_KPROBE", value: 2)
!301 = !DIEnumerator(name: "BPF_PROG_TYPE_SCHED_CLS", value: 3)
!302 = !DIEnumerator(name: "BPF_PROG_TYPE_SCHED_ACT", value: 4)
!303 = !DIEnumerator(name: "BPF_PROG_TYPE_TRACEPOINT", value: 5)
!304 = !DIEnumerator(name: "BPF_PROG_TYPE_XDP", value: 6)
!305 = !DIEnumerator(name: "BPF_PROG_TYPE_PERF_EVENT", value: 7)
!306 = !DIEnumerator(name: "BPF_PROG_TYPE_CGROUP_SKB", value: 8)
!307 = !DIEnumerator(name: "BPF_PROG_TYPE_CGROUP_SOCK", value: 9)
!308 = !DIEnumerator(name: "BPF_PROG_TYPE_LWT_IN", value: 10)
!309 = !DIEnumerator(name: "BPF_PROG_TYPE_LWT_OUT", value: 11)
!310 = !DIEnumerator(name: "BPF_PROG_TYPE_LWT_XMIT", value: 12)
!311 = !DIEnumerator(name: "BPF_PROG_TYPE_SOCK_OPS", value: 13)
!312 = !DIEnumerator(name: "BPF_PROG_TYPE_SK_SKB", value: 14)
!313 = !DIEnumerator(name: "BPF_PROG_TYPE_CGROUP_DEVICE", value: 15)
!314 = !DIEnumerator(name: "BPF_PROG_TYPE_SK_MSG", value: 16)
!315 = !DIEnumerator(name: "BPF_PROG_TYPE_RAW_TRACEPOINT", value: 17)
!316 = !DIEnumerator(name: "BPF_PROG_TYPE_CGROUP_SOCK_ADDR", value: 18)
!317 = !DIEnumerator(name: "BPF_PROG_TYPE_LWT_SEG6LOCAL", value: 19)
!318 = !DIEnumerator(name: "BPF_PROG_TYPE_LIRC_MODE2", value: 20)
!319 = !DIEnumerator(name: "BPF_PROG_TYPE_SK_REUSEPORT", value: 21)
!320 = !DIEnumerator(name: "BPF_PROG_TYPE_FLOW_DISSECTOR", value: 22)
!321 = !DIEnumerator(name: "BPF_PROG_TYPE_CGROUP_SYSCTL", value: 23)
!322 = !DIEnumerator(name: "BPF_PROG_TYPE_RAW_TRACEPOINT_WRITABLE", value: 24)
!323 = !DIEnumerator(name: "BPF_PROG_TYPE_CGROUP_SOCKOPT", value: 25)
!324 = !DIEnumerator(name: "BPF_PROG_TYPE_TRACING", value: 26)
!325 = !DIEnumerator(name: "BPF_PROG_TYPE_STRUCT_OPS", value: 27)
!326 = !DIEnumerator(name: "BPF_PROG_TYPE_EXT", value: 28)
!327 = !DIEnumerator(name: "BPF_PROG_TYPE_LSM", value: 29)
!328 = !DIEnumerator(name: "BPF_PROG_TYPE_SK_LOOKUP", value: 30)
!329 = !DIEnumerator(name: "BPF_PROG_TYPE_SYSCALL", value: 31)
!330 = !DIEnumerator(name: "BPF_PROG_TYPE_NETFILTER", value: 32)
!331 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bpf_attach_type", file: !296, line: 1010, baseType: !7, size: 32, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382}
!333 = !DIEnumerator(name: "BPF_CGROUP_INET_INGRESS", value: 0)
!334 = !DIEnumerator(name: "BPF_CGROUP_INET_EGRESS", value: 1)
!335 = !DIEnumerator(name: "BPF_CGROUP_INET_SOCK_CREATE", value: 2)
!336 = !DIEnumerator(name: "BPF_CGROUP_SOCK_OPS", value: 3)
!337 = !DIEnumerator(name: "BPF_SK_SKB_STREAM_PARSER", value: 4)
!338 = !DIEnumerator(name: "BPF_SK_SKB_STREAM_VERDICT", value: 5)
!339 = !DIEnumerator(name: "BPF_CGROUP_DEVICE", value: 6)
!340 = !DIEnumerator(name: "BPF_SK_MSG_VERDICT", value: 7)
!341 = !DIEnumerator(name: "BPF_CGROUP_INET4_BIND", value: 8)
!342 = !DIEnumerator(name: "BPF_CGROUP_INET6_BIND", value: 9)
!343 = !DIEnumerator(name: "BPF_CGROUP_INET4_CONNECT", value: 10)
!344 = !DIEnumerator(name: "BPF_CGROUP_INET6_CONNECT", value: 11)
!345 = !DIEnumerator(name: "BPF_CGROUP_INET4_POST_BIND", value: 12)
!346 = !DIEnumerator(name: "BPF_CGROUP_INET6_POST_BIND", value: 13)
!347 = !DIEnumerator(name: "BPF_CGROUP_UDP4_SENDMSG", value: 14)
!348 = !DIEnumerator(name: "BPF_CGROUP_UDP6_SENDMSG", value: 15)
!349 = !DIEnumerator(name: "BPF_LIRC_MODE2", value: 16)
!350 = !DIEnumerator(name: "BPF_FLOW_DISSECTOR", value: 17)
!351 = !DIEnumerator(name: "BPF_CGROUP_SYSCTL", value: 18)
!352 = !DIEnumerator(name: "BPF_CGROUP_UDP4_RECVMSG", value: 19)
!353 = !DIEnumerator(name: "BPF_CGROUP_UDP6_RECVMSG", value: 20)
!354 = !DIEnumerator(name: "BPF_CGROUP_GETSOCKOPT", value: 21)
!355 = !DIEnumerator(name: "BPF_CGROUP_SETSOCKOPT", value: 22)
!356 = !DIEnumerator(name: "BPF_TRACE_RAW_TP", value: 23)
!357 = !DIEnumerator(name: "BPF_TRACE_FENTRY", value: 24)
!358 = !DIEnumerator(name: "BPF_TRACE_FEXIT", value: 25)
!359 = !DIEnumerator(name: "BPF_MODIFY_RETURN", value: 26)
!360 = !DIEnumerator(name: "BPF_LSM_MAC", value: 27)
!361 = !DIEnumerator(name: "BPF_TRACE_ITER", value: 28)
!362 = !DIEnumerator(name: "BPF_CGROUP_INET4_GETPEERNAME", value: 29)
!363 = !DIEnumerator(name: "BPF_CGROUP_INET6_GETPEERNAME", value: 30)
!364 = !DIEnumerator(name: "BPF_CGROUP_INET4_GETSOCKNAME", value: 31)
!365 = !DIEnumerator(name: "BPF_CGROUP_INET6_GETSOCKNAME", value: 32)
!366 = !DIEnumerator(name: "BPF_XDP_DEVMAP", value: 33)
!367 = !DIEnumerator(name: "BPF_CGROUP_INET_SOCK_RELEASE", value: 34)
!368 = !DIEnumerator(name: "BPF_XDP_CPUMAP", value: 35)
!369 = !DIEnumerator(name: "BPF_SK_LOOKUP", value: 36)
!370 = !DIEnumerator(name: "BPF_XDP", value: 37)
!371 = !DIEnumerator(name: "BPF_SK_SKB_VERDICT", value: 38)
!372 = !DIEnumerator(name: "BPF_SK_REUSEPORT_SELECT", value: 39)
!373 = !DIEnumerator(name: "BPF_SK_REUSEPORT_SELECT_OR_MIGRATE", value: 40)
!374 = !DIEnumerator(name: "BPF_PERF_EVENT", value: 41)
!375 = !DIEnumerator(name: "BPF_TRACE_KPROBE_MULTI", value: 42)
!376 = !DIEnumerator(name: "BPF_LSM_CGROUP", value: 43)
!377 = !DIEnumerator(name: "BPF_STRUCT_OPS", value: 44)
!378 = !DIEnumerator(name: "BPF_NETFILTER", value: 45)
!379 = !DIEnumerator(name: "BPF_TCX_INGRESS", value: 46)
!380 = !DIEnumerator(name: "BPF_TCX_EGRESS", value: 47)
!381 = !DIEnumerator(name: "BPF_TRACE_UPROBE_MULTI", value: 48)
!382 = !DIEnumerator(name: "__MAX_BPF_ATTACH_TYPE", value: 49)
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bpf_reg_type", file: !384, line: 856, baseType: !7, size: 32, elements: !385)
!384 = !DIFile(filename: "./include/linux/bpf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7d49009803f9992b3dd5b26f9a5465d8")
!385 = !{!386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413}
!386 = !DIEnumerator(name: "NOT_INIT", value: 0)
!387 = !DIEnumerator(name: "SCALAR_VALUE", value: 1)
!388 = !DIEnumerator(name: "PTR_TO_CTX", value: 2)
!389 = !DIEnumerator(name: "CONST_PTR_TO_MAP", value: 3)
!390 = !DIEnumerator(name: "PTR_TO_MAP_VALUE", value: 4)
!391 = !DIEnumerator(name: "PTR_TO_MAP_KEY", value: 5)
!392 = !DIEnumerator(name: "PTR_TO_STACK", value: 6)
!393 = !DIEnumerator(name: "PTR_TO_PACKET_META", value: 7)
!394 = !DIEnumerator(name: "PTR_TO_PACKET", value: 8)
!395 = !DIEnumerator(name: "PTR_TO_PACKET_END", value: 9)
!396 = !DIEnumerator(name: "PTR_TO_FLOW_KEYS", value: 10)
!397 = !DIEnumerator(name: "PTR_TO_SOCKET", value: 11)
!398 = !DIEnumerator(name: "PTR_TO_SOCK_COMMON", value: 12)
!399 = !DIEnumerator(name: "PTR_TO_TCP_SOCK", value: 13)
!400 = !DIEnumerator(name: "PTR_TO_TP_BUFFER", value: 14)
!401 = !DIEnumerator(name: "PTR_TO_XDP_SOCK", value: 15)
!402 = !DIEnumerator(name: "PTR_TO_BTF_ID", value: 16)
!403 = !DIEnumerator(name: "PTR_TO_MEM", value: 17)
!404 = !DIEnumerator(name: "PTR_TO_BUF", value: 18)
!405 = !DIEnumerator(name: "PTR_TO_FUNC", value: 19)
!406 = !DIEnumerator(name: "CONST_PTR_TO_DYNPTR", value: 20)
!407 = !DIEnumerator(name: "__BPF_REG_TYPE_MAX", value: 21)
!408 = !DIEnumerator(name: "PTR_TO_MAP_VALUE_OR_NULL", value: 260)
!409 = !DIEnumerator(name: "PTR_TO_SOCKET_OR_NULL", value: 267)
!410 = !DIEnumerator(name: "PTR_TO_SOCK_COMMON_OR_NULL", value: 268)
!411 = !DIEnumerator(name: "PTR_TO_TCP_SOCK_OR_NULL", value: 269)
!412 = !DIEnumerator(name: "PTR_TO_BTF_ID_OR_NULL", value: 272)
!413 = !DIEnumerator(name: "__BPF_REG_TYPE_LIMIT", value: 134217727)
!414 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bpf_map_type", file: !296, line: 923, baseType: !7, size: 32, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449}
!416 = !DIEnumerator(name: "BPF_MAP_TYPE_UNSPEC", value: 0)
!417 = !DIEnumerator(name: "BPF_MAP_TYPE_HASH", value: 1)
!418 = !DIEnumerator(name: "BPF_MAP_TYPE_ARRAY", value: 2)
!419 = !DIEnumerator(name: "BPF_MAP_TYPE_PROG_ARRAY", value: 3)
!420 = !DIEnumerator(name: "BPF_MAP_TYPE_PERF_EVENT_ARRAY", value: 4)
!421 = !DIEnumerator(name: "BPF_MAP_TYPE_PERCPU_HASH", value: 5)
!422 = !DIEnumerator(name: "BPF_MAP_TYPE_PERCPU_ARRAY", value: 6)
!423 = !DIEnumerator(name: "BPF_MAP_TYPE_STACK_TRACE", value: 7)
!424 = !DIEnumerator(name: "BPF_MAP_TYPE_CGROUP_ARRAY", value: 8)
!425 = !DIEnumerator(name: "BPF_MAP_TYPE_LRU_HASH", value: 9)
!426 = !DIEnumerator(name: "BPF_MAP_TYPE_LRU_PERCPU_HASH", value: 10)
!427 = !DIEnumerator(name: "BPF_MAP_TYPE_LPM_TRIE", value: 11)
!428 = !DIEnumerator(name: "BPF_MAP_TYPE_ARRAY_OF_MAPS", value: 12)
!429 = !DIEnumerator(name: "BPF_MAP_TYPE_HASH_OF_MAPS", value: 13)
!430 = !DIEnumerator(name: "BPF_MAP_TYPE_DEVMAP", value: 14)
!431 = !DIEnumerator(name: "BPF_MAP_TYPE_SOCKMAP", value: 15)
!432 = !DIEnumerator(name: "BPF_MAP_TYPE_CPUMAP", value: 16)
!433 = !DIEnumerator(name: "BPF_MAP_TYPE_XSKMAP", value: 17)
!434 = !DIEnumerator(name: "BPF_MAP_TYPE_SOCKHASH", value: 18)
!435 = !DIEnumerator(name: "BPF_MAP_TYPE_CGROUP_STORAGE_DEPRECATED", value: 19)
!436 = !DIEnumerator(name: "BPF_MAP_TYPE_CGROUP_STORAGE", value: 19)
!437 = !DIEnumerator(name: "BPF_MAP_TYPE_REUSEPORT_SOCKARRAY", value: 20)
!438 = !DIEnumerator(name: "BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE", value: 21)
!439 = !DIEnumerator(name: "BPF_MAP_TYPE_QUEUE", value: 22)
!440 = !DIEnumerator(name: "BPF_MAP_TYPE_STACK", value: 23)
!441 = !DIEnumerator(name: "BPF_MAP_TYPE_SK_STORAGE", value: 24)
!442 = !DIEnumerator(name: "BPF_MAP_TYPE_DEVMAP_HASH", value: 25)
!443 = !DIEnumerator(name: "BPF_MAP_TYPE_STRUCT_OPS", value: 26)
!444 = !DIEnumerator(name: "BPF_MAP_TYPE_RINGBUF", value: 27)
!445 = !DIEnumerator(name: "BPF_MAP_TYPE_INODE_STORAGE", value: 28)
!446 = !DIEnumerator(name: "BPF_MAP_TYPE_TASK_STORAGE", value: 29)
!447 = !DIEnumerator(name: "BPF_MAP_TYPE_BLOOM_FILTER", value: 30)
!448 = !DIEnumerator(name: "BPF_MAP_TYPE_USER_RINGBUF", value: 31)
!449 = !DIEnumerator(name: "BPF_MAP_TYPE_CGRP_STORAGE", value: 32)
!450 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "btf_field_type", file: !384, line: 182, baseType: !7, size: 32, elements: !451)
!451 = !{!452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462}
!452 = !DIEnumerator(name: "BPF_SPIN_LOCK", value: 1)
!453 = !DIEnumerator(name: "BPF_TIMER", value: 2)
!454 = !DIEnumerator(name: "BPF_KPTR_UNREF", value: 4)
!455 = !DIEnumerator(name: "BPF_KPTR_REF", value: 8)
!456 = !DIEnumerator(name: "BPF_KPTR", value: 12)
!457 = !DIEnumerator(name: "BPF_LIST_HEAD", value: 16)
!458 = !DIEnumerator(name: "BPF_LIST_NODE", value: 32)
!459 = !DIEnumerator(name: "BPF_RB_ROOT", value: 64)
!460 = !DIEnumerator(name: "BPF_RB_NODE", value: 128)
!461 = !DIEnumerator(name: "BPF_GRAPH_NODE_OR_ROOT", value: 240)
!462 = !DIEnumerator(name: "BPF_REFCOUNT", value: 256)
!463 = !{!464, !23, !42, !466, !5395, !7, !5397, !491, !5398, !506, !2688, !5401, !5402, !3635, !5403, !25, !768, !2498, !5406, !1414}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !71, line: 23, baseType: !70)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !468, line: 327, size: 896, elements: !469)
!468 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!469 = !{!470, !474, !487, !488, !489, !490, !5394}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !467, file: !468, line: 332, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !472, line: 64, elements: !473)
!472 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!473 = !{}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !467, file: !468, line: 333, baseType: !475, size: 192)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !468, line: 299, size: 192, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !475, file: !468, line: 300, baseType: !478, size: 192)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !479, line: 17, size: 192, elements: !480)
!479 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!480 = !{!481, !485, !486}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !478, file: !479, line: 18, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !87, line: 23, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !89, line: 31, baseType: !484)
!484 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !478, file: !479, line: 19, baseType: !482, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !478, file: !479, line: 20, baseType: !484, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !467, file: !468, line: 339, baseType: !475, size: 192, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !467, file: !468, line: 347, baseType: !475, size: 192, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !467, file: !468, line: 353, baseType: !475, size: 192, offset: 576)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !467, file: !468, line: 366, baseType: !491, size: 64, offset: 768)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !468, line: 389, size: 7872, elements: !493)
!493 = !{!494, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5353, !5354, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5381, !5384, !5385, !5392}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !492, file: !468, line: 391, baseType: !495, size: 1600)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !468, line: 152, size: 1600, elements: !496)
!496 = !{!497, !498, !5319, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5334}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !495, file: !468, line: 154, baseType: !491, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !495, file: !468, line: 157, baseType: !499, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !468, line: 669, size: 1984, elements: !501)
!501 = !{!502, !507, !511, !515, !516, !517, !518, !522, !5213, !5214, !5229, !5233, !5234, !5235, !5239, !5243, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5272, !5279, !5280, !5317, !5318}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !500, file: !468, line: 670, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!506, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !500, file: !468, line: 671, baseType: !508, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!25, !506}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !500, file: !468, line: 672, baseType: !512, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !506}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !500, file: !468, line: 673, baseType: !512, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !500, file: !468, line: 674, baseType: !512, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !500, file: !468, line: 675, baseType: !512, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !500, file: !468, line: 676, baseType: !519, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !506, !25}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !500, file: !468, line: 677, baseType: !523, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!25, !526, !506}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !528, line: 17, size: 960, elements: !529)
!528 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!529 = !{!530, !532, !533, !534, !535, !536, !537, !538, !558, !579, !580, !5212}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !527, file: !528, line: 18, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !527, file: !528, line: 19, baseType: !38, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !527, file: !528, line: 20, baseType: !38, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !527, file: !528, line: 21, baseType: !38, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !527, file: !528, line: 22, baseType: !38, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !527, file: !528, line: 23, baseType: !44, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !527, file: !528, line: 24, baseType: !44, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !527, file: !528, line: 25, baseType: !539, size: 256, offset: 448)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !540, line: 66, size: 256, elements: !541)
!540 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!541 = !{!542, !551, !552, !557}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !539, file: !540, line: 67, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !544, line: 13, baseType: !545)
!544 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !28, line: 181, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 179, size: 64, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !546, file: !28, line: 180, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !87, line: 22, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !89, line: 30, baseType: !46)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !539, file: !540, line: 68, baseType: !465, size: 32, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !539, file: !540, line: 70, baseType: !553, size: 32, offset: 96)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !554, line: 15, size: 32, elements: !555)
!554 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !553, file: !554, line: 20, baseType: !52, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !539, file: !540, line: 72, baseType: !100, size: 128, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !527, file: !528, line: 26, baseType: !559, size: 64, offset: 704)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !528, line: 32, size: 256, elements: !562)
!562 = !{!563, !567, !571, !575}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !561, file: !528, line: 33, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!23, !526, !43}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !561, file: !528, line: 34, baseType: !568, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !526, !23}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !561, file: !528, line: 35, baseType: !572, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!23, !526, !23, !43}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !561, file: !528, line: 36, baseType: !576, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!25, !526, !23}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !527, file: !528, line: 27, baseType: !25, size: 32, offset: 768)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !527, file: !528, line: 28, baseType: !581, size: 64, offset: 832)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !183, line: 994, size: 1856, align: 64, elements: !584)
!584 = !{!585, !604, !605, !607, !608, !609, !610, !611, !686, !1054, !1063, !5202, !5203, !5204, !5205, !5206, !5207, !5209, !5210, !5211}
!585 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !183, line: 995, baseType: !586, size: 128)
!586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !183, line: 995, size: 128, elements: !587)
!587 = !{!588, !594, !603}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !586, file: !183, line: 996, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !590, line: 60, size: 64, elements: !591)
!590 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !589, file: !590, line: 61, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !586, file: !183, line: 997, baseType: !595, size: 128, align: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !28, line: 232, size: 128, align: 64, elements: !596)
!596 = !{!597, !599}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !595, file: !28, line: 233, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !595, file: !28, line: 234, baseType: !600, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !598}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !586, file: !183, line: 998, baseType: !7, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !583, file: !183, line: 1005, baseType: !62, size: 32, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !583, file: !183, line: 1006, baseType: !606, size: 32, offset: 160)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !28, line: 156, baseType: !7)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !583, file: !183, line: 1007, baseType: !543, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !583, file: !183, line: 1008, baseType: !539, size: 256, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !583, file: !183, line: 1009, baseType: !44, size: 64, offset: 512)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !583, file: !183, line: 1010, baseType: !7, size: 32, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !583, file: !183, line: 1011, baseType: !612, size: 256, offset: 640)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !183, line: 948, size: 256, elements: !613)
!613 = !{!614, !637, !675, !676, !684, !685}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !612, file: !183, line: 949, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !616, line: 34, baseType: !617)
!616 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !616, line: 25, size: 64, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !617, file: !616, line: 26, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !621, line: 27, baseType: !622)
!621 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !621, line: 13, size: 64, elements: !623)
!623 = !{!624, !636}
!624 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !621, line: 14, baseType: !625, size: 32)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !621, line: 14, size: 32, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !625, file: !621, line: 15, baseType: !52, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !621, line: 16, baseType: !629, size: 32)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !621, line: 16, size: 32, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !629, file: !621, line: 18, baseType: !86, size: 8)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !629, file: !621, line: 19, baseType: !633, size: 24, offset: 8)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 24, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 3)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !622, file: !621, line: 26, baseType: !74, size: 32, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !612, file: !183, line: 950, baseType: !638, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !640)
!640 = !{!641, !647, !648, !649, !662, !663, !664, !665}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !639, file: !6, line: 61, baseType: !642, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !643, line: 113, baseType: !644)
!643 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !643, line: 111, size: 32, elements: !645)
!645 = !{!646}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !644, file: !643, line: 112, baseType: !52, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !639, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !639, file: !6, line: 63, baseType: !62, size: 32, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !639, file: !6, line: 65, baseType: !650, size: 256, offset: 128)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 256, elements: !660)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !28, line: 194, size: 64, elements: !652)
!652 = !{!653}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !651, file: !28, line: 195, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !28, line: 198, size: 128, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !655, file: !28, line: 199, baseType: !654, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !655, file: !28, line: 199, baseType: !659, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!660 = !{!661}
!661 = !DISubrange(count: 4)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !639, file: !6, line: 66, baseType: !651, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !639, file: !6, line: 68, baseType: !57, size: 192, offset: 448)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !639, file: !6, line: 69, baseType: !595, size: 128, align: 64, offset: 640)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !639, file: !6, line: 70, baseType: !666, offset: 768)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, elements: !673)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !668)
!668 = !{!669, !670}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !667, file: !6, line: 55, baseType: !25, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !667, file: !6, line: 56, baseType: !671, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!673 = !{!674}
!674 = !DISubrange(count: -1)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !612, file: !183, line: 951, baseType: !5, size: 32, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !612, file: !183, line: 952, baseType: !677, size: 32, offset: 160)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !678, line: 23, baseType: !679)
!678 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !678, line: 21, size: 32, elements: !680)
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !679, file: !678, line: 22, baseType: !682, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !28, line: 37, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !40, line: 49, baseType: !7)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !612, file: !183, line: 952, baseType: !677, size: 32, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !612, file: !183, line: 953, baseType: !25, size: 32, offset: 224)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !583, file: !183, line: 1012, baseType: !687, size: 64, offset: 896)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !690, line: 110, size: 1472, elements: !691)
!690 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!691 = !{!692, !693, !694, !701, !702, !703, !704, !705, !706, !707, !708, !714, !715, !716, !717, !718, !719, !851, !852, !853, !854, !855, !886, !1040, !1041, !1049}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !689, file: !690, line: 111, baseType: !543, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !689, file: !690, line: 112, baseType: !677, size: 32, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !689, file: !690, line: 113, baseType: !695, size: 32, offset: 96)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !678, line: 28, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !678, line: 26, size: 32, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !696, file: !678, line: 27, baseType: !699, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !28, line: 38, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !40, line: 50, baseType: !7)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !689, file: !690, line: 114, baseType: !677, size: 32, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !689, file: !690, line: 115, baseType: !695, size: 32, offset: 160)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !689, file: !690, line: 116, baseType: !677, size: 32, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !689, file: !690, line: 117, baseType: !695, size: 32, offset: 224)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !689, file: !690, line: 118, baseType: !677, size: 32, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !689, file: !690, line: 119, baseType: !695, size: 32, offset: 288)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !689, file: !690, line: 120, baseType: !7, size: 32, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !689, file: !690, line: 121, baseType: !709, size: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !710, line: 24, baseType: !711)
!710 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 24, size: 64, elements: !712)
!712 = !{!713}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !711, file: !710, line: 24, baseType: !482, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !689, file: !690, line: 122, baseType: !709, size: 64, offset: 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !689, file: !690, line: 123, baseType: !709, size: 64, offset: 512)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !689, file: !690, line: 124, baseType: !709, size: 64, offset: 576)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !689, file: !690, line: 125, baseType: !709, size: 64, offset: 640)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !689, file: !690, line: 127, baseType: !90, size: 8, offset: 704)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !689, file: !690, line: 129, baseType: !720, size: 64, offset: 768)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !722, line: 195, size: 1728, elements: !723)
!722 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!723 = !{!724, !725, !730, !742, !751, !754, !755, !762, !763, !764, !765, !770, !771, !772, !774, !775, !815, !836}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !721, file: !722, line: 196, baseType: !642, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !721, file: !722, line: 197, baseType: !726, size: 32, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !722, line: 28, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !28, line: 104, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !87, line: 20, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !89, line: 26, baseType: !25)
!730 = !DIDerivedType(tag: DW_TAG_member, scope: !721, file: !722, line: 198, baseType: !731, size: 192, offset: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !721, file: !722, line: 198, size: 192, elements: !732)
!732 = !{!733, !734}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !731, file: !722, line: 199, baseType: !100, size: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !731, file: !722, line: 200, baseType: !735, size: 192, align: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !736, line: 5, size: 192, align: 64, elements: !737)
!736 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!737 = !{!738, !739, !741}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !735, file: !736, line: 6, baseType: !42, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !735, file: !736, line: 7, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !735, file: !736, line: 8, baseType: !740, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !721, file: !722, line: 205, baseType: !743, size: 320, offset: 256)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !744, line: 48, size: 320, elements: !745)
!744 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!745 = !{!746, !747, !748, !749, !750}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !743, file: !744, line: 49, baseType: !543, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !743, file: !744, line: 55, baseType: !543, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !743, file: !744, line: 57, baseType: !553, size: 32, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !743, file: !744, line: 59, baseType: !465, size: 32, offset: 160)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !743, file: !744, line: 60, baseType: !100, size: 128, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !721, file: !722, line: 206, baseType: !752, size: 64, offset: 576)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !722, line: 206, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !721, file: !722, line: 207, baseType: !23, size: 64, offset: 640)
!755 = !DIDerivedType(tag: DW_TAG_member, scope: !721, file: !722, line: 208, baseType: !756, size: 64, offset: 704)
!756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !721, file: !722, line: 208, size: 64, elements: !757)
!757 = !{!758, !761}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !756, file: !722, line: 209, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !760, line: 8, baseType: !550)
!760 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!761 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !756, file: !722, line: 210, baseType: !759, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !721, file: !722, line: 212, baseType: !759, size: 64, offset: 768)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !721, file: !722, line: 213, baseType: !677, size: 32, offset: 832)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !721, file: !722, line: 214, baseType: !695, size: 32, offset: 864)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !721, file: !722, line: 215, baseType: !766, size: 32, offset: 896)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !722, line: 31, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !28, line: 110, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !87, line: 21, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !89, line: 27, baseType: !7)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !721, file: !722, line: 216, baseType: !29, size: 16, offset: 928)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !721, file: !722, line: 217, baseType: !29, size: 16, offset: 944)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !721, file: !722, line: 221, baseType: !773, size: 16, offset: 960)
!773 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !721, file: !722, line: 228, baseType: !42, size: 64, offset: 1024)
!775 = !DIDerivedType(tag: DW_TAG_member, scope: !721, file: !722, line: 245, baseType: !776, size: 320, offset: 1088)
!776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !721, file: !722, line: 245, size: 320, elements: !777)
!777 = !{!778, !807}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !776, file: !722, line: 246, baseType: !779, size: 320)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !722, line: 114, size: 320, elements: !780)
!780 = !{!781, !782, !794, !797, !806}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !779, file: !722, line: 116, baseType: !42, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !722, line: 117, baseType: !783, size: 64, offset: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !779, file: !722, line: 117, size: 64, elements: !784)
!784 = !{!785, !793}
!785 = !DIDerivedType(tag: DW_TAG_member, scope: !783, file: !722, line: 118, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !783, file: !722, line: 118, size: 64, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !786, file: !722, line: 120, baseType: !96, size: 16)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !786, file: !722, line: 121, baseType: !790, size: 48, offset: 16)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 48, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 6)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !783, file: !722, line: 127, baseType: !42, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !779, file: !722, line: 129, baseType: !795, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !722, line: 102, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !779, file: !722, line: 130, baseType: !798, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !722, line: 108, size: 192, elements: !800)
!800 = !{!801, !802, !803}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !799, file: !722, line: 109, baseType: !595, size: 128, align: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !799, file: !722, line: 110, baseType: !642, size: 32, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !799, file: !722, line: 111, baseType: !804, size: 8, offset: 160)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !28, line: 35, baseType: !805)
!805 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !779, file: !722, line: 131, baseType: !19, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !722, line: 247, baseType: !808, size: 320)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !776, file: !722, line: 247, size: 320, elements: !809)
!809 = !{!810, !811, !812, !813, !814}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !808, file: !722, line: 248, baseType: !42, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !808, file: !722, line: 249, baseType: !42, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !808, file: !722, line: 250, baseType: !795, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !808, file: !722, line: 251, baseType: !798, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !808, file: !722, line: 252, baseType: !531, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, scope: !721, file: !722, line: 260, baseType: !816, size: 256, offset: 1408)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !721, file: !722, line: 260, size: 256, elements: !817)
!817 = !{!818, !824}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !816, file: !722, line: 261, baseType: !819, size: 256)
!819 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !722, line: 134, size: 256, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !819, file: !722, line: 135, baseType: !23, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !819, file: !722, line: 136, baseType: !823, size: 256)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !660)
!824 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !722, line: 262, baseType: !825, size: 256)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !816, file: !722, line: 262, size: 256, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !825, file: !722, line: 264, baseType: !100, size: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !825, file: !722, line: 265, baseType: !829, size: 128, offset: 128)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !830, line: 22, size: 128, elements: !831)
!830 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!831 = !{!832, !835}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !829, file: !830, line: 23, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !830, line: 23, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !829, file: !830, line: 24, baseType: !42, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !721, file: !722, line: 280, baseType: !837, size: 64, offset: 1664)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !722, line: 176, size: 192, elements: !839)
!839 = !{!840, !849, !850}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !838, file: !722, line: 177, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !722, line: 171, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!25, !720, !845, !847, !720}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !838, file: !722, line: 178, baseType: !720, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !838, file: !722, line: 179, baseType: !795, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !689, file: !690, line: 130, baseType: !720, size: 64, offset: 832)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !689, file: !690, line: 131, baseType: !720, size: 64, offset: 896)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !689, file: !690, line: 132, baseType: !720, size: 64, offset: 960)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !689, file: !690, line: 135, baseType: !23, size: 64, offset: 1024)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !689, file: !690, line: 137, baseType: !856, size: 64, offset: 1088)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !858, line: 14, size: 1088, elements: !859)
!858 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!859 = !{!860, !861, !870, !871, !872, !873, !874, !875}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !857, file: !858, line: 15, baseType: !642, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !857, file: !858, line: 17, baseType: !862, size: 320, offset: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !863, line: 22, size: 320, elements: !864)
!863 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!864 = !{!865, !866, !867, !868}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !862, file: !863, line: 23, baseType: !465, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !862, file: !863, line: 24, baseType: !549, size: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !862, file: !863, line: 26, baseType: !100, size: 128, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !862, file: !863, line: 28, baseType: !869, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !857, file: !858, line: 19, baseType: !42, size: 64, offset: 384)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !857, file: !858, line: 20, baseType: !543, size: 64, offset: 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !857, file: !858, line: 23, baseType: !655, size: 128, offset: 512)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !857, file: !858, line: 24, baseType: !677, size: 32, offset: 640)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !857, file: !858, line: 29, baseType: !543, size: 64, offset: 704)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !857, file: !858, line: 36, baseType: !876, size: 320, offset: 768)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !877, line: 15, size: 320, elements: !878)
!877 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!878 = !{!879, !880, !881, !882, !883, !884, !885}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !876, file: !877, line: 16, baseType: !465, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !876, file: !877, line: 18, baseType: !25, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !876, file: !877, line: 19, baseType: !25, size: 32, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !876, file: !877, line: 20, baseType: !25, size: 32, offset: 96)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !876, file: !877, line: 21, baseType: !25, size: 32, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !876, file: !877, line: 22, baseType: !42, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !876, file: !877, line: 23, baseType: !42, size: 64, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !689, file: !690, line: 138, baseType: !887, size: 64, offset: 1152)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !889, line: 68, size: 4800, elements: !890)
!889 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!890 = !{!891, !913, !914, !915, !916, !917, !918, !919, !930, !931, !932, !933, !934, !935, !947, !1020, !1021, !1035, !1038}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !888, file: !889, line: 69, baseType: !892, size: 576)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !889, line: 23, size: 576, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !892, file: !889, line: 24, baseType: !768, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !889, line: 25, baseType: !896, size: 512, offset: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !889, line: 25, size: 512, elements: !897)
!897 = !{!898, !907}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !896, file: !889, line: 26, baseType: !899, size: 480)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 480, elements: !905)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !889, line: 17, size: 96, elements: !901)
!901 = !{!902, !903, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !900, file: !889, line: 18, baseType: !768, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !900, file: !889, line: 19, baseType: !768, size: 32, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !900, file: !889, line: 20, baseType: !768, size: 32, offset: 64)
!905 = !{!906}
!906 = !DISubrange(count: 5)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !889, line: 27, baseType: !908, size: 128)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !896, file: !889, line: 27, size: 128, elements: !909)
!909 = !{!910, !912}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !908, file: !889, line: 28, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !908, file: !889, line: 29, baseType: !911, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !888, file: !889, line: 70, baseType: !892, size: 576, offset: 576)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !888, file: !889, line: 71, baseType: !892, size: 576, offset: 1152)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !888, file: !889, line: 72, baseType: !887, size: 64, offset: 1728)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !888, file: !889, line: 73, baseType: !25, size: 32, offset: 1792)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !888, file: !889, line: 74, baseType: !677, size: 32, offset: 1824)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !888, file: !889, line: 75, baseType: !695, size: 32, offset: 1856)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !888, file: !889, line: 76, baseType: !920, size: 192, offset: 1920)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !921, line: 9, size: 192, elements: !922)
!921 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!922 = !{!923, !924, !928, !929}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !920, file: !921, line: 10, baseType: !543, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !920, file: !921, line: 11, baseType: !925, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !927)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !921, line: 7, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !920, file: !921, line: 12, baseType: !7, size: 32, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !920, file: !921, line: 13, baseType: !642, size: 32, offset: 160)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !888, file: !889, line: 77, baseType: !42, size: 64, offset: 2112)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !888, file: !889, line: 80, baseType: !804, size: 8, offset: 2176)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !888, file: !889, line: 88, baseType: !100, size: 128, offset: 2240)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !888, file: !889, line: 89, baseType: !720, size: 64, offset: 2368)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !888, file: !889, line: 90, baseType: !743, size: 320, offset: 2432)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !888, file: !889, line: 97, baseType: !936, size: 256, offset: 2752)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !937, line: 98, size: 256, elements: !938)
!937 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!938 = !{!939, !940, !941}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !936, file: !937, line: 99, baseType: !543, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !936, file: !937, line: 100, baseType: !100, size: 128, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !936, file: !937, line: 101, baseType: !942, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !937, line: 21, baseType: !943)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !946}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !888, file: !889, line: 99, baseType: !948, size: 768, offset: 3008)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !15, line: 199, size: 768, elements: !949)
!949 = !{!950, !955}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !948, file: !15, line: 200, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!25, !954}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !948, file: !15, line: 201, baseType: !956, size: 704, offset: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !15, line: 193, size: 704, elements: !957)
!957 = !{!958, !1016}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !956, file: !15, line: 195, baseType: !959, size: 640)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !15, line: 173, size: 640, elements: !960)
!960 = !{!961, !973, !985, !986, !1006, !1007, !1009, !1015}
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !15, line: 174, baseType: !962, size: 192)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !959, file: !15, line: 174, size: 192, elements: !963)
!963 = !{!964, !972}
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !15, line: 175, baseType: !965, size: 192)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !15, line: 175, size: 192, elements: !966)
!966 = !{!967, !968, !969, !970, !971}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !965, file: !15, line: 176, baseType: !36, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !965, file: !15, line: 177, baseType: !25, size: 32, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !965, file: !15, line: 178, baseType: !25, size: 32, offset: 96)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !965, file: !15, line: 179, baseType: !25, size: 32, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !965, file: !15, line: 180, baseType: !25, size: 32, offset: 160)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !962, file: !15, line: 182, baseType: !595, size: 128, align: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !959, file: !15, line: 184, baseType: !974, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !976, line: 26, size: 256, elements: !977)
!976 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !975, file: !976, line: 27, baseType: !7, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !975, file: !976, line: 28, baseType: !980, size: 192, offset: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !981, line: 43, size: 192, elements: !982)
!981 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !980, file: !981, line: 44, baseType: !465, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !980, file: !981, line: 45, baseType: !100, size: 128, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !959, file: !15, line: 185, baseType: !36, size: 64, offset: 256)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !959, file: !15, line: 186, baseType: !987, size: 64, offset: 320)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !15, line: 204, size: 960, elements: !989)
!989 = !{!990, !991, !995, !1002}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !988, file: !15, line: 205, baseType: !948, size: 768)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !988, file: !15, line: 206, baseType: !992, size: 64, offset: 768)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!954, !987}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !988, file: !15, line: 207, baseType: !996, size: 64, offset: 832)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !999, !1000, !1001}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !988, file: !15, line: 209, baseType: !1003, size: 64, offset: 896)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!25, !999, !36}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !959, file: !15, line: 187, baseType: !954, size: 64, offset: 384)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !959, file: !15, line: 188, baseType: !1008, size: 64, offset: 448)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !959, file: !15, line: 189, baseType: !1010, size: 64, offset: 512)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !15, line: 157, size: 256, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1011, file: !15, line: 158, baseType: !735, size: 192, align: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1011, file: !15, line: 159, baseType: !999, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !959, file: !15, line: 190, baseType: !651, size: 64, offset: 576)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !956, file: !15, line: 196, baseType: !1017, size: 64, offset: 640)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !736, line: 12, size: 64, elements: !1018)
!1018 = !{!1019}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1017, file: !736, line: 13, baseType: !740, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !888, file: !889, line: 100, baseType: !999, size: 64, offset: 3776)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !888, file: !889, line: 102, baseType: !1022, size: 64, offset: 3840)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !889, line: 107, size: 1152, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1033}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1023, file: !889, line: 108, baseType: !655, size: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1023, file: !889, line: 109, baseType: !887, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1023, file: !889, line: 110, baseType: !677, size: 32, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1023, file: !889, line: 111, baseType: !52, size: 32, offset: 224)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1023, file: !889, line: 112, baseType: !1030, size: 640, offset: 256)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 640, elements: !1031)
!1031 = !{!1032}
!1032 = !DISubrange(count: 10)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1023, file: !889, line: 113, baseType: !1034, size: 256, offset: 896)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 256, elements: !660)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !888, file: !889, line: 103, baseType: !1036, size: 640, offset: 3904)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1037, size: 640, elements: !1031)
!1037 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !888, file: !889, line: 104, baseType: !1039, size: 256, offset: 4544)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1037, size: 256, elements: !660)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !689, file: !690, line: 139, baseType: !1022, size: 64, offset: 1216)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !689, file: !690, line: 140, baseType: !1042, size: 64, offset: 1280)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !690, line: 25, size: 64, elements: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1043, file: !690, line: 26, baseType: !52, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1043, file: !690, line: 27, baseType: !25, size: 32, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1043, file: !690, line: 28, baseType: !1048, offset: 64)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, elements: !673)
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !689, file: !690, line: 142, baseType: !1050, size: 128, offset: 1344)
!1050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !690, line: 142, size: 128, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1050, file: !690, line: 143, baseType: !25, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1050, file: !690, line: 144, baseType: !595, size: 128, align: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !583, file: !183, line: 1013, baseType: !1055, size: 256, offset: 960)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !183, line: 970, size: 256, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1055, file: !183, line: 971, baseType: !42, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1055, file: !183, line: 972, baseType: !7, size: 32, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1055, file: !183, line: 973, baseType: !7, size: 32, offset: 96)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1055, file: !183, line: 974, baseType: !7, size: 32, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1055, file: !183, line: 975, baseType: !7, size: 32, offset: 160)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1055, file: !183, line: 976, baseType: !44, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !583, file: !183, line: 1014, baseType: !1064, size: 128, offset: 1216)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1065, line: 8, size: 128, elements: !1066)
!1065 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1066 = !{!1067, !5201}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1064, file: !1065, line: 9, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1070, line: 70, size: 256, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1071 = !{!1072, !5198, !5199, !5200}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1069, file: !1070, line: 71, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1075, line: 82, size: 1536, elements: !1076)
!1075 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1076 = !{!1077, !1078, !1088, !1096, !1097, !1112, !5165, !5167, !5180, !5181, !5182, !5183, !5184, !5190, !5191, !5192}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1074, file: !1075, line: 84, baseType: !7, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1074, file: !1075, line: 85, baseType: !1079, size: 32, offset: 32)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !1080, line: 275, baseType: !1081)
!1080 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !1080, line: 275, size: 32, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1081, file: !1080, line: 275, baseType: !1084, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !1080, line: 69, baseType: !1085)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !1080, line: 64, size: 32, elements: !1086)
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !1085, file: !1080, line: 65, baseType: !7, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1074, file: !1075, line: 86, baseType: !1089, size: 128, offset: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1090, line: 38, size: 128, elements: !1091)
!1090 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1091 = !{!1092, !1094}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1089, file: !1090, line: 39, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1089, file: !1090, line: 39, baseType: !1095, size: 64, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1074, file: !1075, line: 87, baseType: !1073, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1074, file: !1075, line: 88, baseType: !1098, size: 128, offset: 256)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1075, line: 49, size: 128, elements: !1099)
!1099 = !{!1100, !1109}
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !1075, line: 50, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1098, file: !1075, line: 50, size: 64, elements: !1102)
!1102 = !{!1103, !1108}
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !1075, line: 51, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1101, file: !1075, line: 51, size: 64, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1104, file: !1075, line: 52, baseType: !768, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1104, file: !1075, line: 52, baseType: !768, size: 32, offset: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1101, file: !1075, line: 54, baseType: !482, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1098, file: !1075, line: 56, baseType: !1110, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1074, file: !1075, line: 89, baseType: !1113, size: 64, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !183, line: 641, size: 4800, elements: !1115)
!1115 = !{!1116, !1117, !1118, !1119, !1120, !1121, !1122, !1125, !1126, !1321, !4981, !4982, !4983, !4984, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5147, !5150, !5151, !5152, !5161, !5162, !5163, !5164}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1114, file: !183, line: 642, baseType: !27, size: 16)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1114, file: !183, line: 643, baseType: !29, size: 16, offset: 16)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1114, file: !183, line: 644, baseType: !677, size: 32, offset: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1114, file: !183, line: 645, baseType: !100, size: 128, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1114, file: !183, line: 646, baseType: !695, size: 32, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1114, file: !183, line: 647, baseType: !7, size: 32, offset: 224)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1114, file: !183, line: 650, baseType: !1123, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !183, line: 607, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1114, file: !183, line: 651, baseType: !1123, size: 64, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1114, file: !183, line: 654, baseType: !1127, size: 64, offset: 384)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1129)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !183, line: 1966, size: 2048, align: 512, elements: !1130)
!1130 = !{!1131, !1135, !1148, !1154, !1158, !1162, !1166, !1170, !1174, !1178, !1182, !1183, !1189, !1193, !1231, !1262, !1269, !1275, !1279, !1283, !1287, !1291, !1295, !1301, !1305}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1129, file: !183, line: 1967, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!1073, !1113, !1073, !7}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1129, file: !183, line: 1968, baseType: !1136, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!19, !1073, !1113, !1139}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1141, line: 10, size: 128, elements: !1142)
!1141 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1142 = !{!1143, !1147}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1140, file: !1141, line: 11, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null, !23}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1140, file: !1141, line: 12, baseType: !23, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1129, file: !183, line: 1969, baseType: !1149, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!25, !1152, !1113, !25}
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !710, line: 42, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1129, file: !183, line: 1970, baseType: !1155, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!1123, !1113, !25, !804}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1129, file: !183, line: 1972, baseType: !1159, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!25, !1073, !531, !25}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1129, file: !183, line: 1974, baseType: !1163, size: 64, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!25, !1152, !1113, !1073, !27, !804}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1129, file: !183, line: 1976, baseType: !1167, size: 64, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!25, !1073, !1113, !1073}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1129, file: !183, line: 1977, baseType: !1171, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!25, !1113, !1073}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1129, file: !183, line: 1978, baseType: !1175, size: 64, offset: 512)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!25, !1152, !1113, !1073, !19}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1129, file: !183, line: 1980, baseType: !1179, size: 64, offset: 576)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!25, !1152, !1113, !1073, !27}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1129, file: !183, line: 1982, baseType: !1171, size: 64, offset: 640)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1129, file: !183, line: 1983, baseType: !1184, size: 64, offset: 704)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!25, !1152, !1113, !1073, !27, !1187}
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !28, line: 21, baseType: !1188)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !28, line: 18, baseType: !768)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1129, file: !183, line: 1985, baseType: !1190, size: 64, offset: 768)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!25, !1152, !1113, !1073, !1113, !1073, !7}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1129, file: !183, line: 1987, baseType: !1194, size: 64, offset: 832)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!25, !1152, !1073, !1197}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !183, line: 226, size: 640, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1212, !1221, !1222, !1227, !1228, !1229}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1198, file: !183, line: 227, baseType: !7, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1198, file: !183, line: 228, baseType: !27, size: 16, offset: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !183, line: 241, baseType: !1203, size: 32, offset: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1198, file: !183, line: 241, size: 32, elements: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1203, file: !183, line: 242, baseType: !677, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1203, file: !183, line: 243, baseType: !1207, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1208, line: 16, baseType: !1209)
!1208 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1208, line: 14, size: 32, elements: !1210)
!1210 = !{!1211}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1209, file: !1208, line: 15, baseType: !682, size: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !183, line: 245, baseType: !1213, size: 32, offset: 96)
!1213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1198, file: !183, line: 245, size: 32, elements: !1214)
!1214 = !{!1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1213, file: !183, line: 246, baseType: !695, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1213, file: !183, line: 247, baseType: !1217, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1208, line: 20, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1208, line: 18, size: 32, elements: !1219)
!1219 = !{!1220}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1218, file: !1208, line: 19, baseType: !699, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1198, file: !183, line: 249, baseType: !44, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1198, file: !183, line: 250, baseType: !1223, size: 128, offset: 192)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !760, line: 13, size: 128, elements: !1224)
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1223, file: !760, line: 14, baseType: !759, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1223, file: !760, line: 15, baseType: !1037, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1198, file: !183, line: 251, baseType: !1223, size: 128, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1198, file: !183, line: 252, baseType: !1223, size: 128, offset: 448)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1198, file: !183, line: 259, baseType: !1230, size: 64, offset: 576)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1129, file: !183, line: 1988, baseType: !1232, size: 64, offset: 896)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!25, !1152, !1235, !1237, !768, !7}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1064)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1239, line: 22, size: 1280, elements: !1240)
!1239 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1240 = !{!1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1238, file: !1239, line: 23, baseType: !768, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1238, file: !1239, line: 24, baseType: !27, size: 16, offset: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1238, file: !1239, line: 25, baseType: !7, size: 32, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1238, file: !1239, line: 26, baseType: !767, size: 32, offset: 96)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1238, file: !1239, line: 27, baseType: !482, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1238, file: !1239, line: 28, baseType: !482, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1238, file: !1239, line: 41, baseType: !482, size: 64, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1238, file: !1239, line: 42, baseType: !1187, size: 32, offset: 320)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1238, file: !1239, line: 43, baseType: !1187, size: 32, offset: 352)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1238, file: !1239, line: 44, baseType: !677, size: 32, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1238, file: !1239, line: 45, baseType: !695, size: 32, offset: 416)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1238, file: !1239, line: 46, baseType: !44, size: 64, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1238, file: !1239, line: 47, baseType: !1223, size: 128, offset: 512)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1238, file: !1239, line: 48, baseType: !1223, size: 128, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1238, file: !1239, line: 49, baseType: !1223, size: 128, offset: 768)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1238, file: !1239, line: 50, baseType: !1223, size: 128, offset: 896)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1238, file: !1239, line: 51, baseType: !482, size: 64, offset: 1024)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1238, file: !1239, line: 52, baseType: !482, size: 64, offset: 1088)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1238, file: !1239, line: 53, baseType: !768, size: 32, offset: 1152)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1238, file: !1239, line: 54, baseType: !768, size: 32, offset: 1184)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1238, file: !1239, line: 55, baseType: !482, size: 64, offset: 1216)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1129, file: !183, line: 1990, baseType: !1263, size: 64, offset: 960)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!1266, !1073, !531, !38}
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !28, line: 66, baseType: !1267)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !40, line: 73, baseType: !1268)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !40, line: 15, baseType: !1037)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1129, file: !183, line: 1991, baseType: !1270, size: 64, offset: 1024)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!25, !1113, !1273, !482, !482}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !183, line: 55, flags: DIFlagFwdDecl)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1129, file: !183, line: 1993, baseType: !1276, size: 64, offset: 1088)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!25, !1113, !25}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1129, file: !183, line: 1994, baseType: !1280, size: 64, offset: 1152)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!25, !1113, !1073, !1230, !7, !27}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1129, file: !183, line: 1997, baseType: !1284, size: 64, offset: 1216)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!25, !1152, !1113, !1230, !27}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1129, file: !183, line: 1999, baseType: !1288, size: 64, offset: 1280)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!1123, !1152, !1073, !25}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1129, file: !183, line: 2001, baseType: !1292, size: 64, offset: 1344)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!25, !1152, !1073, !1123, !25}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1129, file: !183, line: 2003, baseType: !1296, size: 64, offset: 1408)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!25, !1152, !1073, !1299}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !183, line: 76, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1129, file: !183, line: 2005, baseType: !1302, size: 64, offset: 1472)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!25, !1073, !1299}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1129, file: !183, line: 2006, baseType: !1306, size: 64, offset: 1536)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!1309, !1113}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !183, line: 3192, size: 192, elements: !1311)
!1311 = !{!1312, !1320}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1310, file: !183, line: 3193, baseType: !1313, size: 128)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1314, line: 296, size: 128, elements: !1315)
!1314 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1315 = !{!1316, !1317, !1319}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1313, file: !1314, line: 297, baseType: !62, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1313, file: !1314, line: 299, baseType: !1318, size: 32, offset: 32)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !28, line: 154, baseType: !7)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1313, file: !1314, line: 300, baseType: !23, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1310, file: !183, line: 3194, baseType: !768, size: 32, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1114, file: !183, line: 655, baseType: !1322, size: 64, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !183, line: 1190, size: 10752, elements: !1324)
!1324 = !{!1325, !1326, !1327, !1328, !1329, !1330, !2769, !2901, !2941, !3024, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3041, !3045, !3046, !3504, !3507, !3565, !3568, !3569, !3570, !3611, !4857, !4858, !4859, !4860, !4861, !4862, !4865, !4866, !4873, !4874, !4875, !4876, !4935, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1323, file: !183, line: 1191, baseType: !100, size: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1323, file: !183, line: 1192, baseType: !1187, size: 32, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1323, file: !183, line: 1193, baseType: !90, size: 8, offset: 160)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1323, file: !183, line: 1194, baseType: !42, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1323, file: !183, line: 1195, baseType: !44, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1323, file: !183, line: 1196, baseType: !1331, size: 64, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !183, line: 2366, size: 576, elements: !1333)
!1333 = !{!1334, !1335, !1336, !2721, !2748, !2752, !2756, !2757, !2758, !2759, !2761, !2762, !2763, !2765, !2766, !2767, !2768}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1332, file: !183, line: 2367, baseType: !19, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1332, file: !183, line: 2368, baseType: !25, size: 32, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1332, file: !183, line: 2376, baseType: !1337, size: 64, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!25, !1340}
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !111, line: 90, size: 1216, elements: !1342)
!1342 = !{!1343, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1400, !1401, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1341, file: !111, line: 91, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1346)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context_operations", file: !111, line: 115, size: 384, elements: !1347)
!1347 = !{!1348, !1352, !1356, !1385, !1389, !1390}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1346, file: !111, line: 116, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !1340}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1346, file: !111, line: 117, baseType: !1353, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!25, !1340, !1340}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "parse_param", scope: !1346, file: !111, line: 118, baseType: !1357, size: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!25, !1340, !1360}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter", file: !111, line: 63, size: 320, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1383, !1384}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1361, file: !111, line: 64, baseType: !19, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1361, file: !111, line: 65, baseType: !110, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !111, line: 66, baseType: !1366, size: 64, offset: 128)
!1366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1361, file: !111, line: 66, size: 64, elements: !1367)
!1367 = !{!1368, !1369, !1370, !1382}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1366, file: !111, line: 67, baseType: !531, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !1366, file: !111, line: 68, baseType: !23, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1366, file: !111, line: 69, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !183, line: 2470, size: 256, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377, !1380}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1372, file: !183, line: 2471, baseType: !19, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !1372, file: !183, line: 2472, baseType: !19, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1372, file: !183, line: 2473, baseType: !52, size: 32, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !1372, file: !183, line: 2474, baseType: !1378, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !183, line: 2469, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !1372, file: !183, line: 2475, baseType: !1381, offset: 256)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, elements: !673)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1366, file: !111, line: 70, baseType: !1230, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1361, file: !111, line: 72, baseType: !38, size: 64, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "dirfd", scope: !1361, file: !111, line: 73, baseType: !25, size: 32, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "parse_monolithic", scope: !1346, file: !111, line: 119, baseType: !1386, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!25, !1340, !23}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "get_tree", scope: !1346, file: !111, line: 120, baseType: !1337, size: 64, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !1346, file: !111, line: 121, baseType: !1337, size: 64, offset: 320)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "uapi_mutex", scope: !1341, file: !111, line: 92, baseType: !539, size: 256, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !1341, file: !111, line: 93, baseType: !1331, size: 64, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "fs_private", scope: !1341, file: !111, line: 94, baseType: !23, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sget_key", scope: !1341, file: !111, line: 95, baseType: !23, size: 64, offset: 448)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1341, file: !111, line: 96, baseType: !1073, size: 64, offset: 512)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1341, file: !111, line: 97, baseType: !887, size: 64, offset: 576)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1341, file: !111, line: 98, baseType: !1398, size: 64, offset: 640)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !722, line: 34, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1341, file: !111, line: 99, baseType: !687, size: 64, offset: 704)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1341, file: !111, line: 100, baseType: !1402, size: 128, offset: 768)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p_log", file: !111, line: 76, size: 128, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1402, file: !111, line: 77, baseType: !19, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1402, file: !111, line: 78, baseType: !1406, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fc_log", file: !111, line: 173, size: 640, elements: !1408)
!1408 = !{!1409, !1410, !1411, !1412, !1413, !2705}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1407, file: !111, line: 174, baseType: !642, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1407, file: !111, line: 175, baseType: !86, size: 8, offset: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1407, file: !111, line: 176, baseType: !86, size: 8, offset: 40)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1407, file: !111, line: 177, baseType: !86, size: 8, offset: 48)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1407, file: !111, line: 178, baseType: !1414, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !120, line: 402, size: 9216, align: 512, elements: !1416)
!1416 = !{!1417, !1418, !1419, !1423, !2362, !2388, !2389, !2390, !2391, !2395, !2398, !2399, !2400, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2468, !2472, !2492, !2510, !2511, !2512, !2513, !2522, !2545, !2546, !2549, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2563, !2564, !2663, !2671, !2672, !2673, !2675, !2679, !2680, !2684, !2685, !2686, !2687, !2689, !2690, !2691, !2698, !2699, !2700, !2704}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1415, file: !120, line: 403, baseType: !119, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1415, file: !120, line: 406, baseType: !100, size: 128, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1415, file: !120, line: 409, baseType: !1420, size: 448, offset: 192)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 448, elements: !1421)
!1421 = !{!1422}
!1422 = !DISubrange(count: 56)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1415, file: !120, line: 417, baseType: !1424, size: 768, offset: 640)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !120, line: 45, size: 768, elements: !1425)
!1425 = !{!1426, !2356, !2357, !2358, !2361}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1424, file: !120, line: 46, baseType: !1427, size: 512)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1428, line: 64, size: 512, elements: !1429)
!1428 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1429 = !{!1430, !1431, !1432, !1434, !1478, !2250, !2346, !2351, !2352, !2353, !2354, !2355}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1427, file: !1428, line: 65, baseType: !19, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1427, file: !1428, line: 66, baseType: !100, size: 128, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1427, file: !1428, line: 67, baseType: !1433, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1427, file: !1428, line: 68, baseType: !1435, size: 64, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1428, line: 168, size: 768, elements: !1437)
!1437 = !{!1438, !1439, !1440, !1441}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1436, file: !1428, line: 169, baseType: !100, size: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1436, file: !1428, line: 170, baseType: !62, size: 32, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1436, file: !1428, line: 171, baseType: !1427, size: 512, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1436, file: !1428, line: 172, baseType: !1442, size: 64, offset: 704)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1444)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1428, line: 133, size: 192, elements: !1445)
!1445 = !{!1446, !1453, !1458}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1444, file: !1428, line: 134, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1448)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!25, !1451}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1427)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1444, file: !1428, line: 135, baseType: !1454, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!19, !1451}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1444, file: !1428, line: 136, baseType: !1459, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1460)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!25, !1451, !1463}
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1428, line: 125, size: 20736, elements: !1465)
!1465 = !{!1466, !1468, !1472, !1473, !1477}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1464, file: !1428, line: 126, baseType: !1467, size: 192)
!1467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 192, elements: !634)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1464, file: !1428, line: 127, baseType: !1469, size: 4096, offset: 192)
!1469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 4096, elements: !1470)
!1470 = !{!1471}
!1471 = !DISubrange(count: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1464, file: !1428, line: 128, baseType: !25, size: 32, offset: 4288)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1464, file: !1428, line: 129, baseType: !1474, size: 16384, offset: 4320)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 16384, elements: !1475)
!1475 = !{!1476}
!1476 = !DISubrange(count: 2048)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1464, file: !1428, line: 130, baseType: !25, size: 32, offset: 20704)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1427, file: !1428, line: 69, baseType: !1479, size: 64, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1428, line: 116, size: 384, elements: !1482)
!1482 = !{!1483, !1487, !1506, !2213, !2242, !2246}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1481, file: !1428, line: 117, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !1433}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1481, file: !1428, line: 118, baseType: !1488, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1491, line: 254, size: 128, elements: !1492)
!1491 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1492 = !{!1493, !1502}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1490, file: !1491, line: 255, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!1266, !1433, !1497, !531}
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1491, line: 30, size: 128, elements: !1499)
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1498, file: !1491, line: 31, baseType: !19, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1498, file: !1491, line: 32, baseType: !27, size: 16, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1490, file: !1491, line: 256, baseType: !1503, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!1266, !1433, !1497, !19, !38}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1481, file: !1428, line: 119, baseType: !1507, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1491, line: 84, size: 320, elements: !1511)
!1511 = !{!1512, !1513, !1517, !2209, !2211}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1510, file: !1491, line: 85, baseType: !19, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1510, file: !1491, line: 86, baseType: !1514, size: 64, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!27, !1433, !1497, !25}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1510, file: !1491, line: 88, baseType: !1518, size: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!27, !1433, !1521, !25}
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1491, line: 175, size: 512, elements: !1523)
!1523 = !{!1524, !1525, !1526, !1527, !2200, !2204, !2205}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1522, file: !1491, line: 176, baseType: !1498, size: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1522, file: !1491, line: 177, baseType: !38, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1522, file: !1491, line: 178, baseType: !23, size: 64, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1522, file: !1491, line: 179, baseType: !1528, size: 64, offset: 256)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!1531}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !183, line: 472, size: 1536, align: 64, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1544, !1545, !1546, !2192, !2193, !2194, !2197, !2198, !2199}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1532, file: !183, line: 473, baseType: !1113, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1532, file: !183, line: 474, baseType: !1313, size: 128, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1532, file: !183, line: 475, baseType: !743, size: 320, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1532, file: !183, line: 476, baseType: !1318, size: 32, offset: 512)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1532, file: !183, line: 477, baseType: !52, size: 32, offset: 544)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1532, file: !183, line: 482, baseType: !1540, size: 128, offset: 576)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !736, line: 26, size: 128, elements: !1541)
!1541 = !{!1542, !1543}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1540, file: !736, line: 27, baseType: !1017, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1540, file: !736, line: 28, baseType: !740, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1532, file: !183, line: 483, baseType: !42, size: 64, offset: 704)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1532, file: !183, line: 484, baseType: !42, size: 64, offset: 768)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1532, file: !183, line: 485, baseType: !1547, size: 64, offset: 832)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !183, line: 404, size: 1280, elements: !1550)
!1550 = !{!1551, !2017, !2087, !2091, !2095, !2101, !2107, !2111, !2116, !2120, !2124, !2128, !2156, !2160, !2164, !2168, !2173, !2177, !2184, !2188}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1549, file: !183, line: 405, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!25, !1555, !1997}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !135, line: 74, size: 512, align: 128, elements: !1557)
!1557 = !{!1558, !1559, !1991, !1996}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1556, file: !135, line: 75, baseType: !42, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, scope: !1556, file: !135, line: 83, baseType: !1560, size: 320, offset: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1556, file: !135, line: 83, size: 320, elements: !1561)
!1561 = !{!1562, !1583, !1597, !1601, !1990}
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !135, line: 84, baseType: !1563, size: 320)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1560, file: !135, line: 84, size: 320, elements: !1564)
!1564 = !{!1565, !1576, !1577, !1582}
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !135, line: 90, baseType: !1566, size: 128)
!1566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1563, file: !135, line: 90, size: 128, elements: !1567)
!1567 = !{!1568, !1569, !1574, !1575}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1566, file: !135, line: 91, baseType: !100, size: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, scope: !1566, file: !135, line: 94, baseType: !1570, size: 128)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1566, file: !135, line: 94, size: 128, elements: !1571)
!1571 = !{!1572, !1573}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1570, file: !135, line: 96, baseType: !23, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1570, file: !135, line: 98, baseType: !7, size: 32, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1566, file: !135, line: 102, baseType: !100, size: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1566, file: !135, line: 103, baseType: !100, size: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1563, file: !135, line: 106, baseType: !1531, size: 64, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !135, line: 107, baseType: !1578, size: 64, offset: 192)
!1578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1563, file: !135, line: 107, size: 64, elements: !1579)
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1578, file: !135, line: 108, baseType: !42, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1578, file: !135, line: 109, baseType: !42, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1563, file: !135, line: 117, baseType: !42, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !135, line: 119, baseType: !1584, size: 320)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1560, file: !135, line: 119, size: 320, elements: !1585)
!1585 = !{!1586, !1587, !1590, !1591, !1592}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1584, file: !135, line: 124, baseType: !42, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1584, file: !135, line: 125, baseType: !1588, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !135, line: 125, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1584, file: !135, line: 126, baseType: !42, size: 64, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1584, file: !135, line: 127, baseType: !42, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !135, line: 128, baseType: !1593, size: 64, offset: 256)
!1593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !135, line: 128, size: 64, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1593, file: !135, line: 133, baseType: !42, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1593, file: !135, line: 138, baseType: !543, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !135, line: 141, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1560, file: !135, line: 141, size: 64, elements: !1599)
!1599 = !{!1600}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1598, file: !135, line: 142, baseType: !42, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !135, line: 144, baseType: !1602, size: 128)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1560, file: !135, line: 144, size: 128, elements: !1603)
!1603 = !{!1604, !1989}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1602, file: !135, line: 146, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !127, line: 126, size: 1216, elements: !1607)
!1607 = !{!1608, !1618, !1639, !1640, !1641, !1642, !1643, !1971, !1972, !1973}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1606, file: !127, line: 127, baseType: !1609, size: 384)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !127, line: 21, size: 384, elements: !1610)
!1610 = !{!1611, !1612, !1614, !1615, !1616, !1617}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1609, file: !127, line: 22, baseType: !42, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1609, file: !127, line: 23, baseType: !1613, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1609, file: !127, line: 24, baseType: !1613, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1609, file: !127, line: 25, baseType: !42, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1609, file: !127, line: 26, baseType: !42, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1609, file: !127, line: 27, baseType: !42, size: 64, offset: 320)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1606, file: !127, line: 128, baseType: !1619, size: 128, offset: 384)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1620, line: 105, size: 128, elements: !1621)
!1620 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1621 = !{!1622, !1623}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1619, file: !1620, line: 110, baseType: !42, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1619, file: !1620, line: 118, baseType: !1624, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1620, line: 95, size: 448, elements: !1626)
!1626 = !{!1627, !1628, !1634, !1635, !1636, !1637, !1638}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1625, file: !1620, line: 96, baseType: !543, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1625, file: !1620, line: 97, baseType: !1629, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1620, line: 60, baseType: !1631)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{null, !1633}
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1625, file: !1620, line: 98, baseType: !1629, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1625, file: !1620, line: 99, baseType: !804, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1625, file: !1620, line: 100, baseType: !804, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1625, file: !1620, line: 101, baseType: !595, size: 128, align: 64, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1625, file: !1620, line: 102, baseType: !1633, size: 64, offset: 384)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1606, file: !127, line: 129, baseType: !975, size: 256, offset: 512)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1606, file: !127, line: 130, baseType: !126, size: 32, offset: 768)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1606, file: !127, line: 131, baseType: !7, size: 32, offset: 800)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1606, file: !127, line: 132, baseType: !42, size: 64, offset: 832)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1606, file: !127, line: 133, baseType: !1644, size: 64, offset: 896)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !127, line: 77, size: 192, elements: !1647)
!1647 = !{!1648, !1652, !1967}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1646, file: !127, line: 83, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !1555}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1646, file: !127, line: 89, baseType: !1653, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !135, line: 1184, baseType: !7)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1659, line: 512, size: 896, elements: !1660)
!1659 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1660 = !{!1661, !1934, !1935, !1942, !1949, !1959, !1960, !1961, !1963, !1965}
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1658, file: !1659, line: 513, baseType: !1662, size: 320)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !1659, line: 513, size: 320, elements: !1663)
!1663 = !{!1664, !1930, !1931, !1932, !1933}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1662, file: !1659, line: 514, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !135, line: 625, size: 1344, elements: !1667)
!1667 = !{!1668, !1677, !1834, !1840, !1847, !1848, !1853, !1854, !1859, !1860, !1863, !1923, !1924, !1925, !1926, !1927, !1928}
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !135, line: 628, baseType: !1669, size: 128)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1666, file: !135, line: 628, size: 128, elements: !1670)
!1670 = !{!1671, !1676}
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !135, line: 629, baseType: !1672, size: 128)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1669, file: !135, line: 629, size: 128, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1672, file: !135, line: 631, baseType: !42, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1672, file: !135, line: 632, baseType: !42, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1669, file: !135, line: 635, baseType: !595, size: 128, align: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1666, file: !135, line: 639, baseType: !1678, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !135, line: 733, size: 10240, elements: !1680)
!1680 = !{!1681, !1832}
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1679, file: !135, line: 734, baseType: !1682, size: 10240)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1679, file: !135, line: 734, size: 10240, elements: !1683)
!1683 = !{!1684, !1688, !1701, !1705, !1706, !1707, !1708, !1709, !1710, !1719, !1720, !1721, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1760, !1762, !1765, !1812, !1813, !1814, !1817, !1818, !1819, !1822, !1823, !1824, !1830, !1831}
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !135, line: 739, baseType: !1685, size: 512, align: 512)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !135, line: 739, size: 512, align: 512, elements: !1686)
!1686 = !{!1687}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1685, file: !135, line: 747, baseType: !52, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1682, file: !135, line: 750, baseType: !1689, size: 128, offset: 512)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1690, line: 218, size: 128, elements: !1691)
!1690 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1691 = !{!1692, !1699, !1700}
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1689, file: !1690, line: 219, baseType: !1693, size: 32)
!1693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1689, file: !1690, line: 219, size: 32, elements: !1694)
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1693, file: !1690, line: 220, baseType: !62, size: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1693, file: !1690, line: 221, baseType: !1697)
!1697 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1690, line: 197, baseType: !1698)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1690, line: 197, elements: !473)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1689, file: !1690, line: 223, baseType: !7, size: 32, offset: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1689, file: !1690, line: 224, baseType: !23, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1682, file: !135, line: 752, baseType: !1702, size: 64, offset: 640)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!42, !1230, !42, !42, !42, !42}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1682, file: !135, line: 756, baseType: !42, size: 64, offset: 704)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1682, file: !135, line: 757, baseType: !42, size: 64, offset: 768)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1682, file: !135, line: 760, baseType: !42, size: 64, offset: 832)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1682, file: !135, line: 761, baseType: !42, size: 64, offset: 896)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1682, file: !135, line: 763, baseType: !42, size: 64, offset: 960)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1682, file: !135, line: 764, baseType: !1711, size: 64, offset: 1024)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1713, line: 299, baseType: !1714)
!1713 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1713, line: 299, size: 64, elements: !1715)
!1715 = !{!1716}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1714, file: !1713, line: 299, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1718, line: 18, baseType: !42)
!1718 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1682, file: !135, line: 773, baseType: !52, size: 32, offset: 1088)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1682, file: !135, line: 785, baseType: !52, size: 32, offset: 1120)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1682, file: !135, line: 795, baseType: !1722, size: 64, offset: 1152)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !135, line: 726, size: 128, elements: !1724)
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1723, file: !135, line: 727, baseType: !482, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1723, file: !135, line: 728, baseType: !25, size: 32, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1682, file: !135, line: 801, baseType: !42, size: 64, offset: 1216)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1682, file: !135, line: 804, baseType: !543, size: 64, offset: 1280)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1682, file: !135, line: 806, baseType: !25, size: 32, offset: 1344)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1682, file: !135, line: 808, baseType: !62, size: 32, offset: 1376)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1682, file: !135, line: 823, baseType: !743, size: 320, offset: 1408)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1682, file: !135, line: 825, baseType: !100, size: 128, offset: 1728)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1682, file: !135, line: 845, baseType: !25, size: 32, offset: 1856)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1682, file: !135, line: 849, baseType: !42, size: 64, offset: 1920)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1682, file: !135, line: 850, baseType: !42, size: 64, offset: 1984)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1682, file: !135, line: 852, baseType: !42, size: 64, offset: 2048)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1682, file: !135, line: 853, baseType: !42, size: 64, offset: 2112)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1682, file: !135, line: 854, baseType: !545, size: 64, offset: 2176)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1682, file: !135, line: 855, baseType: !42, size: 64, offset: 2240)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1682, file: !135, line: 856, baseType: !42, size: 64, offset: 2304)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1682, file: !135, line: 857, baseType: !42, size: 64, offset: 2368)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1682, file: !135, line: 858, baseType: !42, size: 64, offset: 2432)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1682, file: !135, line: 865, baseType: !1084, size: 32, offset: 2496)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1682, file: !135, line: 867, baseType: !62, size: 32, offset: 2528)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1682, file: !135, line: 869, baseType: !42, size: 64, offset: 2560)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1682, file: !135, line: 869, baseType: !42, size: 64, offset: 2624)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1682, file: !135, line: 869, baseType: !42, size: 64, offset: 2688)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1682, file: !135, line: 869, baseType: !42, size: 64, offset: 2752)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1682, file: !135, line: 870, baseType: !42, size: 64, offset: 2816)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1682, file: !135, line: 870, baseType: !42, size: 64, offset: 2880)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1682, file: !135, line: 870, baseType: !42, size: 64, offset: 2944)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1682, file: !135, line: 871, baseType: !42, size: 64, offset: 3008)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1682, file: !135, line: 871, baseType: !42, size: 64, offset: 3072)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1682, file: !135, line: 871, baseType: !42, size: 64, offset: 3136)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1682, file: !135, line: 871, baseType: !42, size: 64, offset: 3200)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1682, file: !135, line: 873, baseType: !1757, size: 3328, offset: 3264)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 3328, elements: !1758)
!1758 = !{!1759}
!1759 = !DISubrange(count: 52)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1682, file: !135, line: 875, baseType: !1761, size: 1280, offset: 6592)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, size: 1280, elements: !660)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1682, file: !135, line: 877, baseType: !1763, size: 64, offset: 7872)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !135, line: 877, flags: DIFlagFwdDecl)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1682, file: !135, line: 880, baseType: !1766, size: 1088, offset: 7936)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1767, line: 72, baseType: !1768)
!1767 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1767, line: 23, size: 1088, elements: !1769)
!1769 = !{!1770, !1771, !1772, !1773, !1774, !1777, !1778, !1779, !1780, !1807, !1808, !1809}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1768, file: !1767, line: 28, baseType: !482, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1768, file: !1767, line: 38, baseType: !545, size: 64, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1768, file: !1767, line: 40, baseType: !42, size: 64, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1768, file: !1767, line: 43, baseType: !743, size: 320, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1768, file: !1767, line: 44, baseType: !1775, size: 64, offset: 512)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1767, line: 44, flags: DIFlagFwdDecl)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1768, file: !1767, line: 48, baseType: !42, size: 64, offset: 576)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1768, file: !1767, line: 59, baseType: !539, size: 256, offset: 640)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1768, file: !1767, line: 60, baseType: !23, size: 64, offset: 896)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1768, file: !1767, line: 61, baseType: !1781, size: 64, offset: 960)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1783)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1784, line: 13, size: 1216, elements: !1785)
!1784 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1785 = !{!1786, !1787, !1788, !1789, !1790, !1791, !1792, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1783, file: !1784, line: 14, baseType: !23, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1783, file: !1784, line: 15, baseType: !42, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1783, file: !1784, line: 17, baseType: !42, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1783, file: !1784, line: 17, baseType: !42, size: 64, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1783, file: !1784, line: 18, baseType: !42, size: 64, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1783, file: !1784, line: 18, baseType: !42, size: 64, offset: 320)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1783, file: !1784, line: 19, baseType: !1793, size: 64, offset: 384)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1783, file: !1784, line: 21, baseType: !1037, size: 64, offset: 448)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1783, file: !1784, line: 23, baseType: !1037, size: 64, offset: 512)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1783, file: !1784, line: 24, baseType: !1037, size: 64, offset: 576)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1783, file: !1784, line: 25, baseType: !1037, size: 64, offset: 640)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1783, file: !1784, line: 26, baseType: !1037, size: 64, offset: 704)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1783, file: !1784, line: 27, baseType: !1037, size: 64, offset: 768)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1783, file: !1784, line: 28, baseType: !1037, size: 64, offset: 832)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1783, file: !1784, line: 29, baseType: !1037, size: 64, offset: 896)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1783, file: !1784, line: 30, baseType: !1037, size: 64, offset: 960)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1783, file: !1784, line: 31, baseType: !1037, size: 64, offset: 1024)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1783, file: !1784, line: 32, baseType: !1037, size: 64, offset: 1088)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1783, file: !1784, line: 33, baseType: !1037, size: 64, offset: 1152)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1768, file: !1767, line: 63, baseType: !52, size: 32, offset: 1024)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1768, file: !1767, line: 69, baseType: !96, size: 16, offset: 1056)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1768, file: !1767, line: 70, baseType: !1810, size: 16, offset: 1072)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !87, line: 18, baseType: !1811)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !89, line: 23, baseType: !773)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1682, file: !135, line: 882, baseType: !42, size: 64, offset: 9024)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1682, file: !135, line: 885, baseType: !62, size: 32, offset: 9088)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1682, file: !135, line: 886, baseType: !1815, size: 64, offset: 9152)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !135, line: 732, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1682, file: !135, line: 901, baseType: !887, size: 64, offset: 9216)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1682, file: !135, line: 904, baseType: !1230, size: 64, offset: 9280)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1682, file: !135, line: 906, baseType: !1820, size: 64, offset: 9344)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !135, line: 906, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1682, file: !135, line: 930, baseType: !52, size: 32, offset: 9408)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1682, file: !135, line: 933, baseType: !52, size: 32, offset: 9440)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1682, file: !135, line: 935, baseType: !1825, size: 64, offset: 9472)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !270, line: 103, size: 64, elements: !1826)
!1826 = !{!1827}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1825, file: !270, line: 104, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !270, line: 101, flags: DIFlagFwdDecl)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1682, file: !135, line: 940, baseType: !543, size: 64, offset: 9536)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1682, file: !135, line: 942, baseType: !936, size: 256, offset: 9600)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1679, file: !135, line: 986, baseType: !1833, offset: 10240)
!1833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, elements: !673)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1666, file: !135, line: 640, baseType: !1835, size: 64, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1713, line: 297, baseType: !1836)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1713, line: 297, size: 64, elements: !1837)
!1837 = !{!1838}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1836, file: !1713, line: 297, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1718, line: 19, baseType: !42)
!1840 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !135, line: 646, baseType: !1841, size: 64, offset: 256)
!1841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1666, file: !135, line: 646, size: 64, elements: !1842)
!1842 = !{!1843, !1846}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1841, file: !135, line: 647, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1845)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !135, line: 542, baseType: !42)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1841, file: !135, line: 648, baseType: !1845, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1666, file: !135, line: 666, baseType: !25, size: 32, offset: 320)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1666, file: !135, line: 667, baseType: !1849, size: 64, offset: 384)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !135, line: 579, size: 320, elements: !1851)
!1851 = !{!1852}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1850, file: !135, line: 580, baseType: !743, size: 320)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1666, file: !135, line: 670, baseType: !804, size: 8, offset: 448)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1666, file: !135, line: 681, baseType: !1855, size: 256, offset: 512)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1666, file: !135, line: 678, size: 256, elements: !1856)
!1856 = !{!1857, !1858}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1855, file: !135, line: 679, baseType: !735, size: 192, align: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1855, file: !135, line: 680, baseType: !42, size: 64, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1666, file: !135, line: 689, baseType: !100, size: 128, offset: 768)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1666, file: !135, line: 691, baseType: !1861, size: 64, offset: 896)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !135, line: 691, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1666, file: !135, line: 694, baseType: !1864, size: 64, offset: 960)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1866)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1659, line: 563, size: 1024, elements: !1867)
!1867 = !{!1868, !1872, !1873, !1877, !1881, !1885, !1886, !1890, !1894, !1898, !1899, !1900, !1904, !1908, !1915, !1919}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1866, file: !1659, line: 564, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{null, !1665}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1866, file: !1659, line: 569, baseType: !1869, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1866, file: !1659, line: 571, baseType: !1874, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!25, !1665, !42}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1866, file: !1659, line: 572, baseType: !1878, size: 64, offset: 192)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!25, !1665}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1866, file: !1659, line: 578, baseType: !1882, size: 64, offset: 256)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!25, !1665, !42, !42, !42}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1866, file: !1659, line: 580, baseType: !1653, size: 64, offset: 320)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1866, file: !1659, line: 581, baseType: !1887, size: 64, offset: 384)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!1656, !1657, !7}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1866, file: !1659, line: 582, baseType: !1891, size: 64, offset: 448)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!1656, !1657, !42, !42}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1866, file: !1659, line: 584, baseType: !1895, size: 64, offset: 512)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!42, !1665}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1866, file: !1659, line: 588, baseType: !1653, size: 64, offset: 576)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1866, file: !1659, line: 591, baseType: !1653, size: 64, offset: 640)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1866, file: !1659, line: 597, baseType: !1901, size: 64, offset: 704)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!25, !1665, !42, !23, !25, !25}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1866, file: !1659, line: 603, baseType: !1905, size: 64, offset: 768)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!19, !1665}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1866, file: !1659, line: 613, baseType: !1909, size: 64, offset: 832)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!25, !1665, !1912}
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1914, line: 54, flags: DIFlagFwdDecl)
!1914 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1866, file: !1659, line: 625, baseType: !1916, size: 64, offset: 896)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!1912, !1665, !42}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1866, file: !1659, line: 633, baseType: !1920, size: 64, offset: 960)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!1555, !1665, !42}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1666, file: !135, line: 697, baseType: !42, size: 64, offset: 1024)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1666, file: !135, line: 699, baseType: !1230, size: 64, offset: 1088)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1666, file: !135, line: 700, baseType: !23, size: 64, offset: 1152)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1666, file: !135, line: 711, baseType: !543, size: 64, offset: 1216)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1666, file: !135, line: 717, baseType: !1912, size: 64, offset: 1280)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1666, file: !135, line: 722, baseType: !1929, offset: 1344)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !135, line: 570, elements: !473)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1662, file: !1659, line: 515, baseType: !1318, size: 32, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1662, file: !1659, line: 516, baseType: !42, size: 64, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1662, file: !1659, line: 517, baseType: !42, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1662, file: !1659, line: 518, baseType: !42, size: 64, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1658, file: !1659, line: 520, baseType: !134, size: 32, offset: 320)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1658, file: !1659, line: 522, baseType: !1936, size: 64, offset: 384)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1718, line: 22, baseType: !1938)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1718, line: 22, size: 64, elements: !1939)
!1939 = !{!1940}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1938, file: !1718, line: 22, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1718, line: 15, baseType: !42)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1658, file: !1659, line: 524, baseType: !1943, size: 64, offset: 448)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1713, line: 372, baseType: !1945)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1713, line: 372, size: 64, elements: !1946)
!1946 = !{!1947}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1945, file: !1713, line: 372, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1718, line: 16, baseType: !42)
!1949 = !DIDerivedType(tag: DW_TAG_member, scope: !1658, file: !1659, line: 527, baseType: !1950, size: 64, offset: 512)
!1950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1658, file: !1659, line: 527, size: 64, elements: !1951)
!1951 = !{!1952, !1958}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1950, file: !1659, line: 528, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1718, line: 21, baseType: !1954)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1718, line: 21, size: 64, elements: !1955)
!1955 = !{!1956}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1954, file: !1718, line: 21, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1718, line: 14, baseType: !42)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1950, file: !1659, line: 529, baseType: !1937, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1658, file: !1659, line: 534, baseType: !1555, size: 64, offset: 576)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1658, file: !1659, line: 535, baseType: !1555, size: 64, offset: 640)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1658, file: !1659, line: 541, baseType: !1962, size: 64, offset: 704)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1658, file: !1659, line: 545, baseType: !1964, size: 64, offset: 768)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1658, file: !1659, line: 549, baseType: !1966, size: 64, offset: 832)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1713, line: 520, baseType: !1555)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1646, file: !127, line: 100, baseType: !1968, size: 64, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!25, !1605, !42, !42, !25}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1606, file: !127, line: 134, baseType: !23, size: 64, offset: 960)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1606, file: !127, line: 135, baseType: !25, size: 32, offset: 1024)
!1973 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !127, line: 136, baseType: !1974, size: 128, offset: 1088)
!1974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !127, line: 136, size: 128, elements: !1975)
!1975 = !{!1976, !1982}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1974, file: !127, line: 137, baseType: !1977, size: 128)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1978, line: 6, size: 128, elements: !1979)
!1978 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1979 = !{!1980, !1981}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1977, file: !1978, line: 7, baseType: !482, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1977, file: !1978, line: 8, baseType: !482, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, scope: !1974, file: !127, line: 138, baseType: !1983)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1974, file: !127, line: 138, elements: !1984)
!1984 = !{!1985, !1987}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1983, file: !127, line: 138, baseType: !1986)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1983, file: !127, line: 138, elements: !473)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1983, file: !127, line: 138, baseType: !1988)
!1988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1977, elements: !673)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1602, file: !135, line: 147, baseType: !23, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1560, file: !135, line: 161, baseType: !595, size: 128, align: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, scope: !1556, file: !135, line: 164, baseType: !1992, size: 32, offset: 384)
!1992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1556, file: !135, line: 164, size: 32, elements: !1993)
!1993 = !{!1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1992, file: !135, line: 169, baseType: !52, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1992, file: !135, line: 177, baseType: !7, size: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1556, file: !135, line: 181, baseType: !52, size: 32, offset: 416)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !151, line: 42, size: 384, elements: !1999)
!1999 = !{!2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1998, file: !151, line: 43, baseType: !1037, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1998, file: !151, line: 45, baseType: !1037, size: 64, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1998, file: !151, line: 52, baseType: !44, size: 64, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1998, file: !151, line: 53, baseType: !44, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1998, file: !151, line: 55, baseType: !150, size: 32, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1998, file: !151, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1998, file: !151, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1998, file: !151, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1998, file: !151, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1998, file: !151, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1998, file: !151, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1998, file: !151, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1998, file: !151, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1998, file: !151, line: 78, baseType: !2014, size: 64, offset: 320)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !151, line: 78, flags: DIFlagFwdDecl)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1549, file: !183, line: 406, baseType: !2018, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!25, !1230, !2021}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !135, line: 293, size: 1536, elements: !2023)
!2023 = !{!2024, !2054, !2068}
!2024 = !DIDerivedType(tag: DW_TAG_member, scope: !2022, file: !135, line: 295, baseType: !2025, size: 512)
!2025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2022, file: !135, line: 295, size: 512, elements: !2026)
!2026 = !{!2027, !2053}
!2027 = !DIDerivedType(tag: DW_TAG_member, scope: !2025, file: !135, line: 296, baseType: !2028, size: 448)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2025, file: !135, line: 296, size: 448, elements: !2029)
!2029 = !{!2030, !2031, !2040, !2041, !2042, !2051, !2052}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2028, file: !135, line: 298, baseType: !42, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !135, line: 299, baseType: !2032, size: 128, offset: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !135, line: 299, size: 128, elements: !2033)
!2033 = !{!2034, !2035}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2032, file: !135, line: 300, baseType: !100, size: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, scope: !2032, file: !135, line: 302, baseType: !2036, size: 128)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2032, file: !135, line: 302, size: 128, elements: !2037)
!2037 = !{!2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2036, file: !135, line: 303, baseType: !23, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2036, file: !135, line: 305, baseType: !7, size: 32, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2028, file: !135, line: 310, baseType: !1531, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2028, file: !135, line: 311, baseType: !42, size: 64, offset: 256)
!2042 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !135, line: 312, baseType: !2043, size: 64, offset: 320)
!2043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !135, line: 312, size: 64, elements: !2044)
!2044 = !{!2045, !2046}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2043, file: !135, line: 313, baseType: !23, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2043, file: !135, line: 314, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !135, line: 257, baseType: !2048)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 255, size: 64, elements: !2049)
!2049 = !{!2050}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2048, file: !135, line: 256, baseType: !42, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2028, file: !135, line: 316, baseType: !52, size: 32, offset: 384)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2028, file: !135, line: 317, baseType: !52, size: 32, offset: 416)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2025, file: !135, line: 323, baseType: !1556, size: 512, align: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, scope: !2022, file: !135, line: 325, baseType: !2055, size: 512, offset: 512)
!2055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2022, file: !135, line: 325, size: 512, elements: !2056)
!2056 = !{!2057, !2067}
!2057 = !DIDerivedType(tag: DW_TAG_member, scope: !2055, file: !135, line: 326, baseType: !2058, size: 320)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2055, file: !135, line: 326, size: 320, elements: !2059)
!2059 = !{!2060, !2061, !2062, !2063, !2064, !2065, !2066}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2058, file: !135, line: 327, baseType: !42, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2058, file: !135, line: 328, baseType: !42, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2058, file: !135, line: 329, baseType: !42, size: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2058, file: !135, line: 331, baseType: !52, size: 32, offset: 192)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2058, file: !135, line: 332, baseType: !52, size: 32, offset: 224)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2058, file: !135, line: 333, baseType: !52, size: 32, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2058, file: !135, line: 335, baseType: !7, size: 32, offset: 288)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2055, file: !135, line: 339, baseType: !1556, size: 512, align: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2022, file: !135, line: 341, baseType: !2069, size: 512, offset: 1024)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2022, file: !135, line: 341, size: 512, elements: !2070)
!2070 = !{!2071, !2080, !2086}
!2071 = !DIDerivedType(tag: DW_TAG_member, scope: !2069, file: !135, line: 342, baseType: !2072, size: 384)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2069, file: !135, line: 342, size: 384, elements: !2073)
!2073 = !{!2074, !2075, !2076, !2077, !2078, !2079}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2072, file: !135, line: 343, baseType: !42, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2072, file: !135, line: 344, baseType: !42, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2072, file: !135, line: 346, baseType: !23, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2072, file: !135, line: 347, baseType: !23, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2072, file: !135, line: 348, baseType: !23, size: 64, offset: 256)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2072, file: !135, line: 349, baseType: !23, size: 64, offset: 320)
!2080 = !DIDerivedType(tag: DW_TAG_member, scope: !2069, file: !135, line: 352, baseType: !2081, size: 256)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2069, file: !135, line: 352, size: 256, elements: !2082)
!2082 = !{!2083, !2084, !2085}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2081, file: !135, line: 353, baseType: !42, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2081, file: !135, line: 354, baseType: !42, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2081, file: !135, line: 356, baseType: !100, size: 128, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2069, file: !135, line: 359, baseType: !1556, size: 512, align: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1549, file: !183, line: 409, baseType: !2088, size: 64, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!25, !1531, !1997}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1549, file: !183, line: 412, baseType: !2092, size: 64, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!804, !1531, !2021}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1549, file: !183, line: 414, baseType: !2096, size: 64, offset: 256)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{null, !2099}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !183, line: 310, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1549, file: !183, line: 416, baseType: !2102, size: 64, offset: 320)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!25, !1230, !1531, !44, !7, !2105, !2106}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1549, file: !183, line: 419, baseType: !2108, size: 64, offset: 384)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!25, !1230, !1531, !44, !7, !7, !1555, !23}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1549, file: !183, line: 424, baseType: !2112, size: 64, offset: 448)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!2115, !1531, !2115}
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !28, line: 131, baseType: !482)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1549, file: !183, line: 425, baseType: !2117, size: 64, offset: 512)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !2021, !38, !38}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1549, file: !183, line: 426, baseType: !2121, size: 64, offset: 576)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!804, !2021, !1318}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1549, file: !183, line: 427, baseType: !2125, size: 64, offset: 640)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{null, !2021}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1549, file: !183, line: 428, baseType: !2129, size: 64, offset: 704)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!1266, !2132, !2154}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !183, line: 373, size: 384, elements: !2134)
!2134 = !{!2135, !2136, !2137, !2141, !2142, !2143, !2144}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2133, file: !183, line: 374, baseType: !1230, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2133, file: !183, line: 375, baseType: !44, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2133, file: !183, line: 376, baseType: !2138, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{null, !2132, !1037}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2133, file: !183, line: 377, baseType: !23, size: 64, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2133, file: !183, line: 378, baseType: !25, size: 32, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2133, file: !183, line: 379, baseType: !96, size: 16, offset: 288)
!2144 = !DIDerivedType(tag: DW_TAG_member, scope: !2133, file: !183, line: 380, baseType: !2145, size: 64, offset: 320)
!2145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2133, file: !183, line: 380, size: 64, elements: !2146)
!2146 = !{!2147, !2150}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2145, file: !183, line: 386, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !183, line: 386, flags: DIFlagFwdDecl)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2145, file: !183, line: 395, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!1266, !23}
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !183, line: 69, flags: DIFlagFwdDecl)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1549, file: !183, line: 433, baseType: !2157, size: 64, offset: 768)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!25, !1531, !2021, !2021, !155}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1549, file: !183, line: 435, baseType: !2161, size: 64, offset: 832)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!25, !2021}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1549, file: !183, line: 436, baseType: !2165, size: 64, offset: 896)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!804, !2021, !38, !38}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1549, file: !183, line: 438, baseType: !2169, size: 64, offset: 960)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{null, !2021, !2172, !2172}
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1549, file: !183, line: 439, baseType: !2174, size: 64, offset: 1024)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!25, !1531, !1555}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1549, file: !183, line: 442, baseType: !2178, size: 64, offset: 1088)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!25, !2181, !1230, !2183}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !183, line: 66, flags: DIFlagFwdDecl)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1549, file: !183, line: 444, baseType: !2185, size: 64, offset: 1152)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{null, !1230}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1549, file: !183, line: 445, baseType: !2189, size: 64, offset: 1216)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!25, !2132, !2154}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1532, file: !183, line: 486, baseType: !42, size: 64, offset: 896)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1532, file: !183, line: 487, baseType: !743, size: 320, offset: 960)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1532, file: !183, line: 488, baseType: !2195, size: 32, offset: 1280)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2196, line: 8, baseType: !768)
!2196 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1532, file: !183, line: 489, baseType: !62, size: 32, offset: 1312)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1532, file: !183, line: 490, baseType: !100, size: 128, offset: 1344)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1532, file: !183, line: 491, baseType: !23, size: 64, offset: 1472)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1522, file: !1491, line: 180, baseType: !2201, size: 64, offset: 320)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!1266, !1230, !1433, !1521, !531, !44, !38}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1522, file: !1491, line: 182, baseType: !2201, size: 64, offset: 384)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1522, file: !1491, line: 184, baseType: !2206, size: 64, offset: 448)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!25, !1230, !1433, !1521, !1665}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1510, file: !1491, line: 90, baseType: !2210, size: 64, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1510, file: !1491, line: 91, baseType: !2212, size: 64, offset: 256)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1481, file: !1428, line: 120, baseType: !2214, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!2217, !1451}
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2219)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !163, line: 39, size: 384, elements: !2220)
!2220 = !{!2221, !2222, !2226, !2230, !2237, !2241}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2219, file: !163, line: 40, baseType: !162, size: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2219, file: !163, line: 41, baseType: !2223, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!804}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2219, file: !163, line: 42, baseType: !2227, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!23}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2219, file: !163, line: 43, baseType: !2231, size: 64, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!1793, !2234}
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !2236, line: 177, flags: DIFlagFwdDecl)
!2236 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2219, file: !163, line: 44, baseType: !2238, size: 64, offset: 256)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!1793}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2219, file: !163, line: 45, baseType: !1144, size: 64, offset: 320)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1481, file: !1428, line: 121, baseType: !2243, size: 64, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!1793, !1451}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1481, file: !1428, line: 122, baseType: !2247, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !1451, !1000, !1001}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1427, file: !1428, line: 70, baseType: !2251, size: 64, offset: 384)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2253, line: 190, size: 1152, elements: !2254)
!2253 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2254 = !{!2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2338, !2339, !2340, !2341, !2342, !2345}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2252, file: !2253, line: 191, baseType: !52, size: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2252, file: !2253, line: 192, baseType: !52, size: 32, offset: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2252, file: !2253, line: 202, baseType: !2251, size: 64, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2252, file: !2253, line: 203, baseType: !19, size: 64, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2252, file: !2253, line: 205, baseType: !735, size: 192, align: 64, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2252, file: !2253, line: 207, baseType: !1793, size: 64, offset: 384)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2252, file: !2253, line: 208, baseType: !7, size: 32, offset: 448)
!2262 = !DIDerivedType(tag: DW_TAG_member, scope: !2252, file: !2253, line: 209, baseType: !2263, size: 256, offset: 512)
!2263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2252, file: !2253, line: 209, size: 256, elements: !2264)
!2264 = !{!2265, !2274, !2278}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2263, file: !2253, line: 210, baseType: !2266, size: 256)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2253, line: 153, size: 256, elements: !2267)
!2267 = !{!2268, !2269, !2270, !2273}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2266, file: !2253, line: 154, baseType: !42, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2266, file: !2253, line: 156, baseType: !1017, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2266, file: !2253, line: 162, baseType: !2271, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2253, line: 162, flags: DIFlagFwdDecl)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2266, file: !2253, line: 167, baseType: !42, size: 64, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2263, file: !2253, line: 211, baseType: !2275, size: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2253, line: 170, size: 64, elements: !2276)
!2276 = !{!2277}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2275, file: !2253, line: 171, baseType: !2251, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2263, file: !2253, line: 212, baseType: !2279, size: 256)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2253, line: 174, size: 256, elements: !2280)
!2280 = !{!2281, !2333, !2336, !2337}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2279, file: !2253, line: 175, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2284)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2253, line: 271, size: 768, elements: !2285)
!2285 = !{!2286, !2306, !2310, !2311, !2312, !2313, !2314, !2318, !2319, !2320, !2321, !2329}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2284, file: !2253, line: 276, baseType: !2287, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!25, !2290}
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2253, line: 251, size: 1216, elements: !2292)
!2292 = !{!2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2291, file: !2253, line: 253, baseType: !2251, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2291, file: !2253, line: 254, baseType: !1230, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2291, file: !2253, line: 255, baseType: !526, size: 64, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2291, file: !2253, line: 256, baseType: !23, size: 64, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2291, file: !2253, line: 259, baseType: !539, size: 256, offset: 256)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2291, file: !2253, line: 260, baseType: !539, size: 256, offset: 512)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2291, file: !2253, line: 261, baseType: !25, size: 32, offset: 768)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2291, file: !2253, line: 262, baseType: !100, size: 128, offset: 832)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2291, file: !2253, line: 263, baseType: !531, size: 64, offset: 960)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2291, file: !2253, line: 265, baseType: !38, size: 64, offset: 1024)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2291, file: !2253, line: 266, baseType: !804, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2291, file: !2253, line: 267, baseType: !804, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2291, file: !2253, line: 268, baseType: !1864, size: 64, offset: 1152)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2284, file: !2253, line: 277, baseType: !2307, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{null, !2290}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2284, file: !2253, line: 290, baseType: !576, size: 64, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2284, file: !2253, line: 292, baseType: !564, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2284, file: !2253, line: 293, baseType: !572, size: 64, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2284, file: !2253, line: 294, baseType: !568, size: 64, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2284, file: !2253, line: 296, baseType: !2315, size: 64, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!1266, !2290, !531, !38, !44}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2284, file: !2253, line: 306, baseType: !38, size: 64, offset: 448)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2284, file: !2253, line: 313, baseType: !804, size: 8, offset: 512)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2284, file: !2253, line: 314, baseType: !2315, size: 64, offset: 576)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2284, file: !2253, line: 317, baseType: !2322, size: 64, offset: 640)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!2325, !2290, !2327}
!2325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2326, line: 59, baseType: !7)
!2326 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !183, line: 61, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2284, file: !2253, line: 320, baseType: !2330, size: 64, offset: 704)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!25, !2290, !1665}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2279, file: !2253, line: 176, baseType: !2334, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2253, line: 35, flags: DIFlagFwdDecl)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2279, file: !2253, line: 177, baseType: !44, size: 64, offset: 128)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2279, file: !2253, line: 178, baseType: !2251, size: 64, offset: 192)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2252, file: !2253, line: 215, baseType: !23, size: 64, offset: 768)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2252, file: !2253, line: 221, baseType: !482, size: 64, offset: 832)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2252, file: !2253, line: 223, baseType: !29, size: 16, offset: 896)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2252, file: !2253, line: 224, baseType: !27, size: 16, offset: 912)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2252, file: !2253, line: 225, baseType: !2343, size: 64, offset: 960)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2253, line: 36, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2252, file: !2253, line: 227, baseType: !595, size: 128, align: 64, offset: 1024)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1427, file: !1428, line: 71, baseType: !2347, size: 32, offset: 448)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2348, line: 19, size: 32, elements: !2349)
!2348 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2349 = !{!2350}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2347, file: !2348, line: 20, baseType: !642, size: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1427, file: !1428, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1427, file: !1428, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1427, file: !1428, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1427, file: !1428, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1427, file: !1428, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1424, file: !120, line: 47, baseType: !1414, size: 64, offset: 512)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1424, file: !120, line: 48, baseType: !1433, size: 64, offset: 576)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1424, file: !120, line: 49, baseType: !2359, size: 64, offset: 640)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !120, line: 49, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1424, file: !120, line: 50, baseType: !974, size: 64, offset: 704)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1415, file: !120, line: 418, baseType: !2363, size: 64, offset: 1408)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !120, line: 53, size: 448, elements: !2365)
!2365 = !{!2366, !2367, !2372, !2376, !2380, !2384}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2364, file: !120, line: 54, baseType: !1498, size: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2364, file: !120, line: 55, baseType: !2368, size: 64, offset: 128)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!1266, !2363, !2371, !531}
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2364, file: !120, line: 57, baseType: !2373, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!1266, !2363, !2371, !19, !38}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2364, file: !120, line: 59, baseType: !2377, size: 64, offset: 256)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{null, !1414, !19}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2364, file: !120, line: 60, baseType: !2381, size: 64, offset: 320)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!25, !1414}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2364, file: !120, line: 61, baseType: !2385, size: 64, offset: 384)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !1414}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1415, file: !120, line: 419, baseType: !19, size: 64, offset: 1472)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1415, file: !120, line: 420, baseType: !19, size: 64, offset: 1536)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1415, file: !120, line: 421, baseType: !1433, size: 64, offset: 1600)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1415, file: !120, line: 424, baseType: !2392, size: 64, offset: 1664)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2394)
!2394 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !120, line: 424, flags: DIFlagFwdDecl)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1415, file: !120, line: 425, baseType: !2396, size: 64, offset: 1728)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1415, file: !120, line: 426, baseType: !7, size: 32, offset: 1792)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1415, file: !120, line: 435, baseType: !539, size: 256, offset: 1856)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1415, file: !120, line: 437, baseType: !2401, size: 64, offset: 2112)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2403, line: 69, size: 320, elements: !2404)
!2403 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2404 = !{!2405, !2406, !2407, !2424, !2426, !2430, !2431}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2402, file: !2403, line: 70, baseType: !19, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2402, file: !2403, line: 71, baseType: !1414, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2402, file: !2403, line: 72, baseType: !2408, size: 64, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2410)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2403, line: 47, size: 256, elements: !2411)
!2411 = !{!2412, !2413, !2419, !2423}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2410, file: !2403, line: 49, baseType: !7, size: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2410, file: !2403, line: 51, baseType: !2414, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!25, !19, !2417}
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2402)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2410, file: !2403, line: 53, baseType: !2420, size: 64, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!25, !531, !2417}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2410, file: !2403, line: 55, baseType: !1144, size: 64, offset: 192)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2402, file: !2403, line: 73, baseType: !2425, size: 16, offset: 192)
!2425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2402, file: !2403, line: 74, baseType: !2427, size: 8, offset: 208)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !87, line: 16, baseType: !2428)
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !89, line: 20, baseType: !2429)
!2429 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2402, file: !2403, line: 75, baseType: !86, size: 8, offset: 216)
!2431 = !DIDerivedType(tag: DW_TAG_member, scope: !2402, file: !2403, line: 76, baseType: !2432, size: 64, offset: 256)
!2432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2402, file: !2403, line: 76, size: 64, elements: !2433)
!2433 = !{!2434, !2435, !2442}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2432, file: !2403, line: 77, baseType: !23, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2432, file: !2403, line: 78, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2438)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2403, line: 86, size: 128, elements: !2439)
!2439 = !{!2440, !2441}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2438, file: !2403, line: 87, baseType: !7, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2438, file: !2403, line: 88, baseType: !531, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2432, file: !2403, line: 79, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2445)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2403, line: 92, size: 256, elements: !2446)
!2446 = !{!2447, !2448, !2449, !2451, !2452}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2445, file: !2403, line: 94, baseType: !7, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2445, file: !2403, line: 95, baseType: !7, size: 32, offset: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2445, file: !2403, line: 96, baseType: !2450, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2445, file: !2403, line: 97, baseType: !2408, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2445, file: !2403, line: 98, baseType: !23, size: 64, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1415, file: !120, line: 438, baseType: !7, size: 32, offset: 2176)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1415, file: !120, line: 441, baseType: !7, size: 32, offset: 2208)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1415, file: !120, line: 442, baseType: !2392, size: 64, offset: 2240)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1415, file: !120, line: 443, baseType: !2396, size: 64, offset: 2304)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1415, file: !120, line: 444, baseType: !804, size: 8, offset: 2368)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1415, file: !120, line: 451, baseType: !804, size: 8, offset: 2376)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1415, file: !120, line: 454, baseType: !7, size: 32, offset: 2400)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1415, file: !120, line: 455, baseType: !2461, size: 64, offset: 2432)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2463, line: 23, size: 96, elements: !2464)
!2463 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2464 = !{!2465, !2466, !2467}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2462, file: !2463, line: 24, baseType: !25, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2462, file: !2463, line: 24, baseType: !25, size: 32, offset: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2462, file: !2463, line: 24, baseType: !25, size: 32, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1415, file: !120, line: 458, baseType: !2469, size: 64, offset: 2496)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!25}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1415, file: !120, line: 460, baseType: !2473, size: 4032, align: 512, offset: 2560)
!2473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2474, size: 4032, elements: !2490)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !120, line: 362, size: 576, elements: !2475)
!2475 = !{!2476, !2477, !2478}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2474, file: !120, line: 363, baseType: !23, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2474, file: !120, line: 364, baseType: !7, size: 32, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2474, file: !120, line: 367, baseType: !2479, size: 448, offset: 128)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !120, line: 319, size: 448, elements: !2480)
!2480 = !{!2481, !2482}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2479, file: !120, line: 320, baseType: !1414, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2479, file: !120, line: 321, baseType: !2483, size: 384, offset: 64)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2484, line: 40, size: 384, elements: !2485)
!2484 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2485 = !{!2486}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2483, file: !2484, line: 41, baseType: !2487, size: 384, align: 64)
!2487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 384, align: 64, elements: !2488)
!2488 = !{!2489}
!2489 = !DISubrange(count: 2)
!2490 = !{!2491}
!2491 = !DISubrange(count: 7)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1415, file: !120, line: 463, baseType: !2493, size: 192, offset: 6592)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2494, line: 8, size: 192, elements: !2495)
!2494 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2495 = !{!2496, !2497, !2499}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2493, file: !2494, line: 10, baseType: !7, size: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2493, file: !2494, line: 11, baseType: !2498, size: 64, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2493, file: !2494, line: 12, baseType: !2500, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2502, line: 59, size: 48, elements: !2503)
!2502 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2503 = !{!2504, !2505, !2506, !2507, !2508, !2509}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2501, file: !2502, line: 60, baseType: !1810, size: 16)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2501, file: !2502, line: 61, baseType: !1810, size: 16, offset: 16)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2501, file: !2502, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2501, file: !2502, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2501, file: !2502, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2501, file: !2502, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1415, file: !120, line: 465, baseType: !42, size: 64, offset: 6784)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1415, file: !120, line: 469, baseType: !7, size: 32, offset: 6848)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1415, file: !120, line: 470, baseType: !100, size: 128, offset: 6912)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1415, file: !120, line: 471, baseType: !2514, size: 64, offset: 7040)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2516, line: 33, size: 96, elements: !2517)
!2516 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2517 = !{!2518, !2519, !2520, !2521}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2515, file: !2516, line: 37, baseType: !25, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2515, file: !2516, line: 43, baseType: !25, size: 32, offset: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2515, file: !2516, line: 45, baseType: !29, size: 16, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2515, file: !2516, line: 47, baseType: !29, size: 16, offset: 80)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1415, file: !120, line: 476, baseType: !2523, size: 64, offset: 7104)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !120, line: 378, size: 256, elements: !2525)
!2525 = !{!2526, !2542, !2543, !2544}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2524, file: !120, line: 379, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2529, line: 204, baseType: !2530)
!2529 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2529, line: 197, size: 192, elements: !2531)
!2531 = !{!2532, !2534, !2535, !2536, !2538, !2540}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2530, file: !2529, line: 198, baseType: !2533, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2529, line: 21, baseType: !769)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2530, file: !2529, line: 199, baseType: !90, size: 8, offset: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2530, file: !2529, line: 200, baseType: !90, size: 8, offset: 40)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2530, file: !2529, line: 201, baseType: !2537, size: 16, offset: 48)
!2537 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2529, line: 17, baseType: !97)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2530, file: !2529, line: 202, baseType: !2539, size: 64, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2529, line: 16, baseType: !483)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2530, file: !2529, line: 203, baseType: !2541, size: 64, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2529, line: 22, baseType: !483)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2524, file: !120, line: 380, baseType: !7, size: 32, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2524, file: !120, line: 381, baseType: !531, size: 64, offset: 128)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2524, file: !120, line: 382, baseType: !531, size: 64, offset: 192)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1415, file: !120, line: 477, baseType: !2524, size: 256, offset: 7168)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1415, file: !120, line: 480, baseType: !2547, size: 64, offset: 7424)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !120, line: 480, flags: DIFlagFwdDecl)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1415, file: !120, line: 483, baseType: !2550, size: 64, offset: 7488)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !120, line: 483, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1415, file: !120, line: 488, baseType: !531, size: 64, offset: 7552)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1415, file: !120, line: 492, baseType: !23, size: 64, offset: 7616)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1415, file: !120, line: 493, baseType: !7, size: 32, offset: 7680)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1415, file: !120, line: 495, baseType: !23, size: 64, offset: 7744)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1415, file: !120, line: 496, baseType: !7, size: 32, offset: 7808)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1415, file: !120, line: 499, baseType: !7, size: 32, offset: 7840)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1415, file: !120, line: 500, baseType: !2559, size: 64, offset: 7872)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2561, line: 45, baseType: !2562)
!2561 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1415, file: !120, line: 503, baseType: !7, size: 32, offset: 7936)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1415, file: !120, line: 504, baseType: !2565, size: 64, offset: 8000)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2568, line: 96, size: 192, elements: !2569)
!2568 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2569 = !{!2570, !2571, !2624, !2627}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2567, file: !2568, line: 97, baseType: !7, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2567, file: !2568, line: 98, baseType: !2572, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2568, line: 24, size: 3072, elements: !2574)
!2574 = !{!2575, !2577, !2578, !2579, !2580, !2593, !2594, !2595, !2596, !2608, !2609, !2610, !2621, !2622, !2623}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2573, file: !2568, line: 26, baseType: !2576, size: 128)
!2576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 128, elements: !2488)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2573, file: !2568, line: 27, baseType: !2576, size: 128, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2573, file: !2568, line: 28, baseType: !25, size: 32, offset: 256)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2573, file: !2568, line: 31, baseType: !62, size: 32, align: 512, offset: 512)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2573, file: !2568, line: 32, baseType: !2581, size: 960, offset: 576)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2582, line: 206, size: 960, elements: !2583)
!2582 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2583 = !{!2584, !2585, !2588, !2590, !2591, !2592}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2581, file: !2582, line: 207, baseType: !598, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2581, file: !2582, line: 208, baseType: !2586, size: 256, offset: 64)
!2586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2587, size: 256, elements: !660)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2581, file: !2582, line: 209, baseType: !2589, size: 256, offset: 320)
!2589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !660)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2581, file: !2582, line: 213, baseType: !1037, size: 64, offset: 576)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2581, file: !2582, line: 215, baseType: !1039, size: 256, offset: 640)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2581, file: !2582, line: 216, baseType: !86, size: 8, offset: 896)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2573, file: !2568, line: 33, baseType: !42, size: 64, offset: 1536)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2573, file: !2568, line: 34, baseType: !42, size: 64, offset: 1600)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2573, file: !2568, line: 35, baseType: !804, size: 8, offset: 1664)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2573, file: !2568, line: 36, baseType: !2597, size: 320, offset: 1728)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2598, line: 11, size: 320, elements: !2599)
!2598 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2599 = !{!2600, !2601, !2602, !2607}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2597, file: !2598, line: 16, baseType: !655, size: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2597, file: !2598, line: 17, baseType: !42, size: 64, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2597, file: !2598, line: 18, baseType: !2603, size: 64, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{null, !2606}
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2597, file: !2598, line: 19, baseType: !768, size: 32, offset: 256)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2573, file: !2568, line: 37, baseType: !936, size: 256, offset: 2048)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2573, file: !2568, line: 38, baseType: !595, size: 128, align: 64, offset: 2304)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2573, file: !2568, line: 39, baseType: !2611, size: 64, offset: 2432)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2568, line: 49, size: 768, elements: !2613)
!2613 = !{!2614, !2615, !2616, !2617, !2618, !2619, !2620}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2612, file: !2568, line: 50, baseType: !62, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2612, file: !2568, line: 51, baseType: !2589, size: 256, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2612, file: !2568, line: 53, baseType: !2589, size: 256, offset: 320)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2612, file: !2568, line: 54, baseType: !42, size: 64, offset: 576)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2612, file: !2568, line: 55, baseType: !2611, size: 64, offset: 640)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2612, file: !2568, line: 56, baseType: !25, size: 32, offset: 704)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2612, file: !2568, line: 57, baseType: !25, size: 32, offset: 736)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2573, file: !2568, line: 40, baseType: !42, size: 64, offset: 2496)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2573, file: !2568, line: 42, baseType: !25, size: 32, offset: 2560)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2573, file: !2568, line: 43, baseType: !2566, size: 64, offset: 2624)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2567, file: !2568, line: 99, baseType: !2625, offset: 128)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2626, line: 211, elements: !473)
!2626 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2567, file: !2568, line: 100, baseType: !2628, size: 64, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2568, line: 63, size: 3008, elements: !2630)
!2630 = !{!2631, !2632, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2662}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2629, file: !2568, line: 64, baseType: !2611, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2629, file: !2568, line: 65, baseType: !2633, size: 192, offset: 64)
!2633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2611, size: 192, elements: !634)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2629, file: !2568, line: 67, baseType: !25, size: 32, offset: 256)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2629, file: !2568, line: 68, baseType: !539, size: 256, offset: 320)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2629, file: !2568, line: 69, baseType: !62, size: 32, offset: 576)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2629, file: !2568, line: 70, baseType: !539, size: 256, offset: 640)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2629, file: !2568, line: 71, baseType: !42, size: 64, offset: 896)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2629, file: !2568, line: 72, baseType: !42, size: 64, offset: 960)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2629, file: !2568, line: 73, baseType: !42, size: 64, offset: 1024)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2629, file: !2568, line: 74, baseType: !42, size: 64, offset: 1088)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2629, file: !2568, line: 75, baseType: !42, size: 64, offset: 1152)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2629, file: !2568, line: 76, baseType: !42, size: 64, offset: 1216)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2629, file: !2568, line: 77, baseType: !42, size: 64, offset: 1280)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2629, file: !2568, line: 78, baseType: !42, size: 64, offset: 1344)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2629, file: !2568, line: 79, baseType: !804, size: 8, offset: 1408)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2629, file: !2568, line: 80, baseType: !42, size: 64, offset: 1472)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2629, file: !2568, line: 81, baseType: !539, size: 256, offset: 1536)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2629, file: !2568, line: 82, baseType: !975, size: 256, offset: 1792)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2629, file: !2568, line: 84, baseType: !52, size: 32, offset: 2048)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2629, file: !2568, line: 87, baseType: !42, size: 64, offset: 2112)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2629, file: !2568, line: 88, baseType: !42, size: 64, offset: 2176)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2629, file: !2568, line: 89, baseType: !2654, size: 704, offset: 2240)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !937, line: 111, size: 704, elements: !2655)
!2655 = !{!2656, !2657, !2658, !2661}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2654, file: !937, line: 112, baseType: !936, size: 256)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2654, file: !937, line: 113, baseType: !2597, size: 320, offset: 256)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2654, file: !937, line: 116, baseType: !2659, size: 64, offset: 576)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !937, line: 18, flags: DIFlagFwdDecl)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2654, file: !937, line: 117, baseType: !25, size: 32, offset: 640)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2629, file: !2568, line: 90, baseType: !2566, size: 64, offset: 2944)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1415, file: !120, line: 515, baseType: !2664, size: 64, offset: 8064)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2666, line: 117, size: 128, elements: !2667)
!2666 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2667 = !{!2668, !2669, !2670}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2665, file: !2666, line: 118, baseType: !728, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2665, file: !2666, line: 119, baseType: !728, size: 32, offset: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2665, file: !2666, line: 120, baseType: !1037, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1415, file: !120, line: 516, baseType: !7, size: 32, offset: 8128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1415, file: !120, line: 519, baseType: !7, size: 32, offset: 8160)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1415, file: !120, line: 520, baseType: !2674, size: 64, offset: 8192)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1415, file: !120, line: 523, baseType: !2676, size: 64, offset: 8256)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !120, line: 523, flags: DIFlagFwdDecl)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1415, file: !120, line: 524, baseType: !7, size: 32, offset: 8320)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1415, file: !120, line: 525, baseType: !2681, size: 64, offset: 8384)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !120, line: 525, flags: DIFlagFwdDecl)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1415, file: !120, line: 526, baseType: !7, size: 32, offset: 8448)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1415, file: !120, line: 533, baseType: !23, size: 64, offset: 8512)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1415, file: !120, line: 534, baseType: !7, size: 32, offset: 8576)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1415, file: !120, line: 535, baseType: !2688, size: 64, offset: 8640)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1415, file: !120, line: 536, baseType: !7, size: 32, offset: 8704)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1415, file: !120, line: 539, baseType: !25, size: 32, offset: 8736)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1415, file: !120, line: 540, baseType: !2692, size: 64, offset: 8768)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2694, line: 32, size: 64, elements: !2695)
!2694 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2695 = !{!2696, !2697}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2693, file: !2694, line: 33, baseType: !728, size: 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2693, file: !2694, line: 34, baseType: !728, size: 32, offset: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1415, file: !120, line: 563, baseType: !100, size: 128, offset: 8832)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1415, file: !120, line: 565, baseType: !100, size: 128, offset: 8960)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1415, file: !120, line: 568, baseType: !2701, size: 64, offset: 9088)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{null}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1415, file: !120, line: 570, baseType: !52, size: 32, offset: 9152)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1407, file: !111, line: 179, baseType: !2706, size: 512, offset: 128)
!2706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 512, elements: !2707)
!2707 = !{!2708}
!2708 = !DISubrange(count: 8)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !1341, file: !111, line: 101, baseType: !19, size: 64, offset: 896)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1341, file: !111, line: 102, baseType: !23, size: 64, offset: 960)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1341, file: !111, line: 103, baseType: !23, size: 64, offset: 1024)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags", scope: !1341, file: !111, line: 104, baseType: !7, size: 32, offset: 1088)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags_mask", scope: !1341, file: !111, line: 105, baseType: !7, size: 32, offset: 1120)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1341, file: !111, line: 106, baseType: !7, size: 32, offset: 1152)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1341, file: !111, line: 107, baseType: !168, size: 8, offset: 1184, flags: DIFlagBitField, extraData: i64 1184)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !1341, file: !111, line: 108, baseType: !173, size: 8, offset: 1192, flags: DIFlagBitField, extraData: i64 1184)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1341, file: !111, line: 109, baseType: !804, size: 1, offset: 1200, flags: DIFlagBitField, extraData: i64 1184)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1341, file: !111, line: 110, baseType: !804, size: 1, offset: 1201, flags: DIFlagBitField, extraData: i64 1184)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "oldapi", scope: !1341, file: !111, line: 111, baseType: !804, size: 1, offset: 1202, flags: DIFlagBitField, extraData: i64 1184)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !1341, file: !111, line: 112, baseType: !804, size: 1, offset: 1203, flags: DIFlagBitField, extraData: i64 1184)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1332, file: !183, line: 2377, baseType: !2722, size: 64, offset: 192)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2724)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !2725, line: 39, size: 256, elements: !2726)
!2725 = !DIFile(filename: "./include/linux/fs_parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7e6f8b2e05f10a6300994e1bfb8d6d3")
!2726 = !{!2727, !2728, !2745, !2746, !2747}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2724, file: !2725, line: 40, baseType: !19, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2724, file: !2725, line: 41, baseType: !2729, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_typedef, name: "fs_param_type", file: !2725, line: 22, baseType: !2731)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!25, !2733, !2722, !1360, !2734}
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parse_result", file: !2725, line: 53, size: 128, elements: !2736)
!2736 = !{!2737, !2738}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "negated", scope: !2735, file: !2725, line: 54, baseType: !804, size: 8)
!2738 = !DIDerivedType(tag: DW_TAG_member, scope: !2735, file: !2725, line: 55, baseType: !2739, size: 64, offset: 64)
!2739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2735, file: !2725, line: 55, size: 64, elements: !2740)
!2740 = !{!2741, !2742, !2743, !2744}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !2739, file: !2725, line: 56, baseType: !804, size: 8)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "int_32", scope: !2739, file: !2725, line: 57, baseType: !25, size: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "uint_32", scope: !2739, file: !2725, line: 58, baseType: !7, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "uint_64", scope: !2739, file: !2725, line: 59, baseType: !482, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !2724, file: !2725, line: 42, baseType: !86, size: 8, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2724, file: !2725, line: 43, baseType: !29, size: 16, offset: 144)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2724, file: !2725, line: 47, baseType: !1793, size: 64, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1332, file: !183, line: 2378, baseType: !2749, size: 64, offset: 256)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!1073, !1331, !25, !19, !23}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1332, file: !183, line: 2380, baseType: !2753, size: 64, offset: 320)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{null, !1322}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1332, file: !183, line: 2381, baseType: !1414, size: 64, offset: 384)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1332, file: !183, line: 2382, baseType: !1331, size: 64, offset: 448)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1332, file: !183, line: 2383, baseType: !651, size: 64, offset: 512)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1332, file: !183, line: 2385, baseType: !2760, offset: 576)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2626, line: 206, elements: !473)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1332, file: !183, line: 2386, baseType: !2760, offset: 576)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1332, file: !183, line: 2387, baseType: !2760, offset: 576)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1332, file: !183, line: 2388, baseType: !2764, offset: 576)
!2764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2760, elements: !634)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1332, file: !183, line: 2390, baseType: !2760, offset: 576)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1332, file: !183, line: 2391, baseType: !2760, offset: 576)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1332, file: !183, line: 2392, baseType: !2760, offset: 576)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1332, file: !183, line: 2393, baseType: !2760, offset: 576)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1323, file: !183, line: 1197, baseType: !2770, size: 64, offset: 384)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2772)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !183, line: 2057, size: 1664, elements: !2773)
!2773 = !{!2774, !2778, !2782, !2783, !2787, !2791, !2795, !2796, !2797, !2801, !2805, !2809, !2810, !2811, !2817, !2821, !2822, !2826, !2827, !2828, !2829, !2833, !2837, !2884, !2899, !2900}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2772, file: !183, line: 2058, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!1113, !1322}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2772, file: !183, line: 2059, baseType: !2779, size: 64, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{null, !1113}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2772, file: !183, line: 2060, baseType: !2779, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2772, file: !183, line: 2062, baseType: !2784, size: 64, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{null, !1113, !25}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2772, file: !183, line: 2063, baseType: !2788, size: 64, offset: 256)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!25, !1113, !1997}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2772, file: !183, line: 2064, baseType: !2792, size: 64, offset: 320)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!25, !1113}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2772, file: !183, line: 2065, baseType: !2779, size: 64, offset: 384)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2772, file: !183, line: 2066, baseType: !2753, size: 64, offset: 448)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2772, file: !183, line: 2067, baseType: !2798, size: 64, offset: 512)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!25, !1322, !25}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2772, file: !183, line: 2068, baseType: !2802, size: 64, offset: 576)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!25, !1322, !182}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2772, file: !183, line: 2069, baseType: !2806, size: 64, offset: 640)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!25, !1322}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2772, file: !183, line: 2070, baseType: !2802, size: 64, offset: 704)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2772, file: !183, line: 2071, baseType: !2806, size: 64, offset: 768)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2772, file: !183, line: 2072, baseType: !2812, size: 64, offset: 832)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!25, !1073, !2815}
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !183, line: 62, flags: DIFlagFwdDecl)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2772, file: !183, line: 2073, baseType: !2818, size: 64, offset: 896)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!25, !1322, !2498, !531}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2772, file: !183, line: 2074, baseType: !2753, size: 64, offset: 960)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2772, file: !183, line: 2076, baseType: !2823, size: 64, offset: 1024)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!25, !526, !1073}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2772, file: !183, line: 2077, baseType: !2823, size: 64, offset: 1088)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2772, file: !183, line: 2078, baseType: !2823, size: 64, offset: 1152)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2772, file: !183, line: 2079, baseType: !2823, size: 64, offset: 1216)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2772, file: !183, line: 2081, baseType: !2830, size: 64, offset: 1280)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!1266, !1322, !25, !531, !38, !44}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2772, file: !183, line: 2082, baseType: !2834, size: 64, offset: 1344)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!1266, !1322, !25, !19, !38, !44}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2772, file: !183, line: 2083, baseType: !2838, size: 64, offset: 1408)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!2841, !1113}
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !188, line: 296, size: 1664, elements: !2844)
!2844 = !{!2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2869, !2870, !2871}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2843, file: !188, line: 297, baseType: !655, size: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2843, file: !188, line: 298, baseType: !100, size: 128, offset: 128)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2843, file: !188, line: 299, baseType: !100, size: 128, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2843, file: !188, line: 300, baseType: !100, size: 128, offset: 384)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2843, file: !188, line: 301, baseType: !539, size: 256, offset: 512)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2843, file: !188, line: 302, baseType: !62, size: 32, offset: 768)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2843, file: !188, line: 303, baseType: !52, size: 32, offset: 800)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2843, file: !188, line: 304, baseType: !1322, size: 64, offset: 832)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2843, file: !188, line: 305, baseType: !2854, size: 64, offset: 896)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !188, line: 68, size: 64, elements: !2855)
!2855 = !{!2856, !2868}
!2856 = !DIDerivedType(tag: DW_TAG_member, scope: !2854, file: !188, line: 69, baseType: !2857, size: 32)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2854, file: !188, line: 69, size: 32, elements: !2858)
!2858 = !{!2859, !2860, !2861}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2857, file: !188, line: 70, baseType: !677, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2857, file: !188, line: 71, baseType: !695, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2857, file: !188, line: 72, baseType: !2862, size: 32)
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2863, line: 24, baseType: !2864)
!2863 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2863, line: 22, size: 32, elements: !2865)
!2865 = !{!2866}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2864, file: !2863, line: 23, baseType: !2867, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2863, line: 20, baseType: !683)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2854, file: !188, line: 74, baseType: !187, size: 32, offset: 32)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2843, file: !188, line: 306, baseType: !44, size: 64, offset: 960)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2843, file: !188, line: 307, baseType: !42, size: 64, offset: 1024)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2843, file: !188, line: 308, baseType: !2872, size: 576, offset: 1088)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !188, line: 205, size: 576, elements: !2873)
!2873 = !{!2874, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2872, file: !188, line: 206, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !188, line: 66, baseType: !46)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2872, file: !188, line: 207, baseType: !2875, size: 64, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2872, file: !188, line: 208, baseType: !2875, size: 64, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2872, file: !188, line: 209, baseType: !2875, size: 64, offset: 192)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2872, file: !188, line: 210, baseType: !2875, size: 64, offset: 256)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2872, file: !188, line: 211, baseType: !2875, size: 64, offset: 320)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2872, file: !188, line: 212, baseType: !2875, size: 64, offset: 384)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2872, file: !188, line: 213, baseType: !759, size: 64, offset: 448)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2872, file: !188, line: 214, baseType: !759, size: 64, offset: 512)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2772, file: !183, line: 2085, baseType: !2885, size: 64, offset: 1472)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!1037, !1322, !2888}
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2890, line: 15, size: 256, elements: !2891)
!2890 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2891 = !{!2892, !2893, !2894, !2895, !2896}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2889, file: !2890, line: 16, baseType: !1318, size: 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2889, file: !2890, line: 19, baseType: !25, size: 32, offset: 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2889, file: !2890, line: 26, baseType: !42, size: 64, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2889, file: !2890, line: 33, baseType: !42, size: 64, offset: 128)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2889, file: !2890, line: 36, baseType: !2897, size: 64, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2890, line: 36, flags: DIFlagFwdDecl)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2772, file: !183, line: 2087, baseType: !2885, size: 64, offset: 1536)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2772, file: !183, line: 2089, baseType: !2753, size: 64, offset: 1600)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1323, file: !183, line: 1198, baseType: !2902, size: 64, offset: 448)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2904)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !188, line: 324, size: 704, elements: !2905)
!2905 = !{!2906, !2910, !2914, !2918, !2919, !2920, !2921, !2922, !2927, !2932, !2936}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2904, file: !188, line: 325, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!25, !2842}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2904, file: !188, line: 326, baseType: !2911, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!2842, !1322, !25}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2904, file: !188, line: 327, baseType: !2915, size: 64, offset: 128)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{null, !2842}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2904, file: !188, line: 328, baseType: !2907, size: 64, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2904, file: !188, line: 329, baseType: !2907, size: 64, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2904, file: !188, line: 330, baseType: !2907, size: 64, offset: 320)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2904, file: !188, line: 331, baseType: !2798, size: 64, offset: 384)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2904, file: !188, line: 334, baseType: !2923, size: 64, offset: 448)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!2926, !1113}
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2904, file: !188, line: 335, baseType: !2928, size: 64, offset: 512)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!25, !1113, !2931}
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2904, file: !188, line: 337, baseType: !2933, size: 64, offset: 576)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!25, !1113, !2926}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2904, file: !188, line: 339, baseType: !2937, size: 64, offset: 640)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!25, !1322, !2940}
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1323, file: !183, line: 1199, baseType: !2942, size: 64, offset: 512)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2944)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !188, line: 430, size: 704, elements: !2945)
!2945 = !{!2946, !2950, !2951, !2955, !2956, !2957, !2972, !2995, !2999, !3000, !3023}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2944, file: !188, line: 431, baseType: !2947, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!25, !1322, !25, !25, !1235}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2944, file: !188, line: 432, baseType: !2798, size: 64, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2944, file: !188, line: 433, baseType: !2952, size: 64, offset: 128)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!25, !1322, !7}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2944, file: !188, line: 434, baseType: !2952, size: 64, offset: 192)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2944, file: !188, line: 435, baseType: !2798, size: 64, offset: 256)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2944, file: !188, line: 436, baseType: !2958, size: 64, offset: 320)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!25, !1322, !25, !2961}
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !188, line: 417, size: 256, elements: !2963)
!2963 = !{!2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2962, file: !188, line: 418, baseType: !25, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2962, file: !188, line: 419, baseType: !7, size: 32, offset: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2962, file: !188, line: 420, baseType: !7, size: 32, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2962, file: !188, line: 422, baseType: !7, size: 32, offset: 96)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2962, file: !188, line: 423, baseType: !7, size: 32, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2962, file: !188, line: 424, baseType: !7, size: 32, offset: 160)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2962, file: !188, line: 425, baseType: !7, size: 32, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2962, file: !188, line: 426, baseType: !7, size: 32, offset: 224)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2944, file: !188, line: 437, baseType: !2973, size: 64, offset: 384)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!25, !1322, !2854, !2976}
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !188, line: 345, size: 960, elements: !2978)
!2978 = !{!2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2977, file: !188, line: 346, baseType: !25, size: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2977, file: !188, line: 347, baseType: !482, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2977, file: !188, line: 348, baseType: !482, size: 64, offset: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2977, file: !188, line: 349, baseType: !482, size: 64, offset: 192)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2977, file: !188, line: 350, baseType: !482, size: 64, offset: 256)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2977, file: !188, line: 351, baseType: !482, size: 64, offset: 320)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2977, file: !188, line: 352, baseType: !482, size: 64, offset: 384)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2977, file: !188, line: 353, baseType: !549, size: 64, offset: 448)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2977, file: !188, line: 355, baseType: !549, size: 64, offset: 512)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2977, file: !188, line: 356, baseType: !25, size: 32, offset: 576)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2977, file: !188, line: 357, baseType: !25, size: 32, offset: 608)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2977, file: !188, line: 358, baseType: !482, size: 64, offset: 640)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2977, file: !188, line: 359, baseType: !482, size: 64, offset: 704)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2977, file: !188, line: 360, baseType: !482, size: 64, offset: 768)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2977, file: !188, line: 361, baseType: !549, size: 64, offset: 832)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2977, file: !188, line: 362, baseType: !25, size: 32, offset: 896)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2944, file: !188, line: 438, baseType: !2996, size: 64, offset: 448)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!25, !1322, !2940, !2976}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2944, file: !188, line: 440, baseType: !2973, size: 64, offset: 512)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2944, file: !188, line: 441, baseType: !3001, size: 64, offset: 576)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!25, !1322, !3004}
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !188, line: 411, size: 1408, elements: !3006)
!3006 = !{!3007, !3008}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3005, file: !188, line: 412, baseType: !7, size: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3005, file: !188, line: 413, baseType: !3009, size: 1344, offset: 64)
!3009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3010, size: 1344, elements: !634)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !188, line: 397, size: 448, elements: !3011)
!3011 = !{!3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3022}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3010, file: !188, line: 398, baseType: !7, size: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3010, file: !188, line: 399, baseType: !7, size: 32, offset: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3010, file: !188, line: 401, baseType: !7, size: 32, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3010, file: !188, line: 402, baseType: !7, size: 32, offset: 96)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3010, file: !188, line: 403, baseType: !7, size: 32, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3010, file: !188, line: 404, baseType: !7, size: 32, offset: 160)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3010, file: !188, line: 405, baseType: !7, size: 32, offset: 192)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3010, file: !188, line: 406, baseType: !484, size: 64, offset: 256)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3010, file: !188, line: 407, baseType: !3021, size: 64, offset: 320)
!3021 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !28, line: 132, baseType: !482)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3010, file: !188, line: 408, baseType: !3021, size: 64, offset: 384)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2944, file: !188, line: 442, baseType: !2952, size: 64, offset: 640)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1323, file: !183, line: 1200, baseType: !3025, size: 64, offset: 576)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3027)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !183, line: 54, flags: DIFlagFwdDecl)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1323, file: !183, line: 1201, baseType: !42, size: 64, offset: 640)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1323, file: !183, line: 1202, baseType: !42, size: 64, offset: 704)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1323, file: !183, line: 1203, baseType: !42, size: 64, offset: 768)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1323, file: !183, line: 1204, baseType: !1073, size: 64, offset: 832)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1323, file: !183, line: 1205, baseType: !743, size: 320, offset: 896)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1323, file: !183, line: 1206, baseType: !25, size: 32, offset: 1216)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1323, file: !183, line: 1207, baseType: !52, size: 32, offset: 1248)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1323, file: !183, line: 1209, baseType: !23, size: 64, offset: 1280)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1323, file: !183, line: 1211, baseType: !3037, size: 64, offset: 1344)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3040)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !183, line: 1211, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1323, file: !183, line: 1223, baseType: !3042, size: 64, offset: 1408)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1090, line: 34, size: 64, elements: !3043)
!3043 = !{!3044}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3042, file: !1090, line: 35, baseType: !1093, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1323, file: !183, line: 1224, baseType: !100, size: 128, offset: 1472)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1323, file: !183, line: 1225, baseType: !3047, size: 64, offset: 1600)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !3049, line: 40, size: 7424, elements: !3050)
!3049 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!3050 = !{!3051, !3052, !3053, !3056, !3060, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3087, !3088}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !3048, file: !3049, line: 41, baseType: !2115, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !3048, file: !3049, line: 42, baseType: !2115, size: 64, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !3048, file: !3049, line: 43, baseType: !3054, size: 64, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1914, line: 1453, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !3048, file: !3049, line: 44, baseType: !3057, size: 64, offset: 192)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3059, line: 74, flags: DIFlagFwdDecl)
!3059 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !3048, file: !3049, line: 45, baseType: !3061, size: 64, offset: 256)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !3049, line: 45, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !3048, file: !3049, line: 46, baseType: !42, size: 64, offset: 320)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !3048, file: !3049, line: 47, baseType: !804, size: 8, offset: 384)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !3048, file: !3049, line: 48, baseType: !86, size: 8, offset: 392)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !3048, file: !3049, line: 49, baseType: !804, size: 8, offset: 400)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !3048, file: !3049, line: 50, baseType: !804, size: 8, offset: 408)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !3048, file: !3049, line: 51, baseType: !1187, size: 32, offset: 416)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !3048, file: !3049, line: 52, baseType: !52, size: 32, offset: 448)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !3048, file: !3049, line: 53, baseType: !62, size: 32, offset: 480)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !3048, file: !3049, line: 54, baseType: !1113, size: 64, offset: 512)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !3048, file: !3049, line: 55, baseType: !23, size: 64, offset: 576)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !3048, file: !3049, line: 56, baseType: !23, size: 64, offset: 640)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !3048, file: !3049, line: 57, baseType: !3075, size: 64, offset: 704)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3077)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !3049, line: 57, flags: DIFlagFwdDecl)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !3048, file: !3049, line: 58, baseType: !539, size: 256, offset: 768)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !3048, file: !3049, line: 60, baseType: !25, size: 32, offset: 1024)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !3048, file: !3049, line: 61, baseType: !25, size: 32, offset: 1056)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !3048, file: !3049, line: 62, baseType: !1433, size: 64, offset: 1088)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !3048, file: !3049, line: 65, baseType: !539, size: 256, offset: 1152)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !3048, file: !3049, line: 66, baseType: !1322, size: 64, offset: 1408)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !3048, file: !3049, line: 68, baseType: !3085, size: 64, offset: 1472)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !3049, line: 68, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !3048, file: !3049, line: 72, baseType: !804, size: 8, offset: 1536)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !3048, file: !3049, line: 77, baseType: !3089, size: 5824, offset: 1600)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !200, line: 705, size: 5824, elements: !3090)
!3090 = !{!3091, !3092, !3094, !3097, !3098, !3151, !3221, !3222, !3223, !3224, !3225, !3232, !3390, !3403, !3413, !3417, !3419, !3420, !3421, !3425, !3432, !3433, !3436, !3439, !3443, !3446, !3447, !3448, !3449, !3450, !3451, !3481, !3482, !3483, !3486, !3489, !3498, !3499, !3500, !3501, !3502, !3503}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3089, file: !200, line: 706, baseType: !1427, size: 512)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3089, file: !200, line: 707, baseType: !3093, size: 64, offset: 512)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3089, file: !200, line: 709, baseType: !3095, size: 64, offset: 576)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !200, line: 37, flags: DIFlagFwdDecl)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3089, file: !200, line: 711, baseType: !19, size: 64, offset: 640)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3089, file: !200, line: 712, baseType: !3099, size: 64, offset: 704)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3101)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !200, line: 89, size: 384, elements: !3102)
!3102 = !{!3103, !3104, !3105, !3111, !3116, !3120}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3101, file: !200, line: 90, baseType: !19, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3101, file: !200, line: 91, baseType: !1507, size: 64, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3101, file: !200, line: 92, baseType: !3106, size: 64, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!25, !3109, !1463}
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3089)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3101, file: !200, line: 93, baseType: !3112, size: 64, offset: 192)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!531, !3109, !3115, !1000, !1001}
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3101, file: !200, line: 95, baseType: !3117, size: 64, offset: 256)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{null, !3093}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3101, file: !200, line: 97, baseType: !3121, size: 64, offset: 320)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3123)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !212, line: 286, size: 1472, elements: !3124)
!3124 = !{!3125, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3123, file: !212, line: 287, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!25, !3093}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3123, file: !212, line: 288, baseType: !3117, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3123, file: !212, line: 289, baseType: !3126, size: 64, offset: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3123, file: !212, line: 290, baseType: !3126, size: 64, offset: 192)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3123, file: !212, line: 291, baseType: !3126, size: 64, offset: 256)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3123, file: !212, line: 292, baseType: !3126, size: 64, offset: 320)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3123, file: !212, line: 293, baseType: !3126, size: 64, offset: 384)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3123, file: !212, line: 294, baseType: !3126, size: 64, offset: 448)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3123, file: !212, line: 295, baseType: !3126, size: 64, offset: 512)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3123, file: !212, line: 296, baseType: !3126, size: 64, offset: 576)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3123, file: !212, line: 297, baseType: !3126, size: 64, offset: 640)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3123, file: !212, line: 298, baseType: !3126, size: 64, offset: 704)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3123, file: !212, line: 299, baseType: !3126, size: 64, offset: 768)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3123, file: !212, line: 300, baseType: !3126, size: 64, offset: 832)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3123, file: !212, line: 301, baseType: !3126, size: 64, offset: 896)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3123, file: !212, line: 302, baseType: !3126, size: 64, offset: 960)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3123, file: !212, line: 303, baseType: !3126, size: 64, offset: 1024)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3123, file: !212, line: 304, baseType: !3126, size: 64, offset: 1088)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3123, file: !212, line: 305, baseType: !3126, size: 64, offset: 1152)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3123, file: !212, line: 306, baseType: !3126, size: 64, offset: 1216)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3123, file: !212, line: 307, baseType: !3126, size: 64, offset: 1280)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3123, file: !212, line: 308, baseType: !3126, size: 64, offset: 1344)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3123, file: !212, line: 309, baseType: !3126, size: 64, offset: 1408)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3089, file: !200, line: 714, baseType: !3152, size: 64, offset: 768)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3154)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3155, line: 80, size: 1344, elements: !3156)
!3155 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3220}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3154, file: !3155, line: 81, baseType: !19, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3154, file: !3155, line: 82, baseType: !19, size: 64, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3154, file: !3155, line: 83, baseType: !1507, size: 64, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3154, file: !3155, line: 84, baseType: !1507, size: 64, offset: 192)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3154, file: !3155, line: 85, baseType: !1507, size: 64, offset: 256)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3154, file: !3155, line: 87, baseType: !3163, size: 64, offset: 320)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!25, !3093, !3166}
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !194, line: 96, size: 1152, elements: !3168)
!3168 = !{!3169, !3170, !3171, !3172, !3173, !3174, !3175, !3179, !3183, !3184, !3185, !3186, !3187, !3195, !3196, !3197, !3198, !3199, !3200}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3167, file: !194, line: 97, baseType: !19, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3167, file: !194, line: 98, baseType: !3152, size: 64, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3167, file: !194, line: 100, baseType: !1414, size: 64, offset: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3167, file: !194, line: 101, baseType: !19, size: 64, offset: 192)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3167, file: !194, line: 103, baseType: !804, size: 8, offset: 256)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3167, file: !194, line: 104, baseType: !193, size: 32, offset: 288)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3167, file: !194, line: 106, baseType: !3176, size: 64, offset: 320)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3178)
!3178 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !194, line: 106, flags: DIFlagFwdDecl)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3167, file: !194, line: 107, baseType: !3180, size: 64, offset: 384)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3182)
!3182 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !194, line: 107, flags: DIFlagFwdDecl)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3167, file: !194, line: 109, baseType: !3126, size: 64, offset: 448)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3167, file: !194, line: 110, baseType: !3117, size: 64, offset: 512)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3167, file: !194, line: 111, baseType: !3126, size: 64, offset: 576)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3167, file: !194, line: 112, baseType: !3117, size: 64, offset: 640)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3167, file: !194, line: 113, baseType: !3188, size: 64, offset: 704)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!25, !3093, !3191}
!3191 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !212, line: 60, baseType: !3192)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !212, line: 58, size: 32, elements: !3193)
!3193 = !{!3194}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3192, file: !212, line: 59, baseType: !25, size: 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3167, file: !194, line: 114, baseType: !3126, size: 64, offset: 768)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3167, file: !194, line: 115, baseType: !1507, size: 64, offset: 832)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3167, file: !194, line: 116, baseType: !1507, size: 64, offset: 896)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3167, file: !194, line: 118, baseType: !3121, size: 64, offset: 960)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3167, file: !194, line: 119, baseType: !3117, size: 64, offset: 1024)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3167, file: !194, line: 121, baseType: !3201, size: 64, offset: 1088)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !194, line: 121, flags: DIFlagFwdDecl)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3154, file: !3155, line: 88, baseType: !3106, size: 64, offset: 384)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3154, file: !3155, line: 89, baseType: !3126, size: 64, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3154, file: !3155, line: 90, baseType: !3117, size: 64, offset: 512)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3154, file: !3155, line: 91, baseType: !3117, size: 64, offset: 576)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3154, file: !3155, line: 92, baseType: !3117, size: 64, offset: 640)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3154, file: !3155, line: 94, baseType: !3126, size: 64, offset: 704)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3154, file: !3155, line: 95, baseType: !3126, size: 64, offset: 768)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3154, file: !3155, line: 97, baseType: !3188, size: 64, offset: 832)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3154, file: !3155, line: 98, baseType: !3126, size: 64, offset: 896)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3154, file: !3155, line: 100, baseType: !3126, size: 64, offset: 960)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3154, file: !3155, line: 102, baseType: !3126, size: 64, offset: 1024)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3154, file: !3155, line: 103, baseType: !3117, size: 64, offset: 1088)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3154, file: !3155, line: 105, baseType: !3121, size: 64, offset: 1152)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3154, file: !3155, line: 107, baseType: !3217, size: 64, offset: 1216)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3219)
!3219 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3155, line: 107, flags: DIFlagFwdDecl)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3154, file: !3155, line: 109, baseType: !804, size: 8, offset: 1280)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3089, file: !200, line: 715, baseType: !3166, size: 64, offset: 832)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3089, file: !200, line: 717, baseType: !23, size: 64, offset: 896)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3089, file: !200, line: 719, baseType: !23, size: 64, offset: 960)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3089, file: !200, line: 721, baseType: !539, size: 256, offset: 1024)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3089, file: !200, line: 725, baseType: !3226, size: 448, offset: 1280)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !200, line: 517, size: 448, elements: !3227)
!3227 = !{!3228, !3229, !3230, !3231}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3226, file: !200, line: 518, baseType: !100, size: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3226, file: !200, line: 519, baseType: !100, size: 128, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3226, file: !200, line: 520, baseType: !100, size: 128, offset: 256)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3226, file: !200, line: 521, baseType: !199, size: 32, offset: 384)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3089, file: !200, line: 726, baseType: !3233, size: 2496, offset: 1728)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !212, line: 663, size: 2496, elements: !3234)
!3234 = !{!3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3279, !3280, !3281, !3282, !3283, !3284, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3383, !3387}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3233, file: !212, line: 664, baseType: !3191, size: 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3233, file: !212, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3233, file: !212, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3233, file: !212, line: 667, baseType: !804, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3233, file: !212, line: 668, baseType: !804, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3233, file: !212, line: 669, baseType: !804, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3233, file: !212, line: 670, baseType: !804, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3233, file: !212, line: 671, baseType: !804, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3233, file: !212, line: 672, baseType: !804, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3233, file: !212, line: 673, baseType: !804, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3233, file: !212, line: 674, baseType: !804, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3233, file: !212, line: 675, baseType: !768, size: 32, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3233, file: !212, line: 676, baseType: !62, size: 32, offset: 96)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3233, file: !212, line: 678, baseType: !100, size: 128, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3233, file: !212, line: 679, baseType: !975, size: 256, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3233, file: !212, line: 680, baseType: !3251, size: 64, offset: 512)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3253, line: 43, size: 1536, elements: !3254)
!3253 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3254 = !{!3255, !3256, !3257, !3258, !3259, !3262, !3263, !3264, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3252, file: !3253, line: 44, baseType: !19, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3252, file: !3253, line: 45, baseType: !25, size: 32, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3252, file: !3253, line: 46, baseType: !100, size: 128, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3252, file: !3253, line: 47, baseType: !62, size: 32, offset: 256)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3252, file: !3253, line: 48, baseType: !3260, size: 64, offset: 320)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !212, line: 629, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3252, file: !3253, line: 49, baseType: !2597, size: 320, offset: 384)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3252, file: !3253, line: 50, baseType: !42, size: 64, offset: 704)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3252, file: !3253, line: 51, baseType: !3265, size: 64, offset: 768)
!3265 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !3266, line: 29, baseType: !549)
!3266 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3252, file: !3253, line: 52, baseType: !3265, size: 64, offset: 832)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3252, file: !3253, line: 53, baseType: !3265, size: 64, offset: 896)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3252, file: !3253, line: 54, baseType: !3265, size: 64, offset: 960)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3252, file: !3253, line: 55, baseType: !3265, size: 64, offset: 1024)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3252, file: !3253, line: 56, baseType: !42, size: 64, offset: 1088)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3252, file: !3253, line: 57, baseType: !42, size: 64, offset: 1152)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3252, file: !3253, line: 58, baseType: !42, size: 64, offset: 1216)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3252, file: !3253, line: 59, baseType: !42, size: 64, offset: 1280)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3252, file: !3253, line: 60, baseType: !42, size: 64, offset: 1344)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3252, file: !3253, line: 61, baseType: !3093, size: 64, offset: 1408)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3252, file: !3253, line: 62, baseType: !804, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3252, file: !3253, line: 63, baseType: !804, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3233, file: !212, line: 681, baseType: !804, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3233, file: !212, line: 682, baseType: !804, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3233, file: !212, line: 683, baseType: !804, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3233, file: !212, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3233, file: !212, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3233, file: !212, line: 690, baseType: !3285, size: 512, offset: 640)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !207, line: 118, size: 512, elements: !3286)
!3286 = !{!3287, !3293, !3294, !3299, !3345, !3346, !3347, !3348}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3285, file: !207, line: 119, baseType: !3288, size: 256)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3289, line: 9, size: 256, elements: !3290)
!3289 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3290 = !{!3291, !3292}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3288, file: !3289, line: 10, baseType: !735, size: 192, align: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3288, file: !3289, line: 11, baseType: !3265, size: 64, offset: 192)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3285, file: !207, line: 120, baseType: !3265, size: 64, offset: 256)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3285, file: !207, line: 121, baseType: !3295, size: 64, offset: 320)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!206, !3298}
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3285, file: !207, line: 122, baseType: !3300, size: 64, offset: 384)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !207, line: 159, size: 512, align: 512, elements: !3302)
!3302 = !{!3303, !3326, !3327, !3330, !3335, !3336, !3340, !3344}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3301, file: !207, line: 160, baseType: !3304, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !207, line: 215, size: 4608, align: 512, elements: !3306)
!3306 = !{!3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3305, file: !207, line: 216, baseType: !465, size: 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3305, file: !207, line: 217, baseType: !7, size: 32, offset: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3305, file: !207, line: 218, baseType: !7, size: 32, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3305, file: !207, line: 219, baseType: !7, size: 32, offset: 96)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3305, file: !207, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3305, file: !207, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3305, file: !207, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3305, file: !207, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3305, file: !207, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3305, file: !207, line: 226, baseType: !7, size: 32, offset: 160)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3305, file: !207, line: 227, baseType: !29, size: 16, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3305, file: !207, line: 228, baseType: !29, size: 16, offset: 208)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3305, file: !207, line: 229, baseType: !7, size: 32, offset: 224)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3305, file: !207, line: 235, baseType: !3265, size: 64, offset: 256)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3305, file: !207, line: 236, baseType: !3298, size: 64, offset: 320)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3305, file: !207, line: 237, baseType: !3265, size: 64, offset: 384)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3305, file: !207, line: 238, baseType: !3298, size: 64, offset: 448)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3305, file: !207, line: 239, baseType: !3325, size: 4096, align: 512, offset: 512)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3301, size: 4096, align: 512, elements: !2707)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3301, file: !207, line: 161, baseType: !7, size: 32, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3301, file: !207, line: 162, baseType: !3328, size: 32, offset: 96)
!3328 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !28, line: 32, baseType: !3329)
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !40, line: 96, baseType: !25)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3301, file: !207, line: 163, baseType: !3331, size: 32, offset: 128)
!3331 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !1080, line: 274, baseType: !3332)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !1080, line: 274, size: 32, elements: !3333)
!3333 = !{!3334}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3332, file: !1080, line: 274, baseType: !1084, size: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3301, file: !207, line: 164, baseType: !3298, size: 64, offset: 192)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3301, file: !207, line: 165, baseType: !3337, size: 128, offset: 256)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3289, line: 14, size: 128, elements: !3338)
!3338 = !{!3339}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3337, file: !3289, line: 15, baseType: !1540, size: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3301, file: !207, line: 166, baseType: !3341, size: 64, offset: 384)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!3265}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3301, file: !207, line: 167, baseType: !3265, size: 64, offset: 448)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3285, file: !207, line: 123, baseType: !86, size: 8, offset: 448)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3285, file: !207, line: 124, baseType: !86, size: 8, offset: 456)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3285, file: !207, line: 125, baseType: !86, size: 8, offset: 464)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3285, file: !207, line: 126, baseType: !86, size: 8, offset: 472)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3233, file: !212, line: 691, baseType: !482, size: 64, offset: 1152)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3233, file: !212, line: 692, baseType: !936, size: 256, offset: 1216)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3233, file: !212, line: 693, baseType: !57, size: 192, offset: 1472)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3233, file: !212, line: 694, baseType: !3260, size: 64, offset: 1664)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3233, file: !212, line: 695, baseType: !52, size: 32, offset: 1728)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3233, file: !212, line: 696, baseType: !52, size: 32, offset: 1760)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3233, file: !212, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3233, file: !212, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3233, file: !212, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3233, file: !212, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3233, file: !212, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3233, file: !212, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3233, file: !212, line: 703, baseType: !804, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3233, file: !212, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3233, file: !212, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3233, file: !212, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3233, file: !212, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3233, file: !212, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3233, file: !212, line: 709, baseType: !7, size: 32, offset: 1824)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3233, file: !212, line: 710, baseType: !211, size: 32, offset: 1856)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3233, file: !212, line: 711, baseType: !219, size: 32, offset: 1888)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3233, file: !212, line: 712, baseType: !219, size: 32, offset: 1920)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3233, file: !212, line: 713, baseType: !25, size: 32, offset: 1952)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3233, file: !212, line: 714, baseType: !25, size: 32, offset: 1984)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3233, file: !212, line: 715, baseType: !482, size: 64, offset: 2048)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3233, file: !212, line: 716, baseType: !482, size: 64, offset: 2112)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3233, file: !212, line: 717, baseType: !482, size: 64, offset: 2176)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3233, file: !212, line: 718, baseType: !482, size: 64, offset: 2240)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3233, file: !212, line: 720, baseType: !3378, size: 64, offset: 2304)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !212, line: 632, size: 64, elements: !3380)
!3380 = !{!3381, !3382}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3379, file: !212, line: 633, baseType: !62, size: 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3379, file: !212, line: 634, baseType: !7, size: 32, offset: 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3233, file: !212, line: 721, baseType: !3384, size: 64, offset: 2368)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{null, !3093, !728}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3233, file: !212, line: 722, baseType: !3388, size: 64, offset: 2432)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !212, line: 722, flags: DIFlagFwdDecl)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3089, file: !200, line: 727, baseType: !3391, size: 64, offset: 4224)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !212, line: 742, size: 1792, elements: !3393)
!3393 = !{!3394, !3395, !3396, !3400, !3401, !3402}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3392, file: !212, line: 743, baseType: !3123, size: 1472)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3392, file: !212, line: 744, baseType: !3126, size: 64, offset: 1472)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3392, file: !212, line: 745, baseType: !3397, size: 64, offset: 1536)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{null, !3093, !804}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3392, file: !212, line: 746, baseType: !3126, size: 64, offset: 1600)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3392, file: !212, line: 747, baseType: !3117, size: 64, offset: 1664)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3392, file: !212, line: 748, baseType: !3117, size: 64, offset: 1728)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3089, file: !200, line: 736, baseType: !3404, size: 128, offset: 4288)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !200, line: 529, size: 128, elements: !3405)
!3405 = !{!3406, !3410}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3404, file: !200, line: 531, baseType: !3407, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3409, line: 13, flags: DIFlagFwdDecl)
!3409 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3404, file: !200, line: 532, baseType: !3411, size: 64, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !200, line: 49, flags: DIFlagFwdDecl)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3089, file: !200, line: 738, baseType: !3414, size: 64, offset: 4416)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3416)
!3416 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !200, line: 738, flags: DIFlagFwdDecl)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3089, file: !200, line: 740, baseType: !3418, size: 64, offset: 4480)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3089, file: !200, line: 741, baseType: !482, size: 64, offset: 4544)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3089, file: !200, line: 746, baseType: !482, size: 64, offset: 4608)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3089, file: !200, line: 747, baseType: !3422, size: 64, offset: 4672)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3424)
!3424 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !200, line: 747, flags: DIFlagFwdDecl)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3089, file: !200, line: 749, baseType: !3426, size: 64, offset: 4736)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !200, line: 428, size: 128, elements: !3428)
!3428 = !{!3429, !3430, !3431}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3427, file: !200, line: 433, baseType: !7, size: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3427, file: !200, line: 434, baseType: !7, size: 32, offset: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3427, file: !200, line: 435, baseType: !42, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3089, file: !200, line: 751, baseType: !100, size: 128, offset: 4800)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3089, file: !200, line: 762, baseType: !3434, size: 64, offset: 4928)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !200, line: 762, flags: DIFlagFwdDecl)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3089, file: !200, line: 770, baseType: !3437, offset: 4992)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3438, line: 5, elements: !473)
!3438 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3089, file: !200, line: 772, baseType: !3440, size: 64, offset: 4992)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3442, line: 18, flags: DIFlagFwdDecl)
!3442 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3089, file: !200, line: 773, baseType: !3444, size: 64, offset: 5056)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3155, line: 22, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3089, file: !200, line: 776, baseType: !25, size: 32, offset: 5120)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3089, file: !200, line: 778, baseType: !1187, size: 32, offset: 5152)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3089, file: !200, line: 779, baseType: !768, size: 32, offset: 5184)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3089, file: !200, line: 781, baseType: !62, size: 32, offset: 5216)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3089, file: !200, line: 782, baseType: !100, size: 128, offset: 5248)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3089, file: !200, line: 784, baseType: !3452, size: 64, offset: 5376)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3454)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3455, line: 52, size: 768, elements: !3456)
!3455 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3456 = !{!3457, !3458, !3459, !3460, !3461, !3465, !3469, !3470, !3471, !3472, !3476, !3480}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3454, file: !3455, line: 53, baseType: !19, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3454, file: !3455, line: 55, baseType: !1507, size: 64, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3454, file: !3455, line: 56, baseType: !1507, size: 64, offset: 128)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3454, file: !3455, line: 58, baseType: !3106, size: 64, offset: 192)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3454, file: !3455, line: 59, baseType: !3462, size: 64, offset: 256)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!531, !3109, !3115}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3454, file: !3455, line: 61, baseType: !3466, size: 64, offset: 320)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{null, !3452}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3454, file: !3455, line: 62, baseType: !3117, size: 64, offset: 384)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3454, file: !3455, line: 64, baseType: !3126, size: 64, offset: 448)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3454, file: !3455, line: 66, baseType: !2217, size: 64, offset: 512)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3454, file: !3455, line: 67, baseType: !3473, size: 64, offset: 576)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!1793, !3109}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3454, file: !3455, line: 69, baseType: !3477, size: 64, offset: 640)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{null, !3109, !1000, !1001}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3454, file: !3455, line: 71, baseType: !3121, size: 64, offset: 704)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3089, file: !200, line: 785, baseType: !1507, size: 64, offset: 5440)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3089, file: !200, line: 787, baseType: !3117, size: 64, offset: 5504)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3089, file: !200, line: 788, baseType: !3484, size: 64, offset: 5568)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !200, line: 46, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3089, file: !200, line: 789, baseType: !3487, size: 64, offset: 5632)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !200, line: 48, flags: DIFlagFwdDecl)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3089, file: !200, line: 791, baseType: !3490, size: 64, offset: 5696)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !200, line: 597, size: 128, elements: !3492)
!3492 = !{!3493, !3494, !3495, !3496, !3497}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3491, file: !200, line: 598, baseType: !226, size: 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3491, file: !200, line: 599, baseType: !235, size: 32, offset: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3491, file: !200, line: 600, baseType: !240, size: 32, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3491, file: !200, line: 601, baseType: !804, size: 8, offset: 96)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3491, file: !200, line: 602, baseType: !804, size: 8, offset: 104)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3089, file: !200, line: 793, baseType: !245, size: 32, offset: 5760)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3089, file: !200, line: 795, baseType: !804, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3089, file: !200, line: 796, baseType: !804, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3089, file: !200, line: 797, baseType: !804, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3089, file: !200, line: 798, baseType: !804, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3089, file: !200, line: 799, baseType: !804, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1323, file: !183, line: 1226, baseType: !3505, size: 64, offset: 1664)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !183, line: 1226, flags: DIFlagFwdDecl)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1323, file: !183, line: 1227, baseType: !3508, size: 64, offset: 1728)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !252, line: 163, size: 6848, elements: !3510)
!3510 = !{!3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3557, !3558, !3559, !3560, !3562, !3563, !3564}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3509, file: !252, line: 164, baseType: !482, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3509, file: !252, line: 165, baseType: !735, size: 192, align: 64, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3509, file: !252, line: 166, baseType: !100, size: 128, offset: 256)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3509, file: !252, line: 167, baseType: !42, size: 64, offset: 384)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3509, file: !252, line: 168, baseType: !42, size: 64, offset: 448)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3509, file: !252, line: 170, baseType: !2347, size: 32, offset: 512)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3509, file: !252, line: 171, baseType: !7, size: 32, offset: 544)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3509, file: !252, line: 172, baseType: !7, size: 32, offset: 576)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3509, file: !252, line: 173, baseType: !7, size: 32, offset: 608)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3509, file: !252, line: 173, baseType: !7, size: 32, offset: 640)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3509, file: !252, line: 179, baseType: !543, size: 64, offset: 704)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3509, file: !252, line: 184, baseType: !42, size: 64, offset: 768)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3509, file: !252, line: 186, baseType: !3524, size: 4672, offset: 832)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !252, line: 105, size: 4672, elements: !3525)
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3550, !3551, !3552, !3553, !3554, !3555, !3556}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3524, file: !252, line: 106, baseType: !3508, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3524, file: !252, line: 108, baseType: !42, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3524, file: !252, line: 109, baseType: !42, size: 64, offset: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3524, file: !252, line: 111, baseType: !100, size: 128, offset: 192)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3524, file: !252, line: 112, baseType: !100, size: 128, offset: 320)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3524, file: !252, line: 113, baseType: !100, size: 128, offset: 448)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3524, file: !252, line: 114, baseType: !100, size: 128, offset: 576)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3524, file: !252, line: 115, baseType: !62, size: 32, offset: 704)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3524, file: !252, line: 117, baseType: !52, size: 32, offset: 736)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3524, file: !252, line: 118, baseType: !1761, size: 1280, offset: 768)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3524, file: !252, line: 120, baseType: !42, size: 64, offset: 2048)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3524, file: !252, line: 121, baseType: !42, size: 64, offset: 2112)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3524, file: !252, line: 122, baseType: !42, size: 64, offset: 2176)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3524, file: !252, line: 123, baseType: !42, size: 64, offset: 2240)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3524, file: !252, line: 124, baseType: !42, size: 64, offset: 2304)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3524, file: !252, line: 132, baseType: !42, size: 64, offset: 2368)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3524, file: !252, line: 133, baseType: !42, size: 64, offset: 2432)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3524, file: !252, line: 135, baseType: !3544, size: 384, offset: 2496)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3545, line: 76, size: 384, elements: !3546)
!3545 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3546 = !{!3547, !3548, !3549}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3544, file: !3545, line: 78, baseType: !862, size: 320)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3544, file: !3545, line: 80, baseType: !7, size: 32, offset: 320)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3544, file: !3545, line: 81, baseType: !465, size: 32, offset: 352)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3524, file: !252, line: 136, baseType: !25, size: 32, offset: 2880)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3524, file: !252, line: 137, baseType: !251, size: 32, offset: 2912)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3524, file: !252, line: 139, baseType: !62, size: 32, offset: 2944)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3524, file: !252, line: 140, baseType: !100, size: 128, offset: 3008)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3524, file: !252, line: 141, baseType: !2654, size: 704, offset: 3136)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3524, file: !252, line: 142, baseType: !2654, size: 704, offset: 3840)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3524, file: !252, line: 144, baseType: !100, size: 128, offset: 4544)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3509, file: !252, line: 187, baseType: !100, size: 128, offset: 5504)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3509, file: !252, line: 193, baseType: !57, size: 192, offset: 5632)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3509, file: !252, line: 195, baseType: !3093, size: 64, offset: 5824)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3509, file: !252, line: 196, baseType: !3561, size: 512, offset: 5888)
!3561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 512, elements: !1470)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3509, file: !252, line: 197, baseType: !3093, size: 64, offset: 6400)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3509, file: !252, line: 199, baseType: !2597, size: 320, offset: 6464)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3509, file: !252, line: 202, baseType: !1073, size: 64, offset: 6784)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1323, file: !183, line: 1228, baseType: !3566, size: 64, offset: 1792)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !183, line: 1228, flags: DIFlagFwdDecl)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1323, file: !183, line: 1229, baseType: !655, size: 128, offset: 1856)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1323, file: !183, line: 1230, baseType: !7, size: 32, offset: 1984)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1323, file: !183, line: 1231, baseType: !3571, size: 2496, offset: 2048)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !188, line: 521, size: 2496, elements: !3572)
!3572 = !{!3573, !3574, !3575, !3577, !3609}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3571, file: !188, line: 522, baseType: !7, size: 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3571, file: !188, line: 523, baseType: !743, size: 320, offset: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3571, file: !188, line: 524, baseType: !3576, size: 192, offset: 384)
!3576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1113, size: 192, elements: !634)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3571, file: !188, line: 525, baseType: !3578, size: 1728, offset: 576)
!3578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3579, size: 1728, elements: !634)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !188, line: 222, size: 576, elements: !3580)
!3580 = !{!3581, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3579, file: !188, line: 223, baseType: !3582, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !188, line: 445, size: 256, elements: !3584)
!3584 = !{!3585, !3586, !3599, !3600}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3583, file: !188, line: 446, baseType: !25, size: 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3583, file: !188, line: 447, baseType: !3587, size: 64, offset: 64)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3589)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !188, line: 312, size: 512, elements: !3590)
!3590 = !{!3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3589, file: !188, line: 313, baseType: !2798, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3589, file: !188, line: 314, baseType: !2798, size: 64, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3589, file: !188, line: 315, baseType: !2798, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3589, file: !188, line: 316, baseType: !2798, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3589, file: !188, line: 317, baseType: !2907, size: 64, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3589, file: !188, line: 318, baseType: !2907, size: 64, offset: 320)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3589, file: !188, line: 319, baseType: !2907, size: 64, offset: 384)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3589, file: !188, line: 320, baseType: !2937, size: 64, offset: 448)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3583, file: !188, line: 448, baseType: !1414, size: 64, offset: 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3583, file: !188, line: 449, baseType: !3582, size: 64, offset: 192)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3579, file: !188, line: 224, baseType: !25, size: 32, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3579, file: !188, line: 226, baseType: !100, size: 128, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3579, file: !188, line: 227, baseType: !42, size: 64, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3579, file: !188, line: 228, baseType: !7, size: 32, offset: 320)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3579, file: !188, line: 229, baseType: !7, size: 32, offset: 352)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3579, file: !188, line: 230, baseType: !2875, size: 64, offset: 384)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3579, file: !188, line: 231, baseType: !2875, size: 64, offset: 448)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3579, file: !188, line: 232, baseType: !23, size: 64, offset: 512)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3571, file: !188, line: 526, baseType: !3610, size: 192, offset: 2304)
!3610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3587, size: 192, elements: !634)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1323, file: !183, line: 1233, baseType: !3612, size: 2368, offset: 4544)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !183, line: 1184, size: 2368, elements: !3613)
!3613 = !{!3614, !3615, !3616}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3612, file: !183, line: 1185, baseType: !29, size: 16)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3612, file: !183, line: 1186, baseType: !29, size: 16, offset: 16)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3612, file: !183, line: 1187, baseType: !3617, size: 2304, offset: 64)
!3617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3618, size: 2304, elements: !634)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3619, line: 12, size: 768, elements: !3620)
!3619 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3620 = !{!3621, !3629, !3630, !4855, !4856}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3618, file: !3619, line: 13, baseType: !3622, size: 384)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3623, line: 17, size: 384, elements: !3624)
!3623 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3624 = !{!3625, !3626, !3627, !3628}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3622, file: !3623, line: 18, baseType: !25, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3622, file: !3623, line: 19, baseType: !25, size: 32, offset: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3622, file: !3623, line: 20, baseType: !57, size: 192, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3622, file: !3623, line: 22, baseType: !595, size: 128, align: 64, offset: 256)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3618, file: !3619, line: 14, baseType: !2450, size: 64, offset: 384)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3618, file: !3619, line: 15, baseType: !3631, size: 64, offset: 448)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3632, line: 16, size: 64, elements: !3633)
!3632 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3633 = !{!3634}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3631, file: !3632, line: 17, baseType: !3635, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1914, line: 746, size: 58368, elements: !3637)
!3637 = !{!3638, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3718, !3729, !3749, !3753, !3756, !3787, !3788, !3789, !3790, !3801, !3803, !3804, !3805, !3806, !3807, !3808, !3819, !3820, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3837, !3838, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3926, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3974, !3980, !3981, !3982, !3983, !3984, !3988, !3991, !3998, !4003, !4006, !4009, !4012, !4071, !4272, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4310, !4311, !4312, !4321, !4329, !4330, !4331, !4332, !4333, !4338, !4339, !4340, !4343, !4344, !4347, !4350, !4353, !4360, !4363, !4364, !4450, !4451, !4452, !4453, !4454, !4460, !4461, !4462, !4463, !4464, !4465, !4468, !4471, !4472, !4475, !4476, !4477, !4480, !4481, !4482, !4483, !4484, !4485, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4517, !4520, !4526, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4608, !4610, !4611, !4612, !4613, !4614, !4615, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4632, !4633, !4634}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3636, file: !1914, line: 752, baseType: !3639, size: 192)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3640, line: 56, size: 192, elements: !3641)
!3640 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3641 = !{!3642, !3643, !3644, !3645}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3639, file: !3640, line: 57, baseType: !42, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3639, file: !3640, line: 58, baseType: !42, size: 64, offset: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3639, file: !3640, line: 59, baseType: !768, size: 32, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3639, file: !3640, line: 61, baseType: !768, size: 32, offset: 160)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3636, file: !1914, line: 754, baseType: !7, size: 32, offset: 192)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3636, file: !1914, line: 767, baseType: !23, size: 64, offset: 256)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3636, file: !1914, line: 768, baseType: !642, size: 32, offset: 320)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3636, file: !1914, line: 770, baseType: !7, size: 32, offset: 352)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3636, file: !1914, line: 771, baseType: !7, size: 32, offset: 384)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3636, file: !1914, line: 774, baseType: !25, size: 32, offset: 416)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3636, file: !1914, line: 775, baseType: !3653, size: 128, offset: 448)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3654, line: 58, size: 128, elements: !3655)
!3654 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3655 = !{!3656, !3657, !3662, !3663}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3653, file: !3654, line: 59, baseType: !589, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, scope: !3653, file: !3654, line: 60, baseType: !3658, size: 32, offset: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3653, file: !3654, line: 60, size: 32, elements: !3659)
!3659 = !{!3660, !3661}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3658, file: !3654, line: 61, baseType: !7, size: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3658, file: !3654, line: 62, baseType: !52, size: 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3653, file: !3654, line: 65, baseType: !96, size: 16, offset: 96)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3653, file: !3654, line: 65, baseType: !96, size: 16, offset: 112)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3636, file: !1914, line: 776, baseType: !7, size: 32, offset: 576)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3636, file: !1914, line: 777, baseType: !42, size: 64, offset: 640)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3636, file: !1914, line: 778, baseType: !3635, size: 64, offset: 704)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3636, file: !1914, line: 787, baseType: !25, size: 32, offset: 768)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3636, file: !1914, line: 788, baseType: !25, size: 32, offset: 800)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3636, file: !1914, line: 790, baseType: !25, size: 32, offset: 832)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3636, file: !1914, line: 792, baseType: !25, size: 32, offset: 864)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3636, file: !1914, line: 793, baseType: !25, size: 32, offset: 896)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3636, file: !1914, line: 794, baseType: !25, size: 32, offset: 928)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3636, file: !1914, line: 795, baseType: !7, size: 32, offset: 960)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3636, file: !1914, line: 797, baseType: !3675, size: 2048, offset: 1024)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1914, line: 551, size: 2048, elements: !3676)
!3676 = !{!3677, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3697, !3700, !3701, !3702}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3675, file: !1914, line: 553, baseType: !3678, size: 128)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1914, line: 411, size: 128, elements: !3679)
!3679 = !{!3680, !3681}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3678, file: !1914, line: 412, baseType: !42, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3678, file: !1914, line: 413, baseType: !768, size: 32, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3675, file: !1914, line: 554, baseType: !735, size: 192, align: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3675, file: !1914, line: 555, baseType: !482, size: 64, offset: 320)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3675, file: !1914, line: 556, baseType: !482, size: 64, offset: 384)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3675, file: !1914, line: 558, baseType: !100, size: 128, offset: 448)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3675, file: !1914, line: 559, baseType: !7, size: 32, offset: 576)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3675, file: !1914, line: 561, baseType: !482, size: 64, offset: 640)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3675, file: !1914, line: 562, baseType: !482, size: 64, offset: 704)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3675, file: !1914, line: 563, baseType: !482, size: 64, offset: 768)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3675, file: !1914, line: 564, baseType: !482, size: 64, offset: 832)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3675, file: !1914, line: 565, baseType: !549, size: 64, offset: 896)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3675, file: !1914, line: 566, baseType: !482, size: 64, offset: 960)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3675, file: !1914, line: 568, baseType: !482, size: 64, offset: 1024)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3675, file: !1914, line: 571, baseType: !25, size: 32, offset: 1088)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3675, file: !1914, line: 572, baseType: !3696, size: 64, offset: 1152)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3675, file: !1914, line: 574, baseType: !3698, size: 64, offset: 1216)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1914, line: 49, flags: DIFlagFwdDecl)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3675, file: !1914, line: 576, baseType: !3698, size: 64, offset: 1280)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3675, file: !1914, line: 578, baseType: !42, size: 64, offset: 1344)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3675, file: !1914, line: 588, baseType: !3703, size: 512, align: 512, offset: 1536)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1914, line: 497, size: 512, align: 512, elements: !3704)
!3704 = !{!3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3703, file: !1914, line: 498, baseType: !482, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3703, file: !1914, line: 499, baseType: !482, size: 64, offset: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3703, file: !1914, line: 500, baseType: !482, size: 64, offset: 128)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3703, file: !1914, line: 501, baseType: !768, size: 32, offset: 192)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3703, file: !1914, line: 502, baseType: !768, size: 32, offset: 224)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3703, file: !1914, line: 503, baseType: !42, size: 64, offset: 256)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3703, file: !1914, line: 504, baseType: !42, size: 64, offset: 320)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3703, file: !1914, line: 505, baseType: !42, size: 64, offset: 384)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3703, file: !1914, line: 506, baseType: !3714, size: 64, align: 64, offset: 448)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1914, line: 445, size: 64, align: 64, elements: !3715)
!3715 = !{!3716, !3717}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3714, file: !1914, line: 446, baseType: !7, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3714, file: !1914, line: 447, baseType: !7, size: 32, offset: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3636, file: !1914, line: 798, baseType: !3719, size: 384, offset: 3072)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1914, line: 592, size: 384, elements: !3720)
!3720 = !{!3721, !3722, !3723, !3724, !3725, !3726, !3727}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3719, file: !1914, line: 593, baseType: !100, size: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3719, file: !1914, line: 594, baseType: !42, size: 64, offset: 128)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3719, file: !1914, line: 595, baseType: !42, size: 64, offset: 192)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3719, file: !1914, line: 596, baseType: !7, size: 32, offset: 256)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3719, file: !1914, line: 597, baseType: !29, size: 16, offset: 288)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3719, file: !1914, line: 598, baseType: !29, size: 16, offset: 304)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3719, file: !1914, line: 600, baseType: !3728, size: 64, offset: 320)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3636, file: !1914, line: 799, baseType: !3730, size: 1792, offset: 3456)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1914, line: 610, size: 1792, elements: !3731)
!3731 = !{!3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3730, file: !1914, line: 611, baseType: !735, size: 192, align: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3730, file: !1914, line: 618, baseType: !482, size: 64, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3730, file: !1914, line: 619, baseType: !482, size: 64, offset: 256)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3730, file: !1914, line: 620, baseType: !482, size: 64, offset: 320)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3730, file: !1914, line: 621, baseType: !482, size: 64, offset: 384)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3730, file: !1914, line: 622, baseType: !482, size: 64, offset: 448)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3730, file: !1914, line: 629, baseType: !549, size: 64, offset: 512)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3730, file: !1914, line: 630, baseType: !482, size: 64, offset: 576)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3730, file: !1914, line: 631, baseType: !7, size: 32, offset: 640)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3730, file: !1914, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3730, file: !1914, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3730, file: !1914, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3730, file: !1914, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3730, file: !1914, line: 662, baseType: !3285, size: 512, offset: 704)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3730, file: !1914, line: 671, baseType: !3285, size: 512, offset: 1216)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3730, file: !1914, line: 679, baseType: !3748, size: 64, offset: 1728)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3636, file: !1914, line: 800, baseType: !3750, size: 64, offset: 5248)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3752)
!3752 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1914, line: 800, flags: DIFlagFwdDecl)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3636, file: !1914, line: 809, baseType: !3754, size: 64, offset: 5312)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1914, line: 70, flags: DIFlagFwdDecl)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3636, file: !1914, line: 825, baseType: !3757, size: 2048, align: 512, offset: 5632)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1914, line: 509, size: 2048, align: 512, elements: !3758)
!3758 = !{!3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3757, file: !1914, line: 511, baseType: !482, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3757, file: !1914, line: 512, baseType: !482, size: 64, offset: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3757, file: !1914, line: 513, baseType: !482, size: 64, offset: 128)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3757, file: !1914, line: 514, baseType: !482, size: 64, offset: 192)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3757, file: !1914, line: 515, baseType: !482, size: 64, offset: 256)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3757, file: !1914, line: 516, baseType: !482, size: 64, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3757, file: !1914, line: 518, baseType: !482, size: 64, offset: 384)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3757, file: !1914, line: 519, baseType: !482, size: 64, offset: 448)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3757, file: !1914, line: 520, baseType: !549, size: 64, offset: 512)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3757, file: !1914, line: 522, baseType: !482, size: 64, offset: 576)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3757, file: !1914, line: 523, baseType: !482, size: 64, offset: 640)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3757, file: !1914, line: 524, baseType: !549, size: 64, offset: 704)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3757, file: !1914, line: 526, baseType: !549, size: 64, offset: 768)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3757, file: !1914, line: 527, baseType: !482, size: 64, offset: 832)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3757, file: !1914, line: 529, baseType: !482, size: 64, offset: 896)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3757, file: !1914, line: 530, baseType: !482, size: 64, offset: 960)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3757, file: !1914, line: 531, baseType: !482, size: 64, offset: 1024)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3757, file: !1914, line: 532, baseType: !482, size: 64, offset: 1088)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3757, file: !1914, line: 533, baseType: !482, size: 64, offset: 1152)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3757, file: !1914, line: 535, baseType: !482, size: 64, offset: 1216)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3757, file: !1914, line: 536, baseType: !482, size: 64, offset: 1280)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3757, file: !1914, line: 537, baseType: !482, size: 64, offset: 1344)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3757, file: !1914, line: 538, baseType: !482, size: 64, offset: 1408)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3757, file: !1914, line: 539, baseType: !482, size: 64, offset: 1472)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3757, file: !1914, line: 540, baseType: !482, size: 64, offset: 1536)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3757, file: !1914, line: 541, baseType: !482, size: 64, offset: 1600)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3757, file: !1914, line: 542, baseType: !482, size: 64, offset: 1664)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3757, file: !1914, line: 543, baseType: !482, size: 64, offset: 1728)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3636, file: !1914, line: 833, baseType: !7, size: 32, offset: 7680)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3636, file: !1914, line: 836, baseType: !7, size: 32, offset: 7712)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3636, file: !1914, line: 837, baseType: !25, size: 32, offset: 7744)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3636, file: !1914, line: 838, baseType: !3791, size: 64, offset: 7808)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3793)
!3793 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3794, line: 19, baseType: !3795)
!3794 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3794, line: 19, size: 64, elements: !3796)
!3796 = !{!3797}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3795, file: !3794, line: 19, baseType: !3798, size: 64)
!3798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !3799)
!3799 = !{!3800}
!3800 = !DISubrange(count: 1)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3636, file: !1914, line: 839, baseType: !3802, size: 64, offset: 7872)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3636, file: !1914, line: 840, baseType: !3793, size: 64, offset: 7936)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3636, file: !1914, line: 841, baseType: !23, size: 64, offset: 8000)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3636, file: !1914, line: 843, baseType: !29, size: 16, offset: 8064)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3636, file: !1914, line: 845, baseType: !29, size: 16, offset: 8080)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3636, file: !1914, line: 848, baseType: !25, size: 32, offset: 8096)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3636, file: !1914, line: 849, baseType: !3809, size: 32, offset: 8128)
!3809 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1914, line: 718, size: 32, elements: !3810)
!3810 = !{!3811, !3818}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3809, file: !1914, line: 724, baseType: !3812, size: 32)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3809, file: !1914, line: 719, size: 32, elements: !3813)
!3813 = !{!3814, !3815, !3816, !3817}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3812, file: !1914, line: 720, baseType: !86, size: 8)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3812, file: !1914, line: 721, baseType: !86, size: 8, offset: 8)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3812, file: !1914, line: 722, baseType: !86, size: 8, offset: 16)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3812, file: !1914, line: 723, baseType: !86, size: 8, offset: 24)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3809, file: !1914, line: 725, baseType: !768, size: 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3636, file: !1914, line: 850, baseType: !100, size: 128, offset: 8192)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3636, file: !1914, line: 851, baseType: !3821, size: 64, offset: 8320)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1914, line: 60, flags: DIFlagFwdDecl)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3636, file: !1914, line: 855, baseType: !42, size: 64, offset: 8384)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3636, file: !1914, line: 856, baseType: !86, size: 8, offset: 8448)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3636, file: !1914, line: 857, baseType: !86, size: 8, offset: 8456)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3636, file: !1914, line: 858, baseType: !25, size: 32, offset: 8480)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3636, file: !1914, line: 859, baseType: !100, size: 128, offset: 8512)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3636, file: !1914, line: 860, baseType: !25, size: 32, offset: 8640)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3636, file: !1914, line: 861, baseType: !100, size: 128, offset: 8704)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3636, file: !1914, line: 873, baseType: !3831, size: 256, offset: 8832)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1914, line: 376, size: 256, elements: !3832)
!3832 = !{!3833, !3834, !3835, !3836}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3831, file: !1914, line: 381, baseType: !42, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3831, file: !1914, line: 384, baseType: !484, size: 64, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3831, file: !1914, line: 389, baseType: !484, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3831, file: !1914, line: 392, baseType: !484, size: 64, offset: 192)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3636, file: !1914, line: 875, baseType: !100, size: 128, offset: 9088)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3636, file: !1914, line: 877, baseType: !3839, size: 320, offset: 9216)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3840, line: 86, size: 320, elements: !3841)
!3840 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3841 = !{!3842, !3843, !3844}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3839, file: !3840, line: 87, baseType: !25, size: 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3839, file: !3840, line: 88, baseType: !100, size: 128, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3839, file: !3840, line: 89, baseType: !100, size: 128, offset: 192)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3636, file: !1914, line: 878, baseType: !735, size: 192, align: 64, offset: 9536)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3636, file: !1914, line: 881, baseType: !1678, size: 64, offset: 9728)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3636, file: !1914, line: 882, baseType: !1678, size: 64, offset: 9792)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3636, file: !1914, line: 884, baseType: !25, size: 32, offset: 9856)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3636, file: !1914, line: 885, baseType: !25, size: 32, offset: 9888)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3636, file: !1914, line: 886, baseType: !25, size: 32, offset: 9920)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3636, file: !1914, line: 888, baseType: !25, size: 32, offset: 9952)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3636, file: !1914, line: 890, baseType: !42, size: 64, offset: 9984)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3636, file: !1914, line: 893, baseType: !7, size: 32, offset: 10048)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3636, file: !1914, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3636, file: !1914, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3636, file: !1914, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3636, file: !1914, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3636, file: !1914, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3636, file: !1914, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3636, file: !1914, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3636, file: !1914, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3636, file: !1914, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3636, file: !1914, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3636, file: !1914, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3636, file: !1914, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3636, file: !1914, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3636, file: !1914, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3636, file: !1914, line: 969, baseType: !42, size: 64, offset: 10176)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3636, file: !1914, line: 971, baseType: !3870, size: 448, offset: 10240)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !264, line: 25, size: 448, elements: !3871)
!3871 = !{!3872, !3873, !3878}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3870, file: !264, line: 26, baseType: !42, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3870, file: !264, line: 27, baseType: !3874, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!1037, !3877}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, scope: !3870, file: !264, line: 28, baseType: !3879, size: 320, offset: 128)
!3879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3870, file: !264, line: 28, size: 320, elements: !3880)
!3880 = !{!3881, !3891, !3916}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3879, file: !264, line: 37, baseType: !3882, size: 320)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3879, file: !264, line: 30, size: 320, elements: !3883)
!3883 = !{!3884, !3886, !3887, !3888, !3889, !3890}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3882, file: !264, line: 31, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3882, file: !264, line: 32, baseType: !768, size: 32, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3882, file: !264, line: 33, baseType: !768, size: 32, offset: 96)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3882, file: !264, line: 34, baseType: !768, size: 32, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3882, file: !264, line: 35, baseType: !482, size: 64, offset: 192)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3882, file: !264, line: 36, baseType: !3885, size: 64, offset: 256)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3879, file: !264, line: 47, baseType: !3892, size: 192)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3879, file: !264, line: 39, size: 192, elements: !3893)
!3893 = !{!3894, !3895, !3896, !3915}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3892, file: !264, line: 40, baseType: !3328, size: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3892, file: !264, line: 41, baseType: !263, size: 32, offset: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, scope: !3892, file: !264, line: 42, baseType: !3897, size: 64, offset: 64)
!3897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3892, file: !264, line: 42, size: 64, elements: !3898)
!3898 = !{!3899, !3907}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3897, file: !264, line: 43, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3902, line: 7, size: 128, elements: !3903)
!3902 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3903 = !{!3904, !3906}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3901, file: !3902, line: 8, baseType: !3905, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !40, line: 93, baseType: !46)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3901, file: !3902, line: 9, baseType: !46, size: 64, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3897, file: !264, line: 44, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3910, line: 7, size: 64, elements: !3911)
!3910 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3911 = !{!3912, !3914}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3909, file: !3910, line: 8, baseType: !3913, size: 32)
!3913 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3910, line: 5, baseType: !728)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3909, file: !3910, line: 9, baseType: !728, size: 32, offset: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3892, file: !264, line: 46, baseType: !482, size: 64, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3879, file: !264, line: 55, baseType: !3917, size: 256)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3879, file: !264, line: 49, size: 256, elements: !3918)
!3918 = !{!3919, !3922, !3923, !3924, !3925}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3917, file: !264, line: 50, baseType: !3920, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !264, line: 14, flags: DIFlagFwdDecl)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3917, file: !264, line: 51, baseType: !25, size: 32, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3917, file: !264, line: 52, baseType: !25, size: 32, offset: 96)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3917, file: !264, line: 53, baseType: !42, size: 64, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3917, file: !264, line: 54, baseType: !42, size: 64, offset: 192)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3636, file: !1914, line: 973, baseType: !3927, size: 32, offset: 10688)
!3927 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !28, line: 27, baseType: !3928)
!3928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !40, line: 28, baseType: !25)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3636, file: !1914, line: 974, baseType: !3927, size: 32, offset: 10720)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3636, file: !1914, line: 978, baseType: !42, size: 64, offset: 10752)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3636, file: !1914, line: 987, baseType: !3635, size: 64, offset: 10816)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3636, file: !1914, line: 990, baseType: !3635, size: 64, offset: 10880)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3636, file: !1914, line: 995, baseType: !100, size: 128, offset: 10944)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3636, file: !1914, line: 996, baseType: !100, size: 128, offset: 11072)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3636, file: !1914, line: 997, baseType: !3635, size: 64, offset: 11200)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3636, file: !1914, line: 1005, baseType: !100, size: 128, offset: 11264)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3636, file: !1914, line: 1006, baseType: !100, size: 128, offset: 11392)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3636, file: !1914, line: 1009, baseType: !638, size: 64, offset: 11520)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3636, file: !1914, line: 1010, baseType: !3940, size: 512, offset: 11584)
!3940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 512, elements: !660)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3636, file: !1914, line: 1011, baseType: !100, size: 128, offset: 12096)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3636, file: !1914, line: 1012, baseType: !100, size: 128, offset: 12224)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3636, file: !1914, line: 1014, baseType: !974, size: 64, offset: 12352)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3636, file: !1914, line: 1017, baseType: !2498, size: 64, offset: 12416)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3636, file: !1914, line: 1020, baseType: !2498, size: 64, offset: 12480)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3636, file: !1914, line: 1023, baseType: !23, size: 64, offset: 12544)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3636, file: !1914, line: 1025, baseType: !482, size: 64, offset: 12608)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3636, file: !1914, line: 1026, baseType: !482, size: 64, offset: 12672)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3636, file: !1914, line: 1031, baseType: !482, size: 64, offset: 12736)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3636, file: !1914, line: 1032, baseType: !3951, size: 192, offset: 12800)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1914, line: 324, size: 192, elements: !3952)
!3952 = !{!3953, !3954, !3955}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3951, file: !1914, line: 326, baseType: !482, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3951, file: !1914, line: 327, baseType: !482, size: 64, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3951, file: !1914, line: 328, baseType: !465, size: 32, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3636, file: !1914, line: 1041, baseType: !42, size: 64, offset: 12992)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3636, file: !1914, line: 1042, baseType: !42, size: 64, offset: 13056)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3636, file: !1914, line: 1045, baseType: !482, size: 64, offset: 13120)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3636, file: !1914, line: 1048, baseType: !482, size: 64, offset: 13184)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3636, file: !1914, line: 1051, baseType: !42, size: 64, offset: 13248)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3636, file: !1914, line: 1052, baseType: !42, size: 64, offset: 13312)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3636, file: !1914, line: 1055, baseType: !3963, size: 640, offset: 13376)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3964, line: 132, size: 640, elements: !3965)
!3964 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3965 = !{!3966, !3972, !3973}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3963, file: !3964, line: 133, baseType: !3967, size: 576)
!3967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3968, size: 576, elements: !634)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3964, line: 117, size: 192, elements: !3969)
!3969 = !{!3970, !3971}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3968, file: !3964, line: 118, baseType: !482, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3968, file: !3964, line: 119, baseType: !3337, size: 128, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3963, file: !3964, line: 134, baseType: !7, size: 32, offset: 576)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3963, file: !3964, line: 135, baseType: !7, size: 32, offset: 608)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3636, file: !1914, line: 1058, baseType: !3975, size: 448, offset: 14016)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3964, line: 144, size: 448, elements: !3976)
!3976 = !{!3977, !3978, !3979}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3975, file: !3964, line: 145, baseType: !595, size: 128, align: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3975, file: !3964, line: 146, baseType: !539, size: 256, offset: 128)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3975, file: !3964, line: 147, baseType: !7, size: 32, offset: 384)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3636, file: !1914, line: 1064, baseType: !687, size: 64, offset: 14464)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3636, file: !1914, line: 1067, baseType: !687, size: 64, offset: 14528)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3636, file: !1914, line: 1070, baseType: !687, size: 64, offset: 14592)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3636, file: !1914, line: 1074, baseType: !720, size: 64, offset: 14656)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3636, file: !1914, line: 1084, baseType: !3985, size: 128, offset: 14720)
!3985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !3986)
!3986 = !{!3987}
!3987 = !DISubrange(count: 16)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3636, file: !1914, line: 1086, baseType: !3989, size: 64, offset: 14848)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1914, line: 55, flags: DIFlagFwdDecl)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3636, file: !1914, line: 1089, baseType: !3992, size: 64, offset: 14912)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3993, line: 12, size: 64, elements: !3994)
!3993 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3994 = !{!3995}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3992, file: !3993, line: 13, baseType: !3996, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3993, line: 8, flags: DIFlagFwdDecl)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3636, file: !1914, line: 1090, baseType: !3999, size: 128, offset: 14976)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4000, line: 13, size: 128, elements: !4001)
!4000 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4001 = !{!4002}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3999, file: !4000, line: 14, baseType: !100, size: 128)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3636, file: !1914, line: 1097, baseType: !4004, size: 64, offset: 15104)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1914, line: 50, flags: DIFlagFwdDecl)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3636, file: !1914, line: 1100, baseType: !4007, size: 64, offset: 15168)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1914, line: 1100, flags: DIFlagFwdDecl)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3636, file: !1914, line: 1103, baseType: !4010, size: 64, offset: 15232)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1914, line: 53, flags: DIFlagFwdDecl)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3636, file: !1914, line: 1107, baseType: !4013, size: 64, offset: 15296)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4015, line: 31, size: 576, elements: !4016)
!4015 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!4016 = !{!4017, !4018, !4021, !4024, !4027, !4028, !4029, !4032, !4033}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4014, file: !4015, line: 32, baseType: !642, size: 32)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !4014, file: !4015, line: 33, baseType: !4019, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !4015, line: 9, flags: DIFlagFwdDecl)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !4014, file: !4015, line: 34, baseType: !4022, size: 64, offset: 128)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !4015, line: 10, flags: DIFlagFwdDecl)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4014, file: !4015, line: 35, baseType: !4025, size: 64, offset: 192)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !4015, line: 8, flags: DIFlagFwdDecl)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !4014, file: !4015, line: 36, baseType: !671, size: 64, offset: 256)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !4014, file: !4015, line: 37, baseType: !1398, size: 64, offset: 320)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4014, file: !4015, line: 38, baseType: !4030, size: 64, offset: 384)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !4015, line: 38, flags: DIFlagFwdDecl)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !4014, file: !4015, line: 39, baseType: !4030, size: 64, offset: 448)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !4014, file: !4015, line: 40, baseType: !4034, size: 64, offset: 512)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !4036, line: 771, size: 384, elements: !4037)
!4036 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!4037 = !{!4038, !4039, !4040, !4041}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4035, file: !4036, line: 772, baseType: !920, size: 192)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4035, file: !4036, line: 773, baseType: !887, size: 64, offset: 192)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4035, file: !4036, line: 774, baseType: !1022, size: 64, offset: 256)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !4035, file: !4036, line: 775, baseType: !4042, size: 64, offset: 320)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !468, line: 209, size: 4736, elements: !4044)
!4044 = !{!4045, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4043, file: !468, line: 215, baseType: !4046, size: 896)
!4046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 896, elements: !4047)
!4047 = !{!4048}
!4048 = !DISubrange(count: 14)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4043, file: !468, line: 218, baseType: !642, size: 32, offset: 896)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4043, file: !468, line: 226, baseType: !4042, size: 64, offset: 960)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4043, file: !468, line: 229, baseType: !491, size: 64, offset: 1024)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4043, file: !468, line: 232, baseType: !25, size: 32, offset: 1088)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4043, file: !468, line: 241, baseType: !100, size: 128, offset: 1152)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4043, file: !468, line: 242, baseType: !100, size: 128, offset: 1280)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4043, file: !468, line: 243, baseType: !100, size: 128, offset: 1408)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4043, file: !468, line: 246, baseType: !100, size: 128, offset: 1536)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4043, file: !468, line: 255, baseType: !4058, size: 1792, offset: 1664)
!4058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 1792, elements: !4047)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4043, file: !468, line: 258, baseType: !100, size: 128, offset: 3456)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4043, file: !468, line: 259, baseType: !100, size: 128, offset: 3584)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4043, file: !468, line: 265, baseType: !655, size: 128, offset: 3712)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4043, file: !468, line: 271, baseType: !100, size: 128, offset: 3840)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4043, file: !468, line: 277, baseType: !100, size: 128, offset: 3968)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4043, file: !468, line: 278, baseType: !100, size: 128, offset: 4096)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4043, file: !468, line: 279, baseType: !100, size: 128, offset: 4224)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4043, file: !468, line: 288, baseType: !491, size: 64, offset: 4352)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4043, file: !468, line: 289, baseType: !491, size: 64, offset: 4416)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4043, file: !468, line: 290, baseType: !4042, size: 64, offset: 4480)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4043, file: !468, line: 293, baseType: !804, size: 8, offset: 4544)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4043, file: !468, line: 296, baseType: !595, size: 128, align: 64, offset: 4608)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3636, file: !1914, line: 1110, baseType: !4072, size: 64, offset: 15360)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4074, line: 93, size: 8768, elements: !4075)
!4074 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4075 = !{!4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4124, !4133, !4134, !4136, !4137, !4138, !4141, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4179, !4180, !4187, !4197, !4262, !4263, !4266, !4267, !4268, !4269, !4270, !4271}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4073, file: !4074, line: 94, baseType: !642, size: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4073, file: !4074, line: 95, baseType: !52, size: 32, offset: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4073, file: !4074, line: 96, baseType: !25, size: 32, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4073, file: !4074, line: 97, baseType: !25, size: 32, offset: 96)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4073, file: !4074, line: 98, baseType: !100, size: 128, offset: 128)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4073, file: !4074, line: 100, baseType: !57, size: 192, offset: 256)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4073, file: !4074, line: 103, baseType: !3635, size: 64, offset: 448)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4073, file: !4074, line: 106, baseType: !4084, size: 192, offset: 512)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4085, line: 32, size: 192, elements: !4086)
!4085 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4086 = !{!4087, !4088}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4084, file: !4085, line: 33, baseType: !100, size: 128)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4084, file: !4085, line: 34, baseType: !4089, size: 64, offset: 128)
!4089 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4090, line: 25, baseType: !4091)
!4090 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4090, line: 23, size: 64, elements: !4092)
!4092 = !{!4093}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4091, file: !4090, line: 24, baseType: !3798, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4073, file: !4074, line: 109, baseType: !651, size: 64, offset: 704)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4073, file: !4074, line: 112, baseType: !25, size: 32, offset: 768)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4073, file: !4074, line: 114, baseType: !25, size: 32, offset: 800)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4073, file: !4074, line: 115, baseType: !3635, size: 64, offset: 832)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4073, file: !4074, line: 118, baseType: !25, size: 32, offset: 896)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4073, file: !4074, line: 119, baseType: !7, size: 32, offset: 928)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4073, file: !4074, line: 121, baseType: !4101, size: 64, offset: 960)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4074, line: 80, size: 448, elements: !4103)
!4103 = !{!4104, !4105, !4111}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4102, file: !4074, line: 81, baseType: !52, size: 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4102, file: !4074, line: 82, baseType: !4106, size: 128, offset: 64)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4074, line: 75, size: 128, elements: !4107)
!4107 = !{!4108, !4109}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4106, file: !4074, line: 76, baseType: !3635, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4106, file: !4074, line: 77, baseType: !4110, size: 64, offset: 64)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4102, file: !4074, line: 83, baseType: !975, size: 256, offset: 192)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4073, file: !4074, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4073, file: !4074, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4073, file: !4074, line: 138, baseType: !7, size: 32, offset: 1056)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4073, file: !4074, line: 139, baseType: !100, size: 128, offset: 1088)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4073, file: !4074, line: 142, baseType: !3285, size: 512, offset: 1216)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4073, file: !4074, line: 143, baseType: !3265, size: 64, offset: 1728)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4073, file: !4074, line: 150, baseType: !4119, size: 256, offset: 1792)
!4119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4120, size: 256, elements: !2488)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4074, line: 38, size: 128, elements: !4121)
!4121 = !{!4122, !4123}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4120, file: !4074, line: 39, baseType: !482, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4120, file: !4074, line: 40, baseType: !482, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4073, file: !4074, line: 156, baseType: !4125, size: 192, offset: 2048)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4074, line: 66, size: 192, elements: !4126)
!4126 = !{!4127}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4125, file: !4074, line: 67, baseType: !4128, size: 192)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4074, line: 47, size: 192, elements: !4129)
!4129 = !{!4130, !4131, !4132}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4128, file: !4074, line: 48, baseType: !545, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4128, file: !4074, line: 49, baseType: !545, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4128, file: !4074, line: 50, baseType: !545, size: 64, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4073, file: !4074, line: 160, baseType: !3963, size: 640, offset: 2240)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4073, file: !4074, line: 163, baseType: !4135, size: 256, offset: 2880)
!4135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 256, elements: !660)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4073, file: !4074, line: 169, baseType: !638, size: 64, offset: 3136)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4073, file: !4074, line: 172, baseType: !25, size: 32, offset: 3200)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4073, file: !4074, line: 174, baseType: !4139, size: 64, offset: 3264)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4074, line: 174, flags: DIFlagFwdDecl)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4073, file: !4074, line: 185, baseType: !4142, size: 64, offset: 3328)
!4142 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !1080, line: 860, baseType: !4143)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1080, line: 853, size: 64, elements: !4144)
!4144 = !{!4145, !4146}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4143, file: !1080, line: 858, baseType: !1079, size: 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4143, file: !1080, line: 859, baseType: !62, size: 32, offset: 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4073, file: !4074, line: 186, baseType: !482, size: 64, offset: 3392)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4073, file: !4074, line: 186, baseType: !482, size: 64, offset: 3456)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4073, file: !4074, line: 186, baseType: !482, size: 64, offset: 3520)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4073, file: !4074, line: 186, baseType: !482, size: 64, offset: 3584)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4073, file: !4074, line: 187, baseType: !482, size: 64, offset: 3648)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4073, file: !4074, line: 188, baseType: !482, size: 64, offset: 3712)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4073, file: !4074, line: 189, baseType: !3951, size: 192, offset: 3776)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4073, file: !4074, line: 190, baseType: !42, size: 64, offset: 3968)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4073, file: !4074, line: 190, baseType: !42, size: 64, offset: 4032)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4073, file: !4074, line: 190, baseType: !42, size: 64, offset: 4096)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4073, file: !4074, line: 190, baseType: !42, size: 64, offset: 4160)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4073, file: !4074, line: 191, baseType: !42, size: 64, offset: 4224)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4073, file: !4074, line: 191, baseType: !42, size: 64, offset: 4288)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4073, file: !4074, line: 191, baseType: !42, size: 64, offset: 4352)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4073, file: !4074, line: 191, baseType: !42, size: 64, offset: 4416)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4073, file: !4074, line: 192, baseType: !42, size: 64, offset: 4480)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4073, file: !4074, line: 192, baseType: !42, size: 64, offset: 4544)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4073, file: !4074, line: 192, baseType: !42, size: 64, offset: 4608)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4073, file: !4074, line: 192, baseType: !42, size: 64, offset: 4672)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4073, file: !4074, line: 193, baseType: !42, size: 64, offset: 4736)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4073, file: !4074, line: 193, baseType: !42, size: 64, offset: 4800)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4073, file: !4074, line: 194, baseType: !4169, size: 448, offset: 4864)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4170, line: 12, size: 448, elements: !4171)
!4170 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4171 = !{!4172, !4173, !4174, !4175, !4176, !4177, !4178}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4169, file: !4170, line: 15, baseType: !482, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4169, file: !4170, line: 17, baseType: !482, size: 64, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4169, file: !4170, line: 19, baseType: !482, size: 64, offset: 128)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4169, file: !4170, line: 21, baseType: !482, size: 64, offset: 192)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4169, file: !4170, line: 29, baseType: !482, size: 64, offset: 256)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4169, file: !4170, line: 35, baseType: !482, size: 64, offset: 320)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4169, file: !4170, line: 44, baseType: !482, size: 64, offset: 384)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4073, file: !4074, line: 202, baseType: !484, size: 64, offset: 5312)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4073, file: !4074, line: 213, baseType: !4181, size: 2048, offset: 5376)
!4181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4182, size: 2048, elements: !3986)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4183, line: 43, size: 128, elements: !4184)
!4183 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4184 = !{!4185, !4186}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4182, file: !4183, line: 44, baseType: !41, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4182, file: !4183, line: 45, baseType: !41, size: 64, offset: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4073, file: !4074, line: 216, baseType: !4188, size: 448, offset: 7424)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4074, line: 30, size: 448, elements: !4189)
!4189 = !{!4190, !4191, !4192, !4193, !4194, !4195, !4196}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4188, file: !4074, line: 31, baseType: !25, size: 32)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4188, file: !4074, line: 32, baseType: !1037, size: 64, offset: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4188, file: !4074, line: 33, baseType: !42, size: 64, offset: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4188, file: !4074, line: 34, baseType: !482, size: 64, offset: 192)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4188, file: !4074, line: 34, baseType: !482, size: 64, offset: 256)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4188, file: !4074, line: 35, baseType: !42, size: 64, offset: 320)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4188, file: !4074, line: 35, baseType: !42, size: 64, offset: 384)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4073, file: !4074, line: 219, baseType: !4198, size: 64, offset: 7872)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4200, line: 41, size: 3456, elements: !4201)
!4200 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4201 = !{!4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4218, !4219, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4199, file: !4200, line: 47, baseType: !97, size: 16)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4199, file: !4200, line: 48, baseType: !769, size: 32, offset: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4199, file: !4200, line: 54, baseType: !88, size: 8, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4199, file: !4200, line: 55, baseType: !88, size: 8, offset: 72)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4199, file: !4200, line: 73, baseType: !483, size: 64, align: 64, offset: 128)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4199, file: !4200, line: 74, baseType: !483, size: 64, offset: 192)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4199, file: !4200, line: 81, baseType: !483, size: 64, offset: 256)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4199, file: !4200, line: 82, baseType: !483, size: 64, offset: 320)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4199, file: !4200, line: 85, baseType: !483, size: 64, offset: 384)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4199, file: !4200, line: 86, baseType: !483, size: 64, offset: 448)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4199, file: !4200, line: 94, baseType: !483, size: 64, offset: 512)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4199, file: !4200, line: 102, baseType: !483, size: 64, offset: 576)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4199, file: !4200, line: 107, baseType: !4215, size: 256, offset: 640)
!4215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !4216)
!4216 = !{!4217}
!4217 = !DISubrange(count: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4199, file: !4200, line: 108, baseType: !88, size: 8, align: 64, offset: 896)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4199, file: !4200, line: 110, baseType: !4220, size: 24, offset: 904)
!4220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 24, elements: !634)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4199, file: !4200, line: 111, baseType: !769, size: 32, align: 64, offset: 960)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4199, file: !4200, line: 113, baseType: !769, size: 32, offset: 992)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4199, file: !4200, line: 114, baseType: !769, size: 32, offset: 1024)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4199, file: !4200, line: 115, baseType: !769, size: 32, offset: 1056)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4199, file: !4200, line: 117, baseType: !769, size: 32, offset: 1088)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4199, file: !4200, line: 118, baseType: !483, size: 64, align: 64, offset: 1152)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4199, file: !4200, line: 120, baseType: !483, size: 64, offset: 1216)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4199, file: !4200, line: 121, baseType: !483, size: 64, offset: 1280)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4199, file: !4200, line: 122, baseType: !483, size: 64, offset: 1344)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4199, file: !4200, line: 123, baseType: !483, size: 64, offset: 1408)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4199, file: !4200, line: 133, baseType: !483, size: 64, offset: 1472)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4199, file: !4200, line: 137, baseType: !483, size: 64, offset: 1536)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4199, file: !4200, line: 142, baseType: !483, size: 64, offset: 1600)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4199, file: !4200, line: 143, baseType: !483, size: 64, offset: 1664)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4199, file: !4200, line: 146, baseType: !483, size: 64, offset: 1728)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4199, file: !4200, line: 147, baseType: !483, size: 64, offset: 1792)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4199, file: !4200, line: 148, baseType: !483, size: 64, offset: 1856)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4199, file: !4200, line: 149, baseType: !483, size: 64, offset: 1920)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4199, file: !4200, line: 154, baseType: !483, size: 64, offset: 1984)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4199, file: !4200, line: 155, baseType: !483, size: 64, offset: 2048)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4199, file: !4200, line: 156, baseType: !483, size: 64, offset: 2112)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4199, file: !4200, line: 158, baseType: !483, size: 64, offset: 2176)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4199, file: !4200, line: 159, baseType: !483, size: 64, offset: 2240)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4199, file: !4200, line: 162, baseType: !483, size: 64, offset: 2304)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4199, file: !4200, line: 163, baseType: !483, size: 64, offset: 2368)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4199, file: !4200, line: 164, baseType: !483, size: 64, offset: 2432)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4199, file: !4200, line: 167, baseType: !483, size: 64, offset: 2496)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4199, file: !4200, line: 168, baseType: !483, size: 64, offset: 2560)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4199, file: !4200, line: 171, baseType: !483, size: 64, offset: 2624)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4199, file: !4200, line: 172, baseType: !483, size: 64, offset: 2688)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4199, file: !4200, line: 175, baseType: !483, size: 64, offset: 2752)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4199, file: !4200, line: 178, baseType: !483, size: 64, offset: 2816)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4199, file: !4200, line: 179, baseType: !483, size: 64, offset: 2880)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4199, file: !4200, line: 182, baseType: !769, size: 32, offset: 2944)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4199, file: !4200, line: 186, baseType: !483, size: 64, align: 64, offset: 3008)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4199, file: !4200, line: 194, baseType: !483, size: 64, offset: 3072)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4199, file: !4200, line: 195, baseType: !483, size: 64, offset: 3136)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4199, file: !4200, line: 199, baseType: !483, size: 64, offset: 3200)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4199, file: !4200, line: 200, baseType: !483, size: 64, offset: 3264)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4199, file: !4200, line: 203, baseType: !483, size: 64, offset: 3328)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4199, file: !4200, line: 204, baseType: !483, size: 64, offset: 3392)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4073, file: !4074, line: 222, baseType: !7, size: 32, offset: 7936)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4073, file: !4074, line: 223, baseType: !4264, size: 64, offset: 8000)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4074, line: 223, flags: DIFlagFwdDecl)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4073, file: !4074, line: 230, baseType: !804, size: 8, offset: 8064)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4073, file: !4074, line: 231, baseType: !773, size: 16, offset: 8080)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4073, file: !4074, line: 232, baseType: !773, size: 16, offset: 8096)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4073, file: !4074, line: 234, baseType: !1678, size: 64, offset: 8128)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4073, file: !4074, line: 237, baseType: !539, size: 256, offset: 8192)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4073, file: !4074, line: 243, baseType: !743, size: 320, offset: 8448)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3636, file: !1914, line: 1111, baseType: !4273, size: 64, offset: 15424)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4074, line: 20, size: 16640, elements: !4275)
!4275 = !{!4276, !4277, !4278, !4279}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4274, file: !4074, line: 21, baseType: !62, size: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4274, file: !4074, line: 22, baseType: !642, size: 32, offset: 32)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4274, file: !4074, line: 23, baseType: !57, size: 192, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4274, file: !4074, line: 24, baseType: !4280, size: 16384, offset: 256)
!4280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4281, size: 16384, elements: !1470)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4085, line: 51, size: 256, elements: !4282)
!4282 = !{!4283}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4281, file: !4085, line: 52, baseType: !4284, size: 256)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4085, line: 37, size: 256, elements: !4285)
!4285 = !{!4286, !4293, !4294, !4298}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4284, file: !4085, line: 39, baseType: !4287, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4288, line: 83, baseType: !4289)
!4288 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4288, line: 82, baseType: !4291)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{null, !25}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4284, file: !4085, line: 40, baseType: !42, size: 64, offset: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4284, file: !4085, line: 46, baseType: !4295, size: 64, offset: 128)
!4295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4288, line: 86, baseType: !4296)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4288, line: 85, baseType: !2702)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4284, file: !4085, line: 48, baseType: !4089, size: 64, offset: 192)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3636, file: !1914, line: 1112, baseType: !4089, size: 64, offset: 15488)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3636, file: !1914, line: 1113, baseType: !4089, size: 64, offset: 15552)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3636, file: !1914, line: 1115, baseType: !4089, size: 64, offset: 15616)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3636, file: !1914, line: 1116, baseType: !4084, size: 192, offset: 15680)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3636, file: !1914, line: 1117, baseType: !42, size: 64, offset: 15872)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3636, file: !1914, line: 1118, baseType: !38, size: 64, offset: 15936)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3636, file: !1914, line: 1119, baseType: !7, size: 32, offset: 16000)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3636, file: !1914, line: 1121, baseType: !598, size: 64, offset: 16064)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3636, file: !1914, line: 1125, baseType: !4308, size: 64, offset: 16128)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1914, line: 43, flags: DIFlagFwdDecl)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3636, file: !1914, line: 1127, baseType: !677, size: 32, offset: 16192)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3636, file: !1914, line: 1128, baseType: !7, size: 32, offset: 16224)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3636, file: !1914, line: 1130, baseType: !4313, size: 128, offset: 16256)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4314, line: 37, size: 128, elements: !4315)
!4314 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4315 = !{!4316, !4317, !4318}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4313, file: !4314, line: 38, baseType: !25, size: 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4313, file: !4314, line: 39, baseType: !52, size: 32, offset: 32)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4313, file: !4314, line: 40, baseType: !4319, size: 64, offset: 64)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4314, line: 24, flags: DIFlagFwdDecl)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3636, file: !1914, line: 1131, baseType: !4322, size: 256, offset: 16384)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4323, line: 12, size: 256, elements: !4324)
!4323 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4324 = !{!4325, !4326, !4327, !4328}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4322, file: !4323, line: 13, baseType: !531, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4322, file: !4323, line: 14, baseType: !42, size: 64, offset: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4322, file: !4323, line: 15, baseType: !42, size: 64, offset: 128)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4322, file: !4323, line: 16, baseType: !804, size: 8, offset: 192)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3636, file: !1914, line: 1134, baseType: !482, size: 64, offset: 16640)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3636, file: !1914, line: 1135, baseType: !482, size: 64, offset: 16704)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3636, file: !1914, line: 1138, baseType: !62, size: 32, offset: 16768)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3636, file: !1914, line: 1141, baseType: !465, size: 32, offset: 16800)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3636, file: !1914, line: 1143, baseType: !4334, size: 64, offset: 16832)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1914, line: 735, size: 64, elements: !4335)
!4335 = !{!4336}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4334, file: !1914, line: 736, baseType: !4337, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3636, file: !1914, line: 1147, baseType: !1540, size: 128, offset: 16896)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3636, file: !1914, line: 1149, baseType: !3635, size: 64, offset: 17024)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3636, file: !1914, line: 1151, baseType: !4341, size: 64, offset: 17088)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1914, line: 1151, flags: DIFlagFwdDecl)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3636, file: !1914, line: 1188, baseType: !23, size: 64, offset: 17152)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3636, file: !1914, line: 1191, baseType: !4345, size: 64, offset: 17216)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1914, line: 44, flags: DIFlagFwdDecl)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3636, file: !1914, line: 1194, baseType: !4348, size: 64, offset: 17280)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1914, line: 45, flags: DIFlagFwdDecl)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3636, file: !1914, line: 1197, baseType: !4351, size: 64, offset: 17344)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1914, line: 61, flags: DIFlagFwdDecl)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3636, file: !1914, line: 1199, baseType: !4354, size: 64, offset: 17408)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3059, line: 99, size: 128, elements: !4356)
!4356 = !{!4357, !4358, !4359}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4355, file: !3059, line: 100, baseType: !543, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4355, file: !3059, line: 101, baseType: !52, size: 32, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4355, file: !3059, line: 103, baseType: !29, size: 16, offset: 96)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3636, file: !1914, line: 1202, baseType: !4361, size: 64, offset: 17472)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1914, line: 48, flags: DIFlagFwdDecl)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3636, file: !1914, line: 1205, baseType: !42, size: 64, offset: 17536)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3636, file: !1914, line: 1206, baseType: !4365, size: 64, offset: 17600)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4085, line: 14, baseType: !4367)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4085, line: 12, size: 384, elements: !4368)
!4368 = !{!4369}
!4369 = !DIDerivedType(tag: DW_TAG_member, scope: !4367, file: !4085, line: 13, baseType: !4370, size: 384)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4367, file: !4085, line: 13, size: 384, elements: !4371)
!4371 = !{!4372, !4373, !4374, !4375}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4370, file: !4085, line: 13, baseType: !25, size: 32)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4370, file: !4085, line: 13, baseType: !25, size: 32, offset: 32)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4370, file: !4085, line: 13, baseType: !25, size: 32, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4370, file: !4085, line: 13, baseType: !4376, size: 256, offset: 128)
!4376 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4377, line: 37, size: 256, elements: !4378)
!4377 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4378 = !{!4379, !4384, !4397, !4403, !4412, !4439, !4444}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4376, file: !4377, line: 42, baseType: !4380, size: 64)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4376, file: !4377, line: 39, size: 64, elements: !4381)
!4381 = !{!4382, !4383}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4380, file: !4377, line: 40, baseType: !3928, size: 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4380, file: !4377, line: 41, baseType: !683, size: 32, offset: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4376, file: !4377, line: 50, baseType: !4385, size: 192)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4376, file: !4377, line: 45, size: 192, elements: !4386)
!4386 = !{!4387, !4389, !4390, !4396}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4385, file: !4377, line: 46, baseType: !4388, size: 32)
!4388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !40, line: 95, baseType: !25)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4385, file: !4377, line: 47, baseType: !25, size: 32, offset: 32)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4385, file: !4377, line: 48, baseType: !4391, size: 64, offset: 64)
!4391 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4377, line: 11, baseType: !4392)
!4392 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4377, line: 8, size: 64, elements: !4393)
!4393 = !{!4394, !4395}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4392, file: !4377, line: 9, baseType: !25, size: 32)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4392, file: !4377, line: 10, baseType: !23, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4385, file: !4377, line: 49, baseType: !25, size: 32, offset: 128)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4376, file: !4377, line: 57, baseType: !4398, size: 128)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4376, file: !4377, line: 53, size: 128, elements: !4399)
!4399 = !{!4400, !4401, !4402}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4398, file: !4377, line: 54, baseType: !3928, size: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4398, file: !4377, line: 55, baseType: !683, size: 32, offset: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4398, file: !4377, line: 56, baseType: !4391, size: 64, offset: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4376, file: !4377, line: 66, baseType: !4404, size: 256)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4376, file: !4377, line: 60, size: 256, elements: !4405)
!4405 = !{!4406, !4407, !4408, !4409, !4411}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4404, file: !4377, line: 61, baseType: !3928, size: 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4404, file: !4377, line: 62, baseType: !683, size: 32, offset: 32)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4404, file: !4377, line: 63, baseType: !25, size: 32, offset: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4404, file: !4377, line: 64, baseType: !4410, size: 64, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !40, line: 94, baseType: !1268)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4404, file: !4377, line: 65, baseType: !4410, size: 64, offset: 192)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4376, file: !4377, line: 105, baseType: !4413, size: 256)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4376, file: !4377, line: 69, size: 256, elements: !4414)
!4414 = !{!4415, !4416}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4413, file: !4377, line: 70, baseType: !23, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, scope: !4413, file: !4377, line: 79, baseType: !4417, size: 192, offset: 64)
!4417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4413, file: !4377, line: 79, size: 192, elements: !4418)
!4418 = !{!4419, !4420, !4421, !4428, !4433}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4417, file: !4377, line: 81, baseType: !25, size: 32)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4417, file: !4377, line: 86, baseType: !773, size: 16)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4417, file: !4377, line: 92, baseType: !4422, size: 192)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4417, file: !4377, line: 88, size: 192, elements: !4423)
!4423 = !{!4424, !4426, !4427}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4422, file: !4377, line: 89, baseType: !4425, size: 64)
!4425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !2707)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4422, file: !4377, line: 90, baseType: !23, size: 64, offset: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4422, file: !4377, line: 91, baseType: !23, size: 64, offset: 128)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4417, file: !4377, line: 97, baseType: !4429, size: 96)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4417, file: !4377, line: 94, size: 96, elements: !4430)
!4430 = !{!4431, !4432}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4429, file: !4377, line: 95, baseType: !4425, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4429, file: !4377, line: 96, baseType: !769, size: 32, offset: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4417, file: !4377, line: 103, baseType: !4434, size: 128)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4417, file: !4377, line: 99, size: 128, elements: !4435)
!4435 = !{!4436, !4437, !4438}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4434, file: !4377, line: 100, baseType: !42, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4434, file: !4377, line: 101, baseType: !769, size: 32, offset: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4434, file: !4377, line: 102, baseType: !769, size: 32, offset: 96)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4376, file: !4377, line: 111, baseType: !4440, size: 128)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4376, file: !4377, line: 108, size: 128, elements: !4441)
!4441 = !{!4442, !4443}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4440, file: !4377, line: 109, baseType: !1037, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4440, file: !4377, line: 110, baseType: !25, size: 32, offset: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4376, file: !4377, line: 118, baseType: !4445, size: 128)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4376, file: !4377, line: 114, size: 128, elements: !4446)
!4446 = !{!4447, !4448, !4449}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4445, file: !4377, line: 115, baseType: !23, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4445, file: !4377, line: 116, baseType: !25, size: 32, offset: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4445, file: !4377, line: 117, baseType: !7, size: 32, offset: 96)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3636, file: !1914, line: 1208, baseType: !4169, size: 448, offset: 17664)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3636, file: !1914, line: 1215, baseType: !482, size: 64, offset: 18112)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3636, file: !1914, line: 1217, baseType: !482, size: 64, offset: 18176)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3636, file: !1914, line: 1219, baseType: !482, size: 64, offset: 18240)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3636, file: !1914, line: 1223, baseType: !4455, size: 64, offset: 18304)
!4455 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4456, line: 99, baseType: !4457)
!4456 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4456, line: 99, size: 64, elements: !4458)
!4458 = !{!4459}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4457, file: !4456, line: 99, baseType: !3798, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3636, file: !1914, line: 1225, baseType: !1079, size: 32, offset: 18368)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3636, file: !1914, line: 1226, baseType: !25, size: 32, offset: 18400)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3636, file: !1914, line: 1227, baseType: !25, size: 32, offset: 18432)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3636, file: !1914, line: 1231, baseType: !4042, size: 64, offset: 18496)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3636, file: !1914, line: 1233, baseType: !100, size: 128, offset: 18560)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3636, file: !1914, line: 1240, baseType: !4466, size: 64, offset: 18688)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1914, line: 62, flags: DIFlagFwdDecl)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3636, file: !1914, line: 1242, baseType: !4469, size: 64, offset: 18752)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1914, line: 1242, flags: DIFlagFwdDecl)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3636, file: !1914, line: 1244, baseType: !100, size: 128, offset: 18816)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3636, file: !1914, line: 1245, baseType: !4473, size: 64, offset: 18944)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1914, line: 51, flags: DIFlagFwdDecl)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3636, file: !1914, line: 1246, baseType: !539, size: 256, offset: 19008)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3636, file: !1914, line: 1247, baseType: !7, size: 32, offset: 19264)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3636, file: !1914, line: 1250, baseType: !4478, size: 64, offset: 19328)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1914, line: 57, flags: DIFlagFwdDecl)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3636, file: !1914, line: 1251, baseType: !539, size: 256, offset: 19392)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3636, file: !1914, line: 1252, baseType: !100, size: 128, offset: 19648)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3636, file: !1914, line: 1259, baseType: !1912, size: 64, offset: 19776)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3636, file: !1914, line: 1260, baseType: !773, size: 16, offset: 19840)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3636, file: !1914, line: 1261, baseType: !773, size: 16, offset: 19856)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3636, file: !1914, line: 1314, baseType: !4486, size: 64, offset: 19904)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4488, line: 62, size: 256, align: 256, elements: !4489)
!4488 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4489 = !{!4490, !4491, !4492, !4493, !4494, !4495, !4496}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4487, file: !4488, line: 75, baseType: !769, size: 32)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4487, file: !4488, line: 90, baseType: !769, size: 32, offset: 32)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4487, file: !4488, line: 112, baseType: !483, size: 64, offset: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4487, file: !4488, line: 132, baseType: !769, size: 32, offset: 128)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4487, file: !4488, line: 140, baseType: !769, size: 32, offset: 160)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4487, file: !4488, line: 149, baseType: !769, size: 32, offset: 192)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4487, file: !4488, line: 154, baseType: !4497, offset: 224)
!4497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, elements: !673)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3636, file: !1914, line: 1315, baseType: !768, size: 32, offset: 19968)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3636, file: !1914, line: 1316, baseType: !768, size: 32, offset: 20000)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3636, file: !1914, line: 1321, baseType: !42, size: 64, offset: 20032)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3636, file: !1914, line: 1325, baseType: !25, size: 32, offset: 20096)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3636, file: !1914, line: 1326, baseType: !25, size: 32, offset: 20128)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3636, file: !1914, line: 1327, baseType: !25, size: 32, offset: 20160)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3636, file: !1914, line: 1328, baseType: !25, size: 32, offset: 20192)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3636, file: !1914, line: 1329, baseType: !595, size: 128, align: 64, offset: 20224)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3636, file: !1914, line: 1332, baseType: !4507, size: 128, offset: 20352)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4508, line: 51, size: 128, elements: !4509)
!4508 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4509 = !{!4510, !4515, !4516}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4507, file: !4508, line: 60, baseType: !4511, size: 64)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4512, line: 7, size: 64, elements: !4513)
!4512 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4513 = !{!4514}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4511, file: !4512, line: 12, baseType: !3795, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4507, file: !4508, line: 63, baseType: !804, size: 8, offset: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4507, file: !4508, line: 70, baseType: !804, size: 8, offset: 72)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3636, file: !1914, line: 1335, baseType: !4518, size: 64, offset: 20480)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1914, line: 59, flags: DIFlagFwdDecl)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3636, file: !1914, line: 1337, baseType: !4521, size: 128, offset: 20544)
!4521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4508, line: 39, size: 128, elements: !4522)
!4522 = !{!4523, !4524, !4525}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4521, file: !4508, line: 40, baseType: !1555, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4521, file: !4508, line: 42, baseType: !769, size: 32, offset: 64)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4521, file: !4508, line: 43, baseType: !769, size: 32, offset: 96)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3636, file: !1914, line: 1340, baseType: !4527, size: 64, offset: 20672)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1914, line: 69, flags: DIFlagFwdDecl)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3636, file: !1914, line: 1351, baseType: !25, size: 32, offset: 20736)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3636, file: !1914, line: 1352, baseType: !25, size: 32, offset: 20768)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3636, file: !1914, line: 1354, baseType: !42, size: 64, offset: 20800)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3636, file: !1914, line: 1364, baseType: !482, size: 64, offset: 20864)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3636, file: !1914, line: 1365, baseType: !482, size: 64, offset: 20928)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3636, file: !1914, line: 1412, baseType: !42, size: 64, offset: 20992)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3636, file: !1914, line: 1453, baseType: !3054, size: 64, offset: 21056)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3636, file: !1914, line: 1457, baseType: !4537, size: 64, offset: 21120)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !270, line: 61, size: 576, elements: !4539)
!4539 = !{!4540, !4541, !4560, !4563, !4564, !4597, !4607}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4538, file: !270, line: 62, baseType: !269, size: 32)
!4541 = !DIDerivedType(tag: DW_TAG_member, scope: !4538, file: !270, line: 64, baseType: !4542, size: 192, offset: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4538, file: !270, line: 64, size: 192, elements: !4543)
!4543 = !{!4544, !4555}
!4544 = !DIDerivedType(tag: DW_TAG_member, scope: !4542, file: !270, line: 65, baseType: !4545, size: 192)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4542, file: !270, line: 65, size: 192, elements: !4546)
!4546 = !{!4547, !4554}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4545, file: !270, line: 66, baseType: !4548, size: 128)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4549, line: 50, size: 128, elements: !4550)
!4549 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4550 = !{!4551, !4552, !4553}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4548, file: !4549, line: 52, baseType: !42, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4548, file: !4549, line: 54, baseType: !7, size: 32, offset: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4548, file: !4549, line: 55, baseType: !7, size: 32, offset: 96)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4545, file: !270, line: 67, baseType: !42, size: 64, offset: 128)
!4555 = !DIDerivedType(tag: DW_TAG_member, scope: !4542, file: !270, line: 70, baseType: !4556, size: 192)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4542, file: !270, line: 70, size: 192, elements: !4557)
!4557 = !{!4558, !4559}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4556, file: !270, line: 71, baseType: !595, size: 128, align: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4556, file: !270, line: 72, baseType: !42, size: 64, offset: 128)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4538, file: !270, line: 76, baseType: !4561, size: 64, offset: 256)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !270, line: 76, flags: DIFlagFwdDecl)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4538, file: !270, line: 77, baseType: !42, size: 64, offset: 320)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4538, file: !270, line: 79, baseType: !4565, size: 64, offset: 384)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4549, line: 25, size: 256, elements: !4567)
!4567 = !{!4568, !4574, !4578}
!4568 = !DIDerivedType(tag: DW_TAG_member, scope: !4566, file: !4549, line: 26, baseType: !4569, size: 128)
!4569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4566, file: !4549, line: 26, size: 128, elements: !4570)
!4570 = !{!4571, !4573}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4569, file: !4549, line: 27, baseType: !4572, size: 128)
!4572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, elements: !3986)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4569, file: !4549, line: 28, baseType: !4572, size: 128)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4566, file: !4549, line: 31, baseType: !4575, size: 64, offset: 128)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4577)
!4577 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4549, line: 23, flags: DIFlagFwdDecl)
!4578 = !DIDerivedType(tag: DW_TAG_member, scope: !4566, file: !4549, line: 33, baseType: !4579, size: 64, offset: 192)
!4579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4566, file: !4549, line: 33, size: 64, elements: !4580)
!4580 = !{!4581, !4587, !4592}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4579, file: !4549, line: 38, baseType: !4582, size: 64)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4579, file: !4549, line: 34, size: 64, elements: !4583)
!4583 = !{!4584, !4585, !4586}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4582, file: !4549, line: 35, baseType: !728, size: 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4582, file: !4549, line: 36, baseType: !86, size: 8, offset: 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4582, file: !4549, line: 37, baseType: !86, size: 8, offset: 40)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4579, file: !4549, line: 42, baseType: !4588, size: 16)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4579, file: !4549, line: 39, size: 16, elements: !4589)
!4589 = !{!4590, !4591}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4588, file: !4549, line: 40, baseType: !86, size: 8)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4588, file: !4549, line: 41, baseType: !86, size: 8, offset: 8)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4579, file: !4549, line: 46, baseType: !4593, size: 16)
!4593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4579, file: !4549, line: 43, size: 16, elements: !4594)
!4594 = !{!4595, !4596}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4593, file: !4549, line: 44, baseType: !86, size: 8)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4593, file: !4549, line: 45, baseType: !86, size: 8, offset: 8)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4538, file: !270, line: 81, baseType: !4598, size: 64, offset: 448)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !270, line: 85, size: 384, elements: !4600)
!4600 = !{!4601, !4602, !4603, !4604, !4605, !4606}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4599, file: !270, line: 86, baseType: !4561, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4599, file: !270, line: 87, baseType: !42, size: 64, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4599, file: !270, line: 88, baseType: !42, size: 64, offset: 128)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4599, file: !270, line: 89, baseType: !42, size: 64, offset: 192)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4599, file: !270, line: 90, baseType: !804, size: 8, offset: 256)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4599, file: !270, line: 92, baseType: !4598, size: 64, offset: 320)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4538, file: !270, line: 82, baseType: !7, size: 32, offset: 512)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3636, file: !1914, line: 1463, baseType: !4609, offset: 21184)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1914, line: 739, elements: !473)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3636, file: !1914, line: 1470, baseType: !595, size: 128, align: 64, offset: 21184)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3636, file: !1914, line: 1471, baseType: !642, size: 32, offset: 21312)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3636, file: !1914, line: 1472, baseType: !25, size: 32, offset: 21344)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3636, file: !1914, line: 1474, baseType: !3635, size: 64, offset: 21376)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3636, file: !1914, line: 1475, baseType: !2597, size: 320, offset: 21440)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3636, file: !1914, line: 1478, baseType: !4616, size: 64, offset: 21760)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1914, line: 1478, flags: DIFlagFwdDecl)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3636, file: !1914, line: 1482, baseType: !642, size: 32, offset: 21824)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3636, file: !1914, line: 1489, baseType: !23, size: 64, offset: 21888)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3636, file: !1914, line: 1504, baseType: !23, size: 64, offset: 21952)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3636, file: !1914, line: 1505, baseType: !483, size: 64, offset: 22016)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3636, file: !1914, line: 1506, baseType: !482, size: 64, offset: 22080)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3636, file: !1914, line: 1507, baseType: !483, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3636, file: !1914, line: 1508, baseType: !483, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3636, file: !1914, line: 1509, baseType: !483, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3636, file: !1914, line: 1510, baseType: !595, size: 128, align: 64, offset: 22208)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3636, file: !1914, line: 1511, baseType: !25, size: 32, offset: 22336)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3636, file: !1914, line: 1515, baseType: !4629, size: 64, offset: 22400)
!4629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !590, line: 56, size: 64, elements: !4630)
!4630 = !{!4631}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4629, file: !590, line: 57, baseType: !593, size: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3636, file: !1914, line: 1518, baseType: !4629, size: 64, offset: 22464)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3636, file: !1914, line: 1528, baseType: !595, size: 128, align: 64, offset: 22528)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3636, file: !1914, line: 1552, baseType: !4635, size: 35328, offset: 23040)
!4635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4636, line: 430, size: 35328, elements: !4637)
!4636 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4637 = !{!4638, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4667, !4668, !4669, !4670, !4671, !4672, !4675, !4676, !4677, !4678}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4635, file: !4636, line: 432, baseType: !4639, size: 192)
!4639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4640, size: 192, elements: !634)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4641, line: 16, size: 64, elements: !4642)
!4641 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4642 = !{!4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4640, file: !4641, line: 17, baseType: !96, size: 16)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4640, file: !4641, line: 18, baseType: !96, size: 16, offset: 16)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4640, file: !4641, line: 19, baseType: !96, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4640, file: !4641, line: 19, baseType: !96, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4640, file: !4641, line: 19, baseType: !96, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4640, file: !4641, line: 19, baseType: !96, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4640, file: !4641, line: 19, baseType: !96, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4640, file: !4641, line: 20, baseType: !96, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4640, file: !4641, line: 20, baseType: !96, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4640, file: !4641, line: 20, baseType: !96, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4640, file: !4641, line: 20, baseType: !96, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4640, file: !4641, line: 20, baseType: !96, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4640, file: !4641, line: 20, baseType: !96, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4635, file: !4636, line: 436, baseType: !42, size: 64, offset: 192)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4635, file: !4636, line: 440, baseType: !29, size: 16, offset: 256)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4635, file: !4636, line: 441, baseType: !29, size: 16, offset: 272)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4635, file: !4636, line: 442, baseType: !29, size: 16, offset: 288)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4635, file: !4636, line: 443, baseType: !29, size: 16, offset: 304)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4635, file: !4636, line: 447, baseType: !42, size: 64, offset: 320)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4635, file: !4636, line: 448, baseType: !42, size: 64, offset: 384)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4635, file: !4636, line: 459, baseType: !4664, size: 256, offset: 448)
!4664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4665, size: 256, elements: !660)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4636, line: 428, flags: DIFlagFwdDecl)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4635, file: !4636, line: 461, baseType: !42, size: 64, offset: 704)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4635, file: !4636, line: 463, baseType: !42, size: 64, offset: 768)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4635, file: !4636, line: 465, baseType: !42, size: 64, offset: 832)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4635, file: !4636, line: 466, baseType: !42, size: 64, offset: 896)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4635, file: !4636, line: 467, baseType: !42, size: 64, offset: 960)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4635, file: !4636, line: 473, baseType: !4673, size: 64, offset: 1024)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4636, line: 10, flags: DIFlagFwdDecl)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4635, file: !4636, line: 480, baseType: !42, size: 64, offset: 1088)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4635, file: !4636, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4635, file: !4636, line: 491, baseType: !768, size: 32, offset: 1184)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4635, file: !4636, line: 501, baseType: !4679, size: 33792, offset: 1536)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4680, line: 448, size: 33792, elements: !4681)
!4680 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4681 = !{!4682, !4683, !4684, !4846, !4847, !4853, !4854}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4679, file: !4680, line: 461, baseType: !7, size: 32)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4679, file: !4680, line: 468, baseType: !42, size: 64, offset: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4679, file: !4680, line: 476, baseType: !4685, size: 64, offset: 128)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4680, line: 356, size: 33280, align: 512, elements: !4687)
!4687 = !{!4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4686, file: !4680, line: 358, baseType: !7, size: 32)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4686, file: !4680, line: 361, baseType: !7, size: 32, offset: 32)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4686, file: !4680, line: 364, baseType: !482, size: 64, offset: 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4686, file: !4680, line: 367, baseType: !482, size: 64, offset: 128)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4686, file: !4680, line: 370, baseType: !482, size: 64, offset: 192)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4686, file: !4680, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4686, file: !4680, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4686, file: !4680, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4686, file: !4680, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4686, file: !4680, line: 397, baseType: !4698, size: 32768, offset: 512)
!4698 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4680, line: 348, size: 32768, elements: !4699)
!4699 = !{!4700, !4715, !4752, !4829, !4842}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4698, file: !4680, line: 349, baseType: !4701, size: 896)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4680, line: 12, size: 896, elements: !4702)
!4702 = !{!4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4714}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4701, file: !4680, line: 13, baseType: !768, size: 32)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4701, file: !4680, line: 14, baseType: !768, size: 32, offset: 32)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4701, file: !4680, line: 15, baseType: !768, size: 32, offset: 64)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4701, file: !4680, line: 16, baseType: !768, size: 32, offset: 96)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4701, file: !4680, line: 17, baseType: !768, size: 32, offset: 128)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4701, file: !4680, line: 18, baseType: !768, size: 32, offset: 160)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4701, file: !4680, line: 19, baseType: !768, size: 32, offset: 192)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4701, file: !4680, line: 22, baseType: !4711, size: 640, offset: 224)
!4711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 640, elements: !4712)
!4712 = !{!4713}
!4713 = !DISubrange(count: 20)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4701, file: !4680, line: 25, baseType: !768, size: 32, offset: 864)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4698, file: !4680, line: 350, baseType: !4716, size: 4096, align: 128)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4680, line: 34, size: 4096, align: 128, elements: !4717)
!4717 = !{!4718, !4719, !4720, !4721, !4722, !4737, !4738, !4739, !4741, !4743, !4747}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4716, file: !4680, line: 35, baseType: !96, size: 16)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4716, file: !4680, line: 36, baseType: !96, size: 16, offset: 16)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4716, file: !4680, line: 37, baseType: !96, size: 16, offset: 32)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4716, file: !4680, line: 38, baseType: !96, size: 16, offset: 48)
!4722 = !DIDerivedType(tag: DW_TAG_member, scope: !4716, file: !4680, line: 39, baseType: !4723, size: 128, offset: 64)
!4723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4716, file: !4680, line: 39, size: 128, elements: !4724)
!4724 = !{!4725, !4730}
!4725 = !DIDerivedType(tag: DW_TAG_member, scope: !4723, file: !4680, line: 40, baseType: !4726, size: 128)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4723, file: !4680, line: 40, size: 128, elements: !4727)
!4727 = !{!4728, !4729}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4726, file: !4680, line: 41, baseType: !482, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4726, file: !4680, line: 42, baseType: !482, size: 64, offset: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, scope: !4723, file: !4680, line: 44, baseType: !4731, size: 128)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4723, file: !4680, line: 44, size: 128, elements: !4732)
!4732 = !{!4733, !4734, !4735, !4736}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4731, file: !4680, line: 45, baseType: !768, size: 32)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4731, file: !4680, line: 46, baseType: !768, size: 32, offset: 32)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4731, file: !4680, line: 47, baseType: !768, size: 32, offset: 64)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4731, file: !4680, line: 48, baseType: !768, size: 32, offset: 96)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4716, file: !4680, line: 51, baseType: !768, size: 32, offset: 192)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4716, file: !4680, line: 52, baseType: !768, size: 32, offset: 224)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4716, file: !4680, line: 55, baseType: !4740, size: 1024, offset: 256)
!4740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 1024, elements: !4216)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4716, file: !4680, line: 58, baseType: !4742, size: 2048, offset: 1280)
!4742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 2048, elements: !1470)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4716, file: !4680, line: 60, baseType: !4744, size: 384, offset: 3328)
!4744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 384, elements: !4745)
!4745 = !{!4746}
!4746 = !DISubrange(count: 12)
!4747 = !DIDerivedType(tag: DW_TAG_member, scope: !4716, file: !4680, line: 62, baseType: !4748, size: 384, offset: 3712)
!4748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4716, file: !4680, line: 62, size: 384, elements: !4749)
!4749 = !{!4750, !4751}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4748, file: !4680, line: 63, baseType: !4744, size: 384)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4748, file: !4680, line: 64, baseType: !4744, size: 384)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4698, file: !4680, line: 351, baseType: !4753, size: 1088)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4680, line: 79, size: 1088, elements: !4754)
!4754 = !{!4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4828}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4753, file: !4680, line: 80, baseType: !768, size: 32)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4753, file: !4680, line: 81, baseType: !768, size: 32, offset: 32)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4753, file: !4680, line: 82, baseType: !768, size: 32, offset: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4753, file: !4680, line: 83, baseType: !768, size: 32, offset: 96)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4753, file: !4680, line: 84, baseType: !768, size: 32, offset: 128)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4753, file: !4680, line: 85, baseType: !768, size: 32, offset: 160)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4753, file: !4680, line: 86, baseType: !768, size: 32, offset: 192)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4753, file: !4680, line: 88, baseType: !4711, size: 640, offset: 224)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4753, file: !4680, line: 89, baseType: !86, size: 8, offset: 864)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4753, file: !4680, line: 90, baseType: !86, size: 8, offset: 872)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4753, file: !4680, line: 91, baseType: !86, size: 8, offset: 880)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4753, file: !4680, line: 92, baseType: !86, size: 8, offset: 888)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4753, file: !4680, line: 93, baseType: !86, size: 8, offset: 896)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4753, file: !4680, line: 94, baseType: !86, size: 8, offset: 904)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4753, file: !4680, line: 95, baseType: !4770, size: 64, offset: 960)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4772, line: 11, size: 128, elements: !4773)
!4772 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4773 = !{!4774, !4775}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4771, file: !4772, line: 12, baseType: !1037, size: 64)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4771, file: !4772, line: 13, baseType: !4776, size: 64, offset: 64)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4778, line: 103, size: 1344, elements: !4779)
!4778 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4779 = !{!4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4808, !4809, !4810}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4777, file: !4778, line: 109, baseType: !42, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4777, file: !4778, line: 110, baseType: !42, size: 64, offset: 64)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4777, file: !4778, line: 111, baseType: !42, size: 64, offset: 128)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4777, file: !4778, line: 112, baseType: !42, size: 64, offset: 192)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4777, file: !4778, line: 113, baseType: !42, size: 64, offset: 256)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4777, file: !4778, line: 114, baseType: !42, size: 64, offset: 320)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4777, file: !4778, line: 117, baseType: !42, size: 64, offset: 384)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4777, file: !4778, line: 118, baseType: !42, size: 64, offset: 448)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4777, file: !4778, line: 119, baseType: !42, size: 64, offset: 512)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4777, file: !4778, line: 120, baseType: !42, size: 64, offset: 576)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4777, file: !4778, line: 121, baseType: !42, size: 64, offset: 640)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4777, file: !4778, line: 122, baseType: !42, size: 64, offset: 704)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4777, file: !4778, line: 123, baseType: !42, size: 64, offset: 768)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4777, file: !4778, line: 124, baseType: !42, size: 64, offset: 832)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4777, file: !4778, line: 125, baseType: !42, size: 64, offset: 896)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4777, file: !4778, line: 139, baseType: !42, size: 64, offset: 960)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4777, file: !4778, line: 142, baseType: !42, size: 64, offset: 1024)
!4797 = !DIDerivedType(tag: DW_TAG_member, scope: !4777, file: !4778, line: 144, baseType: !4798, size: 64, offset: 1088)
!4798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4777, file: !4778, line: 144, size: 64, elements: !4799)
!4799 = !{!4800, !4801, !4802}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4798, file: !4778, line: 146, baseType: !96, size: 16)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4798, file: !4778, line: 148, baseType: !482, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4798, file: !4778, line: 150, baseType: !4803, size: 64)
!4803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4778, line: 59, size: 64, elements: !4804)
!4804 = !{!4805, !4806, !4807}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4803, file: !4778, line: 61, baseType: !482, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4803, file: !4778, line: 63, baseType: !482, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4803, file: !4778, line: 65, baseType: !482, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4777, file: !4778, line: 153, baseType: !42, size: 64, offset: 1152)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4777, file: !4778, line: 154, baseType: !42, size: 64, offset: 1216)
!4810 = !DIDerivedType(tag: DW_TAG_member, scope: !4777, file: !4778, line: 156, baseType: !4811, size: 64, offset: 1280)
!4811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4777, file: !4778, line: 156, size: 64, elements: !4812)
!4812 = !{!4813, !4814, !4815}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4811, file: !4778, line: 158, baseType: !96, size: 16)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4811, file: !4778, line: 160, baseType: !482, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4811, file: !4778, line: 162, baseType: !4816, size: 64)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4778, line: 69, size: 64, elements: !4817)
!4817 = !{!4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4816, file: !4778, line: 71, baseType: !482, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4816, file: !4778, line: 73, baseType: !482, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4816, file: !4778, line: 75, baseType: !482, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4816, file: !4778, line: 77, baseType: !482, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4816, file: !4778, line: 80, baseType: !482, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4816, file: !4778, line: 83, baseType: !482, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4816, file: !4778, line: 86, baseType: !482, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4816, file: !4778, line: 88, baseType: !482, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4816, file: !4778, line: 93, baseType: !482, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4816, file: !4778, line: 100, baseType: !482, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4753, file: !4680, line: 96, baseType: !768, size: 32, offset: 1024)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4698, file: !4680, line: 352, baseType: !4830, size: 4608, align: 512)
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4680, line: 333, size: 4608, align: 512, elements: !4831)
!4831 = !{!4832, !4833, !4840}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4830, file: !4680, line: 334, baseType: !4716, size: 4096, align: 128)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4830, file: !4680, line: 335, baseType: !4834, size: 512, offset: 4096)
!4834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4680, line: 312, size: 512, elements: !4835)
!4835 = !{!4836, !4837, !4838}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4834, file: !4680, line: 313, baseType: !482, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4834, file: !4680, line: 314, baseType: !482, size: 64, offset: 64)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4834, file: !4680, line: 315, baseType: !4839, size: 384, offset: 128)
!4839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 384, elements: !791)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4830, file: !4680, line: 336, baseType: !4841, offset: 4608)
!4841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, elements: !673)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4698, file: !4680, line: 353, baseType: !4843, size: 32768)
!4843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 32768, elements: !4844)
!4844 = !{!4845}
!4845 = !DISubrange(count: 4096)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4679, file: !4680, line: 484, baseType: !4685, size: 64, offset: 192)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4679, file: !4680, line: 491, baseType: !4848, size: 128, offset: 256)
!4848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4680, line: 404, size: 128, elements: !4849)
!4849 = !{!4850, !4851, !4852}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4848, file: !4680, line: 424, baseType: !482, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4848, file: !4680, line: 432, baseType: !7, size: 32, offset: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4848, file: !4680, line: 440, baseType: !7, size: 32, offset: 96)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4679, file: !4680, line: 498, baseType: !4848, size: 128, offset: 384)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4679, file: !4680, line: 508, baseType: !4686, size: 33280, align: 512, offset: 512)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3618, file: !3619, line: 16, baseType: !57, size: 192, offset: 512)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3618, file: !3619, line: 17, baseType: !52, size: 32, offset: 704)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1323, file: !183, line: 1240, baseType: !23, size: 64, offset: 6912)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1323, file: !183, line: 1243, baseType: !768, size: 32, offset: 6976)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1323, file: !183, line: 1245, baseType: !759, size: 64, offset: 7040)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1323, file: !183, line: 1246, baseType: !759, size: 64, offset: 7104)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1323, file: !183, line: 1248, baseType: !769, size: 32, offset: 7168)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1323, file: !183, line: 1249, baseType: !4863, size: 64, offset: 7232)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !183, line: 634, flags: DIFlagFwdDecl)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1323, file: !183, line: 1252, baseType: !4215, size: 256, offset: 7296)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1323, file: !183, line: 1253, baseType: !4867, size: 128, offset: 7552)
!4867 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4868, line: 21, baseType: !4869)
!4868 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4868, line: 19, size: 128, elements: !4870)
!4870 = !{!4871}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4869, file: !4868, line: 20, baseType: !4872, size: 128)
!4872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !3986)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1323, file: !183, line: 1255, baseType: !7, size: 32, offset: 7680)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1323, file: !183, line: 1261, baseType: !539, size: 256, offset: 7744)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1323, file: !183, line: 1267, baseType: !19, size: 64, offset: 8000)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1323, file: !183, line: 1269, baseType: !4877, size: 64, offset: 8064)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4879)
!4879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1075, line: 128, size: 1024, align: 512, elements: !4880)
!4880 = !{!4881, !4885, !4886, !4893, !4899, !4903, !4907, !4911, !4912, !4916, !4920, !4925, !4929}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4879, file: !1075, line: 129, baseType: !4882, size: 64)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!25, !1073, !7}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4879, file: !1075, line: 130, baseType: !4882, size: 64, offset: 64)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4879, file: !1075, line: 131, baseType: !4887, size: 64, offset: 128)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!25, !4890, !4892}
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1074)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4879, file: !1075, line: 132, baseType: !4894, size: 64, offset: 192)
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{!25, !4890, !7, !19, !4897}
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1098)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4879, file: !1075, line: 134, baseType: !4900, size: 64, offset: 256)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!25, !4890}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4879, file: !1075, line: 135, baseType: !4904, size: 64, offset: 320)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!25, !1073}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4879, file: !1075, line: 136, baseType: !4908, size: 64, offset: 384)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = !DISubroutineType(types: !4910)
!4910 = !{null, !1073}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4879, file: !1075, line: 137, baseType: !4908, size: 64, offset: 448)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4879, file: !1075, line: 138, baseType: !4913, size: 64, offset: 512)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{null, !1073, !1113}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4879, file: !1075, line: 139, baseType: !4917, size: 64, offset: 576)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{!531, !1073, !531, !25}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4879, file: !1075, line: 140, baseType: !4921, size: 64, offset: 640)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!1068, !4924}
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4879, file: !1075, line: 141, baseType: !4926, size: 64, offset: 704)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!25, !1235, !804}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4879, file: !1075, line: 142, baseType: !4930, size: 64, offset: 768)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!1073, !1073, !4933}
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1114)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1323, file: !183, line: 1271, baseType: !4936, size: 448, offset: 8128)
!4936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2890, line: 63, size: 448, elements: !4937)
!4937 = !{!4938, !4943, !4944, !4945, !4946, !4947, !4948}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4936, file: !2890, line: 64, baseType: !4939, size: 64)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!42, !4942, !2888}
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4936, file: !2890, line: 66, baseType: !4939, size: 64, offset: 64)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4936, file: !2890, line: 69, baseType: !1037, size: 64, offset: 128)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4936, file: !2890, line: 70, baseType: !25, size: 32, offset: 192)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4936, file: !2890, line: 71, baseType: !7, size: 32, offset: 224)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4936, file: !2890, line: 74, baseType: !100, size: 128, offset: 256)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4936, file: !2890, line: 85, baseType: !4949, size: 64, offset: 384)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1323, file: !183, line: 1274, baseType: !543, size: 64, offset: 8576)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1323, file: !183, line: 1280, baseType: !543, size: 64, offset: 8640)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1323, file: !183, line: 1283, baseType: !25, size: 32, offset: 8704)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1323, file: !183, line: 1286, baseType: !2195, size: 32, offset: 8736)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1323, file: !183, line: 1289, baseType: !2659, size: 64, offset: 8768)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1323, file: !183, line: 1290, baseType: !651, size: 64, offset: 8832)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1323, file: !183, line: 1297, baseType: !887, size: 64, offset: 8896)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1323, file: !183, line: 1304, baseType: !4958, size: 64, offset: 8960)
!4958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4959, line: 49, size: 64, elements: !4960)
!4959 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4960 = !{!4961}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4958, file: !4959, line: 50, baseType: !4962, size: 64)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4959, line: 41, size: 512, align: 512, elements: !4964)
!4964 = !{!4965, !4966, !4971}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4963, file: !4959, line: 43, baseType: !62, size: 32)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4963, file: !4959, line: 45, baseType: !4967, size: 192, offset: 64)
!4967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4959, line: 29, size: 192, elements: !4968)
!4968 = !{!4969, !4970}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4967, file: !4959, line: 30, baseType: !100, size: 128)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4967, file: !4959, line: 32, baseType: !1037, size: 64, offset: 128)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4963, file: !4959, line: 46, baseType: !1037, size: 64, offset: 256)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1323, file: !183, line: 1305, baseType: !4958, size: 64, offset: 9024)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1323, file: !183, line: 1306, baseType: !595, size: 128, align: 64, offset: 9088)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1323, file: !183, line: 1307, baseType: !936, size: 256, offset: 9216)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1323, file: !183, line: 1309, baseType: !539, size: 256, offset: 9472)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1323, file: !183, line: 1314, baseType: !25, size: 32, offset: 9728)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1323, file: !183, line: 1317, baseType: !62, size: 32, align: 512, offset: 10240)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1323, file: !183, line: 1318, baseType: !100, size: 128, offset: 10304)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1323, file: !183, line: 1320, baseType: !62, size: 32, offset: 10432)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1323, file: !183, line: 1321, baseType: !100, size: 128, offset: 10496)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1114, file: !183, line: 656, baseType: !1531, size: 64, offset: 512)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1114, file: !183, line: 659, baseType: !23, size: 64, offset: 576)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1114, file: !183, line: 663, baseType: !42, size: 64, offset: 640)
!4984 = !DIDerivedType(tag: DW_TAG_member, scope: !1114, file: !183, line: 671, baseType: !4985, size: 32, offset: 704)
!4985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1114, file: !183, line: 671, size: 32, elements: !4986)
!4986 = !{!4987, !4989}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4985, file: !183, line: 672, baseType: !4988, size: 32)
!4988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4985, file: !183, line: 673, baseType: !7, size: 32)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1114, file: !183, line: 675, baseType: !1187, size: 32, offset: 736)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1114, file: !183, line: 676, baseType: !44, size: 64, offset: 768)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1114, file: !183, line: 677, baseType: !1223, size: 128, offset: 832)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1114, file: !183, line: 678, baseType: !1223, size: 128, offset: 960)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1114, file: !183, line: 679, baseType: !1223, size: 128, offset: 1088)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1114, file: !183, line: 680, baseType: !62, size: 32, offset: 1216)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1114, file: !183, line: 681, baseType: !29, size: 16, offset: 1248)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1114, file: !183, line: 682, baseType: !86, size: 8, offset: 1264)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1114, file: !183, line: 683, baseType: !86, size: 8, offset: 1272)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1114, file: !183, line: 684, baseType: !3021, size: 64, offset: 1280)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1114, file: !183, line: 691, baseType: !42, size: 64, offset: 1344)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1114, file: !183, line: 692, baseType: !743, size: 320, offset: 1408)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1114, file: !183, line: 694, baseType: !42, size: 64, offset: 1728)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1114, file: !183, line: 695, baseType: !42, size: 64, offset: 1792)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1114, file: !183, line: 697, baseType: !655, size: 128, offset: 1856)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1114, file: !183, line: 698, baseType: !100, size: 128, offset: 1984)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1114, file: !183, line: 707, baseType: !100, size: 128, offset: 2112)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1114, file: !183, line: 708, baseType: !100, size: 128, offset: 2240)
!5008 = !DIDerivedType(tag: DW_TAG_member, scope: !1114, file: !183, line: 709, baseType: !5009, size: 128, offset: 2368)
!5009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1114, file: !183, line: 709, size: 128, elements: !5010)
!5010 = !{!5011, !5012}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5009, file: !183, line: 710, baseType: !651, size: 64)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5009, file: !183, line: 711, baseType: !595, size: 128, align: 64)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1114, file: !183, line: 713, baseType: !545, size: 64, offset: 2496)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1114, file: !183, line: 714, baseType: !545, size: 64, offset: 2560)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1114, file: !183, line: 715, baseType: !52, size: 32, offset: 2624)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1114, file: !183, line: 716, baseType: !52, size: 32, offset: 2656)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1114, file: !183, line: 717, baseType: !52, size: 32, offset: 2688)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1114, file: !183, line: 719, baseType: !52, size: 32, offset: 2720)
!5019 = !DIDerivedType(tag: DW_TAG_member, scope: !1114, file: !183, line: 721, baseType: !5020, size: 64, offset: 2752)
!5020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1114, file: !183, line: 721, size: 64, elements: !5021)
!5021 = !{!5022, !5146}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5020, file: !183, line: 722, baseType: !5023, size: 64)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5025)
!5025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !183, line: 1914, size: 2112, elements: !5026)
!5026 = !{!5027, !5028, !5032, !5036, !5040, !5041, !5042, !5048, !5061, !5065, !5069, !5070, !5074, !5075, !5079, !5084, !5085, !5089, !5093, !5099, !5100, !5104, !5105, !5109, !5113, !5114, !5119, !5123, !5127, !5131, !5135, !5136, !5142}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5025, file: !183, line: 1915, baseType: !1414, size: 64)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !5025, file: !183, line: 1916, baseType: !5029, size: 64, offset: 64)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{!44, !1230, !44, !25}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5025, file: !183, line: 1917, baseType: !5033, size: 64, offset: 128)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{!1266, !1230, !531, !38, !43}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5025, file: !183, line: 1918, baseType: !5037, size: 64, offset: 192)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!1266, !1230, !19, !38, !43}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !5025, file: !183, line: 1919, baseType: !2129, size: 64, offset: 256)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !5025, file: !183, line: 1920, baseType: !2129, size: 64, offset: 320)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !5025, file: !183, line: 1921, baseType: !5043, size: 64, offset: 384)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!25, !2132, !5046, !7}
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !183, line: 53, flags: DIFlagFwdDecl)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !5025, file: !183, line: 1923, baseType: !5049, size: 64, offset: 448)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{!25, !1230, !5052}
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !183, line: 1858, size: 128, elements: !5054)
!5054 = !{!5055, !5060}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !5053, file: !183, line: 1859, baseType: !5056, size: 64)
!5056 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !183, line: 1855, baseType: !5057)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = !DISubroutineType(types: !5059)
!5059 = !{!804, !5052, !19, !25, !44, !482, !7}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5053, file: !183, line: 1860, baseType: !44, size: 64, offset: 64)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5025, file: !183, line: 1924, baseType: !5062, size: 64, offset: 512)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{!2325, !1230, !2327}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !5025, file: !183, line: 1925, baseType: !5066, size: 64, offset: 576)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!1037, !1230, !7, !42}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !5025, file: !183, line: 1926, baseType: !5066, size: 64, offset: 640)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5025, file: !183, line: 1927, baseType: !5071, size: 64, offset: 704)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!25, !1230, !1665}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !5025, file: !183, line: 1928, baseType: !42, size: 64, offset: 768)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5025, file: !183, line: 1929, baseType: !5076, size: 64, offset: 832)
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5077, size: 64)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!25, !1113, !1230}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !5025, file: !183, line: 1930, baseType: !5080, size: 64, offset: 896)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!25, !1230, !5083}
!5083 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !183, line: 1061, baseType: !23)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5025, file: !183, line: 1931, baseType: !5076, size: 64, offset: 960)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !5025, file: !183, line: 1932, baseType: !5086, size: 64, offset: 1024)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!25, !1230, !44, !44, !25}
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !5025, file: !183, line: 1933, baseType: !5090, size: 64, offset: 1088)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DISubroutineType(types: !5092)
!5092 = !{!25, !25, !1230, !25}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5025, file: !183, line: 1934, baseType: !5094, size: 64, offset: 1152)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!25, !1230, !25, !5097}
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !183, line: 1063, flags: DIFlagFwdDecl)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !5025, file: !183, line: 1935, baseType: !1702, size: 64, offset: 1216)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !5025, file: !183, line: 1936, baseType: !5101, size: 64, offset: 1280)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!25, !25}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !5025, file: !183, line: 1937, baseType: !5094, size: 64, offset: 1344)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !5025, file: !183, line: 1938, baseType: !5106, size: 64, offset: 1408)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = !DISubroutineType(types: !5108)
!5108 = !{!1266, !4518, !1230, !43, !38, !7}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !5025, file: !183, line: 1939, baseType: !5110, size: 64, offset: 1472)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!1266, !1230, !43, !4518, !38, !7}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !5025, file: !183, line: 1940, baseType: !2185, size: 64, offset: 1536)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !5025, file: !183, line: 1941, baseType: !5115, size: 64, offset: 1600)
!5115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5116, size: 64)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!25, !1230, !25, !5118, !2106}
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !5025, file: !183, line: 1942, baseType: !5120, size: 64, offset: 1664)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!1037, !1230, !25, !44, !44}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !5025, file: !183, line: 1944, baseType: !5124, size: 64, offset: 1728)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{null, !526, !1230}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !5025, file: !183, line: 1948, baseType: !5128, size: 64, offset: 1792)
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5129, size: 64)
!5129 = !DISubroutineType(types: !5130)
!5130 = !{!1266, !1230, !44, !1230, !44, !38, !7}
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !5025, file: !183, line: 1950, baseType: !5132, size: 64, offset: 1856)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!44, !1230, !44, !1230, !44, !44, !7}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !5025, file: !183, line: 1953, baseType: !5086, size: 64, offset: 1920)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !5025, file: !183, line: 1954, baseType: !5137, size: 64, offset: 1984)
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5138 = !DISubroutineType(types: !5139)
!5139 = !{!25, !5140, !7}
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !183, line: 1911, flags: DIFlagFwdDecl)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !5025, file: !183, line: 1955, baseType: !5143, size: 64, offset: 2048)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!25, !5140, !5046, !7}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5020, file: !183, line: 723, baseType: !2779, size: 64)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1114, file: !183, line: 725, baseType: !5148, size: 64, offset: 2816)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !183, line: 725, flags: DIFlagFwdDecl)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1114, file: !183, line: 726, baseType: !1532, size: 1536, align: 64, offset: 2880)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1114, file: !183, line: 727, baseType: !100, size: 128, offset: 4416)
!5152 = !DIDerivedType(tag: DW_TAG_member, scope: !1114, file: !183, line: 728, baseType: !5153, size: 64, offset: 4544)
!5153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1114, file: !183, line: 728, size: 64, elements: !5154)
!5154 = !{!5155, !5156, !5159, !5160}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5153, file: !183, line: 729, baseType: !4518, size: 64)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5153, file: !183, line: 730, baseType: !5157, size: 64)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !183, line: 730, flags: DIFlagFwdDecl)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5153, file: !183, line: 731, baseType: !531, size: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5153, file: !183, line: 732, baseType: !7, size: 32)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1114, file: !183, line: 735, baseType: !769, size: 32, offset: 4608)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1114, file: !183, line: 738, baseType: !769, size: 32, offset: 4640)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1114, file: !183, line: 739, baseType: !4863, size: 64, offset: 4672)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1114, file: !183, line: 750, baseType: !23, size: 64, offset: 4736)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1074, file: !1075, line: 91, baseType: !5166, size: 256, offset: 448)
!5166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !4216)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1074, file: !1075, line: 94, baseType: !5168, size: 64, offset: 704)
!5168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !5169, line: 25, size: 64, elements: !5170)
!5169 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!5170 = !{!5171}
!5171 = !DIDerivedType(tag: DW_TAG_member, scope: !5168, file: !5169, line: 26, baseType: !5172, size: 64)
!5172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5168, file: !5169, line: 26, size: 64, elements: !5173)
!5173 = !{!5174, !5175}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !5172, file: !5169, line: 28, baseType: !483, size: 64, align: 64)
!5175 = !DIDerivedType(tag: DW_TAG_member, scope: !5172, file: !5169, line: 30, baseType: !5176, size: 64)
!5176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5172, file: !5169, line: 30, size: 64, elements: !5177)
!5177 = !{!5178, !5179}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5176, file: !5169, line: 31, baseType: !62, size: 32)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5176, file: !5169, line: 32, baseType: !25, size: 32, offset: 32)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1074, file: !1075, line: 95, baseType: !4877, size: 64, offset: 768)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1074, file: !1075, line: 96, baseType: !1322, size: 64, offset: 832)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1074, file: !1075, line: 97, baseType: !42, size: 64, offset: 896)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1074, file: !1075, line: 98, baseType: !23, size: 64, offset: 960)
!5184 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !1075, line: 100, baseType: !5185, size: 128, offset: 1024)
!5185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !1075, line: 100, size: 128, elements: !5186)
!5186 = !{!5187, !5188}
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5185, file: !1075, line: 101, baseType: !100, size: 128)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5185, file: !1075, line: 102, baseType: !5189, size: 64)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1074, file: !1075, line: 104, baseType: !100, size: 128, offset: 1152)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1074, file: !1075, line: 105, baseType: !100, size: 128, offset: 1280)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1074, file: !1075, line: 113, baseType: !5193, size: 128, offset: 1408)
!5193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !1075, line: 109, size: 128, elements: !5194)
!5194 = !{!5195, !5196, !5197}
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5193, file: !1075, line: 110, baseType: !655, size: 128)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5193, file: !1075, line: 111, baseType: !1089, size: 128)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5193, file: !1075, line: 112, baseType: !595, size: 128, align: 64)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1069, file: !1070, line: 72, baseType: !1322, size: 64, offset: 64)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1069, file: !1070, line: 73, baseType: !25, size: 32, offset: 128)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1069, file: !1070, line: 74, baseType: !1152, size: 64, offset: 192)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1064, file: !1065, line: 10, baseType: !1073, size: 64, offset: 64)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !583, file: !183, line: 1015, baseType: !1113, size: 64, offset: 1344)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !583, file: !183, line: 1016, baseType: !5023, size: 64, offset: 1408)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !583, file: !183, line: 1018, baseType: !482, size: 64, offset: 1472)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !583, file: !183, line: 1020, baseType: !23, size: 64, offset: 1536)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !583, file: !183, line: 1023, baseType: !23, size: 64, offset: 1600)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !583, file: !183, line: 1027, baseType: !5208, size: 64, offset: 1664)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !583, file: !183, line: 1029, baseType: !1531, size: 64, offset: 1728)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !583, file: !183, line: 1030, baseType: !2195, size: 32, offset: 1792)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !583, file: !183, line: 1031, baseType: !2195, size: 32, offset: 1824)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !527, file: !528, line: 29, baseType: !23, size: 64, offset: 896)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !500, file: !468, line: 679, baseType: !523, size: 64, offset: 512)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !500, file: !468, line: 682, baseType: !5215, size: 64, offset: 576)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = !DISubroutineType(types: !5217)
!5217 = !{!25, !5218}
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !5220, line: 107, size: 512, elements: !5221)
!5220 = !DIFile(filename: "kernel/cgroup/cgroup-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5755a84507a6826ba0951aadf2c370ce")
!5221 = !{!5222, !5223, !5224, !5225, !5226, !5227, !5228}
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "src_csets", scope: !5219, file: !5220, line: 109, baseType: !100, size: 128)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "dst_csets", scope: !5219, file: !5220, line: 110, baseType: !100, size: 128, offset: 128)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !5219, file: !5220, line: 113, baseType: !25, size: 32, offset: 256)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "ssid", scope: !5219, file: !5220, line: 116, baseType: !25, size: 32, offset: 288)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "csets", scope: !5219, file: !5220, line: 129, baseType: !103, size: 64, offset: 320)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "cur_cset", scope: !5219, file: !5220, line: 130, baseType: !4042, size: 64, offset: 384)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "cur_task", scope: !5219, file: !5220, line: 131, baseType: !3635, size: 64, offset: 448)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !500, file: !468, line: 683, baseType: !5230, size: 64, offset: 640)
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{null, !5218}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !500, file: !468, line: 684, baseType: !5230, size: 64, offset: 704)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !500, file: !468, line: 685, baseType: !2701, size: 64, offset: 768)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !500, file: !468, line: 686, baseType: !5236, size: 64, offset: 832)
!5236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5237, size: 64)
!5237 = !DISubroutineType(types: !5238)
!5238 = !{!25, !3635, !4042}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !500, file: !468, line: 688, baseType: !5240, size: 64, offset: 896)
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5241 = !DISubroutineType(types: !5242)
!5242 = !{null, !3635, !4042}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !500, file: !468, line: 689, baseType: !5244, size: 64, offset: 960)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{null, !3635}
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !500, file: !468, line: 690, baseType: !5244, size: 64, offset: 1024)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !500, file: !468, line: 691, baseType: !5244, size: 64, offset: 1088)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !500, file: !468, line: 692, baseType: !512, size: 64, offset: 1152)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !500, file: !468, line: 694, baseType: !804, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !500, file: !468, line: 707, baseType: !804, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !500, file: !468, line: 719, baseType: !804, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !500, file: !468, line: 722, baseType: !25, size: 32, offset: 1248)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !500, file: !468, line: 723, baseType: !19, size: 64, offset: 1280)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !500, file: !468, line: 726, baseType: !19, size: 64, offset: 1344)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !500, file: !468, line: 729, baseType: !5257, size: 64, offset: 1408)
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5258, size: 64)
!5258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !468, line: 537, size: 41664, elements: !5259)
!5259 = !{!5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5271}
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !5258, file: !468, line: 538, baseType: !2271, size: 64)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !5258, file: !468, line: 541, baseType: !7, size: 32, offset: 64)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !5258, file: !468, line: 544, baseType: !25, size: 32, offset: 96)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !5258, file: !468, line: 547, baseType: !100, size: 128, offset: 128)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5258, file: !468, line: 548, baseType: !595, size: 128, align: 64, offset: 256)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !5258, file: !468, line: 555, baseType: !492, size: 7872, offset: 384)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !5258, file: !468, line: 558, baseType: !491, size: 64, offset: 8256)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !5258, file: !468, line: 561, baseType: !52, size: 32, offset: 8320)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5258, file: !468, line: 564, baseType: !7, size: 32, offset: 8352)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !5258, file: !468, line: 567, baseType: !5270, size: 32768, offset: 8384)
!5270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32768, elements: !4844)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5258, file: !468, line: 570, baseType: !3561, size: 512, offset: 41152)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !500, file: !468, line: 732, baseType: !5273, size: 192, offset: 1472)
!5273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !5274, line: 19, size: 192, elements: !5275)
!5274 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!5275 = !{!5276, !5277, !5278}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !5273, file: !5274, line: 20, baseType: !1313, size: 128)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !5273, file: !5274, line: 21, baseType: !7, size: 32, offset: 128)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !5273, file: !5274, line: 22, baseType: !7, size: 32, offset: 160)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !500, file: !468, line: 738, baseType: !100, size: 128, offset: 1664)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !500, file: !468, line: 744, baseType: !5281, size: 64, offset: 1792)
!5281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5282, size: 64)
!5282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !468, line: 580, size: 1728, elements: !5283)
!5283 = !{!5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5293, !5294, !5295, !5299, !5303, !5304, !5305, !5306, !5307, !5311, !5315, !5316}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5282, file: !468, line: 586, baseType: !3561, size: 512)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5282, file: !468, line: 587, baseType: !42, size: 64, offset: 512)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !5282, file: !468, line: 593, baseType: !38, size: 64, offset: 576)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5282, file: !468, line: 596, baseType: !7, size: 32, offset: 640)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !5282, file: !468, line: 604, baseType: !7, size: 32, offset: 672)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5282, file: !468, line: 610, baseType: !499, size: 64, offset: 704)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5282, file: !468, line: 611, baseType: !100, size: 128, offset: 768)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !5282, file: !468, line: 612, baseType: !5292, size: 64, offset: 896)
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5282, file: !468, line: 614, baseType: !2287, size: 64, offset: 960)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5282, file: !468, line: 615, baseType: !2307, size: 64, offset: 1024)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !5282, file: !468, line: 621, baseType: !5296, size: 64, offset: 1088)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{!482, !506, !5281}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !5282, file: !468, line: 625, baseType: !5300, size: 64, offset: 1152)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DISubroutineType(types: !5302)
!5302 = !{!549, !506, !5281}
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !5282, file: !468, line: 628, baseType: !576, size: 64, offset: 1216)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !5282, file: !468, line: 631, baseType: !564, size: 64, offset: 1280)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !5282, file: !468, line: 632, baseType: !572, size: 64, offset: 1344)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !5282, file: !468, line: 633, baseType: !568, size: 64, offset: 1408)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !5282, file: !468, line: 640, baseType: !5308, size: 64, offset: 1472)
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!25, !506, !5281, !482}
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !5282, file: !468, line: 645, baseType: !5312, size: 64, offset: 1536)
!5312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5313, size: 64)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{!25, !506, !5281, !549}
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5282, file: !468, line: 654, baseType: !2315, size: 64, offset: 1600)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5282, file: !468, line: 657, baseType: !2322, size: 64, offset: 1664)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !500, file: !468, line: 745, baseType: !5281, size: 64, offset: 1856)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !500, file: !468, line: 754, baseType: !7, size: 32, offset: 1920)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !495, file: !468, line: 160, baseType: !1619, size: 128, offset: 128)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !495, file: !468, line: 163, baseType: !100, size: 128, offset: 256)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !495, file: !468, line: 164, baseType: !100, size: 128, offset: 384)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !495, file: !468, line: 167, baseType: !100, size: 128, offset: 512)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !495, file: !468, line: 173, baseType: !25, size: 32, offset: 640)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !468, line: 175, baseType: !7, size: 32, offset: 672)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !495, file: !468, line: 183, baseType: !482, size: 64, offset: 704)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !495, file: !468, line: 189, baseType: !52, size: 32, offset: 768)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !495, file: !468, line: 192, baseType: !936, size: 256, offset: 832)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !495, file: !468, line: 193, baseType: !5329, size: 448, offset: 1088)
!5329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !937, line: 120, size: 448, elements: !5330)
!5330 = !{!5331, !5332, !5333}
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5329, file: !937, line: 121, baseType: !936, size: 256)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5329, file: !937, line: 122, baseType: !595, size: 128, align: 64, offset: 256)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5329, file: !937, line: 125, baseType: !2659, size: 64, offset: 384)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !495, file: !468, line: 199, baseType: !506, size: 64, offset: 1536)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !492, file: !468, line: 393, baseType: !42, size: 64, offset: 1600)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !492, file: !468, line: 401, baseType: !25, size: 32, offset: 1664)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !492, file: !468, line: 404, baseType: !25, size: 32, offset: 1696)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !492, file: !468, line: 417, baseType: !25, size: 32, offset: 1728)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !492, file: !468, line: 418, baseType: !25, size: 32, offset: 1760)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !492, file: !468, line: 419, baseType: !25, size: 32, offset: 1792)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !492, file: !468, line: 432, baseType: !25, size: 32, offset: 1824)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !492, file: !468, line: 433, baseType: !25, size: 32, offset: 1856)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !492, file: !468, line: 434, baseType: !25, size: 32, offset: 1888)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !492, file: !468, line: 436, baseType: !25, size: 32, offset: 1920)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !492, file: !468, line: 439, baseType: !7, size: 32, offset: 1952)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !492, file: !468, line: 441, baseType: !2251, size: 64, offset: 1984)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !492, file: !468, line: 442, baseType: !5348, size: 448, offset: 2048)
!5348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !468, line: 138, size: 448, elements: !5349)
!5349 = !{!5350, !5351, !5352}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !5348, file: !468, line: 140, baseType: !2251, size: 64)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !5348, file: !468, line: 141, baseType: !42, size: 64, offset: 64)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !5348, file: !468, line: 142, baseType: !2597, size: 320, offset: 128)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !492, file: !468, line: 443, baseType: !5348, size: 448, offset: 2496)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !492, file: !468, line: 446, baseType: !5355, offset: 2944)
!5355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5348, elements: !5356)
!5356 = !{!5357}
!5357 = !DISubrange(count: 0)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !492, file: !468, line: 455, baseType: !96, size: 16, offset: 2944)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !492, file: !468, line: 456, baseType: !96, size: 16, offset: 2960)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !492, file: !468, line: 457, baseType: !96, size: 16, offset: 2976)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !492, file: !468, line: 458, baseType: !96, size: 16, offset: 2992)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !492, file: !468, line: 461, baseType: !4046, size: 896, offset: 3008)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !492, file: !468, line: 463, baseType: !5257, size: 64, offset: 3904)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !492, file: !468, line: 469, baseType: !100, size: 128, offset: 3968)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !492, file: !468, line: 478, baseType: !4058, size: 1792, offset: 4096)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !492, file: !468, line: 487, baseType: !491, size: 64, offset: 5888)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !492, file: !468, line: 488, baseType: !491, size: 64, offset: 5952)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !492, file: !468, line: 491, baseType: !466, size: 64, offset: 6016)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !492, file: !468, line: 492, baseType: !100, size: 128, offset: 6080)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !492, file: !468, line: 495, baseType: !475, size: 192, offset: 6208)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !492, file: !468, line: 496, baseType: !475, size: 192, offset: 6400)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !492, file: !468, line: 497, baseType: !3951, size: 192, offset: 6592)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !492, file: !468, line: 503, baseType: !100, size: 128, offset: 6784)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !492, file: !468, line: 504, baseType: !539, size: 256, offset: 6912)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !492, file: !468, line: 507, baseType: !57, size: 192, offset: 7168)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !492, file: !468, line: 510, baseType: !936, size: 256, offset: 7360)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !492, file: !468, line: 513, baseType: !5378, size: 64, offset: 7616)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !5380, line: 214, elements: !473)
!5380 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !492, file: !468, line: 516, baseType: !5382, offset: 7680)
!5382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !5383, line: 76, elements: !473)
!5383 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !492, file: !468, line: 519, baseType: !52, size: 32, offset: 7680)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !492, file: !468, line: 522, baseType: !5386, size: 128, offset: 7712)
!5386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !468, line: 370, size: 128, elements: !5387)
!5387 = !{!5388, !5389, !5390, !5391}
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !5386, file: !468, line: 372, baseType: !804, size: 8)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !5386, file: !468, line: 375, baseType: !25, size: 32, offset: 32)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !5386, file: !468, line: 380, baseType: !25, size: 32, offset: 64)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !5386, file: !468, line: 386, baseType: !25, size: 32, offset: 96)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !492, file: !468, line: 529, baseType: !5393, offset: 7872)
!5393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, elements: !673)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !467, file: !468, line: 367, baseType: !491, size: 64, offset: 832)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3795)
!5397 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !28, line: 113, baseType: !482)
!5398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5400)
!5400 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !103)
!5401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!5402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5405)
!5405 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cpustat", file: !282, line: 37, size: 640, elements: !5408)
!5408 = !{!5409}
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "cpustat", scope: !5407, file: !282, line: 38, baseType: !5410, size: 640)
!5410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 640, elements: !1031)
!5411 = !{!5412, !5417, !5422, !0, !5424, !5428, !5430, !5433, !5436, !5452, !6312}
!5412 = !DIGlobalVariableExpression(var: !5413, expr: !DIExpression())
!5413 = distinct !DIGlobalVariable(scope: null, file: !3, line: 300, type: !5414, isLocal: true, isDefinition: true)
!5414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 176, elements: !5415)
!5415 = !{!5416}
!5416 = !DISubrange(count: 22)
!5417 = !DIGlobalVariableExpression(var: !5418, expr: !DIExpression())
!5418 = distinct !DIGlobalVariable(scope: null, file: !3, line: 514, type: !5419, isLocal: true, isDefinition: true)
!5419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 392, elements: !5420)
!5420 = !{!5421}
!5421 = !DISubrange(count: 49)
!5422 = !DIGlobalVariableExpression(var: !5423, expr: !DIExpression())
!5423 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_rstat__336_540_bpf_rstat_kfunc_init7337", scope: !2, file: !3, line: 540, type: !23, isLocal: true, isDefinition: true)
!5424 = !DIGlobalVariableExpression(var: !5425, expr: !DIExpression())
!5425 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !5426, file: !5427, line: 112, type: !23, isLocal: true, isDefinition: true)
!5426 = distinct !DISubprogram(name: "might_resched", scope: !5427, file: !5427, line: 110, type: !2702, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5427 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5428 = !DIGlobalVariableExpression(var: !5429, expr: !DIExpression())
!5429 = distinct !DIGlobalVariable(name: "cgroup_rstat_lock", scope: !2, file: !3, line: 10, type: !62, isLocal: true, isDefinition: true)
!5430 = !DIGlobalVariableExpression(var: !5431, expr: !DIExpression())
!5431 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched144", scope: !5432, file: !1914, line: 2104, type: !23, isLocal: true, isDefinition: true)
!5432 = distinct !DISubprogram(name: "_cond_resched", scope: !1914, file: !1914, line: 2102, type: !2470, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5433 = !DIGlobalVariableExpression(var: !5434, expr: !DIExpression())
!5434 = distinct !DIGlobalVariable(scope: null, file: !3, line: 397, type: !5435, isLocal: true, isDefinition: true)
!5435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 40, elements: !905)
!5436 = !DIGlobalVariableExpression(var: !5437, expr: !DIExpression())
!5437 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule335", scope: !5438, file: !3, line: 398, type: !23, isLocal: true, isDefinition: true)
!5438 = distinct !DISubprogram(name: "cgroup_base_stat_cputime_account_end", scope: !3, file: !3, line: 392, type: !5439, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5441)
!5439 = !DISubroutineType(types: !5440)
!5440 = !{null, !491, !466, !42}
!5441 = !{!5442, !5443, !5444, !5445, !5448, !5450}
!5442 = !DILocalVariable(name: "cgrp", arg: 1, scope: !5438, file: !3, line: 392, type: !491)
!5443 = !DILocalVariable(name: "rstatc", arg: 2, scope: !5438, file: !3, line: 393, type: !466)
!5444 = !DILocalVariable(name: "flags", arg: 3, scope: !5438, file: !3, line: 394, type: !42)
!5445 = !DILocalVariable(name: "pscr_ret__", scope: !5446, file: !3, line: 397, type: !25)
!5446 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 397, column: 29)
!5447 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 397, column: 29)
!5448 = !DILocalVariable(name: "__vpp_verify", scope: !5449, file: !3, line: 397, type: !1793)
!5449 = distinct !DILexicalBlock(scope: !5446, file: !3, line: 397, column: 29)
!5450 = !DILocalVariable(name: "pfo_val__", scope: !5451, file: !3, line: 397, type: !768)
!5451 = distinct !DILexicalBlock(scope: !5446, file: !3, line: 397, column: 29)
!5452 = !DIGlobalVariableExpression(var: !5453, expr: !DIExpression())
!5453 = distinct !DIGlobalVariable(name: "bpf_rstat_kfunc_set", scope: !2, file: !3, line: 530, type: !5454, isLocal: true, isDefinition: true)
!5454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5455)
!5455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btf_kfunc_id_set", file: !5456, line: 105, size: 192, elements: !5457)
!5456 = !DIFile(filename: "./include/linux/btf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f66bbdd92014b68c142bd18e69cb08c3")
!5457 = !{!5458, !5459, !5472}
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5455, file: !5456, line: 106, baseType: !1414, size: 64)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5455, file: !5456, line: 107, baseType: !5460, size: 64, offset: 64)
!5460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5461, size: 64)
!5461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btf_id_set8", file: !5462, line: 11, size: 64, elements: !5463)
!5462 = !DIFile(filename: "./include/linux/btf_ids.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "026504130b4153c17cfb7dbb0a024839")
!5463 = !{!5464, !5465, !5466}
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "cnt", scope: !5461, file: !5462, line: 12, baseType: !768, size: 32)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5461, file: !5462, line: 13, baseType: !768, size: 32, offset: 32)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "pairs", scope: !5461, file: !5462, line: 17, baseType: !5467, offset: 64)
!5467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5468, elements: !673)
!5468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5461, file: !5462, line: 14, size: 64, elements: !5469)
!5469 = !{!5470, !5471}
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5468, file: !5462, line: 15, baseType: !768, size: 32)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5468, file: !5462, line: 16, baseType: !768, size: 32, offset: 32)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5455, file: !5456, line: 108, baseType: !5473, size: 64, offset: 128)
!5473 = !DIDerivedType(tag: DW_TAG_typedef, name: "btf_kfunc_filter_t", file: !5456, line: 103, baseType: !5474)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DISubroutineType(types: !5476)
!5476 = !{!25, !5477, !768}
!5477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5478, size: 64)
!5478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5479)
!5479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog", file: !384, line: 1493, size: 576, elements: !5480)
!5480 = !{!5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5502, !5505, !5506, !5519, !6285, !6288}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5479, file: !384, line: 1494, baseType: !96, size: 16)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "jited", scope: !5479, file: !384, line: 1495, baseType: !96, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "jit_requested", scope: !5479, file: !384, line: 1496, baseType: !96, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 16)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_compatible", scope: !5479, file: !384, line: 1497, baseType: !96, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 16)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "cb_access", scope: !5479, file: !384, line: 1498, baseType: !96, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 16)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "dst_needed", scope: !5479, file: !384, line: 1499, baseType: !96, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 16)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "blinding_requested", scope: !5479, file: !384, line: 1500, baseType: !96, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 16)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "blinded", scope: !5479, file: !384, line: 1501, baseType: !96, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 16)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "is_func", scope: !5479, file: !384, line: 1502, baseType: !96, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 16)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_override", scope: !5479, file: !384, line: 1503, baseType: !96, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 16)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "has_callchain_buf", scope: !5479, file: !384, line: 1504, baseType: !96, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 16)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "enforce_expected_attach_type", scope: !5479, file: !384, line: 1505, baseType: !96, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 16)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "call_get_stack", scope: !5479, file: !384, line: 1506, baseType: !96, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 16)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "call_get_func_ip", scope: !5479, file: !384, line: 1507, baseType: !96, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 16)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp_type_access", scope: !5479, file: !384, line: 1508, baseType: !96, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 16)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5479, file: !384, line: 1509, baseType: !295, size: 32, offset: 32)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "expected_attach_type", scope: !5479, file: !384, line: 1510, baseType: !331, size: 32, offset: 64)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5479, file: !384, line: 1511, baseType: !768, size: 32, offset: 96)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "jited_len", scope: !5479, file: !384, line: 1512, baseType: !768, size: 32, offset: 128)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !5479, file: !384, line: 1513, baseType: !5501, size: 64, offset: 160)
!5501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 64, elements: !2707)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5479, file: !384, line: 1514, baseType: !5503, size: 64, offset: 256)
!5503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5504, size: 64)
!5504 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_stats", file: !384, line: 1514, flags: DIFlagFwdDecl)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5479, file: !384, line: 1515, baseType: !2498, size: 64, offset: 320)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_func", scope: !5479, file: !384, line: 1516, baseType: !5507, size: 64, offset: 384)
!5507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5508, size: 64)
!5508 = !DISubroutineType(types: !5509)
!5509 = !{!7, !1793, !5510}
!5510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5511, size: 64)
!5511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5512)
!5512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_insn", file: !296, line: 72, size: 64, elements: !5513)
!5513 = !{!5514, !5515, !5516, !5517, !5518}
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5512, file: !296, line: 73, baseType: !88, size: 8)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "dst_reg", scope: !5512, file: !296, line: 74, baseType: !88, size: 4, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "src_reg", scope: !5512, file: !296, line: 75, baseType: !88, size: 4, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !5512, file: !296, line: 76, baseType: !1811, size: 16, offset: 16)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "imm", scope: !5512, file: !296, line: 77, baseType: !729, size: 32, offset: 32)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !5479, file: !384, line: 1518, baseType: !5520, size: 64, offset: 448)
!5520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5521, size: 64)
!5521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_aux", file: !384, line: 1403, size: 8448, elements: !5522)
!5522 = !{!5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5532, !5533, !5534, !5535, !5536, !5537, !5540, !5548, !5549, !5551, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618, !5631, !5632, !5634, !5635, !6200, !6203, !6206, !6207, !6208, !6217, !6219, !6220, !6226, !6227, !6228, !6229, !6230, !6231, !6233, !6234, !6235, !6252, !6253, !6259, !6265, !6273, !6274, !6275, !6276, !6277, !6278, !6279, !6280}
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5521, file: !384, line: 1404, baseType: !545, size: 64)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "used_map_cnt", scope: !5521, file: !384, line: 1405, baseType: !768, size: 32, offset: 64)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "used_btf_cnt", scope: !5521, file: !384, line: 1406, baseType: !768, size: 32, offset: 96)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "max_ctx_offset", scope: !5521, file: !384, line: 1407, baseType: !768, size: 32, offset: 128)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "max_pkt_offset", scope: !5521, file: !384, line: 1408, baseType: !768, size: 32, offset: 160)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "max_tp_access", scope: !5521, file: !384, line: 1409, baseType: !768, size: 32, offset: 192)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depth", scope: !5521, file: !384, line: 1410, baseType: !768, size: 32, offset: 224)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5521, file: !384, line: 1411, baseType: !768, size: 32, offset: 256)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "func_cnt", scope: !5521, file: !384, line: 1412, baseType: !768, size: 32, offset: 288)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "func_idx", scope: !5521, file: !384, line: 1413, baseType: !768, size: 32, offset: 320)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "attach_btf_id", scope: !5521, file: !384, line: 1414, baseType: !768, size: 32, offset: 352)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_arg_info_size", scope: !5521, file: !384, line: 1415, baseType: !768, size: 32, offset: 384)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "max_rdonly_access", scope: !5521, file: !384, line: 1416, baseType: !768, size: 32, offset: 416)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "max_rdwr_access", scope: !5521, file: !384, line: 1417, baseType: !768, size: 32, offset: 448)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "attach_btf", scope: !5521, file: !384, line: 1418, baseType: !5538, size: 64, offset: 512)
!5538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5539, size: 64)
!5539 = !DICompositeType(tag: DW_TAG_structure_type, name: "btf", file: !5456, line: 95, flags: DIFlagFwdDecl)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_arg_info", scope: !5521, file: !384, line: 1419, baseType: !5541, size: 64, offset: 576)
!5541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5542, size: 64)
!5542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5543)
!5543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_ctx_arg_aux", file: !384, line: 1390, size: 96, elements: !5544)
!5544 = !{!5545, !5546, !5547}
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5543, file: !384, line: 1391, baseType: !768, size: 32)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "reg_type", scope: !5543, file: !384, line: 1392, baseType: !383, size: 32, offset: 32)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "btf_id", scope: !5543, file: !384, line: 1393, baseType: !768, size: 32, offset: 64)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "dst_mutex", scope: !5521, file: !384, line: 1420, baseType: !539, size: 256, offset: 640)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "dst_prog", scope: !5521, file: !384, line: 1421, baseType: !5550, size: 64, offset: 896)
!5550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 64)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "dst_trampoline", scope: !5521, file: !384, line: 1422, baseType: !5552, size: 64, offset: 960)
!5552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5553, size: 64)
!5553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_trampoline", file: !384, line: 1149, size: 1472, elements: !5554)
!5554 = !{!5555, !5556, !5559, !5560, !5561, !5562, !5563, !5577, !5578, !5580, !5582, !5607}
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !5553, file: !384, line: 1151, baseType: !655, size: 128)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !5553, file: !384, line: 1152, baseType: !5557, size: 64, offset: 128)
!5557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5558, size: 64)
!5558 = !DICompositeType(tag: DW_TAG_structure_type, name: "ftrace_ops", file: !384, line: 52, flags: DIFlagFwdDecl)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5553, file: !384, line: 1154, baseType: !539, size: 256, offset: 192)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5553, file: !384, line: 1155, baseType: !642, size: 32, offset: 448)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5553, file: !384, line: 1156, baseType: !768, size: 32, offset: 480)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5553, file: !384, line: 1157, baseType: !482, size: 64, offset: 512)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5553, file: !384, line: 1162, baseType: !5564, size: 384, offset: 576)
!5564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5553, file: !384, line: 1158, size: 384, elements: !5565)
!5565 = !{!5566, !5575, !5576}
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !5564, file: !384, line: 1159, baseType: !5567, size: 216)
!5567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btf_func_model", file: !384, line: 1021, size: 216, elements: !5568)
!5568 = !{!5569, !5570, !5571, !5572, !5574}
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "ret_size", scope: !5567, file: !384, line: 1022, baseType: !86, size: 8)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "ret_flags", scope: !5567, file: !384, line: 1023, baseType: !86, size: 8, offset: 8)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_args", scope: !5567, file: !384, line: 1024, baseType: !86, size: 8, offset: 16)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !5567, file: !384, line: 1025, baseType: !5573, size: 96, offset: 24)
!5573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 96, elements: !4745)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "arg_flags", scope: !5567, file: !384, line: 1026, baseType: !5573, size: 96, offset: 120)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5564, file: !384, line: 1160, baseType: !23, size: 64, offset: 256)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "ftrace_managed", scope: !5564, file: !384, line: 1161, baseType: !804, size: 8, offset: 320)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "extension_prog", scope: !5553, file: !384, line: 1167, baseType: !5550, size: 64, offset: 960)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "progs_hlist", scope: !5553, file: !384, line: 1169, baseType: !5579, size: 192, offset: 1024)
!5579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 192, elements: !634)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "progs_cnt", scope: !5553, file: !384, line: 1171, baseType: !5581, size: 96, offset: 1216)
!5581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 96, elements: !634)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "cur_image", scope: !5553, file: !384, line: 1173, baseType: !5583, size: 64, offset: 1344)
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5584, size: 64)
!5584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_tramp_image", file: !384, line: 1137, size: 5376, elements: !5585)
!5585 = !{!5586, !5587, !5599, !5600, !5601, !5602}
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !5584, file: !384, line: 1138, baseType: !23, size: 64)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "ksym", scope: !5584, file: !384, line: 1139, baseType: !5588, size: 4800, offset: 64)
!5588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_ksym", file: !384, line: 1120, size: 4800, elements: !5589)
!5589 = !{!5590, !5591, !5592, !5596, !5597, !5598}
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5588, file: !384, line: 1121, baseType: !42, size: 64)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5588, file: !384, line: 1122, baseType: !42, size: 64, offset: 64)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5588, file: !384, line: 1123, baseType: !5593, size: 4096, offset: 128)
!5593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 4096, elements: !5594)
!5594 = !{!5595}
!5595 = !DISubrange(count: 512)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "lnode", scope: !5588, file: !384, line: 1124, baseType: !100, size: 128, offset: 4224)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "tnode", scope: !5588, file: !384, line: 1125, baseType: !2483, size: 384, offset: 4352)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "prog", scope: !5588, file: !384, line: 1126, baseType: !804, size: 8, offset: 4736)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "pcref", scope: !5584, file: !384, line: 1140, baseType: !1619, size: 128, offset: 4864)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "ip_after_call", scope: !5584, file: !384, line: 1141, baseType: !23, size: 64, offset: 4992)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "ip_epilogue", scope: !5584, file: !384, line: 1142, baseType: !23, size: 64, offset: 5056)
!5602 = !DIDerivedType(tag: DW_TAG_member, scope: !5584, file: !384, line: 1143, baseType: !5603, size: 256, offset: 5120)
!5603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5584, file: !384, line: 1143, size: 256, elements: !5604)
!5604 = !{!5605, !5606}
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5603, file: !384, line: 1144, baseType: !595, size: 128, align: 64)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5603, file: !384, line: 1145, baseType: !936, size: 256)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5553, file: !384, line: 1174, baseType: !1414, size: 64, offset: 1408)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "saved_dst_prog_type", scope: !5521, file: !384, line: 1423, baseType: !295, size: 32, offset: 1024)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "saved_dst_attach_type", scope: !5521, file: !384, line: 1424, baseType: !331, size: 32, offset: 1056)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "verifier_zext", scope: !5521, file: !384, line: 1425, baseType: !804, size: 8, offset: 1088)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "dev_bound", scope: !5521, file: !384, line: 1426, baseType: !804, size: 8, offset: 1096)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "offload_requested", scope: !5521, file: !384, line: 1427, baseType: !804, size: 8, offset: 1104)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "attach_btf_trace", scope: !5521, file: !384, line: 1428, baseType: !804, size: 8, offset: 1112)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "func_proto_unreliable", scope: !5521, file: !384, line: 1429, baseType: !804, size: 8, offset: 1120)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "sleepable", scope: !5521, file: !384, line: 1430, baseType: !804, size: 8, offset: 1128)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "tail_call_reachable", scope: !5521, file: !384, line: 1431, baseType: !804, size: 8, offset: 1136)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "xdp_has_frags", scope: !5521, file: !384, line: 1432, baseType: !804, size: 8, offset: 1144)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "attach_func_proto", scope: !5521, file: !384, line: 1434, baseType: !5619, size: 64, offset: 1152)
!5619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5620, size: 64)
!5620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5621)
!5621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btf_type", file: !5622, line: 31, size: 96, elements: !5623)
!5622 = !DIFile(filename: "./include/uapi/linux/btf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f81898009394c0bc4dde080d2a7d0ea7")
!5623 = !{!5624, !5625, !5626}
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "name_off", scope: !5621, file: !5622, line: 32, baseType: !769, size: 32)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5621, file: !5622, line: 41, baseType: !769, size: 32, offset: 32)
!5626 = !DIDerivedType(tag: DW_TAG_member, scope: !5621, file: !5622, line: 49, baseType: !5627, size: 32, offset: 64)
!5627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5621, file: !5622, line: 49, size: 32, elements: !5628)
!5628 = !{!5629, !5630}
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5627, file: !5622, line: 50, baseType: !769, size: 32)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5627, file: !5622, line: 51, baseType: !769, size: 32)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "attach_func_name", scope: !5521, file: !384, line: 1436, baseType: !19, size: 64, offset: 1216)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5521, file: !384, line: 1437, baseType: !5633, size: 64, offset: 1280)
!5633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5550, size: 64)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "jit_data", scope: !5521, file: !384, line: 1438, baseType: !23, size: 64, offset: 1344)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "poke_tab", scope: !5521, file: !384, line: 1439, baseType: !5636, size: 64, offset: 1408)
!5636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5637, size: 64)
!5637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_jit_poke_descriptor", file: !384, line: 1372, size: 448, elements: !5638)
!5638 = !{!5639, !5640, !5641, !5642, !5643, !6196, !6197, !6198, !6199}
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "tailcall_target", scope: !5637, file: !384, line: 1373, baseType: !23, size: 64)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "tailcall_bypass", scope: !5637, file: !384, line: 1374, baseType: !23, size: 64, offset: 64)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "bypass_addr", scope: !5637, file: !384, line: 1375, baseType: !23, size: 64, offset: 128)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !5637, file: !384, line: 1376, baseType: !23, size: 64, offset: 192)
!5643 = !DIDerivedType(tag: DW_TAG_member, scope: !5637, file: !384, line: 1377, baseType: !5644, size: 128, offset: 256)
!5644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5637, file: !384, line: 1377, size: 128, elements: !5645)
!5645 = !{!5646}
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "tail_call", scope: !5644, file: !384, line: 1381, baseType: !5647, size: 128)
!5647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5644, file: !384, line: 1378, size: 128, elements: !5648)
!5648 = !{!5649, !6195}
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !5647, file: !384, line: 1379, baseType: !5650, size: 64)
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5651, size: 64)
!5651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_map", file: !384, line: 247, size: 2560, elements: !5652)
!5652 = !{!5653, !6122, !6123, !6124, !6125, !6126, !6127, !6128, !6129, !6130, !6131, !6165, !6166, !6167, !6168, !6169, !6170, !6171, !6172, !6173, !6178, !6179, !6180, !6188, !6189, !6190, !6191, !6192, !6193}
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5651, file: !384, line: 251, baseType: !5654, size: 64, align: 512)
!5654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5655, size: 64)
!5655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5656)
!5656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_map_ops", file: !384, line: 75, size: 2688, elements: !5657)
!5657 = !{!5658, !5947, !5951, !5955, !5959, !5963, !5964, !5968, !5974, !5978, !5979, !5983, !5984, !5985, !5989, !5993, !5997, !5998, !5999, !6003, !6007, !6011, !6016, !6020, !6024, !6032, !6036, !6040, !6044, !6048, !6052, !6056, !6060, !6066, !6070, !6077, !6081, !6085, !6093, !6101, !6105, !6106}
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "map_alloc_check", scope: !5656, file: !384, line: 77, baseType: !5659, size: 64)
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5660 = !DISubroutineType(types: !5661)
!5661 = !{!25, !5662}
!5662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5663, size: 64)
!5663 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "bpf_attr", file: !296, line: 1374, size: 1152, align: 64, elements: !5664)
!5664 = !{!5665, !5682, !5693, !5704, !5737, !5744, !5762, !5780, !5793, !5799, !5820, !5825, !5834, !5846, !5913, !5928, !5932, !5936, !5941}
!5665 = !DIDerivedType(tag: DW_TAG_member, scope: !5663, file: !296, line: 1375, baseType: !5666, size: 576)
!5666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1375, size: 576, elements: !5667)
!5667 = !{!5668, !5669, !5670, !5671, !5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5680, !5681}
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "map_type", scope: !5666, file: !296, line: 1376, baseType: !769, size: 32)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !5666, file: !296, line: 1377, baseType: !769, size: 32, offset: 32)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "value_size", scope: !5666, file: !296, line: 1378, baseType: !769, size: 32, offset: 64)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !5666, file: !296, line: 1379, baseType: !769, size: 32, offset: 96)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "map_flags", scope: !5666, file: !296, line: 1380, baseType: !769, size: 32, offset: 128)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "inner_map_fd", scope: !5666, file: !296, line: 1383, baseType: !769, size: 32, offset: 160)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !5666, file: !296, line: 1384, baseType: !769, size: 32, offset: 192)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "map_name", scope: !5666, file: !296, line: 1387, baseType: !3985, size: 128, offset: 224)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "map_ifindex", scope: !5666, file: !296, line: 1388, baseType: !769, size: 32, offset: 352)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "btf_fd", scope: !5666, file: !296, line: 1389, baseType: !769, size: 32, offset: 384)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "btf_key_type_id", scope: !5666, file: !296, line: 1390, baseType: !769, size: 32, offset: 416)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "btf_value_type_id", scope: !5666, file: !296, line: 1391, baseType: !769, size: 32, offset: 448)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "btf_vmlinux_value_type_id", scope: !5666, file: !296, line: 1392, baseType: !769, size: 32, offset: 480)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "map_extra", scope: !5666, file: !296, line: 1402, baseType: !483, size: 64, offset: 512)
!5682 = !DIDerivedType(tag: DW_TAG_member, scope: !5663, file: !296, line: 1405, baseType: !5683, size: 256)
!5683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1405, size: 256, elements: !5684)
!5684 = !{!5685, !5686, !5687, !5692}
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "map_fd", scope: !5683, file: !296, line: 1406, baseType: !769, size: 32)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5683, file: !296, line: 1407, baseType: !483, size: 64, align: 64, offset: 64)
!5687 = !DIDerivedType(tag: DW_TAG_member, scope: !5683, file: !296, line: 1408, baseType: !5688, size: 64, offset: 128)
!5688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5683, file: !296, line: 1408, size: 64, elements: !5689)
!5689 = !{!5690, !5691}
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5688, file: !296, line: 1409, baseType: !483, size: 64, align: 64)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "next_key", scope: !5688, file: !296, line: 1410, baseType: !483, size: 64, align: 64)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5683, file: !296, line: 1412, baseType: !483, size: 64, offset: 192)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5663, file: !296, line: 1430, baseType: !5694, size: 448)
!5694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1415, size: 448, elements: !5695)
!5695 = !{!5696, !5697, !5698, !5699, !5700, !5701, !5702, !5703}
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "in_batch", scope: !5694, file: !296, line: 1416, baseType: !483, size: 64, align: 64)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "out_batch", scope: !5694, file: !296, line: 1419, baseType: !483, size: 64, align: 64, offset: 64)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !5694, file: !296, line: 1420, baseType: !483, size: 64, align: 64, offset: 128)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5694, file: !296, line: 1421, baseType: !483, size: 64, align: 64, offset: 192)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5694, file: !296, line: 1422, baseType: !769, size: 32, offset: 256)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "map_fd", scope: !5694, file: !296, line: 1427, baseType: !769, size: 32, offset: 288)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "elem_flags", scope: !5694, file: !296, line: 1428, baseType: !483, size: 64, offset: 320)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5694, file: !296, line: 1429, baseType: !483, size: 64, offset: 384)
!5704 = !DIDerivedType(tag: DW_TAG_member, scope: !5663, file: !296, line: 1432, baseType: !5705, size: 1152)
!5705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1432, size: 1152, elements: !5706)
!5706 = !{!5707, !5708, !5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5721, !5722, !5723, !5724, !5725, !5726, !5727, !5732, !5733, !5734, !5735, !5736}
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "prog_type", scope: !5705, file: !296, line: 1433, baseType: !769, size: 32)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "insn_cnt", scope: !5705, file: !296, line: 1434, baseType: !769, size: 32, offset: 32)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !5705, file: !296, line: 1435, baseType: !483, size: 64, align: 64, offset: 64)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "license", scope: !5705, file: !296, line: 1436, baseType: !483, size: 64, align: 64, offset: 128)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !5705, file: !296, line: 1437, baseType: !769, size: 32, offset: 192)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "log_size", scope: !5705, file: !296, line: 1438, baseType: !769, size: 32, offset: 224)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "log_buf", scope: !5705, file: !296, line: 1439, baseType: !483, size: 64, align: 64, offset: 256)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "kern_version", scope: !5705, file: !296, line: 1440, baseType: !769, size: 32, offset: 320)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "prog_flags", scope: !5705, file: !296, line: 1441, baseType: !769, size: 32, offset: 352)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "prog_name", scope: !5705, file: !296, line: 1442, baseType: !3985, size: 128, offset: 384)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "prog_ifindex", scope: !5705, file: !296, line: 1443, baseType: !769, size: 32, offset: 512)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "expected_attach_type", scope: !5705, file: !296, line: 1448, baseType: !769, size: 32, offset: 544)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "prog_btf_fd", scope: !5705, file: !296, line: 1449, baseType: !769, size: 32, offset: 576)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "func_info_rec_size", scope: !5705, file: !296, line: 1450, baseType: !769, size: 32, offset: 608)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "func_info", scope: !5705, file: !296, line: 1451, baseType: !483, size: 64, align: 64, offset: 640)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "func_info_cnt", scope: !5705, file: !296, line: 1452, baseType: !769, size: 32, offset: 704)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "line_info_rec_size", scope: !5705, file: !296, line: 1453, baseType: !769, size: 32, offset: 736)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "line_info", scope: !5705, file: !296, line: 1454, baseType: !483, size: 64, align: 64, offset: 768)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "line_info_cnt", scope: !5705, file: !296, line: 1455, baseType: !769, size: 32, offset: 832)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "attach_btf_id", scope: !5705, file: !296, line: 1456, baseType: !769, size: 32, offset: 864)
!5727 = !DIDerivedType(tag: DW_TAG_member, scope: !5705, file: !296, line: 1457, baseType: !5728, size: 32, offset: 896)
!5728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5705, file: !296, line: 1457, size: 32, elements: !5729)
!5729 = !{!5730, !5731}
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "attach_prog_fd", scope: !5728, file: !296, line: 1459, baseType: !769, size: 32)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "attach_btf_obj_fd", scope: !5728, file: !296, line: 1461, baseType: !769, size: 32)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "core_relo_cnt", scope: !5705, file: !296, line: 1463, baseType: !769, size: 32, offset: 928)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "fd_array", scope: !5705, file: !296, line: 1464, baseType: !483, size: 64, align: 64, offset: 960)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "core_relos", scope: !5705, file: !296, line: 1465, baseType: !483, size: 64, align: 64, offset: 1024)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "core_relo_rec_size", scope: !5705, file: !296, line: 1466, baseType: !769, size: 32, offset: 1088)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "log_true_size", scope: !5705, file: !296, line: 1471, baseType: !769, size: 32, offset: 1120)
!5737 = !DIDerivedType(tag: DW_TAG_member, scope: !5663, file: !296, line: 1474, baseType: !5738, size: 192)
!5738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1474, size: 192, elements: !5739)
!5739 = !{!5740, !5741, !5742, !5743}
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "pathname", scope: !5738, file: !296, line: 1475, baseType: !483, size: 64, align: 64)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_fd", scope: !5738, file: !296, line: 1476, baseType: !769, size: 32, offset: 64)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "file_flags", scope: !5738, file: !296, line: 1477, baseType: !769, size: 32, offset: 96)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "path_fd", scope: !5738, file: !296, line: 1484, baseType: !729, size: 32, offset: 128)
!5744 = !DIDerivedType(tag: DW_TAG_member, scope: !5663, file: !296, line: 1487, baseType: !5745, size: 256)
!5745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1487, size: 256, elements: !5746)
!5746 = !{!5747, !5752, !5753, !5754, !5755, !5756, !5761}
!5747 = !DIDerivedType(tag: DW_TAG_member, scope: !5745, file: !296, line: 1488, baseType: !5748, size: 32)
!5748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5745, file: !296, line: 1488, size: 32, elements: !5749)
!5749 = !{!5750, !5751}
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "target_fd", scope: !5748, file: !296, line: 1489, baseType: !769, size: 32)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "target_ifindex", scope: !5748, file: !296, line: 1490, baseType: !769, size: 32)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "attach_bpf_fd", scope: !5745, file: !296, line: 1492, baseType: !769, size: 32, offset: 32)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "attach_type", scope: !5745, file: !296, line: 1493, baseType: !769, size: 32, offset: 64)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "attach_flags", scope: !5745, file: !296, line: 1494, baseType: !769, size: 32, offset: 96)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "replace_bpf_fd", scope: !5745, file: !296, line: 1495, baseType: !769, size: 32, offset: 128)
!5756 = !DIDerivedType(tag: DW_TAG_member, scope: !5745, file: !296, line: 1496, baseType: !5757, size: 32, offset: 160)
!5757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5745, file: !296, line: 1496, size: 32, elements: !5758)
!5758 = !{!5759, !5760}
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "relative_fd", scope: !5757, file: !296, line: 1497, baseType: !769, size: 32)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "relative_id", scope: !5757, file: !296, line: 1498, baseType: !769, size: 32)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "expected_revision", scope: !5745, file: !296, line: 1500, baseType: !483, size: 64, offset: 192)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !5663, file: !296, line: 1525, baseType: !5763, size: 640)
!5763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1503, size: 640, elements: !5764)
!5764 = !{!5765, !5766, !5767, !5768, !5769, !5770, !5771, !5772, !5773, !5774, !5775, !5776, !5777, !5778, !5779}
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "prog_fd", scope: !5763, file: !296, line: 1504, baseType: !769, size: 32)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !5763, file: !296, line: 1505, baseType: !769, size: 32, offset: 32)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "data_size_in", scope: !5763, file: !296, line: 1506, baseType: !769, size: 32, offset: 64)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "data_size_out", scope: !5763, file: !296, line: 1507, baseType: !769, size: 32, offset: 96)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "data_in", scope: !5763, file: !296, line: 1511, baseType: !483, size: 64, align: 64, offset: 128)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "data_out", scope: !5763, file: !296, line: 1512, baseType: !483, size: 64, align: 64, offset: 192)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "repeat", scope: !5763, file: !296, line: 1513, baseType: !769, size: 32, offset: 256)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !5763, file: !296, line: 1514, baseType: !769, size: 32, offset: 288)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size_in", scope: !5763, file: !296, line: 1515, baseType: !769, size: 32, offset: 320)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size_out", scope: !5763, file: !296, line: 1516, baseType: !769, size: 32, offset: 352)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_in", scope: !5763, file: !296, line: 1520, baseType: !483, size: 64, align: 64, offset: 384)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_out", scope: !5763, file: !296, line: 1521, baseType: !483, size: 64, align: 64, offset: 448)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5763, file: !296, line: 1522, baseType: !769, size: 32, offset: 512)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5763, file: !296, line: 1523, baseType: !769, size: 32, offset: 544)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "batch_size", scope: !5763, file: !296, line: 1524, baseType: !769, size: 32, offset: 576)
!5780 = !DIDerivedType(tag: DW_TAG_member, scope: !5663, file: !296, line: 1527, baseType: !5781, size: 96)
!5781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1527, size: 96, elements: !5782)
!5782 = !{!5783, !5791, !5792}
!5783 = !DIDerivedType(tag: DW_TAG_member, scope: !5781, file: !296, line: 1528, baseType: !5784, size: 32)
!5784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5781, file: !296, line: 1528, size: 32, elements: !5785)
!5785 = !{!5786, !5787, !5788, !5789, !5790}
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "start_id", scope: !5784, file: !296, line: 1529, baseType: !769, size: 32)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "prog_id", scope: !5784, file: !296, line: 1530, baseType: !769, size: 32)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "map_id", scope: !5784, file: !296, line: 1531, baseType: !769, size: 32)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "btf_id", scope: !5784, file: !296, line: 1532, baseType: !769, size: 32)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "link_id", scope: !5784, file: !296, line: 1533, baseType: !769, size: 32)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "next_id", scope: !5781, file: !296, line: 1535, baseType: !769, size: 32, offset: 32)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "open_flags", scope: !5781, file: !296, line: 1536, baseType: !769, size: 32, offset: 64)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5663, file: !296, line: 1543, baseType: !5794, size: 128)
!5794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1539, size: 128, elements: !5795)
!5795 = !{!5796, !5797, !5798}
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_fd", scope: !5794, file: !296, line: 1540, baseType: !769, size: 32)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "info_len", scope: !5794, file: !296, line: 1541, baseType: !769, size: 32, offset: 32)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5794, file: !296, line: 1542, baseType: !483, size: 64, align: 64, offset: 64)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !5663, file: !296, line: 1566, baseType: !5800, size: 512)
!5800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1545, size: 512, elements: !5801)
!5801 = !{!5802, !5807, !5808, !5809, !5810, !5811, !5816, !5817, !5818, !5819}
!5802 = !DIDerivedType(tag: DW_TAG_member, scope: !5800, file: !296, line: 1546, baseType: !5803, size: 32)
!5803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5800, file: !296, line: 1546, size: 32, elements: !5804)
!5804 = !{!5805, !5806}
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "target_fd", scope: !5803, file: !296, line: 1547, baseType: !769, size: 32)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "target_ifindex", scope: !5803, file: !296, line: 1548, baseType: !769, size: 32)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "attach_type", scope: !5800, file: !296, line: 1550, baseType: !769, size: 32, offset: 32)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "query_flags", scope: !5800, file: !296, line: 1551, baseType: !769, size: 32, offset: 64)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "attach_flags", scope: !5800, file: !296, line: 1552, baseType: !769, size: 32, offset: 96)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "prog_ids", scope: !5800, file: !296, line: 1553, baseType: !483, size: 64, align: 64, offset: 128)
!5811 = !DIDerivedType(tag: DW_TAG_member, scope: !5800, file: !296, line: 1554, baseType: !5812, size: 32, offset: 192)
!5812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5800, file: !296, line: 1554, size: 32, elements: !5813)
!5813 = !{!5814, !5815}
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "prog_cnt", scope: !5812, file: !296, line: 1555, baseType: !769, size: 32)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5812, file: !296, line: 1556, baseType: !769, size: 32)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "prog_attach_flags", scope: !5800, file: !296, line: 1562, baseType: !483, size: 64, align: 64, offset: 256)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "link_ids", scope: !5800, file: !296, line: 1563, baseType: !483, size: 64, align: 64, offset: 320)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "link_attach_flags", scope: !5800, file: !296, line: 1564, baseType: !483, size: 64, align: 64, offset: 384)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !5800, file: !296, line: 1565, baseType: !483, size: 64, offset: 448)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "raw_tracepoint", scope: !5663, file: !296, line: 1571, baseType: !5821, size: 128)
!5821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1568, size: 128, elements: !5822)
!5822 = !{!5823, !5824}
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5821, file: !296, line: 1569, baseType: !483, size: 64)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "prog_fd", scope: !5821, file: !296, line: 1570, baseType: !769, size: 32, offset: 64)
!5825 = !DIDerivedType(tag: DW_TAG_member, scope: !5663, file: !296, line: 1573, baseType: !5826, size: 256)
!5826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1573, size: 256, elements: !5827)
!5827 = !{!5828, !5829, !5830, !5831, !5832, !5833}
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "btf", scope: !5826, file: !296, line: 1574, baseType: !483, size: 64, align: 64)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "btf_log_buf", scope: !5826, file: !296, line: 1575, baseType: !483, size: 64, align: 64, offset: 64)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "btf_size", scope: !5826, file: !296, line: 1576, baseType: !769, size: 32, offset: 128)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "btf_log_size", scope: !5826, file: !296, line: 1577, baseType: !769, size: 32, offset: 160)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "btf_log_level", scope: !5826, file: !296, line: 1578, baseType: !769, size: 32, offset: 192)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "btf_log_true_size", scope: !5826, file: !296, line: 1583, baseType: !769, size: 32, offset: 224)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "task_fd_query", scope: !5663, file: !296, line: 1600, baseType: !5835, size: 384)
!5835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1586, size: 384, elements: !5836)
!5836 = !{!5837, !5838, !5839, !5840, !5841, !5842, !5843, !5844, !5845}
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !5835, file: !296, line: 1587, baseType: !769, size: 32)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5835, file: !296, line: 1588, baseType: !769, size: 32, offset: 32)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5835, file: !296, line: 1589, baseType: !769, size: 32, offset: 64)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "buf_len", scope: !5835, file: !296, line: 1590, baseType: !769, size: 32, offset: 96)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5835, file: !296, line: 1591, baseType: !483, size: 64, align: 64, offset: 128)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "prog_id", scope: !5835, file: !296, line: 1596, baseType: !769, size: 32, offset: 192)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "fd_type", scope: !5835, file: !296, line: 1597, baseType: !769, size: 32, offset: 224)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !5835, file: !296, line: 1598, baseType: !483, size: 64, offset: 256)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "probe_addr", scope: !5835, file: !296, line: 1599, baseType: !483, size: 64, offset: 320)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "link_create", scope: !5663, file: !296, line: 1665, baseType: !5847, size: 512)
!5847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1602, size: 512, elements: !5848)
!5848 = !{!5849, !5854, !5859, !5860, !5861}
!5849 = !DIDerivedType(tag: DW_TAG_member, scope: !5847, file: !296, line: 1603, baseType: !5850, size: 32)
!5850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5847, file: !296, line: 1603, size: 32, elements: !5851)
!5851 = !{!5852, !5853}
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "prog_fd", scope: !5850, file: !296, line: 1604, baseType: !769, size: 32)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "map_fd", scope: !5850, file: !296, line: 1605, baseType: !769, size: 32)
!5854 = !DIDerivedType(tag: DW_TAG_member, scope: !5847, file: !296, line: 1607, baseType: !5855, size: 32, offset: 32)
!5855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5847, file: !296, line: 1607, size: 32, elements: !5856)
!5856 = !{!5857, !5858}
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "target_fd", scope: !5855, file: !296, line: 1608, baseType: !769, size: 32)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "target_ifindex", scope: !5855, file: !296, line: 1609, baseType: !769, size: 32)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "attach_type", scope: !5847, file: !296, line: 1611, baseType: !769, size: 32, offset: 64)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5847, file: !296, line: 1612, baseType: !769, size: 32, offset: 96)
!5861 = !DIDerivedType(tag: DW_TAG_member, scope: !5847, file: !296, line: 1613, baseType: !5862, size: 384, offset: 128)
!5862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5847, file: !296, line: 1613, size: 384, elements: !5863)
!5863 = !{!5864, !5865, !5870, !5874, !5882, !5887, !5894, !5903}
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "target_btf_id", scope: !5862, file: !296, line: 1614, baseType: !769, size: 32)
!5865 = !DIDerivedType(tag: DW_TAG_member, scope: !5862, file: !296, line: 1615, baseType: !5866, size: 128)
!5866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5862, file: !296, line: 1615, size: 128, elements: !5867)
!5867 = !{!5868, !5869}
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "iter_info", scope: !5866, file: !296, line: 1616, baseType: !483, size: 64, align: 64)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "iter_info_len", scope: !5866, file: !296, line: 1617, baseType: !769, size: 32, offset: 64)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event", scope: !5862, file: !296, line: 1625, baseType: !5871, size: 64)
!5871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5862, file: !296, line: 1619, size: 64, elements: !5872)
!5872 = !{!5873}
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_cookie", scope: !5871, file: !296, line: 1624, baseType: !483, size: 64)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_multi", scope: !5862, file: !296, line: 1632, baseType: !5875, size: 256)
!5875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5862, file: !296, line: 1626, size: 256, elements: !5876)
!5876 = !{!5877, !5878, !5879, !5880, !5881}
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5875, file: !296, line: 1627, baseType: !769, size: 32)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "cnt", scope: !5875, file: !296, line: 1628, baseType: !769, size: 32, offset: 32)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !5875, file: !296, line: 1629, baseType: !483, size: 64, align: 64, offset: 64)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !5875, file: !296, line: 1630, baseType: !483, size: 64, align: 64, offset: 128)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "cookies", scope: !5875, file: !296, line: 1631, baseType: !483, size: 64, align: 64, offset: 192)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !5862, file: !296, line: 1641, baseType: !5883, size: 128)
!5883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5862, file: !296, line: 1633, size: 128, elements: !5884)
!5884 = !{!5885, !5886}
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "target_btf_id", scope: !5883, file: !296, line: 1635, baseType: !769, size: 32)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !5883, file: !296, line: 1640, baseType: !483, size: 64, offset: 64)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "netfilter", scope: !5862, file: !296, line: 1647, baseType: !5888, size: 128)
!5888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5862, file: !296, line: 1642, size: 128, elements: !5889)
!5889 = !{!5890, !5891, !5892, !5893}
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !5888, file: !296, line: 1643, baseType: !769, size: 32)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "hooknum", scope: !5888, file: !296, line: 1644, baseType: !769, size: 32, offset: 32)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5888, file: !296, line: 1645, baseType: !729, size: 32, offset: 64)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5888, file: !296, line: 1646, baseType: !769, size: 32, offset: 96)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "tcx", scope: !5862, file: !296, line: 1654, baseType: !5895, size: 128)
!5895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5862, file: !296, line: 1648, size: 128, elements: !5896)
!5896 = !{!5897, !5902}
!5897 = !DIDerivedType(tag: DW_TAG_member, scope: !5895, file: !296, line: 1649, baseType: !5898, size: 32)
!5898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5895, file: !296, line: 1649, size: 32, elements: !5899)
!5899 = !{!5900, !5901}
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "relative_fd", scope: !5898, file: !296, line: 1650, baseType: !769, size: 32)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "relative_id", scope: !5898, file: !296, line: 1651, baseType: !769, size: 32)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "expected_revision", scope: !5895, file: !296, line: 1653, baseType: !483, size: 64, offset: 64)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_multi", scope: !5862, file: !296, line: 1663, baseType: !5904, size: 384)
!5904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5862, file: !296, line: 1655, size: 384, elements: !5905)
!5905 = !{!5906, !5907, !5908, !5909, !5910, !5911, !5912}
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !5904, file: !296, line: 1656, baseType: !483, size: 64, align: 64)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5904, file: !296, line: 1657, baseType: !483, size: 64, align: 64, offset: 64)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "ref_ctr_offsets", scope: !5904, file: !296, line: 1658, baseType: !483, size: 64, align: 64, offset: 128)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "cookies", scope: !5904, file: !296, line: 1659, baseType: !483, size: 64, align: 64, offset: 192)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "cnt", scope: !5904, file: !296, line: 1660, baseType: !769, size: 32, offset: 256)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5904, file: !296, line: 1661, baseType: !769, size: 32, offset: 288)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !5904, file: !296, line: 1662, baseType: !769, size: 32, offset: 320)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "link_update", scope: !5663, file: !296, line: 1686, baseType: !5914, size: 128)
!5914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1667, size: 128, elements: !5915)
!5915 = !{!5916, !5917, !5922, !5923}
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "link_fd", scope: !5914, file: !296, line: 1668, baseType: !769, size: 32)
!5917 = !DIDerivedType(tag: DW_TAG_member, scope: !5914, file: !296, line: 1669, baseType: !5918, size: 32, offset: 32)
!5918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5914, file: !296, line: 1669, size: 32, elements: !5919)
!5919 = !{!5920, !5921}
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "new_prog_fd", scope: !5918, file: !296, line: 1671, baseType: !769, size: 32)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "new_map_fd", scope: !5918, file: !296, line: 1673, baseType: !769, size: 32)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5914, file: !296, line: 1675, baseType: !769, size: 32, offset: 64)
!5923 = !DIDerivedType(tag: DW_TAG_member, scope: !5914, file: !296, line: 1676, baseType: !5924, size: 32, offset: 96)
!5924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5914, file: !296, line: 1676, size: 32, elements: !5925)
!5925 = !{!5926, !5927}
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "old_prog_fd", scope: !5924, file: !296, line: 1680, baseType: !769, size: 32)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "old_map_fd", scope: !5924, file: !296, line: 1684, baseType: !769, size: 32)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "link_detach", scope: !5663, file: !296, line: 1690, baseType: !5929, size: 32)
!5929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1688, size: 32, elements: !5930)
!5930 = !{!5931}
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "link_fd", scope: !5929, file: !296, line: 1689, baseType: !769, size: 32)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "enable_stats", scope: !5663, file: !296, line: 1694, baseType: !5933, size: 32)
!5933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1692, size: 32, elements: !5934)
!5934 = !{!5935}
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5933, file: !296, line: 1693, baseType: !769, size: 32)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "iter_create", scope: !5663, file: !296, line: 1699, baseType: !5937, size: 64)
!5937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1696, size: 64, elements: !5938)
!5938 = !{!5939, !5940}
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "link_fd", scope: !5937, file: !296, line: 1697, baseType: !769, size: 32)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5937, file: !296, line: 1698, baseType: !769, size: 32, offset: 32)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "prog_bind_map", scope: !5663, file: !296, line: 1705, baseType: !5942, size: 96)
!5942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5663, file: !296, line: 1701, size: 96, elements: !5943)
!5943 = !{!5944, !5945, !5946}
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "prog_fd", scope: !5942, file: !296, line: 1702, baseType: !769, size: 32)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "map_fd", scope: !5942, file: !296, line: 1703, baseType: !769, size: 32, offset: 32)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5942, file: !296, line: 1704, baseType: !769, size: 32, offset: 64)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "map_alloc", scope: !5656, file: !384, line: 78, baseType: !5948, size: 64, offset: 64)
!5948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5949, size: 64)
!5949 = !DISubroutineType(types: !5950)
!5950 = !{!5650, !5662}
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "map_release", scope: !5656, file: !384, line: 79, baseType: !5952, size: 64, offset: 128)
!5952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5953, size: 64)
!5953 = !DISubroutineType(types: !5954)
!5954 = !{null, !5650, !1230}
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "map_free", scope: !5656, file: !384, line: 80, baseType: !5956, size: 64, offset: 192)
!5956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5957, size: 64)
!5957 = !DISubroutineType(types: !5958)
!5958 = !{null, !5650}
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "map_get_next_key", scope: !5656, file: !384, line: 81, baseType: !5960, size: 64, offset: 256)
!5960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5961, size: 64)
!5961 = !DISubroutineType(types: !5962)
!5962 = !{!25, !5650, !23, !23}
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "map_release_uref", scope: !5656, file: !384, line: 82, baseType: !5956, size: 64, offset: 320)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "map_lookup_elem_sys_only", scope: !5656, file: !384, line: 83, baseType: !5965, size: 64, offset: 384)
!5965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5966, size: 64)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{!23, !5650, !23}
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "map_lookup_batch", scope: !5656, file: !384, line: 84, baseType: !5969, size: 64, offset: 448)
!5969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5970, size: 64)
!5970 = !DISubroutineType(types: !5971)
!5971 = !{!25, !5650, !5972, !5662}
!5972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5973, size: 64)
!5973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5663)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "map_lookup_and_delete_elem", scope: !5656, file: !384, line: 86, baseType: !5975, size: 64, offset: 512)
!5975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5976, size: 64)
!5976 = !DISubroutineType(types: !5977)
!5977 = !{!25, !5650, !23, !23, !482}
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "map_lookup_and_delete_batch", scope: !5656, file: !384, line: 88, baseType: !5969, size: 64, offset: 576)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "map_update_batch", scope: !5656, file: !384, line: 91, baseType: !5980, size: 64, offset: 640)
!5980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5981, size: 64)
!5981 = !DISubroutineType(types: !5982)
!5982 = !{!25, !5650, !1230, !5972, !5662}
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "map_delete_batch", scope: !5656, file: !384, line: 94, baseType: !5969, size: 64, offset: 704)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "map_lookup_elem", scope: !5656, file: !384, line: 98, baseType: !5965, size: 64, offset: 768)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "map_update_elem", scope: !5656, file: !384, line: 99, baseType: !5986, size: 64, offset: 832)
!5986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5987, size: 64)
!5987 = !DISubroutineType(types: !5988)
!5988 = !{!1037, !5650, !23, !23, !482}
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "map_delete_elem", scope: !5656, file: !384, line: 100, baseType: !5990, size: 64, offset: 896)
!5990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5991, size: 64)
!5991 = !DISubroutineType(types: !5992)
!5992 = !{!1037, !5650, !23}
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "map_push_elem", scope: !5656, file: !384, line: 101, baseType: !5994, size: 64, offset: 960)
!5994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5995, size: 64)
!5995 = !DISubroutineType(types: !5996)
!5996 = !{!1037, !5650, !23, !482}
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "map_pop_elem", scope: !5656, file: !384, line: 102, baseType: !5990, size: 64, offset: 1024)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "map_peek_elem", scope: !5656, file: !384, line: 103, baseType: !5990, size: 64, offset: 1088)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "map_lookup_percpu_elem", scope: !5656, file: !384, line: 104, baseType: !6000, size: 64, offset: 1152)
!6000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6001, size: 64)
!6001 = !DISubroutineType(types: !6002)
!6002 = !{!23, !5650, !23, !768}
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "map_fd_get_ptr", scope: !5656, file: !384, line: 107, baseType: !6004, size: 64, offset: 1216)
!6004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6005, size: 64)
!6005 = !DISubroutineType(types: !6006)
!6006 = !{!23, !5650, !1230, !25}
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "map_fd_put_ptr", scope: !5656, file: !384, line: 113, baseType: !6008, size: 64, offset: 1280)
!6008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6009, size: 64)
!6009 = !DISubroutineType(types: !6010)
!6010 = !{null, !5650, !23, !804}
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "map_gen_lookup", scope: !5656, file: !384, line: 114, baseType: !6012, size: 64, offset: 1344)
!6012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6013, size: 64)
!6013 = !DISubroutineType(types: !6014)
!6014 = !{!25, !5650, !6015}
!6015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5512, size: 64)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "map_fd_sys_lookup_elem", scope: !5656, file: !384, line: 115, baseType: !6017, size: 64, offset: 1408)
!6017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6018, size: 64)
!6018 = !DISubroutineType(types: !6019)
!6019 = !{!768, !23}
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "map_seq_show_elem", scope: !5656, file: !384, line: 116, baseType: !6021, size: 64, offset: 1472)
!6021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6022, size: 64)
!6022 = !DISubroutineType(types: !6023)
!6023 = !{null, !5650, !23, !526}
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "map_check_btf", scope: !5656, file: !384, line: 118, baseType: !6025, size: 64, offset: 1536)
!6025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6026, size: 64)
!6026 = !DISubroutineType(types: !6027)
!6027 = !{!25, !6028, !6030, !5619, !5619}
!6028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6029, size: 64)
!6029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5651)
!6030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6031, size: 64)
!6031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5539)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "map_poke_track", scope: !5656, file: !384, line: 124, baseType: !6033, size: 64, offset: 1600)
!6033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6034, size: 64)
!6034 = !DISubroutineType(types: !6035)
!6035 = !{!25, !5650, !5520}
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "map_poke_untrack", scope: !5656, file: !384, line: 125, baseType: !6037, size: 64, offset: 1664)
!6037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6038, size: 64)
!6038 = !DISubroutineType(types: !6039)
!6039 = !{null, !5650, !5520}
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "map_poke_run", scope: !5656, file: !384, line: 126, baseType: !6041, size: 64, offset: 1728)
!6041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6042, size: 64)
!6042 = !DISubroutineType(types: !6043)
!6043 = !{null, !5650, !768, !5550, !5550}
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "map_direct_value_addr", scope: !5656, file: !384, line: 130, baseType: !6045, size: 64, offset: 1792)
!6045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6046, size: 64)
!6046 = !DISubroutineType(types: !6047)
!6047 = !{!25, !6028, !3418, !768}
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "map_direct_value_meta", scope: !5656, file: !384, line: 132, baseType: !6049, size: 64, offset: 1856)
!6049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6050, size: 64)
!6050 = !DISubroutineType(types: !6051)
!6051 = !{!25, !6028, !482, !3885}
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "map_mmap", scope: !5656, file: !384, line: 134, baseType: !6053, size: 64, offset: 1920)
!6053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6054, size: 64)
!6054 = !DISubroutineType(types: !6055)
!6055 = !{!25, !5650, !1665}
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "map_poll", scope: !5656, file: !384, line: 135, baseType: !6057, size: 64, offset: 1984)
!6057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6058, size: 64)
!6058 = !DISubroutineType(types: !6059)
!6059 = !{!2325, !5650, !1230, !2327}
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "map_local_storage_charge", scope: !5656, file: !384, line: 139, baseType: !6061, size: 64, offset: 2048)
!6061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6062, size: 64)
!6062 = !DISubroutineType(types: !6063)
!6063 = !{!25, !6064, !23, !768}
!6064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6065, size: 64)
!6065 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_local_storage_map", file: !384, line: 47, flags: DIFlagFwdDecl)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "map_local_storage_uncharge", scope: !5656, file: !384, line: 141, baseType: !6067, size: 64, offset: 2112)
!6067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6068, size: 64)
!6068 = !DISubroutineType(types: !6069)
!6069 = !{null, !6064, !23, !768}
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "map_owner_storage_ptr", scope: !5656, file: !384, line: 143, baseType: !6071, size: 64, offset: 2176)
!6071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6072, size: 64)
!6072 = !DISubroutineType(types: !6073)
!6073 = !{!6074, !23}
!6074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6075, size: 64)
!6075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6076, size: 64)
!6076 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_local_storage", file: !1914, line: 46, flags: DIFlagFwdDecl)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "map_redirect", scope: !5656, file: !384, line: 146, baseType: !6078, size: 64, offset: 2240)
!6078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6079, size: 64)
!6079 = !DISubroutineType(types: !6080)
!6080 = !{!1037, !5650, !482, !482}
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "map_meta_equal", scope: !5656, file: !384, line: 157, baseType: !6082, size: 64, offset: 2304)
!6082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6083, size: 64)
!6083 = !DISubroutineType(types: !6084)
!6084 = !{!804, !6028, !6028}
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "map_set_for_each_callback_args", scope: !5656, file: !384, line: 161, baseType: !6086, size: 64, offset: 2368)
!6086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6087, size: 64)
!6087 = !DISubroutineType(types: !6088)
!6088 = !{!25, !6089, !6091, !6091}
!6089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6090, size: 64)
!6090 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_verifier_env", file: !384, line: 33, flags: DIFlagFwdDecl)
!6091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6092, size: 64)
!6092 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_func_state", file: !384, line: 51, flags: DIFlagFwdDecl)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "map_for_each_callback", scope: !5656, file: !384, line: 164, baseType: !6094, size: 64, offset: 2432)
!6094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6095, size: 64)
!6095 = !DISubroutineType(types: !6096)
!6096 = !{!1037, !5650, !6097, !23, !482}
!6097 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_callback_t", file: !384, line: 61, baseType: !6098)
!6098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6099, size: 64)
!6099 = !DISubroutineType(types: !6100)
!6100 = !{!482, !482, !482, !482, !482, !482}
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "map_mem_usage", scope: !5656, file: !384, line: 168, baseType: !6102, size: 64, offset: 2496)
!6102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6103, size: 64)
!6103 = !DISubroutineType(types: !6104)
!6104 = !{!482, !6028}
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "map_btf_id", scope: !5656, file: !384, line: 171, baseType: !2498, size: 64, offset: 2560)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "iter_seq_info", scope: !5656, file: !384, line: 174, baseType: !6107, size: 64, offset: 2624)
!6107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6108, size: 64)
!6108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6109)
!6109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_iter_seq_info", file: !384, line: 67, size: 256, elements: !6110)
!6110 = !{!6111, !6112, !6119, !6121}
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "seq_ops", scope: !6109, file: !384, line: 68, baseType: !559, size: 64)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "init_seq_private", scope: !6109, file: !384, line: 69, baseType: !6113, size: 64, offset: 64)
!6113 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_iter_init_seq_priv_t", file: !384, line: 62, baseType: !6114)
!6114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6115, size: 64)
!6115 = !DISubroutineType(types: !6116)
!6116 = !{!25, !23, !6117}
!6117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6118, size: 64)
!6118 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_iter_aux_info", file: !384, line: 45, flags: DIFlagFwdDecl)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "fini_seq_private", scope: !6109, file: !384, line: 70, baseType: !6120, size: 64, offset: 128)
!6120 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_iter_fini_seq_priv_t", file: !384, line: 64, baseType: !1144)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "seq_priv_size", scope: !6109, file: !384, line: 71, baseType: !768, size: 32, offset: 192)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "inner_map_meta", scope: !5651, file: !384, line: 252, baseType: !5650, size: 64, offset: 64)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !5651, file: !384, line: 254, baseType: !23, size: 64, offset: 128)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "map_type", scope: !5651, file: !384, line: 256, baseType: !414, size: 32, offset: 192)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !5651, file: !384, line: 257, baseType: !768, size: 32, offset: 224)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "value_size", scope: !5651, file: !384, line: 258, baseType: !768, size: 32, offset: 256)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !5651, file: !384, line: 259, baseType: !768, size: 32, offset: 288)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "map_extra", scope: !5651, file: !384, line: 260, baseType: !482, size: 64, offset: 320)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "map_flags", scope: !5651, file: !384, line: 261, baseType: !768, size: 32, offset: 384)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5651, file: !384, line: 262, baseType: !768, size: 32, offset: 416)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "record", scope: !5651, file: !384, line: 263, baseType: !6132, size: 64, offset: 448)
!6132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6133, size: 64)
!6133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btf_record", file: !384, line: 226, size: 192, elements: !6134)
!6134 = !{!6135, !6136, !6137, !6138, !6139, !6140}
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "cnt", scope: !6133, file: !384, line: 227, baseType: !768, size: 32)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "field_mask", scope: !6133, file: !384, line: 228, baseType: !768, size: 32, offset: 32)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock_off", scope: !6133, file: !384, line: 229, baseType: !25, size: 32, offset: 64)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "timer_off", scope: !6133, file: !384, line: 230, baseType: !25, size: 32, offset: 96)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "refcount_off", scope: !6133, file: !384, line: 231, baseType: !25, size: 32, offset: 128)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !6133, file: !384, line: 232, baseType: !6141, offset: 192)
!6141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6142, elements: !673)
!6142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btf_field", file: !384, line: 216, size: 384, elements: !6143)
!6143 = !{!6144, !6145, !6146, !6147}
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !6142, file: !384, line: 217, baseType: !768, size: 32)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6142, file: !384, line: 218, baseType: !768, size: 32, offset: 32)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6142, file: !384, line: 219, baseType: !450, size: 32, offset: 64)
!6147 = !DIDerivedType(tag: DW_TAG_member, scope: !6142, file: !384, line: 220, baseType: !6148, size: 256, offset: 128)
!6148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6142, file: !384, line: 220, size: 256, elements: !6149)
!6149 = !{!6150, !6158}
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "kptr", scope: !6148, file: !384, line: 221, baseType: !6151, size: 256)
!6151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btf_field_kptr", file: !384, line: 199, size: 256, elements: !6152)
!6152 = !{!6153, !6154, !6155, !6157}
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "btf", scope: !6151, file: !384, line: 200, baseType: !5538, size: 64)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !6151, file: !384, line: 201, baseType: !1414, size: 64, offset: 64)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "dtor", scope: !6151, file: !384, line: 205, baseType: !6156, size: 64, offset: 128)
!6156 = !DIDerivedType(tag: DW_TAG_typedef, name: "btf_dtor_kfunc_t", file: !384, line: 197, baseType: !1144)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "btf_id", scope: !6151, file: !384, line: 206, baseType: !768, size: 32, offset: 192)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "graph_root", scope: !6148, file: !384, line: 222, baseType: !6159, size: 192)
!6159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btf_field_graph_root", file: !384, line: 209, size: 192, elements: !6160)
!6160 = !{!6161, !6162, !6163, !6164}
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "btf", scope: !6159, file: !384, line: 210, baseType: !5538, size: 64)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "value_btf_id", scope: !6159, file: !384, line: 211, baseType: !768, size: 32, offset: 64)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "node_offset", scope: !6159, file: !384, line: 212, baseType: !768, size: 32, offset: 96)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "value_rec", scope: !6159, file: !384, line: 213, baseType: !6132, size: 64, offset: 128)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !5651, file: !384, line: 264, baseType: !25, size: 32, offset: 512)
!6166 = !DIDerivedType(tag: DW_TAG_member, name: "btf_key_type_id", scope: !5651, file: !384, line: 265, baseType: !768, size: 32, offset: 544)
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "btf_value_type_id", scope: !5651, file: !384, line: 266, baseType: !768, size: 32, offset: 576)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "btf_vmlinux_value_type_id", scope: !5651, file: !384, line: 267, baseType: !768, size: 32, offset: 608)
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "btf", scope: !5651, file: !384, line: 268, baseType: !5538, size: 64, offset: 640)
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5651, file: !384, line: 272, baseType: !3985, size: 128, offset: 704)
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5651, file: !384, line: 276, baseType: !545, size: 64, align: 512, offset: 1024)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "usercnt", scope: !5651, file: !384, line: 277, baseType: !545, size: 64, offset: 1088)
!6173 = !DIDerivedType(tag: DW_TAG_member, scope: !5651, file: !384, line: 279, baseType: !6174, size: 256, offset: 1152)
!6174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5651, file: !384, line: 279, size: 256, elements: !6175)
!6175 = !{!6176, !6177}
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !6174, file: !384, line: 280, baseType: !936, size: 256)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !6174, file: !384, line: 281, baseType: !595, size: 128, align: 64)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_mutex", scope: !5651, file: !384, line: 283, baseType: !539, size: 256, offset: 1408)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "writecnt", scope: !5651, file: !384, line: 284, baseType: !545, size: 64, offset: 1664)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5651, file: !384, line: 296, baseType: !6181, size: 192, offset: 1728)
!6181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5651, file: !384, line: 290, size: 192, elements: !6182)
!6182 = !{!6183, !6184, !6185, !6186, !6187}
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "attach_func_proto", scope: !6181, file: !384, line: 291, baseType: !5619, size: 64)
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6181, file: !384, line: 292, baseType: !62, size: 32, offset: 64)
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6181, file: !384, line: 293, baseType: !295, size: 32, offset: 96)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "jited", scope: !6181, file: !384, line: 294, baseType: !804, size: 8, offset: 128)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "xdp_has_frags", scope: !6181, file: !384, line: 295, baseType: !804, size: 8, offset: 136)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "bypass_spec_v1", scope: !5651, file: !384, line: 297, baseType: !804, size: 8, offset: 1920)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !5651, file: !384, line: 298, baseType: !804, size: 8, offset: 1928)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "free_after_mult_rcu_gp", scope: !5651, file: !384, line: 299, baseType: !804, size: 8, offset: 1936)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "free_after_rcu_gp", scope: !5651, file: !384, line: 300, baseType: !804, size: 8, offset: 1944)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "sleepable_refcnt", scope: !5651, file: !384, line: 301, baseType: !545, size: 64, offset: 1984)
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "elem_count", scope: !5651, file: !384, line: 302, baseType: !6194, size: 64, offset: 2048)
!6194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5647, file: !384, line: 1380, baseType: !768, size: 32, offset: 64)
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "tailcall_target_stable", scope: !5637, file: !384, line: 1383, baseType: !804, size: 8, offset: 384)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "adj_off", scope: !5637, file: !384, line: 1384, baseType: !86, size: 8, offset: 392)
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !5637, file: !384, line: 1385, baseType: !96, size: 16, offset: 400)
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "insn_idx", scope: !5637, file: !384, line: 1386, baseType: !768, size: 32, offset: 416)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "kfunc_tab", scope: !5521, file: !384, line: 1440, baseType: !6201, size: 64, offset: 1472)
!6201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6202, size: 64)
!6202 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_kfunc_desc_tab", file: !384, line: 1401, flags: DIFlagFwdDecl)
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "kfunc_btf_tab", scope: !5521, file: !384, line: 1441, baseType: !6204, size: 64, offset: 1536)
!6204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6205, size: 64)
!6205 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_kfunc_btf_tab", file: !384, line: 1441, flags: DIFlagFwdDecl)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "size_poke_tab", scope: !5521, file: !384, line: 1442, baseType: !768, size: 32, offset: 1600)
!6207 = !DIDerivedType(tag: DW_TAG_member, name: "ksym", scope: !5521, file: !384, line: 1443, baseType: !5588, size: 4800, offset: 1664)
!6208 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5521, file: !384, line: 1444, baseType: !6209, size: 64, offset: 6464)
!6209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6210, size: 64)
!6210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6211)
!6211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_ops", file: !384, line: 939, size: 64, elements: !6212)
!6212 = !{!6213}
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "test_run", scope: !6211, file: !384, line: 940, baseType: !6214, size: 64)
!6214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6215, size: 64)
!6215 = !DISubroutineType(types: !6216)
!6216 = !{!25, !5550, !5972, !5662}
!6217 = !DIDerivedType(tag: DW_TAG_member, name: "used_maps", scope: !5521, file: !384, line: 1445, baseType: !6218, size: 64, offset: 6528)
!6218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5650, size: 64)
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "used_maps_mutex", scope: !5521, file: !384, line: 1446, baseType: !539, size: 256, offset: 6592)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "used_btfs", scope: !5521, file: !384, line: 1447, baseType: !6221, size: 64, offset: 6848)
!6221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6222, size: 64)
!6222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btf_mod_pair", file: !384, line: 1396, size: 128, elements: !6223)
!6223 = !{!6224, !6225}
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "btf", scope: !6222, file: !384, line: 1397, baseType: !5538, size: 64)
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !6222, file: !384, line: 1398, baseType: !1414, size: 64, offset: 64)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "prog", scope: !5521, file: !384, line: 1448, baseType: !5550, size: 64, offset: 6912)
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !5521, file: !384, line: 1449, baseType: !856, size: 64, offset: 6976)
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "load_time", scope: !5521, file: !384, line: 1450, baseType: !482, size: 64, offset: 7040)
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "verified_insns", scope: !5521, file: !384, line: 1451, baseType: !768, size: 32, offset: 7104)
!6230 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_atype", scope: !5521, file: !384, line: 1452, baseType: !25, size: 32, offset: 7136)
!6231 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_storage", scope: !5521, file: !384, line: 1453, baseType: !6232, size: 128, offset: 7168)
!6232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5650, size: 128, elements: !2488)
!6233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5521, file: !384, line: 1454, baseType: !3985, size: 128, offset: 7296)
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !5521, file: !384, line: 1456, baseType: !23, size: 64, offset: 7424)
!6235 = !DIDerivedType(tag: DW_TAG_member, name: "offload", scope: !5521, file: !384, line: 1458, baseType: !6236, size: 64, offset: 7488)
!6236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6237, size: 64)
!6237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_offload", file: !384, line: 985, size: 576, elements: !6238)
!6238 = !{!6239, !6240, !6243, !6246, !6247, !6248, !6249, !6250, !6251}
!6239 = !DIDerivedType(tag: DW_TAG_member, name: "prog", scope: !6237, file: !384, line: 986, baseType: !5550, size: 64)
!6240 = !DIDerivedType(tag: DW_TAG_member, name: "netdev", scope: !6237, file: !384, line: 987, baseType: !6241, size: 64, offset: 64)
!6241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6242, size: 64)
!6242 = !DICompositeType(tag: DW_TAG_structure_type, name: "net_device", file: !384, line: 543, flags: DIFlagFwdDecl)
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "offdev", scope: !6237, file: !384, line: 988, baseType: !6244, size: 64, offset: 128)
!6244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6245, size: 64)
!6245 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_offload_dev", file: !384, line: 528, flags: DIFlagFwdDecl)
!6246 = !DIDerivedType(tag: DW_TAG_member, name: "dev_priv", scope: !6237, file: !384, line: 989, baseType: !23, size: 64, offset: 192)
!6247 = !DIDerivedType(tag: DW_TAG_member, name: "offloads", scope: !6237, file: !384, line: 990, baseType: !100, size: 128, offset: 256)
!6248 = !DIDerivedType(tag: DW_TAG_member, name: "dev_state", scope: !6237, file: !384, line: 991, baseType: !804, size: 8, offset: 384)
!6249 = !DIDerivedType(tag: DW_TAG_member, name: "opt_failed", scope: !6237, file: !384, line: 992, baseType: !804, size: 8, offset: 392)
!6250 = !DIDerivedType(tag: DW_TAG_member, name: "jited_image", scope: !6237, file: !384, line: 993, baseType: !23, size: 64, offset: 448)
!6251 = !DIDerivedType(tag: DW_TAG_member, name: "jited_len", scope: !6237, file: !384, line: 994, baseType: !768, size: 32, offset: 512)
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "btf", scope: !5521, file: !384, line: 1459, baseType: !5538, size: 64, offset: 7552)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "func_info", scope: !5521, file: !384, line: 1460, baseType: !6254, size: 64, offset: 7616)
!6254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6255, size: 64)
!6255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_func_info", file: !296, line: 7128, size: 64, elements: !6256)
!6256 = !{!6257, !6258}
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "insn_off", scope: !6255, file: !296, line: 7129, baseType: !769, size: 32)
!6258 = !DIDerivedType(tag: DW_TAG_member, name: "type_id", scope: !6255, file: !296, line: 7130, baseType: !769, size: 32, offset: 32)
!6259 = !DIDerivedType(tag: DW_TAG_member, name: "func_info_aux", scope: !5521, file: !384, line: 1461, baseType: !6260, size: 64, offset: 7680)
!6260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6261, size: 64)
!6261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_func_info_aux", file: !384, line: 1362, size: 32, elements: !6262)
!6262 = !{!6263, !6264}
!6263 = !DIDerivedType(tag: DW_TAG_member, name: "linkage", scope: !6261, file: !384, line: 1363, baseType: !96, size: 16)
!6264 = !DIDerivedType(tag: DW_TAG_member, name: "unreliable", scope: !6261, file: !384, line: 1364, baseType: !804, size: 8, offset: 16)
!6265 = !DIDerivedType(tag: DW_TAG_member, name: "linfo", scope: !5521, file: !384, line: 1468, baseType: !6266, size: 64, offset: 7744)
!6266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6267, size: 64)
!6267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_line_info", file: !296, line: 7136, size: 128, elements: !6268)
!6268 = !{!6269, !6270, !6271, !6272}
!6269 = !DIDerivedType(tag: DW_TAG_member, name: "insn_off", scope: !6267, file: !296, line: 7137, baseType: !769, size: 32)
!6270 = !DIDerivedType(tag: DW_TAG_member, name: "file_name_off", scope: !6267, file: !296, line: 7138, baseType: !769, size: 32, offset: 32)
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "line_off", scope: !6267, file: !296, line: 7139, baseType: !769, size: 32, offset: 64)
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "line_col", scope: !6267, file: !296, line: 7140, baseType: !769, size: 32, offset: 96)
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "jited_linfo", scope: !5521, file: !384, line: 1476, baseType: !2106, size: 64, offset: 7808)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "func_info_cnt", scope: !5521, file: !384, line: 1477, baseType: !768, size: 32, offset: 7872)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_linfo", scope: !5521, file: !384, line: 1478, baseType: !768, size: 32, offset: 7904)
!6276 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_idx", scope: !5521, file: !384, line: 1483, baseType: !768, size: 32, offset: 7936)
!6277 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5521, file: !384, line: 1484, baseType: !1414, size: 64, offset: 8000)
!6278 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !5521, file: !384, line: 1485, baseType: !768, size: 32, offset: 8064)
!6279 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !5521, file: !384, line: 1486, baseType: !2461, size: 64, offset: 8128)
!6280 = !DIDerivedType(tag: DW_TAG_member, scope: !5521, file: !384, line: 1487, baseType: !6281, size: 256, offset: 8192)
!6281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5521, file: !384, line: 1487, size: 256, elements: !6282)
!6282 = !{!6283, !6284}
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !6281, file: !384, line: 1488, baseType: !936, size: 256)
!6284 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !6281, file: !384, line: 1489, baseType: !595, size: 128, align: 64)
!6285 = !DIDerivedType(tag: DW_TAG_member, name: "orig_prog", scope: !5479, file: !384, line: 1519, baseType: !6286, size: 64, offset: 512)
!6286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6287, size: 64)
!6287 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock_fprog_kern", file: !384, line: 1519, flags: DIFlagFwdDecl)
!6288 = !DIDerivedType(tag: DW_TAG_member, scope: !5479, file: !384, line: 1521, baseType: !6289, offset: 576)
!6289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5479, file: !384, line: 1521, elements: !6290)
!6290 = !{!6291, !6305}
!6291 = !DIDerivedType(tag: DW_TAG_member, scope: !6289, file: !384, line: 1522, baseType: !6292)
!6292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6289, file: !384, line: 1522, elements: !6293)
!6293 = !{!6294, !6296}
!6294 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_insns", scope: !6292, file: !384, line: 1522, baseType: !6295)
!6295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6292, file: !384, line: 1522, elements: !473)
!6296 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !6292, file: !384, line: 1522, baseType: !6297)
!6297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6298, elements: !673)
!6298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sock_filter", file: !6299, line: 24, size: 64, elements: !6300)
!6299 = !DIFile(filename: "./include/uapi/linux/filter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36f274a0dd5733c26f3d71e3ea762878")
!6300 = !{!6301, !6302, !6303, !6304}
!6301 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !6298, file: !6299, line: 25, baseType: !97, size: 16)
!6302 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !6298, file: !6299, line: 26, baseType: !88, size: 8, offset: 16)
!6303 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !6298, file: !6299, line: 27, baseType: !88, size: 8, offset: 24)
!6304 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !6298, file: !6299, line: 28, baseType: !769, size: 32, offset: 32)
!6305 = !DIDerivedType(tag: DW_TAG_member, scope: !6289, file: !384, line: 1523, baseType: !6306)
!6306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6289, file: !384, line: 1523, elements: !6307)
!6307 = !{!6308, !6310}
!6308 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_insnsi", scope: !6306, file: !384, line: 1523, baseType: !6309)
!6309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6306, file: !384, line: 1523, elements: !473)
!6310 = !DIDerivedType(tag: DW_TAG_member, name: "insnsi", scope: !6306, file: !384, line: 1523, baseType: !6311)
!6311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5512, elements: !673)
!6312 = !DIGlobalVariableExpression(var: !6313, expr: !DIExpression())
!6313 = distinct !DIGlobalVariable(name: "bpf_rstat_kfunc_ids", scope: !2, file: !3, line: 525, type: !5461, isLocal: true, isDefinition: true)
!6314 = !{!"rsp"}
!6315 = !{i32 7, !"Dwarf Version", i32 5}
!6316 = !{i32 2, !"Debug Info Version", i32 3}
!6317 = !{i32 1, !"wchar_size", i32 2}
!6318 = !{i32 8, !"cf-protection-branch", i32 1}
!6319 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6320 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6321 = !{i32 1, !"Code Model", i32 2}
!6322 = !{i32 1, !"override-stack-alignment", i32 8}
!6323 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6324 = distinct !DISubprogram(name: "cgroup_rstat_updated", scope: !3, file: !3, line: 29, type: !6325, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6327)
!6325 = !DISubroutineType(types: !6326)
!6326 = !{null, !491, !25}
!6327 = !{!6328, !6329, !6330, !6331, !6334, !6336, !6337, !6340, !6343, !6344, !6346, !6347, !6348, !6351}
!6328 = !DILocalVariable(name: "cgrp", arg: 1, scope: !6324, file: !3, line: 29, type: !491)
!6329 = !DILocalVariable(name: "cpu", arg: 2, scope: !6324, file: !3, line: 29, type: !25)
!6330 = !DILocalVariable(name: "cpu_lock", scope: !6324, file: !3, line: 31, type: !464)
!6331 = !DILocalVariable(name: "__vpp_verify", scope: !6332, file: !3, line: 31, type: !1793)
!6332 = distinct !DILexicalBlock(scope: !6333, file: !3, line: 31, column: 29)
!6333 = distinct !DILexicalBlock(scope: !6324, file: !3, line: 31, column: 29)
!6334 = !DILocalVariable(name: "__ptr", scope: !6335, file: !3, line: 31, type: !42)
!6335 = distinct !DILexicalBlock(scope: !6333, file: !3, line: 31, column: 29)
!6336 = !DILocalVariable(name: "flags", scope: !6324, file: !3, line: 32, type: !42)
!6337 = !DILocalVariable(name: "__v", scope: !6338, file: !3, line: 42, type: !491)
!6338 = distinct !DILexicalBlock(scope: !6339, file: !3, line: 42, column: 6)
!6339 = distinct !DILexicalBlock(scope: !6324, file: !3, line: 42, column: 6)
!6340 = !DILocalVariable(name: "__dummy", scope: !6341, file: !3, line: 45, type: !42)
!6341 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 45, column: 2)
!6342 = distinct !DILexicalBlock(scope: !6324, file: !3, line: 45, column: 2)
!6343 = !DILocalVariable(name: "__dummy2", scope: !6341, file: !3, line: 45, type: !42)
!6344 = !DILocalVariable(name: "rstatc", scope: !6345, file: !3, line: 49, type: !466)
!6345 = distinct !DILexicalBlock(scope: !6324, file: !3, line: 48, column: 15)
!6346 = !DILocalVariable(name: "parent", scope: !6345, file: !3, line: 50, type: !491)
!6347 = !DILocalVariable(name: "prstatc", scope: !6345, file: !3, line: 51, type: !466)
!6348 = !DILocalVariable(name: "__dummy", scope: !6349, file: !3, line: 73, type: !42)
!6349 = distinct !DILexicalBlock(scope: !6350, file: !3, line: 73, column: 2)
!6350 = distinct !DILexicalBlock(scope: !6324, file: !3, line: 73, column: 2)
!6351 = !DILocalVariable(name: "__dummy2", scope: !6349, file: !3, line: 73, type: !42)
!6352 = !DILocation(line: 29, column: 54, scope: !6324)
!6353 = !DILocation(line: 29, column: 64, scope: !6324)
!6354 = !DILocation(line: 31, column: 2, scope: !6324)
!6355 = !DILocation(line: 31, column: 18, scope: !6324)
!6356 = !DILocation(line: 31, column: 29, scope: !6333)
!6357 = !DILocation(line: 31, column: 29, scope: !6332)
!6358 = !DILocation(line: 31, column: 29, scope: !6335)
!6359 = !DILocation(line: 32, column: 2, scope: !6324)
!6360 = !DILocation(line: 32, column: 16, scope: !6324)
!6361 = !DILocation(line: 42, column: 6, scope: !6338)
!6362 = !DILocation(line: 42, column: 6, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6338, file: !3, line: 42, column: 6)
!6364 = !DILocation(line: 42, column: 6, scope: !6339)
!6365 = !DILocation(line: 42, column: 6, scope: !6324)
!6366 = !DILocation(line: 43, column: 3, scope: !6339)
!6367 = !DILocation(line: 45, column: 2, scope: !6324)
!6368 = !DILocation(line: 45, column: 2, scope: !6341)
!6369 = !DILocation(line: 45, column: 2, scope: !6342)
!6370 = !DILocation(line: 48, column: 2, scope: !6324)
!6371 = !DILocation(line: 49, column: 3, scope: !6345)
!6372 = !DILocation(line: 49, column: 28, scope: !6345)
!6373 = !DILocation(line: 49, column: 54, scope: !6345)
!6374 = !DILocation(line: 49, column: 60, scope: !6345)
!6375 = !DILocation(line: 49, column: 37, scope: !6345)
!6376 = !DILocation(line: 50, column: 3, scope: !6345)
!6377 = !DILocation(line: 50, column: 18, scope: !6345)
!6378 = !DILocation(line: 50, column: 41, scope: !6345)
!6379 = !DILocation(line: 50, column: 27, scope: !6345)
!6380 = !DILocation(line: 51, column: 3, scope: !6345)
!6381 = !DILocation(line: 51, column: 28, scope: !6345)
!6382 = !DILocation(line: 57, column: 7, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !6345, file: !3, line: 57, column: 7)
!6384 = !DILocation(line: 57, column: 15, scope: !6383)
!6385 = !DILocation(line: 57, column: 7, scope: !6345)
!6386 = !DILocation(line: 58, column: 4, scope: !6383)
!6387 = !DILocation(line: 61, column: 8, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6345, file: !3, line: 61, column: 7)
!6389 = !DILocation(line: 61, column: 7, scope: !6345)
!6390 = !DILocation(line: 62, column: 27, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6388, file: !3, line: 61, column: 16)
!6392 = !DILocation(line: 62, column: 4, scope: !6391)
!6393 = !DILocation(line: 62, column: 12, scope: !6391)
!6394 = !DILocation(line: 62, column: 25, scope: !6391)
!6395 = !DILocation(line: 63, column: 4, scope: !6391)
!6396 = !DILocation(line: 66, column: 30, scope: !6345)
!6397 = !DILocation(line: 66, column: 38, scope: !6345)
!6398 = !DILocation(line: 66, column: 13, scope: !6345)
!6399 = !DILocation(line: 66, column: 11, scope: !6345)
!6400 = !DILocation(line: 67, column: 26, scope: !6345)
!6401 = !DILocation(line: 67, column: 35, scope: !6345)
!6402 = !DILocation(line: 67, column: 3, scope: !6345)
!6403 = !DILocation(line: 67, column: 11, scope: !6345)
!6404 = !DILocation(line: 67, column: 24, scope: !6345)
!6405 = !DILocation(line: 68, column: 31, scope: !6345)
!6406 = !DILocation(line: 68, column: 3, scope: !6345)
!6407 = !DILocation(line: 68, column: 12, scope: !6345)
!6408 = !DILocation(line: 68, column: 29, scope: !6345)
!6409 = !DILocation(line: 70, column: 10, scope: !6345)
!6410 = !DILocation(line: 70, column: 8, scope: !6345)
!6411 = !DILocation(line: 71, column: 2, scope: !6324)
!6412 = distinct !{!6412, !6370, !6411, !6413}
!6413 = !{!"llvm.loop.unroll.disable"}
!6414 = !DILocation(line: 73, column: 2, scope: !6324)
!6415 = !DILocation(line: 73, column: 2, scope: !6349)
!6416 = !DILocation(line: 73, column: 2, scope: !6350)
!6417 = !DILocation(line: 74, column: 1, scope: !6324)
!6418 = distinct !DISubprogram(name: "__kcsan_disable_current", scope: !6419, file: !6419, line: 232, type: !2702, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6419 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6420 = !DILocation(line: 232, column: 52, scope: !6418)
!6421 = distinct !DISubprogram(name: "cgroup_rstat_cpu", scope: !3, file: !3, line: 15, type: !6422, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6424)
!6422 = !DISubroutineType(types: !6423)
!6423 = !{!466, !491, !25}
!6424 = !{!6425, !6426, !6427, !6430}
!6425 = !DILocalVariable(name: "cgrp", arg: 1, scope: !6421, file: !3, line: 15, type: !491)
!6426 = !DILocalVariable(name: "cpu", arg: 2, scope: !6421, file: !3, line: 15, type: !25)
!6427 = !DILocalVariable(name: "__vpp_verify", scope: !6428, file: !3, line: 17, type: !1793)
!6428 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 17, column: 9)
!6429 = distinct !DILexicalBlock(scope: !6421, file: !3, line: 17, column: 9)
!6430 = !DILocalVariable(name: "__ptr", scope: !6431, file: !3, line: 17, type: !42)
!6431 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 17, column: 9)
!6432 = !DILocation(line: 15, column: 65, scope: !6421)
!6433 = !DILocation(line: 15, column: 75, scope: !6421)
!6434 = !DILocation(line: 17, column: 9, scope: !6429)
!6435 = !DILocation(line: 17, column: 9, scope: !6428)
!6436 = !DILocation(line: 17, column: 9, scope: !6431)
!6437 = !DILocation(line: 17, column: 2, scope: !6421)
!6438 = distinct !DISubprogram(name: "__kcsan_enable_current", scope: !6419, file: !6419, line: 231, type: !2702, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6439 = !DILocation(line: 231, column: 52, scope: !6438)
!6440 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6441, file: !6441, line: 32, type: !6442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6441 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6442 = !DISubroutineType(types: !6443)
!6443 = !{!42, !464}
!6444 = distinct !DISubprogram(name: "cgroup_parent", scope: !4036, file: !4036, line: 495, type: !6445, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6447)
!6445 = !DISubroutineType(types: !6446)
!6446 = !{!491, !491}
!6447 = !{!6448, !6449, !6450}
!6448 = !DILocalVariable(name: "cgrp", arg: 1, scope: !6444, file: !4036, line: 495, type: !491)
!6449 = !DILocalVariable(name: "parent_css", scope: !6444, file: !4036, line: 497, type: !506)
!6450 = !DILocalVariable(name: "__mptr", scope: !6451, file: !4036, line: 500, type: !23)
!6451 = distinct !DILexicalBlock(scope: !6452, file: !4036, line: 500, column: 10)
!6452 = distinct !DILexicalBlock(scope: !6444, file: !4036, line: 499, column: 6)
!6453 = !DILocation(line: 495, column: 59, scope: !6444)
!6454 = !DILocation(line: 497, column: 2, scope: !6444)
!6455 = !DILocation(line: 497, column: 30, scope: !6444)
!6456 = !DILocation(line: 497, column: 43, scope: !6444)
!6457 = !DILocation(line: 497, column: 49, scope: !6444)
!6458 = !DILocation(line: 497, column: 54, scope: !6444)
!6459 = !DILocation(line: 499, column: 6, scope: !6452)
!6460 = !DILocation(line: 499, column: 6, scope: !6444)
!6461 = !DILocation(line: 500, column: 10, scope: !6451)
!6462 = !DILocation(line: 500, column: 10, scope: !6452)
!6463 = !DILocation(line: 500, column: 3, scope: !6452)
!6464 = !DILocation(line: 501, column: 2, scope: !6444)
!6465 = !DILocation(line: 502, column: 1, scope: !6444)
!6466 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6441, file: !6441, line: 43, type: !6467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6467 = !DISubroutineType(types: !6468)
!6468 = !{null, !464, !42}
!6469 = distinct !DISubprogram(name: "bpf_rstat_flush", scope: !3, file: !3, line: 166, type: !6470, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6472)
!6470 = !DISubroutineType(types: !6471)
!6471 = !{null, !491, !491, !25}
!6472 = !{!6473, !6474, !6475}
!6473 = !DILocalVariable(name: "cgrp", arg: 1, scope: !6469, file: !3, line: 166, type: !491)
!6474 = !DILocalVariable(name: "parent", arg: 2, scope: !6469, file: !3, line: 167, type: !491)
!6475 = !DILocalVariable(name: "cpu", arg: 3, scope: !6469, file: !3, line: 167, type: !25)
!6476 = !DILocation(line: 166, column: 53, scope: !6469)
!6477 = !DILocation(line: 167, column: 25, scope: !6469)
!6478 = !DILocation(line: 167, column: 37, scope: !6469)
!6479 = !DILocation(line: 169, column: 1, scope: !6469)
!6480 = distinct !DISubprogram(name: "cgroup_rstat_flush", scope: !3, file: !3, line: 233, type: !6481, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6483)
!6481 = !DISubroutineType(types: !6482)
!6482 = !{null, !491}
!6483 = !{!6484}
!6484 = !DILocalVariable(name: "cgrp", arg: 1, scope: !6480, file: !3, line: 233, type: !491)
!6485 = !DILocation(line: 233, column: 52, scope: !6480)
!6486 = !DILocation(line: 235, column: 2, scope: !6480)
!6487 = !DILocation(line: 235, column: 2, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 235, column: 2)
!6489 = !DILocation(line: 237, column: 2, scope: !6480)
!6490 = !DILocation(line: 238, column: 28, scope: !6480)
!6491 = !DILocation(line: 238, column: 2, scope: !6480)
!6492 = !DILocation(line: 239, column: 2, scope: !6480)
!6493 = !DILocation(line: 240, column: 1, scope: !6480)
!6494 = !DILocation(line: 112, column: 2, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !5426, file: !5427, line: 112, column: 2)
!6496 = !DILocation(line: 112, column: 2, scope: !5426)
!6497 = !DILocation(line: 113, column: 1, scope: !5426)
!6498 = distinct !DISubprogram(name: "spin_lock_irq", scope: !6499, file: !6499, line: 374, type: !6500, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6502)
!6499 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6500 = !DISubroutineType(types: !6501)
!6501 = !{null, !1964}
!6502 = !{!6503}
!6503 = !DILocalVariable(name: "lock", arg: 1, scope: !6498, file: !6499, line: 374, type: !1964)
!6504 = !DILocation(line: 374, column: 55, scope: !6498)
!6505 = !DILocation(line: 376, column: 2, scope: !6498)
!6506 = !DILocation(line: 377, column: 1, scope: !6498)
!6507 = distinct !DISubprogram(name: "cgroup_rstat_flush_locked", scope: !3, file: !3, line: 174, type: !6481, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6508)
!6508 = !{!6509, !6510, !6511, !6515, !6518, !6520, !6521, !6522, !6525, !6526, !6528, !6531, !6534, !6537}
!6509 = !DILocalVariable(name: "cgrp", arg: 1, scope: !6507, file: !3, line: 174, type: !491)
!6510 = !DILocalVariable(name: "cpu", scope: !6507, file: !3, line: 177, type: !25)
!6511 = !DILocalVariable(name: "cpu_lock", scope: !6512, file: !3, line: 182, type: !464)
!6512 = distinct !DILexicalBlock(scope: !6513, file: !3, line: 181, column: 29)
!6513 = distinct !DILexicalBlock(scope: !6514, file: !3, line: 181, column: 2)
!6514 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 181, column: 2)
!6515 = !DILocalVariable(name: "__vpp_verify", scope: !6516, file: !3, line: 182, type: !1793)
!6516 = distinct !DILexicalBlock(scope: !6517, file: !3, line: 182, column: 30)
!6517 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 182, column: 30)
!6518 = !DILocalVariable(name: "__ptr", scope: !6519, file: !3, line: 182, type: !42)
!6519 = distinct !DILexicalBlock(scope: !6517, file: !3, line: 182, column: 30)
!6520 = !DILocalVariable(name: "pos", scope: !6512, file: !3, line: 184, type: !491)
!6521 = !DILocalVariable(name: "flags", scope: !6512, file: !3, line: 185, type: !42)
!6522 = !DILocalVariable(name: "__dummy", scope: !6523, file: !3, line: 195, type: !42)
!6523 = distinct !DILexicalBlock(scope: !6524, file: !3, line: 195, column: 3)
!6524 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 195, column: 3)
!6525 = !DILocalVariable(name: "__dummy2", scope: !6523, file: !3, line: 195, type: !42)
!6526 = !DILocalVariable(name: "css", scope: !6527, file: !3, line: 197, type: !506)
!6527 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 196, column: 64)
!6528 = !DILocalVariable(name: "__mptr", scope: !6529, file: !3, line: 203, type: !23)
!6529 = distinct !DILexicalBlock(scope: !6530, file: !3, line: 203, column: 4)
!6530 = distinct !DILexicalBlock(scope: !6527, file: !3, line: 203, column: 4)
!6531 = !DILocalVariable(name: "__mptr", scope: !6532, file: !3, line: 203, type: !23)
!6532 = distinct !DILexicalBlock(scope: !6533, file: !3, line: 203, column: 4)
!6533 = distinct !DILexicalBlock(scope: !6530, file: !3, line: 203, column: 4)
!6534 = !DILocalVariable(name: "__dummy", scope: !6535, file: !3, line: 208, type: !42)
!6535 = distinct !DILexicalBlock(scope: !6536, file: !3, line: 208, column: 3)
!6536 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 208, column: 3)
!6537 = !DILocalVariable(name: "__dummy2", scope: !6535, file: !3, line: 208, type: !42)
!6538 = !DILocation(line: 174, column: 54, scope: !6507)
!6539 = !DILocation(line: 177, column: 2, scope: !6507)
!6540 = !DILocation(line: 177, column: 6, scope: !6507)
!6541 = !DILocation(line: 179, column: 2, scope: !6507)
!6542 = !DILocation(line: 179, column: 2, scope: !6543)
!6543 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 179, column: 2)
!6544 = !DILocation(line: 181, column: 2, scope: !6514)
!6545 = !DILocation(line: 181, column: 2, scope: !6513)
!6546 = !DILocation(line: 182, column: 3, scope: !6512)
!6547 = !DILocation(line: 182, column: 19, scope: !6512)
!6548 = !DILocation(line: 182, column: 30, scope: !6517)
!6549 = !DILocation(line: 182, column: 30, scope: !6516)
!6550 = !DILocation(line: 182, column: 30, scope: !6519)
!6551 = !DILocation(line: 184, column: 3, scope: !6512)
!6552 = !DILocation(line: 184, column: 18, scope: !6512)
!6553 = !DILocation(line: 185, column: 3, scope: !6512)
!6554 = !DILocation(line: 185, column: 17, scope: !6512)
!6555 = !DILocation(line: 195, column: 3, scope: !6512)
!6556 = !DILocation(line: 195, column: 3, scope: !6523)
!6557 = !DILocation(line: 195, column: 3, scope: !6524)
!6558 = !DILocation(line: 196, column: 3, scope: !6512)
!6559 = !DILocation(line: 196, column: 46, scope: !6512)
!6560 = !DILocation(line: 196, column: 51, scope: !6512)
!6561 = !DILocation(line: 196, column: 57, scope: !6512)
!6562 = !DILocation(line: 196, column: 17, scope: !6512)
!6563 = !DILocation(line: 196, column: 15, scope: !6512)
!6564 = !DILocation(line: 197, column: 4, scope: !6527)
!6565 = !DILocation(line: 197, column: 32, scope: !6527)
!6566 = !DILocation(line: 199, column: 27, scope: !6527)
!6567 = !DILocation(line: 199, column: 32, scope: !6527)
!6568 = !DILocation(line: 199, column: 4, scope: !6527)
!6569 = !DILocation(line: 200, column: 20, scope: !6527)
!6570 = !DILocation(line: 200, column: 39, scope: !6527)
!6571 = !DILocation(line: 200, column: 25, scope: !6527)
!6572 = !DILocation(line: 200, column: 45, scope: !6527)
!6573 = !DILocation(line: 200, column: 4, scope: !6527)
!6574 = !DILocation(line: 202, column: 4, scope: !6527)
!6575 = !DILocation(line: 203, column: 4, scope: !6529)
!6576 = !DILocation(line: 203, column: 4, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6529, file: !3, line: 203, column: 4)
!6578 = !DILocation(line: 203, column: 4, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6577, file: !3, line: 203, column: 4)
!6580 = !DILocation(line: 203, column: 4, scope: !6530)
!6581 = !DILocation(line: 203, column: 4, scope: !6533)
!6582 = !DILocation(line: 205, column: 5, scope: !6533)
!6583 = !DILocation(line: 205, column: 10, scope: !6533)
!6584 = !DILocation(line: 205, column: 14, scope: !6533)
!6585 = !DILocation(line: 205, column: 30, scope: !6533)
!6586 = !DILocation(line: 205, column: 35, scope: !6533)
!6587 = !DILocation(line: 203, column: 4, scope: !6532)
!6588 = !DILocation(line: 203, column: 4, scope: !6589)
!6589 = distinct !DILexicalBlock(scope: !6532, file: !3, line: 203, column: 4)
!6590 = !DILocation(line: 203, column: 4, scope: !6591)
!6591 = distinct !DILexicalBlock(scope: !6589, file: !3, line: 203, column: 4)
!6592 = distinct !{!6592, !6580, !6593, !6594, !6413}
!6593 = !DILocation(line: 205, column: 38, scope: !6530)
!6594 = !{!"llvm.loop.mustprogress"}
!6595 = !DILocation(line: 206, column: 4, scope: !6527)
!6596 = !DILocation(line: 207, column: 3, scope: !6512)
!6597 = distinct !{!6597, !6558, !6596, !6594, !6413}
!6598 = !DILocation(line: 208, column: 3, scope: !6512)
!6599 = !DILocation(line: 208, column: 3, scope: !6535)
!6600 = !DILocation(line: 208, column: 3, scope: !6536)
!6601 = !DILocation(line: 211, column: 7, scope: !6602)
!6602 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 211, column: 7)
!6603 = !DILocation(line: 211, column: 22, scope: !6602)
!6604 = !DILocation(line: 211, column: 25, scope: !6602)
!6605 = !DILocation(line: 211, column: 7, scope: !6512)
!6606 = !DILocation(line: 212, column: 4, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6602, file: !3, line: 211, column: 61)
!6608 = !DILocation(line: 213, column: 9, scope: !6609)
!6609 = distinct !DILexicalBlock(scope: !6610, file: !3, line: 213, column: 9)
!6610 = distinct !DILexicalBlock(scope: !6607, file: !3, line: 213, column: 8)
!6611 = !DILocation(line: 213, column: 9, scope: !6610)
!6612 = !DILocation(line: 213, column: 8, scope: !6607)
!6613 = !DILocation(line: 214, column: 5, scope: !6610)
!6614 = !DILocation(line: 215, column: 4, scope: !6607)
!6615 = !DILocation(line: 216, column: 3, scope: !6607)
!6616 = !DILocation(line: 217, column: 2, scope: !6513)
!6617 = !DILocation(line: 217, column: 2, scope: !6512)
!6618 = distinct !{!6618, !6544, !6619, !6594, !6413}
!6619 = !DILocation(line: 217, column: 2, scope: !6514)
!6620 = !DILocation(line: 218, column: 1, scope: !6507)
!6621 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !6499, file: !6499, line: 399, type: !6500, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6622)
!6622 = !{!6623}
!6623 = !DILocalVariable(name: "lock", arg: 1, scope: !6621, file: !6499, line: 399, type: !1964)
!6624 = !DILocation(line: 399, column: 57, scope: !6621)
!6625 = !DILocation(line: 401, column: 2, scope: !6621)
!6626 = !DILocation(line: 402, column: 1, scope: !6621)
!6627 = distinct !DISubprogram(name: "cgroup_rstat_flush_hold", scope: !3, file: !3, line: 251, type: !6481, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6628)
!6628 = !{!6629}
!6629 = !DILocalVariable(name: "cgrp", arg: 1, scope: !6627, file: !3, line: 251, type: !491)
!6630 = !DILocation(line: 251, column: 45, scope: !6627)
!6631 = !DILocation(line: 254, column: 2, scope: !6627)
!6632 = !DILocation(line: 254, column: 2, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6627, file: !3, line: 254, column: 2)
!6634 = !DILocation(line: 255, column: 2, scope: !6627)
!6635 = !DILocation(line: 256, column: 28, scope: !6627)
!6636 = !DILocation(line: 256, column: 2, scope: !6627)
!6637 = !DILocation(line: 257, column: 1, scope: !6627)
!6638 = distinct !DISubprogram(name: "cgroup_rstat_flush_release", scope: !3, file: !3, line: 262, type: !2702, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6639 = !DILocation(line: 265, column: 2, scope: !6638)
!6640 = !DILocation(line: 266, column: 1, scope: !6638)
!6641 = distinct !DISubprogram(name: "cgroup_rstat_init", scope: !3, file: !3, line: 268, type: !6642, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6644)
!6642 = !DISubroutineType(types: !6643)
!6643 = !{!25, !491}
!6644 = !{!6645, !6646, !6647}
!6645 = !DILocalVariable(name: "cgrp", arg: 1, scope: !6641, file: !3, line: 268, type: !491)
!6646 = !DILocalVariable(name: "cpu", scope: !6641, file: !3, line: 270, type: !25)
!6647 = !DILocalVariable(name: "rstatc", scope: !6648, file: !3, line: 281, type: !466)
!6648 = distinct !DILexicalBlock(scope: !6649, file: !3, line: 280, column: 29)
!6649 = distinct !DILexicalBlock(scope: !6650, file: !3, line: 280, column: 2)
!6650 = distinct !DILexicalBlock(scope: !6641, file: !3, line: 280, column: 2)
!6651 = !DILocation(line: 268, column: 38, scope: !6641)
!6652 = !DILocation(line: 270, column: 2, scope: !6641)
!6653 = !DILocation(line: 270, column: 6, scope: !6641)
!6654 = !DILocation(line: 273, column: 7, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6641, file: !3, line: 273, column: 6)
!6656 = !DILocation(line: 273, column: 13, scope: !6655)
!6657 = !DILocation(line: 273, column: 6, scope: !6641)
!6658 = !DILocation(line: 274, column: 21, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6655, file: !3, line: 273, column: 24)
!6660 = !DILocation(line: 274, column: 3, scope: !6659)
!6661 = !DILocation(line: 274, column: 9, scope: !6659)
!6662 = !DILocation(line: 274, column: 19, scope: !6659)
!6663 = !DILocation(line: 275, column: 8, scope: !6664)
!6664 = distinct !DILexicalBlock(scope: !6659, file: !3, line: 275, column: 7)
!6665 = !DILocation(line: 275, column: 14, scope: !6664)
!6666 = !DILocation(line: 275, column: 7, scope: !6659)
!6667 = !DILocation(line: 276, column: 4, scope: !6664)
!6668 = !DILocation(line: 277, column: 2, scope: !6659)
!6669 = !DILocation(line: 280, column: 2, scope: !6650)
!6670 = !DILocation(line: 280, column: 2, scope: !6649)
!6671 = !DILocation(line: 281, column: 3, scope: !6648)
!6672 = !DILocation(line: 281, column: 28, scope: !6648)
!6673 = !DILocation(line: 281, column: 54, scope: !6648)
!6674 = !DILocation(line: 281, column: 60, scope: !6648)
!6675 = !DILocation(line: 281, column: 37, scope: !6648)
!6676 = !DILocation(line: 283, column: 30, scope: !6648)
!6677 = !DILocation(line: 283, column: 3, scope: !6648)
!6678 = !DILocation(line: 283, column: 11, scope: !6648)
!6679 = !DILocation(line: 283, column: 28, scope: !6648)
!6680 = !DILocation(line: 284, column: 19, scope: !6648)
!6681 = !DILocation(line: 284, column: 27, scope: !6648)
!6682 = !DILocation(line: 284, column: 3, scope: !6648)
!6683 = !DILocation(line: 285, column: 2, scope: !6649)
!6684 = !DILocation(line: 285, column: 2, scope: !6648)
!6685 = distinct !{!6685, !6669, !6686, !6594, !6413}
!6686 = !DILocation(line: 285, column: 2, scope: !6650)
!6687 = !DILocation(line: 287, column: 2, scope: !6641)
!6688 = !DILocation(line: 288, column: 1, scope: !6641)
!6689 = !DISubprogram(name: "__alloc_percpu", scope: !6690, file: !6690, line: 133, type: !6691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6690 = !DIFile(filename: "./include/linux/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5b443d1a4673980cdbec5f10c6cbbaa")
!6691 = !DISubroutineType(types: !6692)
!6692 = !{!23, !38, !38}
!6693 = distinct !DISubprogram(name: "find_next_bit", scope: !6694, file: !6694, line: 54, type: !6695, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6698)
!6694 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!6695 = !DISubroutineType(types: !6696)
!6696 = !{!42, !6697, !42, !42}
!6697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!6698 = !{!6699, !6700, !6701, !6702}
!6699 = !DILocalVariable(name: "addr", arg: 1, scope: !6693, file: !6694, line: 54, type: !6697)
!6700 = !DILocalVariable(name: "size", arg: 2, scope: !6693, file: !6694, line: 54, type: !42)
!6701 = !DILocalVariable(name: "offset", arg: 3, scope: !6693, file: !6694, line: 55, type: !42)
!6702 = !DILocalVariable(name: "val", scope: !6703, file: !6694, line: 58, type: !42)
!6703 = distinct !DILexicalBlock(scope: !6704, file: !6694, line: 57, column: 31)
!6704 = distinct !DILexicalBlock(scope: !6693, file: !6694, line: 57, column: 6)
!6705 = !DILocation(line: 54, column: 50, scope: !6693)
!6706 = !DILocation(line: 54, column: 70, scope: !6693)
!6707 = !DILocation(line: 55, column: 22, scope: !6693)
!6708 = !DILocation(line: 57, column: 6, scope: !6704)
!6709 = !DILocation(line: 57, column: 6, scope: !6693)
!6710 = !DILocation(line: 58, column: 3, scope: !6703)
!6711 = !DILocation(line: 58, column: 17, scope: !6703)
!6712 = !DILocation(line: 60, column: 7, scope: !6713)
!6713 = distinct !DILexicalBlock(scope: !6703, file: !6694, line: 60, column: 7)
!6714 = !DILocation(line: 60, column: 7, scope: !6703)
!6715 = !DILocation(line: 61, column: 11, scope: !6713)
!6716 = !DILocation(line: 61, column: 4, scope: !6713)
!6717 = !DILocation(line: 63, column: 10, scope: !6703)
!6718 = !DILocation(line: 63, column: 9, scope: !6703)
!6719 = !DILocation(line: 63, column: 17, scope: !6703)
!6720 = !DILocation(line: 63, column: 15, scope: !6703)
!6721 = !DILocation(line: 63, column: 7, scope: !6703)
!6722 = !DILocation(line: 64, column: 10, scope: !6703)
!6723 = !DILocation(line: 64, column: 16, scope: !6703)
!6724 = !DILocation(line: 64, column: 29, scope: !6703)
!6725 = !DILocation(line: 64, column: 3, scope: !6703)
!6726 = !DILocation(line: 65, column: 2, scope: !6704)
!6727 = !DILocation(line: 67, column: 24, scope: !6693)
!6728 = !DILocation(line: 67, column: 30, scope: !6693)
!6729 = !DILocation(line: 67, column: 36, scope: !6693)
!6730 = !DILocation(line: 67, column: 9, scope: !6693)
!6731 = !DILocation(line: 67, column: 2, scope: !6693)
!6732 = !DILocation(line: 68, column: 1, scope: !6693)
!6733 = distinct !DISubprogram(name: "u64_stats_init", scope: !472, file: !472, line: 97, type: !6734, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6737)
!6734 = !DISubroutineType(types: !6735)
!6735 = !{null, !6736}
!6736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!6737 = !{!6738}
!6738 = !DILocalVariable(name: "syncp", arg: 1, scope: !6733, file: !472, line: 97, type: !6736)
!6739 = !DILocation(line: 97, column: 58, scope: !6733)
!6740 = !DILocation(line: 97, column: 67, scope: !6733)
!6741 = distinct !DISubprogram(name: "cgroup_rstat_exit", scope: !3, file: !3, line: 290, type: !6481, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6742)
!6742 = !{!6743, !6744, !6745, !6749, !6752, !6755, !6757}
!6743 = !DILocalVariable(name: "cgrp", arg: 1, scope: !6741, file: !3, line: 290, type: !491)
!6744 = !DILocalVariable(name: "cpu", scope: !6741, file: !3, line: 292, type: !25)
!6745 = !DILocalVariable(name: "rstatc", scope: !6746, file: !3, line: 298, type: !466)
!6746 = distinct !DILexicalBlock(scope: !6747, file: !3, line: 297, column: 29)
!6747 = distinct !DILexicalBlock(scope: !6748, file: !3, line: 297, column: 2)
!6748 = distinct !DILexicalBlock(scope: !6741, file: !3, line: 297, column: 2)
!6749 = !DILocalVariable(name: "__ret_warn_on", scope: !6750, file: !3, line: 300, type: !25)
!6750 = distinct !DILexicalBlock(scope: !6751, file: !3, line: 300, column: 7)
!6751 = distinct !DILexicalBlock(scope: !6746, file: !3, line: 300, column: 7)
!6752 = !DILocalVariable(name: "__flags", scope: !6753, file: !3, line: 300, type: !25)
!6753 = distinct !DILexicalBlock(scope: !6754, file: !3, line: 300, column: 7)
!6754 = distinct !DILexicalBlock(scope: !6750, file: !3, line: 300, column: 7)
!6755 = !DILocalVariable(name: "__ret_warn_on", scope: !6756, file: !3, line: 301, type: !25)
!6756 = distinct !DILexicalBlock(scope: !6751, file: !3, line: 301, column: 7)
!6757 = !DILocalVariable(name: "__flags", scope: !6758, file: !3, line: 301, type: !25)
!6758 = distinct !DILexicalBlock(scope: !6759, file: !3, line: 301, column: 7)
!6759 = distinct !DILexicalBlock(scope: !6756, file: !3, line: 301, column: 7)
!6760 = !DILocation(line: 290, column: 39, scope: !6741)
!6761 = !DILocation(line: 292, column: 2, scope: !6741)
!6762 = !DILocation(line: 292, column: 6, scope: !6741)
!6763 = !DILocation(line: 294, column: 21, scope: !6741)
!6764 = !DILocation(line: 294, column: 2, scope: !6741)
!6765 = !DILocation(line: 297, column: 2, scope: !6748)
!6766 = !DILocation(line: 297, column: 2, scope: !6747)
!6767 = !DILocation(line: 298, column: 3, scope: !6746)
!6768 = !DILocation(line: 298, column: 28, scope: !6746)
!6769 = !DILocation(line: 298, column: 54, scope: !6746)
!6770 = !DILocation(line: 298, column: 60, scope: !6746)
!6771 = !DILocation(line: 298, column: 37, scope: !6746)
!6772 = !DILocation(line: 300, column: 7, scope: !6750)
!6773 = !DILocation(line: 300, column: 7, scope: !6754)
!6774 = !DILocation(line: 300, column: 7, scope: !6753)
!6775 = !DILocation(line: 300, column: 7, scope: !6776)
!6776 = distinct !DILexicalBlock(scope: !6753, file: !3, line: 300, column: 7)
!6777 = !DILocation(line: 300, column: 7, scope: !6778)
!6778 = distinct !DILexicalBlock(scope: !6753, file: !3, line: 300, column: 7)
!6779 = !{i64 2155715039, i64 2155715068, i64 2155715114, i64 2155715172, i64 2155715226, i64 2155715280, i64 2155715335, i64 2155715366, i64 2155715674, i64 2155715680, i64 2155715727, i64 2155715750, i64 2155715776}
!6780 = !DILocation(line: 300, column: 7, scope: !6781)
!6781 = distinct !DILexicalBlock(scope: !6753, file: !3, line: 300, column: 7)
!6782 = !DILocation(line: 300, column: 7, scope: !6751)
!6783 = !DILocation(line: 300, column: 54, scope: !6751)
!6784 = !DILocation(line: 301, column: 7, scope: !6756)
!6785 = !DILocation(line: 301, column: 7, scope: !6759)
!6786 = !DILocation(line: 301, column: 7, scope: !6758)
!6787 = !DILocation(line: 301, column: 7, scope: !6788)
!6788 = distinct !DILexicalBlock(scope: !6758, file: !3, line: 301, column: 7)
!6789 = !DILocation(line: 301, column: 7, scope: !6790)
!6790 = distinct !DILexicalBlock(scope: !6758, file: !3, line: 301, column: 7)
!6791 = !{i64 2155716572, i64 2155716601, i64 2155716647, i64 2155716705, i64 2155716759, i64 2155716813, i64 2155716868, i64 2155716899, i64 2155717207, i64 2155717213, i64 2155717260, i64 2155717283, i64 2155717309}
!6792 = !DILocation(line: 301, column: 7, scope: !6793)
!6793 = distinct !DILexicalBlock(scope: !6758, file: !3, line: 301, column: 7)
!6794 = !DILocation(line: 301, column: 7, scope: !6751)
!6795 = !DILocation(line: 300, column: 7, scope: !6746)
!6796 = !DILocation(line: 302, column: 4, scope: !6751)
!6797 = !DILocation(line: 303, column: 2, scope: !6747)
!6798 = !DILocation(line: 303, column: 2, scope: !6746)
!6799 = distinct !{!6799, !6765, !6800, !6594, !6413}
!6800 = !DILocation(line: 303, column: 2, scope: !6748)
!6801 = !DILocation(line: 305, column: 14, scope: !6741)
!6802 = !DILocation(line: 305, column: 20, scope: !6741)
!6803 = !DILocation(line: 305, column: 2, scope: !6741)
!6804 = !DILocation(line: 306, column: 2, scope: !6741)
!6805 = !DILocation(line: 306, column: 8, scope: !6741)
!6806 = !DILocation(line: 306, column: 18, scope: !6741)
!6807 = !DILocation(line: 307, column: 1, scope: !6741)
!6808 = !DISubprogram(name: "free_percpu", scope: !6690, file: !6690, line: 134, type: !1145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6809 = distinct !DISubprogram(name: "cgroup_rstat_boot", scope: !3, file: !3, line: 309, type: !2702, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6810)
!6810 = !{!6811, !6812, !6818}
!6811 = !DILocalVariable(name: "cpu", scope: !6809, file: !3, line: 311, type: !25)
!6812 = !DILocalVariable(name: "__vpp_verify", scope: !6813, file: !3, line: 314, type: !1793)
!6813 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 314, column: 3)
!6814 = distinct !DILexicalBlock(scope: !6815, file: !3, line: 314, column: 3)
!6815 = distinct !DILexicalBlock(scope: !6816, file: !3, line: 314, column: 3)
!6816 = distinct !DILexicalBlock(scope: !6817, file: !3, line: 313, column: 2)
!6817 = distinct !DILexicalBlock(scope: !6809, file: !3, line: 313, column: 2)
!6818 = !DILocalVariable(name: "__ptr", scope: !6819, file: !3, line: 314, type: !42)
!6819 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 314, column: 3)
!6820 = !DILocation(line: 311, column: 2, scope: !6809)
!6821 = !DILocation(line: 311, column: 6, scope: !6809)
!6822 = !DILocation(line: 313, column: 2, scope: !6817)
!6823 = !DILocation(line: 313, column: 2, scope: !6816)
!6824 = !DILocation(line: 314, column: 3, scope: !6816)
!6825 = !DILocation(line: 314, column: 3, scope: !6814)
!6826 = !DILocation(line: 314, column: 3, scope: !6813)
!6827 = !DILocation(line: 314, column: 3, scope: !6819)
!6828 = !DILocation(line: 314, column: 3, scope: !6815)
!6829 = distinct !{!6829, !6822, !6830, !6594, !6413}
!6830 = !DILocation(line: 314, column: 3, scope: !6817)
!6831 = !DILocation(line: 315, column: 1, scope: !6809)
!6832 = distinct !DISubprogram(name: "__cgroup_account_cputime", scope: !3, file: !3, line: 401, type: !6833, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6835)
!6833 = !DISubroutineType(types: !6834)
!6834 = !{null, !491, !482}
!6835 = !{!6836, !6837, !6838, !6839}
!6836 = !DILocalVariable(name: "cgrp", arg: 1, scope: !6832, file: !3, line: 401, type: !491)
!6837 = !DILocalVariable(name: "delta_exec", arg: 2, scope: !6832, file: !3, line: 401, type: !482)
!6838 = !DILocalVariable(name: "rstatc", scope: !6832, file: !3, line: 403, type: !466)
!6839 = !DILocalVariable(name: "flags", scope: !6832, file: !3, line: 404, type: !42)
!6840 = !DILocation(line: 401, column: 46, scope: !6832)
!6841 = !DILocation(line: 401, column: 56, scope: !6832)
!6842 = !DILocation(line: 403, column: 2, scope: !6832)
!6843 = !DILocation(line: 403, column: 27, scope: !6832)
!6844 = !DILocation(line: 404, column: 2, scope: !6832)
!6845 = !DILocation(line: 404, column: 16, scope: !6832)
!6846 = !DILocation(line: 406, column: 50, scope: !6832)
!6847 = !DILocation(line: 406, column: 11, scope: !6832)
!6848 = !DILocation(line: 406, column: 9, scope: !6832)
!6849 = !DILocation(line: 407, column: 44, scope: !6832)
!6850 = !DILocation(line: 407, column: 2, scope: !6832)
!6851 = !DILocation(line: 407, column: 10, scope: !6832)
!6852 = !DILocation(line: 407, column: 16, scope: !6832)
!6853 = !DILocation(line: 407, column: 24, scope: !6832)
!6854 = !DILocation(line: 407, column: 41, scope: !6832)
!6855 = !DILocation(line: 408, column: 39, scope: !6832)
!6856 = !DILocation(line: 408, column: 45, scope: !6832)
!6857 = !DILocation(line: 408, column: 53, scope: !6832)
!6858 = !DILocation(line: 408, column: 2, scope: !6832)
!6859 = !DILocation(line: 409, column: 1, scope: !6832)
!6860 = distinct !DISubprogram(name: "cgroup_base_stat_cputime_account_begin", scope: !3, file: !3, line: 383, type: !6861, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6863)
!6861 = !DISubroutineType(types: !6862)
!6862 = !{!466, !491, !2688}
!6863 = !{!6864, !6865, !6866, !6867, !6871}
!6864 = !DILocalVariable(name: "cgrp", arg: 1, scope: !6860, file: !3, line: 383, type: !491)
!6865 = !DILocalVariable(name: "flags", arg: 2, scope: !6860, file: !3, line: 383, type: !2688)
!6866 = !DILocalVariable(name: "rstatc", scope: !6860, file: !3, line: 385, type: !466)
!6867 = !DILocalVariable(name: "__vpp_verify", scope: !6868, file: !3, line: 387, type: !1793)
!6868 = distinct !DILexicalBlock(scope: !6869, file: !3, line: 387, column: 11)
!6869 = distinct !DILexicalBlock(scope: !6870, file: !3, line: 387, column: 11)
!6870 = distinct !DILexicalBlock(scope: !6860, file: !3, line: 387, column: 11)
!6871 = !DILocalVariable(name: "tcp_ptr__", scope: !6872, file: !3, line: 387, type: !42)
!6872 = distinct !DILexicalBlock(scope: !6869, file: !3, line: 387, column: 11)
!6873 = !DILocation(line: 383, column: 55, scope: !6860)
!6874 = !DILocation(line: 383, column: 76, scope: !6860)
!6875 = !DILocation(line: 385, column: 2, scope: !6860)
!6876 = !DILocation(line: 385, column: 27, scope: !6860)
!6877 = !DILocation(line: 387, column: 11, scope: !6870)
!6878 = !DILocation(line: 387, column: 11, scope: !6879)
!6879 = distinct !DILexicalBlock(scope: !6870, file: !3, line: 387, column: 11)
!6880 = !{i64 2155721998}
!6881 = !DILocation(line: 387, column: 11, scope: !6869)
!6882 = !DILocation(line: 387, column: 11, scope: !6868)
!6883 = !DILocation(line: 387, column: 11, scope: !6872)
!6884 = !{i64 2155722380}
!6885 = !DILocation(line: 387, column: 9, scope: !6860)
!6886 = !DILocation(line: 388, column: 43, scope: !6860)
!6887 = !DILocation(line: 388, column: 51, scope: !6860)
!6888 = !DILocation(line: 388, column: 11, scope: !6860)
!6889 = !DILocation(line: 388, column: 3, scope: !6860)
!6890 = !DILocation(line: 388, column: 9, scope: !6860)
!6891 = !DILocation(line: 389, column: 9, scope: !6860)
!6892 = !DILocation(line: 390, column: 1, scope: !6860)
!6893 = !DILocation(line: 389, column: 2, scope: !6860)
!6894 = !DILocation(line: 392, column: 65, scope: !5438)
!6895 = !DILocation(line: 393, column: 33, scope: !5438)
!6896 = !DILocation(line: 394, column: 22, scope: !5438)
!6897 = !DILocation(line: 396, column: 35, scope: !5438)
!6898 = !DILocation(line: 396, column: 43, scope: !5438)
!6899 = !DILocation(line: 396, column: 50, scope: !5438)
!6900 = !DILocation(line: 396, column: 2, scope: !5438)
!6901 = !DILocation(line: 397, column: 23, scope: !5438)
!6902 = !DILocation(line: 397, column: 29, scope: !5447)
!6903 = !DILocation(line: 397, column: 29, scope: !5446)
!6904 = !DILocation(line: 397, column: 29, scope: !5449)
!6905 = !DILocation(line: 397, column: 29, scope: !5451)
!6906 = !{i64 2155725303}
!6907 = !DILocation(line: 397, column: 2, scope: !5438)
!6908 = !DILocation(line: 398, column: 2, scope: !5438)
!6909 = !DILocation(line: 398, column: 2, scope: !6910)
!6910 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 398, column: 2)
!6911 = !DILocation(line: 398, column: 2, scope: !6912)
!6912 = distinct !DILexicalBlock(scope: !6910, file: !3, line: 398, column: 2)
!6913 = !{i64 2155726287}
!6914 = !DILocation(line: 398, column: 2, scope: !6915)
!6915 = distinct !DILexicalBlock(scope: !6912, file: !3, line: 398, column: 2)
!6916 = !DILocation(line: 398, column: 2, scope: !6917)
!6917 = distinct !DILexicalBlock(scope: !6915, file: !3, line: 398, column: 2)
!6918 = !{i64 2155726469}
!6919 = !DILocation(line: 399, column: 1, scope: !5438)
!6920 = distinct !DISubprogram(name: "__cgroup_account_cputime_field", scope: !3, file: !3, line: 411, type: !6921, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6923)
!6921 = !DISubroutineType(types: !6922)
!6922 = !{null, !491, !281, !482}
!6923 = !{!6924, !6925, !6926, !6927, !6928}
!6924 = !DILocalVariable(name: "cgrp", arg: 1, scope: !6920, file: !3, line: 411, type: !491)
!6925 = !DILocalVariable(name: "index", arg: 2, scope: !6920, file: !3, line: 412, type: !281)
!6926 = !DILocalVariable(name: "delta_exec", arg: 3, scope: !6920, file: !3, line: 412, type: !482)
!6927 = !DILocalVariable(name: "rstatc", scope: !6920, file: !3, line: 414, type: !466)
!6928 = !DILocalVariable(name: "flags", scope: !6920, file: !3, line: 415, type: !42)
!6929 = !DILocation(line: 411, column: 52, scope: !6920)
!6930 = !DILocation(line: 412, column: 29, scope: !6920)
!6931 = !DILocation(line: 412, column: 40, scope: !6920)
!6932 = !DILocation(line: 414, column: 2, scope: !6920)
!6933 = !DILocation(line: 414, column: 27, scope: !6920)
!6934 = !DILocation(line: 415, column: 2, scope: !6920)
!6935 = !DILocation(line: 415, column: 16, scope: !6920)
!6936 = !DILocation(line: 417, column: 50, scope: !6920)
!6937 = !DILocation(line: 417, column: 11, scope: !6920)
!6938 = !DILocation(line: 417, column: 9, scope: !6920)
!6939 = !DILocation(line: 419, column: 10, scope: !6920)
!6940 = !DILocation(line: 419, column: 2, scope: !6920)
!6941 = !DILocation(line: 422, column: 34, scope: !6942)
!6942 = distinct !DILexicalBlock(scope: !6920, file: !3, line: 419, column: 17)
!6943 = !DILocation(line: 422, column: 3, scope: !6942)
!6944 = !DILocation(line: 422, column: 11, scope: !6942)
!6945 = !DILocation(line: 422, column: 17, scope: !6942)
!6946 = !DILocation(line: 422, column: 25, scope: !6942)
!6947 = !DILocation(line: 422, column: 31, scope: !6942)
!6948 = !DILocation(line: 423, column: 3, scope: !6942)
!6949 = !DILocation(line: 427, column: 34, scope: !6942)
!6950 = !DILocation(line: 427, column: 3, scope: !6942)
!6951 = !DILocation(line: 427, column: 11, scope: !6942)
!6952 = !DILocation(line: 427, column: 17, scope: !6942)
!6953 = !DILocation(line: 427, column: 25, scope: !6942)
!6954 = !DILocation(line: 427, column: 31, scope: !6942)
!6955 = !DILocation(line: 428, column: 3, scope: !6942)
!6956 = !DILocation(line: 435, column: 3, scope: !6942)
!6957 = !DILocation(line: 438, column: 39, scope: !6920)
!6958 = !DILocation(line: 438, column: 45, scope: !6920)
!6959 = !DILocation(line: 438, column: 53, scope: !6920)
!6960 = !DILocation(line: 438, column: 2, scope: !6920)
!6961 = !DILocation(line: 439, column: 1, scope: !6920)
!6962 = distinct !DISubprogram(name: "cgroup_base_stat_cputime_show", scope: !3, file: !3, line: 479, type: !6963, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6965)
!6963 = !DISubroutineType(types: !6964)
!6964 = !{null, !526}
!6965 = !{!6966, !6967, !6968, !6969, !6970, !6971, !6972, !6974, !6975, !6977, !6978, !6980}
!6966 = !DILocalVariable(name: "seq", arg: 1, scope: !6962, file: !3, line: 479, type: !526)
!6967 = !DILocalVariable(name: "cgrp", scope: !6962, file: !3, line: 481, type: !491)
!6968 = !DILocalVariable(name: "usage", scope: !6962, file: !3, line: 482, type: !482)
!6969 = !DILocalVariable(name: "utime", scope: !6962, file: !3, line: 482, type: !482)
!6970 = !DILocalVariable(name: "stime", scope: !6962, file: !3, line: 482, type: !482)
!6971 = !DILocalVariable(name: "bstat", scope: !6962, file: !3, line: 483, type: !475)
!6972 = !DILocalVariable(name: "__base", scope: !6973, file: !3, line: 507, type: !767)
!6973 = distinct !DILexicalBlock(scope: !6962, file: !3, line: 507, column: 2)
!6974 = !DILocalVariable(name: "__rem", scope: !6973, file: !3, line: 507, type: !767)
!6975 = !DILocalVariable(name: "__base", scope: !6976, file: !3, line: 508, type: !767)
!6976 = distinct !DILexicalBlock(scope: !6962, file: !3, line: 508, column: 2)
!6977 = !DILocalVariable(name: "__rem", scope: !6976, file: !3, line: 508, type: !767)
!6978 = !DILocalVariable(name: "__base", scope: !6979, file: !3, line: 509, type: !767)
!6979 = distinct !DILexicalBlock(scope: !6962, file: !3, line: 509, column: 2)
!6980 = !DILocalVariable(name: "__rem", scope: !6979, file: !3, line: 509, type: !767)
!6981 = !DILocation(line: 479, column: 53, scope: !6962)
!6982 = !DILocation(line: 481, column: 2, scope: !6962)
!6983 = !DILocation(line: 481, column: 17, scope: !6962)
!6984 = !DILocation(line: 481, column: 32, scope: !6962)
!6985 = !DILocation(line: 481, column: 24, scope: !6962)
!6986 = !DILocation(line: 481, column: 38, scope: !6962)
!6987 = !DILocation(line: 482, column: 2, scope: !6962)
!6988 = !DILocation(line: 482, column: 6, scope: !6962)
!6989 = !DILocation(line: 482, column: 13, scope: !6962)
!6990 = !DILocation(line: 482, column: 20, scope: !6962)
!6991 = !DILocation(line: 483, column: 2, scope: !6962)
!6992 = !DILocation(line: 483, column: 26, scope: !6962)
!6993 = !DILocation(line: 488, column: 20, scope: !6994)
!6994 = distinct !DILexicalBlock(scope: !6962, file: !3, line: 488, column: 6)
!6995 = !DILocation(line: 488, column: 6, scope: !6994)
!6996 = !DILocation(line: 488, column: 6, scope: !6962)
!6997 = !DILocation(line: 489, column: 27, scope: !6998)
!6998 = distinct !DILexicalBlock(scope: !6994, file: !3, line: 488, column: 27)
!6999 = !DILocation(line: 489, column: 3, scope: !6998)
!7000 = !DILocation(line: 490, column: 11, scope: !6998)
!7001 = !DILocation(line: 490, column: 17, scope: !6998)
!7002 = !DILocation(line: 490, column: 23, scope: !6998)
!7003 = !DILocation(line: 490, column: 31, scope: !6998)
!7004 = !DILocation(line: 490, column: 9, scope: !6998)
!7005 = !DILocation(line: 491, column: 19, scope: !6998)
!7006 = !DILocation(line: 491, column: 25, scope: !6998)
!7007 = !DILocation(line: 491, column: 31, scope: !6998)
!7008 = !DILocation(line: 491, column: 41, scope: !6998)
!7009 = !DILocation(line: 491, column: 47, scope: !6998)
!7010 = !DILocation(line: 491, column: 3, scope: !6998)
!7011 = !DILocation(line: 496, column: 3, scope: !6998)
!7012 = !DILocation(line: 497, column: 2, scope: !6998)
!7013 = !DILocation(line: 498, column: 3, scope: !7014)
!7014 = distinct !DILexicalBlock(scope: !6994, file: !3, line: 497, column: 9)
!7015 = !DILocation(line: 499, column: 17, scope: !7014)
!7016 = !DILocation(line: 499, column: 25, scope: !7014)
!7017 = !DILocation(line: 499, column: 9, scope: !7014)
!7018 = !DILocation(line: 500, column: 17, scope: !7014)
!7019 = !DILocation(line: 500, column: 25, scope: !7014)
!7020 = !DILocation(line: 500, column: 9, scope: !7014)
!7021 = !DILocation(line: 501, column: 17, scope: !7014)
!7022 = !DILocation(line: 501, column: 25, scope: !7014)
!7023 = !DILocation(line: 501, column: 9, scope: !7014)
!7024 = !DILocation(line: 507, column: 2, scope: !6973)
!7025 = !DILocation(line: 507, column: 2, scope: !6962)
!7026 = !DILocation(line: 508, column: 2, scope: !6976)
!7027 = !DILocation(line: 508, column: 2, scope: !6962)
!7028 = !DILocation(line: 509, column: 2, scope: !6979)
!7029 = !DILocation(line: 509, column: 2, scope: !6962)
!7030 = !DILocation(line: 514, column: 13, scope: !6962)
!7031 = !DILocation(line: 517, column: 6, scope: !6962)
!7032 = !DILocation(line: 517, column: 13, scope: !6962)
!7033 = !DILocation(line: 517, column: 20, scope: !6962)
!7034 = !DILocation(line: 514, column: 2, scope: !6962)
!7035 = !DILocation(line: 522, column: 1, scope: !6962)
!7036 = distinct !DISubprogram(name: "seq_css", scope: !4036, file: !4036, line: 584, type: !7037, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7039)
!7037 = !DISubroutineType(types: !7038)
!7038 = !{!506, !526}
!7039 = !{!7040}
!7040 = !DILocalVariable(name: "seq", arg: 1, scope: !7036, file: !4036, line: 584, type: !526)
!7041 = !DILocation(line: 584, column: 68, scope: !7036)
!7042 = !DILocation(line: 586, column: 16, scope: !7036)
!7043 = !DILocation(line: 586, column: 21, scope: !7036)
!7044 = !DILocation(line: 586, column: 9, scope: !7036)
!7045 = !DILocation(line: 586, column: 2, scope: !7036)
!7046 = !DISubprogram(name: "cputime_adjust", scope: !7047, file: !7047, line: 49, type: !7048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7047 = !DIFile(filename: "./include/linux/sched/cputime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61dc6eb5d99536d491cae546a62a3194")
!7048 = !DISubroutineType(types: !7049)
!7049 = !{null, !7050, !7051, !3418, !3418}
!7050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!7051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!7052 = distinct !DISubprogram(name: "root_cgroup_cputime", scope: !3, file: !3, line: 447, type: !7053, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7056)
!7053 = !DISubroutineType(types: !7054)
!7054 = !{null, !7055}
!7055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!7056 = !{!7057, !7058, !7059, !7060, !7064, !7065, !7066}
!7057 = !DILocalVariable(name: "bstat", arg: 1, scope: !7052, file: !3, line: 447, type: !7055)
!7058 = !DILocalVariable(name: "cputime", scope: !7052, file: !3, line: 449, type: !7050)
!7059 = !DILocalVariable(name: "i", scope: !7052, file: !3, line: 450, type: !25)
!7060 = !DILocalVariable(name: "kcpustat", scope: !7061, file: !3, line: 454, type: !5407)
!7061 = distinct !DILexicalBlock(scope: !7062, file: !3, line: 453, column: 27)
!7062 = distinct !DILexicalBlock(scope: !7063, file: !3, line: 453, column: 2)
!7063 = distinct !DILexicalBlock(scope: !7052, file: !3, line: 453, column: 2)
!7064 = !DILocalVariable(name: "cpustat", scope: !7061, file: !3, line: 455, type: !3418)
!7065 = !DILocalVariable(name: "user", scope: !7061, file: !3, line: 456, type: !482)
!7066 = !DILocalVariable(name: "sys", scope: !7061, file: !3, line: 457, type: !482)
!7067 = !DILocation(line: 447, column: 58, scope: !7052)
!7068 = !DILocation(line: 449, column: 2, scope: !7052)
!7069 = !DILocation(line: 449, column: 23, scope: !7052)
!7070 = !DILocation(line: 449, column: 34, scope: !7052)
!7071 = !DILocation(line: 449, column: 41, scope: !7052)
!7072 = !DILocation(line: 450, column: 2, scope: !7052)
!7073 = !DILocation(line: 450, column: 6, scope: !7052)
!7074 = !DILocation(line: 452, column: 9, scope: !7052)
!7075 = !DILocation(line: 452, column: 2, scope: !7052)
!7076 = !DILocation(line: 453, column: 2, scope: !7063)
!7077 = !DILocation(line: 453, column: 2, scope: !7062)
!7078 = !DILocation(line: 454, column: 3, scope: !7061)
!7079 = !DILocation(line: 454, column: 25, scope: !7061)
!7080 = !DILocation(line: 455, column: 3, scope: !7061)
!7081 = !DILocation(line: 455, column: 8, scope: !7061)
!7082 = !DILocation(line: 455, column: 27, scope: !7061)
!7083 = !DILocation(line: 455, column: 18, scope: !7061)
!7084 = !DILocation(line: 456, column: 3, scope: !7061)
!7085 = !DILocation(line: 456, column: 7, scope: !7061)
!7086 = !DILocation(line: 457, column: 3, scope: !7061)
!7087 = !DILocation(line: 457, column: 7, scope: !7061)
!7088 = !DILocation(line: 459, column: 33, scope: !7061)
!7089 = !DILocation(line: 459, column: 3, scope: !7061)
!7090 = !DILocation(line: 461, column: 11, scope: !7061)
!7091 = !DILocation(line: 461, column: 8, scope: !7061)
!7092 = !DILocation(line: 462, column: 11, scope: !7061)
!7093 = !DILocation(line: 462, column: 8, scope: !7061)
!7094 = !DILocation(line: 463, column: 21, scope: !7061)
!7095 = !DILocation(line: 463, column: 3, scope: !7061)
!7096 = !DILocation(line: 463, column: 12, scope: !7061)
!7097 = !DILocation(line: 463, column: 18, scope: !7061)
!7098 = !DILocation(line: 465, column: 10, scope: !7061)
!7099 = !DILocation(line: 465, column: 7, scope: !7061)
!7100 = !DILocation(line: 466, column: 10, scope: !7061)
!7101 = !DILocation(line: 466, column: 7, scope: !7061)
!7102 = !DILocation(line: 467, column: 10, scope: !7061)
!7103 = !DILocation(line: 467, column: 7, scope: !7061)
!7104 = !DILocation(line: 468, column: 21, scope: !7061)
!7105 = !DILocation(line: 468, column: 3, scope: !7061)
!7106 = !DILocation(line: 468, column: 12, scope: !7061)
!7107 = !DILocation(line: 468, column: 18, scope: !7061)
!7108 = !DILocation(line: 470, column: 32, scope: !7061)
!7109 = !DILocation(line: 470, column: 3, scope: !7061)
!7110 = !DILocation(line: 470, column: 12, scope: !7061)
!7111 = !DILocation(line: 470, column: 29, scope: !7061)
!7112 = !DILocation(line: 471, column: 32, scope: !7061)
!7113 = !DILocation(line: 471, column: 3, scope: !7061)
!7114 = !DILocation(line: 471, column: 12, scope: !7061)
!7115 = !DILocation(line: 471, column: 29, scope: !7061)
!7116 = !DILocation(line: 476, column: 2, scope: !7062)
!7117 = !DILocation(line: 476, column: 2, scope: !7061)
!7118 = distinct !{!7118, !7076, !7119, !6594, !6413}
!7119 = !DILocation(line: 476, column: 2, scope: !7063)
!7120 = !DILocation(line: 477, column: 1, scope: !7052)
!7121 = !DISubprogram(name: "seq_printf", scope: !528, file: !528, line: 119, type: !7122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7122 = !DISubroutineType(types: !7123)
!7123 = !{null, !526, !19, null}
!7124 = distinct !DISubprogram(name: "__initstub__kmod_rstat__336_540_bpf_rstat_kfunc_init7", scope: !3, file: !3, line: 540, type: !2470, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7125 = !DILocation(line: 540, column: 1, scope: !7124)
!7126 = distinct !DISubprogram(name: "bpf_rstat_kfunc_init", scope: !3, file: !3, line: 535, type: !2470, scopeLine: 536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7127 = !DILocation(line: 537, column: 9, scope: !7126)
!7128 = !DILocation(line: 537, column: 2, scope: !7126)
!7129 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !6441, file: !6441, line: 29, type: !7130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7130 = !DISubroutineType(types: !7131)
!7131 = !{null, !464}
!7132 = distinct !DISubprogram(name: "cgroup_rstat_cpu_pop_updated", scope: !3, file: !3, line: 91, type: !7133, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7135)
!7133 = !DISubroutineType(types: !7134)
!7134 = !{!491, !491, !491, !25}
!7135 = !{!7136, !7137, !7138, !7139, !7140, !7141, !7144, !7146, !7148, !7150}
!7136 = !DILocalVariable(name: "pos", arg: 1, scope: !7132, file: !3, line: 91, type: !491)
!7137 = !DILocalVariable(name: "root", arg: 2, scope: !7132, file: !3, line: 92, type: !491)
!7138 = !DILocalVariable(name: "cpu", arg: 3, scope: !7132, file: !3, line: 92, type: !25)
!7139 = !DILocalVariable(name: "rstatc", scope: !7132, file: !3, line: 94, type: !466)
!7140 = !DILocalVariable(name: "parent", scope: !7132, file: !3, line: 95, type: !491)
!7141 = !DILocalVariable(name: "prstatc", scope: !7142, file: !3, line: 129, type: !466)
!7142 = distinct !DILexicalBlock(scope: !7143, file: !3, line: 128, column: 14)
!7143 = distinct !DILexicalBlock(scope: !7132, file: !3, line: 128, column: 6)
!7144 = !DILocalVariable(name: "nextp", scope: !7142, file: !3, line: 130, type: !7145)
!7145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!7146 = !DILocalVariable(name: "nrstatc", scope: !7147, file: !3, line: 135, type: !466)
!7147 = distinct !DILexicalBlock(scope: !7142, file: !3, line: 134, column: 25)
!7148 = !DILocalVariable(name: "__ret_warn_on", scope: !7149, file: !3, line: 138, type: !25)
!7149 = distinct !DILexicalBlock(scope: !7147, file: !3, line: 138, column: 4)
!7150 = !DILocalVariable(name: "__flags", scope: !7151, file: !3, line: 138, type: !25)
!7151 = distinct !DILexicalBlock(scope: !7152, file: !3, line: 138, column: 4)
!7152 = distinct !DILexicalBlock(scope: !7149, file: !3, line: 138, column: 4)
!7153 = !DILocation(line: 91, column: 67, scope: !7132)
!7154 = !DILocation(line: 92, column: 25, scope: !7132)
!7155 = !DILocation(line: 92, column: 35, scope: !7132)
!7156 = !DILocation(line: 94, column: 2, scope: !7132)
!7157 = !DILocation(line: 94, column: 27, scope: !7132)
!7158 = !DILocation(line: 95, column: 2, scope: !7132)
!7159 = !DILocation(line: 95, column: 17, scope: !7132)
!7160 = !DILocation(line: 97, column: 6, scope: !7161)
!7161 = distinct !DILexicalBlock(scope: !7132, file: !3, line: 97, column: 6)
!7162 = !DILocation(line: 97, column: 13, scope: !7161)
!7163 = !DILocation(line: 97, column: 10, scope: !7161)
!7164 = !DILocation(line: 97, column: 6, scope: !7132)
!7165 = !DILocation(line: 98, column: 3, scope: !7161)
!7166 = !DILocation(line: 104, column: 7, scope: !7167)
!7167 = distinct !DILexicalBlock(scope: !7132, file: !3, line: 104, column: 6)
!7168 = !DILocation(line: 104, column: 6, scope: !7132)
!7169 = !DILocation(line: 105, column: 9, scope: !7170)
!7170 = distinct !DILexicalBlock(scope: !7167, file: !3, line: 104, column: 12)
!7171 = !DILocation(line: 105, column: 7, scope: !7170)
!7172 = !DILocation(line: 107, column: 25, scope: !7173)
!7173 = distinct !DILexicalBlock(scope: !7170, file: !3, line: 107, column: 7)
!7174 = !DILocation(line: 107, column: 30, scope: !7173)
!7175 = !DILocation(line: 107, column: 8, scope: !7173)
!7176 = !DILocation(line: 107, column: 36, scope: !7173)
!7177 = !DILocation(line: 107, column: 7, scope: !7170)
!7178 = !DILocation(line: 108, column: 4, scope: !7173)
!7179 = !DILocation(line: 109, column: 2, scope: !7170)
!7180 = !DILocation(line: 110, column: 23, scope: !7181)
!7181 = distinct !DILexicalBlock(scope: !7167, file: !3, line: 109, column: 9)
!7182 = !DILocation(line: 110, column: 9, scope: !7181)
!7183 = !DILocation(line: 110, column: 7, scope: !7181)
!7184 = !DILocation(line: 114, column: 2, scope: !7132)
!7185 = !DILocation(line: 115, column: 29, scope: !7186)
!7186 = distinct !DILexicalBlock(scope: !7132, file: !3, line: 114, column: 15)
!7187 = !DILocation(line: 115, column: 34, scope: !7186)
!7188 = !DILocation(line: 115, column: 12, scope: !7186)
!7189 = !DILocation(line: 115, column: 10, scope: !7186)
!7190 = !DILocation(line: 116, column: 7, scope: !7191)
!7191 = distinct !DILexicalBlock(scope: !7186, file: !3, line: 116, column: 7)
!7192 = !DILocation(line: 116, column: 15, scope: !7191)
!7193 = !DILocation(line: 116, column: 35, scope: !7191)
!7194 = !DILocation(line: 116, column: 32, scope: !7191)
!7195 = !DILocation(line: 116, column: 7, scope: !7186)
!7196 = !DILocation(line: 117, column: 4, scope: !7191)
!7197 = !DILocation(line: 118, column: 9, scope: !7186)
!7198 = !DILocation(line: 118, column: 17, scope: !7186)
!7199 = !DILocation(line: 118, column: 7, scope: !7186)
!7200 = distinct !{!7200, !7184, !7201, !6413}
!7201 = !DILocation(line: 119, column: 2, scope: !7132)
!7202 = !DILocation(line: 127, column: 25, scope: !7132)
!7203 = !DILocation(line: 127, column: 11, scope: !7132)
!7204 = !DILocation(line: 127, column: 9, scope: !7132)
!7205 = !DILocation(line: 128, column: 6, scope: !7143)
!7206 = !DILocation(line: 128, column: 6, scope: !7132)
!7207 = !DILocation(line: 129, column: 3, scope: !7142)
!7208 = !DILocation(line: 129, column: 28, scope: !7142)
!7209 = !DILocation(line: 130, column: 3, scope: !7142)
!7210 = !DILocation(line: 130, column: 19, scope: !7142)
!7211 = !DILocation(line: 132, column: 30, scope: !7142)
!7212 = !DILocation(line: 132, column: 38, scope: !7142)
!7213 = !DILocation(line: 132, column: 13, scope: !7142)
!7214 = !DILocation(line: 132, column: 11, scope: !7142)
!7215 = !DILocation(line: 133, column: 12, scope: !7142)
!7216 = !DILocation(line: 133, column: 21, scope: !7142)
!7217 = !DILocation(line: 133, column: 9, scope: !7142)
!7218 = !DILocation(line: 134, column: 3, scope: !7142)
!7219 = !DILocation(line: 134, column: 11, scope: !7142)
!7220 = !DILocation(line: 134, column: 10, scope: !7142)
!7221 = !DILocation(line: 134, column: 20, scope: !7142)
!7222 = !DILocation(line: 134, column: 17, scope: !7142)
!7223 = !DILocation(line: 135, column: 4, scope: !7147)
!7224 = !DILocation(line: 135, column: 29, scope: !7147)
!7225 = !DILocation(line: 137, column: 32, scope: !7147)
!7226 = !DILocation(line: 137, column: 31, scope: !7147)
!7227 = !DILocation(line: 137, column: 39, scope: !7147)
!7228 = !DILocation(line: 137, column: 14, scope: !7147)
!7229 = !DILocation(line: 137, column: 12, scope: !7147)
!7230 = !DILocation(line: 138, column: 4, scope: !7149)
!7231 = !DILocation(line: 138, column: 4, scope: !7152)
!7232 = !DILocation(line: 138, column: 4, scope: !7151)
!7233 = !DILocation(line: 138, column: 4, scope: !7234)
!7234 = distinct !DILexicalBlock(scope: !7151, file: !3, line: 138, column: 4)
!7235 = !DILocation(line: 138, column: 4, scope: !7236)
!7236 = distinct !DILexicalBlock(scope: !7151, file: !3, line: 138, column: 4)
!7237 = !{i64 2155671738, i64 2155671767, i64 2155671813, i64 2155671871, i64 2155671925, i64 2155671979, i64 2155672034, i64 2155672065, i64 2155672373, i64 2155672379, i64 2155672426, i64 2155672449, i64 2155672475}
!7238 = !DILocation(line: 138, column: 4, scope: !7239)
!7239 = distinct !DILexicalBlock(scope: !7151, file: !3, line: 138, column: 4)
!7240 = !DILocation(line: 138, column: 4, scope: !7147)
!7241 = !DILocation(line: 139, column: 13, scope: !7147)
!7242 = !DILocation(line: 139, column: 22, scope: !7147)
!7243 = !DILocation(line: 139, column: 10, scope: !7147)
!7244 = !DILocation(line: 140, column: 3, scope: !7142)
!7245 = distinct !{!7245, !7218, !7244, !6594, !6413}
!7246 = !DILocation(line: 141, column: 12, scope: !7142)
!7247 = !DILocation(line: 141, column: 20, scope: !7142)
!7248 = !DILocation(line: 141, column: 4, scope: !7142)
!7249 = !DILocation(line: 141, column: 10, scope: !7142)
!7250 = !DILocation(line: 142, column: 2, scope: !7143)
!7251 = !DILocation(line: 142, column: 2, scope: !7142)
!7252 = !DILocation(line: 144, column: 2, scope: !7132)
!7253 = !DILocation(line: 144, column: 10, scope: !7132)
!7254 = !DILocation(line: 144, column: 23, scope: !7132)
!7255 = !DILocation(line: 145, column: 9, scope: !7132)
!7256 = !DILocation(line: 145, column: 2, scope: !7132)
!7257 = !DILocation(line: 146, column: 1, scope: !7132)
!7258 = distinct !DISubprogram(name: "cgroup_base_stat_flush", scope: !3, file: !3, line: 343, type: !6325, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7259)
!7259 = !{!7260, !7261, !7262, !7263, !7264, !7265, !7266}
!7260 = !DILocalVariable(name: "cgrp", arg: 1, scope: !7258, file: !3, line: 343, type: !491)
!7261 = !DILocalVariable(name: "cpu", arg: 2, scope: !7258, file: !3, line: 343, type: !25)
!7262 = !DILocalVariable(name: "rstatc", scope: !7258, file: !3, line: 345, type: !466)
!7263 = !DILocalVariable(name: "parent", scope: !7258, file: !3, line: 346, type: !491)
!7264 = !DILocalVariable(name: "prstatc", scope: !7258, file: !3, line: 347, type: !466)
!7265 = !DILocalVariable(name: "delta", scope: !7258, file: !3, line: 348, type: !475)
!7266 = !DILocalVariable(name: "seq", scope: !7258, file: !3, line: 349, type: !7)
!7267 = !DILocation(line: 343, column: 51, scope: !7258)
!7268 = !DILocation(line: 343, column: 61, scope: !7258)
!7269 = !DILocation(line: 345, column: 2, scope: !7258)
!7270 = !DILocation(line: 345, column: 27, scope: !7258)
!7271 = !DILocation(line: 345, column: 53, scope: !7258)
!7272 = !DILocation(line: 345, column: 59, scope: !7258)
!7273 = !DILocation(line: 345, column: 36, scope: !7258)
!7274 = !DILocation(line: 346, column: 2, scope: !7258)
!7275 = !DILocation(line: 346, column: 17, scope: !7258)
!7276 = !DILocation(line: 346, column: 40, scope: !7258)
!7277 = !DILocation(line: 346, column: 26, scope: !7258)
!7278 = !DILocation(line: 347, column: 2, scope: !7258)
!7279 = !DILocation(line: 347, column: 27, scope: !7258)
!7280 = !DILocation(line: 348, column: 2, scope: !7258)
!7281 = !DILocation(line: 348, column: 26, scope: !7258)
!7282 = !DILocation(line: 349, column: 2, scope: !7258)
!7283 = !DILocation(line: 349, column: 11, scope: !7258)
!7284 = !DILocation(line: 352, column: 7, scope: !7285)
!7285 = distinct !DILexicalBlock(scope: !7258, file: !3, line: 352, column: 6)
!7286 = !DILocation(line: 352, column: 6, scope: !7258)
!7287 = !DILocation(line: 353, column: 3, scope: !7285)
!7288 = !DILocation(line: 356, column: 2, scope: !7258)
!7289 = !DILocation(line: 357, column: 34, scope: !7290)
!7290 = distinct !DILexicalBlock(scope: !7258, file: !3, line: 356, column: 5)
!7291 = !DILocation(line: 357, column: 42, scope: !7290)
!7292 = !DILocation(line: 357, column: 9, scope: !7290)
!7293 = !DILocation(line: 357, column: 7, scope: !7290)
!7294 = !DILocation(line: 358, column: 11, scope: !7290)
!7295 = !DILocation(line: 358, column: 19, scope: !7290)
!7296 = !DILocation(line: 359, column: 2, scope: !7290)
!7297 = !DILocation(line: 359, column: 36, scope: !7258)
!7298 = !DILocation(line: 359, column: 44, scope: !7258)
!7299 = !DILocation(line: 359, column: 51, scope: !7258)
!7300 = !DILocation(line: 359, column: 11, scope: !7258)
!7301 = distinct !{!7301, !7288, !7302, !6594, !6413}
!7302 = !DILocation(line: 359, column: 55, scope: !7258)
!7303 = !DILocation(line: 362, column: 32, scope: !7258)
!7304 = !DILocation(line: 362, column: 40, scope: !7258)
!7305 = !DILocation(line: 362, column: 2, scope: !7258)
!7306 = !DILocation(line: 363, column: 24, scope: !7258)
!7307 = !DILocation(line: 363, column: 30, scope: !7258)
!7308 = !DILocation(line: 363, column: 2, scope: !7258)
!7309 = !DILocation(line: 364, column: 24, scope: !7258)
!7310 = !DILocation(line: 364, column: 32, scope: !7258)
!7311 = !DILocation(line: 364, column: 2, scope: !7258)
!7312 = !DILocation(line: 365, column: 24, scope: !7258)
!7313 = !DILocation(line: 365, column: 32, scope: !7258)
!7314 = !DILocation(line: 365, column: 2, scope: !7258)
!7315 = !DILocation(line: 368, column: 20, scope: !7316)
!7316 = distinct !DILexicalBlock(scope: !7258, file: !3, line: 368, column: 6)
!7317 = !DILocation(line: 368, column: 6, scope: !7316)
!7318 = !DILocation(line: 368, column: 6, scope: !7258)
!7319 = !DILocation(line: 369, column: 11, scope: !7320)
!7320 = distinct !DILexicalBlock(scope: !7316, file: !3, line: 368, column: 29)
!7321 = !DILocation(line: 369, column: 17, scope: !7320)
!7322 = !DILocation(line: 370, column: 33, scope: !7320)
!7323 = !DILocation(line: 370, column: 39, scope: !7320)
!7324 = !DILocation(line: 370, column: 3, scope: !7320)
!7325 = !DILocation(line: 371, column: 25, scope: !7320)
!7326 = !DILocation(line: 371, column: 33, scope: !7320)
!7327 = !DILocation(line: 371, column: 3, scope: !7320)
!7328 = !DILocation(line: 372, column: 25, scope: !7320)
!7329 = !DILocation(line: 372, column: 31, scope: !7320)
!7330 = !DILocation(line: 372, column: 3, scope: !7320)
!7331 = !DILocation(line: 374, column: 11, scope: !7320)
!7332 = !DILocation(line: 374, column: 19, scope: !7320)
!7333 = !DILocation(line: 375, column: 30, scope: !7320)
!7334 = !DILocation(line: 375, column: 38, scope: !7320)
!7335 = !DILocation(line: 375, column: 13, scope: !7320)
!7336 = !DILocation(line: 375, column: 11, scope: !7320)
!7337 = !DILocation(line: 376, column: 33, scope: !7320)
!7338 = !DILocation(line: 376, column: 41, scope: !7320)
!7339 = !DILocation(line: 376, column: 3, scope: !7320)
!7340 = !DILocation(line: 377, column: 25, scope: !7320)
!7341 = !DILocation(line: 377, column: 34, scope: !7320)
!7342 = !DILocation(line: 377, column: 3, scope: !7320)
!7343 = !DILocation(line: 378, column: 25, scope: !7320)
!7344 = !DILocation(line: 378, column: 33, scope: !7320)
!7345 = !DILocation(line: 378, column: 3, scope: !7320)
!7346 = !DILocation(line: 379, column: 2, scope: !7320)
!7347 = !DILocation(line: 380, column: 1, scope: !7258)
!7348 = distinct !DISubprogram(name: "rcu_read_lock", scope: !7349, file: !7349, line: 782, type: !2702, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7349 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!7350 = !DILocation(line: 784, column: 2, scope: !7348)
!7351 = !DILocation(line: 786, column: 2, scope: !7348)
!7352 = !DILocation(line: 786, column: 2, scope: !7353)
!7353 = distinct !DILexicalBlock(scope: !7348, file: !7349, line: 786, column: 2)
!7354 = !DILocation(line: 787, column: 2, scope: !7348)
!7355 = !DILocation(line: 787, column: 2, scope: !7356)
!7356 = distinct !DILexicalBlock(scope: !7348, file: !7349, line: 787, column: 2)
!7357 = !DILocation(line: 789, column: 1, scope: !7348)
!7358 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !7349, file: !7349, line: 813, type: !2702, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7359 = !DILocation(line: 815, column: 2, scope: !7358)
!7360 = !DILocation(line: 815, column: 2, scope: !7361)
!7361 = distinct !DILexicalBlock(scope: !7358, file: !7349, line: 815, column: 2)
!7362 = !DILocation(line: 818, column: 2, scope: !7358)
!7363 = !DILocation(line: 819, column: 2, scope: !7358)
!7364 = !DILocation(line: 819, column: 2, scope: !7365)
!7365 = distinct !DILexicalBlock(scope: !7358, file: !7349, line: 819, column: 2)
!7366 = !DILocation(line: 820, column: 1, scope: !7358)
!7367 = distinct !DISubprogram(name: "need_resched", scope: !1914, file: !1914, line: 2260, type: !2224, scopeLine: 2261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7368 = !DILocation(line: 2262, column: 9, scope: !7367)
!7369 = !DILocation(line: 2262, column: 2, scope: !7367)
!7370 = distinct !DISubprogram(name: "spin_needbreak", scope: !1914, file: !1914, line: 2234, type: !7371, scopeLine: 2235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7373)
!7371 = !DISubroutineType(types: !7372)
!7372 = !{!25, !1964}
!7373 = !{!7374}
!7374 = !DILocalVariable(name: "lock", arg: 1, scope: !7370, file: !1914, line: 2234, type: !1964)
!7375 = !DILocation(line: 2234, column: 46, scope: !7370)
!7376 = !DILocation(line: 2237, column: 27, scope: !7370)
!7377 = !DILocation(line: 2237, column: 9, scope: !7370)
!7378 = !DILocation(line: 2237, column: 2, scope: !7370)
!7379 = distinct !DISubprogram(name: "__might_resched", scope: !5427, file: !5427, line: 184, type: !7380, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7382)
!7380 = !DISubroutineType(types: !7381)
!7381 = !{null, !19, !25, !7}
!7382 = !{!7383, !7384, !7385}
!7383 = !DILocalVariable(name: "file", arg: 1, scope: !7379, file: !5427, line: 184, type: !19)
!7384 = !DILocalVariable(name: "line", arg: 2, scope: !7379, file: !5427, line: 184, type: !25)
!7385 = !DILocalVariable(name: "offsets", arg: 3, scope: !7379, file: !5427, line: 185, type: !7)
!7386 = !DILocation(line: 184, column: 50, scope: !7379)
!7387 = !DILocation(line: 184, column: 60, scope: !7379)
!7388 = !DILocation(line: 185, column: 23, scope: !7379)
!7389 = !DILocation(line: 185, column: 34, scope: !7379)
!7390 = !DILocation(line: 2104, column: 9, scope: !7391)
!7391 = distinct !DILexicalBlock(scope: !5432, file: !1914, line: 2104, column: 9)
!7392 = !DILocation(line: 2104, column: 9, scope: !5432)
!7393 = !DILocation(line: 2104, column: 2, scope: !5432)
!7394 = distinct !DISubprogram(name: "cpu_relax", scope: !7395, file: !7395, line: 16, type: !2702, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7395 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!7396 = !DILocation(line: 18, column: 2, scope: !7394)
!7397 = !DILocation(line: 19, column: 1, scope: !7394)
!7398 = distinct !DISubprogram(name: "__u64_stats_fetch_begin", scope: !472, file: !472, line: 102, type: !7399, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7403)
!7399 = !DISubroutineType(types: !7400)
!7400 = !{!7, !7401}
!7401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7402, size: 64)
!7402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!7403 = !{!7404}
!7404 = !DILocalVariable(name: "syncp", arg: 1, scope: !7398, file: !472, line: 102, type: !7401)
!7405 = !DILocation(line: 102, column: 81, scope: !7398)
!7406 = !DILocation(line: 104, column: 2, scope: !7398)
!7407 = distinct !DISubprogram(name: "__u64_stats_fetch_retry", scope: !472, file: !472, line: 106, type: !7408, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7410)
!7408 = !DISubroutineType(types: !7409)
!7409 = !{!804, !7401, !7}
!7410 = !{!7411, !7412}
!7411 = !DILocalVariable(name: "syncp", arg: 1, scope: !7407, file: !472, line: 106, type: !7401)
!7412 = !DILocalVariable(name: "start", arg: 2, scope: !7407, file: !472, line: 107, type: !7)
!7413 = !DILocation(line: 106, column: 73, scope: !7407)
!7414 = !DILocation(line: 107, column: 22, scope: !7407)
!7415 = !DILocation(line: 109, column: 2, scope: !7407)
!7416 = distinct !DISubprogram(name: "cgroup_base_stat_sub", scope: !3, file: !3, line: 332, type: !7417, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7419)
!7417 = !DISubroutineType(types: !7418)
!7418 = !{null, !7055, !7055}
!7419 = !{!7420, !7421}
!7420 = !DILocalVariable(name: "dst_bstat", arg: 1, scope: !7416, file: !3, line: 332, type: !7055)
!7421 = !DILocalVariable(name: "src_bstat", arg: 2, scope: !7416, file: !3, line: 333, type: !7055)
!7422 = !DILocation(line: 332, column: 59, scope: !7416)
!7423 = !DILocation(line: 333, column: 31, scope: !7416)
!7424 = !DILocation(line: 335, column: 30, scope: !7416)
!7425 = !DILocation(line: 335, column: 41, scope: !7416)
!7426 = !DILocation(line: 335, column: 49, scope: !7416)
!7427 = !DILocation(line: 335, column: 2, scope: !7416)
!7428 = !DILocation(line: 335, column: 13, scope: !7416)
!7429 = !DILocation(line: 335, column: 21, scope: !7416)
!7430 = !DILocation(line: 335, column: 27, scope: !7416)
!7431 = !DILocation(line: 336, column: 30, scope: !7416)
!7432 = !DILocation(line: 336, column: 41, scope: !7416)
!7433 = !DILocation(line: 336, column: 49, scope: !7416)
!7434 = !DILocation(line: 336, column: 2, scope: !7416)
!7435 = !DILocation(line: 336, column: 13, scope: !7416)
!7436 = !DILocation(line: 336, column: 21, scope: !7416)
!7437 = !DILocation(line: 336, column: 27, scope: !7416)
!7438 = !DILocation(line: 337, column: 41, scope: !7416)
!7439 = !DILocation(line: 337, column: 52, scope: !7416)
!7440 = !DILocation(line: 337, column: 60, scope: !7416)
!7441 = !DILocation(line: 337, column: 2, scope: !7416)
!7442 = !DILocation(line: 337, column: 13, scope: !7416)
!7443 = !DILocation(line: 337, column: 21, scope: !7416)
!7444 = !DILocation(line: 337, column: 38, scope: !7416)
!7445 = !DILocation(line: 341, column: 1, scope: !7416)
!7446 = distinct !DISubprogram(name: "cgroup_base_stat_add", scope: !3, file: !3, line: 321, type: !7417, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7447)
!7447 = !{!7448, !7449}
!7448 = !DILocalVariable(name: "dst_bstat", arg: 1, scope: !7446, file: !3, line: 321, type: !7055)
!7449 = !DILocalVariable(name: "src_bstat", arg: 2, scope: !7446, file: !3, line: 322, type: !7055)
!7450 = !DILocation(line: 321, column: 59, scope: !7446)
!7451 = !DILocation(line: 322, column: 31, scope: !7446)
!7452 = !DILocation(line: 324, column: 30, scope: !7446)
!7453 = !DILocation(line: 324, column: 41, scope: !7446)
!7454 = !DILocation(line: 324, column: 49, scope: !7446)
!7455 = !DILocation(line: 324, column: 2, scope: !7446)
!7456 = !DILocation(line: 324, column: 13, scope: !7446)
!7457 = !DILocation(line: 324, column: 21, scope: !7446)
!7458 = !DILocation(line: 324, column: 27, scope: !7446)
!7459 = !DILocation(line: 325, column: 30, scope: !7446)
!7460 = !DILocation(line: 325, column: 41, scope: !7446)
!7461 = !DILocation(line: 325, column: 49, scope: !7446)
!7462 = !DILocation(line: 325, column: 2, scope: !7446)
!7463 = !DILocation(line: 325, column: 13, scope: !7446)
!7464 = !DILocation(line: 325, column: 21, scope: !7446)
!7465 = !DILocation(line: 325, column: 27, scope: !7446)
!7466 = !DILocation(line: 326, column: 41, scope: !7446)
!7467 = !DILocation(line: 326, column: 52, scope: !7446)
!7468 = !DILocation(line: 326, column: 60, scope: !7446)
!7469 = !DILocation(line: 326, column: 2, scope: !7446)
!7470 = !DILocation(line: 326, column: 13, scope: !7446)
!7471 = !DILocation(line: 326, column: 21, scope: !7446)
!7472 = !DILocation(line: 326, column: 38, scope: !7446)
!7473 = !DILocation(line: 330, column: 1, scope: !7446)
!7474 = !DISubprogram(name: "__rcu_read_lock", scope: !7349, file: !7349, line: 74, type: !2702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7475 = !DISubprogram(name: "__rcu_read_unlock", scope: !7349, file: !7349, line: 75, type: !2702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7476 = distinct !DISubprogram(name: "tif_need_resched", scope: !7477, file: !7477, line: 182, type: !2224, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7477 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!7478 = !DILocation(line: 185, column: 28, scope: !7476)
!7479 = !DILocation(line: 185, column: 51, scope: !7476)
!7480 = !DILocation(line: 184, column: 9, scope: !7476)
!7481 = !DILocation(line: 184, column: 2, scope: !7476)
!7482 = distinct !DISubprogram(name: "arch_test_bit", scope: !7483, file: !7483, line: 237, type: !7484, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7489)
!7483 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7484 = !DISubroutineType(types: !7485)
!7485 = !{!804, !42, !7486}
!7486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7487, size: 64)
!7487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7488)
!7488 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!7489 = !{!7490, !7491}
!7490 = !DILocalVariable(name: "nr", arg: 1, scope: !7482, file: !7483, line: 237, type: !42)
!7491 = !DILocalVariable(name: "addr", arg: 2, scope: !7482, file: !7483, line: 237, type: !7486)
!7492 = !DILocation(line: 237, column: 29, scope: !7482)
!7493 = !DILocation(line: 237, column: 63, scope: !7482)
!7494 = !DILocation(line: 239, column: 30, scope: !7482)
!7495 = !DILocation(line: 239, column: 9, scope: !7482)
!7496 = !DILocation(line: 239, column: 54, scope: !7482)
!7497 = !DILocation(line: 239, column: 58, scope: !7482)
!7498 = !DILocation(line: 239, column: 36, scope: !7482)
!7499 = !DILocation(line: 240, column: 26, scope: !7482)
!7500 = !DILocation(line: 240, column: 30, scope: !7482)
!7501 = !DILocation(line: 240, column: 8, scope: !7482)
!7502 = !DILocation(line: 239, column: 2, scope: !7482)
!7503 = distinct !DISubprogram(name: "get_current", scope: !7504, file: !7504, line: 39, type: !7505, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7507)
!7504 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!7505 = !DISubroutineType(types: !7506)
!7506 = !{!3635}
!7507 = !{!7508, !7510, !7512}
!7508 = !DILocalVariable(name: "pscr_ret__", scope: !7509, file: !7504, line: 41, type: !3635)
!7509 = distinct !DILexicalBlock(scope: !7503, file: !7504, line: 41, column: 9)
!7510 = !DILocalVariable(name: "__vpp_verify", scope: !7511, file: !7504, line: 41, type: !1793)
!7511 = distinct !DILexicalBlock(scope: !7509, file: !7504, line: 41, column: 9)
!7512 = !DILocalVariable(name: "pfo_val__", scope: !7513, file: !7504, line: 41, type: !482)
!7513 = distinct !DILexicalBlock(scope: !7509, file: !7504, line: 41, column: 9)
!7514 = !DILocation(line: 41, column: 9, scope: !7509)
!7515 = !DILocation(line: 41, column: 9, scope: !7511)
!7516 = !DILocation(line: 41, column: 9, scope: !7513)
!7517 = !{i64 2148240181}
!7518 = !DILocation(line: 41, column: 9, scope: !7503)
!7519 = !DILocation(line: 41, column: 2, scope: !7503)
!7520 = distinct !DISubprogram(name: "constant_test_bit", scope: !7483, file: !7483, line: 204, type: !7521, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7523)
!7521 = !DISubroutineType(types: !7522)
!7522 = !{!804, !1037, !7486}
!7523 = !{!7524, !7525}
!7524 = !DILocalVariable(name: "nr", arg: 1, scope: !7520, file: !7483, line: 204, type: !1037)
!7525 = !DILocalVariable(name: "addr", arg: 2, scope: !7520, file: !7483, line: 204, type: !7486)
!7526 = !DILocation(line: 204, column: 52, scope: !7520)
!7527 = !DILocation(line: 204, column: 86, scope: !7520)
!7528 = !DILocation(line: 206, column: 19, scope: !7520)
!7529 = !DILocation(line: 206, column: 22, scope: !7520)
!7530 = !DILocation(line: 206, column: 15, scope: !7520)
!7531 = !DILocation(line: 207, column: 4, scope: !7520)
!7532 = !DILocation(line: 207, column: 9, scope: !7520)
!7533 = !DILocation(line: 207, column: 12, scope: !7520)
!7534 = !DILocation(line: 206, column: 44, scope: !7520)
!7535 = !DILocation(line: 207, column: 37, scope: !7520)
!7536 = !DILocation(line: 206, column: 2, scope: !7520)
!7537 = distinct !DISubprogram(name: "variable_test_bit", scope: !7483, file: !7483, line: 224, type: !7521, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7538)
!7538 = !{!7539, !7540, !7541}
!7539 = !DILocalVariable(name: "nr", arg: 1, scope: !7537, file: !7483, line: 224, type: !1037)
!7540 = !DILocalVariable(name: "addr", arg: 2, scope: !7537, file: !7483, line: 224, type: !7486)
!7541 = !DILocalVariable(name: "oldbit", scope: !7537, file: !7483, line: 226, type: !804)
!7542 = !DILocation(line: 224, column: 52, scope: !7537)
!7543 = !DILocation(line: 224, column: 86, scope: !7537)
!7544 = !DILocation(line: 226, column: 2, scope: !7537)
!7545 = !DILocation(line: 226, column: 7, scope: !7537)
!7546 = !DILocation(line: 231, column: 33, scope: !7537)
!7547 = !DILocation(line: 231, column: 46, scope: !7537)
!7548 = !DILocation(line: 228, column: 2, scope: !7537)
!7549 = !{i64 2147947989, i64 2147948063}
!7550 = !DILocation(line: 233, column: 9, scope: !7537)
!7551 = !{i8 0, i8 2}
!7552 = !DILocation(line: 234, column: 1, scope: !7537)
!7553 = !DILocation(line: 233, column: 2, scope: !7537)
!7554 = distinct !DISubprogram(name: "spin_is_contended", scope: !6499, file: !6499, line: 447, type: !7371, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7555)
!7555 = !{!7556}
!7556 = !DILocalVariable(name: "lock", arg: 1, scope: !7554, file: !6499, line: 447, type: !1964)
!7557 = !DILocation(line: 447, column: 58, scope: !7554)
!7558 = !DILocation(line: 449, column: 9, scope: !7554)
!7559 = !DILocation(line: 449, column: 2, scope: !7554)
!7560 = distinct !DISubprogram(name: "queued_spin_is_contended", scope: !7561, file: !7561, line: 81, type: !7562, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7565)
!7561 = !DIFile(filename: "./include/asm-generic/qspinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ee2071dbdb30625b016b6622681cc28")
!7562 = !DISubroutineType(types: !7563)
!7563 = !{!25, !7564}
!7564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!7565 = !{!7566}
!7566 = !DILocalVariable(name: "lock", arg: 1, scope: !7560, file: !7561, line: 81, type: !7564)
!7567 = !DILocation(line: 81, column: 71, scope: !7560)
!7568 = !DILocation(line: 83, column: 22, scope: !7560)
!7569 = !DILocation(line: 83, column: 28, scope: !7560)
!7570 = !DILocation(line: 83, column: 9, scope: !7560)
!7571 = !DILocation(line: 83, column: 33, scope: !7560)
!7572 = !DILocation(line: 83, column: 2, scope: !7560)
!7573 = distinct !DISubprogram(name: "atomic_read", scope: !7574, file: !7574, line: 30, type: !7575, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7579)
!7574 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!7575 = !DISubroutineType(types: !7576)
!7576 = !{!25, !7577}
!7577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7578, size: 64)
!7578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!7579 = !{!7580}
!7580 = !DILocalVariable(name: "v", arg: 1, scope: !7573, file: !7574, line: 30, type: !7577)
!7581 = !DILocation(line: 30, column: 29, scope: !7573)
!7582 = !DILocation(line: 32, column: 25, scope: !7573)
!7583 = !DILocation(line: 32, column: 2, scope: !7573)
!7584 = !DILocation(line: 33, column: 25, scope: !7573)
!7585 = !DILocation(line: 33, column: 9, scope: !7573)
!7586 = !DILocation(line: 33, column: 2, scope: !7573)
!7587 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7588, file: !7588, line: 66, type: !7589, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7594)
!7588 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7589 = !DISubroutineType(types: !7590)
!7590 = !{null, !7591, !38}
!7591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7592, size: 64)
!7592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7593)
!7593 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7594 = !{!7595, !7596}
!7595 = !DILocalVariable(name: "v", arg: 1, scope: !7587, file: !7588, line: 66, type: !7591)
!7596 = !DILocalVariable(name: "size", arg: 2, scope: !7587, file: !7588, line: 66, type: !38)
!7597 = !DILocation(line: 66, column: 73, scope: !7587)
!7598 = !DILocation(line: 66, column: 83, scope: !7587)
!7599 = !DILocation(line: 68, column: 19, scope: !7587)
!7600 = !DILocation(line: 68, column: 22, scope: !7587)
!7601 = !DILocation(line: 68, column: 2, scope: !7587)
!7602 = !DILocation(line: 69, column: 2, scope: !7587)
!7603 = !DILocation(line: 70, column: 1, scope: !7587)
!7604 = distinct !DISubprogram(name: "raw_atomic_read", scope: !7605, file: !7605, line: 442, type: !7575, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7606)
!7605 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7606 = !{!7607}
!7607 = !DILocalVariable(name: "v", arg: 1, scope: !7604, file: !7605, line: 442, type: !7577)
!7608 = !DILocation(line: 442, column: 33, scope: !7604)
!7609 = !DILocation(line: 444, column: 26, scope: !7604)
!7610 = !DILocation(line: 444, column: 9, scope: !7604)
!7611 = !DILocation(line: 444, column: 2, scope: !7604)
!7612 = distinct !DISubprogram(name: "kasan_check_read", scope: !7613, file: !7613, line: 40, type: !7614, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7616)
!7613 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7614 = !DISubroutineType(types: !7615)
!7615 = !{!804, !7591, !7}
!7616 = !{!7617, !7618}
!7617 = !DILocalVariable(name: "p", arg: 1, scope: !7612, file: !7613, line: 40, type: !7591)
!7618 = !DILocalVariable(name: "size", arg: 2, scope: !7612, file: !7613, line: 40, type: !7)
!7619 = !DILocation(line: 40, column: 58, scope: !7612)
!7620 = !DILocation(line: 40, column: 74, scope: !7612)
!7621 = !DILocation(line: 42, column: 2, scope: !7612)
!7622 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6419, file: !6419, line: 229, type: !7623, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7625)
!7623 = !DISubroutineType(types: !7624)
!7624 = !{null, !7591, !38, !25}
!7625 = !{!7626, !7627, !7628}
!7626 = !DILocalVariable(name: "ptr", arg: 1, scope: !7622, file: !6419, line: 229, type: !7591)
!7627 = !DILocalVariable(name: "size", arg: 2, scope: !7622, file: !6419, line: 229, type: !38)
!7628 = !DILocalVariable(name: "type", arg: 3, scope: !7622, file: !6419, line: 230, type: !25)
!7629 = !DILocation(line: 229, column: 60, scope: !7622)
!7630 = !DILocation(line: 229, column: 72, scope: !7622)
!7631 = !DILocation(line: 230, column: 15, scope: !7622)
!7632 = !DILocation(line: 230, column: 23, scope: !7622)
!7633 = distinct !DISubprogram(name: "arch_atomic_read", scope: !7634, file: !7634, line: 17, type: !7575, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7635)
!7634 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7635 = !{!7636}
!7636 = !DILocalVariable(name: "v", arg: 1, scope: !7633, file: !7634, line: 17, type: !7577)
!7637 = !DILocation(line: 17, column: 61, scope: !7633)
!7638 = !DILocation(line: 23, column: 9, scope: !7633)
!7639 = !DILocation(line: 23, column: 2, scope: !7633)
!7640 = distinct !DISubprogram(name: "rep_nop", scope: !7395, file: !7395, line: 11, type: !2702, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7641 = !DILocation(line: 13, column: 2, scope: !7640)
!7642 = !{i64 2105872}
!7643 = !DILocation(line: 14, column: 1, scope: !7640)
!7644 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !6441, file: !6441, line: 41, type: !7130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7645 = distinct !DISubprogram(name: "variable__ffs", scope: !7483, file: !7483, line: 250, type: !7646, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7648)
!7646 = !DISubroutineType(types: !7647)
!7647 = !{!42, !42}
!7648 = !{!7649}
!7649 = !DILocalVariable(name: "word", arg: 1, scope: !7645, file: !7483, line: 250, type: !42)
!7650 = !DILocation(line: 250, column: 66, scope: !7645)
!7651 = !DILocation(line: 254, column: 11, scope: !7645)
!7652 = !DILocation(line: 252, column: 2, scope: !7645)
!7653 = !{i64 443064}
!7654 = !DILocation(line: 255, column: 9, scope: !7645)
!7655 = !DILocation(line: 255, column: 2, scope: !7645)
!7656 = !DISubprogram(name: "_find_next_bit", scope: !6694, file: !6694, line: 11, type: !6695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7657 = distinct !DISubprogram(name: "__preempt_count_add", scope: !7658, file: !7658, line: 78, type: !4291, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7659)
!7658 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!7659 = !{!7660, !7661, !7663}
!7660 = !DILocalVariable(name: "val", arg: 1, scope: !7657, file: !7658, line: 78, type: !25)
!7661 = !DILocalVariable(name: "pao_ID__", scope: !7662, file: !7658, line: 80, type: !2562)
!7662 = distinct !DILexicalBlock(scope: !7657, file: !7658, line: 80, column: 2)
!7663 = !DILocalVariable(name: "pto_val__", scope: !7664, file: !7658, line: 80, type: !768)
!7664 = distinct !DILexicalBlock(scope: !7665, file: !7658, line: 80, column: 2)
!7665 = distinct !DILexicalBlock(scope: !7666, file: !7658, line: 80, column: 2)
!7666 = distinct !DILexicalBlock(scope: !7662, file: !7658, line: 80, column: 2)
!7667 = !DILocation(line: 78, column: 53, scope: !7657)
!7668 = !DILocation(line: 80, column: 2, scope: !7657)
!7669 = !DILocation(line: 80, column: 2, scope: !7662)
!7670 = !DILocation(line: 80, column: 2, scope: !7666)
!7671 = !DILocation(line: 80, column: 2, scope: !7672)
!7672 = distinct !DILexicalBlock(scope: !7666, file: !7658, line: 80, column: 2)
!7673 = !{i64 2149637086}
!7674 = !DILocation(line: 80, column: 2, scope: !7665)
!7675 = !DILocation(line: 80, column: 2, scope: !7676)
!7676 = distinct !DILexicalBlock(scope: !7665, file: !7658, line: 80, column: 2)
!7677 = !{i64 2149637381}
!7678 = !DILocation(line: 80, column: 2, scope: !7664)
!7679 = !{i64 2149638086}
!7680 = !DILocation(line: 81, column: 1, scope: !7657)
!7681 = distinct !DISubprogram(name: "u64_stats_update_begin_irqsave", scope: !472, file: !472, line: 191, type: !7682, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7684)
!7682 = !DISubroutineType(types: !7683)
!7683 = !{!42, !6736}
!7684 = !{!7685, !7686}
!7685 = !DILocalVariable(name: "syncp", arg: 1, scope: !7681, file: !472, line: 191, type: !6736)
!7686 = !DILocalVariable(name: "flags", scope: !7681, file: !472, line: 193, type: !42)
!7687 = !DILocation(line: 191, column: 83, scope: !7681)
!7688 = !DILocation(line: 193, column: 2, scope: !7681)
!7689 = !DILocation(line: 193, column: 16, scope: !7681)
!7690 = !DILocation(line: 193, column: 24, scope: !7681)
!7691 = !DILocation(line: 195, column: 27, scope: !7681)
!7692 = !DILocation(line: 195, column: 2, scope: !7681)
!7693 = !DILocation(line: 196, column: 9, scope: !7681)
!7694 = !DILocation(line: 197, column: 1, scope: !7681)
!7695 = !DILocation(line: 196, column: 2, scope: !7681)
!7696 = distinct !DISubprogram(name: "__u64_stats_irqsave", scope: !472, file: !472, line: 100, type: !7697, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7697 = !DISubroutineType(types: !7698)
!7698 = !{!42}
!7699 = !DILocation(line: 100, column: 57, scope: !7696)
!7700 = distinct !DISubprogram(name: "__u64_stats_update_begin", scope: !472, file: !472, line: 98, type: !6734, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7701)
!7701 = !{!7702}
!7702 = !DILocalVariable(name: "syncp", arg: 1, scope: !7700, file: !472, line: 98, type: !6736)
!7703 = !DILocation(line: 98, column: 68, scope: !7700)
!7704 = !DILocation(line: 98, column: 77, scope: !7700)
!7705 = distinct !DISubprogram(name: "u64_stats_update_end_irqrestore", scope: !472, file: !472, line: 199, type: !7706, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7708)
!7706 = !DISubroutineType(types: !7707)
!7707 = !{null, !6736, !42}
!7708 = !{!7709, !7710}
!7709 = !DILocalVariable(name: "syncp", arg: 1, scope: !7705, file: !472, line: 199, type: !6736)
!7710 = !DILocalVariable(name: "flags", arg: 2, scope: !7705, file: !472, line: 200, type: !42)
!7711 = !DILocation(line: 199, column: 75, scope: !7705)
!7712 = !DILocation(line: 200, column: 24, scope: !7705)
!7713 = !DILocation(line: 202, column: 25, scope: !7705)
!7714 = !DILocation(line: 202, column: 2, scope: !7705)
!7715 = !DILocation(line: 203, column: 25, scope: !7705)
!7716 = !DILocation(line: 203, column: 2, scope: !7705)
!7717 = !DILocation(line: 204, column: 1, scope: !7705)
!7718 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !7719, file: !7719, line: 313, type: !7720, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7722)
!7719 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!7720 = !DISubroutineType(types: !7721)
!7721 = !{null, !19}
!7722 = !{!7723}
!7723 = !DILocalVariable(name: "op", arg: 1, scope: !7718, file: !7719, line: 313, type: !19)
!7724 = !DILocation(line: 313, column: 66, scope: !7718)
!7725 = !DILocation(line: 313, column: 72, scope: !7718)
!7726 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !7658, file: !7658, line: 93, type: !2224, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7727)
!7727 = !{!7728}
!7728 = !DILocalVariable(name: "c", scope: !7729, file: !7658, line: 95, type: !804)
!7729 = distinct !DILexicalBlock(scope: !7726, file: !7658, line: 95, column: 9)
!7730 = !DILocation(line: 95, column: 9, scope: !7729)
!7731 = !{i64 2149641442, i64 2149641535}
!7732 = !DILocation(line: 95, column: 9, scope: !7726)
!7733 = !DILocation(line: 95, column: 2, scope: !7726)
!7734 = distinct !DISubprogram(name: "__u64_stats_update_end", scope: !472, file: !472, line: 99, type: !6734, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7735)
!7735 = !{!7736}
!7736 = !DILocalVariable(name: "syncp", arg: 1, scope: !7734, file: !472, line: 99, type: !6736)
!7737 = !DILocation(line: 99, column: 66, scope: !7734)
!7738 = !DILocation(line: 99, column: 75, scope: !7734)
!7739 = distinct !DISubprogram(name: "__u64_stats_irqrestore", scope: !472, file: !472, line: 101, type: !7740, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7742)
!7740 = !DISubroutineType(types: !7741)
!7741 = !{null, !42}
!7742 = !{!7743}
!7743 = !DILocalVariable(name: "flags", arg: 1, scope: !7739, file: !472, line: 101, type: !42)
!7744 = !DILocation(line: 101, column: 57, scope: !7739)
!7745 = !DILocation(line: 101, column: 66, scope: !7739)
!7746 = !DISubprogram(name: "of_css", scope: !4036, file: !4036, line: 576, type: !7747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7747 = !DISubroutineType(types: !7748)
!7748 = !{!506, !2290}
!7749 = distinct !DISubprogram(name: "kcpustat_cpu_fetch", scope: !282, file: !282, line: 106, type: !7750, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7752)
!7750 = !DISubroutineType(types: !7751)
!7751 = !{null, !5406, !25}
!7752 = !{!7753, !7754, !7755, !7758}
!7753 = !DILocalVariable(name: "dst", arg: 1, scope: !7749, file: !282, line: 106, type: !5406)
!7754 = !DILocalVariable(name: "cpu", arg: 2, scope: !7749, file: !282, line: 106, type: !25)
!7755 = !DILocalVariable(name: "__vpp_verify", scope: !7756, file: !282, line: 108, type: !1793)
!7756 = distinct !DILexicalBlock(scope: !7757, file: !282, line: 108, column: 9)
!7757 = distinct !DILexicalBlock(scope: !7749, file: !282, line: 108, column: 9)
!7758 = !DILocalVariable(name: "__ptr", scope: !7759, file: !282, line: 108, type: !42)
!7759 = distinct !DILexicalBlock(scope: !7757, file: !282, line: 108, column: 9)
!7760 = !DILocation(line: 106, column: 62, scope: !7749)
!7761 = !DILocation(line: 106, column: 71, scope: !7749)
!7762 = !DILocation(line: 108, column: 3, scope: !7749)
!7763 = !DILocation(line: 108, column: 9, scope: !7757)
!7764 = !DILocation(line: 108, column: 9, scope: !7756)
!7765 = !DILocation(line: 108, column: 9, scope: !7759)
!7766 = !DILocation(line: 108, column: 9, scope: !7749)
!7767 = !DILocation(line: 109, column: 1, scope: !7749)
!7768 = distinct !DISubprogram(name: "register_btf_kfunc_id_set", scope: !5456, file: !5456, line: 528, type: !7769, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7772)
!7769 = !DISubroutineType(types: !7770)
!7770 = !{!25, !295, !7771}
!7771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5454, size: 64)
!7772 = !{!7773, !7774}
!7773 = !DILocalVariable(name: "prog_type", arg: 1, scope: !7768, file: !5456, line: 528, type: !295)
!7774 = !DILocalVariable(name: "s", arg: 2, scope: !7768, file: !5456, line: 529, type: !7771)
!7775 = !DILocation(line: 528, column: 64, scope: !7768)
!7776 = !DILocation(line: 529, column: 41, scope: !7768)
!7777 = !DILocation(line: 531, column: 2, scope: !7768)
