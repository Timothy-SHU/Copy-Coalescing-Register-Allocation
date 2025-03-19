; ModuleID = 'block/blk-ioc.c'
source_filename = "block/blk-ioc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_put_io_context: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad put_io_context ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_set_task_ioprio: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad set_task_ioprio ; .previous"
module asm ".section\09\22.initcall4.init..kmod_blk_ioc__357_453_blk_ioc_init\22, \22a\22\09\09"
module asm "__initcall__kmod_blk_ioc__357_453_blk_ioc_init4:\09\09\09"
module asm ".long\09__initstub__kmod_blk_ioc__357_453_blk_ioc_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.pcpu_hot = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15, [16 x i8] }
%struct.anon.15 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, i16 }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, i64, i64, %struct.list_head, i32, i64, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i64, [16 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8] }
%struct.cpumask = type { [1 x i64] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, ptr, ptr }
%struct.restart_block = type { i64, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.posix_cputimers_work = type { %struct.callback_head, %struct.mutex, i32 }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x ptr], i64, i64, i64, i64, i64, ptr, i64, i8, i32, [40 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.fpu = type { i32, i64, ptr, ptr, %struct.fpu_state_perm, %struct.fpu_state_perm, %struct.fpstate }
%struct.fpu_state_perm = type { i64, i32, i32 }
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.13 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_t = type { i64 }
%union.anon.13 = type { %struct.callback_head }

@.str = private unnamed_addr constant [16 x i8] c"block/blk-ioc.c\00", align 1, !dbg !0
@iocontext_cachep = internal global ptr null, align 8, !dbg !7
@__UNIQUE_ID___addressable_put_io_context353 = internal global ptr @put_io_context, section ".discard.addressable", align 8, !dbg !5502
@__UNIQUE_ID___addressable_set_task_ioprio356 = internal global ptr @set_task_ioprio, section ".discard.addressable", align 8, !dbg !5504
@__UNIQUE_ID___addressable___initstub__kmod_blk_ioc__357_453_blk_ioc_init4358 = internal global ptr @__initstub__kmod_blk_ioc__357_453_blk_ioc_init4, section ".discard.addressable", align 8, !dbg !5506
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.1 = private unnamed_addr constant [11 x i8] c"blkdev_ioc\00", align 1, !dbg !5508
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_put_io_context353, ptr @__UNIQUE_ID___addressable_set_task_ioprio356, ptr @__UNIQUE_ID___addressable___initstub__kmod_blk_ioc__357_453_blk_ioc_init4358], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @put_io_context(ptr noundef %ioc) #0 align 16 !dbg !5522 {
entry:
  %ioc.addr = alloca ptr, align 8
  store ptr %ioc, ptr %ioc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ioc.addr, metadata !5526, metadata !DIExpression()), !dbg !5527
  br label %do.body, !dbg !5528

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %ioc.addr, align 8, !dbg !5529
  %refcount = getelementptr inbounds %struct.io_context, ptr %0, i32 0, i32 0, !dbg !5529
  %call = call i64 @atomic_long_read(ptr noundef %refcount) #9, !dbg !5529
  %cmp = icmp sle i64 %call, 0, !dbg !5529
  %lnot = xor i1 %cmp, true, !dbg !5529
  %lnot1 = xor i1 %lnot, true, !dbg !5529
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5529
  %conv = sext i32 %lnot.ext to i64, !dbg !5529
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5529
  %tobool = icmp ne i64 %expval, 0, !dbg !5529
  br i1 %tobool, label %if.then, label %if.end, !dbg !5532

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !5529

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !5533

do.body3:                                         ; preds = %do.body2
  br label %do.end, !dbg !5535

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !5533

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 207, i32 0, i64 12) #10, !dbg !5537, !srcloc !5539
  br label %do.end5, !dbg !5537

do.end5:                                          ; preds = %do.body4
  unreachable, !dbg !5533

do.end6:                                          ; No predecessors!
  br label %if.end, !dbg !5533

if.end:                                           ; preds = %do.end6, %do.body
  br label %do.end7, !dbg !5532

do.end7:                                          ; preds = %if.end
  %1 = load ptr, ptr %ioc.addr, align 8, !dbg !5540
  %refcount8 = getelementptr inbounds %struct.io_context, ptr %1, i32 0, i32 0, !dbg !5542
  %call9 = call zeroext i1 @atomic_long_dec_and_test(ptr noundef %refcount8) #9, !dbg !5543
  br i1 %call9, label %land.lhs.true, label %if.end13, !dbg !5544

land.lhs.true:                                    ; preds = %do.end7
  %2 = load ptr, ptr %ioc.addr, align 8, !dbg !5545
  %call11 = call zeroext i1 @ioc_delay_free(ptr noundef %2) #9, !dbg !5546
  br i1 %call11, label %if.end13, label %if.then12, !dbg !5547

if.then12:                                        ; preds = %land.lhs.true
  %3 = load ptr, ptr @iocontext_cachep, align 8, !dbg !5548
  %4 = load ptr, ptr %ioc.addr, align 8, !dbg !5549
  call void @kmem_cache_free(ptr noundef %3, ptr noundef %4) #9, !dbg !5550
  br label %if.end13, !dbg !5550

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %do.end7
  ret void, !dbg !5551
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #2 align 16 !dbg !5552 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5559, metadata !DIExpression()), !dbg !5560
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5561
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #9, !dbg !5562
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5563
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #9, !dbg !5564
  ret i64 %call, !dbg !5565
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_long_dec_and_test(ptr noundef %v) #2 align 16 !dbg !5566 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5570, metadata !DIExpression()), !dbg !5571
  br label %do.body, !dbg !5572

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5573

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5575
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #9, !dbg !5576
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5577
  %call = call zeroext i1 @raw_atomic_long_dec_and_test(ptr noundef %1) #9, !dbg !5578
  ret i1 %call, !dbg !5579
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ioc_delay_free(ptr noundef %ioc) #4 align 16 !dbg !5580 {
entry:
  %ioc.addr = alloca ptr, align 8
  store ptr %ioc, ptr %ioc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ioc.addr, metadata !5584, metadata !DIExpression()), !dbg !5585
  ret i1 false, !dbg !5586
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5587 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @exit_io_context(ptr noundef %task) #0 align 16 !dbg !5591 {
entry:
  %task.addr = alloca ptr, align 8
  %ioc = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5595, metadata !DIExpression()), !dbg !5597
  call void @llvm.lifetime.start.p0(i64 8, ptr %ioc) #10, !dbg !5598
  call void @llvm.dbg.declare(metadata ptr %ioc, metadata !5596, metadata !DIExpression()), !dbg !5599
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5600
  call void @task_lock(ptr noundef %0) #9, !dbg !5601
  %1 = load ptr, ptr %task.addr, align 8, !dbg !5602
  %io_context = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 131, !dbg !5603
  %2 = load ptr, ptr %io_context, align 64, !dbg !5603
  store ptr %2, ptr %ioc, align 8, !dbg !5604
  %3 = load ptr, ptr %task.addr, align 8, !dbg !5605
  %io_context1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 131, !dbg !5606
  store ptr null, ptr %io_context1, align 64, !dbg !5607
  %4 = load ptr, ptr %task.addr, align 8, !dbg !5608
  call void @task_unlock(ptr noundef %4) #9, !dbg !5609
  %5 = load ptr, ptr %ioc, align 8, !dbg !5610
  %active_ref = getelementptr inbounds %struct.io_context, ptr %5, i32 0, i32 1, !dbg !5612
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef %active_ref) #9, !dbg !5613
  br i1 %call, label %if.then, label %if.end, !dbg !5614

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %ioc, align 8, !dbg !5615
  call void @ioc_exit_icqs(ptr noundef %6) #9, !dbg !5617
  %7 = load ptr, ptr %ioc, align 8, !dbg !5618
  call void @put_io_context(ptr noundef %7) #9, !dbg !5619
  br label %if.end, !dbg !5620

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %ioc) #10, !dbg !5621
  ret void, !dbg !5621
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_lock(ptr noundef %p) #4 align 16 !dbg !5622 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5625, metadata !DIExpression()), !dbg !5626
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5627
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !5628
  call void @spin_lock(ptr noundef %alloc_lock) #9, !dbg !5629
  ret void, !dbg !5630
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_unlock(ptr noundef %p) #4 align 16 !dbg !5631 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5633, metadata !DIExpression()), !dbg !5634
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5635
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !5636
  call void @spin_unlock(ptr noundef %alloc_lock) #9, !dbg !5637
  ret void, !dbg !5638
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #2 align 16 !dbg !5639 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5644, metadata !DIExpression()), !dbg !5645
  br label %do.body, !dbg !5646

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5647

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5649
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #9, !dbg !5650
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5651
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #9, !dbg !5652
  ret i1 %call, !dbg !5653
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ioc_exit_icqs(ptr noundef %ioc) #4 align 16 !dbg !5654 {
entry:
  %ioc.addr = alloca ptr, align 8
  store ptr %ioc, ptr %ioc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ioc.addr, metadata !5656, metadata !DIExpression()), !dbg !5657
  ret void, !dbg !5658
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @set_task_ioprio(ptr noundef %task, i32 noundef %ioprio) #0 align 16 !dbg !5659 {
entry:
  %retval = alloca i32, align 4
  %task.addr = alloca ptr, align 8
  %ioprio.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %cred = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcred = alloca ptr, align 8
  %__UNIQUE_ID_rcu354 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ioc = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5663, metadata !DIExpression()), !dbg !5674
  store i32 %ioprio, ptr %ioprio.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ioprio.addr, metadata !5664, metadata !DIExpression()), !dbg !5675
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !5676
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5665, metadata !DIExpression()), !dbg !5677
  call void @llvm.lifetime.start.p0(i64 8, ptr %cred) #10, !dbg !5678
  call void @llvm.dbg.declare(metadata ptr %cred, metadata !5666, metadata !DIExpression()), !dbg !5679
  br label %do.body, !dbg !5680

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5682

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5682

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #9, !dbg !5680
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !5680
  %0 = load ptr, ptr %cred1, align 32, !dbg !5680
  store ptr %0, ptr %tmp, align 8, !dbg !5682
  %1 = load ptr, ptr %tmp, align 8, !dbg !5680
  store ptr %1, ptr %cred, align 8, !dbg !5679
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcred) #10, !dbg !5678
  call void @llvm.dbg.declare(metadata ptr %tcred, metadata !5667, metadata !DIExpression()), !dbg !5684
  call void @rcu_read_lock() #9, !dbg !5685
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu354) #10, !dbg !5686
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu354, metadata !5668, metadata !DIExpression()), !dbg !5686
  br label %do.body2, !dbg !5687

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !5689

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5689

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %task.addr, align 8, !dbg !5687
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93, !dbg !5687
  %3 = load volatile ptr, ptr %real_cred, align 8, !dbg !5687
  store ptr %3, ptr %tmp5, align 8, !dbg !5689
  %4 = load ptr, ptr %tmp5, align 8, !dbg !5687
  store ptr %4, ptr %__UNIQUE_ID_rcu354, align 8, !dbg !5686
  br label %do.body6, !dbg !5686

do.body6:                                         ; preds = %do.end4
  br label %do.cond7, !dbg !5691

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5691

do.end8:                                          ; preds = %do.cond7
  %5 = load ptr, ptr %__UNIQUE_ID_rcu354, align 8, !dbg !5686
  store ptr %5, ptr %tmp9, align 8, !dbg !5691
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu354) #10, !dbg !5693
  %6 = load ptr, ptr %tmp9, align 8, !dbg !5686
  store ptr %6, ptr %tcred, align 8, !dbg !5694
  %7 = load ptr, ptr %tcred, align 8, !dbg !5695
  %uid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 1, !dbg !5697
  %8 = load ptr, ptr %cred, align 8, !dbg !5698
  %euid = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 5, !dbg !5699
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5700
  %9 = load i32, ptr %coerce.dive, align 8, !dbg !5700
  %coerce.dive10 = getelementptr inbounds %struct.kuid_t, ptr %euid, i32 0, i32 0, !dbg !5700
  %10 = load i32, ptr %coerce.dive10, align 8, !dbg !5700
  %call11 = call zeroext i1 @uid_eq(i32 %9, i32 %10) #9, !dbg !5700
  br i1 %call11, label %if.end, label %land.lhs.true, !dbg !5701

land.lhs.true:                                    ; preds = %do.end8
  %11 = load ptr, ptr %tcred, align 8, !dbg !5702
  %uid12 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 1, !dbg !5703
  %12 = load ptr, ptr %cred, align 8, !dbg !5704
  %uid13 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 1, !dbg !5705
  %coerce.dive14 = getelementptr inbounds %struct.kuid_t, ptr %uid12, i32 0, i32 0, !dbg !5706
  %13 = load i32, ptr %coerce.dive14, align 8, !dbg !5706
  %coerce.dive15 = getelementptr inbounds %struct.kuid_t, ptr %uid13, i32 0, i32 0, !dbg !5706
  %14 = load i32, ptr %coerce.dive15, align 8, !dbg !5706
  %call16 = call zeroext i1 @uid_eq(i32 %13, i32 %14) #9, !dbg !5706
  br i1 %call16, label %if.end, label %land.lhs.true17, !dbg !5707

land.lhs.true17:                                  ; preds = %land.lhs.true
  %call18 = call zeroext i1 @capable(i32 noundef 23) #9, !dbg !5708
  br i1 %call18, label %if.end, label %if.then, !dbg !5709

if.then:                                          ; preds = %land.lhs.true17
  call void @rcu_read_unlock() #9, !dbg !5710
  store i32 -1, ptr %retval, align 4, !dbg !5712
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !5712

if.end:                                           ; preds = %land.lhs.true17, %land.lhs.true, %do.end8
  call void @rcu_read_unlock() #9, !dbg !5713
  %15 = load ptr, ptr %task.addr, align 8, !dbg !5714
  %16 = load i32, ptr %ioprio.addr, align 4, !dbg !5715
  %call19 = call i32 @security_task_setioprio(ptr noundef %15, i32 noundef %16) #9, !dbg !5716
  store i32 %call19, ptr %err, align 4, !dbg !5717
  %17 = load i32, ptr %err, align 4, !dbg !5718
  %tobool = icmp ne i32 %17, 0, !dbg !5718
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !5720

if.then20:                                        ; preds = %if.end
  %18 = load i32, ptr %err, align 4, !dbg !5721
  store i32 %18, ptr %retval, align 4, !dbg !5722
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !5722

if.end21:                                         ; preds = %if.end
  %19 = load ptr, ptr %task.addr, align 8, !dbg !5723
  call void @task_lock(ptr noundef %19) #9, !dbg !5724
  %20 = load ptr, ptr %task.addr, align 8, !dbg !5725
  %io_context = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 131, !dbg !5725
  %21 = load ptr, ptr %io_context, align 64, !dbg !5725
  %tobool22 = icmp ne ptr %21, null, !dbg !5725
  %lnot = xor i1 %tobool22, true, !dbg !5725
  %lnot23 = xor i1 %lnot, true, !dbg !5725
  %lnot24 = xor i1 %lnot23, true, !dbg !5725
  %lnot.ext = zext i1 %lnot24 to i32, !dbg !5725
  %conv = sext i32 %lnot.ext to i64, !dbg !5725
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5725
  %tobool25 = icmp ne i64 %expval, 0, !dbg !5725
  br i1 %tobool25, label %if.then26, label %if.end39, !dbg !5726

if.then26:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 8, ptr %ioc) #10, !dbg !5727
  call void @llvm.dbg.declare(metadata ptr %ioc, metadata !5670, metadata !DIExpression()), !dbg !5728
  %22 = load ptr, ptr %task.addr, align 8, !dbg !5729
  call void @task_unlock(ptr noundef %22) #9, !dbg !5730
  %call27 = call ptr @alloc_io_context(i32 noundef 2080, i32 noundef -1) #9, !dbg !5731
  store ptr %call27, ptr %ioc, align 8, !dbg !5732
  %23 = load ptr, ptr %ioc, align 8, !dbg !5733
  %tobool28 = icmp ne ptr %23, null, !dbg !5733
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !5735

if.then29:                                        ; preds = %if.then26
  store i32 -12, ptr %retval, align 4, !dbg !5736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5736

if.end30:                                         ; preds = %if.then26
  %24 = load ptr, ptr %task.addr, align 8, !dbg !5737
  call void @task_lock(ptr noundef %24) #9, !dbg !5738
  %25 = load ptr, ptr %task.addr, align 8, !dbg !5739
  %flags = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 4, !dbg !5741
  %26 = load i32, ptr %flags, align 4, !dbg !5741
  %and = and i32 %26, 4, !dbg !5742
  %tobool31 = icmp ne i32 %and, 0, !dbg !5742
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5743

if.then32:                                        ; preds = %if.end30
  %27 = load ptr, ptr @iocontext_cachep, align 8, !dbg !5744
  %28 = load ptr, ptr %ioc, align 8, !dbg !5746
  call void @kmem_cache_free(ptr noundef %27, ptr noundef %28) #9, !dbg !5747
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5748

if.end33:                                         ; preds = %if.end30
  %29 = load ptr, ptr %task.addr, align 8, !dbg !5749
  %io_context34 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 131, !dbg !5751
  %30 = load ptr, ptr %io_context34, align 64, !dbg !5751
  %tobool35 = icmp ne ptr %30, null, !dbg !5749
  br i1 %tobool35, label %if.then36, label %if.else, !dbg !5752

if.then36:                                        ; preds = %if.end33
  %31 = load ptr, ptr @iocontext_cachep, align 8, !dbg !5753
  %32 = load ptr, ptr %ioc, align 8, !dbg !5754
  call void @kmem_cache_free(ptr noundef %31, ptr noundef %32) #9, !dbg !5755
  br label %if.end38, !dbg !5755

if.else:                                          ; preds = %if.end33
  %33 = load ptr, ptr %ioc, align 8, !dbg !5756
  %34 = load ptr, ptr %task.addr, align 8, !dbg !5757
  %io_context37 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 131, !dbg !5758
  store ptr %33, ptr %io_context37, align 64, !dbg !5759
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then36
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5760
  br label %cleanup, !dbg !5760

cleanup:                                          ; preds = %if.then32, %if.end38, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %ioc) #10, !dbg !5760
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup43 [
    i32 0, label %cleanup.cont
    i32 8, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end39, !dbg !5761

if.end39:                                         ; preds = %cleanup.cont, %if.end21
  %35 = load i32, ptr %ioprio.addr, align 4, !dbg !5762
  %conv40 = trunc i32 %35 to i16, !dbg !5762
  %36 = load ptr, ptr %task.addr, align 8, !dbg !5763
  %io_context41 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 131, !dbg !5764
  %37 = load ptr, ptr %io_context41, align 64, !dbg !5764
  %ioprio42 = getelementptr inbounds %struct.io_context, ptr %37, i32 0, i32 2, !dbg !5765
  store i16 %conv40, ptr %ioprio42, align 4, !dbg !5766
  br label %out, !dbg !5763

out:                                              ; preds = %if.end39, %cleanup
  call void @llvm.dbg.label(metadata !5673), !dbg !5767
  %38 = load ptr, ptr %task.addr, align 8, !dbg !5768
  call void @task_unlock(ptr noundef %38) #9, !dbg !5769
  store i32 0, ptr %retval, align 4, !dbg !5770
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !5770

cleanup43:                                        ; preds = %out, %cleanup, %if.then20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcred) #10, !dbg !5771
  call void @llvm.lifetime.end.p0(i64 8, ptr %cred) #10, !dbg !5771
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !5771
  %39 = load i32, ptr %retval, align 4, !dbg !5771
  ret i32 %39, !dbg !5771
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #2 align 16 !dbg !5772 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #10, !dbg !5783
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5777, metadata !DIExpression()), !dbg !5783
  br label %do.body, !dbg !5783

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5784
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5779, metadata !DIExpression()), !dbg !5784
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5784
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5784
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5783
  br label %do.cond, !dbg !5784

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5784

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #10, !dbg !5785
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5781, metadata !DIExpression()), !dbg !5785
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #11, !dbg !5785, !srcloc !5786
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5785
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5785
  %3 = inttoptr i64 %2 to ptr, !dbg !5785
  store ptr %3, ptr %tmp, align 8, !dbg !5785
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #10, !dbg !5783
  %4 = load ptr, ptr %tmp, align 8, !dbg !5785
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5783
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5783
  store ptr %5, ptr %tmp1, align 8, !dbg !5783
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #10, !dbg !5787
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5783
  ret ptr %6, !dbg !5788
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #2 align 16 !dbg !5789 {
entry:
  call void @__rcu_read_lock() #9, !dbg !5791
  br label %do.body, !dbg !5792

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5793

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !5795

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5796

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5798
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_eq(i32 %left.coerce, i32 %right.coerce) #4 align 16 !dbg !5799 {
entry:
  %left = alloca %struct.kuid_t, align 4
  %right = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !5803, metadata !DIExpression()), !dbg !5805
  call void @llvm.dbg.declare(metadata ptr %right, metadata !5804, metadata !DIExpression()), !dbg !5806
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0, !dbg !5807
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !5807
  %call = call i32 @__kuid_val(i32 %0) #9, !dbg !5807
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0, !dbg !5808
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !5808
  %call4 = call i32 @__kuid_val(i32 %1) #9, !dbg !5808
  %cmp = icmp eq i32 %call, %call4, !dbg !5809
  ret i1 %cmp, !dbg !5810
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5811 dso_local zeroext i1 @capable(i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #4 align 16 !dbg !5814 {
entry:
  br label %do.body, !dbg !5815

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5816

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #9, !dbg !5818
  br label %do.body1, !dbg !5819

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5820

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5822
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5823 dso_local i32 @security_task_setioprio(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_io_context(i32 noundef %gfp_flags, i32 noundef %node) #0 align 16 !dbg !5825 {
entry:
  %retval = alloca ptr, align 8
  %gfp_flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %ioc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %gfp_flags, ptr %gfp_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_flags.addr, metadata !5829, metadata !DIExpression()), !dbg !5832
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5830, metadata !DIExpression()), !dbg !5833
  call void @llvm.lifetime.start.p0(i64 8, ptr %ioc) #10, !dbg !5834
  call void @llvm.dbg.declare(metadata ptr %ioc, metadata !5831, metadata !DIExpression()), !dbg !5835
  %0 = load ptr, ptr @iocontext_cachep, align 8, !dbg !5836
  %1 = load i32, ptr %gfp_flags.addr, align 4, !dbg !5837
  %or = or i32 %1, 256, !dbg !5838
  %2 = load i32, ptr %node.addr, align 4, !dbg !5839
  %call = call noalias align 8 ptr @kmem_cache_alloc_node(ptr noundef %0, i32 noundef %or, i32 noundef %2) #9, !dbg !5840
  store ptr %call, ptr %ioc, align 8, !dbg !5841
  %3 = load ptr, ptr %ioc, align 8, !dbg !5842
  %tobool = icmp ne ptr %3, null, !dbg !5842
  %lnot = xor i1 %tobool, true, !dbg !5842
  %lnot1 = xor i1 %lnot, true, !dbg !5842
  %lnot2 = xor i1 %lnot1, true, !dbg !5842
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5842
  %conv = sext i32 %lnot.ext to i64, !dbg !5842
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5842
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5842
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5845

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5846
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5846

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ioc, align 8, !dbg !5847
  %refcount = getelementptr inbounds %struct.io_context, ptr %4, i32 0, i32 0, !dbg !5848
  call void @atomic_long_set(ptr noundef %refcount, i64 noundef 1) #9, !dbg !5849
  %5 = load ptr, ptr %ioc, align 8, !dbg !5850
  %active_ref = getelementptr inbounds %struct.io_context, ptr %5, i32 0, i32 1, !dbg !5851
  call void @atomic_set(ptr noundef %active_ref, i32 noundef 1) #9, !dbg !5852
  %call4 = call zeroext i16 @ioprio_value(i32 noundef 0, i32 noundef 0, i32 noundef 0) #9, !dbg !5853
  %6 = load ptr, ptr %ioc, align 8, !dbg !5854
  %ioprio = getelementptr inbounds %struct.io_context, ptr %6, i32 0, i32 2, !dbg !5855
  store i16 %call4, ptr %ioprio, align 4, !dbg !5856
  %7 = load ptr, ptr %ioc, align 8, !dbg !5857
  store ptr %7, ptr %retval, align 8, !dbg !5858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5858

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ioc) #10, !dbg !5859
  %8 = load ptr, ptr %retval, align 8, !dbg !5859
  ret ptr %8, !dbg !5859
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__copy_io(i64 noundef %clone_flags, ptr noundef %tsk) #0 align 16 !dbg !5860 {
entry:
  %retval = alloca i32, align 4
  %clone_flags.addr = alloca i64, align 8
  %tsk.addr = alloca ptr, align 8
  %ioc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %clone_flags, ptr %clone_flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clone_flags.addr, metadata !5864, metadata !DIExpression()), !dbg !5867
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !5865, metadata !DIExpression()), !dbg !5868
  call void @llvm.lifetime.start.p0(i64 8, ptr %ioc) #10, !dbg !5869
  call void @llvm.dbg.declare(metadata ptr %ioc, metadata !5866, metadata !DIExpression()), !dbg !5870
  %call = call ptr @get_current() #9, !dbg !5871
  %io_context = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 131, !dbg !5872
  %0 = load ptr, ptr %io_context, align 64, !dbg !5872
  store ptr %0, ptr %ioc, align 8, !dbg !5870
  %1 = load i64, ptr %clone_flags.addr, align 8, !dbg !5873
  %and = and i64 %1, 2147483648, !dbg !5875
  %tobool = icmp ne i64 %and, 0, !dbg !5875
  br i1 %tobool, label %if.then, label %if.else, !dbg !5876

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ioc, align 8, !dbg !5877
  %active_ref = getelementptr inbounds %struct.io_context, ptr %2, i32 0, i32 1, !dbg !5879
  call void @atomic_inc(ptr noundef %active_ref) #9, !dbg !5880
  %3 = load ptr, ptr %ioc, align 8, !dbg !5881
  %4 = load ptr, ptr %tsk.addr, align 8, !dbg !5882
  %io_context1 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 131, !dbg !5883
  store ptr %3, ptr %io_context1, align 64, !dbg !5884
  br label %if.end13, !dbg !5885

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %ioc, align 8, !dbg !5886
  %ioprio = getelementptr inbounds %struct.io_context, ptr %5, i32 0, i32 2, !dbg !5888
  %6 = load i16, ptr %ioprio, align 4, !dbg !5888
  %call2 = call zeroext i1 @ioprio_valid(i16 noundef zeroext %6) #9, !dbg !5889
  br i1 %call2, label %if.then3, label %if.end12, !dbg !5890

if.then3:                                         ; preds = %if.else
  %call4 = call ptr @alloc_io_context(i32 noundef 3264, i32 noundef -1) #9, !dbg !5891
  %7 = load ptr, ptr %tsk.addr, align 8, !dbg !5893
  %io_context5 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 131, !dbg !5894
  store ptr %call4, ptr %io_context5, align 64, !dbg !5895
  %8 = load ptr, ptr %tsk.addr, align 8, !dbg !5896
  %io_context6 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 131, !dbg !5898
  %9 = load ptr, ptr %io_context6, align 64, !dbg !5898
  %tobool7 = icmp ne ptr %9, null, !dbg !5896
  br i1 %tobool7, label %if.end, label %if.then8, !dbg !5899

if.then8:                                         ; preds = %if.then3
  store i32 -12, ptr %retval, align 4, !dbg !5900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5900

if.end:                                           ; preds = %if.then3
  %10 = load ptr, ptr %ioc, align 8, !dbg !5901
  %ioprio9 = getelementptr inbounds %struct.io_context, ptr %10, i32 0, i32 2, !dbg !5902
  %11 = load i16, ptr %ioprio9, align 4, !dbg !5902
  %12 = load ptr, ptr %tsk.addr, align 8, !dbg !5903
  %io_context10 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 131, !dbg !5904
  %13 = load ptr, ptr %io_context10, align 64, !dbg !5904
  %ioprio11 = getelementptr inbounds %struct.io_context, ptr %13, i32 0, i32 2, !dbg !5905
  store i16 %11, ptr %ioprio11, align 4, !dbg !5906
  br label %if.end12, !dbg !5907

if.end12:                                         ; preds = %if.end, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then
  store i32 0, ptr %retval, align 4, !dbg !5908
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5908

cleanup:                                          ; preds = %if.end13, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ioc) #10, !dbg !5909
  %14 = load i32, ptr %retval, align 4, !dbg !5909
  ret i32 %14, !dbg !5909
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #2 align 16 !dbg !5910 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5914, metadata !DIExpression()), !dbg !5915
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5916
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #9, !dbg !5917
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5918
  call void @raw_atomic_inc(ptr noundef %1) #9, !dbg !5919
  ret void, !dbg !5920
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ioprio_valid(i16 noundef zeroext %ioprio) #4 align 16 !dbg !5921 {
entry:
  %ioprio.addr = alloca i16, align 2
  %class = alloca i16, align 2
  store i16 %ioprio, ptr %ioprio.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %ioprio.addr, metadata !5926, metadata !DIExpression()), !dbg !5928
  call void @llvm.lifetime.start.p0(i64 2, ptr %class) #10, !dbg !5929
  call void @llvm.dbg.declare(metadata ptr %class, metadata !5927, metadata !DIExpression()), !dbg !5930
  %0 = load i16, ptr %ioprio.addr, align 2, !dbg !5931
  %conv = zext i16 %0 to i32, !dbg !5931
  %shr = ashr i32 %conv, 13, !dbg !5931
  %and = and i32 %shr, 7, !dbg !5931
  %conv1 = trunc i32 %and to i16, !dbg !5931
  store i16 %conv1, ptr %class, align 2, !dbg !5930
  %1 = load i16, ptr %class, align 2, !dbg !5932
  %conv2 = zext i16 %1 to i32, !dbg !5932
  %cmp = icmp sgt i32 %conv2, 0, !dbg !5933
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5934

land.rhs:                                         ; preds = %entry
  %2 = load i16, ptr %class, align 2, !dbg !5935
  %conv4 = zext i16 %2 to i32, !dbg !5935
  %cmp5 = icmp sle i32 %conv4, 3, !dbg !5936
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp5, %land.rhs ], !dbg !5937
  call void @llvm.lifetime.end.p0(i64 2, ptr %class) #10, !dbg !5938
  ret i1 %3, !dbg !5939
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_blk_ioc__357_453_blk_ioc_init4() #7 section ".init.text" align 16 !dbg !5940 {
entry:
  %call = call i32 @blk_ioc_init() #12, !dbg !5941
  ret i32 %call, !dbg !5941
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @blk_ioc_init() #7 section ".init.text" align 16 !dbg !5942 {
entry:
  %call = call ptr @kmem_cache_create(ptr noundef @.str.1, i32 noundef 16, i32 noundef 0, i32 noundef 262144, ptr noundef null) #9, !dbg !5943
  store ptr %call, ptr @iocontext_cachep, align 8, !dbg !5944
  ret i32 0, !dbg !5945
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !5946 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5954, metadata !DIExpression()), !dbg !5956
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5955, metadata !DIExpression()), !dbg !5957
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5958
  %1 = load i64, ptr %size.addr, align 8, !dbg !5959
  %conv = trunc i64 %1 to i32, !dbg !5959
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #9, !dbg !5960
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5961
  %3 = load i64, ptr %size.addr, align 8, !dbg !5961
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #9, !dbg !5961
  ret void, !dbg !5962
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #2 align 16 !dbg !5963 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5965, metadata !DIExpression()), !dbg !5966
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5967
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #9, !dbg !5968
  ret i64 %call, !dbg !5969
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !5970 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5975, metadata !DIExpression()), !dbg !5977
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5976, metadata !DIExpression()), !dbg !5978
  ret i1 true, !dbg !5979
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !5980 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5985, metadata !DIExpression()), !dbg !5988
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5986, metadata !DIExpression()), !dbg !5989
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5987, metadata !DIExpression()), !dbg !5990
  ret void, !dbg !5991
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #2 align 16 !dbg !5992 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5999, metadata !DIExpression()), !dbg !6000
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6001
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #9, !dbg !6002
  ret i64 %call, !dbg !6003
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #2 align 16 !dbg !6004 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6007, metadata !DIExpression()), !dbg !6008
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6009
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !6009
  %1 = load volatile i64, ptr %counter, align 8, !dbg !6009
  ret i64 %1, !dbg !6010
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !6011 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6013, metadata !DIExpression()), !dbg !6015
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6014, metadata !DIExpression()), !dbg !6016
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6017
  %1 = load i64, ptr %size.addr, align 8, !dbg !6018
  %conv = trunc i64 %1 to i32, !dbg !6018
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !6019
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6020
  %3 = load i64, ptr %size.addr, align 8, !dbg !6020
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #9, !dbg !6020
  ret void, !dbg !6021
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_long_dec_and_test(ptr noundef %v) #2 align 16 !dbg !6022 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6024, metadata !DIExpression()), !dbg !6025
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6026
  %call = call zeroext i1 @raw_atomic64_dec_and_test(ptr noundef %0) #9, !dbg !6027
  ret i1 %call, !dbg !6028
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6029 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6031, metadata !DIExpression()), !dbg !6033
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6032, metadata !DIExpression()), !dbg !6034
  ret i1 true, !dbg !6035
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_dec_and_test(ptr noundef %v) #2 align 16 !dbg !6036 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6041, metadata !DIExpression()), !dbg !6042
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6043
  %call = call zeroext i1 @arch_atomic64_dec_and_test(ptr noundef %0) #9, !dbg !6044
  ret i1 %call, !dbg !6045
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic64_dec_and_test(ptr noundef %v) #2 align 16 !dbg !6046 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6048, metadata !DIExpression()), !dbg !6051
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #10, !dbg !6052
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6049, metadata !DIExpression()), !dbg !6052
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6052
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !6052
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decq $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, ptr elementtype(i64) %counter) #10, !dbg !6052, !srcloc !6053
  %2 = icmp ult i8 %1, 2, !dbg !6052
  call void @llvm.assume(i1 %2), !dbg !6052
  store i8 %1, ptr %c, align 1, !dbg !6052
  %3 = load i8, ptr %c, align 1, !dbg !6052, !range !6054, !noundef !854
  %tobool = trunc i8 %3 to i1, !dbg !6052
  %frombool = zext i1 %tobool to i8, !dbg !6052
  store i8 %frombool, ptr %tmp, align 1, !dbg !6052
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #10, !dbg !6055
  %4 = load i8, ptr %tmp, align 1, !dbg !6052, !range !6054, !noundef !854
  %tobool1 = trunc i8 %4 to i1, !dbg !6052
  ret i1 %tobool1, !dbg !6056
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #2 align 16 !dbg !6057 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6062, metadata !DIExpression()), !dbg !6063
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6064
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6064
  call void @_raw_spin_lock(ptr noundef %1) #9, !dbg !6064
  ret void, !dbg !6065
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6066 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #2 align 16 !dbg !6071 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6073, metadata !DIExpression()), !dbg !6074
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6075
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6075
  call void @_raw_spin_unlock(ptr noundef %1) #9, !dbg !6075
  ret void, !dbg !6076
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6077 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #2 align 16 !dbg !6078 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6080, metadata !DIExpression()), !dbg !6081
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6082
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #9, !dbg !6083
  ret i1 %call, !dbg !6084
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #2 align 16 !dbg !6085 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6088, metadata !DIExpression()), !dbg !6091
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #10, !dbg !6092
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6089, metadata !DIExpression()), !dbg !6092
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6092
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6092
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #10, !dbg !6092, !srcloc !6093
  %2 = icmp ult i8 %1, 2, !dbg !6092
  call void @llvm.assume(i1 %2), !dbg !6092
  store i8 %1, ptr %c, align 1, !dbg !6092
  %3 = load i8, ptr %c, align 1, !dbg !6092, !range !6054, !noundef !854
  %tobool = trunc i8 %3 to i1, !dbg !6092
  %frombool = zext i1 %tobool to i8, !dbg !6092
  store i8 %frombool, ptr %tmp, align 1, !dbg !6092
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #10, !dbg !6094
  %4 = load i8, ptr %tmp, align 1, !dbg !6092, !range !6054, !noundef !854
  %tobool1 = trunc i8 %4 to i1, !dbg !6092
  ret i1 %tobool1, !dbg !6095
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6096 dso_local void @__rcu_read_lock() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #4 align 16 !dbg !6097 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6101, metadata !DIExpression()), !dbg !6102
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6103
  %0 = load i32, ptr %val, align 4, !dbg !6103
  ret i32 %0, !dbg !6104
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6105 dso_local void @__rcu_read_unlock() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6106 dso_local noalias ptr @kmem_cache_alloc_node(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_set(ptr noundef %v, i64 noundef %i) #2 align 16 !dbg !6109 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6113, metadata !DIExpression()), !dbg !6115
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6114, metadata !DIExpression()), !dbg !6116
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6117
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #9, !dbg !6118
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6119
  %2 = load i64, ptr %i.addr, align 8, !dbg !6120
  call void @raw_atomic_long_set(ptr noundef %1, i64 noundef %2) #9, !dbg !6121
  ret void, !dbg !6122
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !6123 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6127, metadata !DIExpression()), !dbg !6129
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6128, metadata !DIExpression()), !dbg !6130
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6131
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #9, !dbg !6132
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6133
  %2 = load i32, ptr %i.addr, align 4, !dbg !6134
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #9, !dbg !6135
  ret void, !dbg !6136
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @ioprio_value(i32 noundef %prioclass, i32 noundef %priolevel, i32 noundef %priohint) #2 align 16 !dbg !6137 {
entry:
  %retval = alloca i16, align 2
  %prioclass.addr = alloca i32, align 4
  %priolevel.addr = alloca i32, align 4
  %priohint.addr = alloca i32, align 4
  store i32 %prioclass, ptr %prioclass.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prioclass.addr, metadata !6141, metadata !DIExpression()), !dbg !6144
  store i32 %priolevel, ptr %priolevel.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %priolevel.addr, metadata !6142, metadata !DIExpression()), !dbg !6145
  store i32 %priohint, ptr %priohint.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %priohint.addr, metadata !6143, metadata !DIExpression()), !dbg !6146
  %0 = load i32, ptr %prioclass.addr, align 4, !dbg !6147
  %cmp = icmp slt i32 %0, 0, !dbg !6147
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6147

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %prioclass.addr, align 4, !dbg !6147
  %cmp1 = icmp sge i32 %1, 8, !dbg !6147
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !6149

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %priolevel.addr, align 4, !dbg !6150
  %cmp3 = icmp slt i32 %2, 0, !dbg !6150
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !6150

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, ptr %priolevel.addr, align 4, !dbg !6150
  %cmp5 = icmp sge i32 %3, 8, !dbg !6150
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !6151

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %4 = load i32, ptr %priohint.addr, align 4, !dbg !6152
  %cmp7 = icmp slt i32 %4, 0, !dbg !6152
  br i1 %cmp7, label %if.then, label %lor.lhs.false8, !dbg !6152

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %5 = load i32, ptr %priohint.addr, align 4, !dbg !6152
  %cmp9 = icmp sge i32 %5, 1024, !dbg !6152
  br i1 %cmp9, label %if.then, label %if.end, !dbg !6153

if.then:                                          ; preds = %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i16 -8192, ptr %retval, align 2, !dbg !6154
  br label %return, !dbg !6154

if.end:                                           ; preds = %lor.lhs.false8
  %6 = load i32, ptr %prioclass.addr, align 4, !dbg !6155
  %shl = shl i32 %6, 13, !dbg !6156
  %7 = load i32, ptr %priohint.addr, align 4, !dbg !6157
  %shl10 = shl i32 %7, 3, !dbg !6158
  %or = or i32 %shl, %shl10, !dbg !6159
  %8 = load i32, ptr %priolevel.addr, align 4, !dbg !6160
  %or11 = or i32 %or, %8, !dbg !6161
  %conv = trunc i32 %or11 to i16, !dbg !6162
  store i16 %conv, ptr %retval, align 2, !dbg !6163
  br label %return, !dbg !6163

return:                                           ; preds = %if.end, %if.then
  %9 = load i16, ptr %retval, align 2, !dbg !6164
  ret i16 %9, !dbg !6164
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !6165 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6167, metadata !DIExpression()), !dbg !6169
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6168, metadata !DIExpression()), !dbg !6170
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6171
  %1 = load i64, ptr %size.addr, align 8, !dbg !6172
  %conv = trunc i64 %1 to i32, !dbg !6172
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !6173
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6174
  %3 = load i64, ptr %size.addr, align 8, !dbg !6174
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #9, !dbg !6174
  ret void, !dbg !6175
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_set(ptr noundef %v, i64 noundef %i) #2 align 16 !dbg !6176 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6178, metadata !DIExpression()), !dbg !6180
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6179, metadata !DIExpression()), !dbg !6181
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6182
  %1 = load i64, ptr %i.addr, align 8, !dbg !6183
  call void @raw_atomic64_set(ptr noundef %0, i64 noundef %1) #9, !dbg !6184
  ret void, !dbg !6185
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #2 align 16 !dbg !6186 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6190, metadata !DIExpression()), !dbg !6192
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6191, metadata !DIExpression()), !dbg !6193
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6194
  %1 = load i64, ptr %i.addr, align 8, !dbg !6195
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #9, !dbg !6196
  ret void, !dbg !6197
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #2 align 16 !dbg !6198 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6200, metadata !DIExpression()), !dbg !6202
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6201, metadata !DIExpression()), !dbg !6203
  br label %do.body, !dbg !6204

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !6205
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6205
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !6205
  store volatile i64 %0, ptr %counter, align 8, !dbg !6205
  br label %do.end, !dbg !6205

do.end:                                           ; preds = %do.body
  ret void, !dbg !6207
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !6208 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6210, metadata !DIExpression()), !dbg !6212
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6211, metadata !DIExpression()), !dbg !6213
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6214
  %1 = load i32, ptr %i.addr, align 4, !dbg !6215
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #9, !dbg !6216
  ret void, !dbg !6217
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !6218 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6220, metadata !DIExpression()), !dbg !6222
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6221, metadata !DIExpression()), !dbg !6223
  br label %do.body, !dbg !6224

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !6225
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6225
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6225
  store volatile i32 %0, ptr %counter, align 4, !dbg !6225
  br label %do.end, !dbg !6225

do.end:                                           ; preds = %do.body
  ret void, !dbg !6227
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #2 align 16 !dbg !6228 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6230, metadata !DIExpression()), !dbg !6231
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6232
  call void @arch_atomic_inc(ptr noundef %0) #9, !dbg !6233
  ret void, !dbg !6234
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #2 align 16 !dbg !6235 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6237, metadata !DIExpression()), !dbg !6238
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6239
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6240
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #10, !dbg !6241, !srcloc !6242
  ret void, !dbg !6243
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6244 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(none) }
attributes #12 = { cold noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!5513, !5514, !5515, !5516, !5517, !5518, !5519, !5520}
!llvm.ident = !{!5521}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "block/blk-ioc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d18ae6dca61a3015a0465c040dac4e3")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "iocontext_cachep", scope: !9, file: !2, line: 20, type: !2823, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF block/.blk-ioc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22block/blk-ioc\22 -D KBUILD_BASENAME=\22blk_ioc\22 -D KBUILD_MODNAME=\22blk_ioc\22 -D __KBUILD_MODNAME=kmod_blk_ioc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o block/blk-ioc.ll block/blk-ioc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !206, globals: !5501, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !17, !25, !32, !40, !56, !63, !69, !74, !80, !87, !92, !98, !105, !113, !121, !130, !135, !140, !146, !151, !156, !161, !165, !170, !176, !183, !188, !196}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!16 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !18, line: 9, baseType: !13, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!19 = !{!20, !21, !22, !23, !24}
!20 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!21 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!22 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!23 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!24 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !26, line: 312, baseType: !13, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!29 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!30 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!31 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !33, line: 68, baseType: !13, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!36 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!37 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!38 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!39 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !41, line: 1325, baseType: !13, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!43 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!44 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!45 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!46 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!47 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!48 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!49 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!50 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!51 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!52 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!53 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!54 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!55 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !57, line: 15, baseType: !13, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!60 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!61 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!62 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !64, line: 26, baseType: !13, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!67 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!68 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !70, line: 2052, baseType: !13, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!71 = !{!72, !73}
!72 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!73 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !75, line: 54, baseType: !13, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "USRQUOTA", value: 0)
!78 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!79 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "elv_merge", file: !81, line: 16, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "block/elevator.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f2c1e08cf51857d27273f234ecff22b")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "ELEVATOR_NO_MERGE", value: 0)
!84 = !DIEnumerator(name: "ELEVATOR_FRONT_MERGE", value: 1)
!85 = !DIEnumerator(name: "ELEVATOR_BACK_MERGE", value: 2)
!86 = !DIEnumerator(name: "ELEVATOR_DISCARD_MERGE", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_eh_timer_return", file: !88, line: 276, baseType: !13, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62cf1706db3683ee75df9cf32a2cf47d")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "BLK_EH_DONE", value: 0)
!91 = !DIEnumerator(name: "BLK_EH_RESET_TIMER", value: 1)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !93, line: 45, baseType: !13, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!96 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!97 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !99, line: 487, baseType: !13, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!102 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!103 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!104 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !106, line: 620, baseType: !13, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!107 = !{!108, !109, !110, !111, !112}
!108 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!109 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!110 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!111 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!112 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !106, line: 597, baseType: !114, size: 32, elements: !115)
!114 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!115 = !{!116, !117, !118, !119, !120}
!116 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!117 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!118 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!119 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!120 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !99, line: 547, baseType: !13, size: 32, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128, !129}
!123 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!124 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!125 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!126 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!127 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!128 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!129 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !99, line: 564, baseType: !13, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!133 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!134 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !99, line: 577, baseType: !13, size: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!138 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!139 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !99, line: 503, baseType: !13, size: 32, elements: !141)
!141 = !{!142, !143, !144, !145}
!142 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!143 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!144 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!145 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !147, line: 295, baseType: !13, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!148 = !{!149, !150}
!149 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!150 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !147, line: 285, baseType: !13, size: 32, elements: !152)
!152 = !{!153, !154, !155}
!153 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!154 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!155 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !88, line: 68, baseType: !13, size: 32, elements: !157)
!157 = !{!158, !159, !160}
!158 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0)
!159 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1)
!160 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rq_end_io_ret", file: !88, line: 18, baseType: !13, size: 32, elements: !162)
!162 = !{!163, !164}
!163 = !DIEnumerator(name: "RQ_END_IO_NONE", value: 0)
!164 = !DIEnumerator(name: "RQ_END_IO_FREE", value: 1)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !147, line: 1381, baseType: !13, size: 32, elements: !166)
!166 = !{!167, !168, !169}
!167 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!168 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!169 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !171, line: 16, baseType: !13, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!172 = !{!173, !174, !175}
!173 = !DIEnumerator(name: "TT_NONE", value: 0)
!174 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!175 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !177, line: 51, baseType: !13, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!178 = !{!179, !180, !181, !182}
!179 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!180 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!181 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!182 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !184, line: 10, baseType: !13, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!185 = !{!186, !187}
!186 = !DIEnumerator(name: "false", value: 0)
!187 = !DIEnumerator(name: "true", value: 1)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !189, line: 28, baseType: !13, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/uapi/linux/ioprio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "82e71b577aa1accd83e4de8ec4730d73")
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIEnumerator(name: "IOPRIO_CLASS_NONE", value: 0)
!192 = !DIEnumerator(name: "IOPRIO_CLASS_RT", value: 1)
!193 = !DIEnumerator(name: "IOPRIO_CLASS_BE", value: 2)
!194 = !DIEnumerator(name: "IOPRIO_CLASS_IDLE", value: 3)
!195 = !DIEnumerator(name: "IOPRIO_CLASS_INVALID", value: 7)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !189, line: 83, baseType: !13, size: 32, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205}
!198 = !DIEnumerator(name: "IOPRIO_HINT_NONE", value: 0)
!199 = !DIEnumerator(name: "IOPRIO_HINT_DEV_DURATION_LIMIT_1", value: 1)
!200 = !DIEnumerator(name: "IOPRIO_HINT_DEV_DURATION_LIMIT_2", value: 2)
!201 = !DIEnumerator(name: "IOPRIO_HINT_DEV_DURATION_LIMIT_3", value: 3)
!202 = !DIEnumerator(name: "IOPRIO_HINT_DEV_DURATION_LIMIT_4", value: 4)
!203 = !DIEnumerator(name: "IOPRIO_HINT_DEV_DURATION_LIMIT_5", value: 5)
!204 = !DIEnumerator(name: "IOPRIO_HINT_DEV_DURATION_LIMIT_6", value: 6)
!205 = !DIEnumerator(name: "IOPRIO_HINT_DEV_DURATION_LIMIT_7", value: 7)
!206 = !{!207, !208, !519, !522, !523, !526, !527, !298, !5496, !5498, !5500}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !211, line: 110, size: 1472, elements: !212)
!211 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!212 = !{!213, !226, !235, !242, !243, !244, !245, !246, !247, !248, !249, !258, !259, !260, !261, !262, !264, !456, !457, !458, !459, !460, !497, !500, !504, !514}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !210, file: !211, line: 111, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !215, line: 13, baseType: !216)
!215 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !217, line: 181, baseType: !218)
!217 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 179, size: 64, elements: !219)
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !218, file: !217, line: 180, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !222, line: 22, baseType: !223)
!222 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !224, line: 30, baseType: !225)
!224 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!225 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !210, file: !211, line: 112, baseType: !227, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !228, line: 23, baseType: !229)
!228 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !228, line: 21, size: 32, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !229, file: !228, line: 22, baseType: !232, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !217, line: 37, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !234, line: 49, baseType: !13)
!234 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!235 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !210, file: !211, line: 113, baseType: !236, size: 32, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !228, line: 28, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !228, line: 26, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !237, file: !228, line: 27, baseType: !240, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !217, line: 38, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !234, line: 50, baseType: !13)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !210, file: !211, line: 114, baseType: !227, size: 32, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !210, file: !211, line: 115, baseType: !236, size: 32, offset: 160)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !210, file: !211, line: 116, baseType: !227, size: 32, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !210, file: !211, line: 117, baseType: !236, size: 32, offset: 224)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !210, file: !211, line: 118, baseType: !227, size: 32, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !210, file: !211, line: 119, baseType: !236, size: 32, offset: 288)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !210, file: !211, line: 120, baseType: !13, size: 32, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !210, file: !211, line: 121, baseType: !250, size: 64, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !251, line: 24, baseType: !252)
!251 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 24, size: 64, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !252, file: !251, line: 24, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !222, line: 23, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !224, line: 31, baseType: !257)
!257 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !210, file: !211, line: 122, baseType: !250, size: 64, offset: 448)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !210, file: !211, line: 123, baseType: !250, size: 64, offset: 512)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !210, file: !211, line: 124, baseType: !250, size: 64, offset: 576)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !210, file: !211, line: 125, baseType: !250, size: 64, offset: 640)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !210, file: !211, line: 127, baseType: !263, size: 8, offset: 704)
!263 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !210, file: !211, line: 129, baseType: !265, size: 64, offset: 768)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !267, line: 195, size: 1728, elements: !268)
!267 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!268 = !{!269, !279, !284, !302, !343, !346, !347, !354, !355, !356, !357, !362, !363, !364, !366, !367, !418, !441}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !266, file: !267, line: 196, baseType: !270, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !271, line: 113, baseType: !272)
!271 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !271, line: 111, size: 32, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !272, file: !271, line: 112, baseType: !275, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !217, line: 174, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 172, size: 32, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !276, file: !217, line: 173, baseType: !114, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !266, file: !267, line: 197, baseType: !280, size: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !267, line: 28, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !217, line: 104, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !222, line: 20, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !224, line: 26, baseType: !114)
!284 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !267, line: 198, baseType: !285, size: 192, offset: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !267, line: 198, size: 192, elements: !286)
!286 = !{!287, !293}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !285, file: !267, line: 199, baseType: !288, size: 128)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !217, line: 190, size: 128, elements: !289)
!289 = !{!290, !292}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !217, line: 191, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !288, file: !217, line: 191, baseType: !291, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !285, file: !267, line: 200, baseType: !294, size: 192, align: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !295, line: 5, size: 192, align: 64, elements: !296)
!295 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!296 = !{!297, !299, !301}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !294, file: !295, line: 6, baseType: !298, size: 64)
!298 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !294, file: !295, line: 7, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !294, file: !295, line: 8, baseType: !300, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !266, file: !267, line: 205, baseType: !303, size: 320, offset: 256)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !304, line: 48, size: 320, elements: !305)
!304 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!305 = !{!306, !307, !308, !313, !342}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !303, file: !304, line: 49, baseType: !214, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !303, file: !304, line: 55, baseType: !214, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !303, file: !304, line: 57, baseType: !309, size: 32, offset: 128)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !310, line: 15, size: 32, elements: !311)
!310 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !309, file: !310, line: 20, baseType: !275, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !303, file: !304, line: 59, baseType: !314, size: 32, offset: 160)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !315, line: 23, baseType: !316)
!315 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !315, line: 14, size: 32, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !316, file: !315, line: 15, baseType: !319, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !320, line: 44, baseType: !321)
!320 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !320, line: 14, size: 32, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !320, line: 15, baseType: !324, size: 32)
!324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !320, line: 15, size: 32, elements: !325)
!325 = !{!326, !327, !334}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !324, file: !320, line: 16, baseType: !275, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !320, line: 24, baseType: !328, size: 16)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !320, line: 24, size: 16, elements: !329)
!329 = !{!330, !333}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !328, file: !320, line: 25, baseType: !331, size: 8)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !222, line: 17, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !224, line: 21, baseType: !263)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !328, file: !320, line: 26, baseType: !331, size: 8, offset: 8)
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !320, line: 28, baseType: !335, size: 32)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !320, line: 28, size: 32, elements: !336)
!336 = !{!337, !341}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !335, file: !320, line: 29, baseType: !338, size: 16)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !222, line: 19, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !224, line: 24, baseType: !340)
!340 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !335, file: !320, line: 30, baseType: !338, size: 16, offset: 16)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !303, file: !304, line: 60, baseType: !288, size: 128, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !266, file: !267, line: 206, baseType: !344, size: 64, offset: 576)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !267, line: 206, flags: DIFlagFwdDecl)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !266, file: !267, line: 207, baseType: !207, size: 64, offset: 640)
!347 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !267, line: 208, baseType: !348, size: 64, offset: 704)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !267, line: 208, size: 64, elements: !349)
!349 = !{!350, !353}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !348, file: !267, line: 209, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !352, line: 8, baseType: !223)
!352 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!353 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !348, file: !267, line: 210, baseType: !351, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !266, file: !267, line: 212, baseType: !351, size: 64, offset: 768)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !266, file: !267, line: 213, baseType: !227, size: 32, offset: 832)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !266, file: !267, line: 214, baseType: !236, size: 32, offset: 864)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !266, file: !267, line: 215, baseType: !358, size: 32, offset: 896)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !267, line: 31, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !217, line: 110, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !222, line: 21, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !224, line: 27, baseType: !13)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !266, file: !267, line: 216, baseType: !340, size: 16, offset: 928)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !266, file: !267, line: 217, baseType: !340, size: 16, offset: 944)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !266, file: !267, line: 221, baseType: !365, size: 16, offset: 960)
!365 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !267, line: 228, baseType: !298, size: 64, offset: 1024)
!367 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !267, line: 245, baseType: !368, size: 320, offset: 1088)
!368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !267, line: 245, size: 320, elements: !369)
!369 = !{!370, !409}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !368, file: !267, line: 246, baseType: !371, size: 320)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !267, line: 114, size: 320, elements: !372)
!372 = !{!373, !374, !386, !389, !406}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !371, file: !267, line: 116, baseType: !298, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !267, line: 117, baseType: !375, size: 64, offset: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !267, line: 117, size: 64, elements: !376)
!376 = !{!377, !385}
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !267, line: 118, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !375, file: !267, line: 118, size: 64, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !378, file: !267, line: 120, baseType: !338, size: 16)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !378, file: !267, line: 121, baseType: !382, size: 48, offset: 16)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 6)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !375, file: !267, line: 127, baseType: !298, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !371, file: !267, line: 129, baseType: !387, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !267, line: 102, flags: DIFlagFwdDecl)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !371, file: !267, line: 130, baseType: !390, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !267, line: 108, size: 192, elements: !392)
!392 = !{!393, !402, !403}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !391, file: !267, line: 109, baseType: !394, size: 128, align: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !217, line: 232, size: 128, align: 64, elements: !395)
!395 = !{!396, !398}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !394, file: !217, line: 233, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !394, file: !217, line: 234, baseType: !399, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !397}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !391, file: !267, line: 110, baseType: !270, size: 32, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !391, file: !267, line: 111, baseType: !404, size: 8, offset: 160)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !217, line: 35, baseType: !405)
!405 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !371, file: !267, line: 131, baseType: !407, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!409 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !267, line: 247, baseType: !410, size: 320)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !267, line: 247, size: 320, elements: !411)
!411 = !{!412, !413, !414, !415, !416}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !410, file: !267, line: 248, baseType: !298, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !410, file: !267, line: 249, baseType: !298, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !410, file: !267, line: 250, baseType: !387, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !410, file: !267, line: 251, baseType: !390, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !410, file: !267, line: 252, baseType: !417, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !267, line: 260, baseType: !419, size: 256, offset: 1408)
!419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !267, line: 260, size: 256, elements: !420)
!420 = !{!421, !429}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !419, file: !267, line: 261, baseType: !422, size: 256)
!422 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !267, line: 134, size: 256, elements: !423)
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !422, file: !267, line: 135, baseType: !207, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !422, file: !267, line: 136, baseType: !426, size: 256)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 256, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 4)
!429 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !267, line: 262, baseType: !430, size: 256)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !419, file: !267, line: 262, size: 256, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !430, file: !267, line: 264, baseType: !288, size: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !430, file: !267, line: 265, baseType: !434, size: 128, offset: 128)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !435, line: 22, size: 128, elements: !436)
!435 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!436 = !{!437, !440}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !434, file: !435, line: 23, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !435, line: 23, flags: DIFlagFwdDecl)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !434, file: !435, line: 24, baseType: !298, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !266, file: !267, line: 280, baseType: !442, size: 64, offset: 1664)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !267, line: 176, size: 192, elements: !444)
!444 = !{!445, !454, !455}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !443, file: !267, line: 177, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !267, line: 171, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!114, !265, !450, !452, !265}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !443, file: !267, line: 178, baseType: !265, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !443, file: !267, line: 179, baseType: !387, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !210, file: !211, line: 130, baseType: !265, size: 64, offset: 832)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !210, file: !211, line: 131, baseType: !265, size: 64, offset: 896)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !210, file: !211, line: 132, baseType: !265, size: 64, offset: 960)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !210, file: !211, line: 135, baseType: !207, size: 64, offset: 1024)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !210, file: !211, line: 137, baseType: !461, size: 64, offset: 1088)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !463, line: 14, size: 1088, elements: !464)
!463 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!464 = !{!465, !466, !475, !476, !477, !484, !485, !486}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !462, file: !463, line: 15, baseType: !270, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !462, file: !463, line: 17, baseType: !467, size: 320, offset: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !468, line: 22, size: 320, elements: !469)
!468 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!469 = !{!470, !471, !472, !473}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !467, file: !468, line: 23, baseType: !314, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !467, file: !468, line: 24, baseType: !221, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !467, file: !468, line: 26, baseType: !288, size: 128, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !467, file: !468, line: 28, baseType: !474, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !462, file: !463, line: 19, baseType: !298, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !462, file: !463, line: 20, baseType: !214, size: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !462, file: !463, line: 23, baseType: !478, size: 128, offset: 512)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !217, line: 198, size: 128, elements: !479)
!479 = !{!480, !482}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !478, file: !217, line: 199, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !478, file: !217, line: 199, baseType: !483, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !462, file: !463, line: 24, baseType: !227, size: 32, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !462, file: !463, line: 29, baseType: !214, size: 64, offset: 704)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !462, file: !463, line: 36, baseType: !487, size: 320, offset: 768)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !488, line: 15, size: 320, elements: !489)
!488 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!489 = !{!490, !491, !492, !493, !494, !495, !496}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !487, file: !488, line: 16, baseType: !314, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !487, file: !488, line: 18, baseType: !114, size: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !487, file: !488, line: 19, baseType: !114, size: 32, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !487, file: !488, line: 20, baseType: !114, size: 32, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !487, file: !488, line: 21, baseType: !114, size: 32, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !487, file: !488, line: 22, baseType: !298, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !488, line: 23, baseType: !298, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !210, file: !211, line: 138, baseType: !498, size: 64, offset: 1152)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !228, line: 18, flags: DIFlagFwdDecl)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !210, file: !211, line: 139, baseType: !501, size: 64, offset: 1216)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !503, line: 16, flags: DIFlagFwdDecl)
!503 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!504 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !210, file: !211, line: 140, baseType: !505, size: 64, offset: 1280)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !211, line: 25, size: 64, elements: !507)
!507 = !{!508, !509, !510}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !506, file: !211, line: 26, baseType: !275, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !506, file: !211, line: 27, baseType: !114, size: 32, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !506, file: !211, line: 28, baseType: !511, offset: 64)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: -1)
!514 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !211, line: 142, baseType: !515, size: 128, offset: 1344)
!515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !211, line: 142, size: 128, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !515, file: !211, line: 143, baseType: !114, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !515, file: !211, line: 144, baseType: !394, size: 128, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !208)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !217, line: 154, baseType: !13)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !225)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !529, line: 746, size: 58368, elements: !530)
!529 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!530 = !{!531, !539, !540, !541, !542, !543, !544, !545, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !616, !627, !727, !731, !734, !765, !766, !767, !768, !779, !781, !782, !783, !784, !785, !786, !797, !798, !801, !802, !803, !804, !805, !806, !807, !808, !815, !816, !823, !824, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4675, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4723, !4729, !4730, !4731, !4732, !4733, !4734, !4737, !4744, !4749, !4752, !4755, !4758, !4762, !4900, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4938, !4939, !4940, !4949, !4957, !4958, !4959, !4960, !4961, !4966, !4967, !4968, !4971, !4972, !4974, !4985, !4988, !4989, !4992, !4993, !5079, !5080, !5081, !5082, !5083, !5089, !5090, !5091, !5092, !5095, !5096, !5099, !5102, !5103, !5106, !5107, !5108, !5111, !5112, !5113, !5114, !5115, !5116, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5148, !5149, !5155, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5237, !5239, !5240, !5241, !5242, !5243, !5244, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5273, !5274, !5275}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !528, file: !529, line: 752, baseType: !532, size: 192)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !533, line: 56, size: 192, elements: !534)
!533 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!534 = !{!535, !536, !537, !538}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !533, line: 57, baseType: !298, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !532, file: !533, line: 58, baseType: !298, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !532, file: !533, line: 59, baseType: !360, size: 32, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !532, file: !533, line: 61, baseType: !360, size: 32, offset: 160)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !528, file: !529, line: 754, baseType: !13, size: 32, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !528, file: !529, line: 767, baseType: !207, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !528, file: !529, line: 768, baseType: !270, size: 32, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !528, file: !529, line: 770, baseType: !13, size: 32, offset: 352)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !528, file: !529, line: 771, baseType: !13, size: 32, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !528, file: !529, line: 774, baseType: !114, size: 32, offset: 416)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !528, file: !529, line: 775, baseType: !546, size: 128, offset: 448)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !547, line: 58, size: 128, elements: !548)
!547 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!548 = !{!549, !555, !560, !561}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !546, file: !547, line: 59, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !551, line: 60, size: 64, elements: !552)
!551 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !550, file: !551, line: 61, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, scope: !546, file: !547, line: 60, baseType: !556, size: 32, offset: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !546, file: !547, line: 60, size: 32, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !556, file: !547, line: 61, baseType: !13, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !556, file: !547, line: 62, baseType: !275, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !546, file: !547, line: 65, baseType: !338, size: 16, offset: 96)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !546, file: !547, line: 65, baseType: !338, size: 16, offset: 112)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !528, file: !529, line: 776, baseType: !13, size: 32, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !528, file: !529, line: 777, baseType: !298, size: 64, offset: 640)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !528, file: !529, line: 778, baseType: !527, size: 64, offset: 704)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !528, file: !529, line: 787, baseType: !114, size: 32, offset: 768)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !528, file: !529, line: 788, baseType: !114, size: 32, offset: 800)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !528, file: !529, line: 790, baseType: !114, size: 32, offset: 832)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !528, file: !529, line: 792, baseType: !114, size: 32, offset: 864)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !528, file: !529, line: 793, baseType: !114, size: 32, offset: 896)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !528, file: !529, line: 794, baseType: !114, size: 32, offset: 928)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !528, file: !529, line: 795, baseType: !13, size: 32, offset: 960)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !528, file: !529, line: 797, baseType: !573, size: 2048, offset: 1024)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !529, line: 551, size: 2048, elements: !574)
!574 = !{!575, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !595, !598, !599, !600}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !573, file: !529, line: 553, baseType: !576, size: 128)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !529, line: 411, size: 128, elements: !577)
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !576, file: !529, line: 412, baseType: !298, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !576, file: !529, line: 413, baseType: !360, size: 32, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !573, file: !529, line: 554, baseType: !294, size: 192, align: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !573, file: !529, line: 555, baseType: !255, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !573, file: !529, line: 556, baseType: !255, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !573, file: !529, line: 558, baseType: !288, size: 128, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !573, file: !529, line: 559, baseType: !13, size: 32, offset: 576)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !573, file: !529, line: 561, baseType: !255, size: 64, offset: 640)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !573, file: !529, line: 562, baseType: !255, size: 64, offset: 704)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !573, file: !529, line: 563, baseType: !255, size: 64, offset: 768)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !573, file: !529, line: 564, baseType: !255, size: 64, offset: 832)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !573, file: !529, line: 565, baseType: !221, size: 64, offset: 896)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !573, file: !529, line: 566, baseType: !255, size: 64, offset: 960)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !573, file: !529, line: 568, baseType: !255, size: 64, offset: 1024)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !573, file: !529, line: 571, baseType: !114, size: 32, offset: 1088)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !573, file: !529, line: 572, baseType: !594, size: 64, offset: 1152)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !573, file: !529, line: 574, baseType: !596, size: 64, offset: 1216)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !529, line: 49, flags: DIFlagFwdDecl)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !573, file: !529, line: 576, baseType: !596, size: 64, offset: 1280)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !573, file: !529, line: 578, baseType: !298, size: 64, offset: 1344)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !573, file: !529, line: 588, baseType: !601, size: 512, align: 512, offset: 1536)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !529, line: 497, size: 512, align: 512, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !601, file: !529, line: 498, baseType: !255, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !601, file: !529, line: 499, baseType: !255, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !601, file: !529, line: 500, baseType: !255, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !601, file: !529, line: 501, baseType: !360, size: 32, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !601, file: !529, line: 502, baseType: !360, size: 32, offset: 224)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !601, file: !529, line: 503, baseType: !298, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !601, file: !529, line: 504, baseType: !298, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !601, file: !529, line: 505, baseType: !298, size: 64, offset: 384)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !601, file: !529, line: 506, baseType: !612, size: 64, align: 64, offset: 448)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !529, line: 445, size: 64, align: 64, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !612, file: !529, line: 446, baseType: !13, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !612, file: !529, line: 447, baseType: !13, size: 32, offset: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !528, file: !529, line: 798, baseType: !617, size: 384, offset: 3072)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !529, line: 592, size: 384, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !617, file: !529, line: 593, baseType: !288, size: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !617, file: !529, line: 594, baseType: !298, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !617, file: !529, line: 595, baseType: !298, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !617, file: !529, line: 596, baseType: !13, size: 32, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !617, file: !529, line: 597, baseType: !340, size: 16, offset: 288)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !617, file: !529, line: 598, baseType: !340, size: 16, offset: 304)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !617, file: !529, line: 600, baseType: !626, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !528, file: !529, line: 799, baseType: !628, size: 1792, offset: 3456)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !529, line: 610, size: 1792, elements: !629)
!629 = !{!630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !724, !725}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !628, file: !529, line: 611, baseType: !294, size: 192, align: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !628, file: !529, line: 618, baseType: !255, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !628, file: !529, line: 619, baseType: !255, size: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !628, file: !529, line: 620, baseType: !255, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !628, file: !529, line: 621, baseType: !255, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !628, file: !529, line: 622, baseType: !255, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !628, file: !529, line: 629, baseType: !221, size: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !628, file: !529, line: 630, baseType: !255, size: 64, offset: 576)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !628, file: !529, line: 631, baseType: !13, size: 32, offset: 640)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !628, file: !529, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !628, file: !529, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !628, file: !529, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !628, file: !529, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !628, file: !529, line: 662, baseType: !644, size: 512, offset: 704)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !645)
!645 = !{!646, !654, !655, !660, !720, !721, !722, !723}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !644, file: !12, line: 119, baseType: !647, size: 256)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !648, line: 9, size: 256, elements: !649)
!648 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !647, file: !648, line: 10, baseType: !294, size: 192, align: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !647, file: !648, line: 11, baseType: !652, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !653, line: 29, baseType: !221)
!653 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !644, file: !12, line: 120, baseType: !652, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !644, file: !12, line: 121, baseType: !656, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!11, !659}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !644, file: !12, line: 122, baseType: !661, size: 64, offset: 384)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !663)
!663 = !{!664, !689, !690, !693, !703, !704, !715, !719}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !662, file: !12, line: 160, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 215, size: 4608, align: 512, elements: !667)
!667 = !{!668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !666, file: !12, line: 216, baseType: !314, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !666, file: !12, line: 217, baseType: !13, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !666, file: !12, line: 218, baseType: !13, size: 32, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !666, file: !12, line: 219, baseType: !13, size: 32, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !666, file: !12, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !666, file: !12, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !666, file: !12, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !666, file: !12, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !666, file: !12, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !666, file: !12, line: 226, baseType: !13, size: 32, offset: 160)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !666, file: !12, line: 227, baseType: !340, size: 16, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !666, file: !12, line: 228, baseType: !340, size: 16, offset: 208)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !666, file: !12, line: 229, baseType: !13, size: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !666, file: !12, line: 235, baseType: !652, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !666, file: !12, line: 236, baseType: !659, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !666, file: !12, line: 237, baseType: !652, size: 64, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !666, file: !12, line: 238, baseType: !659, size: 64, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !666, file: !12, line: 239, baseType: !686, size: 4096, align: 512, offset: 512)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 4096, align: 512, elements: !687)
!687 = !{!688}
!688 = !DISubrange(count: 8)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !662, file: !12, line: 161, baseType: !13, size: 32, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !662, file: !12, line: 162, baseType: !691, size: 32, offset: 96)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !217, line: 32, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !234, line: 96, baseType: !114)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !662, file: !12, line: 163, baseType: !694, size: 32, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !695, line: 274, baseType: !696)
!695 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !695, line: 274, size: 32, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !696, file: !695, line: 274, baseType: !699, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !695, line: 69, baseType: !700)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !695, line: 64, size: 32, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !700, file: !695, line: 65, baseType: !13, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !662, file: !12, line: 164, baseType: !659, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !662, file: !12, line: 165, baseType: !705, size: 128, offset: 256)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !648, line: 14, size: 128, elements: !706)
!706 = !{!707}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !705, file: !648, line: 15, baseType: !708, size: 128)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !295, line: 26, size: 128, elements: !709)
!709 = !{!710, !714}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !708, file: !295, line: 27, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !295, line: 12, size: 64, elements: !712)
!712 = !{!713}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !711, file: !295, line: 13, baseType: !300, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !708, file: !295, line: 28, baseType: !300, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !662, file: !12, line: 166, baseType: !716, size: 64, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!652}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !662, file: !12, line: 167, baseType: !652, size: 64, offset: 448)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !644, file: !12, line: 123, baseType: !331, size: 8, offset: 448)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !644, file: !12, line: 124, baseType: !331, size: 8, offset: 456)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !644, file: !12, line: 125, baseType: !331, size: 8, offset: 464)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !644, file: !12, line: 126, baseType: !331, size: 8, offset: 472)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !628, file: !529, line: 671, baseType: !644, size: 512, offset: 1216)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !628, file: !529, line: 679, baseType: !726, size: 64, offset: 1728)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !528, file: !529, line: 800, baseType: !728, size: 64, offset: 5248)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!730 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !529, line: 800, flags: DIFlagFwdDecl)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !528, file: !529, line: 809, baseType: !732, size: 64, offset: 5312)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !529, line: 70, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !528, file: !529, line: 825, baseType: !735, size: 2048, align: 512, offset: 5632)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !529, line: 509, size: 2048, align: 512, elements: !736)
!736 = !{!737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !735, file: !529, line: 511, baseType: !255, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !735, file: !529, line: 512, baseType: !255, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !735, file: !529, line: 513, baseType: !255, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !735, file: !529, line: 514, baseType: !255, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !735, file: !529, line: 515, baseType: !255, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !735, file: !529, line: 516, baseType: !255, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !735, file: !529, line: 518, baseType: !255, size: 64, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !735, file: !529, line: 519, baseType: !255, size: 64, offset: 448)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !735, file: !529, line: 520, baseType: !221, size: 64, offset: 512)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !735, file: !529, line: 522, baseType: !255, size: 64, offset: 576)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !735, file: !529, line: 523, baseType: !255, size: 64, offset: 640)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !735, file: !529, line: 524, baseType: !221, size: 64, offset: 704)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !735, file: !529, line: 526, baseType: !221, size: 64, offset: 768)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !735, file: !529, line: 527, baseType: !255, size: 64, offset: 832)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !735, file: !529, line: 529, baseType: !255, size: 64, offset: 896)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !735, file: !529, line: 530, baseType: !255, size: 64, offset: 960)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !735, file: !529, line: 531, baseType: !255, size: 64, offset: 1024)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !735, file: !529, line: 532, baseType: !255, size: 64, offset: 1088)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !735, file: !529, line: 533, baseType: !255, size: 64, offset: 1152)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !735, file: !529, line: 535, baseType: !255, size: 64, offset: 1216)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !735, file: !529, line: 536, baseType: !255, size: 64, offset: 1280)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !735, file: !529, line: 537, baseType: !255, size: 64, offset: 1344)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !735, file: !529, line: 538, baseType: !255, size: 64, offset: 1408)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !735, file: !529, line: 539, baseType: !255, size: 64, offset: 1472)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !735, file: !529, line: 540, baseType: !255, size: 64, offset: 1536)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !735, file: !529, line: 541, baseType: !255, size: 64, offset: 1600)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !735, file: !529, line: 542, baseType: !255, size: 64, offset: 1664)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !735, file: !529, line: 543, baseType: !255, size: 64, offset: 1728)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !528, file: !529, line: 833, baseType: !13, size: 32, offset: 7680)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !528, file: !529, line: 836, baseType: !13, size: 32, offset: 7712)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !528, file: !529, line: 837, baseType: !114, size: 32, offset: 7744)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !528, file: !529, line: 838, baseType: !769, size: 64, offset: 7808)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !772, line: 19, baseType: !773)
!772 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !772, line: 19, size: 64, elements: !774)
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !773, file: !772, line: 19, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 64, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 1)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !528, file: !529, line: 839, baseType: !780, size: 64, offset: 7872)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !528, file: !529, line: 840, baseType: !771, size: 64, offset: 7936)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !528, file: !529, line: 841, baseType: !207, size: 64, offset: 8000)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !528, file: !529, line: 843, baseType: !340, size: 16, offset: 8064)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !528, file: !529, line: 845, baseType: !340, size: 16, offset: 8080)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !528, file: !529, line: 848, baseType: !114, size: 32, offset: 8096)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !528, file: !529, line: 849, baseType: !787, size: 32, offset: 8128)
!787 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !529, line: 718, size: 32, elements: !788)
!788 = !{!789, !796}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !787, file: !529, line: 724, baseType: !790, size: 32)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !529, line: 719, size: 32, elements: !791)
!791 = !{!792, !793, !794, !795}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !790, file: !529, line: 720, baseType: !331, size: 8)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !790, file: !529, line: 721, baseType: !331, size: 8, offset: 8)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !790, file: !529, line: 722, baseType: !331, size: 8, offset: 16)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !790, file: !529, line: 723, baseType: !331, size: 8, offset: 24)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !787, file: !529, line: 725, baseType: !360, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !528, file: !529, line: 850, baseType: !288, size: 128, offset: 8192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !528, file: !529, line: 851, baseType: !799, size: 64, offset: 8320)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !529, line: 60, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !528, file: !529, line: 855, baseType: !298, size: 64, offset: 8384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !528, file: !529, line: 856, baseType: !331, size: 8, offset: 8448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !528, file: !529, line: 857, baseType: !331, size: 8, offset: 8456)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !528, file: !529, line: 858, baseType: !114, size: 32, offset: 8480)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !528, file: !529, line: 859, baseType: !288, size: 128, offset: 8512)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !528, file: !529, line: 860, baseType: !114, size: 32, offset: 8640)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !528, file: !529, line: 861, baseType: !288, size: 128, offset: 8704)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !528, file: !529, line: 873, baseType: !809, size: 256, offset: 8832)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !529, line: 376, size: 256, elements: !810)
!810 = !{!811, !812, !813, !814}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !809, file: !529, line: 381, baseType: !298, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !809, file: !529, line: 384, baseType: !257, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !809, file: !529, line: 389, baseType: !257, size: 64, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !809, file: !529, line: 392, baseType: !257, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !528, file: !529, line: 875, baseType: !288, size: 128, offset: 9088)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !528, file: !529, line: 877, baseType: !817, size: 320, offset: 9216)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !818, line: 86, size: 320, elements: !819)
!818 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!819 = !{!820, !821, !822}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !817, file: !818, line: 87, baseType: !114, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !817, file: !818, line: 88, baseType: !288, size: 128, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !817, file: !818, line: 89, baseType: !288, size: 128, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !528, file: !529, line: 878, baseType: !294, size: 192, align: 64, offset: 9536)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !528, file: !529, line: 881, baseType: !825, size: 64, offset: 9728)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !41, line: 733, size: 10240, elements: !827)
!827 = !{!828, !4594}
!828 = !DIDerivedType(tag: DW_TAG_member, scope: !826, file: !41, line: 734, baseType: !829, size: 10240)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !826, file: !41, line: 734, size: 10240, elements: !830)
!830 = !{!831, !835, !857, !4473, !4474, !4475, !4476, !4477, !4478, !4485, !4486, !4487, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4526, !4528, !4531, !4574, !4575, !4576, !4579, !4580, !4581, !4584, !4585, !4586, !4592, !4593}
!831 = !DIDerivedType(tag: DW_TAG_member, scope: !829, file: !41, line: 739, baseType: !832, size: 512, align: 512)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !829, file: !41, line: 739, size: 512, align: 512, elements: !833)
!833 = !{!834}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !832, file: !41, line: 747, baseType: !275, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !829, file: !41, line: 750, baseType: !836, size: 128, offset: 512)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !837, line: 218, size: 128, elements: !838)
!837 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!838 = !{!839, !855, !856}
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !837, line: 219, baseType: !840, size: 32)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !837, line: 219, size: 32, elements: !841)
!841 = !{!842, !851}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !840, file: !837, line: 220, baseType: !843, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !844, line: 29, baseType: !845)
!844 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !844, line: 17, size: 32, elements: !846)
!846 = !{!847}
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !844, line: 18, baseType: !848, size: 32)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !844, line: 18, size: 32, elements: !849)
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !848, file: !844, line: 19, baseType: !316, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !840, file: !837, line: 221, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !837, line: 197, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !837, line: 197, elements: !854)
!854 = !{}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !836, file: !837, line: 223, baseType: !13, size: 32, offset: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !836, file: !837, line: 224, baseType: !207, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !829, file: !41, line: 752, baseType: !858, size: 64, offset: 640)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!298, !861, !298, !298, !298, !298}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !70, line: 994, size: 1856, align: 64, elements: !863)
!863 = !{!864, !870, !871, !873, !874, !882, !885, !886, !945, !946, !955, !4463, !4464, !4465, !4466, !4467, !4468, !4470, !4471, !4472}
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !70, line: 995, baseType: !865, size: 128)
!865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !862, file: !70, line: 995, size: 128, elements: !866)
!866 = !{!867, !868, !869}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !865, file: !70, line: 996, baseType: !550, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !865, file: !70, line: 997, baseType: !394, size: 128, align: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !865, file: !70, line: 998, baseType: !13, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !862, file: !70, line: 1005, baseType: !843, size: 32, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !862, file: !70, line: 1006, baseType: !872, size: 32, offset: 160)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !217, line: 156, baseType: !13)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !862, file: !70, line: 1007, baseType: !214, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !862, file: !70, line: 1008, baseType: !875, size: 256, offset: 256)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !876, line: 66, size: 256, elements: !877)
!876 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!877 = !{!878, !879, !880, !881}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !875, file: !876, line: 67, baseType: !214, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !875, file: !876, line: 68, baseType: !314, size: 32, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !875, file: !876, line: 70, baseType: !309, size: 32, offset: 96)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !875, file: !876, line: 72, baseType: !288, size: 128, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !862, file: !70, line: 1009, baseType: !883, size: 64, offset: 512)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !217, line: 52, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !234, line: 88, baseType: !225)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !862, file: !70, line: 1010, baseType: !13, size: 32, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !862, file: !70, line: 1011, baseType: !887, size: 256, offset: 640)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !70, line: 948, size: 256, elements: !888)
!888 = !{!889, !912, !941, !942, !943, !944}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !887, file: !70, line: 949, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !891, line: 34, baseType: !892)
!891 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !891, line: 25, size: 64, elements: !893)
!893 = !{!894}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !892, file: !891, line: 26, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !896, line: 27, baseType: !897)
!896 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !896, line: 13, size: 64, elements: !898)
!898 = !{!899, !911}
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !896, line: 14, baseType: !900, size: 32)
!900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !897, file: !896, line: 14, size: 32, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !900, file: !896, line: 15, baseType: !275, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !900, file: !896, line: 16, baseType: !904, size: 32)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !900, file: !896, line: 16, size: 32, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !904, file: !896, line: 18, baseType: !331, size: 8)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !904, file: !896, line: 19, baseType: !908, size: 24, offset: 8)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 24, elements: !909)
!909 = !{!910}
!910 = !DISubrange(count: 3)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !897, file: !896, line: 26, baseType: !319, size: 32, offset: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !887, file: !70, line: 950, baseType: !913, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !18, line: 59, size: 768, elements: !915)
!915 = !{!916, !917, !918, !919, !924, !925, !932, !933}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !914, file: !18, line: 61, baseType: !270, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !914, file: !18, line: 62, baseType: !13, size: 32, offset: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !914, file: !18, line: 63, baseType: !843, size: 32, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !914, file: !18, line: 65, baseType: !920, size: 256, offset: 128)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !921, size: 256, elements: !427)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !217, line: 194, size: 64, elements: !922)
!922 = !{!923}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !921, file: !217, line: 195, baseType: !481, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !914, file: !18, line: 66, baseType: !921, size: 64, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !914, file: !18, line: 68, baseType: !926, size: 192, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !927, line: 41, baseType: !928)
!927 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !927, line: 37, size: 192, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !928, file: !927, line: 38, baseType: !843, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !928, file: !927, line: 39, baseType: !288, size: 128, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !914, file: !18, line: 69, baseType: !394, size: 128, align: 64, offset: 640)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !914, file: !18, line: 70, baseType: !934, offset: 768)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, elements: !512)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !18, line: 54, size: 128, elements: !936)
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !935, file: !18, line: 55, baseType: !114, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !935, file: !18, line: 56, baseType: !939, size: 64, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !18, line: 56, flags: DIFlagFwdDecl)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !887, file: !70, line: 951, baseType: !17, size: 32, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !887, file: !70, line: 952, baseType: !227, size: 32, offset: 160)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !887, file: !70, line: 952, baseType: !227, size: 32, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !887, file: !70, line: 953, baseType: !114, size: 32, offset: 224)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !862, file: !70, line: 1012, baseType: !208, size: 64, offset: 896)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !862, file: !70, line: 1013, baseType: !947, size: 256, offset: 960)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !70, line: 970, size: 256, elements: !948)
!948 = !{!949, !950, !951, !952, !953, !954}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !947, file: !70, line: 971, baseType: !298, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !947, file: !70, line: 972, baseType: !13, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !947, file: !70, line: 973, baseType: !13, size: 32, offset: 96)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !947, file: !70, line: 974, baseType: !13, size: 32, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !947, file: !70, line: 975, baseType: !13, size: 32, offset: 160)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !947, file: !70, line: 976, baseType: !883, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !862, file: !70, line: 1014, baseType: !956, size: 128, offset: 1216)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !957, line: 8, size: 128, elements: !958)
!957 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!958 = !{!959, !4462}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !956, file: !957, line: 9, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !962, line: 70, size: 256, elements: !963)
!962 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!963 = !{!964, !4459, !4460, !4461}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !961, file: !962, line: 71, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !967, line: 82, size: 1536, elements: !968)
!967 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!968 = !{!969, !970, !975, !983, !984, !999, !4426, !4428, !4441, !4442, !4443, !4444, !4445, !4451, !4452, !4453}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !966, file: !967, line: 84, baseType: !13, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !966, file: !967, line: 85, baseType: !971, size: 32, offset: 32)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !695, line: 275, baseType: !972)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !695, line: 275, size: 32, elements: !973)
!973 = !{!974}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !972, file: !695, line: 275, baseType: !699, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !966, file: !967, line: 86, baseType: !976, size: 128, offset: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !977, line: 38, size: 128, elements: !978)
!977 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!978 = !{!979, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !976, file: !977, line: 39, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !976, file: !977, line: 39, baseType: !982, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !966, file: !967, line: 87, baseType: !965, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !966, file: !967, line: 88, baseType: !985, size: 128, offset: 256)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !967, line: 49, size: 128, elements: !986)
!986 = !{!987, !996}
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !967, line: 50, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !985, file: !967, line: 50, size: 64, elements: !989)
!989 = !{!990, !995}
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !967, line: 51, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !988, file: !967, line: 51, size: 64, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !991, file: !967, line: 52, baseType: !360, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !991, file: !967, line: 52, baseType: !360, size: 32, offset: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !988, file: !967, line: 54, baseType: !255, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !985, file: !967, line: 56, baseType: !997, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !966, file: !967, line: 89, baseType: !1000, size: 64, offset: 384)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !70, line: 641, size: 4800, elements: !1002)
!1002 = !{!1003, !1005, !1006, !1007, !1008, !1009, !1010, !1013, !1014, !1211, !4243, !4244, !4245, !4246, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4408, !4411, !4412, !4413, !4422, !4423, !4424, !4425}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1001, file: !70, line: 642, baseType: !1004, size: 16)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !217, line: 24, baseType: !340)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1001, file: !70, line: 643, baseType: !340, size: 16, offset: 16)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1001, file: !70, line: 644, baseType: !227, size: 32, offset: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1001, file: !70, line: 645, baseType: !288, size: 128, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1001, file: !70, line: 646, baseType: !236, size: 32, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1001, file: !70, line: 647, baseType: !13, size: 32, offset: 224)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1001, file: !70, line: 650, baseType: !1011, size: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !70, line: 607, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1001, file: !70, line: 651, baseType: !1011, size: 64, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1001, file: !70, line: 654, baseType: !1015, size: 64, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !70, line: 1966, size: 2048, align: 512, elements: !1018)
!1018 = !{!1019, !1023, !1036, !1042, !1046, !1050, !1054, !1058, !1062, !1066, !1070, !1071, !1077, !1081, !1119, !1150, !1160, !1166, !1170, !1174, !1178, !1182, !1186, !1192, !1196}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1017, file: !70, line: 1967, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!965, !1000, !965, !13}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1017, file: !70, line: 1968, baseType: !1024, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!407, !965, !1000, !1027}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1029, line: 10, size: 128, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1030 = !{!1031, !1035}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1028, file: !1029, line: 11, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !207}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1028, file: !1029, line: 12, baseType: !207, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1017, file: !70, line: 1969, baseType: !1037, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!114, !1040, !1000, !114}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !251, line: 42, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1017, file: !70, line: 1970, baseType: !1043, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!1011, !1000, !114, !404}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1017, file: !70, line: 1972, baseType: !1047, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!114, !965, !417, !114}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1017, file: !70, line: 1974, baseType: !1051, size: 64, offset: 320)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!114, !1040, !1000, !965, !1004, !404}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1017, file: !70, line: 1976, baseType: !1055, size: 64, offset: 384)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!114, !965, !1000, !965}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1017, file: !70, line: 1977, baseType: !1059, size: 64, offset: 448)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!114, !1000, !965}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1017, file: !70, line: 1978, baseType: !1063, size: 64, offset: 512)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!114, !1040, !1000, !965, !407}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1017, file: !70, line: 1980, baseType: !1067, size: 64, offset: 576)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!114, !1040, !1000, !965, !1004}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1017, file: !70, line: 1982, baseType: !1059, size: 64, offset: 640)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1017, file: !70, line: 1983, baseType: !1072, size: 64, offset: 704)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!114, !1040, !1000, !965, !1004, !1075}
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !217, line: 21, baseType: !1076)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !217, line: 18, baseType: !360)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1017, file: !70, line: 1985, baseType: !1078, size: 64, offset: 768)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!114, !1040, !1000, !965, !1000, !965, !13}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1017, file: !70, line: 1987, baseType: !1082, size: 64, offset: 832)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!114, !1040, !965, !1085}
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !70, line: 226, size: 640, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1100, !1109, !1110, !1116, !1117, !1118}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1086, file: !70, line: 227, baseType: !13, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1086, file: !70, line: 228, baseType: !1004, size: 16, offset: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1086, file: !70, line: 241, baseType: !1091, size: 32, offset: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1086, file: !70, line: 241, size: 32, elements: !1092)
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1091, file: !70, line: 242, baseType: !227, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1091, file: !70, line: 243, baseType: !1095, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1096, line: 16, baseType: !1097)
!1096 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1096, line: 14, size: 32, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1097, file: !1096, line: 15, baseType: !232, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !1086, file: !70, line: 245, baseType: !1101, size: 32, offset: 96)
!1101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1086, file: !70, line: 245, size: 32, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1101, file: !70, line: 246, baseType: !236, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1101, file: !70, line: 247, baseType: !1105, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1096, line: 20, baseType: !1106)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1096, line: 18, size: 32, elements: !1107)
!1107 = !{!1108}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1106, file: !1096, line: 19, baseType: !240, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1086, file: !70, line: 249, baseType: !883, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1086, file: !70, line: 250, baseType: !1111, size: 128, offset: 192)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !352, line: 13, size: 128, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1111, file: !352, line: 14, baseType: !351, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1111, file: !352, line: 15, baseType: !1115, size: 64, offset: 64)
!1115 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1086, file: !70, line: 251, baseType: !1111, size: 128, offset: 320)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1086, file: !70, line: 252, baseType: !1111, size: 128, offset: 448)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1086, file: !70, line: 259, baseType: !861, size: 64, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1017, file: !70, line: 1988, baseType: !1120, size: 64, offset: 896)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!114, !1040, !1123, !1125, !360, !13}
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !956)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1127, line: 22, size: 1280, elements: !1128)
!1127 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1128 = !{!1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1126, file: !1127, line: 23, baseType: !360, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1126, file: !1127, line: 24, baseType: !1004, size: 16, offset: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1126, file: !1127, line: 25, baseType: !13, size: 32, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1126, file: !1127, line: 26, baseType: !359, size: 32, offset: 96)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1126, file: !1127, line: 27, baseType: !255, size: 64, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1126, file: !1127, line: 28, baseType: !255, size: 64, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1126, file: !1127, line: 41, baseType: !255, size: 64, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1126, file: !1127, line: 42, baseType: !1075, size: 32, offset: 320)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1126, file: !1127, line: 43, baseType: !1075, size: 32, offset: 352)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1126, file: !1127, line: 44, baseType: !227, size: 32, offset: 384)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1126, file: !1127, line: 45, baseType: !236, size: 32, offset: 416)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1126, file: !1127, line: 46, baseType: !883, size: 64, offset: 448)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1126, file: !1127, line: 47, baseType: !1111, size: 128, offset: 512)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1126, file: !1127, line: 48, baseType: !1111, size: 128, offset: 640)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1126, file: !1127, line: 49, baseType: !1111, size: 128, offset: 768)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1126, file: !1127, line: 50, baseType: !1111, size: 128, offset: 896)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1126, file: !1127, line: 51, baseType: !255, size: 64, offset: 1024)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1126, file: !1127, line: 52, baseType: !255, size: 64, offset: 1088)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1126, file: !1127, line: 53, baseType: !360, size: 32, offset: 1152)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1126, file: !1127, line: 54, baseType: !360, size: 32, offset: 1184)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1126, file: !1127, line: 55, baseType: !255, size: 64, offset: 1216)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1017, file: !70, line: 1990, baseType: !1151, size: 64, offset: 960)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!1154, !965, !417, !1157}
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !217, line: 66, baseType: !1155)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !234, line: 73, baseType: !1156)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !234, line: 15, baseType: !1115)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !217, line: 61, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !234, line: 72, baseType: !1159)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !234, line: 16, baseType: !298)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1017, file: !70, line: 1991, baseType: !1161, size: 64, offset: 1024)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!114, !1000, !1164, !255, !255}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !70, line: 55, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1017, file: !70, line: 1993, baseType: !1167, size: 64, offset: 1088)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!114, !1000, !114}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1017, file: !70, line: 1994, baseType: !1171, size: 64, offset: 1152)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!114, !1000, !965, !861, !13, !1004}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1017, file: !70, line: 1997, baseType: !1175, size: 64, offset: 1216)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!114, !1040, !1000, !861, !1004}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1017, file: !70, line: 1999, baseType: !1179, size: 64, offset: 1280)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!1011, !1040, !965, !114}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1017, file: !70, line: 2001, baseType: !1183, size: 64, offset: 1344)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!114, !1040, !965, !1011, !114}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1017, file: !70, line: 2003, baseType: !1187, size: 64, offset: 1408)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!114, !1040, !965, !1190}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !70, line: 76, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1017, file: !70, line: 2005, baseType: !1193, size: 64, offset: 1472)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!114, !965, !1190}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1017, file: !70, line: 2006, baseType: !1197, size: 64, offset: 1536)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!1200, !1000}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !70, line: 3192, size: 192, elements: !1202)
!1202 = !{!1203, !1210}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1201, file: !70, line: 3193, baseType: !1204, size: 128)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1205, line: 296, size: 128, elements: !1206)
!1205 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1206 = !{!1207, !1208, !1209}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1204, file: !1205, line: 297, baseType: !843, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1204, file: !1205, line: 299, baseType: !522, size: 32, offset: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1204, file: !1205, line: 300, baseType: !207, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1201, file: !70, line: 3194, baseType: !360, size: 32, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1001, file: !70, line: 655, baseType: !1212, size: 64, offset: 448)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !70, line: 1190, size: 10752, elements: !1214)
!1214 = !{!1215, !1216, !1217, !1218, !1219, !1220, !2469, !2601, !2641, !2724, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2741, !2745, !2746, !4040, !4046, !4047, !4050, !4051, !4052, !4093, !4119, !4120, !4121, !4122, !4123, !4124, !4127, !4128, !4135, !4136, !4137, !4138, !4197, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1213, file: !70, line: 1191, baseType: !288, size: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1213, file: !70, line: 1192, baseType: !1075, size: 32, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1213, file: !70, line: 1193, baseType: !263, size: 8, offset: 160)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1213, file: !70, line: 1194, baseType: !298, size: 64, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1213, file: !70, line: 1195, baseType: !883, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1213, file: !70, line: 1196, baseType: !1221, size: 64, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !70, line: 2366, size: 576, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1233, !1237, !1241, !1245, !2457, !2458, !2459, !2461, !2462, !2463, !2465, !2466, !2467, !2468}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1222, file: !70, line: 2367, baseType: !407, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1222, file: !70, line: 2368, baseType: !114, size: 32, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1222, file: !70, line: 2376, baseType: !1227, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!114, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1232, line: 32, flags: DIFlagFwdDecl)
!1232 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1222, file: !70, line: 2377, baseType: !1234, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1236)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !70, line: 75, flags: DIFlagFwdDecl)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1222, file: !70, line: 2378, baseType: !1238, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!965, !1221, !114, !407, !207}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1222, file: !70, line: 2380, baseType: !1242, size: 64, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{null, !1212}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1222, file: !70, line: 2381, baseType: !1246, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !26, line: 402, size: 9216, align: 512, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1255, !2100, !2126, !2127, !2128, !2129, !2133, !2136, !2137, !2138, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2206, !2210, !2230, !2250, !2251, !2252, !2253, !2262, !2285, !2286, !2289, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2303, !2304, !2415, !2423, !2424, !2425, !2427, !2431, !2432, !2436, !2437, !2438, !2439, !2441, !2442, !2443, !2450, !2451, !2452, !2456}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1247, file: !26, line: 403, baseType: !25, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1247, file: !26, line: 406, baseType: !288, size: 128, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1247, file: !26, line: 409, baseType: !1252, size: 448, offset: 192)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1253)
!1253 = !{!1254}
!1254 = !DISubrange(count: 56)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1247, file: !26, line: 417, baseType: !1256, size: 768, offset: 640)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !26, line: 45, size: 768, elements: !1257)
!1257 = !{!1258, !2093, !2094, !2095, !2098}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1256, file: !26, line: 46, baseType: !1259, size: 512)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1260, line: 64, size: 512, elements: !1261)
!1260 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1261 = !{!1262, !1263, !1264, !1266, !1310, !1973, !2083, !2088, !2089, !2090, !2091, !2092}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1259, file: !1260, line: 65, baseType: !407, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1259, file: !1260, line: 66, baseType: !288, size: 128, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1259, file: !1260, line: 67, baseType: !1265, size: 64, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1259, file: !1260, line: 68, baseType: !1267, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1260, line: 168, size: 768, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1268, file: !1260, line: 169, baseType: !288, size: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1268, file: !1260, line: 170, baseType: !843, size: 32, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1268, file: !1260, line: 171, baseType: !1259, size: 512, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1268, file: !1260, line: 172, baseType: !1274, size: 64, offset: 704)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1276)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1260, line: 133, size: 192, elements: !1277)
!1277 = !{!1278, !1285, !1290}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1276, file: !1260, line: 134, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1280)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!114, !1283}
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1276, file: !1260, line: 135, baseType: !1286, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1287)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!407, !1283}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1276, file: !1260, line: 136, baseType: !1291, size: 64, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1292)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!114, !1283, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1260, line: 125, size: 20736, elements: !1297)
!1297 = !{!1298, !1300, !1304, !1305, !1309}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1296, file: !1260, line: 126, baseType: !1299, size: 192)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 192, elements: !909)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1296, file: !1260, line: 127, baseType: !1301, size: 4096, offset: 192)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 4096, elements: !1302)
!1302 = !{!1303}
!1303 = !DISubrange(count: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1296, file: !1260, line: 128, baseType: !114, size: 32, offset: 4288)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1296, file: !1260, line: 129, baseType: !1306, size: 16384, offset: 4320)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1307)
!1307 = !{!1308}
!1308 = !DISubrange(count: 2048)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1296, file: !1260, line: 130, baseType: !114, size: 32, offset: 20704)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1259, file: !1260, line: 69, baseType: !1311, size: 64, offset: 320)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1313)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1260, line: 116, size: 384, elements: !1314)
!1314 = !{!1315, !1319, !1338, !1933, !1963, !1967}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1313, file: !1260, line: 117, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !1265}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1313, file: !1260, line: 118, baseType: !1320, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1322)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1323, line: 254, size: 128, elements: !1324)
!1323 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1324 = !{!1325, !1334}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1322, file: !1323, line: 255, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!1154, !1265, !1329, !417}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1323, line: 30, size: 128, elements: !1331)
!1331 = !{!1332, !1333}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1330, file: !1323, line: 31, baseType: !407, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1330, file: !1323, line: 32, baseType: !1004, size: 16, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1322, file: !1323, line: 256, baseType: !1335, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!1154, !1265, !1329, !407, !1157}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1313, file: !1260, line: 119, baseType: !1339, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1342)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1323, line: 84, size: 320, elements: !1343)
!1343 = !{!1344, !1345, !1349, !1929, !1931}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1342, file: !1323, line: 85, baseType: !407, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1342, file: !1323, line: 86, baseType: !1346, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!1004, !1265, !1329, !114}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1342, file: !1323, line: 88, baseType: !1350, size: 64, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!1004, !1265, !1353, !114}
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1323, line: 175, size: 512, elements: !1355)
!1355 = !{!1356, !1357, !1358, !1359, !1920, !1924, !1925}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1354, file: !1323, line: 176, baseType: !1330, size: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1354, file: !1323, line: 177, baseType: !1157, size: 64, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1354, file: !1323, line: 178, baseType: !207, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1354, file: !1323, line: 179, baseType: !1360, size: 64, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!1363}
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !70, line: 472, size: 1536, align: 64, elements: !1365)
!1365 = !{!1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1912, !1913, !1914, !1917, !1918, !1919}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1364, file: !70, line: 473, baseType: !1000, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1364, file: !70, line: 474, baseType: !1204, size: 128, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1364, file: !70, line: 475, baseType: !303, size: 320, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1364, file: !70, line: 476, baseType: !522, size: 32, offset: 512)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1364, file: !70, line: 477, baseType: !275, size: 32, offset: 544)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1364, file: !70, line: 482, baseType: !708, size: 128, offset: 576)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1364, file: !70, line: 483, baseType: !298, size: 64, offset: 704)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1364, file: !70, line: 484, baseType: !298, size: 64, offset: 768)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1364, file: !70, line: 485, baseType: !1375, size: 64, offset: 832)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1377)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !70, line: 404, size: 1280, elements: !1378)
!1378 = !{!1379, !1682, !1752, !1756, !1760, !1766, !1772, !1776, !1781, !1785, !1789, !1793, !1876, !1880, !1884, !1888, !1893, !1897, !1904, !1908}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1377, file: !70, line: 405, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!114, !1383, !1680}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !41, line: 74, size: 512, align: 128, elements: !1385)
!1385 = !{!1386, !1387, !1674, !1679}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1384, file: !41, line: 75, baseType: !298, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !41, line: 83, baseType: !1388, size: 320, offset: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1384, file: !41, line: 83, size: 320, elements: !1389)
!1389 = !{!1390, !1411, !1425, !1429, !1673}
!1390 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !41, line: 84, baseType: !1391, size: 320)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1388, file: !41, line: 84, size: 320, elements: !1392)
!1392 = !{!1393, !1404, !1405, !1410}
!1393 = !DIDerivedType(tag: DW_TAG_member, scope: !1391, file: !41, line: 90, baseType: !1394, size: 128)
!1394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1391, file: !41, line: 90, size: 128, elements: !1395)
!1395 = !{!1396, !1397, !1402, !1403}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1394, file: !41, line: 91, baseType: !288, size: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1394, file: !41, line: 94, baseType: !1398, size: 128)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1394, file: !41, line: 94, size: 128, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1398, file: !41, line: 96, baseType: !207, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1398, file: !41, line: 98, baseType: !13, size: 32, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1394, file: !41, line: 102, baseType: !288, size: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1394, file: !41, line: 103, baseType: !288, size: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1391, file: !41, line: 106, baseType: !1363, size: 64, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_member, scope: !1391, file: !41, line: 107, baseType: !1406, size: 64, offset: 192)
!1406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1391, file: !41, line: 107, size: 64, elements: !1407)
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1406, file: !41, line: 108, baseType: !298, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1406, file: !41, line: 109, baseType: !298, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1391, file: !41, line: 117, baseType: !298, size: 64, offset: 256)
!1411 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !41, line: 119, baseType: !1412, size: 320)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1388, file: !41, line: 119, size: 320, elements: !1413)
!1413 = !{!1414, !1415, !1418, !1419, !1420}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1412, file: !41, line: 124, baseType: !298, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1412, file: !41, line: 125, baseType: !1416, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !41, line: 125, flags: DIFlagFwdDecl)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1412, file: !41, line: 126, baseType: !298, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1412, file: !41, line: 127, baseType: !298, size: 64, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !41, line: 128, baseType: !1421, size: 64, offset: 256)
!1421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1412, file: !41, line: 128, size: 64, elements: !1422)
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1421, file: !41, line: 133, baseType: !298, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1421, file: !41, line: 138, baseType: !214, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !41, line: 141, baseType: !1426, size: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1388, file: !41, line: 141, size: 64, elements: !1427)
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1426, file: !41, line: 142, baseType: !298, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !41, line: 144, baseType: !1430, size: 128)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1388, file: !41, line: 144, size: 128, elements: !1431)
!1431 = !{!1432, !1672}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1430, file: !41, line: 146, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !33, line: 126, size: 1216, elements: !1435)
!1435 = !{!1436, !1446, !1467, !1478, !1479, !1480, !1481, !1654, !1655, !1656}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1434, file: !33, line: 127, baseType: !1437, size: 384)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !33, line: 21, size: 384, elements: !1438)
!1438 = !{!1439, !1440, !1442, !1443, !1444, !1445}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1437, file: !33, line: 22, baseType: !298, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1437, file: !33, line: 23, baseType: !1441, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1437, file: !33, line: 24, baseType: !1441, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1437, file: !33, line: 25, baseType: !298, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1437, file: !33, line: 26, baseType: !298, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1437, file: !33, line: 27, baseType: !298, size: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1434, file: !33, line: 128, baseType: !1447, size: 128, offset: 384)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1448, line: 105, size: 128, elements: !1449)
!1448 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1447, file: !1448, line: 110, baseType: !298, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1447, file: !1448, line: 118, baseType: !1452, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1448, line: 95, size: 448, elements: !1454)
!1454 = !{!1455, !1456, !1462, !1463, !1464, !1465, !1466}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1453, file: !1448, line: 96, baseType: !214, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1453, file: !1448, line: 97, baseType: !1457, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1448, line: 60, baseType: !1459)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{null, !1461}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1453, file: !1448, line: 98, baseType: !1457, size: 64, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1453, file: !1448, line: 99, baseType: !404, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1453, file: !1448, line: 100, baseType: !404, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1453, file: !1448, line: 101, baseType: !394, size: 128, align: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1453, file: !1448, line: 102, baseType: !1461, size: 64, offset: 384)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1434, file: !33, line: 129, baseType: !1468, size: 256, offset: 512)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1469, line: 26, size: 256, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1468, file: !1469, line: 27, baseType: !13, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1468, file: !1469, line: 28, baseType: !1473, size: 192, offset: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1474, line: 43, size: 192, elements: !1475)
!1474 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1473, file: !1474, line: 44, baseType: !314, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1473, file: !1474, line: 45, baseType: !288, size: 128, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1434, file: !33, line: 130, baseType: !32, size: 32, offset: 768)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1434, file: !33, line: 131, baseType: !13, size: 32, offset: 800)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1434, file: !33, line: 132, baseType: !298, size: 64, offset: 832)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1434, file: !33, line: 133, baseType: !1482, size: 64, offset: 896)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1484)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !33, line: 77, size: 192, elements: !1485)
!1485 = !{!1486, !1490, !1650}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1484, file: !33, line: 83, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{null, !1383}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1484, file: !33, line: 89, baseType: !1491, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !41, line: 1184, baseType: !13)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1497, line: 512, size: 896, elements: !1498)
!1497 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1498 = !{!1499, !1617, !1618, !1625, !1632, !1642, !1643, !1644, !1646, !1648}
!1499 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !1497, line: 513, baseType: !1500, size: 320)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1496, file: !1497, line: 513, size: 320, elements: !1501)
!1501 = !{!1502, !1613, !1614, !1615, !1616}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1500, file: !1497, line: 514, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !41, line: 625, size: 1344, elements: !1505)
!1505 = !{!1506, !1515, !1516, !1524, !1531, !1532, !1537, !1538, !1543, !1544, !1547, !1606, !1607, !1608, !1609, !1610, !1611}
!1506 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !41, line: 628, baseType: !1507, size: 128)
!1507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !41, line: 628, size: 128, elements: !1508)
!1508 = !{!1509, !1514}
!1509 = !DIDerivedType(tag: DW_TAG_member, scope: !1507, file: !41, line: 629, baseType: !1510, size: 128)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1507, file: !41, line: 629, size: 128, elements: !1511)
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1510, file: !41, line: 631, baseType: !298, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1510, file: !41, line: 632, baseType: !298, size: 64, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1507, file: !41, line: 635, baseType: !394, size: 128, align: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1504, file: !41, line: 639, baseType: !825, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1504, file: !41, line: 640, baseType: !1517, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1518, line: 297, baseType: !1519)
!1518 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1518, line: 297, size: 64, elements: !1520)
!1520 = !{!1521}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1519, file: !1518, line: 297, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1523, line: 19, baseType: !298)
!1523 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !41, line: 646, baseType: !1525, size: 64, offset: 256)
!1525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !41, line: 646, size: 64, elements: !1526)
!1526 = !{!1527, !1530}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1525, file: !41, line: 647, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1529)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !41, line: 542, baseType: !298)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1525, file: !41, line: 648, baseType: !1529, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1504, file: !41, line: 666, baseType: !114, size: 32, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1504, file: !41, line: 667, baseType: !1533, size: 64, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !41, line: 579, size: 320, elements: !1535)
!1535 = !{!1536}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1534, file: !41, line: 580, baseType: !303, size: 320)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1504, file: !41, line: 670, baseType: !404, size: 8, offset: 448)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1504, file: !41, line: 681, baseType: !1539, size: 256, offset: 512)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1504, file: !41, line: 678, size: 256, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1539, file: !41, line: 679, baseType: !294, size: 192, align: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1539, file: !41, line: 680, baseType: !298, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1504, file: !41, line: 689, baseType: !288, size: 128, offset: 768)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1504, file: !41, line: 691, baseType: !1545, size: 64, offset: 896)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !41, line: 691, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1504, file: !41, line: 694, baseType: !1548, size: 64, offset: 960)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1550)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1497, line: 563, size: 1024, elements: !1551)
!1551 = !{!1552, !1556, !1557, !1561, !1565, !1569, !1570, !1574, !1578, !1582, !1583, !1584, !1588, !1592, !1598, !1602}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1550, file: !1497, line: 564, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{null, !1503}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1550, file: !1497, line: 569, baseType: !1553, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1550, file: !1497, line: 571, baseType: !1558, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!114, !1503, !298}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1550, file: !1497, line: 572, baseType: !1562, size: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!114, !1503}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1550, file: !1497, line: 578, baseType: !1566, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!114, !1503, !298, !298, !298}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1550, file: !1497, line: 580, baseType: !1491, size: 64, offset: 320)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1550, file: !1497, line: 581, baseType: !1571, size: 64, offset: 384)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!1494, !1495, !13}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1550, file: !1497, line: 582, baseType: !1575, size: 64, offset: 448)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!1494, !1495, !298, !298}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1550, file: !1497, line: 584, baseType: !1579, size: 64, offset: 512)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!298, !1503}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1550, file: !1497, line: 588, baseType: !1491, size: 64, offset: 576)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1550, file: !1497, line: 591, baseType: !1491, size: 64, offset: 640)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1550, file: !1497, line: 597, baseType: !1585, size: 64, offset: 704)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!114, !1503, !298, !207, !114, !114}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1550, file: !1497, line: 603, baseType: !1589, size: 64, offset: 768)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!407, !1503}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1550, file: !1497, line: 613, baseType: !1593, size: 64, offset: 832)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!114, !1503, !1596}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !41, line: 717, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1550, file: !1497, line: 625, baseType: !1599, size: 64, offset: 896)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!1596, !1503, !298}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1550, file: !1497, line: 633, baseType: !1603, size: 64, offset: 960)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!1383, !1503, !298}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1504, file: !41, line: 697, baseType: !298, size: 64, offset: 1024)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1504, file: !41, line: 699, baseType: !861, size: 64, offset: 1088)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1504, file: !41, line: 700, baseType: !207, size: 64, offset: 1152)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1504, file: !41, line: 711, baseType: !214, size: 64, offset: 1216)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1504, file: !41, line: 717, baseType: !1596, size: 64, offset: 1280)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1504, file: !41, line: 722, baseType: !1612, offset: 1344)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !41, line: 570, elements: !854)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1500, file: !1497, line: 515, baseType: !522, size: 32, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1500, file: !1497, line: 516, baseType: !298, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1500, file: !1497, line: 517, baseType: !298, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1500, file: !1497, line: 518, baseType: !298, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1496, file: !1497, line: 520, baseType: !40, size: 32, offset: 320)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1496, file: !1497, line: 522, baseType: !1619, size: 64, offset: 384)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1523, line: 22, baseType: !1621)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1523, line: 22, size: 64, elements: !1622)
!1622 = !{!1623}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1621, file: !1523, line: 22, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1523, line: 15, baseType: !298)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1496, file: !1497, line: 524, baseType: !1626, size: 64, offset: 448)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1518, line: 372, baseType: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1518, line: 372, size: 64, elements: !1629)
!1629 = !{!1630}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1628, file: !1518, line: 372, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1523, line: 16, baseType: !298)
!1632 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !1497, line: 527, baseType: !1633, size: 64, offset: 512)
!1633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1496, file: !1497, line: 527, size: 64, elements: !1634)
!1634 = !{!1635, !1641}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1633, file: !1497, line: 528, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1523, line: 21, baseType: !1637)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1523, line: 21, size: 64, elements: !1638)
!1638 = !{!1639}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1637, file: !1523, line: 21, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1523, line: 14, baseType: !298)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1633, file: !1497, line: 529, baseType: !1620, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1496, file: !1497, line: 534, baseType: !1383, size: 64, offset: 576)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1496, file: !1497, line: 535, baseType: !1383, size: 64, offset: 640)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1496, file: !1497, line: 541, baseType: !1645, size: 64, offset: 704)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1496, file: !1497, line: 545, baseType: !1647, size: 64, offset: 768)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1496, file: !1497, line: 549, baseType: !1649, size: 64, offset: 832)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1518, line: 520, baseType: !1383)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1484, file: !33, line: 100, baseType: !1651, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!114, !1433, !298, !298, !114}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1434, file: !33, line: 134, baseType: !207, size: 64, offset: 960)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1434, file: !33, line: 135, baseType: !114, size: 32, offset: 1024)
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1434, file: !33, line: 136, baseType: !1657, size: 128, offset: 1088)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1434, file: !33, line: 136, size: 128, elements: !1658)
!1658 = !{!1659, !1665}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1657, file: !33, line: 137, baseType: !1660, size: 128)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1661, line: 6, size: 128, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1660, file: !1661, line: 7, baseType: !255, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1660, file: !1661, line: 8, baseType: !255, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1657, file: !33, line: 138, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1657, file: !33, line: 138, elements: !1667)
!1667 = !{!1668, !1670}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1666, file: !33, line: 138, baseType: !1669)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1666, file: !33, line: 138, elements: !854)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1666, file: !33, line: 138, baseType: !1671)
!1671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1660, elements: !512)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1430, file: !41, line: 147, baseType: !207, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1388, file: !41, line: 161, baseType: !394, size: 128, align: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !41, line: 164, baseType: !1675, size: 32, offset: 384)
!1675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1384, file: !41, line: 164, size: 32, elements: !1676)
!1676 = !{!1677, !1678}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1675, file: !41, line: 169, baseType: !275, size: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1675, file: !41, line: 177, baseType: !13, size: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1384, file: !41, line: 181, baseType: !275, size: 32, offset: 416)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !70, line: 309, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1377, file: !70, line: 406, baseType: !1683, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!114, !861, !1686}
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !41, line: 293, size: 1536, elements: !1688)
!1688 = !{!1689, !1719, !1733}
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !41, line: 295, baseType: !1690, size: 512)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1687, file: !41, line: 295, size: 512, elements: !1691)
!1691 = !{!1692, !1718}
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !41, line: 296, baseType: !1693, size: 448)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !41, line: 296, size: 448, elements: !1694)
!1694 = !{!1695, !1696, !1705, !1706, !1707, !1716, !1717}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1693, file: !41, line: 298, baseType: !298, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !41, line: 299, baseType: !1697, size: 128, offset: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1693, file: !41, line: 299, size: 128, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1697, file: !41, line: 300, baseType: !288, size: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !41, line: 302, baseType: !1701, size: 128)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !41, line: 302, size: 128, elements: !1702)
!1702 = !{!1703, !1704}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1701, file: !41, line: 303, baseType: !207, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1701, file: !41, line: 305, baseType: !13, size: 32, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1693, file: !41, line: 310, baseType: !1363, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1693, file: !41, line: 311, baseType: !298, size: 64, offset: 256)
!1707 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !41, line: 312, baseType: !1708, size: 64, offset: 320)
!1708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1693, file: !41, line: 312, size: 64, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1708, file: !41, line: 313, baseType: !207, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1708, file: !41, line: 314, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !41, line: 257, baseType: !1713)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 255, size: 64, elements: !1714)
!1714 = !{!1715}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1713, file: !41, line: 256, baseType: !298, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1693, file: !41, line: 316, baseType: !275, size: 32, offset: 384)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1693, file: !41, line: 317, baseType: !275, size: 32, offset: 416)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1690, file: !41, line: 323, baseType: !1384, size: 512, align: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !41, line: 325, baseType: !1720, size: 512, offset: 512)
!1720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1687, file: !41, line: 325, size: 512, elements: !1721)
!1721 = !{!1722, !1732}
!1722 = !DIDerivedType(tag: DW_TAG_member, scope: !1720, file: !41, line: 326, baseType: !1723, size: 320)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1720, file: !41, line: 326, size: 320, elements: !1724)
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730, !1731}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1723, file: !41, line: 327, baseType: !298, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1723, file: !41, line: 328, baseType: !298, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1723, file: !41, line: 329, baseType: !298, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1723, file: !41, line: 331, baseType: !275, size: 32, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1723, file: !41, line: 332, baseType: !275, size: 32, offset: 224)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1723, file: !41, line: 333, baseType: !275, size: 32, offset: 256)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1723, file: !41, line: 335, baseType: !13, size: 32, offset: 288)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1720, file: !41, line: 339, baseType: !1384, size: 512, align: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !41, line: 341, baseType: !1734, size: 512, offset: 1024)
!1734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1687, file: !41, line: 341, size: 512, elements: !1735)
!1735 = !{!1736, !1745, !1751}
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1734, file: !41, line: 342, baseType: !1737, size: 384)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1734, file: !41, line: 342, size: 384, elements: !1738)
!1738 = !{!1739, !1740, !1741, !1742, !1743, !1744}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1737, file: !41, line: 343, baseType: !298, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1737, file: !41, line: 344, baseType: !298, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1737, file: !41, line: 346, baseType: !207, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1737, file: !41, line: 347, baseType: !207, size: 64, offset: 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1737, file: !41, line: 348, baseType: !207, size: 64, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1737, file: !41, line: 349, baseType: !207, size: 64, offset: 320)
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1734, file: !41, line: 352, baseType: !1746, size: 256)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1734, file: !41, line: 352, size: 256, elements: !1747)
!1747 = !{!1748, !1749, !1750}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1746, file: !41, line: 353, baseType: !298, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1746, file: !41, line: 354, baseType: !298, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1746, file: !41, line: 356, baseType: !288, size: 128, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1734, file: !41, line: 359, baseType: !1384, size: 512, align: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1377, file: !70, line: 409, baseType: !1753, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!114, !1363, !1680}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1377, file: !70, line: 412, baseType: !1757, size: 64, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!404, !1363, !1686}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1377, file: !70, line: 414, baseType: !1761, size: 64, offset: 256)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1764}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !70, line: 310, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1377, file: !70, line: 416, baseType: !1767, size: 64, offset: 320)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!114, !861, !1363, !883, !13, !1770, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1377, file: !70, line: 419, baseType: !1773, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!114, !861, !1363, !883, !13, !13, !1383, !207}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1377, file: !70, line: 424, baseType: !1777, size: 64, offset: 448)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!1780, !1363, !1780}
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !217, line: 131, baseType: !255)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1377, file: !70, line: 425, baseType: !1782, size: 64, offset: 512)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{null, !1686, !1157, !1157}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1377, file: !70, line: 426, baseType: !1786, size: 64, offset: 576)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!404, !1686, !522}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1377, file: !70, line: 427, baseType: !1790, size: 64, offset: 640)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{null, !1686}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1377, file: !70, line: 428, baseType: !1794, size: 64, offset: 704)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!1154, !1797, !1819}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !70, line: 373, size: 384, elements: !1799)
!1799 = !{!1800, !1801, !1802, !1806, !1807, !1808, !1809}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1798, file: !70, line: 374, baseType: !861, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1798, file: !70, line: 375, baseType: !883, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1798, file: !70, line: 376, baseType: !1803, size: 64, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{null, !1797, !1115}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1798, file: !70, line: 377, baseType: !207, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1798, file: !70, line: 378, baseType: !114, size: 32, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1798, file: !70, line: 379, baseType: !338, size: 16, offset: 288)
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !1798, file: !70, line: 380, baseType: !1810, size: 64, offset: 320)
!1810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1798, file: !70, line: 380, size: 64, elements: !1811)
!1811 = !{!1812, !1815}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1810, file: !70, line: 386, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !70, line: 386, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1810, file: !70, line: 395, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!1154, !207}
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1821, line: 41, size: 320, elements: !1822)
!1821 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1822 = !{!1823, !1824, !1825, !1826, !1827, !1828, !1833, !1871}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1820, file: !1821, line: 42, baseType: !331, size: 8)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1820, file: !1821, line: 43, baseType: !404, size: 8, offset: 8)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1820, file: !1821, line: 44, baseType: !404, size: 8, offset: 16)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1820, file: !1821, line: 45, baseType: !404, size: 8, offset: 24)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1820, file: !1821, line: 46, baseType: !404, size: 8, offset: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !1821, line: 47, baseType: !1829, size: 64, offset: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1820, file: !1821, line: 47, size: 64, elements: !1830)
!1830 = !{!1831, !1832}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1829, file: !1821, line: 48, baseType: !1157, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1829, file: !1821, line: 49, baseType: !114, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !1821, line: 61, baseType: !1834, size: 128, offset: 128)
!1834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1820, file: !1821, line: 61, size: 128, elements: !1835)
!1835 = !{!1836, !1842}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1834, file: !1821, line: 67, baseType: !1837, size: 128)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1838, line: 17, size: 128, elements: !1839)
!1838 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1837, file: !1838, line: 19, baseType: !207, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1837, file: !1838, line: 20, baseType: !1158, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, scope: !1834, file: !1821, line: 68, baseType: !1843, size: 128)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1834, file: !1821, line: 68, size: 128, elements: !1844)
!1844 = !{!1845, !1870}
!1845 = !DIDerivedType(tag: DW_TAG_member, scope: !1843, file: !1821, line: 69, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1843, file: !1821, line: 69, size: 64, elements: !1847)
!1847 = !{!1848, !1851, !1858, !1867, !1869}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1846, file: !1821, line: 71, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1837)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1846, file: !1821, line: 72, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1854)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1821, line: 17, size: 128, elements: !1855)
!1855 = !{!1856, !1857}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1854, file: !1821, line: 18, baseType: !207, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1854, file: !1821, line: 19, baseType: !1157, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1846, file: !1821, line: 73, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1861)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1862, line: 31, size: 128, elements: !1863)
!1862 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1863 = !{!1864, !1865, !1866}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1861, file: !1862, line: 32, baseType: !1383, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1861, file: !1862, line: 33, baseType: !13, size: 32, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1861, file: !1862, line: 34, baseType: !13, size: 32, offset: 96)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1846, file: !1821, line: 74, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1846, file: !1821, line: 75, baseType: !207, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1843, file: !1821, line: 77, baseType: !1157, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !1821, line: 80, baseType: !1872, size: 64, offset: 256)
!1872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1820, file: !1821, line: 80, size: 64, elements: !1873)
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1872, file: !1821, line: 81, baseType: !298, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1872, file: !1821, line: 82, baseType: !883, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1377, file: !70, line: 433, baseType: !1877, size: 64, offset: 768)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!114, !1363, !1686, !1686, !56}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1377, file: !70, line: 435, baseType: !1881, size: 64, offset: 832)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!114, !1686}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1377, file: !70, line: 436, baseType: !1885, size: 64, offset: 896)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!404, !1686, !1157, !1157}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1377, file: !70, line: 438, baseType: !1889, size: 64, offset: 960)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{null, !1686, !1892, !1892}
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1377, file: !70, line: 439, baseType: !1894, size: 64, offset: 1024)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!114, !1363, !1383}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1377, file: !70, line: 442, baseType: !1898, size: 64, offset: 1088)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!114, !1901, !861, !1903}
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !70, line: 66, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1377, file: !70, line: 444, baseType: !1905, size: 64, offset: 1152)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !861}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1377, file: !70, line: 445, baseType: !1909, size: 64, offset: 1216)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!114, !1797, !1819}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1364, file: !70, line: 486, baseType: !298, size: 64, offset: 896)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1364, file: !70, line: 487, baseType: !303, size: 320, offset: 960)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1364, file: !70, line: 488, baseType: !1915, size: 32, offset: 1280)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1916, line: 8, baseType: !360)
!1916 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1364, file: !70, line: 489, baseType: !843, size: 32, offset: 1312)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1364, file: !70, line: 490, baseType: !288, size: 128, offset: 1344)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1364, file: !70, line: 491, baseType: !207, size: 64, offset: 1472)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1354, file: !1323, line: 180, baseType: !1921, size: 64, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!1154, !861, !1265, !1353, !417, !883, !1157}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1354, file: !1323, line: 182, baseType: !1921, size: 64, offset: 384)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1354, file: !1323, line: 184, baseType: !1926, size: 64, offset: 448)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!114, !861, !1265, !1353, !1503}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1342, file: !1323, line: 90, baseType: !1930, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1342, file: !1323, line: 91, baseType: !1932, size: 64, offset: 256)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1313, file: !1260, line: 120, baseType: !1934, size: 64, offset: 192)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!1937, !1283}
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1939)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !64, line: 39, size: 384, elements: !1940)
!1940 = !{!1941, !1942, !1946, !1950, !1958, !1962}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1939, file: !64, line: 40, baseType: !63, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1939, file: !64, line: 41, baseType: !1943, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!404}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1939, file: !64, line: 42, baseType: !1947, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!207}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1939, file: !64, line: 43, baseType: !1951, size: 64, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!1954, !1956}
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !64, line: 19, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1939, file: !64, line: 44, baseType: !1959, size: 64, offset: 256)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!1954}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1939, file: !64, line: 45, baseType: !1032, size: 64, offset: 320)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1313, file: !1260, line: 121, baseType: !1964, size: 64, offset: 256)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!1954, !1283}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1313, file: !1260, line: 122, baseType: !1968, size: 64, offset: 320)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{null, !1283, !1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1259, file: !1260, line: 70, baseType: !1974, size: 64, offset: 384)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1232, line: 190, size: 1152, elements: !1976)
!1976 = !{!1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !2075, !2076, !2077, !2078, !2079, !2082}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1975, file: !1232, line: 191, baseType: !275, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1975, file: !1232, line: 192, baseType: !275, size: 32, offset: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1975, file: !1232, line: 202, baseType: !1974, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1975, file: !1232, line: 203, baseType: !407, size: 64, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1975, file: !1232, line: 205, baseType: !294, size: 192, align: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1975, file: !1232, line: 207, baseType: !1954, size: 64, offset: 384)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1975, file: !1232, line: 208, baseType: !13, size: 32, offset: 448)
!1984 = !DIDerivedType(tag: DW_TAG_member, scope: !1975, file: !1232, line: 209, baseType: !1985, size: 256, offset: 512)
!1985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1975, file: !1232, line: 209, size: 256, elements: !1986)
!1986 = !{!1987, !1996, !2000}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1985, file: !1232, line: 210, baseType: !1988, size: 256)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1232, line: 153, size: 256, elements: !1989)
!1989 = !{!1990, !1991, !1992, !1995}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1988, file: !1232, line: 154, baseType: !298, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1988, file: !1232, line: 156, baseType: !711, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1988, file: !1232, line: 162, baseType: !1993, size: 64, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1232, line: 162, flags: DIFlagFwdDecl)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1988, file: !1232, line: 167, baseType: !298, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1985, file: !1232, line: 211, baseType: !1997, size: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1232, line: 170, size: 64, elements: !1998)
!1998 = !{!1999}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1997, file: !1232, line: 171, baseType: !1974, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1985, file: !1232, line: 212, baseType: !2001, size: 256)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1232, line: 174, size: 256, elements: !2002)
!2002 = !{!2003, !2070, !2073, !2074}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2001, file: !1232, line: 175, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2006)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1232, line: 271, size: 768, elements: !2007)
!2007 = !{!2008, !2030, !2034, !2038, !2043, !2047, !2051, !2055, !2056, !2057, !2058, !2066}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2006, file: !1232, line: 276, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!114, !2012}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1232, line: 251, size: 1216, elements: !2014)
!2014 = !{!2015, !2016, !2017, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2013, file: !1232, line: 253, baseType: !1974, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2013, file: !1232, line: 254, baseType: !861, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2013, file: !1232, line: 255, baseType: !2018, size: 64, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !529, line: 66, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2013, file: !1232, line: 256, baseType: !207, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2013, file: !1232, line: 259, baseType: !875, size: 256, offset: 256)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2013, file: !1232, line: 260, baseType: !875, size: 256, offset: 512)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2013, file: !1232, line: 261, baseType: !114, size: 32, offset: 768)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2013, file: !1232, line: 262, baseType: !288, size: 128, offset: 832)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2013, file: !1232, line: 263, baseType: !417, size: 64, offset: 960)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2013, file: !1232, line: 265, baseType: !1157, size: 64, offset: 1024)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2013, file: !1232, line: 266, baseType: !404, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2013, file: !1232, line: 267, baseType: !404, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2013, file: !1232, line: 268, baseType: !1548, size: 64, offset: 1152)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2006, file: !1232, line: 277, baseType: !2031, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null, !2012}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2006, file: !1232, line: 290, baseType: !2035, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!114, !2018, !207}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2006, file: !1232, line: 292, baseType: !2039, size: 64, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!207, !2018, !2042}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2006, file: !1232, line: 293, baseType: !2044, size: 64, offset: 256)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!207, !2018, !207, !2042}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2006, file: !1232, line: 294, baseType: !2048, size: 64, offset: 320)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{null, !2018, !207}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2006, file: !1232, line: 296, baseType: !2052, size: 64, offset: 384)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!1154, !2012, !417, !1157, !883}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2006, file: !1232, line: 306, baseType: !1157, size: 64, offset: 448)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2006, file: !1232, line: 313, baseType: !404, size: 8, offset: 512)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2006, file: !1232, line: 314, baseType: !2052, size: 64, offset: 576)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2006, file: !1232, line: 317, baseType: !2059, size: 64, offset: 640)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!2062, !2012, !2064}
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2063, line: 59, baseType: !13)
!2063 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1232, line: 31, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2006, file: !1232, line: 320, baseType: !2067, size: 64, offset: 704)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!114, !2012, !1503}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2001, file: !1232, line: 176, baseType: !2071, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1232, line: 35, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2001, file: !1232, line: 177, baseType: !883, size: 64, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2001, file: !1232, line: 178, baseType: !1974, size: 64, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1975, file: !1232, line: 215, baseType: !207, size: 64, offset: 768)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1975, file: !1232, line: 221, baseType: !255, size: 64, offset: 832)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1975, file: !1232, line: 223, baseType: !340, size: 16, offset: 896)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1975, file: !1232, line: 224, baseType: !1004, size: 16, offset: 912)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1975, file: !1232, line: 225, baseType: !2080, size: 64, offset: 960)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1232, line: 36, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1975, file: !1232, line: 227, baseType: !394, size: 128, align: 64, offset: 1024)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1259, file: !1260, line: 71, baseType: !2084, size: 32, offset: 448)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2085, line: 19, size: 32, elements: !2086)
!2085 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2086 = !{!2087}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2084, file: !2085, line: 20, baseType: !270, size: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1259, file: !1260, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1259, file: !1260, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1259, file: !1260, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1259, file: !1260, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1259, file: !1260, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1256, file: !26, line: 47, baseType: !1246, size: 64, offset: 512)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1256, file: !26, line: 48, baseType: !1265, size: 64, offset: 576)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1256, file: !26, line: 49, baseType: !2096, size: 64, offset: 640)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !26, line: 49, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1256, file: !26, line: 50, baseType: !2099, size: 64, offset: 704)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1247, file: !26, line: 418, baseType: !2101, size: 64, offset: 1408)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !26, line: 53, size: 448, elements: !2103)
!2103 = !{!2104, !2105, !2110, !2114, !2118, !2122}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2102, file: !26, line: 54, baseType: !1330, size: 128)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2102, file: !26, line: 55, baseType: !2106, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!1154, !2101, !2109, !417}
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2102, file: !26, line: 57, baseType: !2111, size: 64, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!1154, !2101, !2109, !407, !1157}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2102, file: !26, line: 59, baseType: !2115, size: 64, offset: 256)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{null, !1246, !407}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2102, file: !26, line: 60, baseType: !2119, size: 64, offset: 320)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!114, !1246}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2102, file: !26, line: 61, baseType: !2123, size: 64, offset: 384)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{null, !1246}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1247, file: !26, line: 419, baseType: !407, size: 64, offset: 1472)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1247, file: !26, line: 420, baseType: !407, size: 64, offset: 1536)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1247, file: !26, line: 421, baseType: !1265, size: 64, offset: 1600)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1247, file: !26, line: 424, baseType: !2130, size: 64, offset: 1664)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2132)
!2132 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !26, line: 424, flags: DIFlagFwdDecl)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1247, file: !26, line: 425, baseType: !2134, size: 64, offset: 1728)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1247, file: !26, line: 426, baseType: !13, size: 32, offset: 1792)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1247, file: !26, line: 435, baseType: !875, size: 256, offset: 1856)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1247, file: !26, line: 437, baseType: !2139, size: 64, offset: 2112)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2141, line: 69, size: 320, elements: !2142)
!2141 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2142 = !{!2143, !2144, !2145, !2162, !2164, !2168, !2169}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2140, file: !2141, line: 70, baseType: !407, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2140, file: !2141, line: 71, baseType: !1246, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2140, file: !2141, line: 72, baseType: !2146, size: 64, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2148)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2141, line: 47, size: 256, elements: !2149)
!2149 = !{!2150, !2151, !2157, !2161}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2148, file: !2141, line: 49, baseType: !13, size: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2148, file: !2141, line: 51, baseType: !2152, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!114, !407, !2155}
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2140)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2148, file: !2141, line: 53, baseType: !2158, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!114, !417, !2155}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2148, file: !2141, line: 55, baseType: !1032, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2140, file: !2141, line: 73, baseType: !2163, size: 16, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2140, file: !2141, line: 74, baseType: !2165, size: 8, offset: 208)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !222, line: 16, baseType: !2166)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !224, line: 20, baseType: !2167)
!2167 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2140, file: !2141, line: 75, baseType: !331, size: 8, offset: 216)
!2169 = !DIDerivedType(tag: DW_TAG_member, scope: !2140, file: !2141, line: 76, baseType: !2170, size: 64, offset: 256)
!2170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2140, file: !2141, line: 76, size: 64, elements: !2171)
!2171 = !{!2172, !2173, !2180}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2170, file: !2141, line: 77, baseType: !207, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2170, file: !2141, line: 78, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2176)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2141, line: 86, size: 128, elements: !2177)
!2177 = !{!2178, !2179}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2176, file: !2141, line: 87, baseType: !13, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2176, file: !2141, line: 88, baseType: !417, size: 64, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2170, file: !2141, line: 79, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2183)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2141, line: 92, size: 256, elements: !2184)
!2184 = !{!2185, !2186, !2187, !2189, !2190}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2183, file: !2141, line: 94, baseType: !13, size: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2183, file: !2141, line: 95, baseType: !13, size: 32, offset: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2183, file: !2141, line: 96, baseType: !2188, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2183, file: !2141, line: 97, baseType: !2146, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2183, file: !2141, line: 98, baseType: !207, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1247, file: !26, line: 438, baseType: !13, size: 32, offset: 2176)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1247, file: !26, line: 441, baseType: !13, size: 32, offset: 2208)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1247, file: !26, line: 442, baseType: !2130, size: 64, offset: 2240)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1247, file: !26, line: 443, baseType: !2134, size: 64, offset: 2304)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1247, file: !26, line: 444, baseType: !404, size: 8, offset: 2368)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1247, file: !26, line: 451, baseType: !404, size: 8, offset: 2376)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1247, file: !26, line: 454, baseType: !13, size: 32, offset: 2400)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1247, file: !26, line: 455, baseType: !2199, size: 64, offset: 2432)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2201, line: 23, size: 96, elements: !2202)
!2201 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2202 = !{!2203, !2204, !2205}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2200, file: !2201, line: 24, baseType: !114, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2200, file: !2201, line: 24, baseType: !114, size: 32, offset: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2200, file: !2201, line: 24, baseType: !114, size: 32, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1247, file: !26, line: 458, baseType: !2207, size: 64, offset: 2496)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!114}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1247, file: !26, line: 460, baseType: !2211, size: 4032, align: 512, offset: 2560)
!2211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2212, size: 4032, elements: !2228)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !26, line: 362, size: 576, elements: !2213)
!2213 = !{!2214, !2215, !2216}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2212, file: !26, line: 363, baseType: !207, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2212, file: !26, line: 364, baseType: !13, size: 32, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2212, file: !26, line: 367, baseType: !2217, size: 448, offset: 128)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !26, line: 319, size: 448, elements: !2218)
!2218 = !{!2219, !2220}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2217, file: !26, line: 320, baseType: !1246, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2217, file: !26, line: 321, baseType: !2221, size: 384, offset: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2222, line: 40, size: 384, elements: !2223)
!2222 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2223 = !{!2224}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2221, file: !2222, line: 41, baseType: !2225, size: 384, align: 64)
!2225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 384, align: 64, elements: !2226)
!2226 = !{!2227}
!2227 = !DISubrange(count: 2)
!2228 = !{!2229}
!2229 = !DISubrange(count: 7)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1247, file: !26, line: 463, baseType: !2231, size: 192, offset: 6592)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2232, line: 8, size: 192, elements: !2233)
!2232 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2233 = !{!2234, !2235, !2237}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2231, file: !2232, line: 10, baseType: !13, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2231, file: !2232, line: 11, baseType: !2236, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2231, file: !2232, line: 12, baseType: !2238, size: 64, offset: 128)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2240, line: 59, size: 48, elements: !2241)
!2240 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2241 = !{!2242, !2245, !2246, !2247, !2248, !2249}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2239, file: !2240, line: 60, baseType: !2243, size: 16)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !222, line: 18, baseType: !2244)
!2244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !224, line: 23, baseType: !365)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2239, file: !2240, line: 61, baseType: !2243, size: 16, offset: 16)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2239, file: !2240, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2239, file: !2240, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2239, file: !2240, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2239, file: !2240, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1247, file: !26, line: 465, baseType: !298, size: 64, offset: 6784)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1247, file: !26, line: 469, baseType: !13, size: 32, offset: 6848)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1247, file: !26, line: 470, baseType: !288, size: 128, offset: 6912)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1247, file: !26, line: 471, baseType: !2254, size: 64, offset: 7040)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2256, line: 33, size: 96, elements: !2257)
!2256 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2257 = !{!2258, !2259, !2260, !2261}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2255, file: !2256, line: 37, baseType: !114, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2255, file: !2256, line: 43, baseType: !114, size: 32, offset: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2255, file: !2256, line: 45, baseType: !340, size: 16, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2255, file: !2256, line: 47, baseType: !340, size: 16, offset: 80)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1247, file: !26, line: 476, baseType: !2263, size: 64, offset: 7104)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !26, line: 378, size: 256, elements: !2265)
!2265 = !{!2266, !2282, !2283, !2284}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2264, file: !26, line: 379, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2269, line: 204, baseType: !2270)
!2269 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2269, line: 197, size: 192, elements: !2271)
!2271 = !{!2272, !2274, !2275, !2276, !2278, !2280}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2270, file: !2269, line: 198, baseType: !2273, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2269, line: 21, baseType: !361)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2270, file: !2269, line: 199, baseType: !263, size: 8, offset: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2270, file: !2269, line: 200, baseType: !263, size: 8, offset: 40)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2270, file: !2269, line: 201, baseType: !2277, size: 16, offset: 48)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2269, line: 17, baseType: !339)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2270, file: !2269, line: 202, baseType: !2279, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2269, line: 16, baseType: !256)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2270, file: !2269, line: 203, baseType: !2281, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2269, line: 22, baseType: !256)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2264, file: !26, line: 380, baseType: !13, size: 32, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2264, file: !26, line: 381, baseType: !417, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2264, file: !26, line: 382, baseType: !417, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1247, file: !26, line: 477, baseType: !2264, size: 256, offset: 7168)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1247, file: !26, line: 480, baseType: !2287, size: 64, offset: 7424)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !26, line: 480, flags: DIFlagFwdDecl)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1247, file: !26, line: 483, baseType: !2290, size: 64, offset: 7488)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !26, line: 483, flags: DIFlagFwdDecl)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1247, file: !26, line: 488, baseType: !417, size: 64, offset: 7552)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1247, file: !26, line: 492, baseType: !207, size: 64, offset: 7616)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1247, file: !26, line: 493, baseType: !13, size: 32, offset: 7680)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1247, file: !26, line: 495, baseType: !207, size: 64, offset: 7744)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1247, file: !26, line: 496, baseType: !13, size: 32, offset: 7808)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1247, file: !26, line: 499, baseType: !13, size: 32, offset: 7840)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1247, file: !26, line: 500, baseType: !2299, size: 64, offset: 7872)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2301, line: 45, baseType: !2302)
!2301 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1247, file: !26, line: 503, baseType: !13, size: 32, offset: 7936)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1247, file: !26, line: 504, baseType: !2305, size: 64, offset: 8000)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2308, line: 96, size: 192, elements: !2309)
!2308 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2309 = !{!2310, !2311, !2376, !2379}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2307, file: !2308, line: 97, baseType: !13, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2307, file: !2308, line: 98, baseType: !2312, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2308, line: 24, size: 3072, elements: !2314)
!2314 = !{!2315, !2317, !2318, !2319, !2320, !2334, !2335, !2336, !2337, !2349, !2361, !2362, !2373, !2374, !2375}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2313, file: !2308, line: 26, baseType: !2316, size: 128)
!2316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 128, elements: !2226)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2313, file: !2308, line: 27, baseType: !2316, size: 128, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2313, file: !2308, line: 28, baseType: !114, size: 32, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2313, file: !2308, line: 31, baseType: !843, size: 32, align: 512, offset: 512)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2313, file: !2308, line: 32, baseType: !2321, size: 960, offset: 576)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2322, line: 206, size: 960, elements: !2323)
!2322 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2323 = !{!2324, !2325, !2328, !2330, !2331, !2333}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2321, file: !2322, line: 207, baseType: !397, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2321, file: !2322, line: 208, baseType: !2326, size: 256, offset: 64)
!2326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2327, size: 256, elements: !427)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2321, file: !2322, line: 209, baseType: !2329, size: 256, offset: 320)
!2329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 256, elements: !427)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2321, file: !2322, line: 213, baseType: !1115, size: 64, offset: 576)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2321, file: !2322, line: 215, baseType: !2332, size: 256, offset: 640)
!2332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, size: 256, elements: !427)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2321, file: !2322, line: 216, baseType: !331, size: 8, offset: 896)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2313, file: !2308, line: 33, baseType: !298, size: 64, offset: 1536)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2313, file: !2308, line: 34, baseType: !298, size: 64, offset: 1600)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2313, file: !2308, line: 35, baseType: !404, size: 8, offset: 1664)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2313, file: !2308, line: 36, baseType: !2338, size: 320, offset: 1728)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2339, line: 11, size: 320, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2340 = !{!2341, !2342, !2343, !2348}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2338, file: !2339, line: 16, baseType: !478, size: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2338, file: !2339, line: 17, baseType: !298, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2338, file: !2339, line: 18, baseType: !2344, size: 64, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{null, !2347}
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2338, file: !2339, line: 19, baseType: !360, size: 32, offset: 256)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2313, file: !2308, line: 37, baseType: !2350, size: 256, offset: 2048)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2351, line: 98, size: 256, elements: !2352)
!2351 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2352 = !{!2353, !2354, !2355}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2350, file: !2351, line: 99, baseType: !214, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2350, file: !2351, line: 100, baseType: !288, size: 128, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2350, file: !2351, line: 101, baseType: !2356, size: 64, offset: 192)
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2351, line: 21, baseType: !2357)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{null, !2360}
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2313, file: !2308, line: 38, baseType: !394, size: 128, align: 64, offset: 2304)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2313, file: !2308, line: 39, baseType: !2363, size: 64, offset: 2432)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2308, line: 49, size: 768, elements: !2365)
!2365 = !{!2366, !2367, !2368, !2369, !2370, !2371, !2372}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2364, file: !2308, line: 50, baseType: !843, size: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2364, file: !2308, line: 51, baseType: !2329, size: 256, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2364, file: !2308, line: 53, baseType: !2329, size: 256, offset: 320)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2364, file: !2308, line: 54, baseType: !298, size: 64, offset: 576)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2364, file: !2308, line: 55, baseType: !2363, size: 64, offset: 640)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2364, file: !2308, line: 56, baseType: !114, size: 32, offset: 704)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2364, file: !2308, line: 57, baseType: !114, size: 32, offset: 736)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2313, file: !2308, line: 40, baseType: !298, size: 64, offset: 2496)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2313, file: !2308, line: 42, baseType: !114, size: 32, offset: 2560)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2313, file: !2308, line: 43, baseType: !2306, size: 64, offset: 2624)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2307, file: !2308, line: 99, baseType: !2377, offset: 128)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2378, line: 211, elements: !854)
!2378 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2307, file: !2308, line: 100, baseType: !2380, size: 64, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2308, line: 63, size: 3008, elements: !2382)
!2382 = !{!2383, !2384, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2414}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2381, file: !2308, line: 64, baseType: !2363, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2381, file: !2308, line: 65, baseType: !2385, size: 192, offset: 64)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2363, size: 192, elements: !909)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2381, file: !2308, line: 67, baseType: !114, size: 32, offset: 256)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2381, file: !2308, line: 68, baseType: !875, size: 256, offset: 320)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2381, file: !2308, line: 69, baseType: !843, size: 32, offset: 576)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2381, file: !2308, line: 70, baseType: !875, size: 256, offset: 640)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2381, file: !2308, line: 71, baseType: !298, size: 64, offset: 896)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2381, file: !2308, line: 72, baseType: !298, size: 64, offset: 960)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2381, file: !2308, line: 73, baseType: !298, size: 64, offset: 1024)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2381, file: !2308, line: 74, baseType: !298, size: 64, offset: 1088)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2381, file: !2308, line: 75, baseType: !298, size: 64, offset: 1152)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2381, file: !2308, line: 76, baseType: !298, size: 64, offset: 1216)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2381, file: !2308, line: 77, baseType: !298, size: 64, offset: 1280)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2381, file: !2308, line: 78, baseType: !298, size: 64, offset: 1344)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2381, file: !2308, line: 79, baseType: !404, size: 8, offset: 1408)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2381, file: !2308, line: 80, baseType: !298, size: 64, offset: 1472)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2381, file: !2308, line: 81, baseType: !875, size: 256, offset: 1536)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2381, file: !2308, line: 82, baseType: !1468, size: 256, offset: 1792)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2381, file: !2308, line: 84, baseType: !275, size: 32, offset: 2048)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2381, file: !2308, line: 87, baseType: !298, size: 64, offset: 2112)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2381, file: !2308, line: 88, baseType: !298, size: 64, offset: 2176)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2381, file: !2308, line: 89, baseType: !2406, size: 704, offset: 2240)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2351, line: 111, size: 704, elements: !2407)
!2407 = !{!2408, !2409, !2410, !2413}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2406, file: !2351, line: 112, baseType: !2350, size: 256)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2406, file: !2351, line: 113, baseType: !2338, size: 320, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2406, file: !2351, line: 116, baseType: !2411, size: 64, offset: 576)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2351, line: 18, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2406, file: !2351, line: 117, baseType: !114, size: 32, offset: 640)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2381, file: !2308, line: 90, baseType: !2306, size: 64, offset: 2944)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1247, file: !26, line: 515, baseType: !2416, size: 64, offset: 8064)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2418, line: 117, size: 128, elements: !2419)
!2418 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2419 = !{!2420, !2421, !2422}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2417, file: !2418, line: 118, baseType: !282, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2417, file: !2418, line: 119, baseType: !282, size: 32, offset: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2417, file: !2418, line: 120, baseType: !1115, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1247, file: !26, line: 516, baseType: !13, size: 32, offset: 8128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1247, file: !26, line: 519, baseType: !13, size: 32, offset: 8160)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1247, file: !26, line: 520, baseType: !2426, size: 64, offset: 8192)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1247, file: !26, line: 523, baseType: !2428, size: 64, offset: 8256)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !26, line: 523, flags: DIFlagFwdDecl)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1247, file: !26, line: 524, baseType: !13, size: 32, offset: 8320)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1247, file: !26, line: 525, baseType: !2433, size: 64, offset: 8384)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !26, line: 525, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1247, file: !26, line: 526, baseType: !13, size: 32, offset: 8448)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1247, file: !26, line: 533, baseType: !207, size: 64, offset: 8512)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1247, file: !26, line: 534, baseType: !13, size: 32, offset: 8576)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1247, file: !26, line: 535, baseType: !2440, size: 64, offset: 8640)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1247, file: !26, line: 536, baseType: !13, size: 32, offset: 8704)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1247, file: !26, line: 539, baseType: !114, size: 32, offset: 8736)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1247, file: !26, line: 540, baseType: !2444, size: 64, offset: 8768)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2446, line: 32, size: 64, elements: !2447)
!2446 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2447 = !{!2448, !2449}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2445, file: !2446, line: 33, baseType: !282, size: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2445, file: !2446, line: 34, baseType: !282, size: 32, offset: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1247, file: !26, line: 563, baseType: !288, size: 128, offset: 8832)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1247, file: !26, line: 565, baseType: !288, size: 128, offset: 8960)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1247, file: !26, line: 568, baseType: !2453, size: 64, offset: 9088)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{null}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1247, file: !26, line: 570, baseType: !275, size: 32, offset: 9152)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1222, file: !70, line: 2382, baseType: !1221, size: 64, offset: 448)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1222, file: !70, line: 2383, baseType: !921, size: 64, offset: 512)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1222, file: !70, line: 2385, baseType: !2460, offset: 576)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2378, line: 206, elements: !854)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1222, file: !70, line: 2386, baseType: !2460, offset: 576)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1222, file: !70, line: 2387, baseType: !2460, offset: 576)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1222, file: !70, line: 2388, baseType: !2464, offset: 576)
!2464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2460, elements: !909)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1222, file: !70, line: 2390, baseType: !2460, offset: 576)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1222, file: !70, line: 2391, baseType: !2460, offset: 576)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1222, file: !70, line: 2392, baseType: !2460, offset: 576)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1222, file: !70, line: 2393, baseType: !2460, offset: 576)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1213, file: !70, line: 1197, baseType: !2470, size: 64, offset: 384)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2472)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !70, line: 2057, size: 1664, elements: !2473)
!2473 = !{!2474, !2478, !2482, !2483, !2487, !2491, !2495, !2496, !2497, !2501, !2505, !2509, !2510, !2511, !2517, !2521, !2522, !2526, !2527, !2528, !2529, !2533, !2537, !2584, !2599, !2600}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2472, file: !70, line: 2058, baseType: !2475, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!1000, !1212}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2472, file: !70, line: 2059, baseType: !2479, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{null, !1000}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2472, file: !70, line: 2060, baseType: !2479, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2472, file: !70, line: 2062, baseType: !2484, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{null, !1000, !114}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2472, file: !70, line: 2063, baseType: !2488, size: 64, offset: 256)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!114, !1000, !1680}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2472, file: !70, line: 2064, baseType: !2492, size: 64, offset: 320)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!114, !1000}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2472, file: !70, line: 2065, baseType: !2479, size: 64, offset: 384)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2472, file: !70, line: 2066, baseType: !1242, size: 64, offset: 448)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2472, file: !70, line: 2067, baseType: !2498, size: 64, offset: 512)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!114, !1212, !114}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2472, file: !70, line: 2068, baseType: !2502, size: 64, offset: 576)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!114, !1212, !69}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2472, file: !70, line: 2069, baseType: !2506, size: 64, offset: 640)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!114, !1212}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2472, file: !70, line: 2070, baseType: !2502, size: 64, offset: 704)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2472, file: !70, line: 2071, baseType: !2506, size: 64, offset: 768)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2472, file: !70, line: 2072, baseType: !2512, size: 64, offset: 832)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!114, !965, !2515}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !70, line: 62, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2472, file: !70, line: 2073, baseType: !2518, size: 64, offset: 896)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!114, !1212, !2236, !417}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2472, file: !70, line: 2074, baseType: !1242, size: 64, offset: 960)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2472, file: !70, line: 2076, baseType: !2523, size: 64, offset: 1024)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!114, !2018, !965}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2472, file: !70, line: 2077, baseType: !2523, size: 64, offset: 1088)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2472, file: !70, line: 2078, baseType: !2523, size: 64, offset: 1152)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2472, file: !70, line: 2079, baseType: !2523, size: 64, offset: 1216)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2472, file: !70, line: 2081, baseType: !2530, size: 64, offset: 1280)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!1154, !1212, !114, !417, !1157, !883}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2472, file: !70, line: 2082, baseType: !2534, size: 64, offset: 1344)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!1154, !1212, !114, !407, !1157, !883}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2472, file: !70, line: 2083, baseType: !2538, size: 64, offset: 1408)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!2541, !1000}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !75, line: 296, size: 1664, elements: !2544)
!2544 = !{!2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2569, !2570, !2571}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2543, file: !75, line: 297, baseType: !478, size: 128)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2543, file: !75, line: 298, baseType: !288, size: 128, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2543, file: !75, line: 299, baseType: !288, size: 128, offset: 256)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2543, file: !75, line: 300, baseType: !288, size: 128, offset: 384)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2543, file: !75, line: 301, baseType: !875, size: 256, offset: 512)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2543, file: !75, line: 302, baseType: !843, size: 32, offset: 768)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2543, file: !75, line: 303, baseType: !275, size: 32, offset: 800)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2543, file: !75, line: 304, baseType: !1212, size: 64, offset: 832)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2543, file: !75, line: 305, baseType: !2554, size: 64, offset: 896)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !75, line: 68, size: 64, elements: !2555)
!2555 = !{!2556, !2568}
!2556 = !DIDerivedType(tag: DW_TAG_member, scope: !2554, file: !75, line: 69, baseType: !2557, size: 32)
!2557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2554, file: !75, line: 69, size: 32, elements: !2558)
!2558 = !{!2559, !2560, !2561}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2557, file: !75, line: 70, baseType: !227, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2557, file: !75, line: 71, baseType: !236, size: 32)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2557, file: !75, line: 72, baseType: !2562, size: 32)
!2562 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2563, line: 24, baseType: !2564)
!2563 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2563, line: 22, size: 32, elements: !2565)
!2565 = !{!2566}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2564, file: !2563, line: 23, baseType: !2567, size: 32)
!2567 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2563, line: 20, baseType: !233)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2554, file: !75, line: 74, baseType: !74, size: 32, offset: 32)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2543, file: !75, line: 306, baseType: !883, size: 64, offset: 960)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2543, file: !75, line: 307, baseType: !298, size: 64, offset: 1024)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2543, file: !75, line: 308, baseType: !2572, size: 576, offset: 1088)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !75, line: 205, size: 576, elements: !2573)
!2573 = !{!2574, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2572, file: !75, line: 206, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !75, line: 66, baseType: !225)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2572, file: !75, line: 207, baseType: !2575, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2572, file: !75, line: 208, baseType: !2575, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2572, file: !75, line: 209, baseType: !2575, size: 64, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2572, file: !75, line: 210, baseType: !2575, size: 64, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2572, file: !75, line: 211, baseType: !2575, size: 64, offset: 320)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2572, file: !75, line: 212, baseType: !2575, size: 64, offset: 384)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2572, file: !75, line: 213, baseType: !351, size: 64, offset: 448)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2572, file: !75, line: 214, baseType: !351, size: 64, offset: 512)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2472, file: !70, line: 2085, baseType: !2585, size: 64, offset: 1472)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!1115, !1212, !2588}
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2590, line: 15, size: 256, elements: !2591)
!2590 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2591 = !{!2592, !2593, !2594, !2595, !2596}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2589, file: !2590, line: 16, baseType: !522, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2589, file: !2590, line: 19, baseType: !114, size: 32, offset: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2589, file: !2590, line: 26, baseType: !298, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2589, file: !2590, line: 33, baseType: !298, size: 64, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2589, file: !2590, line: 36, baseType: !2597, size: 64, offset: 192)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !41, line: 33, flags: DIFlagFwdDecl)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2472, file: !70, line: 2087, baseType: !2585, size: 64, offset: 1536)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2472, file: !70, line: 2089, baseType: !1242, size: 64, offset: 1600)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1213, file: !70, line: 1198, baseType: !2602, size: 64, offset: 448)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2604)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !75, line: 324, size: 704, elements: !2605)
!2605 = !{!2606, !2610, !2614, !2618, !2619, !2620, !2621, !2622, !2627, !2632, !2636}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2604, file: !75, line: 325, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!114, !2542}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2604, file: !75, line: 326, baseType: !2611, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!2542, !1212, !114}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2604, file: !75, line: 327, baseType: !2615, size: 64, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{null, !2542}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2604, file: !75, line: 328, baseType: !2607, size: 64, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2604, file: !75, line: 329, baseType: !2607, size: 64, offset: 256)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2604, file: !75, line: 330, baseType: !2607, size: 64, offset: 320)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2604, file: !75, line: 331, baseType: !2498, size: 64, offset: 384)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2604, file: !75, line: 334, baseType: !2623, size: 64, offset: 448)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!2626, !1000}
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2604, file: !75, line: 335, baseType: !2628, size: 64, offset: 512)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!114, !1000, !2631}
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2604, file: !75, line: 337, baseType: !2633, size: 64, offset: 576)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!114, !1000, !2626}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2604, file: !75, line: 339, baseType: !2637, size: 64, offset: 640)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!114, !1212, !2640}
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1213, file: !70, line: 1199, baseType: !2642, size: 64, offset: 512)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2644)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !75, line: 430, size: 704, elements: !2645)
!2645 = !{!2646, !2650, !2651, !2655, !2656, !2657, !2672, !2695, !2699, !2700, !2723}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2644, file: !75, line: 431, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!114, !1212, !114, !114, !1123}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2644, file: !75, line: 432, baseType: !2498, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2644, file: !75, line: 433, baseType: !2652, size: 64, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!114, !1212, !13}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2644, file: !75, line: 434, baseType: !2652, size: 64, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2644, file: !75, line: 435, baseType: !2498, size: 64, offset: 256)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2644, file: !75, line: 436, baseType: !2658, size: 64, offset: 320)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!114, !1212, !114, !2661}
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !75, line: 417, size: 256, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2662, file: !75, line: 418, baseType: !114, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2662, file: !75, line: 419, baseType: !13, size: 32, offset: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2662, file: !75, line: 420, baseType: !13, size: 32, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2662, file: !75, line: 422, baseType: !13, size: 32, offset: 96)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2662, file: !75, line: 423, baseType: !13, size: 32, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2662, file: !75, line: 424, baseType: !13, size: 32, offset: 160)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2662, file: !75, line: 425, baseType: !13, size: 32, offset: 192)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2662, file: !75, line: 426, baseType: !13, size: 32, offset: 224)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2644, file: !75, line: 437, baseType: !2673, size: 64, offset: 384)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!114, !1212, !2554, !2676}
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !75, line: 345, size: 960, elements: !2678)
!2678 = !{!2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2677, file: !75, line: 346, baseType: !114, size: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2677, file: !75, line: 347, baseType: !255, size: 64, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2677, file: !75, line: 348, baseType: !255, size: 64, offset: 128)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2677, file: !75, line: 349, baseType: !255, size: 64, offset: 192)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2677, file: !75, line: 350, baseType: !255, size: 64, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2677, file: !75, line: 351, baseType: !255, size: 64, offset: 320)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2677, file: !75, line: 352, baseType: !255, size: 64, offset: 384)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2677, file: !75, line: 353, baseType: !221, size: 64, offset: 448)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2677, file: !75, line: 355, baseType: !221, size: 64, offset: 512)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2677, file: !75, line: 356, baseType: !114, size: 32, offset: 576)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2677, file: !75, line: 357, baseType: !114, size: 32, offset: 608)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2677, file: !75, line: 358, baseType: !255, size: 64, offset: 640)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2677, file: !75, line: 359, baseType: !255, size: 64, offset: 704)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2677, file: !75, line: 360, baseType: !255, size: 64, offset: 768)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2677, file: !75, line: 361, baseType: !221, size: 64, offset: 832)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2677, file: !75, line: 362, baseType: !114, size: 32, offset: 896)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2644, file: !75, line: 438, baseType: !2696, size: 64, offset: 448)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!114, !1212, !2640, !2676}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2644, file: !75, line: 440, baseType: !2673, size: 64, offset: 512)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2644, file: !75, line: 441, baseType: !2701, size: 64, offset: 576)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!114, !1212, !2704}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !75, line: 411, size: 1408, elements: !2706)
!2706 = !{!2707, !2708}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2705, file: !75, line: 412, baseType: !13, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2705, file: !75, line: 413, baseType: !2709, size: 1344, offset: 64)
!2709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2710, size: 1344, elements: !909)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !75, line: 397, size: 448, elements: !2711)
!2711 = !{!2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2722}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2710, file: !75, line: 398, baseType: !13, size: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2710, file: !75, line: 399, baseType: !13, size: 32, offset: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2710, file: !75, line: 401, baseType: !13, size: 32, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2710, file: !75, line: 402, baseType: !13, size: 32, offset: 96)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2710, file: !75, line: 403, baseType: !13, size: 32, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2710, file: !75, line: 404, baseType: !13, size: 32, offset: 160)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2710, file: !75, line: 405, baseType: !13, size: 32, offset: 192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2710, file: !75, line: 406, baseType: !257, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2710, file: !75, line: 407, baseType: !2721, size: 64, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !217, line: 132, baseType: !255)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2710, file: !75, line: 408, baseType: !2721, size: 64, offset: 384)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2644, file: !75, line: 442, baseType: !2652, size: 64, offset: 640)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1213, file: !70, line: 1200, baseType: !2725, size: 64, offset: 576)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2727)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !70, line: 54, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1213, file: !70, line: 1201, baseType: !298, size: 64, offset: 640)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1213, file: !70, line: 1202, baseType: !298, size: 64, offset: 704)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1213, file: !70, line: 1203, baseType: !298, size: 64, offset: 768)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1213, file: !70, line: 1204, baseType: !965, size: 64, offset: 832)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1213, file: !70, line: 1205, baseType: !303, size: 320, offset: 896)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1213, file: !70, line: 1206, baseType: !114, size: 32, offset: 1216)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1213, file: !70, line: 1207, baseType: !275, size: 32, offset: 1248)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1213, file: !70, line: 1209, baseType: !207, size: 64, offset: 1280)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1213, file: !70, line: 1211, baseType: !2737, size: 64, offset: 1344)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2740)
!2740 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !70, line: 1211, flags: DIFlagFwdDecl)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1213, file: !70, line: 1223, baseType: !2742, size: 64, offset: 1408)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !977, line: 34, size: 64, elements: !2743)
!2743 = !{!2744}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2742, file: !977, line: 35, baseType: !980, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1213, file: !70, line: 1224, baseType: !288, size: 128, offset: 1472)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1213, file: !70, line: 1225, baseType: !2747, size: 64, offset: 1600)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2749, line: 40, size: 7424, elements: !2750)
!2749 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2750 = !{!2751, !2752, !2753, !3994, !3995, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4038, !4039}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2748, file: !2749, line: 41, baseType: !1780, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2748, file: !2749, line: 42, baseType: !1780, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2748, file: !2749, line: 43, baseType: !2754, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !147, line: 128, size: 4544, elements: !2756)
!2756 = !{!2757, !2758, !2759, !2760, !2764, !2765, !2766, !2767, !2768, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3960, !3961, !3962, !3963, !3966, !3967, !3970, !3973, !3974, !3977, !3978, !3979, !3980}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2755, file: !147, line: 133, baseType: !114, size: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2755, file: !147, line: 134, baseType: !114, size: 32, offset: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2755, file: !147, line: 135, baseType: !114, size: 32, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2755, file: !147, line: 137, baseType: !2761, size: 256, offset: 96)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !2762)
!2762 = !{!2763}
!2763 = !DISubrange(count: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2755, file: !147, line: 139, baseType: !340, size: 16, offset: 352)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2755, file: !147, line: 140, baseType: !340, size: 16, offset: 368)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2755, file: !147, line: 142, baseType: !1204, size: 128, offset: 384)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2755, file: !147, line: 143, baseType: !2747, size: 64, offset: 512)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2755, file: !147, line: 145, baseType: !2769, size: 64, offset: 576)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2771)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !147, line: 1388, size: 1152, elements: !2772)
!2772 = !{!2773, !2863, !3872, !3877, !3881, !3885, !3886, !3890, !3891, !3897, !3901, !3902, !3906, !3932, !3936, !3941, !3942, !3946}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2771, file: !147, line: 1389, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{null, !2777}
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !2749, line: 265, size: 960, elements: !2779)
!2779 = !{!2780, !2781, !2782, !2784, !2785, !2786, !2788, !2789, !2796, !2798, !2801, !2802, !2805, !2809, !2810, !2812, !2813, !2814, !2815, !2817, !2861}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2778, file: !2749, line: 266, baseType: !2777, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !2778, file: !2749, line: 267, baseType: !2747, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2778, file: !2749, line: 268, baseType: !2783, size: 32, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !2749, line: 256, baseType: !361)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2778, file: !2749, line: 271, baseType: !340, size: 16, offset: 160)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2778, file: !2749, line: 272, baseType: !340, size: 16, offset: 176)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2778, file: !2749, line: 273, baseType: !2787, size: 8, offset: 192)
!2787 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !2749, line: 97, baseType: !331)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2778, file: !2749, line: 274, baseType: !275, size: 32, offset: 224)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2778, file: !2749, line: 276, baseType: !2790, size: 160, align: 32, offset: 256)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1862, line: 77, size: 160, align: 32, elements: !2791)
!2791 = !{!2792, !2793, !2794, !2795}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2790, file: !1862, line: 78, baseType: !1780, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2790, file: !1862, line: 80, baseType: !13, size: 32, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2790, file: !1862, line: 82, baseType: !13, size: 32, offset: 96)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2790, file: !1862, line: 84, baseType: !13, size: 32, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !2778, file: !2749, line: 278, baseType: !2797, size: 32, offset: 416)
!2797 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !2749, line: 258, baseType: !13)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2778, file: !2749, line: 279, baseType: !2799, size: 64, offset: 448)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !2749, line: 20, baseType: !2775)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2778, file: !2749, line: 280, baseType: !207, size: 64, offset: 512)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !2778, file: !2749, line: 288, baseType: !2803, size: 64, offset: 576)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !2749, line: 288, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !2778, file: !2749, line: 289, baseType: !2806, size: 64, offset: 640)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !2749, line: 228, size: 64, elements: !2807)
!2807 = !{!2808}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2806, file: !2749, line: 229, baseType: !255, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !2778, file: !2749, line: 291, baseType: !255, size: 64, offset: 704)
!2810 = !DIDerivedType(tag: DW_TAG_member, scope: !2778, file: !2749, line: 299, baseType: !2811, offset: 768)
!2811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2778, file: !2749, line: 299, elements: !854)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2778, file: !2749, line: 305, baseType: !340, size: 16, offset: 768)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2778, file: !2749, line: 311, baseType: !340, size: 16, offset: 784)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2778, file: !2749, line: 313, baseType: !275, size: 32, offset: 800)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2778, file: !2749, line: 315, baseType: !2816, size: 64, offset: 832)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2778, file: !2749, line: 317, baseType: !2818, size: 64, offset: 896)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2820, line: 678, size: 1984, elements: !2821)
!2820 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2821 = !{!2822, !2826, !2827, !2830, !2850, !2851, !2852, !2853, !2858, !2859, !2860}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2819, file: !2820, line: 679, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2825, line: 11, flags: DIFlagFwdDecl)
!2825 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2819, file: !2820, line: 680, baseType: !13, size: 32, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2819, file: !2820, line: 685, baseType: !2828, size: 64, offset: 128)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2820, line: 685, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2819, file: !2820, line: 687, baseType: !2831, size: 576, offset: 192)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2825, line: 26, baseType: !2832)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2825, line: 16, size: 576, elements: !2833)
!2833 = !{!2834, !2835, !2836, !2837, !2838, !2839, !2844, !2849}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2832, file: !2825, line: 17, baseType: !843, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2832, file: !2825, line: 18, baseType: !114, size: 32, offset: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2832, file: !2825, line: 19, baseType: !114, size: 32, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2832, file: !2825, line: 20, baseType: !1771, size: 64, offset: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2832, file: !2825, line: 22, baseType: !207, size: 64, offset: 192)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2832, file: !2825, line: 23, baseType: !2840, size: 64, offset: 256)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2825, line: 13, baseType: !2842)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!207, !522, !207}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2832, file: !2825, line: 24, baseType: !2845, size: 64, offset: 320)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2825, line: 14, baseType: !2847)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{null, !207, !207}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2832, file: !2825, line: 25, baseType: !926, size: 192, offset: 384)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2819, file: !2820, line: 688, baseType: !2831, size: 576, offset: 768)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2819, file: !2820, line: 694, baseType: !13, size: 32, offset: 1344)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2819, file: !2820, line: 699, baseType: !843, size: 32, offset: 1376)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2819, file: !2820, line: 700, baseType: !2854, size: 128, offset: 1408)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2820, line: 550, size: 128, elements: !2855)
!2855 = !{!2856, !2857}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2854, file: !2820, line: 551, baseType: !2777, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2854, file: !2820, line: 552, baseType: !2777, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2819, file: !2820, line: 701, baseType: !2350, size: 256, offset: 1536)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2819, file: !2820, line: 702, baseType: !2411, size: 64, offset: 1792)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2819, file: !2820, line: 707, baseType: !478, size: 128, offset: 1856)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2778, file: !2749, line: 324, baseType: !2862, offset: 960)
!2862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1861, elements: !512)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !2771, file: !147, line: 1390, baseType: !2864, size: 64, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!114, !2777, !2867, !13}
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !147, line: 1559, size: 192, elements: !2869)
!2869 = !{!2870, !3867, !3868}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !2868, file: !147, line: 1560, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !88, line: 80, size: 1984, elements: !2873)
!2873 = !{!2874, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3844, !3849, !3855, !3864, !3865, !3866}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2872, file: !88, line: 81, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !147, line: 391, size: 7296, elements: !2877)
!2877 = !{!2878, !2879, !3173, !3174, !3177, !3180, !3181, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3787, !3788, !3789, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2876, file: !147, line: 392, baseType: !2871, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2876, file: !147, line: 393, baseType: !2880, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !81, line: 114, size: 5056, elements: !2882)
!2882 = !{!2883, !3167, !3168, !3169, !3170, !3171}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2881, file: !81, line: 116, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_type", file: !81, line: 64, size: 2368, elements: !2886)
!2886 = !{!2887, !2888, !3137, !3138, !3139, !3152, !3153, !3154, !3156, !3157, !3161, !3162, !3166}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache", scope: !2885, file: !81, line: 67, baseType: !2823, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2885, file: !81, line: 70, baseType: !2889, size: 1408, offset: 64)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_mq_ops", file: !81, line: 26, size: 1408, elements: !2890)
!2890 = !{!2891, !2895, !2899, !3035, !3039, !3043, !3047, !3051, !3055, !3059, !3063, !3081, !3085, !3086, !3091, !3095, !3099, !3103, !3104, !3108, !3109, !3136}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "init_sched", scope: !2889, file: !81, line: 27, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!114, !2875, !2884}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "exit_sched", scope: !2889, file: !81, line: 28, baseType: !2896, size: 64, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{null, !2880}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !2889, file: !81, line: 29, baseType: !2900, size: 64, offset: 128)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!114, !2903, !13}
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !88, line: 288, size: 4096, elements: !2905)
!2905 = !{!2906, !2912, !2913, !2916, !2917, !2918, !2919, !2920, !2921, !2935, !2936, !2952, !2976, !2977, !2978, !2979, !2981, !2982, !2995, !2996, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034}
!2906 = !DIDerivedType(tag: DW_TAG_member, scope: !2904, file: !88, line: 289, baseType: !2907, size: 512, align: 512)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2904, file: !88, line: 289, size: 512, align: 512, elements: !2908)
!2908 = !{!2909, !2910, !2911}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2907, file: !88, line: 291, baseType: !843, size: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !2907, file: !88, line: 299, baseType: !288, size: 128, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2907, file: !88, line: 304, baseType: !298, size: 64, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !2904, file: !88, line: 310, baseType: !2406, size: 704, offset: 512)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2904, file: !88, line: 312, baseType: !2914, size: 64, offset: 1216)
!2914 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !772, line: 913, baseType: !2915)
!2915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !773, size: 64, elements: !777)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu", scope: !2904, file: !88, line: 317, baseType: !114, size: 32, offset: 1280)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu_batch", scope: !2904, file: !88, line: 322, baseType: !114, size: 32, offset: 1312)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2904, file: !88, line: 325, baseType: !298, size: 64, offset: 1344)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "sched_data", scope: !2904, file: !88, line: 331, baseType: !207, size: 64, offset: 1408)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2904, file: !88, line: 335, baseType: !2875, size: 64, offset: 1472)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2904, file: !88, line: 337, baseType: !2922, size: 64, offset: 1536)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !2924, line: 17, size: 512, elements: !2925)
!2924 = !DIFile(filename: "block/blk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "08e4a891c7a7b1c380cd6f0c6d03b93a")
!2925 = !{!2926, !2927, !2928, !2929, !2930, !2931, !2933, !2934}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "mq_flush_lock", scope: !2923, file: !2924, line: 18, baseType: !843, size: 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_idx", scope: !2923, file: !2924, line: 19, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "flush_running_idx", scope: !2923, file: !2924, line: 20, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "rq_status", scope: !2923, file: !2924, line: 21, baseType: !2787, size: 8, offset: 40)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_since", scope: !2923, file: !2924, line: 22, baseType: !298, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "flush_queue", scope: !2923, file: !2924, line: 23, baseType: !2932, size: 256, offset: 128)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 256, elements: !2226)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "flush_data_in_flight", scope: !2923, file: !2924, line: 24, baseType: !298, size: 64, offset: 384)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "flush_rq", scope: !2923, file: !2924, line: 25, baseType: !2871, size: 64, offset: 448)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2904, file: !88, line: 343, baseType: !207, size: 64, offset: 1600)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_map", scope: !2904, file: !88, line: 349, baseType: !2937, size: 256, offset: 1664)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap", file: !2938, line: 52, size: 256, elements: !2939)
!2938 = !DIFile(filename: "./include/linux/sbitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c1a10e3a5ba3f1b25200b1abce63f43a")
!2939 = !{!2940, !2941, !2942, !2943, !2944, !2951}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2937, file: !2938, line: 56, baseType: !13, size: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !2937, file: !2938, line: 61, baseType: !13, size: 32, offset: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "map_nr", scope: !2937, file: !2938, line: 66, baseType: !13, size: 32, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !2937, file: !2938, line: 71, baseType: !404, size: 8, offset: 96)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2937, file: !2938, line: 76, baseType: !2945, size: 64, offset: 128)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_word", file: !2938, line: 29, size: 1024, align: 512, elements: !2947)
!2947 = !{!2948, !2949, !2950}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !2946, file: !2938, line: 33, baseType: !298, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "cleared", scope: !2946, file: !2938, line: 38, baseType: !298, size: 64, align: 512, offset: 512)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "swap_lock", scope: !2946, file: !2938, line: 43, baseType: !314, size: 32, offset: 576)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !2937, file: !2938, line: 84, baseType: !2188, size: 64, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_from", scope: !2904, file: !88, line: 355, baseType: !2953, size: 64, offset: 1920)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !2955, line: 18, size: 1536, align: 512, elements: !2956)
!2955 = !DIFile(filename: "block/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaaa52c8c9e7dda989aa14aea0f2d4c3")
!2956 = !{!2957, !2963, !2964, !2966, !2968, !2969, !2975}
!2957 = !DIDerivedType(tag: DW_TAG_member, scope: !2954, file: !2955, line: 19, baseType: !2958, size: 512, align: 512)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2954, file: !2955, line: 19, size: 512, align: 512, elements: !2959)
!2959 = !{!2960, !2961}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2958, file: !2955, line: 20, baseType: !843, size: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "rq_lists", scope: !2958, file: !2955, line: 21, baseType: !2962, size: 384, offset: 64)
!2962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 384, elements: !909)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2954, file: !2955, line: 24, baseType: !13, size: 32, offset: 512)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "index_hw", scope: !2954, file: !2955, line: 25, baseType: !2965, size: 48, offset: 544)
!2965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 48, elements: !909)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "hctxs", scope: !2954, file: !2955, line: 26, baseType: !2967, size: 192, offset: 640)
!2967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2903, size: 192, elements: !909)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2954, file: !2955, line: 28, baseType: !2875, size: 64, offset: 832)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !2954, file: !2955, line: 29, baseType: !2970, size: 64, offset: 896)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctxs", file: !2955, line: 10, size: 576, elements: !2972)
!2972 = !{!2973, !2974}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2971, file: !2955, line: 11, baseType: !1259, size: 512)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2971, file: !2955, line: 12, baseType: !2953, size: 64, offset: 512)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2954, file: !2955, line: 30, baseType: !1259, size: 512, offset: 960)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_busy", scope: !2904, file: !88, line: 361, baseType: !13, size: 32, offset: 1984)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2904, file: !88, line: 364, baseType: !340, size: 16, offset: 2016)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ctx", scope: !2904, file: !88, line: 366, baseType: !340, size: 16, offset: 2032)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !2904, file: !88, line: 368, baseType: !2980, size: 64, offset: 2048)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait_lock", scope: !2904, file: !88, line: 371, baseType: !843, size: 32, offset: 2112)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait", scope: !2904, file: !88, line: 376, baseType: !2983, size: 320, offset: 2176)
!2983 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !927, line: 14, baseType: !2984)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !927, line: 30, size: 320, elements: !2985)
!2985 = !{!2986, !2987, !2988, !2994}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2984, file: !927, line: 31, baseType: !13, size: 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2984, file: !927, line: 32, baseType: !207, size: 64, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2984, file: !927, line: 33, baseType: !2989, size: 64, offset: 128)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !927, line: 16, baseType: !2990)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!114, !2993, !13, !114, !207}
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2984, file: !927, line: 34, baseType: !288, size: 128, offset: 192)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2904, file: !88, line: 382, baseType: !275, size: 32, offset: 2496)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !2904, file: !88, line: 388, baseType: !2997, size: 64, offset: 2560)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !88, line: 735, size: 1472, elements: !2999)
!2999 = !{!3000, !3001, !3002, !3003, !3018, !3019, !3021, !3022, !3023}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tags", scope: !2998, file: !88, line: 736, baseType: !13, size: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_tags", scope: !2998, file: !88, line: 737, baseType: !13, size: 32, offset: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "active_queues", scope: !2998, file: !88, line: 738, baseType: !13, size: 32, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_tags", scope: !2998, file: !88, line: 740, baseType: !3004, size: 512, offset: 128)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_queue", file: !2938, line: 109, size: 512, elements: !3005)
!3005 = !{!3006, !3007, !3008, !3009, !3014, !3015, !3016, !3017}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !3004, file: !2938, line: 113, baseType: !2937, size: 256)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "wake_batch", scope: !3004, file: !2938, line: 119, baseType: !13, size: 32, offset: 256)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "wake_index", scope: !3004, file: !2938, line: 124, baseType: !275, size: 32, offset: 288)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !3004, file: !2938, line: 129, baseType: !3010, size: 64, offset: 320)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbq_wait_state", file: !2938, line: 93, size: 512, align: 512, elements: !3012)
!3012 = !{!3013}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3011, file: !2938, line: 97, baseType: !926, size: 192)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ws_active", scope: !3004, file: !2938, line: 134, baseType: !275, size: 32, offset: 384)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "min_shallow_depth", scope: !3004, file: !2938, line: 140, baseType: !13, size: 32, offset: 416)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "completion_cnt", scope: !3004, file: !2938, line: 146, baseType: !275, size: 32, offset: 448)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_cnt", scope: !3004, file: !2938, line: 151, baseType: !275, size: 32, offset: 480)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "breserved_tags", scope: !2998, file: !88, line: 741, baseType: !3004, size: 512, offset: 640)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "rqs", scope: !2998, file: !88, line: 743, baseType: !3020, size: 64, offset: 1152)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "static_rqs", scope: !2998, file: !88, line: 744, baseType: !3020, size: 64, offset: 1216)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !2998, file: !88, line: 745, baseType: !288, size: 128, offset: 1280)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2998, file: !88, line: 751, baseType: !843, size: 32, offset: 1408)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "sched_tags", scope: !2904, file: !88, line: 394, baseType: !2997, size: 64, offset: 2624)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !2904, file: !88, line: 397, baseType: !298, size: 64, offset: 2688)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2904, file: !88, line: 400, baseType: !13, size: 32, offset: 2752)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "queue_num", scope: !2904, file: !88, line: 402, baseType: !13, size: 32, offset: 2784)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !2904, file: !88, line: 408, baseType: !275, size: 32, offset: 2816)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_online", scope: !2904, file: !88, line: 411, baseType: !478, size: 128, offset: 2880)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2904, file: !88, line: 413, baseType: !478, size: 128, offset: 3008)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2904, file: !88, line: 415, baseType: !1259, size: 512, offset: 3136)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2904, file: !88, line: 422, baseType: !965, size: 64, offset: 3648)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !2904, file: !88, line: 424, baseType: !965, size: 64, offset: 3712)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_list", scope: !2904, file: !88, line: 431, baseType: !288, size: 128, offset: 3776)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !2889, file: !81, line: 30, baseType: !3036, size: 64, offset: 192)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{null, !2903, !13}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "depth_updated", scope: !2889, file: !81, line: 31, baseType: !3040, size: 64, offset: 256)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{null, !2903}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "allow_merge", scope: !2889, file: !81, line: 33, baseType: !3044, size: 64, offset: 320)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!404, !2875, !2871, !2777}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "bio_merge", scope: !2889, file: !81, line: 34, baseType: !3048, size: 64, offset: 384)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!404, !2875, !2777, !13}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "request_merge", scope: !2889, file: !81, line: 35, baseType: !3052, size: 64, offset: 448)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!114, !2875, !3020, !2777}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "request_merged", scope: !2889, file: !81, line: 36, baseType: !3056, size: 64, offset: 512)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{null, !2875, !2871, !80}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "requests_merged", scope: !2889, file: !81, line: 37, baseType: !3060, size: 64, offset: 576)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{null, !2875, !2871, !2871}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "limit_depth", scope: !2889, file: !81, line: 38, baseType: !3064, size: 64, offset: 640)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{null, !2783, !3067}
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_alloc_data", file: !2955, line: 146, size: 448, elements: !3069)
!3069 = !{!3070, !3071, !3073, !3074, !3075, !3077, !3078, !3079, !3080}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3068, file: !2955, line: 148, baseType: !2875, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3068, file: !2955, line: 149, baseType: !3072, size: 32, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mq_req_flags_t", file: !2749, line: 352, baseType: !361)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "shallow_depth", scope: !3068, file: !2955, line: 150, baseType: !13, size: 32, offset: 96)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !3068, file: !2955, line: 151, baseType: !2783, size: 32, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !3068, file: !2955, line: 152, baseType: !3076, size: 32, offset: 160)
!3076 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !88, line: 27, baseType: !361)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tags", scope: !3068, file: !2955, line: 155, baseType: !13, size: 32, offset: 192)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !3068, file: !2955, line: 156, baseType: !3020, size: 64, offset: 256)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3068, file: !2955, line: 159, baseType: !2953, size: 64, offset: 320)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "hctx", scope: !3068, file: !2955, line: 160, baseType: !2903, size: 64, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_request", scope: !2889, file: !81, line: 39, baseType: !3082, size: 64, offset: 704)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !2871}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "finish_request", scope: !2889, file: !81, line: 40, baseType: !3082, size: 64, offset: 768)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "insert_requests", scope: !2889, file: !81, line: 41, baseType: !3087, size: 64, offset: 832)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{null, !2903, !291, !3090}
!3090 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_insert_t", file: !2955, line: 39, baseType: !13)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_request", scope: !2889, file: !81, line: 43, baseType: !3092, size: 64, offset: 896)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!2871, !2903}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "has_work", scope: !2889, file: !81, line: 44, baseType: !3096, size: 64, offset: 960)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!404, !2903}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "completed_request", scope: !2889, file: !81, line: 45, baseType: !3100, size: 64, offset: 1024)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{null, !2871, !255}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_request", scope: !2889, file: !81, line: 46, baseType: !3082, size: 64, offset: 1088)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "former_request", scope: !2889, file: !81, line: 47, baseType: !3105, size: 64, offset: 1152)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!2871, !2875, !2871}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "next_request", scope: !2889, file: !81, line: 48, baseType: !3105, size: 64, offset: 1216)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "init_icq", scope: !2889, file: !81, line: 49, baseType: !3110, size: 64, offset: 1280)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{null, !3113}
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3115, line: 73, size: 448, elements: !3116)
!3115 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3116 = !{!3117, !3118, !3125, !3130, !3135}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3114, file: !3115, line: 74, baseType: !2875, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3114, file: !3115, line: 75, baseType: !3119, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3115, line: 99, size: 128, elements: !3121)
!3121 = !{!3122, !3123, !3124}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3120, file: !3115, line: 100, baseType: !214, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3120, file: !3115, line: 101, baseType: !275, size: 32, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3120, file: !3115, line: 103, baseType: !340, size: 16, offset: 96)
!3125 = !DIDerivedType(tag: DW_TAG_member, scope: !3114, file: !3115, line: 83, baseType: !3126, size: 128, offset: 128)
!3126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3114, file: !3115, line: 83, size: 128, elements: !3127)
!3127 = !{!3128, !3129}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3126, file: !3115, line: 84, baseType: !288, size: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3126, file: !3115, line: 85, baseType: !2823, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, scope: !3114, file: !3115, line: 87, baseType: !3131, size: 128, offset: 256)
!3131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3114, file: !3115, line: 87, size: 128, elements: !3132)
!3132 = !{!3133, !3134}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3131, file: !3115, line: 88, baseType: !478, size: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3131, file: !3115, line: 89, baseType: !394, size: 128, align: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3114, file: !3115, line: 92, baseType: !13, size: 32, offset: 384)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "exit_icq", scope: !2889, file: !81, line: 50, baseType: !3110, size: 64, offset: 1344)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "icq_size", scope: !2885, file: !81, line: 72, baseType: !1157, size: 64, offset: 1472)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "icq_align", scope: !2885, file: !81, line: 73, baseType: !1157, size: 64, offset: 1536)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_attrs", scope: !2885, file: !81, line: 74, baseType: !3140, size: 64, offset: 1600)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elv_fs_entry", file: !81, line: 55, size: 256, elements: !3142)
!3142 = !{!3143, !3144, !3148}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3141, file: !81, line: 56, baseType: !1330, size: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3141, file: !81, line: 57, baseType: !3145, size: 64, offset: 128)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!1154, !2880, !417}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3141, file: !81, line: 58, baseType: !3149, size: 64, offset: 192)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!1154, !2880, !407, !1157}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_name", scope: !2885, file: !81, line: 75, baseType: !407, size: 64, offset: 1664)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_alias", scope: !2885, file: !81, line: 76, baseType: !407, size: 64, offset: 1728)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_features", scope: !2885, file: !81, line: 77, baseType: !3155, size: 32, offset: 1792)
!3155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_owner", scope: !2885, file: !81, line: 78, baseType: !1246, size: 64, offset: 1856)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "queue_debugfs_attrs", scope: !2885, file: !81, line: 80, baseType: !3158, size: 64, offset: 1920)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3160)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_debugfs_attr", file: !81, line: 11, flags: DIFlagFwdDecl)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_debugfs_attrs", scope: !2885, file: !81, line: 81, baseType: !3158, size: 64, offset: 1984)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache_name", scope: !2885, file: !81, line: 85, baseType: !3163, size: 176, offset: 2048)
!3163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !3164)
!3164 = !{!3165}
!3165 = !DISubrange(count: 22)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2885, file: !81, line: 86, baseType: !288, size: 128, offset: 2240)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_data", scope: !2881, file: !81, line: 117, baseType: !207, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2881, file: !81, line: 118, baseType: !1259, size: 512, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2881, file: !81, line: 119, baseType: !875, size: 256, offset: 640)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2881, file: !81, line: 120, baseType: !298, size: 64, offset: 896)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2881, file: !81, line: 121, baseType: !3172, size: 4096, offset: 960)
!3172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !921, size: 4096, elements: !1302)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2876, file: !147, line: 395, baseType: !1447, size: 128, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2876, file: !147, line: 397, baseType: !3175, size: 64, offset: 256)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !147, line: 39, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2876, file: !147, line: 398, baseType: !3178, size: 64, offset: 320)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !147, line: 38, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !2876, file: !147, line: 399, baseType: !875, size: 256, offset: 384)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2876, file: !147, line: 401, baseType: !3182, size: 64, offset: 640)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3184)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !88, line: 537, size: 1152, elements: !3185)
!3185 = !{!3186, !3196, !3197, !3201, !3205, !3209, !3213, !3217, !3221, !3225, !3226, !3230, !3231, !3261, !3265, !3266, !3270, !3274}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rq", scope: !3184, file: !88, line: 541, baseType: !3187, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!2787, !2903, !3190}
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3192)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_data", file: !88, line: 526, size: 128, elements: !3193)
!3193 = !{!3194, !3195}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "rq", scope: !3192, file: !88, line: 527, baseType: !2871, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !3192, file: !88, line: 528, baseType: !404, size: 8, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !3184, file: !88, line: 551, baseType: !3040, size: 64, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rqs", scope: !3184, file: !88, line: 559, baseType: !3198, size: 64, offset: 128)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{null, !3020}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "get_budget", scope: !3184, file: !88, line: 567, baseType: !3202, size: 64, offset: 192)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!114, !2875}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "put_budget", scope: !3184, file: !88, line: 572, baseType: !3206, size: 64, offset: 256)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{null, !2875, !114}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "set_rq_budget_token", scope: !3184, file: !88, line: 577, baseType: !3210, size: 64, offset: 320)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !2871, !114}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "get_rq_budget_token", scope: !3184, file: !88, line: 581, baseType: !3214, size: 64, offset: 384)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!114, !2871}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3184, file: !88, line: 586, baseType: !3218, size: 64, offset: 448)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!87, !2871}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3184, file: !88, line: 591, baseType: !3222, size: 64, offset: 512)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!114, !2903, !2867}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3184, file: !88, line: 596, baseType: !3082, size: 64, offset: 576)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !3184, file: !88, line: 603, baseType: !3227, size: 64, offset: 640)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!114, !2903, !207, !13}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !3184, file: !88, line: 607, baseType: !3036, size: 64, offset: 704)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !3184, file: !88, line: 616, baseType: !3232, size: 64, offset: 768)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!114, !3235, !2871, !13, !13}
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !88, line: 498, size: 1344, elements: !3237)
!3237 = !{!3238, !3239, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3257, !3258, !3259, !3260}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3236, file: !88, line: 499, baseType: !3182, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3236, file: !88, line: 500, baseType: !3240, size: 384, offset: 64)
!3240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3241, size: 384, elements: !909)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_map", file: !88, line: 444, size: 128, elements: !3242)
!3242 = !{!3243, !3244, !3245}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "mq_map", scope: !3241, file: !88, line: 445, baseType: !2188, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_queues", scope: !3241, file: !88, line: 446, baseType: !13, size: 32, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "queue_offset", scope: !3241, file: !88, line: 447, baseType: !13, size: 32, offset: 96)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !3236, file: !88, line: 501, baseType: !13, size: 32, offset: 448)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !3236, file: !88, line: 502, baseType: !13, size: 32, offset: 480)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !3236, file: !88, line: 503, baseType: !13, size: 32, offset: 512)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tags", scope: !3236, file: !88, line: 504, baseType: !13, size: 32, offset: 544)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !3236, file: !88, line: 505, baseType: !13, size: 32, offset: 576)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3236, file: !88, line: 506, baseType: !114, size: 32, offset: 608)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3236, file: !88, line: 507, baseType: !13, size: 32, offset: 640)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3236, file: !88, line: 508, baseType: !13, size: 32, offset: 672)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3236, file: !88, line: 509, baseType: !207, size: 64, offset: 704)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !3236, file: !88, line: 511, baseType: !3256, size: 64, offset: 768)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "shared_tags", scope: !3236, file: !88, line: 513, baseType: !2997, size: 64, offset: 832)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list_lock", scope: !3236, file: !88, line: 515, baseType: !875, size: 256, offset: 896)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list", scope: !3236, file: !88, line: 516, baseType: !288, size: 128, offset: 1152)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu", scope: !3236, file: !88, line: 517, baseType: !2306, size: 64, offset: 1280)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "exit_request", scope: !3184, file: !88, line: 621, baseType: !3262, size: 64, offset: 832)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{null, !3235, !2871, !13}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_rq", scope: !3184, file: !88, line: 628, baseType: !3082, size: 64, offset: 896)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3184, file: !88, line: 633, baseType: !3267, size: 64, offset: 960)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!404, !2875}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !3184, file: !88, line: 639, baseType: !3271, size: 64, offset: 1024)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{null, !3235}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "show_rq", scope: !3184, file: !88, line: 646, baseType: !3275, size: 64, offset: 1088)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{null, !2018, !2871}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2876, file: !147, line: 404, baseType: !2953, size: 64, offset: 704)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2876, file: !147, line: 406, baseType: !13, size: 32, offset: 768)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !2876, file: !147, line: 409, baseType: !1204, size: 128, offset: 832)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2876, file: !147, line: 410, baseType: !13, size: 32, offset: 960)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2876, file: !147, line: 416, baseType: !207, size: 64, offset: 1024)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2876, file: !147, line: 421, baseType: !298, size: 64, offset: 1088)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2876, file: !147, line: 426, baseType: !275, size: 32, offset: 1152)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2876, file: !147, line: 432, baseType: !114, size: 32, offset: 1184)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2876, file: !147, line: 434, baseType: !843, size: 32, offset: 1216)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !2876, file: !147, line: 436, baseType: !2754, size: 64, offset: 1280)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2876, file: !147, line: 438, baseType: !270, size: 32, offset: 1344)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2876, file: !147, line: 443, baseType: !1265, size: 64, offset: 1408)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2876, file: !147, line: 450, baseType: !3291, size: 64, offset: 1472)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !99, line: 705, size: 5824, elements: !3293)
!3293 = !{!3294, !3295, !3296, !3299, !3300, !3353, !3423, !3424, !3425, !3426, !3427, !3434, !3526, !3539, !3549, !3553, !3555, !3556, !3557, !3561, !3568, !3569, !3572, !3575, !3579, !3683, !3684, !3685, !3686, !3687, !3688, !3718, !3719, !3720, !3723, !3726, !3735, !3736, !3737, !3738, !3739, !3740}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3292, file: !99, line: 706, baseType: !1259, size: 512)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3292, file: !99, line: 707, baseType: !3291, size: 64, offset: 512)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3292, file: !99, line: 709, baseType: !3297, size: 64, offset: 576)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !99, line: 37, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3292, file: !99, line: 711, baseType: !407, size: 64, offset: 640)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3292, file: !99, line: 712, baseType: !3301, size: 64, offset: 704)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3303)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !99, line: 89, size: 384, elements: !3304)
!3304 = !{!3305, !3306, !3307, !3313, !3318, !3322}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3303, file: !99, line: 90, baseType: !407, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3303, file: !99, line: 91, baseType: !1339, size: 64, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3303, file: !99, line: 92, baseType: !3308, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!114, !3311, !1295}
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3292)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3303, file: !99, line: 93, baseType: !3314, size: 64, offset: 192)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!417, !3311, !3317, !1971, !1972}
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3303, file: !99, line: 95, baseType: !3319, size: 64, offset: 256)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{null, !3291}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3303, file: !99, line: 97, baseType: !3323, size: 64, offset: 320)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3325)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !106, line: 286, size: 1472, elements: !3326)
!3326 = !{!3327, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3325, file: !106, line: 287, baseType: !3328, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!114, !3291}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3325, file: !106, line: 288, baseType: !3319, size: 64, offset: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3325, file: !106, line: 289, baseType: !3328, size: 64, offset: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3325, file: !106, line: 290, baseType: !3328, size: 64, offset: 192)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3325, file: !106, line: 291, baseType: !3328, size: 64, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3325, file: !106, line: 292, baseType: !3328, size: 64, offset: 320)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3325, file: !106, line: 293, baseType: !3328, size: 64, offset: 384)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3325, file: !106, line: 294, baseType: !3328, size: 64, offset: 448)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3325, file: !106, line: 295, baseType: !3328, size: 64, offset: 512)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3325, file: !106, line: 296, baseType: !3328, size: 64, offset: 576)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3325, file: !106, line: 297, baseType: !3328, size: 64, offset: 640)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3325, file: !106, line: 298, baseType: !3328, size: 64, offset: 704)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3325, file: !106, line: 299, baseType: !3328, size: 64, offset: 768)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3325, file: !106, line: 300, baseType: !3328, size: 64, offset: 832)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3325, file: !106, line: 301, baseType: !3328, size: 64, offset: 896)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3325, file: !106, line: 302, baseType: !3328, size: 64, offset: 960)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3325, file: !106, line: 303, baseType: !3328, size: 64, offset: 1024)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3325, file: !106, line: 304, baseType: !3328, size: 64, offset: 1088)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3325, file: !106, line: 305, baseType: !3328, size: 64, offset: 1152)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3325, file: !106, line: 306, baseType: !3328, size: 64, offset: 1216)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3325, file: !106, line: 307, baseType: !3328, size: 64, offset: 1280)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3325, file: !106, line: 308, baseType: !3328, size: 64, offset: 1344)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3325, file: !106, line: 309, baseType: !3328, size: 64, offset: 1408)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3292, file: !99, line: 714, baseType: !3354, size: 64, offset: 768)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3356)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3357, line: 80, size: 1344, elements: !3358)
!3357 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3358 = !{!3359, !3360, !3361, !3362, !3363, !3364, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3422}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3356, file: !3357, line: 81, baseType: !407, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3356, file: !3357, line: 82, baseType: !407, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3356, file: !3357, line: 83, baseType: !1339, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3356, file: !3357, line: 84, baseType: !1339, size: 64, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3356, file: !3357, line: 85, baseType: !1339, size: 64, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3356, file: !3357, line: 87, baseType: !3365, size: 64, offset: 320)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!114, !3291, !3368}
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !93, line: 96, size: 1152, elements: !3370)
!3370 = !{!3371, !3372, !3373, !3374, !3375, !3376, !3377, !3381, !3385, !3386, !3387, !3388, !3389, !3397, !3398, !3399, !3400, !3401, !3402}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3369, file: !93, line: 97, baseType: !407, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3369, file: !93, line: 98, baseType: !3354, size: 64, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3369, file: !93, line: 100, baseType: !1246, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3369, file: !93, line: 101, baseType: !407, size: 64, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3369, file: !93, line: 103, baseType: !404, size: 8, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3369, file: !93, line: 104, baseType: !92, size: 32, offset: 288)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3369, file: !93, line: 106, baseType: !3378, size: 64, offset: 320)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3380)
!3380 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !93, line: 106, flags: DIFlagFwdDecl)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3369, file: !93, line: 107, baseType: !3382, size: 64, offset: 384)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3384)
!3384 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !93, line: 107, flags: DIFlagFwdDecl)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3369, file: !93, line: 109, baseType: !3328, size: 64, offset: 448)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3369, file: !93, line: 110, baseType: !3319, size: 64, offset: 512)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3369, file: !93, line: 111, baseType: !3328, size: 64, offset: 576)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3369, file: !93, line: 112, baseType: !3319, size: 64, offset: 640)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3369, file: !93, line: 113, baseType: !3390, size: 64, offset: 704)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!114, !3291, !3393}
!3393 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !106, line: 60, baseType: !3394)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !106, line: 58, size: 32, elements: !3395)
!3395 = !{!3396}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3394, file: !106, line: 59, baseType: !114, size: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3369, file: !93, line: 114, baseType: !3328, size: 64, offset: 768)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3369, file: !93, line: 115, baseType: !1339, size: 64, offset: 832)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3369, file: !93, line: 116, baseType: !1339, size: 64, offset: 896)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3369, file: !93, line: 118, baseType: !3323, size: 64, offset: 960)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3369, file: !93, line: 119, baseType: !3319, size: 64, offset: 1024)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3369, file: !93, line: 121, baseType: !3403, size: 64, offset: 1088)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !93, line: 121, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3356, file: !3357, line: 88, baseType: !3308, size: 64, offset: 384)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3356, file: !3357, line: 89, baseType: !3328, size: 64, offset: 448)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3356, file: !3357, line: 90, baseType: !3319, size: 64, offset: 512)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3356, file: !3357, line: 91, baseType: !3319, size: 64, offset: 576)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3356, file: !3357, line: 92, baseType: !3319, size: 64, offset: 640)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3356, file: !3357, line: 94, baseType: !3328, size: 64, offset: 704)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3356, file: !3357, line: 95, baseType: !3328, size: 64, offset: 768)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3356, file: !3357, line: 97, baseType: !3390, size: 64, offset: 832)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3356, file: !3357, line: 98, baseType: !3328, size: 64, offset: 896)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3356, file: !3357, line: 100, baseType: !3328, size: 64, offset: 960)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3356, file: !3357, line: 102, baseType: !3328, size: 64, offset: 1024)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3356, file: !3357, line: 103, baseType: !3319, size: 64, offset: 1088)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3356, file: !3357, line: 105, baseType: !3323, size: 64, offset: 1152)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3356, file: !3357, line: 107, baseType: !3419, size: 64, offset: 1216)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3421)
!3421 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3357, line: 107, flags: DIFlagFwdDecl)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3356, file: !3357, line: 109, baseType: !404, size: 8, offset: 1280)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3292, file: !99, line: 715, baseType: !3368, size: 64, offset: 832)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3292, file: !99, line: 717, baseType: !207, size: 64, offset: 896)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3292, file: !99, line: 719, baseType: !207, size: 64, offset: 960)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3292, file: !99, line: 721, baseType: !875, size: 256, offset: 1024)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3292, file: !99, line: 725, baseType: !3428, size: 448, offset: 1280)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !99, line: 517, size: 448, elements: !3429)
!3429 = !{!3430, !3431, !3432, !3433}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3428, file: !99, line: 518, baseType: !288, size: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3428, file: !99, line: 519, baseType: !288, size: 128, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3428, file: !99, line: 520, baseType: !288, size: 128, offset: 256)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3428, file: !99, line: 521, baseType: !98, size: 32, offset: 384)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3292, file: !99, line: 726, baseType: !3435, size: 2496, offset: 1728)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !106, line: 663, size: 2496, elements: !3436)
!3436 = !{!3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3519, !3523}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3435, file: !106, line: 664, baseType: !3393, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3435, file: !106, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3435, file: !106, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3435, file: !106, line: 667, baseType: !404, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3435, file: !106, line: 668, baseType: !404, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3435, file: !106, line: 669, baseType: !404, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3435, file: !106, line: 670, baseType: !404, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3435, file: !106, line: 671, baseType: !404, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3435, file: !106, line: 672, baseType: !404, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3435, file: !106, line: 673, baseType: !404, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3435, file: !106, line: 674, baseType: !404, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3435, file: !106, line: 675, baseType: !360, size: 32, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3435, file: !106, line: 676, baseType: !843, size: 32, offset: 96)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3435, file: !106, line: 678, baseType: !288, size: 128, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3435, file: !106, line: 679, baseType: !1468, size: 256, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3435, file: !106, line: 680, baseType: !3453, size: 64, offset: 512)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3455, line: 43, size: 1536, elements: !3456)
!3455 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3456 = !{!3457, !3458, !3459, !3460, !3461, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3454, file: !3455, line: 44, baseType: !407, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3454, file: !3455, line: 45, baseType: !114, size: 32, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3454, file: !3455, line: 46, baseType: !288, size: 128, offset: 128)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3454, file: !3455, line: 47, baseType: !843, size: 32, offset: 256)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3454, file: !3455, line: 48, baseType: !3462, size: 64, offset: 320)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !106, line: 629, flags: DIFlagFwdDecl)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3454, file: !3455, line: 49, baseType: !2338, size: 320, offset: 384)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3454, file: !3455, line: 50, baseType: !298, size: 64, offset: 704)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3454, file: !3455, line: 51, baseType: !652, size: 64, offset: 768)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3454, file: !3455, line: 52, baseType: !652, size: 64, offset: 832)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3454, file: !3455, line: 53, baseType: !652, size: 64, offset: 896)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3454, file: !3455, line: 54, baseType: !652, size: 64, offset: 960)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3454, file: !3455, line: 55, baseType: !652, size: 64, offset: 1024)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3454, file: !3455, line: 56, baseType: !298, size: 64, offset: 1088)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3454, file: !3455, line: 57, baseType: !298, size: 64, offset: 1152)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3454, file: !3455, line: 58, baseType: !298, size: 64, offset: 1216)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3454, file: !3455, line: 59, baseType: !298, size: 64, offset: 1280)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3454, file: !3455, line: 60, baseType: !298, size: 64, offset: 1344)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3454, file: !3455, line: 61, baseType: !3291, size: 64, offset: 1408)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3454, file: !3455, line: 62, baseType: !404, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3454, file: !3455, line: 63, baseType: !404, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3435, file: !106, line: 681, baseType: !404, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3435, file: !106, line: 682, baseType: !404, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3435, file: !106, line: 683, baseType: !404, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3435, file: !106, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3435, file: !106, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3435, file: !106, line: 690, baseType: !644, size: 512, offset: 640)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3435, file: !106, line: 691, baseType: !255, size: 64, offset: 1152)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3435, file: !106, line: 692, baseType: !2350, size: 256, offset: 1216)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3435, file: !106, line: 693, baseType: !926, size: 192, offset: 1472)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3435, file: !106, line: 694, baseType: !3462, size: 64, offset: 1664)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3435, file: !106, line: 695, baseType: !275, size: 32, offset: 1728)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3435, file: !106, line: 696, baseType: !275, size: 32, offset: 1760)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3435, file: !106, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3435, file: !106, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3435, file: !106, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3435, file: !106, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3435, file: !106, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3435, file: !106, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3435, file: !106, line: 703, baseType: !404, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3435, file: !106, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3435, file: !106, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3435, file: !106, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3435, file: !106, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3435, file: !106, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3435, file: !106, line: 709, baseType: !13, size: 32, offset: 1824)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3435, file: !106, line: 710, baseType: !105, size: 32, offset: 1856)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3435, file: !106, line: 711, baseType: !113, size: 32, offset: 1888)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3435, file: !106, line: 712, baseType: !113, size: 32, offset: 1920)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3435, file: !106, line: 713, baseType: !114, size: 32, offset: 1952)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3435, file: !106, line: 714, baseType: !114, size: 32, offset: 1984)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3435, file: !106, line: 715, baseType: !255, size: 64, offset: 2048)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3435, file: !106, line: 716, baseType: !255, size: 64, offset: 2112)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3435, file: !106, line: 717, baseType: !255, size: 64, offset: 2176)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3435, file: !106, line: 718, baseType: !255, size: 64, offset: 2240)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3435, file: !106, line: 720, baseType: !3514, size: 64, offset: 2304)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !106, line: 632, size: 64, elements: !3516)
!3516 = !{!3517, !3518}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3515, file: !106, line: 633, baseType: !843, size: 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3515, file: !106, line: 634, baseType: !13, size: 32, offset: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3435, file: !106, line: 721, baseType: !3520, size: 64, offset: 2368)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{null, !3291, !282}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3435, file: !106, line: 722, baseType: !3524, size: 64, offset: 2432)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !106, line: 722, flags: DIFlagFwdDecl)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3292, file: !99, line: 727, baseType: !3527, size: 64, offset: 4224)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !106, line: 742, size: 1792, elements: !3529)
!3529 = !{!3530, !3531, !3532, !3536, !3537, !3538}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3528, file: !106, line: 743, baseType: !3325, size: 1472)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3528, file: !106, line: 744, baseType: !3328, size: 64, offset: 1472)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3528, file: !106, line: 745, baseType: !3533, size: 64, offset: 1536)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{null, !3291, !404}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3528, file: !106, line: 746, baseType: !3328, size: 64, offset: 1600)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3528, file: !106, line: 747, baseType: !3319, size: 64, offset: 1664)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3528, file: !106, line: 748, baseType: !3319, size: 64, offset: 1728)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3292, file: !99, line: 736, baseType: !3540, size: 128, offset: 4288)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !99, line: 529, size: 128, elements: !3541)
!3541 = !{!3542, !3546}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3540, file: !99, line: 531, baseType: !3543, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3545, line: 13, flags: DIFlagFwdDecl)
!3545 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3540, file: !99, line: 532, baseType: !3547, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !99, line: 49, flags: DIFlagFwdDecl)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3292, file: !99, line: 738, baseType: !3550, size: 64, offset: 4416)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3552)
!3552 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !99, line: 738, flags: DIFlagFwdDecl)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3292, file: !99, line: 740, baseType: !3554, size: 64, offset: 4480)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3292, file: !99, line: 741, baseType: !255, size: 64, offset: 4544)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3292, file: !99, line: 746, baseType: !255, size: 64, offset: 4608)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3292, file: !99, line: 747, baseType: !3558, size: 64, offset: 4672)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3560)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !99, line: 747, flags: DIFlagFwdDecl)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3292, file: !99, line: 749, baseType: !3562, size: 64, offset: 4736)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !99, line: 428, size: 128, elements: !3564)
!3564 = !{!3565, !3566, !3567}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3563, file: !99, line: 433, baseType: !13, size: 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3563, file: !99, line: 434, baseType: !13, size: 32, offset: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3563, file: !99, line: 435, baseType: !298, size: 64, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3292, file: !99, line: 751, baseType: !288, size: 128, offset: 4800)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3292, file: !99, line: 762, baseType: !3570, size: 64, offset: 4928)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !99, line: 762, flags: DIFlagFwdDecl)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3292, file: !99, line: 770, baseType: !3573, offset: 4992)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3574, line: 5, elements: !854)
!3574 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3292, file: !99, line: 772, baseType: !3576, size: 64, offset: 4992)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3578, line: 18, flags: DIFlagFwdDecl)
!3578 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3292, file: !99, line: 773, baseType: !3580, size: 64, offset: 5056)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3582, line: 41, size: 512, elements: !3583)
!3582 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3583 = !{!3584, !3585, !3679, !3680, !3681, !3682}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3581, file: !3582, line: 42, baseType: !3580, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3581, file: !3582, line: 43, baseType: !3586, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3588)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3582, line: 125, size: 1408, elements: !3589)
!3589 = !{!3590, !3594, !3598, !3604, !3608, !3609, !3614, !3618, !3622, !3626, !3630, !3631, !3635, !3639, !3643, !3654, !3655, !3656, !3657, !3667, !3671, !3675}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3588, file: !3582, line: 126, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!3580, !3580}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3588, file: !3582, line: 127, baseType: !3595, size: 64, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{null, !3580}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3588, file: !3582, line: 128, baseType: !3599, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!404, !3602}
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3581)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3588, file: !3582, line: 129, baseType: !3605, size: 64, offset: 192)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!1954, !3602, !3311}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3588, file: !3582, line: 131, baseType: !3599, size: 64, offset: 256)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3588, file: !3582, line: 133, baseType: !3610, size: 64, offset: 320)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!3613, !3602}
!3613 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3582, line: 132, flags: DIFlagFwdDecl)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3588, file: !3582, line: 134, baseType: !3615, size: 64, offset: 384)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!404, !3602, !407}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3588, file: !3582, line: 136, baseType: !3619, size: 64, offset: 448)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!114, !3602, !407, !13, !207, !1157}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3588, file: !3582, line: 141, baseType: !3623, size: 64, offset: 512)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!114, !3602, !407, !2426, !1157}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3588, file: !3582, line: 144, baseType: !3627, size: 64, offset: 576)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!407, !3602}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3588, file: !3582, line: 145, baseType: !3627, size: 64, offset: 640)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3588, file: !3582, line: 146, baseType: !3632, size: 64, offset: 704)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!3580, !3602}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3588, file: !3582, line: 148, baseType: !3636, size: 64, offset: 768)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!3580, !3602, !3580}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3588, file: !3582, line: 151, baseType: !3640, size: 64, offset: 832)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!3580, !3602, !407}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3588, file: !3582, line: 153, baseType: !3644, size: 64, offset: 896)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!114, !3602, !407, !407, !13, !13, !3647}
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3582, line: 94, size: 640, elements: !3649)
!3649 = !{!3650, !3651, !3652}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3648, file: !3582, line: 95, baseType: !3580, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3648, file: !3582, line: 96, baseType: !13, size: 32, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3648, file: !3582, line: 97, baseType: !3653, size: 512, offset: 128)
!3653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 512, elements: !687)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3588, file: !3582, line: 158, baseType: !3636, size: 64, offset: 960)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3588, file: !3582, line: 161, baseType: !3632, size: 64, offset: 1024)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3588, file: !3582, line: 163, baseType: !3591, size: 64, offset: 1088)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3588, file: !3582, line: 164, baseType: !3658, size: 64, offset: 1152)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!114, !3602, !3661}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3582, line: 73, size: 128, elements: !3663)
!3663 = !{!3664, !3665, !3666}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3662, file: !3582, line: 74, baseType: !13, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3662, file: !3582, line: 75, baseType: !13, size: 32, offset: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3662, file: !3582, line: 76, baseType: !3602, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3588, file: !3582, line: 166, baseType: !3668, size: 64, offset: 1216)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!207, !3580, !114}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3588, file: !3582, line: 167, baseType: !3672, size: 64, offset: 1280)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!114, !3602, !13}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3588, file: !3582, line: 168, baseType: !3676, size: 64, offset: 1344)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!114, !3580}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3581, file: !3582, line: 44, baseType: !3291, size: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3581, file: !3582, line: 45, baseType: !288, size: 128, offset: 192)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3581, file: !3582, line: 46, baseType: !288, size: 128, offset: 320)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3581, file: !3582, line: 47, baseType: !331, size: 8, offset: 448)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3292, file: !99, line: 776, baseType: !114, size: 32, offset: 5120)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3292, file: !99, line: 778, baseType: !1075, size: 32, offset: 5152)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3292, file: !99, line: 779, baseType: !360, size: 32, offset: 5184)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3292, file: !99, line: 781, baseType: !843, size: 32, offset: 5216)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3292, file: !99, line: 782, baseType: !288, size: 128, offset: 5248)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3292, file: !99, line: 784, baseType: !3689, size: 64, offset: 5376)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3691)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3692, line: 52, size: 768, elements: !3693)
!3692 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3693 = !{!3694, !3695, !3696, !3697, !3698, !3702, !3706, !3707, !3708, !3709, !3713, !3717}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3691, file: !3692, line: 53, baseType: !407, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3691, file: !3692, line: 55, baseType: !1339, size: 64, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3691, file: !3692, line: 56, baseType: !1339, size: 64, offset: 128)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3691, file: !3692, line: 58, baseType: !3308, size: 64, offset: 192)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3691, file: !3692, line: 59, baseType: !3699, size: 64, offset: 256)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!417, !3311, !3317}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3691, file: !3692, line: 61, baseType: !3703, size: 64, offset: 320)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{null, !3689}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3691, file: !3692, line: 62, baseType: !3319, size: 64, offset: 384)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3691, file: !3692, line: 64, baseType: !3328, size: 64, offset: 448)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3691, file: !3692, line: 66, baseType: !1937, size: 64, offset: 512)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3691, file: !3692, line: 67, baseType: !3710, size: 64, offset: 576)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!1954, !3311}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3691, file: !3692, line: 69, baseType: !3714, size: 64, offset: 640)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{null, !3311, !1971, !1972}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3691, file: !3692, line: 71, baseType: !3323, size: 64, offset: 704)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3292, file: !99, line: 785, baseType: !1339, size: 64, offset: 5440)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3292, file: !99, line: 787, baseType: !3319, size: 64, offset: 5504)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3292, file: !99, line: 788, baseType: !3721, size: 64, offset: 5568)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !99, line: 46, flags: DIFlagFwdDecl)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3292, file: !99, line: 789, baseType: !3724, size: 64, offset: 5632)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !99, line: 48, flags: DIFlagFwdDecl)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3292, file: !99, line: 791, baseType: !3727, size: 64, offset: 5696)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !99, line: 597, size: 128, elements: !3729)
!3729 = !{!3730, !3731, !3732, !3733, !3734}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3728, file: !99, line: 598, baseType: !121, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3728, file: !99, line: 599, baseType: !130, size: 32, offset: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3728, file: !99, line: 600, baseType: !135, size: 32, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3728, file: !99, line: 601, baseType: !404, size: 8, offset: 96)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3728, file: !99, line: 602, baseType: !404, size: 8, offset: 104)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3292, file: !99, line: 793, baseType: !140, size: 32, offset: 5760)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3292, file: !99, line: 795, baseType: !404, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3292, file: !99, line: 796, baseType: !404, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3292, file: !99, line: 797, baseType: !404, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3292, file: !99, line: 798, baseType: !404, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3292, file: !99, line: 799, baseType: !404, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2876, file: !147, line: 451, baseType: !113, size: 32, offset: 1536)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2876, file: !147, line: 457, baseType: !298, size: 64, offset: 1600)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2876, file: !147, line: 459, baseType: !13, size: 32, offset: 1664)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2876, file: !147, line: 466, baseType: !13, size: 32, offset: 1696)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2876, file: !147, line: 468, baseType: !2338, size: 320, offset: 1728)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2876, file: !147, line: 469, baseType: !2350, size: 256, offset: 2048)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !2876, file: !147, line: 471, baseType: !275, size: 32, offset: 2304)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !2876, file: !147, line: 473, baseType: !2997, size: 64, offset: 2368)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2876, file: !147, line: 475, baseType: !288, size: 128, offset: 2432)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !2876, file: !147, line: 477, baseType: !776, size: 64, offset: 2560)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !2876, file: !147, line: 478, baseType: !2803, size: 64, offset: 2624)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !2876, file: !147, line: 479, baseType: !288, size: 128, offset: 2688)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !2876, file: !147, line: 480, baseType: !875, size: 256, offset: 2816)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2876, file: !147, line: 483, baseType: !3755, size: 960, offset: 3072)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !147, line: 300, size: 960, elements: !3756)
!3756 = !{!3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !3755, file: !147, line: 301, baseType: !146, size: 32)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !3755, file: !147, line: 302, baseType: !298, size: 64, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !3755, file: !147, line: 303, baseType: !298, size: 64, offset: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !3755, file: !147, line: 305, baseType: !13, size: 32, offset: 192)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !3755, file: !147, line: 306, baseType: !13, size: 32, offset: 224)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !3755, file: !147, line: 307, baseType: !13, size: 32, offset: 256)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !3755, file: !147, line: 308, baseType: !13, size: 32, offset: 288)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !3755, file: !147, line: 309, baseType: !13, size: 32, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3755, file: !147, line: 310, baseType: !13, size: 32, offset: 352)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !3755, file: !147, line: 311, baseType: !13, size: 32, offset: 384)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !3755, file: !147, line: 312, baseType: !13, size: 32, offset: 416)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !3755, file: !147, line: 313, baseType: !13, size: 32, offset: 448)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !3755, file: !147, line: 314, baseType: !13, size: 32, offset: 480)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !3755, file: !147, line: 315, baseType: !13, size: 32, offset: 512)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !3755, file: !147, line: 316, baseType: !13, size: 32, offset: 544)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !3755, file: !147, line: 317, baseType: !13, size: 32, offset: 576)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !3755, file: !147, line: 318, baseType: !13, size: 32, offset: 608)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !3755, file: !147, line: 319, baseType: !13, size: 32, offset: 640)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !3755, file: !147, line: 320, baseType: !13, size: 32, offset: 672)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !3755, file: !147, line: 321, baseType: !13, size: 32, offset: 704)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !3755, file: !147, line: 322, baseType: !13, size: 32, offset: 736)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !3755, file: !147, line: 323, baseType: !13, size: 32, offset: 768)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !3755, file: !147, line: 325, baseType: !340, size: 16, offset: 800)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !3755, file: !147, line: 326, baseType: !340, size: 16, offset: 816)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !3755, file: !147, line: 327, baseType: !340, size: 16, offset: 832)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !3755, file: !147, line: 329, baseType: !263, size: 8, offset: 848)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !3755, file: !147, line: 330, baseType: !263, size: 8, offset: 856)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !3755, file: !147, line: 331, baseType: !263, size: 8, offset: 864)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !3755, file: !147, line: 332, baseType: !151, size: 32, offset: 896)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !3755, file: !147, line: 339, baseType: !13, size: 32, offset: 928)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2876, file: !147, line: 485, baseType: !13, size: 32, offset: 4032)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2876, file: !147, line: 487, baseType: !114, size: 32, offset: 4064)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !2876, file: !147, line: 489, baseType: !3790, size: 64, offset: 4096)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !147, line: 31, flags: DIFlagFwdDecl)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2876, file: !147, line: 494, baseType: !2922, size: 64, offset: 4160)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !2876, file: !147, line: 495, baseType: !288, size: 128, offset: 4224)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2876, file: !147, line: 497, baseType: !288, size: 128, offset: 4352)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2876, file: !147, line: 498, baseType: !843, size: 32, offset: 4480)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2876, file: !147, line: 499, baseType: !2406, size: 704, offset: 4544)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2876, file: !147, line: 501, baseType: !875, size: 256, offset: 5248)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2876, file: !147, line: 502, baseType: !875, size: 256, offset: 5504)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2876, file: !147, line: 508, baseType: !288, size: 128, offset: 5760)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2876, file: !147, line: 509, baseType: !843, size: 32, offset: 5888)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2876, file: !147, line: 511, baseType: !114, size: 32, offset: 5920)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2876, file: !147, line: 517, baseType: !394, size: 128, align: 64, offset: 5952)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2876, file: !147, line: 518, baseType: !926, size: 192, offset: 6080)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2876, file: !147, line: 523, baseType: !875, size: 256, offset: 6272)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !2876, file: !147, line: 525, baseType: !114, size: 32, offset: 6528)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2876, file: !147, line: 527, baseType: !3235, size: 64, offset: 6592)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2876, file: !147, line: 528, baseType: !288, size: 128, offset: 6656)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2876, file: !147, line: 530, baseType: !965, size: 64, offset: 6784)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !2876, file: !147, line: 531, baseType: !965, size: 64, offset: 6848)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !2876, file: !147, line: 532, baseType: !965, size: 64, offset: 6912)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2876, file: !147, line: 536, baseType: !875, size: 256, offset: 6976)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2876, file: !147, line: 538, baseType: !404, size: 8, offset: 7232)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !2872, file: !88, line: 82, baseType: !2953, size: 64, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !2872, file: !88, line: 83, baseType: !2903, size: 64, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !2872, file: !88, line: 85, baseType: !2783, size: 32, offset: 192)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !2872, file: !88, line: 86, baseType: !3076, size: 32, offset: 224)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !2872, file: !88, line: 88, baseType: !114, size: 32, offset: 256)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !2872, file: !88, line: 89, baseType: !114, size: 32, offset: 288)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2872, file: !88, line: 91, baseType: !13, size: 32, offset: 320)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !2872, file: !88, line: 94, baseType: !13, size: 32, offset: 352)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !2872, file: !88, line: 95, baseType: !1780, size: 64, offset: 384)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !2872, file: !88, line: 97, baseType: !2777, size: 64, offset: 448)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !2872, file: !88, line: 98, baseType: !2777, size: 64, offset: 512)
!3824 = !DIDerivedType(tag: DW_TAG_member, scope: !2872, file: !88, line: 100, baseType: !3825, size: 128, offset: 576)
!3825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2872, file: !88, line: 100, size: 128, elements: !3826)
!3826 = !{!3827, !3828}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !3825, file: !88, line: 101, baseType: !288, size: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "rq_next", scope: !3825, file: !88, line: 102, baseType: !2871, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2872, file: !88, line: 105, baseType: !2747, size: 64, offset: 704)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_time_ns", scope: !2872, file: !88, line: 108, baseType: !255, size: 64, offset: 768)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !2872, file: !88, line: 111, baseType: !255, size: 64, offset: 832)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !2872, file: !88, line: 113, baseType: !255, size: 64, offset: 896)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !2872, file: !88, line: 123, baseType: !340, size: 16, offset: 960)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !2872, file: !88, line: 129, baseType: !340, size: 16, offset: 976)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2872, file: !88, line: 140, baseType: !340, size: 16, offset: 992)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2872, file: !88, line: 142, baseType: !156, size: 32, offset: 1024)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2872, file: !88, line: 143, baseType: !275, size: 32, offset: 1056)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2872, file: !88, line: 145, baseType: !298, size: 64, offset: 1088)
!3839 = !DIDerivedType(tag: DW_TAG_member, scope: !2872, file: !88, line: 154, baseType: !3840, size: 128, offset: 1152)
!3840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2872, file: !88, line: 154, size: 128, elements: !3841)
!3841 = !{!3842, !3843}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3840, file: !88, line: 155, baseType: !478, size: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !3840, file: !88, line: 156, baseType: !550, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, scope: !2872, file: !88, line: 165, baseType: !3845, size: 192, offset: 1280)
!3845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2872, file: !88, line: 165, size: 192, elements: !3846)
!3846 = !{!3847, !3848}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3845, file: !88, line: 166, baseType: !294, size: 192, align: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !3845, file: !88, line: 167, baseType: !1861, size: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !2872, file: !88, line: 177, baseType: !3850, size: 192, offset: 1472)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2872, file: !88, line: 174, size: 192, elements: !3851)
!3851 = !{!3852, !3853}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !3850, file: !88, line: 175, baseType: !3113, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3850, file: !88, line: 176, baseType: !3854, size: 128, offset: 64)
!3854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 128, elements: !2226)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2872, file: !88, line: 182, baseType: !3856, size: 128, offset: 1664)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2872, file: !88, line: 179, size: 128, elements: !3857)
!3857 = !{!3858, !3859}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3856, file: !88, line: 180, baseType: !13, size: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !3856, file: !88, line: 181, baseType: !3860, size: 64, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !88, line: 23, baseType: !3862)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!161, !2871, !2787}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !2872, file: !88, line: 184, baseType: !255, size: 64, offset: 1792)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !2872, file: !88, line: 189, baseType: !3860, size: 64, offset: 1856)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !2872, file: !88, line: 190, baseType: !207, size: 64, offset: 1920)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !2868, file: !147, line: 1561, baseType: !404, size: 8, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2868, file: !147, line: 1562, baseType: !3869, size: 64, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{null, !2867}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2771, file: !147, line: 1392, baseType: !3873, size: 64, offset: 128)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!114, !2754, !3876}
!3876 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !147, line: 115, baseType: !13)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2771, file: !147, line: 1393, baseType: !3878, size: 64, offset: 192)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{null, !2754}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2771, file: !147, line: 1394, baseType: !3882, size: 64, offset: 256)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!114, !2747, !3876, !13, !298}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2771, file: !147, line: 1396, baseType: !3882, size: 64, offset: 320)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2771, file: !147, line: 1398, baseType: !3887, size: 64, offset: 384)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!13, !2754, !13}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2771, file: !147, line: 1400, baseType: !3878, size: 64, offset: 448)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2771, file: !147, line: 1401, baseType: !3892, size: 64, offset: 512)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!114, !2747, !3895}
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !70, line: 56, flags: DIFlagFwdDecl)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !2771, file: !147, line: 1402, baseType: !3898, size: 64, offset: 576)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!114, !2747, !404}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !2771, file: !147, line: 1403, baseType: !3878, size: 64, offset: 640)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2771, file: !147, line: 1405, baseType: !3903, size: 64, offset: 704)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{null, !2747, !298}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2771, file: !147, line: 1406, baseType: !3907, size: 64, offset: 768)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!114, !2754, !1780, !13, !3910, !207}
!3910 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !147, line: 342, baseType: !3911)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!114, !3914, !13, !207}
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !3916, line: 106, size: 512, elements: !3917)
!3916 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!3917 = !{!3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3927, !3928}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3915, file: !3916, line: 107, baseType: !256, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3915, file: !3916, line: 108, baseType: !256, size: 64, offset: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !3915, file: !3916, line: 109, baseType: !256, size: 64, offset: 128)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3915, file: !3916, line: 110, baseType: !332, size: 8, offset: 192)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !3915, file: !3916, line: 111, baseType: !332, size: 8, offset: 200)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !3915, file: !3916, line: 112, baseType: !332, size: 8, offset: 208)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !3915, file: !3916, line: 113, baseType: !332, size: 8, offset: 216)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !3915, file: !3916, line: 114, baseType: !3926, size: 32, offset: 224)
!3926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 32, elements: !427)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !3915, file: !3916, line: 115, baseType: !256, size: 64, offset: 256)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3915, file: !3916, line: 116, baseType: !3929, size: 192, offset: 320)
!3929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 192, elements: !3930)
!3930 = !{!3931}
!3931 = !DISubrange(count: 24)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2771, file: !147, line: 1408, baseType: !3933, size: 64, offset: 832)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!417, !2754, !3317}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !2771, file: !147, line: 1410, baseType: !3937, size: 64, offset: 896)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!114, !2754, !3940, !165}
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2771, file: !147, line: 1412, baseType: !1246, size: 64, offset: 960)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2771, file: !147, line: 1413, baseType: !3943, size: 64, offset: 1024)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3945)
!3945 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !147, line: 37, flags: DIFlagFwdDecl)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !2771, file: !147, line: 1420, baseType: !3947, size: 64, offset: 1088)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!114, !2754, !1903}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2755, file: !147, line: 146, baseType: !2875, size: 64, offset: 640)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2755, file: !147, line: 147, baseType: !207, size: 64, offset: 704)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2755, file: !147, line: 149, baseType: !2819, size: 1984, offset: 768)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2755, file: !147, line: 151, baseType: !114, size: 32, offset: 2752)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2755, file: !147, line: 152, baseType: !298, size: 64, offset: 2816)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !2755, file: !147, line: 161, baseType: !875, size: 256, offset: 2880)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !2755, file: !147, line: 162, baseType: !13, size: 32, offset: 3136)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2755, file: !147, line: 164, baseType: !3958, size: 64, offset: 3200)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !70, line: 50, flags: DIFlagFwdDecl)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !2755, file: !147, line: 165, baseType: !1259, size: 512, offset: 3264)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2755, file: !147, line: 166, baseType: !1265, size: 64, offset: 3776)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !2755, file: !147, line: 168, baseType: !288, size: 128, offset: 3840)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2755, file: !147, line: 170, baseType: !3964, size: 64, offset: 3968)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !147, line: 170, flags: DIFlagFwdDecl)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2755, file: !147, line: 171, baseType: !275, size: 32, offset: 4032)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2755, file: !147, line: 172, baseType: !3968, size: 64, offset: 4096)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !147, line: 104, flags: DIFlagFwdDecl)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !2755, file: !147, line: 197, baseType: !3971, size: 64, offset: 4160)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !147, line: 197, flags: DIFlagFwdDecl)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2755, file: !147, line: 199, baseType: !114, size: 32, offset: 4224)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2755, file: !147, line: 200, baseType: !3975, size: 64, offset: 4288)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !147, line: 105, flags: DIFlagFwdDecl)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2755, file: !147, line: 201, baseType: !2377, offset: 4352)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !2755, file: !147, line: 202, baseType: !255, size: 64, offset: 4352)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !2755, file: !147, line: 203, baseType: !3876, size: 32, offset: 4416)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !2755, file: !147, line: 209, baseType: !3981, size: 64, offset: 4480)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !147, line: 384, size: 576, elements: !3983)
!3983 = !{!3984, !3985, !3986, !3987}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3982, file: !147, line: 385, baseType: !1259, size: 512)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !3982, file: !147, line: 386, baseType: !404, size: 8, offset: 512)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !3982, file: !147, line: 387, baseType: !13, size: 32, offset: 544)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !3982, file: !147, line: 388, baseType: !3988, offset: 576)
!3988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3989, elements: !512)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !147, line: 378, size: 640, elements: !3990)
!3990 = !{!3991, !3992, !3993}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3989, file: !147, line: 379, baseType: !1259, size: 512)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !3989, file: !147, line: 380, baseType: !1780, size: 64, offset: 512)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !3989, file: !147, line: 381, baseType: !1780, size: 64, offset: 576)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2748, file: !2749, line: 44, baseType: !2875, size: 64, offset: 192)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2748, file: !2749, line: 45, baseType: !3996, size: 64, offset: 256)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2749, line: 45, flags: DIFlagFwdDecl)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2748, file: !2749, line: 46, baseType: !298, size: 64, offset: 320)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2748, file: !2749, line: 47, baseType: !404, size: 8, offset: 384)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2748, file: !2749, line: 48, baseType: !331, size: 8, offset: 392)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2748, file: !2749, line: 49, baseType: !404, size: 8, offset: 400)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2748, file: !2749, line: 50, baseType: !404, size: 8, offset: 408)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2748, file: !2749, line: 51, baseType: !1075, size: 32, offset: 416)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2748, file: !2749, line: 52, baseType: !275, size: 32, offset: 448)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2748, file: !2749, line: 53, baseType: !843, size: 32, offset: 480)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2748, file: !2749, line: 54, baseType: !1000, size: 64, offset: 512)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2748, file: !2749, line: 55, baseType: !207, size: 64, offset: 576)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2748, file: !2749, line: 56, baseType: !207, size: 64, offset: 640)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2748, file: !2749, line: 57, baseType: !4010, size: 64, offset: 704)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4012)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !147, line: 1477, size: 128, elements: !4013)
!4013 = !{!4014, !4018}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !4012, file: !147, line: 1478, baseType: !4015, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{null, !2747, !404}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4012, file: !147, line: 1483, baseType: !4019, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{null, !2747}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2748, file: !2749, line: 58, baseType: !875, size: 256, offset: 768)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2748, file: !2749, line: 60, baseType: !114, size: 32, offset: 1024)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2748, file: !2749, line: 61, baseType: !114, size: 32, offset: 1056)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2748, file: !2749, line: 62, baseType: !1265, size: 64, offset: 1088)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2748, file: !2749, line: 65, baseType: !875, size: 256, offset: 1152)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2748, file: !2749, line: 66, baseType: !1212, size: 64, offset: 1408)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2748, file: !2749, line: 68, baseType: !4029, size: 64, offset: 1472)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !147, line: 63, size: 808, elements: !4031)
!4031 = !{!4032, !4036}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !4030, file: !147, line: 64, baseType: !4033, size: 296)
!4033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !4034)
!4034 = !{!4035}
!4035 = !DISubrange(count: 37)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !4030, file: !147, line: 65, baseType: !4037, size: 512, offset: 296)
!4037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 512, elements: !1302)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2748, file: !2749, line: 72, baseType: !404, size: 8, offset: 1536)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2748, file: !2749, line: 77, baseType: !3292, size: 5824, offset: 1600)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1213, file: !70, line: 1226, baseType: !4041, size: 64, offset: 1664)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !147, line: 1495, size: 128, elements: !4043)
!4043 = !{!4044, !4045}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !4042, file: !147, line: 1496, baseType: !2747, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !4042, file: !147, line: 1497, baseType: !207, size: 64, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1213, file: !70, line: 1227, baseType: !3958, size: 64, offset: 1728)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1213, file: !70, line: 1228, baseType: !4048, size: 64, offset: 1792)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !70, line: 1228, flags: DIFlagFwdDecl)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1213, file: !70, line: 1229, baseType: !478, size: 128, offset: 1856)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1213, file: !70, line: 1230, baseType: !13, size: 32, offset: 1984)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1213, file: !70, line: 1231, baseType: !4053, size: 2496, offset: 2048)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !75, line: 521, size: 2496, elements: !4054)
!4054 = !{!4055, !4056, !4057, !4059, !4091}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4053, file: !75, line: 522, baseType: !13, size: 32)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4053, file: !75, line: 523, baseType: !303, size: 320, offset: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4053, file: !75, line: 524, baseType: !4058, size: 192, offset: 384)
!4058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, size: 192, elements: !909)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4053, file: !75, line: 525, baseType: !4060, size: 1728, offset: 576)
!4060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4061, size: 1728, elements: !909)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !75, line: 222, size: 576, elements: !4062)
!4062 = !{!4063, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4061, file: !75, line: 223, baseType: !4064, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !75, line: 445, size: 256, elements: !4066)
!4066 = !{!4067, !4068, !4081, !4082}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4065, file: !75, line: 446, baseType: !114, size: 32)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4065, file: !75, line: 447, baseType: !4069, size: 64, offset: 64)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4071)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !75, line: 312, size: 512, elements: !4072)
!4072 = !{!4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4071, file: !75, line: 313, baseType: !2498, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4071, file: !75, line: 314, baseType: !2498, size: 64, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4071, file: !75, line: 315, baseType: !2498, size: 64, offset: 128)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4071, file: !75, line: 316, baseType: !2498, size: 64, offset: 192)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4071, file: !75, line: 317, baseType: !2607, size: 64, offset: 256)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4071, file: !75, line: 318, baseType: !2607, size: 64, offset: 320)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4071, file: !75, line: 319, baseType: !2607, size: 64, offset: 384)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4071, file: !75, line: 320, baseType: !2637, size: 64, offset: 448)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4065, file: !75, line: 448, baseType: !1246, size: 64, offset: 128)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4065, file: !75, line: 449, baseType: !4064, size: 64, offset: 192)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4061, file: !75, line: 224, baseType: !114, size: 32, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4061, file: !75, line: 226, baseType: !288, size: 128, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4061, file: !75, line: 227, baseType: !298, size: 64, offset: 256)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4061, file: !75, line: 228, baseType: !13, size: 32, offset: 320)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4061, file: !75, line: 229, baseType: !13, size: 32, offset: 352)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4061, file: !75, line: 230, baseType: !2575, size: 64, offset: 384)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4061, file: !75, line: 231, baseType: !2575, size: 64, offset: 448)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4061, file: !75, line: 232, baseType: !207, size: 64, offset: 512)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4053, file: !75, line: 526, baseType: !4092, size: 192, offset: 2304)
!4092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4069, size: 192, elements: !909)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1213, file: !70, line: 1233, baseType: !4094, size: 2368, offset: 4544)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !70, line: 1184, size: 2368, elements: !4095)
!4095 = !{!4096, !4097, !4098}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4094, file: !70, line: 1185, baseType: !340, size: 16)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4094, file: !70, line: 1186, baseType: !340, size: 16, offset: 16)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4094, file: !70, line: 1187, baseType: !4099, size: 2304, offset: 64)
!4099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4100, size: 2304, elements: !909)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4101, line: 12, size: 768, elements: !4102)
!4101 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4102 = !{!4103, !4111, !4112, !4117, !4118}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4100, file: !4101, line: 13, baseType: !4104, size: 384)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4105, line: 17, size: 384, elements: !4106)
!4105 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4106 = !{!4107, !4108, !4109, !4110}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4104, file: !4105, line: 18, baseType: !114, size: 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4104, file: !4105, line: 19, baseType: !114, size: 32, offset: 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4104, file: !4105, line: 20, baseType: !926, size: 192, offset: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4104, file: !4105, line: 22, baseType: !394, size: 128, align: 64, offset: 256)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4100, file: !4101, line: 14, baseType: !2188, size: 64, offset: 384)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4100, file: !4101, line: 15, baseType: !4113, size: 64, offset: 448)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4114, line: 16, size: 64, elements: !4115)
!4114 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4115 = !{!4116}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4113, file: !4114, line: 17, baseType: !527, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4100, file: !4101, line: 16, baseType: !926, size: 192, offset: 512)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4100, file: !4101, line: 17, baseType: !275, size: 32, offset: 704)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1213, file: !70, line: 1240, baseType: !207, size: 64, offset: 6912)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1213, file: !70, line: 1243, baseType: !360, size: 32, offset: 6976)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1213, file: !70, line: 1245, baseType: !351, size: 64, offset: 7040)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1213, file: !70, line: 1246, baseType: !351, size: 64, offset: 7104)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1213, file: !70, line: 1248, baseType: !361, size: 32, offset: 7168)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1213, file: !70, line: 1249, baseType: !4125, size: 64, offset: 7232)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !70, line: 634, flags: DIFlagFwdDecl)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1213, file: !70, line: 1252, baseType: !2761, size: 256, offset: 7296)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1213, file: !70, line: 1253, baseType: !4129, size: 128, offset: 7552)
!4129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4130, line: 21, baseType: !4131)
!4130 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4130, line: 19, size: 128, elements: !4132)
!4132 = !{!4133}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4131, file: !4130, line: 20, baseType: !4134, size: 128)
!4134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 128, elements: !5)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1213, file: !70, line: 1255, baseType: !13, size: 32, offset: 7680)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1213, file: !70, line: 1261, baseType: !875, size: 256, offset: 7744)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1213, file: !70, line: 1267, baseType: !407, size: 64, offset: 8000)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1213, file: !70, line: 1269, baseType: !4139, size: 64, offset: 8064)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4141)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !967, line: 128, size: 1024, align: 512, elements: !4142)
!4142 = !{!4143, !4147, !4148, !4155, !4161, !4165, !4169, !4173, !4174, !4178, !4182, !4187, !4191}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4141, file: !967, line: 129, baseType: !4144, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!114, !965, !13}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4141, file: !967, line: 130, baseType: !4144, size: 64, offset: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4141, file: !967, line: 131, baseType: !4149, size: 64, offset: 128)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!114, !4152, !4154}
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !966)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4141, file: !967, line: 132, baseType: !4156, size: 64, offset: 192)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!114, !4152, !13, !407, !4159}
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4141, file: !967, line: 134, baseType: !4162, size: 64, offset: 256)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!114, !4152}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4141, file: !967, line: 135, baseType: !4166, size: 64, offset: 320)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!114, !965}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4141, file: !967, line: 136, baseType: !4170, size: 64, offset: 384)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !965}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4141, file: !967, line: 137, baseType: !4170, size: 64, offset: 448)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4141, file: !967, line: 138, baseType: !4175, size: 64, offset: 512)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{null, !965, !1000}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4141, file: !967, line: 139, baseType: !4179, size: 64, offset: 576)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!417, !965, !417, !114}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4141, file: !967, line: 140, baseType: !4183, size: 64, offset: 640)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!960, !4186}
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4141, file: !967, line: 141, baseType: !4188, size: 64, offset: 704)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!114, !1123, !404}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4141, file: !967, line: 142, baseType: !4192, size: 64, offset: 768)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!965, !965, !4195}
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1001)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1213, file: !70, line: 1271, baseType: !4198, size: 448, offset: 8128)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2590, line: 63, size: 448, elements: !4199)
!4199 = !{!4200, !4205, !4206, !4207, !4208, !4209, !4210}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4198, file: !2590, line: 64, baseType: !4201, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!298, !4204, !2588}
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4198, file: !2590, line: 66, baseType: !4201, size: 64, offset: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4198, file: !2590, line: 69, baseType: !1115, size: 64, offset: 128)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4198, file: !2590, line: 70, baseType: !114, size: 32, offset: 192)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4198, file: !2590, line: 71, baseType: !13, size: 32, offset: 224)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4198, file: !2590, line: 74, baseType: !288, size: 128, offset: 256)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4198, file: !2590, line: 85, baseType: !4211, size: 64, offset: 384)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1213, file: !70, line: 1274, baseType: !214, size: 64, offset: 8576)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1213, file: !70, line: 1280, baseType: !214, size: 64, offset: 8640)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1213, file: !70, line: 1283, baseType: !114, size: 32, offset: 8704)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1213, file: !70, line: 1286, baseType: !1915, size: 32, offset: 8736)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1213, file: !70, line: 1289, baseType: !2411, size: 64, offset: 8768)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1213, file: !70, line: 1290, baseType: !921, size: 64, offset: 8832)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1213, file: !70, line: 1297, baseType: !498, size: 64, offset: 8896)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1213, file: !70, line: 1304, baseType: !4220, size: 64, offset: 8960)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4221, line: 49, size: 64, elements: !4222)
!4221 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4222 = !{!4223}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4220, file: !4221, line: 50, baseType: !4224, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4221, line: 41, size: 512, align: 512, elements: !4226)
!4226 = !{!4227, !4228, !4233}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4225, file: !4221, line: 43, baseType: !843, size: 32)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4225, file: !4221, line: 45, baseType: !4229, size: 192, offset: 64)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4221, line: 29, size: 192, elements: !4230)
!4230 = !{!4231, !4232}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4229, file: !4221, line: 30, baseType: !288, size: 128)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4229, file: !4221, line: 32, baseType: !1115, size: 64, offset: 128)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4225, file: !4221, line: 46, baseType: !1115, size: 64, offset: 256)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1213, file: !70, line: 1305, baseType: !4220, size: 64, offset: 9024)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1213, file: !70, line: 1306, baseType: !394, size: 128, align: 64, offset: 9088)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1213, file: !70, line: 1307, baseType: !2350, size: 256, offset: 9216)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1213, file: !70, line: 1309, baseType: !875, size: 256, offset: 9472)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1213, file: !70, line: 1314, baseType: !114, size: 32, offset: 9728)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1213, file: !70, line: 1317, baseType: !843, size: 32, align: 512, offset: 10240)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1213, file: !70, line: 1318, baseType: !288, size: 128, offset: 10304)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1213, file: !70, line: 1320, baseType: !843, size: 32, offset: 10432)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1213, file: !70, line: 1321, baseType: !288, size: 128, offset: 10496)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1001, file: !70, line: 656, baseType: !1363, size: 64, offset: 512)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1001, file: !70, line: 659, baseType: !207, size: 64, offset: 576)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1001, file: !70, line: 663, baseType: !298, size: 64, offset: 640)
!4246 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !70, line: 671, baseType: !4247, size: 32, offset: 704)
!4247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !70, line: 671, size: 32, elements: !4248)
!4248 = !{!4249, !4250}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4247, file: !70, line: 672, baseType: !3155, size: 32)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4247, file: !70, line: 673, baseType: !13, size: 32)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1001, file: !70, line: 675, baseType: !1075, size: 32, offset: 736)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1001, file: !70, line: 676, baseType: !883, size: 64, offset: 768)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1001, file: !70, line: 677, baseType: !1111, size: 128, offset: 832)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1001, file: !70, line: 678, baseType: !1111, size: 128, offset: 960)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1001, file: !70, line: 679, baseType: !1111, size: 128, offset: 1088)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1001, file: !70, line: 680, baseType: !843, size: 32, offset: 1216)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1001, file: !70, line: 681, baseType: !340, size: 16, offset: 1248)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1001, file: !70, line: 682, baseType: !331, size: 8, offset: 1264)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1001, file: !70, line: 683, baseType: !331, size: 8, offset: 1272)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1001, file: !70, line: 684, baseType: !2721, size: 64, offset: 1280)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1001, file: !70, line: 691, baseType: !298, size: 64, offset: 1344)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1001, file: !70, line: 692, baseType: !303, size: 320, offset: 1408)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1001, file: !70, line: 694, baseType: !298, size: 64, offset: 1728)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1001, file: !70, line: 695, baseType: !298, size: 64, offset: 1792)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1001, file: !70, line: 697, baseType: !478, size: 128, offset: 1856)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1001, file: !70, line: 698, baseType: !288, size: 128, offset: 1984)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1001, file: !70, line: 707, baseType: !288, size: 128, offset: 2112)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1001, file: !70, line: 708, baseType: !288, size: 128, offset: 2240)
!4269 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !70, line: 709, baseType: !4270, size: 128, offset: 2368)
!4270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !70, line: 709, size: 128, elements: !4271)
!4271 = !{!4272, !4273}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4270, file: !70, line: 710, baseType: !921, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4270, file: !70, line: 711, baseType: !394, size: 128, align: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1001, file: !70, line: 713, baseType: !216, size: 64, offset: 2496)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1001, file: !70, line: 714, baseType: !216, size: 64, offset: 2560)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1001, file: !70, line: 715, baseType: !275, size: 32, offset: 2624)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1001, file: !70, line: 716, baseType: !275, size: 32, offset: 2656)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1001, file: !70, line: 717, baseType: !275, size: 32, offset: 2688)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1001, file: !70, line: 719, baseType: !275, size: 32, offset: 2720)
!4280 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !70, line: 721, baseType: !4281, size: 64, offset: 2752)
!4281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !70, line: 721, size: 64, elements: !4282)
!4282 = !{!4283, !4407}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4281, file: !70, line: 722, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4286)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !70, line: 1914, size: 2112, elements: !4287)
!4287 = !{!4288, !4289, !4293, !4297, !4301, !4302, !4303, !4307, !4320, !4324, !4328, !4329, !4333, !4334, !4338, !4343, !4344, !4348, !4352, !4358, !4359, !4363, !4364, !4370, !4374, !4375, !4380, !4384, !4388, !4392, !4396, !4397, !4403}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4286, file: !70, line: 1915, baseType: !1246, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4286, file: !70, line: 1916, baseType: !4290, size: 64, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!883, !861, !883, !114}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4286, file: !70, line: 1917, baseType: !4294, size: 64, offset: 128)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!1154, !861, !417, !1157, !2042}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4286, file: !70, line: 1918, baseType: !4298, size: 64, offset: 192)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!1154, !861, !407, !1157, !2042}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4286, file: !70, line: 1919, baseType: !1794, size: 64, offset: 256)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4286, file: !70, line: 1920, baseType: !1794, size: 64, offset: 320)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4286, file: !70, line: 1921, baseType: !4304, size: 64, offset: 384)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!114, !1797, !2867, !13}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4286, file: !70, line: 1923, baseType: !4308, size: 64, offset: 448)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!114, !861, !4311}
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !70, line: 1858, size: 128, elements: !4313)
!4313 = !{!4314, !4319}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4312, file: !70, line: 1859, baseType: !4315, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !70, line: 1855, baseType: !4316)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!404, !4311, !407, !114, !883, !255, !13}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4312, file: !70, line: 1860, baseType: !883, size: 64, offset: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4286, file: !70, line: 1924, baseType: !4321, size: 64, offset: 512)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!2062, !861, !2064}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4286, file: !70, line: 1925, baseType: !4325, size: 64, offset: 576)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!1115, !861, !13, !298}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4286, file: !70, line: 1926, baseType: !4325, size: 64, offset: 640)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4286, file: !70, line: 1927, baseType: !4330, size: 64, offset: 704)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!114, !861, !1503}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4286, file: !70, line: 1928, baseType: !298, size: 64, offset: 768)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4286, file: !70, line: 1929, baseType: !4335, size: 64, offset: 832)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!114, !1000, !861}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4286, file: !70, line: 1930, baseType: !4339, size: 64, offset: 896)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!114, !861, !4342}
!4342 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !70, line: 1061, baseType: !207)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4286, file: !70, line: 1931, baseType: !4335, size: 64, offset: 960)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4286, file: !70, line: 1932, baseType: !4345, size: 64, offset: 1024)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!114, !861, !883, !883, !114}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4286, file: !70, line: 1933, baseType: !4349, size: 64, offset: 1088)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!114, !114, !861, !114}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4286, file: !70, line: 1934, baseType: !4353, size: 64, offset: 1152)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!114, !861, !114, !4356}
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !70, line: 1063, flags: DIFlagFwdDecl)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4286, file: !70, line: 1935, baseType: !858, size: 64, offset: 1216)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4286, file: !70, line: 1936, baseType: !4360, size: 64, offset: 1280)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!114, !114}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4286, file: !70, line: 1937, baseType: !4353, size: 64, offset: 1344)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4286, file: !70, line: 1938, baseType: !4365, size: 64, offset: 1408)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!1154, !4368, !861, !2042, !1157, !13}
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !529, line: 59, flags: DIFlagFwdDecl)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4286, file: !70, line: 1939, baseType: !4371, size: 64, offset: 1472)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!1154, !861, !2042, !4368, !1157, !13}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4286, file: !70, line: 1940, baseType: !1905, size: 64, offset: 1536)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4286, file: !70, line: 1941, baseType: !4376, size: 64, offset: 1600)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!114, !861, !114, !4379, !1771}
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4286, file: !70, line: 1942, baseType: !4381, size: 64, offset: 1664)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!1115, !861, !114, !883, !883}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4286, file: !70, line: 1944, baseType: !4385, size: 64, offset: 1728)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{null, !2018, !861}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4286, file: !70, line: 1948, baseType: !4389, size: 64, offset: 1792)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!1154, !861, !883, !861, !883, !1157, !13}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4286, file: !70, line: 1950, baseType: !4393, size: 64, offset: 1856)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!883, !861, !883, !861, !883, !883, !13}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4286, file: !70, line: 1953, baseType: !4345, size: 64, offset: 1920)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4286, file: !70, line: 1954, baseType: !4398, size: 64, offset: 1984)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!114, !4401, !13}
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !70, line: 1911, flags: DIFlagFwdDecl)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4286, file: !70, line: 1955, baseType: !4404, size: 64, offset: 2048)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!114, !4401, !2867, !13}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4281, file: !70, line: 723, baseType: !2479, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1001, file: !70, line: 725, baseType: !4409, size: 64, offset: 2816)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !70, line: 725, flags: DIFlagFwdDecl)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1001, file: !70, line: 726, baseType: !1364, size: 1536, align: 64, offset: 2880)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1001, file: !70, line: 727, baseType: !288, size: 128, offset: 4416)
!4413 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !70, line: 728, baseType: !4414, size: 64, offset: 4544)
!4414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !70, line: 728, size: 64, elements: !4415)
!4415 = !{!4416, !4417, !4420, !4421}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4414, file: !70, line: 729, baseType: !4368, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4414, file: !70, line: 730, baseType: !4418, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !70, line: 730, flags: DIFlagFwdDecl)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4414, file: !70, line: 731, baseType: !417, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4414, file: !70, line: 732, baseType: !13, size: 32)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1001, file: !70, line: 735, baseType: !361, size: 32, offset: 4608)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1001, file: !70, line: 738, baseType: !361, size: 32, offset: 4640)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1001, file: !70, line: 739, baseType: !4125, size: 64, offset: 4672)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1001, file: !70, line: 750, baseType: !207, size: 64, offset: 4736)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !966, file: !967, line: 91, baseType: !4427, size: 256, offset: 448)
!4427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 256, elements: !2762)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !966, file: !967, line: 94, baseType: !4429, size: 64, offset: 704)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4430, line: 25, size: 64, elements: !4431)
!4430 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4431 = !{!4432}
!4432 = !DIDerivedType(tag: DW_TAG_member, scope: !4429, file: !4430, line: 26, baseType: !4433, size: 64)
!4433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4429, file: !4430, line: 26, size: 64, elements: !4434)
!4434 = !{!4435, !4436}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4433, file: !4430, line: 28, baseType: !256, size: 64, align: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, scope: !4433, file: !4430, line: 30, baseType: !4437, size: 64)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4433, file: !4430, line: 30, size: 64, elements: !4438)
!4438 = !{!4439, !4440}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4437, file: !4430, line: 31, baseType: !843, size: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4437, file: !4430, line: 32, baseType: !114, size: 32, offset: 32)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !966, file: !967, line: 95, baseType: !4139, size: 64, offset: 768)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !966, file: !967, line: 96, baseType: !1212, size: 64, offset: 832)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !966, file: !967, line: 97, baseType: !298, size: 64, offset: 896)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !966, file: !967, line: 98, baseType: !207, size: 64, offset: 960)
!4445 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !967, line: 100, baseType: !4446, size: 128, offset: 1024)
!4446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !967, line: 100, size: 128, elements: !4447)
!4447 = !{!4448, !4449}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4446, file: !967, line: 101, baseType: !288, size: 128)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4446, file: !967, line: 102, baseType: !4450, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !966, file: !967, line: 104, baseType: !288, size: 128, offset: 1152)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !966, file: !967, line: 105, baseType: !288, size: 128, offset: 1280)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !966, file: !967, line: 113, baseType: !4454, size: 128, offset: 1408)
!4454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !967, line: 109, size: 128, elements: !4455)
!4455 = !{!4456, !4457, !4458}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4454, file: !967, line: 110, baseType: !478, size: 128)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4454, file: !967, line: 111, baseType: !976, size: 128)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4454, file: !967, line: 112, baseType: !394, size: 128, align: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !961, file: !962, line: 72, baseType: !1212, size: 64, offset: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !961, file: !962, line: 73, baseType: !114, size: 32, offset: 128)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !961, file: !962, line: 74, baseType: !1040, size: 64, offset: 192)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !956, file: !957, line: 10, baseType: !965, size: 64, offset: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !862, file: !70, line: 1015, baseType: !1000, size: 64, offset: 1344)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !862, file: !70, line: 1016, baseType: !4284, size: 64, offset: 1408)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !862, file: !70, line: 1018, baseType: !255, size: 64, offset: 1472)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !862, file: !70, line: 1020, baseType: !207, size: 64, offset: 1536)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !862, file: !70, line: 1023, baseType: !207, size: 64, offset: 1600)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !862, file: !70, line: 1027, baseType: !4469, size: 64, offset: 1664)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !862, file: !70, line: 1029, baseType: !1363, size: 64, offset: 1728)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !862, file: !70, line: 1030, baseType: !1915, size: 32, offset: 1792)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !862, file: !70, line: 1031, baseType: !1915, size: 32, offset: 1824)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !829, file: !41, line: 756, baseType: !298, size: 64, offset: 704)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !829, file: !41, line: 757, baseType: !298, size: 64, offset: 768)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !829, file: !41, line: 760, baseType: !298, size: 64, offset: 832)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !829, file: !41, line: 761, baseType: !298, size: 64, offset: 896)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !829, file: !41, line: 763, baseType: !298, size: 64, offset: 960)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !829, file: !41, line: 764, baseType: !4479, size: 64, offset: 1024)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1518, line: 299, baseType: !4481)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1518, line: 299, size: 64, elements: !4482)
!4482 = !{!4483}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4481, file: !1518, line: 299, baseType: !4484, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1523, line: 18, baseType: !298)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !829, file: !41, line: 773, baseType: !275, size: 32, offset: 1088)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !829, file: !41, line: 785, baseType: !275, size: 32, offset: 1120)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !829, file: !41, line: 795, baseType: !4488, size: 64, offset: 1152)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !41, line: 726, size: 128, elements: !4490)
!4490 = !{!4491, !4492}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4489, file: !41, line: 727, baseType: !255, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4489, file: !41, line: 728, baseType: !114, size: 32, offset: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !829, file: !41, line: 801, baseType: !298, size: 64, offset: 1216)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !829, file: !41, line: 804, baseType: !214, size: 64, offset: 1280)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !829, file: !41, line: 806, baseType: !114, size: 32, offset: 1344)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !829, file: !41, line: 808, baseType: !843, size: 32, offset: 1376)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !829, file: !41, line: 823, baseType: !303, size: 320, offset: 1408)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !829, file: !41, line: 825, baseType: !288, size: 128, offset: 1728)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !829, file: !41, line: 845, baseType: !114, size: 32, offset: 1856)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !829, file: !41, line: 849, baseType: !298, size: 64, offset: 1920)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !829, file: !41, line: 850, baseType: !298, size: 64, offset: 1984)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !829, file: !41, line: 852, baseType: !298, size: 64, offset: 2048)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !829, file: !41, line: 853, baseType: !298, size: 64, offset: 2112)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !829, file: !41, line: 854, baseType: !216, size: 64, offset: 2176)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !829, file: !41, line: 855, baseType: !298, size: 64, offset: 2240)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !829, file: !41, line: 856, baseType: !298, size: 64, offset: 2304)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !829, file: !41, line: 857, baseType: !298, size: 64, offset: 2368)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !829, file: !41, line: 858, baseType: !298, size: 64, offset: 2432)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !829, file: !41, line: 865, baseType: !699, size: 32, offset: 2496)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !829, file: !41, line: 867, baseType: !843, size: 32, offset: 2528)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !829, file: !41, line: 869, baseType: !298, size: 64, offset: 2560)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !829, file: !41, line: 869, baseType: !298, size: 64, offset: 2624)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !829, file: !41, line: 869, baseType: !298, size: 64, offset: 2688)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !829, file: !41, line: 869, baseType: !298, size: 64, offset: 2752)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !829, file: !41, line: 870, baseType: !298, size: 64, offset: 2816)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !829, file: !41, line: 870, baseType: !298, size: 64, offset: 2880)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !829, file: !41, line: 870, baseType: !298, size: 64, offset: 2944)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !829, file: !41, line: 871, baseType: !298, size: 64, offset: 3008)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !829, file: !41, line: 871, baseType: !298, size: 64, offset: 3072)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !829, file: !41, line: 871, baseType: !298, size: 64, offset: 3136)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !829, file: !41, line: 871, baseType: !298, size: 64, offset: 3200)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !829, file: !41, line: 873, baseType: !4523, size: 3328, offset: 3264)
!4523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 3328, elements: !4524)
!4524 = !{!4525}
!4525 = !DISubrange(count: 52)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !829, file: !41, line: 875, baseType: !4527, size: 1280, offset: 6592)
!4527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 1280, elements: !427)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !829, file: !41, line: 877, baseType: !4529, size: 64, offset: 7872)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !41, line: 877, flags: DIFlagFwdDecl)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !829, file: !41, line: 880, baseType: !4532, size: 1088, offset: 7936)
!4532 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4533, line: 72, baseType: !4534)
!4533 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4533, line: 23, size: 1088, elements: !4535)
!4535 = !{!4536, !4537, !4538, !4539, !4540, !4543, !4544, !4545, !4546, !4571, !4572, !4573}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4534, file: !4533, line: 28, baseType: !255, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4534, file: !4533, line: 38, baseType: !216, size: 64, offset: 64)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4534, file: !4533, line: 40, baseType: !298, size: 64, offset: 128)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4534, file: !4533, line: 43, baseType: !303, size: 320, offset: 192)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4534, file: !4533, line: 44, baseType: !4541, size: 64, offset: 512)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4533, line: 44, flags: DIFlagFwdDecl)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4534, file: !4533, line: 48, baseType: !298, size: 64, offset: 576)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4534, file: !4533, line: 59, baseType: !875, size: 256, offset: 640)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4534, file: !4533, line: 60, baseType: !207, size: 64, offset: 896)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4534, file: !4533, line: 61, baseType: !4547, size: 64, offset: 960)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4549)
!4549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4550, line: 13, size: 1216, elements: !4551)
!4550 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4551 = !{!4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4549, file: !4550, line: 14, baseType: !207, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4549, file: !4550, line: 15, baseType: !298, size: 64, offset: 64)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4549, file: !4550, line: 17, baseType: !298, size: 64, offset: 128)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4549, file: !4550, line: 17, baseType: !298, size: 64, offset: 192)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4549, file: !4550, line: 18, baseType: !298, size: 64, offset: 256)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4549, file: !4550, line: 18, baseType: !298, size: 64, offset: 320)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4549, file: !4550, line: 19, baseType: !1954, size: 64, offset: 384)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4549, file: !4550, line: 21, baseType: !1115, size: 64, offset: 448)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4549, file: !4550, line: 23, baseType: !1115, size: 64, offset: 512)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4549, file: !4550, line: 24, baseType: !1115, size: 64, offset: 576)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4549, file: !4550, line: 25, baseType: !1115, size: 64, offset: 640)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4549, file: !4550, line: 26, baseType: !1115, size: 64, offset: 704)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4549, file: !4550, line: 27, baseType: !1115, size: 64, offset: 768)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4549, file: !4550, line: 28, baseType: !1115, size: 64, offset: 832)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4549, file: !4550, line: 29, baseType: !1115, size: 64, offset: 896)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4549, file: !4550, line: 30, baseType: !1115, size: 64, offset: 960)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4549, file: !4550, line: 31, baseType: !1115, size: 64, offset: 1024)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4549, file: !4550, line: 32, baseType: !1115, size: 64, offset: 1088)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4549, file: !4550, line: 33, baseType: !1115, size: 64, offset: 1152)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4534, file: !4533, line: 63, baseType: !275, size: 32, offset: 1024)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4534, file: !4533, line: 69, baseType: !338, size: 16, offset: 1056)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4534, file: !4533, line: 70, baseType: !2243, size: 16, offset: 1072)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !829, file: !41, line: 882, baseType: !298, size: 64, offset: 9024)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !829, file: !41, line: 885, baseType: !843, size: 32, offset: 9088)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !829, file: !41, line: 886, baseType: !4577, size: 64, offset: 9152)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !41, line: 732, flags: DIFlagFwdDecl)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !829, file: !41, line: 901, baseType: !498, size: 64, offset: 9216)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !829, file: !41, line: 904, baseType: !861, size: 64, offset: 9280)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !829, file: !41, line: 906, baseType: !4582, size: 64, offset: 9344)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !41, line: 906, flags: DIFlagFwdDecl)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !829, file: !41, line: 930, baseType: !275, size: 32, offset: 9408)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !829, file: !41, line: 933, baseType: !275, size: 32, offset: 9440)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !829, file: !41, line: 935, baseType: !4587, size: 64, offset: 9472)
!4587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !177, line: 103, size: 64, elements: !4588)
!4588 = !{!4589}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4587, file: !177, line: 104, baseType: !4590, size: 64)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !177, line: 101, flags: DIFlagFwdDecl)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !829, file: !41, line: 940, baseType: !214, size: 64, offset: 9536)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !829, file: !41, line: 942, baseType: !2350, size: 256, offset: 9600)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !826, file: !41, line: 986, baseType: !4595, offset: 10240)
!4595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, elements: !512)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !528, file: !529, line: 882, baseType: !825, size: 64, offset: 9792)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !528, file: !529, line: 884, baseType: !114, size: 32, offset: 9856)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !528, file: !529, line: 885, baseType: !114, size: 32, offset: 9888)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !528, file: !529, line: 886, baseType: !114, size: 32, offset: 9920)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !528, file: !529, line: 888, baseType: !114, size: 32, offset: 9952)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !528, file: !529, line: 890, baseType: !298, size: 64, offset: 9984)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !528, file: !529, line: 893, baseType: !13, size: 32, offset: 10048)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !528, file: !529, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !528, file: !529, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !528, file: !529, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !528, file: !529, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !528, file: !529, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !528, file: !529, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !528, file: !529, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !528, file: !529, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !528, file: !529, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !528, file: !529, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !528, file: !529, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !528, file: !529, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !528, file: !529, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !528, file: !529, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !528, file: !529, line: 969, baseType: !298, size: 64, offset: 10176)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !528, file: !529, line: 971, baseType: !4619, size: 448, offset: 10240)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !171, line: 25, size: 448, elements: !4620)
!4620 = !{!4621, !4622, !4627}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4619, file: !171, line: 26, baseType: !298, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4619, file: !171, line: 27, baseType: !4623, size: 64, offset: 64)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!1115, !4626}
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4627 = !DIDerivedType(tag: DW_TAG_member, scope: !4619, file: !171, line: 28, baseType: !4628, size: 320, offset: 128)
!4628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4619, file: !171, line: 28, size: 320, elements: !4629)
!4629 = !{!4630, !4640, !4665}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4628, file: !171, line: 37, baseType: !4631, size: 320)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4628, file: !171, line: 30, size: 320, elements: !4632)
!4632 = !{!4633, !4635, !4636, !4637, !4638, !4639}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4631, file: !171, line: 31, baseType: !4634, size: 64)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4631, file: !171, line: 32, baseType: !360, size: 32, offset: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4631, file: !171, line: 33, baseType: !360, size: 32, offset: 96)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4631, file: !171, line: 34, baseType: !360, size: 32, offset: 128)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4631, file: !171, line: 35, baseType: !255, size: 64, offset: 192)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4631, file: !171, line: 36, baseType: !4634, size: 64, offset: 256)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4628, file: !171, line: 47, baseType: !4641, size: 192)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4628, file: !171, line: 39, size: 192, elements: !4642)
!4642 = !{!4643, !4644, !4645, !4664}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4641, file: !171, line: 40, baseType: !691, size: 32)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4641, file: !171, line: 41, baseType: !170, size: 32, offset: 32)
!4645 = !DIDerivedType(tag: DW_TAG_member, scope: !4641, file: !171, line: 42, baseType: !4646, size: 64, offset: 64)
!4646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4641, file: !171, line: 42, size: 64, elements: !4647)
!4647 = !{!4648, !4656}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4646, file: !171, line: 43, baseType: !4649, size: 64)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4651, line: 7, size: 128, elements: !4652)
!4651 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4652 = !{!4653, !4655}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4650, file: !4651, line: 8, baseType: !4654, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !234, line: 93, baseType: !225)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4650, file: !4651, line: 9, baseType: !225, size: 64, offset: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4646, file: !171, line: 44, baseType: !4657, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4659, line: 7, size: 64, elements: !4660)
!4659 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4660 = !{!4661, !4663}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4658, file: !4659, line: 8, baseType: !4662, size: 32)
!4662 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4659, line: 5, baseType: !282)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4658, file: !4659, line: 9, baseType: !282, size: 32, offset: 32)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4641, file: !171, line: 46, baseType: !255, size: 64, offset: 128)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4628, file: !171, line: 55, baseType: !4666, size: 256)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4628, file: !171, line: 49, size: 256, elements: !4667)
!4667 = !{!4668, !4671, !4672, !4673, !4674}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4666, file: !171, line: 50, baseType: !4669, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !171, line: 14, flags: DIFlagFwdDecl)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4666, file: !171, line: 51, baseType: !114, size: 32, offset: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4666, file: !171, line: 52, baseType: !114, size: 32, offset: 96)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4666, file: !171, line: 53, baseType: !298, size: 64, offset: 128)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4666, file: !171, line: 54, baseType: !298, size: 64, offset: 192)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !528, file: !529, line: 973, baseType: !4676, size: 32, offset: 10688)
!4676 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !217, line: 27, baseType: !4677)
!4677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !234, line: 28, baseType: !114)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !528, file: !529, line: 974, baseType: !4676, size: 32, offset: 10720)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !528, file: !529, line: 978, baseType: !298, size: 64, offset: 10752)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !528, file: !529, line: 987, baseType: !527, size: 64, offset: 10816)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !528, file: !529, line: 990, baseType: !527, size: 64, offset: 10880)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !528, file: !529, line: 995, baseType: !288, size: 128, offset: 10944)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !528, file: !529, line: 996, baseType: !288, size: 128, offset: 11072)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !528, file: !529, line: 997, baseType: !527, size: 64, offset: 11200)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !528, file: !529, line: 1005, baseType: !288, size: 128, offset: 11264)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !528, file: !529, line: 1006, baseType: !288, size: 128, offset: 11392)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !528, file: !529, line: 1009, baseType: !913, size: 64, offset: 11520)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !528, file: !529, line: 1010, baseType: !4689, size: 512, offset: 11584)
!4689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 512, elements: !427)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !528, file: !529, line: 1011, baseType: !288, size: 128, offset: 12096)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !528, file: !529, line: 1012, baseType: !288, size: 128, offset: 12224)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !528, file: !529, line: 1014, baseType: !2099, size: 64, offset: 12352)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !528, file: !529, line: 1017, baseType: !2236, size: 64, offset: 12416)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !528, file: !529, line: 1020, baseType: !2236, size: 64, offset: 12480)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !528, file: !529, line: 1023, baseType: !207, size: 64, offset: 12544)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !528, file: !529, line: 1025, baseType: !255, size: 64, offset: 12608)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !528, file: !529, line: 1026, baseType: !255, size: 64, offset: 12672)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !528, file: !529, line: 1031, baseType: !255, size: 64, offset: 12736)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !528, file: !529, line: 1032, baseType: !4700, size: 192, offset: 12800)
!4700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !529, line: 324, size: 192, elements: !4701)
!4701 = !{!4702, !4703, !4704}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4700, file: !529, line: 326, baseType: !255, size: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4700, file: !529, line: 327, baseType: !255, size: 64, offset: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4700, file: !529, line: 328, baseType: !314, size: 32, offset: 128)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !528, file: !529, line: 1041, baseType: !298, size: 64, offset: 12992)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !528, file: !529, line: 1042, baseType: !298, size: 64, offset: 13056)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !528, file: !529, line: 1045, baseType: !255, size: 64, offset: 13120)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !528, file: !529, line: 1048, baseType: !255, size: 64, offset: 13184)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !528, file: !529, line: 1051, baseType: !298, size: 64, offset: 13248)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !528, file: !529, line: 1052, baseType: !298, size: 64, offset: 13312)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !528, file: !529, line: 1055, baseType: !4712, size: 640, offset: 13376)
!4712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4713, line: 132, size: 640, elements: !4714)
!4713 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4714 = !{!4715, !4721, !4722}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4712, file: !4713, line: 133, baseType: !4716, size: 576)
!4716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4717, size: 576, elements: !909)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4713, line: 117, size: 192, elements: !4718)
!4718 = !{!4719, !4720}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4717, file: !4713, line: 118, baseType: !255, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4717, file: !4713, line: 119, baseType: !705, size: 128, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4712, file: !4713, line: 134, baseType: !13, size: 32, offset: 576)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4712, file: !4713, line: 135, baseType: !13, size: 32, offset: 608)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !528, file: !529, line: 1058, baseType: !4724, size: 448, offset: 14016)
!4724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4713, line: 144, size: 448, elements: !4725)
!4725 = !{!4726, !4727, !4728}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4724, file: !4713, line: 145, baseType: !394, size: 128, align: 64)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4724, file: !4713, line: 146, baseType: !875, size: 256, offset: 128)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4724, file: !4713, line: 147, baseType: !13, size: 32, offset: 384)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !528, file: !529, line: 1064, baseType: !208, size: 64, offset: 14464)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !528, file: !529, line: 1067, baseType: !208, size: 64, offset: 14528)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !528, file: !529, line: 1070, baseType: !208, size: 64, offset: 14592)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !528, file: !529, line: 1074, baseType: !265, size: 64, offset: 14656)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !528, file: !529, line: 1084, baseType: !3, size: 128, offset: 14720)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !528, file: !529, line: 1086, baseType: !4735, size: 64, offset: 14848)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !529, line: 55, flags: DIFlagFwdDecl)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !528, file: !529, line: 1089, baseType: !4738, size: 64, offset: 14912)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4739, line: 12, size: 64, elements: !4740)
!4739 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4740 = !{!4741}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4738, file: !4739, line: 13, baseType: !4742, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4739, line: 8, flags: DIFlagFwdDecl)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !528, file: !529, line: 1090, baseType: !4745, size: 128, offset: 14976)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4746, line: 13, size: 128, elements: !4747)
!4746 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4747 = !{!4748}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4745, file: !4746, line: 14, baseType: !288, size: 128)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !528, file: !529, line: 1097, baseType: !4750, size: 64, offset: 15104)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !529, line: 50, flags: DIFlagFwdDecl)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !528, file: !529, line: 1100, baseType: !4753, size: 64, offset: 15168)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !529, line: 1100, flags: DIFlagFwdDecl)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !528, file: !529, line: 1103, baseType: !4756, size: 64, offset: 15232)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !529, line: 53, flags: DIFlagFwdDecl)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !528, file: !529, line: 1107, baseType: !4759, size: 64, offset: 15296)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4761, line: 35, flags: DIFlagFwdDecl)
!4761 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !528, file: !529, line: 1110, baseType: !4763, size: 64, offset: 15360)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4765, line: 93, size: 8768, elements: !4766)
!4765 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4766 = !{!4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4814, !4823, !4824, !4826, !4827, !4828, !4831, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4869, !4870, !4877, !4887, !4890, !4891, !4894, !4895, !4896, !4897, !4898, !4899}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4764, file: !4765, line: 94, baseType: !270, size: 32)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4764, file: !4765, line: 95, baseType: !275, size: 32, offset: 32)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4764, file: !4765, line: 96, baseType: !114, size: 32, offset: 64)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4764, file: !4765, line: 97, baseType: !114, size: 32, offset: 96)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4764, file: !4765, line: 98, baseType: !288, size: 128, offset: 128)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4764, file: !4765, line: 100, baseType: !926, size: 192, offset: 256)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4764, file: !4765, line: 103, baseType: !527, size: 64, offset: 448)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4764, file: !4765, line: 106, baseType: !4775, size: 192, offset: 512)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !503, line: 32, size: 192, elements: !4776)
!4776 = !{!4777, !4778}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4775, file: !503, line: 33, baseType: !288, size: 128)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4775, file: !503, line: 34, baseType: !4779, size: 64, offset: 128)
!4779 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4780, line: 25, baseType: !4781)
!4780 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4780, line: 23, size: 64, elements: !4782)
!4782 = !{!4783}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4781, file: !4780, line: 24, baseType: !776, size: 64)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4764, file: !4765, line: 109, baseType: !921, size: 64, offset: 704)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4764, file: !4765, line: 112, baseType: !114, size: 32, offset: 768)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4764, file: !4765, line: 114, baseType: !114, size: 32, offset: 800)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4764, file: !4765, line: 115, baseType: !527, size: 64, offset: 832)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4764, file: !4765, line: 118, baseType: !114, size: 32, offset: 896)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4764, file: !4765, line: 119, baseType: !13, size: 32, offset: 928)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4764, file: !4765, line: 121, baseType: !4791, size: 64, offset: 960)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4765, line: 80, size: 448, elements: !4793)
!4793 = !{!4794, !4795, !4801}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4792, file: !4765, line: 81, baseType: !275, size: 32)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4792, file: !4765, line: 82, baseType: !4796, size: 128, offset: 64)
!4796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4765, line: 75, size: 128, elements: !4797)
!4797 = !{!4798, !4799}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4796, file: !4765, line: 76, baseType: !527, size: 64)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4796, file: !4765, line: 77, baseType: !4800, size: 64, offset: 64)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4792, file: !4765, line: 83, baseType: !1468, size: 256, offset: 192)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4764, file: !4765, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4764, file: !4765, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4764, file: !4765, line: 138, baseType: !13, size: 32, offset: 1056)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4764, file: !4765, line: 139, baseType: !288, size: 128, offset: 1088)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4764, file: !4765, line: 142, baseType: !644, size: 512, offset: 1216)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4764, file: !4765, line: 143, baseType: !652, size: 64, offset: 1728)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4764, file: !4765, line: 150, baseType: !4809, size: 256, offset: 1792)
!4809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4810, size: 256, elements: !2226)
!4810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4765, line: 38, size: 128, elements: !4811)
!4811 = !{!4812, !4813}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4810, file: !4765, line: 39, baseType: !255, size: 64)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4810, file: !4765, line: 40, baseType: !255, size: 64, offset: 64)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4764, file: !4765, line: 156, baseType: !4815, size: 192, offset: 2048)
!4815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4765, line: 66, size: 192, elements: !4816)
!4816 = !{!4817}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4815, file: !4765, line: 67, baseType: !4818, size: 192)
!4818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4765, line: 47, size: 192, elements: !4819)
!4819 = !{!4820, !4821, !4822}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4818, file: !4765, line: 48, baseType: !216, size: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4818, file: !4765, line: 49, baseType: !216, size: 64, offset: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4818, file: !4765, line: 50, baseType: !216, size: 64, offset: 128)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4764, file: !4765, line: 160, baseType: !4712, size: 640, offset: 2240)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4764, file: !4765, line: 163, baseType: !4825, size: 256, offset: 2880)
!4825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !913, size: 256, elements: !427)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4764, file: !4765, line: 169, baseType: !913, size: 64, offset: 3136)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4764, file: !4765, line: 172, baseType: !114, size: 32, offset: 3200)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4764, file: !4765, line: 174, baseType: !4829, size: 64, offset: 3264)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4765, line: 174, flags: DIFlagFwdDecl)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4764, file: !4765, line: 185, baseType: !4832, size: 64, offset: 3328)
!4832 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !695, line: 860, baseType: !4833)
!4833 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !695, line: 853, size: 64, elements: !4834)
!4834 = !{!4835, !4836}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4833, file: !695, line: 858, baseType: !971, size: 32)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4833, file: !695, line: 859, baseType: !843, size: 32, offset: 32)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4764, file: !4765, line: 186, baseType: !255, size: 64, offset: 3392)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4764, file: !4765, line: 186, baseType: !255, size: 64, offset: 3456)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4764, file: !4765, line: 186, baseType: !255, size: 64, offset: 3520)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4764, file: !4765, line: 186, baseType: !255, size: 64, offset: 3584)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4764, file: !4765, line: 187, baseType: !255, size: 64, offset: 3648)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4764, file: !4765, line: 188, baseType: !255, size: 64, offset: 3712)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4764, file: !4765, line: 189, baseType: !4700, size: 192, offset: 3776)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4764, file: !4765, line: 190, baseType: !298, size: 64, offset: 3968)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4764, file: !4765, line: 190, baseType: !298, size: 64, offset: 4032)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4764, file: !4765, line: 190, baseType: !298, size: 64, offset: 4096)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4764, file: !4765, line: 190, baseType: !298, size: 64, offset: 4160)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4764, file: !4765, line: 191, baseType: !298, size: 64, offset: 4224)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4764, file: !4765, line: 191, baseType: !298, size: 64, offset: 4288)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4764, file: !4765, line: 191, baseType: !298, size: 64, offset: 4352)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4764, file: !4765, line: 191, baseType: !298, size: 64, offset: 4416)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4764, file: !4765, line: 192, baseType: !298, size: 64, offset: 4480)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4764, file: !4765, line: 192, baseType: !298, size: 64, offset: 4544)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4764, file: !4765, line: 192, baseType: !298, size: 64, offset: 4608)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4764, file: !4765, line: 192, baseType: !298, size: 64, offset: 4672)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4764, file: !4765, line: 193, baseType: !298, size: 64, offset: 4736)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4764, file: !4765, line: 193, baseType: !298, size: 64, offset: 4800)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4764, file: !4765, line: 194, baseType: !4859, size: 448, offset: 4864)
!4859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4860, line: 12, size: 448, elements: !4861)
!4860 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4861 = !{!4862, !4863, !4864, !4865, !4866, !4867, !4868}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4859, file: !4860, line: 15, baseType: !255, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4859, file: !4860, line: 17, baseType: !255, size: 64, offset: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4859, file: !4860, line: 19, baseType: !255, size: 64, offset: 128)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4859, file: !4860, line: 21, baseType: !255, size: 64, offset: 192)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4859, file: !4860, line: 29, baseType: !255, size: 64, offset: 256)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4859, file: !4860, line: 35, baseType: !255, size: 64, offset: 320)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4859, file: !4860, line: 44, baseType: !255, size: 64, offset: 384)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4764, file: !4765, line: 202, baseType: !257, size: 64, offset: 5312)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4764, file: !4765, line: 213, baseType: !4871, size: 2048, offset: 5376)
!4871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4872, size: 2048, elements: !5)
!4872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4873, line: 43, size: 128, elements: !4874)
!4873 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4874 = !{!4875, !4876}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4872, file: !4873, line: 44, baseType: !1159, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4872, file: !4873, line: 45, baseType: !1159, size: 64, offset: 64)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4764, file: !4765, line: 216, baseType: !4878, size: 448, offset: 7424)
!4878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4765, line: 30, size: 448, elements: !4879)
!4879 = !{!4880, !4881, !4882, !4883, !4884, !4885, !4886}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4878, file: !4765, line: 31, baseType: !114, size: 32)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4878, file: !4765, line: 32, baseType: !1115, size: 64, offset: 64)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4878, file: !4765, line: 33, baseType: !298, size: 64, offset: 128)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4878, file: !4765, line: 34, baseType: !255, size: 64, offset: 192)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4878, file: !4765, line: 34, baseType: !255, size: 64, offset: 256)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4878, file: !4765, line: 35, baseType: !298, size: 64, offset: 320)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4878, file: !4765, line: 35, baseType: !298, size: 64, offset: 384)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4764, file: !4765, line: 219, baseType: !4888, size: 64, offset: 7872)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4765, line: 219, flags: DIFlagFwdDecl)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4764, file: !4765, line: 222, baseType: !13, size: 32, offset: 7936)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4764, file: !4765, line: 223, baseType: !4892, size: 64, offset: 8000)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4765, line: 223, flags: DIFlagFwdDecl)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4764, file: !4765, line: 230, baseType: !404, size: 8, offset: 8064)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4764, file: !4765, line: 231, baseType: !365, size: 16, offset: 8080)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4764, file: !4765, line: 232, baseType: !365, size: 16, offset: 8096)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4764, file: !4765, line: 234, baseType: !825, size: 64, offset: 8128)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4764, file: !4765, line: 237, baseType: !875, size: 256, offset: 8192)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4764, file: !4765, line: 243, baseType: !303, size: 320, offset: 8448)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !528, file: !529, line: 1111, baseType: !4901, size: 64, offset: 15424)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4765, line: 20, size: 16640, elements: !4903)
!4903 = !{!4904, !4905, !4906, !4907}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4902, file: !4765, line: 21, baseType: !843, size: 32)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4902, file: !4765, line: 22, baseType: !270, size: 32, offset: 32)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4902, file: !4765, line: 23, baseType: !926, size: 192, offset: 64)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4902, file: !4765, line: 24, baseType: !4908, size: 16384, offset: 256)
!4908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4909, size: 16384, elements: !1302)
!4909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !503, line: 51, size: 256, elements: !4910)
!4910 = !{!4911}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4909, file: !503, line: 52, baseType: !4912, size: 256)
!4912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !503, line: 37, size: 256, elements: !4913)
!4913 = !{!4914, !4921, !4922, !4926}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4912, file: !503, line: 39, baseType: !4915, size: 64)
!4915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4916, line: 83, baseType: !4917)
!4916 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4916, line: 82, baseType: !4919)
!4919 = !DISubroutineType(types: !4920)
!4920 = !{null, !114}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4912, file: !503, line: 40, baseType: !298, size: 64, offset: 64)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4912, file: !503, line: 46, baseType: !4923, size: 64, offset: 128)
!4923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4916, line: 86, baseType: !4924)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4916, line: 85, baseType: !2454)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4912, file: !503, line: 48, baseType: !4779, size: 64, offset: 192)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !528, file: !529, line: 1112, baseType: !4779, size: 64, offset: 15488)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !528, file: !529, line: 1113, baseType: !4779, size: 64, offset: 15552)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !528, file: !529, line: 1115, baseType: !4779, size: 64, offset: 15616)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !528, file: !529, line: 1116, baseType: !4775, size: 192, offset: 15680)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !528, file: !529, line: 1117, baseType: !298, size: 64, offset: 15872)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !528, file: !529, line: 1118, baseType: !1157, size: 64, offset: 15936)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !528, file: !529, line: 1119, baseType: !13, size: 32, offset: 16000)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !528, file: !529, line: 1121, baseType: !397, size: 64, offset: 16064)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !528, file: !529, line: 1125, baseType: !4936, size: 64, offset: 16128)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !529, line: 43, flags: DIFlagFwdDecl)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !528, file: !529, line: 1127, baseType: !227, size: 32, offset: 16192)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !528, file: !529, line: 1128, baseType: !13, size: 32, offset: 16224)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !528, file: !529, line: 1130, baseType: !4941, size: 128, offset: 16256)
!4941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4942, line: 37, size: 128, elements: !4943)
!4942 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4943 = !{!4944, !4945, !4946}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4941, file: !4942, line: 38, baseType: !114, size: 32)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4941, file: !4942, line: 39, baseType: !275, size: 32, offset: 32)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4941, file: !4942, line: 40, baseType: !4947, size: 64, offset: 64)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4942, line: 24, flags: DIFlagFwdDecl)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !528, file: !529, line: 1131, baseType: !4950, size: 256, offset: 16384)
!4950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4951, line: 12, size: 256, elements: !4952)
!4951 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4952 = !{!4953, !4954, !4955, !4956}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4950, file: !4951, line: 13, baseType: !417, size: 64)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4950, file: !4951, line: 14, baseType: !298, size: 64, offset: 64)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4950, file: !4951, line: 15, baseType: !298, size: 64, offset: 128)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4950, file: !4951, line: 16, baseType: !404, size: 8, offset: 192)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !528, file: !529, line: 1134, baseType: !255, size: 64, offset: 16640)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !528, file: !529, line: 1135, baseType: !255, size: 64, offset: 16704)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !528, file: !529, line: 1138, baseType: !843, size: 32, offset: 16768)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !528, file: !529, line: 1141, baseType: !314, size: 32, offset: 16800)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !528, file: !529, line: 1143, baseType: !4962, size: 64, offset: 16832)
!4962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !529, line: 735, size: 64, elements: !4963)
!4963 = !{!4964}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4962, file: !529, line: 736, baseType: !4965, size: 64)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !528, file: !529, line: 1147, baseType: !708, size: 128, offset: 16896)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !528, file: !529, line: 1149, baseType: !527, size: 64, offset: 17024)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !528, file: !529, line: 1151, baseType: !4969, size: 64, offset: 17088)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !529, line: 1151, flags: DIFlagFwdDecl)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !528, file: !529, line: 1188, baseType: !207, size: 64, offset: 17152)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !528, file: !529, line: 1191, baseType: !4973, size: 64, offset: 17216)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !528, file: !529, line: 1194, baseType: !4975, size: 64, offset: 17280)
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !147, line: 976, size: 320, elements: !4977)
!4977 = !{!4978, !4979, !4980, !4981, !4982, !4983, !4984}
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !4976, file: !147, line: 977, baseType: !2871, size: 64)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !4976, file: !147, line: 980, baseType: !2871, size: 64, offset: 64)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !4976, file: !147, line: 981, baseType: !340, size: 16, offset: 128)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !4976, file: !147, line: 983, baseType: !340, size: 16, offset: 144)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !4976, file: !147, line: 985, baseType: !404, size: 8, offset: 160)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !4976, file: !147, line: 986, baseType: !404, size: 8, offset: 168)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4976, file: !147, line: 988, baseType: !288, size: 128, offset: 192)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !528, file: !529, line: 1197, baseType: !4986, size: 64, offset: 17344)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !529, line: 61, flags: DIFlagFwdDecl)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !528, file: !529, line: 1199, baseType: !3119, size: 64, offset: 17408)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !528, file: !529, line: 1202, baseType: !4990, size: 64, offset: 17472)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !529, line: 48, flags: DIFlagFwdDecl)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !528, file: !529, line: 1205, baseType: !298, size: 64, offset: 17536)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !528, file: !529, line: 1206, baseType: !4994, size: 64, offset: 17600)
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!4995 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !503, line: 14, baseType: !4996)
!4996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !503, line: 12, size: 384, elements: !4997)
!4997 = !{!4998}
!4998 = !DIDerivedType(tag: DW_TAG_member, scope: !4996, file: !503, line: 13, baseType: !4999, size: 384)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4996, file: !503, line: 13, size: 384, elements: !5000)
!5000 = !{!5001, !5002, !5003, !5004}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4999, file: !503, line: 13, baseType: !114, size: 32)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4999, file: !503, line: 13, baseType: !114, size: 32, offset: 32)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4999, file: !503, line: 13, baseType: !114, size: 32, offset: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4999, file: !503, line: 13, baseType: !5005, size: 256, offset: 128)
!5005 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5006, line: 37, size: 256, elements: !5007)
!5006 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5007 = !{!5008, !5013, !5026, !5032, !5041, !5068, !5073}
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5005, file: !5006, line: 42, baseType: !5009, size: 64)
!5009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5005, file: !5006, line: 39, size: 64, elements: !5010)
!5010 = !{!5011, !5012}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5009, file: !5006, line: 40, baseType: !4677, size: 32)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5009, file: !5006, line: 41, baseType: !233, size: 32, offset: 32)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5005, file: !5006, line: 50, baseType: !5014, size: 192)
!5014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5005, file: !5006, line: 45, size: 192, elements: !5015)
!5015 = !{!5016, !5018, !5019, !5025}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5014, file: !5006, line: 46, baseType: !5017, size: 32)
!5017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !234, line: 95, baseType: !114)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5014, file: !5006, line: 47, baseType: !114, size: 32, offset: 32)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5014, file: !5006, line: 48, baseType: !5020, size: 64, offset: 64)
!5020 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5006, line: 11, baseType: !5021)
!5021 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5006, line: 8, size: 64, elements: !5022)
!5022 = !{!5023, !5024}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5021, file: !5006, line: 9, baseType: !114, size: 32)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5021, file: !5006, line: 10, baseType: !207, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5014, file: !5006, line: 49, baseType: !114, size: 32, offset: 128)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5005, file: !5006, line: 57, baseType: !5027, size: 128)
!5027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5005, file: !5006, line: 53, size: 128, elements: !5028)
!5028 = !{!5029, !5030, !5031}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5027, file: !5006, line: 54, baseType: !4677, size: 32)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5027, file: !5006, line: 55, baseType: !233, size: 32, offset: 32)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5027, file: !5006, line: 56, baseType: !5020, size: 64, offset: 64)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5005, file: !5006, line: 66, baseType: !5033, size: 256)
!5033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5005, file: !5006, line: 60, size: 256, elements: !5034)
!5034 = !{!5035, !5036, !5037, !5038, !5040}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5033, file: !5006, line: 61, baseType: !4677, size: 32)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5033, file: !5006, line: 62, baseType: !233, size: 32, offset: 32)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5033, file: !5006, line: 63, baseType: !114, size: 32, offset: 64)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5033, file: !5006, line: 64, baseType: !5039, size: 64, offset: 128)
!5039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !234, line: 94, baseType: !1156)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5033, file: !5006, line: 65, baseType: !5039, size: 64, offset: 192)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5005, file: !5006, line: 105, baseType: !5042, size: 256)
!5042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5005, file: !5006, line: 69, size: 256, elements: !5043)
!5043 = !{!5044, !5045}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5042, file: !5006, line: 70, baseType: !207, size: 64)
!5045 = !DIDerivedType(tag: DW_TAG_member, scope: !5042, file: !5006, line: 79, baseType: !5046, size: 192, offset: 64)
!5046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5042, file: !5006, line: 79, size: 192, elements: !5047)
!5047 = !{!5048, !5049, !5050, !5057, !5062}
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5046, file: !5006, line: 81, baseType: !114, size: 32)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5046, file: !5006, line: 86, baseType: !365, size: 16)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5046, file: !5006, line: 92, baseType: !5051, size: 192)
!5051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5046, file: !5006, line: 88, size: 192, elements: !5052)
!5052 = !{!5053, !5055, !5056}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5051, file: !5006, line: 89, baseType: !5054, size: 64)
!5054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !687)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5051, file: !5006, line: 90, baseType: !207, size: 64, offset: 64)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5051, file: !5006, line: 91, baseType: !207, size: 64, offset: 128)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5046, file: !5006, line: 97, baseType: !5058, size: 96)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5046, file: !5006, line: 94, size: 96, elements: !5059)
!5059 = !{!5060, !5061}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5058, file: !5006, line: 95, baseType: !5054, size: 64)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5058, file: !5006, line: 96, baseType: !361, size: 32, offset: 64)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5046, file: !5006, line: 103, baseType: !5063, size: 128)
!5063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5046, file: !5006, line: 99, size: 128, elements: !5064)
!5064 = !{!5065, !5066, !5067}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5063, file: !5006, line: 100, baseType: !298, size: 64)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5063, file: !5006, line: 101, baseType: !361, size: 32, offset: 64)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5063, file: !5006, line: 102, baseType: !361, size: 32, offset: 96)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5005, file: !5006, line: 111, baseType: !5069, size: 128)
!5069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5005, file: !5006, line: 108, size: 128, elements: !5070)
!5070 = !{!5071, !5072}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5069, file: !5006, line: 109, baseType: !1115, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5069, file: !5006, line: 110, baseType: !114, size: 32, offset: 64)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5005, file: !5006, line: 118, baseType: !5074, size: 128)
!5074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5005, file: !5006, line: 114, size: 128, elements: !5075)
!5075 = !{!5076, !5077, !5078}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5074, file: !5006, line: 115, baseType: !207, size: 64)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5074, file: !5006, line: 116, baseType: !114, size: 32, offset: 64)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5074, file: !5006, line: 117, baseType: !13, size: 32, offset: 96)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !528, file: !529, line: 1208, baseType: !4859, size: 448, offset: 17664)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !528, file: !529, line: 1215, baseType: !255, size: 64, offset: 18112)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !528, file: !529, line: 1217, baseType: !255, size: 64, offset: 18176)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !528, file: !529, line: 1219, baseType: !255, size: 64, offset: 18240)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !528, file: !529, line: 1223, baseType: !5084, size: 64, offset: 18304)
!5084 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5085, line: 99, baseType: !5086)
!5085 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5086 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5085, line: 99, size: 64, elements: !5087)
!5087 = !{!5088}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5086, file: !5085, line: 99, baseType: !776, size: 64)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !528, file: !529, line: 1225, baseType: !971, size: 32, offset: 18368)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !528, file: !529, line: 1226, baseType: !114, size: 32, offset: 18400)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !528, file: !529, line: 1227, baseType: !114, size: 32, offset: 18432)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !528, file: !529, line: 1231, baseType: !5093, size: 64, offset: 18496)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !529, line: 1231, flags: DIFlagFwdDecl)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !528, file: !529, line: 1233, baseType: !288, size: 128, offset: 18560)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !528, file: !529, line: 1240, baseType: !5097, size: 64, offset: 18688)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !529, line: 62, flags: DIFlagFwdDecl)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !528, file: !529, line: 1242, baseType: !5100, size: 64, offset: 18752)
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !529, line: 1242, flags: DIFlagFwdDecl)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !528, file: !529, line: 1244, baseType: !288, size: 128, offset: 18816)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !528, file: !529, line: 1245, baseType: !5104, size: 64, offset: 18944)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !529, line: 51, flags: DIFlagFwdDecl)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !528, file: !529, line: 1246, baseType: !875, size: 256, offset: 19008)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !528, file: !529, line: 1247, baseType: !13, size: 32, offset: 19264)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !528, file: !529, line: 1250, baseType: !5109, size: 64, offset: 19328)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !529, line: 57, flags: DIFlagFwdDecl)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !528, file: !529, line: 1251, baseType: !875, size: 256, offset: 19392)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !528, file: !529, line: 1252, baseType: !288, size: 128, offset: 19648)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !528, file: !529, line: 1259, baseType: !1596, size: 64, offset: 19776)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !528, file: !529, line: 1260, baseType: !365, size: 16, offset: 19840)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !528, file: !529, line: 1261, baseType: !365, size: 16, offset: 19856)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !528, file: !529, line: 1314, baseType: !5117, size: 64, offset: 19904)
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5119, line: 62, size: 256, align: 256, elements: !5120)
!5119 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5120 = !{!5121, !5122, !5123, !5124, !5125, !5126, !5127}
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5118, file: !5119, line: 75, baseType: !361, size: 32)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5118, file: !5119, line: 90, baseType: !361, size: 32, offset: 32)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5118, file: !5119, line: 112, baseType: !256, size: 64, offset: 64)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5118, file: !5119, line: 132, baseType: !361, size: 32, offset: 128)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5118, file: !5119, line: 140, baseType: !361, size: 32, offset: 160)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5118, file: !5119, line: 149, baseType: !361, size: 32, offset: 192)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5118, file: !5119, line: 154, baseType: !5128, offset: 224)
!5128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !512)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !528, file: !529, line: 1315, baseType: !360, size: 32, offset: 19968)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !528, file: !529, line: 1316, baseType: !360, size: 32, offset: 20000)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !528, file: !529, line: 1321, baseType: !298, size: 64, offset: 20032)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !528, file: !529, line: 1325, baseType: !114, size: 32, offset: 20096)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !528, file: !529, line: 1326, baseType: !114, size: 32, offset: 20128)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !528, file: !529, line: 1327, baseType: !114, size: 32, offset: 20160)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !528, file: !529, line: 1328, baseType: !114, size: 32, offset: 20192)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !528, file: !529, line: 1329, baseType: !394, size: 128, align: 64, offset: 20224)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !528, file: !529, line: 1332, baseType: !5138, size: 128, offset: 20352)
!5138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5139, line: 51, size: 128, elements: !5140)
!5139 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5140 = !{!5141, !5146, !5147}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5138, file: !5139, line: 60, baseType: !5142, size: 64)
!5142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5143, line: 7, size: 64, elements: !5144)
!5143 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5144 = !{!5145}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5142, file: !5143, line: 12, baseType: !773, size: 64)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5138, file: !5139, line: 63, baseType: !404, size: 8, offset: 64)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5138, file: !5139, line: 70, baseType: !404, size: 8, offset: 72)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !528, file: !529, line: 1335, baseType: !4368, size: 64, offset: 20480)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !528, file: !529, line: 1337, baseType: !5150, size: 128, offset: 20544)
!5150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5139, line: 39, size: 128, elements: !5151)
!5151 = !{!5152, !5153, !5154}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5150, file: !5139, line: 40, baseType: !1383, size: 64)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5150, file: !5139, line: 42, baseType: !361, size: 32, offset: 64)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5150, file: !5139, line: 43, baseType: !361, size: 32, offset: 96)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !528, file: !529, line: 1340, baseType: !5156, size: 64, offset: 20672)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !529, line: 69, flags: DIFlagFwdDecl)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !528, file: !529, line: 1351, baseType: !114, size: 32, offset: 20736)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !528, file: !529, line: 1352, baseType: !114, size: 32, offset: 20768)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !528, file: !529, line: 1354, baseType: !298, size: 64, offset: 20800)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !528, file: !529, line: 1364, baseType: !255, size: 64, offset: 20864)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !528, file: !529, line: 1365, baseType: !255, size: 64, offset: 20928)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !528, file: !529, line: 1412, baseType: !298, size: 64, offset: 20992)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !528, file: !529, line: 1453, baseType: !2754, size: 64, offset: 21056)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !528, file: !529, line: 1457, baseType: !5166, size: 64, offset: 21120)
!5166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5167, size: 64)
!5167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !177, line: 61, size: 576, elements: !5168)
!5168 = !{!5169, !5170, !5189, !5192, !5193, !5226, !5236}
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5167, file: !177, line: 62, baseType: !176, size: 32)
!5170 = !DIDerivedType(tag: DW_TAG_member, scope: !5167, file: !177, line: 64, baseType: !5171, size: 192, offset: 64)
!5171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5167, file: !177, line: 64, size: 192, elements: !5172)
!5172 = !{!5173, !5184}
!5173 = !DIDerivedType(tag: DW_TAG_member, scope: !5171, file: !177, line: 65, baseType: !5174, size: 192)
!5174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5171, file: !177, line: 65, size: 192, elements: !5175)
!5175 = !{!5176, !5183}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5174, file: !177, line: 66, baseType: !5177, size: 128)
!5177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5178, line: 50, size: 128, elements: !5179)
!5178 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5179 = !{!5180, !5181, !5182}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5177, file: !5178, line: 52, baseType: !298, size: 64)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5177, file: !5178, line: 54, baseType: !13, size: 32, offset: 64)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5177, file: !5178, line: 55, baseType: !13, size: 32, offset: 96)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5174, file: !177, line: 67, baseType: !298, size: 64, offset: 128)
!5184 = !DIDerivedType(tag: DW_TAG_member, scope: !5171, file: !177, line: 70, baseType: !5185, size: 192)
!5185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5171, file: !177, line: 70, size: 192, elements: !5186)
!5186 = !{!5187, !5188}
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5185, file: !177, line: 71, baseType: !394, size: 128, align: 64)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5185, file: !177, line: 72, baseType: !298, size: 64, offset: 128)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5167, file: !177, line: 76, baseType: !5190, size: 64, offset: 256)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !177, line: 76, flags: DIFlagFwdDecl)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5167, file: !177, line: 77, baseType: !298, size: 64, offset: 320)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5167, file: !177, line: 79, baseType: !5194, size: 64, offset: 384)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5178, line: 25, size: 256, elements: !5196)
!5196 = !{!5197, !5203, !5207}
!5197 = !DIDerivedType(tag: DW_TAG_member, scope: !5195, file: !5178, line: 26, baseType: !5198, size: 128)
!5198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5195, file: !5178, line: 26, size: 128, elements: !5199)
!5199 = !{!5200, !5202}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5198, file: !5178, line: 27, baseType: !5201, size: 128)
!5201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 128, elements: !5)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5198, file: !5178, line: 28, baseType: !5201, size: 128)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5195, file: !5178, line: 31, baseType: !5204, size: 64, offset: 128)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5206)
!5206 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5178, line: 23, flags: DIFlagFwdDecl)
!5207 = !DIDerivedType(tag: DW_TAG_member, scope: !5195, file: !5178, line: 33, baseType: !5208, size: 64, offset: 192)
!5208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5195, file: !5178, line: 33, size: 64, elements: !5209)
!5209 = !{!5210, !5216, !5221}
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5208, file: !5178, line: 38, baseType: !5211, size: 64)
!5211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5208, file: !5178, line: 34, size: 64, elements: !5212)
!5212 = !{!5213, !5214, !5215}
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5211, file: !5178, line: 35, baseType: !282, size: 32)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5211, file: !5178, line: 36, baseType: !331, size: 8, offset: 32)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5211, file: !5178, line: 37, baseType: !331, size: 8, offset: 40)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5208, file: !5178, line: 42, baseType: !5217, size: 16)
!5217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5208, file: !5178, line: 39, size: 16, elements: !5218)
!5218 = !{!5219, !5220}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5217, file: !5178, line: 40, baseType: !331, size: 8)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5217, file: !5178, line: 41, baseType: !331, size: 8, offset: 8)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5208, file: !5178, line: 46, baseType: !5222, size: 16)
!5222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5208, file: !5178, line: 43, size: 16, elements: !5223)
!5223 = !{!5224, !5225}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5222, file: !5178, line: 44, baseType: !331, size: 8)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5222, file: !5178, line: 45, baseType: !331, size: 8, offset: 8)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5167, file: !177, line: 81, baseType: !5227, size: 64, offset: 448)
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5228, size: 64)
!5228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !177, line: 85, size: 384, elements: !5229)
!5229 = !{!5230, !5231, !5232, !5233, !5234, !5235}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5228, file: !177, line: 86, baseType: !5190, size: 64)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5228, file: !177, line: 87, baseType: !298, size: 64, offset: 64)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5228, file: !177, line: 88, baseType: !298, size: 64, offset: 128)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5228, file: !177, line: 89, baseType: !298, size: 64, offset: 192)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5228, file: !177, line: 90, baseType: !404, size: 8, offset: 256)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5228, file: !177, line: 92, baseType: !5227, size: 64, offset: 320)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5167, file: !177, line: 82, baseType: !13, size: 32, offset: 512)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !528, file: !529, line: 1463, baseType: !5238, offset: 21184)
!5238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !529, line: 739, elements: !854)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !528, file: !529, line: 1470, baseType: !394, size: 128, align: 64, offset: 21184)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !528, file: !529, line: 1471, baseType: !270, size: 32, offset: 21312)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !528, file: !529, line: 1472, baseType: !114, size: 32, offset: 21344)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !528, file: !529, line: 1474, baseType: !527, size: 64, offset: 21376)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !528, file: !529, line: 1475, baseType: !2338, size: 320, offset: 21440)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !528, file: !529, line: 1478, baseType: !5245, size: 64, offset: 21760)
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5246, size: 64)
!5246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !5247, line: 49, size: 512, elements: !5248)
!5247 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!5248 = !{!5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5258}
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5246, file: !5247, line: 50, baseType: !5245, size: 64)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5246, file: !5247, line: 51, baseType: !207, size: 64, offset: 64)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5246, file: !5247, line: 52, baseType: !298, size: 64, offset: 128)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5246, file: !5247, line: 53, baseType: !298, size: 64, offset: 192)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5246, file: !5247, line: 54, baseType: !1770, size: 64, offset: 256)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !5246, file: !5247, line: 56, baseType: !13, size: 32, offset: 320)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !5246, file: !5247, line: 58, baseType: !13, size: 32, offset: 352)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5246, file: !5247, line: 59, baseType: !5257, size: 64, offset: 384)
!5257 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !217, line: 159, baseType: !255)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !5246, file: !5247, line: 60, baseType: !1954, size: 64, offset: 448)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !528, file: !529, line: 1482, baseType: !270, size: 32, offset: 21824)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !528, file: !529, line: 1489, baseType: !207, size: 64, offset: 21888)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !528, file: !529, line: 1504, baseType: !207, size: 64, offset: 21952)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !528, file: !529, line: 1505, baseType: !256, size: 64, offset: 22016)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !528, file: !529, line: 1506, baseType: !255, size: 64, offset: 22080)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !528, file: !529, line: 1507, baseType: !256, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !528, file: !529, line: 1508, baseType: !256, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !528, file: !529, line: 1509, baseType: !256, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !528, file: !529, line: 1510, baseType: !394, size: 128, align: 64, offset: 22208)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !528, file: !529, line: 1511, baseType: !114, size: 32, offset: 22336)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !528, file: !529, line: 1515, baseType: !5270, size: 64, offset: 22400)
!5270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !551, line: 56, size: 64, elements: !5271)
!5271 = !{!5272}
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5270, file: !551, line: 57, baseType: !554, size: 64)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !528, file: !529, line: 1518, baseType: !5270, size: 64, offset: 22464)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !528, file: !529, line: 1528, baseType: !394, size: 128, align: 64, offset: 22528)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !528, file: !529, line: 1552, baseType: !5276, size: 35328, offset: 23040)
!5276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5277, line: 430, size: 35328, elements: !5278)
!5277 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5278 = !{!5279, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5308, !5309, !5310, !5311, !5312, !5313, !5316, !5317, !5318, !5319}
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5276, file: !5277, line: 432, baseType: !5280, size: 192)
!5280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5281, size: 192, elements: !909)
!5281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5282, line: 16, size: 64, elements: !5283)
!5282 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5283 = !{!5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5281, file: !5282, line: 17, baseType: !338, size: 16)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5281, file: !5282, line: 18, baseType: !338, size: 16, offset: 16)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5281, file: !5282, line: 19, baseType: !338, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5281, file: !5282, line: 19, baseType: !338, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5281, file: !5282, line: 19, baseType: !338, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5281, file: !5282, line: 19, baseType: !338, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5281, file: !5282, line: 19, baseType: !338, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5281, file: !5282, line: 20, baseType: !338, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5281, file: !5282, line: 20, baseType: !338, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5281, file: !5282, line: 20, baseType: !338, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5281, file: !5282, line: 20, baseType: !338, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5281, file: !5282, line: 20, baseType: !338, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5281, file: !5282, line: 20, baseType: !338, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5276, file: !5277, line: 436, baseType: !298, size: 64, offset: 192)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5276, file: !5277, line: 440, baseType: !340, size: 16, offset: 256)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5276, file: !5277, line: 441, baseType: !340, size: 16, offset: 272)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5276, file: !5277, line: 442, baseType: !340, size: 16, offset: 288)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5276, file: !5277, line: 443, baseType: !340, size: 16, offset: 304)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5276, file: !5277, line: 447, baseType: !298, size: 64, offset: 320)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5276, file: !5277, line: 448, baseType: !298, size: 64, offset: 384)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5276, file: !5277, line: 459, baseType: !5305, size: 256, offset: 448)
!5305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5306, size: 256, elements: !427)
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5307 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !5277, line: 428, flags: DIFlagFwdDecl)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5276, file: !5277, line: 461, baseType: !298, size: 64, offset: 704)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5276, file: !5277, line: 463, baseType: !298, size: 64, offset: 768)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5276, file: !5277, line: 465, baseType: !298, size: 64, offset: 832)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5276, file: !5277, line: 466, baseType: !298, size: 64, offset: 896)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5276, file: !5277, line: 467, baseType: !298, size: 64, offset: 960)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5276, file: !5277, line: 473, baseType: !5314, size: 64, offset: 1024)
!5314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5315, size: 64)
!5315 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5277, line: 10, flags: DIFlagFwdDecl)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5276, file: !5277, line: 480, baseType: !298, size: 64, offset: 1088)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5276, file: !5277, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5276, file: !5277, line: 491, baseType: !360, size: 32, offset: 1184)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5276, file: !5277, line: 501, baseType: !5320, size: 33792, offset: 1536)
!5320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5321, line: 448, size: 33792, elements: !5322)
!5321 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5322 = !{!5323, !5324, !5325, !5487, !5488, !5494, !5495}
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5320, file: !5321, line: 461, baseType: !13, size: 32)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5320, file: !5321, line: 468, baseType: !298, size: 64, offset: 64)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5320, file: !5321, line: 476, baseType: !5326, size: 64, offset: 128)
!5326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5327, size: 64)
!5327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5321, line: 356, size: 33280, align: 512, elements: !5328)
!5328 = !{!5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338}
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5327, file: !5321, line: 358, baseType: !13, size: 32)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5327, file: !5321, line: 361, baseType: !13, size: 32, offset: 32)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5327, file: !5321, line: 364, baseType: !255, size: 64, offset: 64)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5327, file: !5321, line: 367, baseType: !255, size: 64, offset: 128)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5327, file: !5321, line: 370, baseType: !255, size: 64, offset: 192)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5327, file: !5321, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5327, file: !5321, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5327, file: !5321, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5327, file: !5321, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5327, file: !5321, line: 397, baseType: !5339, size: 32768, offset: 512)
!5339 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5321, line: 348, size: 32768, elements: !5340)
!5340 = !{!5341, !5356, !5393, !5470, !5483}
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5339, file: !5321, line: 349, baseType: !5342, size: 896)
!5342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5321, line: 12, size: 896, elements: !5343)
!5343 = !{!5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5355}
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5342, file: !5321, line: 13, baseType: !360, size: 32)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5342, file: !5321, line: 14, baseType: !360, size: 32, offset: 32)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5342, file: !5321, line: 15, baseType: !360, size: 32, offset: 64)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5342, file: !5321, line: 16, baseType: !360, size: 32, offset: 96)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5342, file: !5321, line: 17, baseType: !360, size: 32, offset: 128)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5342, file: !5321, line: 18, baseType: !360, size: 32, offset: 160)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5342, file: !5321, line: 19, baseType: !360, size: 32, offset: 192)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5342, file: !5321, line: 22, baseType: !5352, size: 640, offset: 224)
!5352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 640, elements: !5353)
!5353 = !{!5354}
!5354 = !DISubrange(count: 20)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5342, file: !5321, line: 25, baseType: !360, size: 32, offset: 864)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5339, file: !5321, line: 350, baseType: !5357, size: 4096, align: 128)
!5357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5321, line: 34, size: 4096, align: 128, elements: !5358)
!5358 = !{!5359, !5360, !5361, !5362, !5363, !5378, !5379, !5380, !5382, !5384, !5388}
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5357, file: !5321, line: 35, baseType: !338, size: 16)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5357, file: !5321, line: 36, baseType: !338, size: 16, offset: 16)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5357, file: !5321, line: 37, baseType: !338, size: 16, offset: 32)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5357, file: !5321, line: 38, baseType: !338, size: 16, offset: 48)
!5363 = !DIDerivedType(tag: DW_TAG_member, scope: !5357, file: !5321, line: 39, baseType: !5364, size: 128, offset: 64)
!5364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5357, file: !5321, line: 39, size: 128, elements: !5365)
!5365 = !{!5366, !5371}
!5366 = !DIDerivedType(tag: DW_TAG_member, scope: !5364, file: !5321, line: 40, baseType: !5367, size: 128)
!5367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5364, file: !5321, line: 40, size: 128, elements: !5368)
!5368 = !{!5369, !5370}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5367, file: !5321, line: 41, baseType: !255, size: 64)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5367, file: !5321, line: 42, baseType: !255, size: 64, offset: 64)
!5371 = !DIDerivedType(tag: DW_TAG_member, scope: !5364, file: !5321, line: 44, baseType: !5372, size: 128)
!5372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5364, file: !5321, line: 44, size: 128, elements: !5373)
!5373 = !{!5374, !5375, !5376, !5377}
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5372, file: !5321, line: 45, baseType: !360, size: 32)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5372, file: !5321, line: 46, baseType: !360, size: 32, offset: 32)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5372, file: !5321, line: 47, baseType: !360, size: 32, offset: 64)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5372, file: !5321, line: 48, baseType: !360, size: 32, offset: 96)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5357, file: !5321, line: 51, baseType: !360, size: 32, offset: 192)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5357, file: !5321, line: 52, baseType: !360, size: 32, offset: 224)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5357, file: !5321, line: 55, baseType: !5381, size: 1024, offset: 256)
!5381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 1024, elements: !2762)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5357, file: !5321, line: 58, baseType: !5383, size: 2048, offset: 1280)
!5383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 2048, elements: !1302)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5357, file: !5321, line: 60, baseType: !5385, size: 384, offset: 3328)
!5385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 384, elements: !5386)
!5386 = !{!5387}
!5387 = !DISubrange(count: 12)
!5388 = !DIDerivedType(tag: DW_TAG_member, scope: !5357, file: !5321, line: 62, baseType: !5389, size: 384, offset: 3712)
!5389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5357, file: !5321, line: 62, size: 384, elements: !5390)
!5390 = !{!5391, !5392}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5389, file: !5321, line: 63, baseType: !5385, size: 384)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5389, file: !5321, line: 64, baseType: !5385, size: 384)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5339, file: !5321, line: 351, baseType: !5394, size: 1088)
!5394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5321, line: 79, size: 1088, elements: !5395)
!5395 = !{!5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405, !5406, !5407, !5408, !5409, !5410, !5469}
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5394, file: !5321, line: 80, baseType: !360, size: 32)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5394, file: !5321, line: 81, baseType: !360, size: 32, offset: 32)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5394, file: !5321, line: 82, baseType: !360, size: 32, offset: 64)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5394, file: !5321, line: 83, baseType: !360, size: 32, offset: 96)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5394, file: !5321, line: 84, baseType: !360, size: 32, offset: 128)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5394, file: !5321, line: 85, baseType: !360, size: 32, offset: 160)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5394, file: !5321, line: 86, baseType: !360, size: 32, offset: 192)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5394, file: !5321, line: 88, baseType: !5352, size: 640, offset: 224)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5394, file: !5321, line: 89, baseType: !331, size: 8, offset: 864)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5394, file: !5321, line: 90, baseType: !331, size: 8, offset: 872)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5394, file: !5321, line: 91, baseType: !331, size: 8, offset: 880)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5394, file: !5321, line: 92, baseType: !331, size: 8, offset: 888)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5394, file: !5321, line: 93, baseType: !331, size: 8, offset: 896)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5394, file: !5321, line: 94, baseType: !331, size: 8, offset: 904)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5394, file: !5321, line: 95, baseType: !5411, size: 64, offset: 960)
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5413, line: 11, size: 128, elements: !5414)
!5413 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5414 = !{!5415, !5416}
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5412, file: !5413, line: 12, baseType: !1115, size: 64)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5412, file: !5413, line: 13, baseType: !5417, size: 64, offset: 64)
!5417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5418, size: 64)
!5418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5419, line: 103, size: 1344, elements: !5420)
!5419 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5420 = !{!5421, !5422, !5423, !5424, !5425, !5426, !5427, !5428, !5429, !5430, !5431, !5432, !5433, !5434, !5435, !5436, !5437, !5438, !5449, !5450, !5451}
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5418, file: !5419, line: 109, baseType: !298, size: 64)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5418, file: !5419, line: 110, baseType: !298, size: 64, offset: 64)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5418, file: !5419, line: 111, baseType: !298, size: 64, offset: 128)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5418, file: !5419, line: 112, baseType: !298, size: 64, offset: 192)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5418, file: !5419, line: 113, baseType: !298, size: 64, offset: 256)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5418, file: !5419, line: 114, baseType: !298, size: 64, offset: 320)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5418, file: !5419, line: 117, baseType: !298, size: 64, offset: 384)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5418, file: !5419, line: 118, baseType: !298, size: 64, offset: 448)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5418, file: !5419, line: 119, baseType: !298, size: 64, offset: 512)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5418, file: !5419, line: 120, baseType: !298, size: 64, offset: 576)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5418, file: !5419, line: 121, baseType: !298, size: 64, offset: 640)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5418, file: !5419, line: 122, baseType: !298, size: 64, offset: 704)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5418, file: !5419, line: 123, baseType: !298, size: 64, offset: 768)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5418, file: !5419, line: 124, baseType: !298, size: 64, offset: 832)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5418, file: !5419, line: 125, baseType: !298, size: 64, offset: 896)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5418, file: !5419, line: 139, baseType: !298, size: 64, offset: 960)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5418, file: !5419, line: 142, baseType: !298, size: 64, offset: 1024)
!5438 = !DIDerivedType(tag: DW_TAG_member, scope: !5418, file: !5419, line: 144, baseType: !5439, size: 64, offset: 1088)
!5439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5418, file: !5419, line: 144, size: 64, elements: !5440)
!5440 = !{!5441, !5442, !5443}
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5439, file: !5419, line: 146, baseType: !338, size: 16)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5439, file: !5419, line: 148, baseType: !255, size: 64)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5439, file: !5419, line: 150, baseType: !5444, size: 64)
!5444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5419, line: 59, size: 64, elements: !5445)
!5445 = !{!5446, !5447, !5448}
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5444, file: !5419, line: 61, baseType: !255, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5444, file: !5419, line: 63, baseType: !255, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5444, file: !5419, line: 65, baseType: !255, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5418, file: !5419, line: 153, baseType: !298, size: 64, offset: 1152)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5418, file: !5419, line: 154, baseType: !298, size: 64, offset: 1216)
!5451 = !DIDerivedType(tag: DW_TAG_member, scope: !5418, file: !5419, line: 156, baseType: !5452, size: 64, offset: 1280)
!5452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5418, file: !5419, line: 156, size: 64, elements: !5453)
!5453 = !{!5454, !5455, !5456}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5452, file: !5419, line: 158, baseType: !338, size: 16)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5452, file: !5419, line: 160, baseType: !255, size: 64)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5452, file: !5419, line: 162, baseType: !5457, size: 64)
!5457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5419, line: 69, size: 64, elements: !5458)
!5458 = !{!5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468}
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5457, file: !5419, line: 71, baseType: !255, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5457, file: !5419, line: 73, baseType: !255, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5457, file: !5419, line: 75, baseType: !255, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5457, file: !5419, line: 77, baseType: !255, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5457, file: !5419, line: 80, baseType: !255, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5457, file: !5419, line: 83, baseType: !255, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5457, file: !5419, line: 86, baseType: !255, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5457, file: !5419, line: 88, baseType: !255, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5457, file: !5419, line: 93, baseType: !255, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5457, file: !5419, line: 100, baseType: !255, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5394, file: !5321, line: 96, baseType: !360, size: 32, offset: 1024)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5339, file: !5321, line: 352, baseType: !5471, size: 4608, align: 512)
!5471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5321, line: 333, size: 4608, align: 512, elements: !5472)
!5472 = !{!5473, !5474, !5481}
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5471, file: !5321, line: 334, baseType: !5357, size: 4096, align: 128)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5471, file: !5321, line: 335, baseType: !5475, size: 512, offset: 4096)
!5475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5321, line: 312, size: 512, elements: !5476)
!5476 = !{!5477, !5478, !5479}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5475, file: !5321, line: 313, baseType: !255, size: 64)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5475, file: !5321, line: 314, baseType: !255, size: 64, offset: 64)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5475, file: !5321, line: 315, baseType: !5480, size: 384, offset: 128)
!5480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 384, elements: !383)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5471, file: !5321, line: 336, baseType: !5482, offset: 4608)
!5482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, elements: !512)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5339, file: !5321, line: 353, baseType: !5484, size: 32768)
!5484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 32768, elements: !5485)
!5485 = !{!5486}
!5486 = !DISubrange(count: 4096)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5320, file: !5321, line: 484, baseType: !5326, size: 64, offset: 192)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5320, file: !5321, line: 491, baseType: !5489, size: 128, offset: 256)
!5489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5321, line: 404, size: 128, elements: !5490)
!5490 = !{!5491, !5492, !5493}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5489, file: !5321, line: 424, baseType: !255, size: 64)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5489, file: !5321, line: 432, baseType: !13, size: 32, offset: 64)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5489, file: !5321, line: 440, baseType: !13, size: 32, offset: 96)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5320, file: !5321, line: 498, baseType: !5489, size: 128, offset: 384)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5320, file: !5321, line: 508, baseType: !5327, size: 33280, align: 512, offset: 512)
!5496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5497, size: 64)
!5497 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !221)
!5498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5499, size: 64)
!5499 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !114)
!5500 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !217, line: 155, baseType: !13)
!5501 = !{!0, !5502, !5504, !5506, !7, !5508}
!5502 = !DIGlobalVariableExpression(var: !5503, expr: !DIExpression())
!5503 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_put_io_context353", scope: !9, file: !2, line: 211, type: !207, isLocal: true, isDefinition: true)
!5504 = !DIGlobalVariableExpression(var: !5505, expr: !DIExpression())
!5505 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_set_task_ioprio356", scope: !9, file: !2, line: 294, type: !207, isLocal: true, isDefinition: true)
!5506 = !DIGlobalVariableExpression(var: !5507, expr: !DIExpression())
!5507 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_blk_ioc__357_453_blk_ioc_init4358", scope: !9, file: !2, line: 453, type: !207, isLocal: true, isDefinition: true)
!5508 = !DIGlobalVariableExpression(var: !5509, expr: !DIExpression())
!5509 = distinct !DIGlobalVariable(scope: null, file: !2, line: 449, type: !5510, isLocal: true, isDefinition: true)
!5510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !5511)
!5511 = !{!5512}
!5512 = !DISubrange(count: 11)
!5513 = !{i32 7, !"Dwarf Version", i32 5}
!5514 = !{i32 2, !"Debug Info Version", i32 3}
!5515 = !{i32 1, !"wchar_size", i32 2}
!5516 = !{i32 8, !"cf-protection-branch", i32 1}
!5517 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5518 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5519 = !{i32 1, !"Code Model", i32 2}
!5520 = !{i32 1, !"override-stack-alignment", i32 8}
!5521 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5522 = distinct !DISubprogram(name: "put_io_context", scope: !2, file: !2, line: 205, type: !5523, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5525)
!5523 = !DISubroutineType(types: !5524)
!5524 = !{null, !3119}
!5525 = !{!5526}
!5526 = !DILocalVariable(name: "ioc", arg: 1, scope: !5522, file: !2, line: 205, type: !3119)
!5527 = !DILocation(line: 205, column: 40, scope: !5522)
!5528 = !DILocation(line: 207, column: 2, scope: !5522)
!5529 = !DILocation(line: 207, column: 2, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5531, file: !2, line: 207, column: 2)
!5531 = distinct !DILexicalBlock(scope: !5522, file: !2, line: 207, column: 2)
!5532 = !DILocation(line: 207, column: 2, scope: !5531)
!5533 = !DILocation(line: 207, column: 2, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5530, file: !2, line: 207, column: 2)
!5535 = !DILocation(line: 207, column: 2, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5534, file: !2, line: 207, column: 2)
!5537 = !DILocation(line: 207, column: 2, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5534, file: !2, line: 207, column: 2)
!5539 = !{i64 2156180648, i64 2156180677, i64 2156180723, i64 2156180781, i64 2156180835, i64 2156180889, i64 2156180944, i64 2156180975}
!5540 = !DILocation(line: 208, column: 32, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5522, file: !2, line: 208, column: 6)
!5542 = !DILocation(line: 208, column: 37, scope: !5541)
!5543 = !DILocation(line: 208, column: 6, scope: !5541)
!5544 = !DILocation(line: 208, column: 47, scope: !5541)
!5545 = !DILocation(line: 208, column: 66, scope: !5541)
!5546 = !DILocation(line: 208, column: 51, scope: !5541)
!5547 = !DILocation(line: 208, column: 6, scope: !5522)
!5548 = !DILocation(line: 209, column: 19, scope: !5541)
!5549 = !DILocation(line: 209, column: 37, scope: !5541)
!5550 = !DILocation(line: 209, column: 3, scope: !5541)
!5551 = !DILocation(line: 210, column: 1, scope: !5522)
!5552 = distinct !DISubprogram(name: "atomic_long_read", scope: !5553, file: !5553, line: 3158, type: !5554, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5558)
!5553 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5554 = !DISubroutineType(types: !5555)
!5555 = !{!1115, !5556}
!5556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5557, size: 64)
!5557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!5558 = !{!5559}
!5559 = !DILocalVariable(name: "v", arg: 1, scope: !5552, file: !5553, line: 3158, type: !5556)
!5560 = !DILocation(line: 3158, column: 39, scope: !5552)
!5561 = !DILocation(line: 3160, column: 25, scope: !5552)
!5562 = !DILocation(line: 3160, column: 2, scope: !5552)
!5563 = !DILocation(line: 3161, column: 30, scope: !5552)
!5564 = !DILocation(line: 3161, column: 9, scope: !5552)
!5565 = !DILocation(line: 3161, column: 2, scope: !5552)
!5566 = distinct !DISubprogram(name: "atomic_long_dec_and_test", scope: !5553, file: !5553, line: 4500, type: !5567, scopeLine: 4501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5569)
!5567 = !DISubroutineType(types: !5568)
!5568 = !{!404, !4211}
!5569 = !{!5570}
!5570 = !DILocalVariable(name: "v", arg: 1, scope: !5566, file: !5553, line: 4500, type: !4211)
!5571 = !DILocation(line: 4500, column: 41, scope: !5566)
!5572 = !DILocation(line: 4502, column: 2, scope: !5566)
!5573 = !DILocation(line: 4502, column: 2, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5566, file: !5553, line: 4502, column: 2)
!5575 = !DILocation(line: 4503, column: 31, scope: !5566)
!5576 = !DILocation(line: 4503, column: 2, scope: !5566)
!5577 = !DILocation(line: 4504, column: 38, scope: !5566)
!5578 = !DILocation(line: 4504, column: 9, scope: !5566)
!5579 = !DILocation(line: 4504, column: 2, scope: !5566)
!5580 = distinct !DISubprogram(name: "ioc_delay_free", scope: !2, file: !2, line: 192, type: !5581, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5583)
!5581 = !DISubroutineType(types: !5582)
!5582 = !{!404, !3119}
!5583 = !{!5584}
!5584 = !DILocalVariable(name: "ioc", arg: 1, scope: !5580, file: !2, line: 192, type: !3119)
!5585 = !DILocation(line: 192, column: 54, scope: !5580)
!5586 = !DILocation(line: 194, column: 2, scope: !5580)
!5587 = !DISubprogram(name: "kmem_cache_free", scope: !5588, file: !5588, line: 503, type: !5589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5588 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!5589 = !DISubroutineType(types: !5590)
!5590 = !{null, !2823, !207}
!5591 = distinct !DISubprogram(name: "exit_io_context", scope: !2, file: !2, line: 214, type: !5592, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5594)
!5592 = !DISubroutineType(types: !5593)
!5593 = !{null, !527}
!5594 = !{!5595, !5596}
!5595 = !DILocalVariable(name: "task", arg: 1, scope: !5591, file: !2, line: 214, type: !527)
!5596 = !DILocalVariable(name: "ioc", scope: !5591, file: !2, line: 216, type: !3119)
!5597 = !DILocation(line: 214, column: 42, scope: !5591)
!5598 = !DILocation(line: 216, column: 2, scope: !5591)
!5599 = !DILocation(line: 216, column: 21, scope: !5591)
!5600 = !DILocation(line: 218, column: 12, scope: !5591)
!5601 = !DILocation(line: 218, column: 2, scope: !5591)
!5602 = !DILocation(line: 219, column: 8, scope: !5591)
!5603 = !DILocation(line: 219, column: 14, scope: !5591)
!5604 = !DILocation(line: 219, column: 6, scope: !5591)
!5605 = !DILocation(line: 220, column: 2, scope: !5591)
!5606 = !DILocation(line: 220, column: 8, scope: !5591)
!5607 = !DILocation(line: 220, column: 19, scope: !5591)
!5608 = !DILocation(line: 221, column: 14, scope: !5591)
!5609 = !DILocation(line: 221, column: 2, scope: !5591)
!5610 = !DILocation(line: 223, column: 27, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5591, file: !2, line: 223, column: 6)
!5612 = !DILocation(line: 223, column: 32, scope: !5611)
!5613 = !DILocation(line: 223, column: 6, scope: !5611)
!5614 = !DILocation(line: 223, column: 6, scope: !5591)
!5615 = !DILocation(line: 224, column: 17, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5611, file: !2, line: 223, column: 45)
!5617 = !DILocation(line: 224, column: 3, scope: !5616)
!5618 = !DILocation(line: 225, column: 18, scope: !5616)
!5619 = !DILocation(line: 225, column: 3, scope: !5616)
!5620 = !DILocation(line: 226, column: 2, scope: !5616)
!5621 = !DILocation(line: 227, column: 1, scope: !5591)
!5622 = distinct !DISubprogram(name: "task_lock", scope: !5623, file: !5623, line: 220, type: !5592, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5624)
!5623 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!5624 = !{!5625}
!5625 = !DILocalVariable(name: "p", arg: 1, scope: !5622, file: !5623, line: 220, type: !527)
!5626 = !DILocation(line: 220, column: 50, scope: !5622)
!5627 = !DILocation(line: 222, column: 13, scope: !5622)
!5628 = !DILocation(line: 222, column: 16, scope: !5622)
!5629 = !DILocation(line: 222, column: 2, scope: !5622)
!5630 = !DILocation(line: 223, column: 1, scope: !5622)
!5631 = distinct !DISubprogram(name: "task_unlock", scope: !5623, file: !5623, line: 225, type: !5592, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5632)
!5632 = !{!5633}
!5633 = !DILocalVariable(name: "p", arg: 1, scope: !5631, file: !5623, line: 225, type: !527)
!5634 = !DILocation(line: 225, column: 52, scope: !5631)
!5635 = !DILocation(line: 227, column: 15, scope: !5631)
!5636 = !DILocation(line: 227, column: 18, scope: !5631)
!5637 = !DILocation(line: 227, column: 2, scope: !5631)
!5638 = !DILocation(line: 228, column: 1, scope: !5631)
!5639 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !5553, file: !5553, line: 1372, type: !5640, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5643)
!5640 = !DISubroutineType(types: !5641)
!5641 = !{!404, !5642}
!5642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!5643 = !{!5644}
!5644 = !DILocalVariable(name: "v", arg: 1, scope: !5639, file: !5553, line: 1372, type: !5642)
!5645 = !DILocation(line: 1372, column: 31, scope: !5639)
!5646 = !DILocation(line: 1374, column: 2, scope: !5639)
!5647 = !DILocation(line: 1374, column: 2, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5639, file: !5553, line: 1374, column: 2)
!5649 = !DILocation(line: 1375, column: 31, scope: !5639)
!5650 = !DILocation(line: 1375, column: 2, scope: !5639)
!5651 = !DILocation(line: 1376, column: 33, scope: !5639)
!5652 = !DILocation(line: 1376, column: 9, scope: !5639)
!5653 = !DILocation(line: 1376, column: 2, scope: !5639)
!5654 = distinct !DISubprogram(name: "ioc_exit_icqs", scope: !2, file: !2, line: 189, type: !5523, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5655)
!5655 = !{!5656}
!5656 = !DILocalVariable(name: "ioc", arg: 1, scope: !5654, file: !2, line: 189, type: !3119)
!5657 = !DILocation(line: 189, column: 53, scope: !5654)
!5658 = !DILocation(line: 191, column: 1, scope: !5654)
!5659 = distinct !DISubprogram(name: "set_task_ioprio", scope: !2, file: !2, line: 251, type: !5660, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5662)
!5660 = !DISubroutineType(types: !5661)
!5661 = !{!114, !527, !114}
!5662 = !{!5663, !5664, !5665, !5666, !5667, !5668, !5670, !5673}
!5663 = !DILocalVariable(name: "task", arg: 1, scope: !5659, file: !2, line: 251, type: !527)
!5664 = !DILocalVariable(name: "ioprio", arg: 2, scope: !5659, file: !2, line: 251, type: !114)
!5665 = !DILocalVariable(name: "err", scope: !5659, file: !2, line: 253, type: !114)
!5666 = !DILocalVariable(name: "cred", scope: !5659, file: !2, line: 254, type: !208)
!5667 = !DILocalVariable(name: "tcred", scope: !5659, file: !2, line: 254, type: !208)
!5668 = !DILocalVariable(name: "__UNIQUE_ID_rcu354", scope: !5669, file: !2, line: 257, type: !208)
!5669 = distinct !DILexicalBlock(scope: !5659, file: !2, line: 257, column: 10)
!5670 = !DILocalVariable(name: "ioc", scope: !5671, file: !2, line: 271, type: !3119)
!5671 = distinct !DILexicalBlock(scope: !5672, file: !2, line: 270, column: 35)
!5672 = distinct !DILexicalBlock(scope: !5659, file: !2, line: 270, column: 6)
!5673 = !DILabel(scope: !5659, name: "out", file: !2, line: 290)
!5674 = !DILocation(line: 251, column: 41, scope: !5659)
!5675 = !DILocation(line: 251, column: 51, scope: !5659)
!5676 = !DILocation(line: 253, column: 2, scope: !5659)
!5677 = !DILocation(line: 253, column: 6, scope: !5659)
!5678 = !DILocation(line: 254, column: 2, scope: !5659)
!5679 = !DILocation(line: 254, column: 21, scope: !5659)
!5680 = !DILocation(line: 254, column: 28, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5659, file: !2, line: 254, column: 28)
!5682 = !DILocation(line: 254, column: 28, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5681, file: !2, line: 254, column: 28)
!5684 = !DILocation(line: 254, column: 45, scope: !5659)
!5685 = !DILocation(line: 256, column: 2, scope: !5659)
!5686 = !DILocation(line: 257, column: 10, scope: !5669)
!5687 = !DILocation(line: 257, column: 10, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5669, file: !2, line: 257, column: 10)
!5689 = !DILocation(line: 257, column: 10, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5688, file: !2, line: 257, column: 10)
!5691 = !DILocation(line: 257, column: 10, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5669, file: !2, line: 257, column: 10)
!5693 = !DILocation(line: 257, column: 10, scope: !5659)
!5694 = !DILocation(line: 257, column: 8, scope: !5659)
!5695 = !DILocation(line: 258, column: 14, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5659, file: !2, line: 258, column: 6)
!5697 = !DILocation(line: 258, column: 21, scope: !5696)
!5698 = !DILocation(line: 258, column: 26, scope: !5696)
!5699 = !DILocation(line: 258, column: 32, scope: !5696)
!5700 = !DILocation(line: 258, column: 7, scope: !5696)
!5701 = !DILocation(line: 258, column: 38, scope: !5696)
!5702 = !DILocation(line: 259, column: 14, scope: !5696)
!5703 = !DILocation(line: 259, column: 21, scope: !5696)
!5704 = !DILocation(line: 259, column: 26, scope: !5696)
!5705 = !DILocation(line: 259, column: 32, scope: !5696)
!5706 = !DILocation(line: 259, column: 7, scope: !5696)
!5707 = !DILocation(line: 259, column: 37, scope: !5696)
!5708 = !DILocation(line: 259, column: 41, scope: !5696)
!5709 = !DILocation(line: 258, column: 6, scope: !5659)
!5710 = !DILocation(line: 260, column: 3, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5696, file: !2, line: 259, column: 64)
!5712 = !DILocation(line: 261, column: 3, scope: !5711)
!5713 = !DILocation(line: 263, column: 2, scope: !5659)
!5714 = !DILocation(line: 265, column: 32, scope: !5659)
!5715 = !DILocation(line: 265, column: 38, scope: !5659)
!5716 = !DILocation(line: 265, column: 8, scope: !5659)
!5717 = !DILocation(line: 265, column: 6, scope: !5659)
!5718 = !DILocation(line: 266, column: 6, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5659, file: !2, line: 266, column: 6)
!5720 = !DILocation(line: 266, column: 6, scope: !5659)
!5721 = !DILocation(line: 267, column: 10, scope: !5719)
!5722 = !DILocation(line: 267, column: 3, scope: !5719)
!5723 = !DILocation(line: 269, column: 12, scope: !5659)
!5724 = !DILocation(line: 269, column: 2, scope: !5659)
!5725 = !DILocation(line: 270, column: 6, scope: !5672)
!5726 = !DILocation(line: 270, column: 6, scope: !5659)
!5727 = !DILocation(line: 271, column: 3, scope: !5671)
!5728 = !DILocation(line: 271, column: 22, scope: !5671)
!5729 = !DILocation(line: 273, column: 15, scope: !5671)
!5730 = !DILocation(line: 273, column: 3, scope: !5671)
!5731 = !DILocation(line: 275, column: 9, scope: !5671)
!5732 = !DILocation(line: 275, column: 7, scope: !5671)
!5733 = !DILocation(line: 276, column: 8, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5671, file: !2, line: 276, column: 7)
!5735 = !DILocation(line: 276, column: 7, scope: !5671)
!5736 = !DILocation(line: 277, column: 4, scope: !5734)
!5737 = !DILocation(line: 279, column: 13, scope: !5671)
!5738 = !DILocation(line: 279, column: 3, scope: !5671)
!5739 = !DILocation(line: 280, column: 7, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5671, file: !2, line: 280, column: 7)
!5741 = !DILocation(line: 280, column: 13, scope: !5740)
!5742 = !DILocation(line: 280, column: 19, scope: !5740)
!5743 = !DILocation(line: 280, column: 7, scope: !5671)
!5744 = !DILocation(line: 281, column: 20, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5740, file: !2, line: 280, column: 33)
!5746 = !DILocation(line: 281, column: 38, scope: !5745)
!5747 = !DILocation(line: 281, column: 4, scope: !5745)
!5748 = !DILocation(line: 282, column: 4, scope: !5745)
!5749 = !DILocation(line: 284, column: 7, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5671, file: !2, line: 284, column: 7)
!5751 = !DILocation(line: 284, column: 13, scope: !5750)
!5752 = !DILocation(line: 284, column: 7, scope: !5671)
!5753 = !DILocation(line: 285, column: 20, scope: !5750)
!5754 = !DILocation(line: 285, column: 38, scope: !5750)
!5755 = !DILocation(line: 285, column: 4, scope: !5750)
!5756 = !DILocation(line: 287, column: 23, scope: !5750)
!5757 = !DILocation(line: 287, column: 4, scope: !5750)
!5758 = !DILocation(line: 287, column: 10, scope: !5750)
!5759 = !DILocation(line: 287, column: 21, scope: !5750)
!5760 = !DILocation(line: 288, column: 2, scope: !5672)
!5761 = !DILocation(line: 288, column: 2, scope: !5671)
!5762 = !DILocation(line: 289, column: 29, scope: !5659)
!5763 = !DILocation(line: 289, column: 2, scope: !5659)
!5764 = !DILocation(line: 289, column: 8, scope: !5659)
!5765 = !DILocation(line: 289, column: 20, scope: !5659)
!5766 = !DILocation(line: 289, column: 27, scope: !5659)
!5767 = !DILocation(line: 290, column: 1, scope: !5659)
!5768 = !DILocation(line: 291, column: 14, scope: !5659)
!5769 = !DILocation(line: 291, column: 2, scope: !5659)
!5770 = !DILocation(line: 292, column: 2, scope: !5659)
!5771 = !DILocation(line: 293, column: 1, scope: !5659)
!5772 = distinct !DISubprogram(name: "get_current", scope: !5773, file: !5773, line: 39, type: !5774, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5776)
!5773 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5774 = !DISubroutineType(types: !5775)
!5775 = !{!527}
!5776 = !{!5777, !5779, !5781}
!5777 = !DILocalVariable(name: "pscr_ret__", scope: !5778, file: !5773, line: 41, type: !527)
!5778 = distinct !DILexicalBlock(scope: !5772, file: !5773, line: 41, column: 9)
!5779 = !DILocalVariable(name: "__vpp_verify", scope: !5780, file: !5773, line: 41, type: !1954)
!5780 = distinct !DILexicalBlock(scope: !5778, file: !5773, line: 41, column: 9)
!5781 = !DILocalVariable(name: "pfo_val__", scope: !5782, file: !5773, line: 41, type: !255)
!5782 = distinct !DILexicalBlock(scope: !5778, file: !5773, line: 41, column: 9)
!5783 = !DILocation(line: 41, column: 9, scope: !5778)
!5784 = !DILocation(line: 41, column: 9, scope: !5780)
!5785 = !DILocation(line: 41, column: 9, scope: !5782)
!5786 = !{i64 2148541322}
!5787 = !DILocation(line: 41, column: 9, scope: !5772)
!5788 = !DILocation(line: 41, column: 2, scope: !5772)
!5789 = distinct !DISubprogram(name: "rcu_read_lock", scope: !5790, file: !5790, line: 782, type: !2454, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5790 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!5791 = !DILocation(line: 784, column: 2, scope: !5789)
!5792 = !DILocation(line: 786, column: 2, scope: !5789)
!5793 = !DILocation(line: 786, column: 2, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5789, file: !5790, line: 786, column: 2)
!5795 = !DILocation(line: 787, column: 2, scope: !5789)
!5796 = !DILocation(line: 787, column: 2, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5789, file: !5790, line: 787, column: 2)
!5798 = !DILocation(line: 789, column: 1, scope: !5789)
!5799 = distinct !DISubprogram(name: "uid_eq", scope: !228, file: !228, line: 61, type: !5800, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5802)
!5800 = !DISubroutineType(types: !5801)
!5801 = !{!404, !227, !227}
!5802 = !{!5803, !5804}
!5803 = !DILocalVariable(name: "left", arg: 1, scope: !5799, file: !228, line: 61, type: !227)
!5804 = !DILocalVariable(name: "right", arg: 2, scope: !5799, file: !228, line: 61, type: !227)
!5805 = !DILocation(line: 61, column: 34, scope: !5799)
!5806 = !DILocation(line: 61, column: 47, scope: !5799)
!5807 = !DILocation(line: 63, column: 9, scope: !5799)
!5808 = !DILocation(line: 63, column: 29, scope: !5799)
!5809 = !DILocation(line: 63, column: 26, scope: !5799)
!5810 = !DILocation(line: 63, column: 2, scope: !5799)
!5811 = !DISubprogram(name: "capable", scope: !251, file: !251, line: 148, type: !5812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5812 = !DISubroutineType(types: !5813)
!5813 = !{!404, !114}
!5814 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !5790, file: !5790, line: 813, type: !2454, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5815 = !DILocation(line: 815, column: 2, scope: !5814)
!5816 = !DILocation(line: 815, column: 2, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5814, file: !5790, line: 815, column: 2)
!5818 = !DILocation(line: 818, column: 2, scope: !5814)
!5819 = !DILocation(line: 819, column: 2, scope: !5814)
!5820 = !DILocation(line: 819, column: 2, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5814, file: !5790, line: 819, column: 2)
!5822 = !DILocation(line: 820, column: 1, scope: !5814)
!5823 = !DISubprogram(name: "security_task_setioprio", scope: !5824, file: !5824, line: 436, type: !5660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5824 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!5825 = distinct !DISubprogram(name: "alloc_io_context", scope: !2, file: !2, line: 229, type: !5826, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5828)
!5826 = !DISubroutineType(types: !5827)
!5827 = !{!3119, !522, !114}
!5828 = !{!5829, !5830, !5831}
!5829 = !DILocalVariable(name: "gfp_flags", arg: 1, scope: !5825, file: !2, line: 229, type: !522)
!5830 = !DILocalVariable(name: "node", arg: 2, scope: !5825, file: !2, line: 229, type: !114)
!5831 = !DILocalVariable(name: "ioc", scope: !5825, file: !2, line: 231, type: !3119)
!5832 = !DILocation(line: 229, column: 50, scope: !5825)
!5833 = !DILocation(line: 229, column: 65, scope: !5825)
!5834 = !DILocation(line: 231, column: 2, scope: !5825)
!5835 = !DILocation(line: 231, column: 21, scope: !5825)
!5836 = !DILocation(line: 233, column: 30, scope: !5825)
!5837 = !DILocation(line: 233, column: 48, scope: !5825)
!5838 = !DILocation(line: 233, column: 58, scope: !5825)
!5839 = !DILocation(line: 234, column: 9, scope: !5825)
!5840 = !DILocation(line: 233, column: 8, scope: !5825)
!5841 = !DILocation(line: 233, column: 6, scope: !5825)
!5842 = !DILocation(line: 235, column: 6, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5844, file: !2, line: 235, column: 6)
!5844 = !DILexicalBlockFile(scope: !5825, file: !2, discriminator: 0)
!5845 = !DILocation(line: 235, column: 6, scope: !5844)
!5846 = !DILocation(line: 236, column: 3, scope: !5843)
!5847 = !DILocation(line: 238, column: 19, scope: !5844)
!5848 = !DILocation(line: 238, column: 24, scope: !5844)
!5849 = !DILocation(line: 238, column: 2, scope: !5844)
!5850 = !DILocation(line: 239, column: 14, scope: !5844)
!5851 = !DILocation(line: 239, column: 19, scope: !5844)
!5852 = !DILocation(line: 239, column: 2, scope: !5844)
!5853 = !DILocation(line: 246, column: 16, scope: !5844)
!5854 = !DILocation(line: 246, column: 2, scope: !5844)
!5855 = !DILocation(line: 246, column: 7, scope: !5844)
!5856 = !DILocation(line: 246, column: 14, scope: !5844)
!5857 = !DILocation(line: 248, column: 9, scope: !5844)
!5858 = !DILocation(line: 248, column: 2, scope: !5844)
!5859 = !DILocation(line: 249, column: 1, scope: !5844)
!5860 = distinct !DISubprogram(name: "__copy_io", scope: !2, file: !2, line: 296, type: !5861, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5863)
!5861 = !DISubroutineType(types: !5862)
!5862 = !{!114, !298, !527}
!5863 = !{!5864, !5865, !5866}
!5864 = !DILocalVariable(name: "clone_flags", arg: 1, scope: !5860, file: !2, line: 296, type: !298)
!5865 = !DILocalVariable(name: "tsk", arg: 2, scope: !5860, file: !2, line: 296, type: !527)
!5866 = !DILocalVariable(name: "ioc", scope: !5860, file: !2, line: 298, type: !3119)
!5867 = !DILocation(line: 296, column: 29, scope: !5860)
!5868 = !DILocation(line: 296, column: 62, scope: !5860)
!5869 = !DILocation(line: 298, column: 2, scope: !5860)
!5870 = !DILocation(line: 298, column: 21, scope: !5860)
!5871 = !DILocation(line: 298, column: 27, scope: !5860)
!5872 = !DILocation(line: 298, column: 36, scope: !5860)
!5873 = !DILocation(line: 303, column: 6, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5860, file: !2, line: 303, column: 6)
!5875 = !DILocation(line: 303, column: 18, scope: !5874)
!5876 = !DILocation(line: 303, column: 6, scope: !5860)
!5877 = !DILocation(line: 304, column: 15, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5874, file: !2, line: 303, column: 30)
!5879 = !DILocation(line: 304, column: 20, scope: !5878)
!5880 = !DILocation(line: 304, column: 3, scope: !5878)
!5881 = !DILocation(line: 305, column: 21, scope: !5878)
!5882 = !DILocation(line: 305, column: 3, scope: !5878)
!5883 = !DILocation(line: 305, column: 8, scope: !5878)
!5884 = !DILocation(line: 305, column: 19, scope: !5878)
!5885 = !DILocation(line: 306, column: 2, scope: !5878)
!5886 = !DILocation(line: 306, column: 26, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5874, file: !2, line: 306, column: 13)
!5888 = !DILocation(line: 306, column: 31, scope: !5887)
!5889 = !DILocation(line: 306, column: 13, scope: !5887)
!5890 = !DILocation(line: 306, column: 13, scope: !5874)
!5891 = !DILocation(line: 307, column: 21, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5887, file: !2, line: 306, column: 40)
!5893 = !DILocation(line: 307, column: 3, scope: !5892)
!5894 = !DILocation(line: 307, column: 8, scope: !5892)
!5895 = !DILocation(line: 307, column: 19, scope: !5892)
!5896 = !DILocation(line: 308, column: 8, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5892, file: !2, line: 308, column: 7)
!5898 = !DILocation(line: 308, column: 13, scope: !5897)
!5899 = !DILocation(line: 308, column: 7, scope: !5892)
!5900 = !DILocation(line: 309, column: 4, scope: !5897)
!5901 = !DILocation(line: 310, column: 29, scope: !5892)
!5902 = !DILocation(line: 310, column: 34, scope: !5892)
!5903 = !DILocation(line: 310, column: 3, scope: !5892)
!5904 = !DILocation(line: 310, column: 8, scope: !5892)
!5905 = !DILocation(line: 310, column: 20, scope: !5892)
!5906 = !DILocation(line: 310, column: 27, scope: !5892)
!5907 = !DILocation(line: 311, column: 2, scope: !5892)
!5908 = !DILocation(line: 313, column: 2, scope: !5860)
!5909 = !DILocation(line: 314, column: 1, scope: !5860)
!5910 = distinct !DISubprogram(name: "atomic_inc", scope: !5553, file: !5553, line: 433, type: !5911, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5913)
!5911 = !DISubroutineType(types: !5912)
!5912 = !{null, !5642}
!5913 = !{!5914}
!5914 = !DILocalVariable(name: "v", arg: 1, scope: !5910, file: !5553, line: 433, type: !5642)
!5915 = !DILocation(line: 433, column: 22, scope: !5910)
!5916 = !DILocation(line: 435, column: 31, scope: !5910)
!5917 = !DILocation(line: 435, column: 2, scope: !5910)
!5918 = !DILocation(line: 436, column: 17, scope: !5910)
!5919 = !DILocation(line: 436, column: 2, scope: !5910)
!5920 = !DILocation(line: 437, column: 1, scope: !5910)
!5921 = distinct !DISubprogram(name: "ioprio_valid", scope: !5922, file: !5922, line: 19, type: !5923, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5925)
!5922 = !DIFile(filename: "./include/linux/ioprio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "538577817063bbe1fc6ba636697b8098")
!5923 = !DISubroutineType(types: !5924)
!5924 = !{!404, !340}
!5925 = !{!5926, !5927}
!5926 = !DILocalVariable(name: "ioprio", arg: 1, scope: !5921, file: !5922, line: 19, type: !340)
!5927 = !DILocalVariable(name: "class", scope: !5921, file: !5922, line: 21, type: !340)
!5928 = !DILocation(line: 19, column: 48, scope: !5921)
!5929 = !DILocation(line: 21, column: 2, scope: !5921)
!5930 = !DILocation(line: 21, column: 17, scope: !5921)
!5931 = !DILocation(line: 21, column: 25, scope: !5921)
!5932 = !DILocation(line: 23, column: 9, scope: !5921)
!5933 = !DILocation(line: 23, column: 15, scope: !5921)
!5934 = !DILocation(line: 23, column: 35, scope: !5921)
!5935 = !DILocation(line: 23, column: 38, scope: !5921)
!5936 = !DILocation(line: 23, column: 44, scope: !5921)
!5937 = !DILocation(line: 0, scope: !5921)
!5938 = !DILocation(line: 24, column: 1, scope: !5921)
!5939 = !DILocation(line: 23, column: 2, scope: !5921)
!5940 = distinct !DISubprogram(name: "__initstub__kmod_blk_ioc__357_453_blk_ioc_init4", scope: !2, file: !2, line: 453, type: !2208, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5941 = !DILocation(line: 453, column: 1, scope: !5940)
!5942 = distinct !DISubprogram(name: "blk_ioc_init", scope: !2, file: !2, line: 447, type: !2208, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5943 = !DILocation(line: 449, column: 21, scope: !5942)
!5944 = !DILocation(line: 449, column: 19, scope: !5942)
!5945 = !DILocation(line: 451, column: 2, scope: !5942)
!5946 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5947, file: !5947, line: 66, type: !5948, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5953)
!5947 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5948 = !DISubroutineType(types: !5949)
!5949 = !{null, !5950, !1157}
!5950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5951, size: 64)
!5951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5952)
!5952 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5953 = !{!5954, !5955}
!5954 = !DILocalVariable(name: "v", arg: 1, scope: !5946, file: !5947, line: 66, type: !5950)
!5955 = !DILocalVariable(name: "size", arg: 2, scope: !5946, file: !5947, line: 66, type: !1157)
!5956 = !DILocation(line: 66, column: 73, scope: !5946)
!5957 = !DILocation(line: 66, column: 83, scope: !5946)
!5958 = !DILocation(line: 68, column: 19, scope: !5946)
!5959 = !DILocation(line: 68, column: 22, scope: !5946)
!5960 = !DILocation(line: 68, column: 2, scope: !5946)
!5961 = !DILocation(line: 69, column: 2, scope: !5946)
!5962 = !DILocation(line: 70, column: 1, scope: !5946)
!5963 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !215, file: !215, line: 35, type: !5554, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5964)
!5964 = !{!5965}
!5965 = !DILocalVariable(name: "v", arg: 1, scope: !5963, file: !215, line: 35, type: !5556)
!5966 = !DILocation(line: 35, column: 43, scope: !5963)
!5967 = !DILocation(line: 38, column: 27, scope: !5963)
!5968 = !DILocation(line: 38, column: 9, scope: !5963)
!5969 = !DILocation(line: 38, column: 2, scope: !5963)
!5970 = distinct !DISubprogram(name: "kasan_check_read", scope: !5971, file: !5971, line: 40, type: !5972, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5974)
!5971 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5972 = !DISubroutineType(types: !5973)
!5973 = !{!404, !5950, !13}
!5974 = !{!5975, !5976}
!5975 = !DILocalVariable(name: "p", arg: 1, scope: !5970, file: !5971, line: 40, type: !5950)
!5976 = !DILocalVariable(name: "size", arg: 2, scope: !5970, file: !5971, line: 40, type: !13)
!5977 = !DILocation(line: 40, column: 58, scope: !5970)
!5978 = !DILocation(line: 40, column: 74, scope: !5970)
!5979 = !DILocation(line: 42, column: 2, scope: !5970)
!5980 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5981, file: !5981, line: 229, type: !5982, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5984)
!5981 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5982 = !DISubroutineType(types: !5983)
!5983 = !{null, !5950, !1157, !114}
!5984 = !{!5985, !5986, !5987}
!5985 = !DILocalVariable(name: "ptr", arg: 1, scope: !5980, file: !5981, line: 229, type: !5950)
!5986 = !DILocalVariable(name: "size", arg: 2, scope: !5980, file: !5981, line: 229, type: !1157)
!5987 = !DILocalVariable(name: "type", arg: 3, scope: !5980, file: !5981, line: 230, type: !114)
!5988 = !DILocation(line: 229, column: 60, scope: !5980)
!5989 = !DILocation(line: 229, column: 72, scope: !5980)
!5990 = !DILocation(line: 230, column: 15, scope: !5980)
!5991 = !DILocation(line: 230, column: 23, scope: !5980)
!5992 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !5993, file: !5993, line: 2554, type: !5994, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5998)
!5993 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5994 = !DISubroutineType(types: !5995)
!5995 = !{!221, !5996}
!5996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5997, size: 64)
!5997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!5998 = !{!5999}
!5999 = !DILocalVariable(name: "v", arg: 1, scope: !5992, file: !5993, line: 2554, type: !5996)
!6000 = !DILocation(line: 2554, column: 37, scope: !5992)
!6001 = !DILocation(line: 2556, column: 28, scope: !5992)
!6002 = !DILocation(line: 2556, column: 9, scope: !5992)
!6003 = !DILocation(line: 2556, column: 2, scope: !5992)
!6004 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !6005, file: !6005, line: 13, type: !5994, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6006)
!6005 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!6006 = !{!6007}
!6007 = !DILocalVariable(name: "v", arg: 1, scope: !6004, file: !6005, line: 13, type: !5996)
!6008 = !DILocation(line: 13, column: 65, scope: !6004)
!6009 = !DILocation(line: 15, column: 9, scope: !6004)
!6010 = !DILocation(line: 15, column: 2, scope: !6004)
!6011 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5947, file: !5947, line: 94, type: !5948, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6012)
!6012 = !{!6013, !6014}
!6013 = !DILocalVariable(name: "v", arg: 1, scope: !6011, file: !5947, line: 94, type: !5950)
!6014 = !DILocalVariable(name: "size", arg: 2, scope: !6011, file: !5947, line: 94, type: !1157)
!6015 = !DILocation(line: 94, column: 79, scope: !6011)
!6016 = !DILocation(line: 94, column: 89, scope: !6011)
!6017 = !DILocation(line: 96, column: 20, scope: !6011)
!6018 = !DILocation(line: 96, column: 23, scope: !6011)
!6019 = !DILocation(line: 96, column: 2, scope: !6011)
!6020 = !DILocation(line: 97, column: 2, scope: !6011)
!6021 = !DILocation(line: 98, column: 1, scope: !6011)
!6022 = distinct !DISubprogram(name: "raw_atomic_long_dec_and_test", scope: !215, file: !215, line: 1560, type: !5567, scopeLine: 1561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6023)
!6023 = !{!6024}
!6024 = !DILocalVariable(name: "v", arg: 1, scope: !6022, file: !215, line: 1560, type: !4211)
!6025 = !DILocation(line: 1560, column: 45, scope: !6022)
!6026 = !DILocation(line: 1563, column: 35, scope: !6022)
!6027 = !DILocation(line: 1563, column: 9, scope: !6022)
!6028 = !DILocation(line: 1563, column: 2, scope: !6022)
!6029 = distinct !DISubprogram(name: "kasan_check_write", scope: !5971, file: !5971, line: 44, type: !5972, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6030)
!6030 = !{!6031, !6032}
!6031 = !DILocalVariable(name: "p", arg: 1, scope: !6029, file: !5971, line: 44, type: !5950)
!6032 = !DILocalVariable(name: "size", arg: 2, scope: !6029, file: !5971, line: 44, type: !13)
!6033 = !DILocation(line: 44, column: 59, scope: !6029)
!6034 = !DILocation(line: 44, column: 75, scope: !6029)
!6035 = !DILocation(line: 46, column: 2, scope: !6029)
!6036 = distinct !DISubprogram(name: "raw_atomic64_dec_and_test", scope: !5993, file: !5993, line: 4366, type: !6037, scopeLine: 4367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6040)
!6037 = !DISubroutineType(types: !6038)
!6038 = !{!404, !6039}
!6039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!6040 = !{!6041}
!6041 = !DILocalVariable(name: "v", arg: 1, scope: !6036, file: !5993, line: 4366, type: !6039)
!6042 = !DILocation(line: 4366, column: 39, scope: !6036)
!6043 = !DILocation(line: 4369, column: 36, scope: !6036)
!6044 = !DILocation(line: 4369, column: 9, scope: !6036)
!6045 = !DILocation(line: 4369, column: 2, scope: !6036)
!6046 = distinct !DISubprogram(name: "arch_atomic64_dec_and_test", scope: !6005, file: !6005, line: 59, type: !6037, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6047)
!6047 = !{!6048, !6049}
!6048 = !DILocalVariable(name: "v", arg: 1, scope: !6046, file: !6005, line: 59, type: !6039)
!6049 = !DILocalVariable(name: "c", scope: !6050, file: !6005, line: 61, type: !404)
!6050 = distinct !DILexicalBlock(scope: !6046, file: !6005, line: 61, column: 9)
!6051 = !DILocation(line: 59, column: 68, scope: !6046)
!6052 = !DILocation(line: 61, column: 9, scope: !6050)
!6053 = !{i64 2148823666, i64 2148823705, i64 2148823726, i64 2148823763, i64 2148823786, i64 2148823795, i64 2148823869}
!6054 = !{i8 0, i8 2}
!6055 = !DILocation(line: 61, column: 9, scope: !6046)
!6056 = !DILocation(line: 61, column: 2, scope: !6046)
!6057 = distinct !DISubprogram(name: "spin_lock", scope: !6058, file: !6058, line: 349, type: !6059, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6061)
!6058 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6059 = !DISubroutineType(types: !6060)
!6060 = !{null, !1647}
!6061 = !{!6062}
!6062 = !DILocalVariable(name: "lock", arg: 1, scope: !6057, file: !6058, line: 349, type: !1647)
!6063 = !DILocation(line: 349, column: 51, scope: !6057)
!6064 = !DILocation(line: 351, column: 2, scope: !6057)
!6065 = !DILocation(line: 352, column: 1, scope: !6057)
!6066 = !DISubprogram(name: "_raw_spin_lock", scope: !6067, file: !6067, line: 22, type: !6068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6067 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6068 = !DISubroutineType(types: !6069)
!6069 = !{null, !6070}
!6070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!6071 = distinct !DISubprogram(name: "spin_unlock", scope: !6058, file: !6058, line: 389, type: !6059, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6072)
!6072 = !{!6073}
!6073 = !DILocalVariable(name: "lock", arg: 1, scope: !6071, file: !6058, line: 389, type: !1647)
!6074 = !DILocation(line: 389, column: 53, scope: !6071)
!6075 = !DILocation(line: 391, column: 2, scope: !6071)
!6076 = !DILocation(line: 392, column: 1, scope: !6071)
!6077 = !DISubprogram(name: "_raw_spin_unlock", scope: !6067, file: !6067, line: 39, type: !6068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6078 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !5993, file: !5993, line: 2254, type: !5640, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6079)
!6079 = !{!6080}
!6080 = !DILocalVariable(name: "v", arg: 1, scope: !6078, file: !5993, line: 2254, type: !5642)
!6081 = !DILocation(line: 2254, column: 35, scope: !6078)
!6082 = !DILocation(line: 2257, column: 34, scope: !6078)
!6083 = !DILocation(line: 2257, column: 9, scope: !6078)
!6084 = !DILocation(line: 2257, column: 2, scope: !6078)
!6085 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !6086, file: !6086, line: 65, type: !5640, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6087)
!6086 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6087 = !{!6088, !6089}
!6088 = !DILocalVariable(name: "v", arg: 1, scope: !6085, file: !6086, line: 65, type: !5642)
!6089 = !DILocalVariable(name: "c", scope: !6090, file: !6086, line: 67, type: !404)
!6090 = distinct !DILexicalBlock(scope: !6085, file: !6086, line: 67, column: 9)
!6091 = !DILocation(line: 65, column: 64, scope: !6085)
!6092 = !DILocation(line: 67, column: 9, scope: !6090)
!6093 = !{i64 2148792739, i64 2148792778, i64 2148792799, i64 2148792836, i64 2148792859, i64 2148792868, i64 2148792942}
!6094 = !DILocation(line: 67, column: 9, scope: !6085)
!6095 = !DILocation(line: 67, column: 2, scope: !6085)
!6096 = !DISubprogram(name: "__rcu_read_lock", scope: !5790, file: !5790, line: 74, type: !2454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6097 = distinct !DISubprogram(name: "__kuid_val", scope: !228, file: !228, line: 34, type: !6098, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6100)
!6098 = !DISubroutineType(types: !6099)
!6099 = !{!232, !227}
!6100 = !{!6101}
!6101 = !DILocalVariable(name: "uid", arg: 1, scope: !6097, file: !228, line: 34, type: !227)
!6102 = !DILocation(line: 34, column: 39, scope: !6097)
!6103 = !DILocation(line: 36, column: 13, scope: !6097)
!6104 = !DILocation(line: 36, column: 2, scope: !6097)
!6105 = !DISubprogram(name: "__rcu_read_unlock", scope: !5790, file: !5790, line: 75, type: !2454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6106 = !DISubprogram(name: "kmem_cache_alloc_node", scope: !5588, file: !5588, line: 522, type: !6107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6107 = !DISubroutineType(types: !6108)
!6108 = !{!207, !2823, !522, !114}
!6109 = distinct !DISubprogram(name: "atomic_long_set", scope: !5553, file: !5553, line: 3193, type: !6110, scopeLine: 3194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6112)
!6110 = !DISubroutineType(types: !6111)
!6111 = !{null, !4211, !1115}
!6112 = !{!6113, !6114}
!6113 = !DILocalVariable(name: "v", arg: 1, scope: !6109, file: !5553, line: 3193, type: !4211)
!6114 = !DILocalVariable(name: "i", arg: 2, scope: !6109, file: !5553, line: 3193, type: !1115)
!6115 = !DILocation(line: 3193, column: 32, scope: !6109)
!6116 = !DILocation(line: 3193, column: 40, scope: !6109)
!6117 = !DILocation(line: 3195, column: 26, scope: !6109)
!6118 = !DILocation(line: 3195, column: 2, scope: !6109)
!6119 = !DILocation(line: 3196, column: 22, scope: !6109)
!6120 = !DILocation(line: 3196, column: 25, scope: !6109)
!6121 = !DILocation(line: 3196, column: 2, scope: !6109)
!6122 = !DILocation(line: 3197, column: 1, scope: !6109)
!6123 = distinct !DISubprogram(name: "atomic_set", scope: !5553, file: !5553, line: 65, type: !6124, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6126)
!6124 = !DISubroutineType(types: !6125)
!6125 = !{null, !5642, !114}
!6126 = !{!6127, !6128}
!6127 = !DILocalVariable(name: "v", arg: 1, scope: !6123, file: !5553, line: 65, type: !5642)
!6128 = !DILocalVariable(name: "i", arg: 2, scope: !6123, file: !5553, line: 65, type: !114)
!6129 = !DILocation(line: 65, column: 22, scope: !6123)
!6130 = !DILocation(line: 65, column: 29, scope: !6123)
!6131 = !DILocation(line: 67, column: 26, scope: !6123)
!6132 = !DILocation(line: 67, column: 2, scope: !6123)
!6133 = !DILocation(line: 68, column: 17, scope: !6123)
!6134 = !DILocation(line: 68, column: 20, scope: !6123)
!6135 = !DILocation(line: 68, column: 2, scope: !6123)
!6136 = !DILocation(line: 69, column: 1, scope: !6123)
!6137 = distinct !DISubprogram(name: "ioprio_value", scope: !189, file: !189, line: 110, type: !6138, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6140)
!6138 = !DISubroutineType(types: !6139)
!6139 = !{!339, !114, !114, !114}
!6140 = !{!6141, !6142, !6143}
!6141 = !DILocalVariable(name: "prioclass", arg: 1, scope: !6137, file: !189, line: 110, type: !114)
!6142 = !DILocalVariable(name: "priolevel", arg: 2, scope: !6137, file: !189, line: 110, type: !114)
!6143 = !DILocalVariable(name: "priohint", arg: 3, scope: !6137, file: !189, line: 111, type: !114)
!6144 = !DILocation(line: 110, column: 47, scope: !6137)
!6145 = !DILocation(line: 110, column: 62, scope: !6137)
!6146 = !DILocation(line: 111, column: 12, scope: !6137)
!6147 = !DILocation(line: 113, column: 6, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6137, file: !189, line: 113, column: 6)
!6149 = !DILocation(line: 113, column: 53, scope: !6148)
!6150 = !DILocation(line: 114, column: 6, scope: !6148)
!6151 = !DILocation(line: 114, column: 52, scope: !6148)
!6152 = !DILocation(line: 115, column: 6, scope: !6148)
!6153 = !DILocation(line: 113, column: 6, scope: !6137)
!6154 = !DILocation(line: 116, column: 3, scope: !6148)
!6155 = !DILocation(line: 118, column: 10, scope: !6137)
!6156 = !DILocation(line: 118, column: 20, scope: !6137)
!6157 = !DILocation(line: 119, column: 4, scope: !6137)
!6158 = !DILocation(line: 119, column: 13, scope: !6137)
!6159 = !DILocation(line: 118, column: 43, scope: !6137)
!6160 = !DILocation(line: 119, column: 37, scope: !6137)
!6161 = !DILocation(line: 119, column: 35, scope: !6137)
!6162 = !DILocation(line: 118, column: 9, scope: !6137)
!6163 = !DILocation(line: 118, column: 2, scope: !6137)
!6164 = !DILocation(line: 120, column: 1, scope: !6137)
!6165 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5947, file: !5947, line: 80, type: !5948, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6166)
!6166 = !{!6167, !6168}
!6167 = !DILocalVariable(name: "v", arg: 1, scope: !6165, file: !5947, line: 80, type: !5950)
!6168 = !DILocalVariable(name: "size", arg: 2, scope: !6165, file: !5947, line: 80, type: !1157)
!6169 = !DILocation(line: 80, column: 74, scope: !6165)
!6170 = !DILocation(line: 80, column: 84, scope: !6165)
!6171 = !DILocation(line: 82, column: 20, scope: !6165)
!6172 = !DILocation(line: 82, column: 23, scope: !6165)
!6173 = !DILocation(line: 82, column: 2, scope: !6165)
!6174 = !DILocation(line: 83, column: 2, scope: !6165)
!6175 = !DILocation(line: 84, column: 1, scope: !6165)
!6176 = distinct !DISubprogram(name: "raw_atomic_long_set", scope: !215, file: !215, line: 76, type: !6110, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6177)
!6177 = !{!6178, !6179}
!6178 = !DILocalVariable(name: "v", arg: 1, scope: !6176, file: !215, line: 76, type: !4211)
!6179 = !DILocalVariable(name: "i", arg: 2, scope: !6176, file: !215, line: 76, type: !1115)
!6180 = !DILocation(line: 76, column: 36, scope: !6176)
!6181 = !DILocation(line: 76, column: 44, scope: !6176)
!6182 = !DILocation(line: 79, column: 19, scope: !6176)
!6183 = !DILocation(line: 79, column: 22, scope: !6176)
!6184 = !DILocation(line: 79, column: 2, scope: !6176)
!6185 = !DILocation(line: 83, column: 1, scope: !6176)
!6186 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !5993, file: !5993, line: 2600, type: !6187, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6189)
!6187 = !DISubroutineType(types: !6188)
!6188 = !{null, !6039, !221}
!6189 = !{!6190, !6191}
!6190 = !DILocalVariable(name: "v", arg: 1, scope: !6186, file: !5993, line: 2600, type: !6039)
!6191 = !DILocalVariable(name: "i", arg: 2, scope: !6186, file: !5993, line: 2600, type: !221)
!6192 = !DILocation(line: 2600, column: 30, scope: !6186)
!6193 = !DILocation(line: 2600, column: 37, scope: !6186)
!6194 = !DILocation(line: 2602, column: 20, scope: !6186)
!6195 = !DILocation(line: 2602, column: 23, scope: !6186)
!6196 = !DILocation(line: 2602, column: 2, scope: !6186)
!6197 = !DILocation(line: 2603, column: 1, scope: !6186)
!6198 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !6005, file: !6005, line: 18, type: !6187, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6199)
!6199 = !{!6200, !6201}
!6200 = !DILocalVariable(name: "v", arg: 1, scope: !6198, file: !6005, line: 18, type: !6039)
!6201 = !DILocalVariable(name: "i", arg: 2, scope: !6198, file: !6005, line: 18, type: !221)
!6202 = !DILocation(line: 18, column: 59, scope: !6198)
!6203 = !DILocation(line: 18, column: 66, scope: !6198)
!6204 = !DILocation(line: 20, column: 2, scope: !6198)
!6205 = !DILocation(line: 20, column: 2, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6198, file: !6005, line: 20, column: 2)
!6207 = !DILocation(line: 21, column: 1, scope: !6198)
!6208 = distinct !DISubprogram(name: "raw_atomic_set", scope: !5993, file: !5993, line: 488, type: !6124, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6209)
!6209 = !{!6210, !6211}
!6210 = !DILocalVariable(name: "v", arg: 1, scope: !6208, file: !5993, line: 488, type: !5642)
!6211 = !DILocalVariable(name: "i", arg: 2, scope: !6208, file: !5993, line: 488, type: !114)
!6212 = !DILocation(line: 488, column: 26, scope: !6208)
!6213 = !DILocation(line: 488, column: 33, scope: !6208)
!6214 = !DILocation(line: 490, column: 18, scope: !6208)
!6215 = !DILocation(line: 490, column: 21, scope: !6208)
!6216 = !DILocation(line: 490, column: 2, scope: !6208)
!6217 = !DILocation(line: 491, column: 1, scope: !6208)
!6218 = distinct !DISubprogram(name: "arch_atomic_set", scope: !6086, file: !6086, line: 26, type: !6124, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6219)
!6219 = !{!6220, !6221}
!6220 = !DILocalVariable(name: "v", arg: 1, scope: !6218, file: !6086, line: 26, type: !5642)
!6221 = !DILocalVariable(name: "i", arg: 2, scope: !6218, file: !6086, line: 26, type: !114)
!6222 = !DILocation(line: 26, column: 55, scope: !6218)
!6223 = !DILocation(line: 26, column: 62, scope: !6218)
!6224 = !DILocation(line: 28, column: 2, scope: !6218)
!6225 = !DILocation(line: 28, column: 2, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6218, file: !6086, line: 28, column: 2)
!6227 = !DILocation(line: 29, column: 1, scope: !6218)
!6228 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !5993, file: !5993, line: 976, type: !5911, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6229)
!6229 = !{!6230}
!6230 = !DILocalVariable(name: "v", arg: 1, scope: !6228, file: !5993, line: 976, type: !5642)
!6231 = !DILocation(line: 976, column: 26, scope: !6228)
!6232 = !DILocation(line: 979, column: 18, scope: !6228)
!6233 = !DILocation(line: 979, column: 2, scope: !6228)
!6234 = !DILocation(line: 983, column: 1, scope: !6228)
!6235 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !6086, file: !6086, line: 51, type: !5911, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6236)
!6236 = !{!6237}
!6237 = !DILocalVariable(name: "v", arg: 1, scope: !6235, file: !6086, line: 51, type: !5642)
!6238 = !DILocation(line: 51, column: 55, scope: !6235)
!6239 = !DILocation(line: 54, column: 16, scope: !6235)
!6240 = !DILocation(line: 54, column: 19, scope: !6235)
!6241 = !DILocation(line: 53, column: 2, scope: !6235)
!6242 = !{i64 2148790627, i64 2148790666, i64 2148790687, i64 2148790724, i64 2148790747, i64 2148790617}
!6243 = !DILocation(line: 55, column: 1, scope: !6235)
!6244 = !DISubprogram(name: "kmem_cache_create", scope: !5588, file: !5588, line: 189, type: !6245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6245 = !DISubroutineType(types: !6246)
!6246 = !{!2823, !407, !13, !13, !5500, !1032}
