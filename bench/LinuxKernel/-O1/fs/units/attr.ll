; ModuleID = 'fs/attr.c'
source_filename = "fs/attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_setattr_should_drop_sgid: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad setattr_should_drop_sgid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_setattr_should_drop_suidgid: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad setattr_should_drop_suidgid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_setattr_prepare: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad setattr_prepare ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_inode_newsize_ok: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad inode_newsize_ok ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_setattr_copy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad setattr_copy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_may_setattr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad may_setattr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_notify_change: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad notify_change ; .previous"

%struct.pcpu_hot = type { %union.anon.26 }
%union.anon.26 = type { %struct.anon.27, [16 x i8] }
%struct.anon.27 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.vfsgid_t = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.16 = type { ptr }
%struct.iattr = type { i32, i16, %union.anon.17, %union.anon.18, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%union.anon.17 = type { %struct.kuid_t }
%union.anon.18 = type { %struct.kgid_t }
%struct.vfsuid_t = type { i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.23, %struct.list_head, %struct.list_head, %union.anon.24 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.19, ptr }
%union.anon.19 = type { i64 }
%struct.lockref = type { %union.anon.21 }
%union.anon.21 = type { i64 }
%union.anon.23 = type { %struct.list_head }
%union.anon.24 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i64, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i16, i16, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.posix_cputimers_work = type { %struct.callback_head, %struct.mutex, i32 }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.wake_q_node = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_head = type { ptr }
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
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.25 }
%struct.kernel_cap_t = type { i64 }
%union.anon.25 = type { %struct.callback_head }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.pacct_struct = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }

@__UNIQUE_ID___addressable_setattr_should_drop_sgid330 = internal global ptr @setattr_should_drop_sgid, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_setattr_should_drop_suidgid331 = internal global ptr @setattr_should_drop_suidgid, section ".discard.addressable", align 8, !dbg !4460
@__UNIQUE_ID___addressable_setattr_prepare332 = internal global ptr @setattr_prepare, section ".discard.addressable", align 8, !dbg !4462
@__UNIQUE_ID___addressable_inode_newsize_ok333 = internal global ptr @inode_newsize_ok, section ".discard.addressable", align 8, !dbg !4464
@__UNIQUE_ID___addressable_setattr_copy334 = internal global ptr @setattr_copy, section ".discard.addressable", align 8, !dbg !4466
@__UNIQUE_ID___addressable_may_setattr335 = internal global ptr @may_setattr, section ".discard.addressable", align 8, !dbg !4468
@.str = private unnamed_addr constant [10 x i8] c"fs/attr.c\00", align 1, !dbg !4470
@__UNIQUE_ID___addressable_notify_change336 = internal global ptr @notify_change, section ".discard.addressable", align 8, !dbg !4473
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_setattr_should_drop_sgid330, ptr @__UNIQUE_ID___addressable_setattr_should_drop_suidgid331, ptr @__UNIQUE_ID___addressable_setattr_prepare332, ptr @__UNIQUE_ID___addressable_inode_newsize_ok333, ptr @__UNIQUE_ID___addressable_setattr_copy334, ptr @__UNIQUE_ID___addressable_may_setattr335, ptr @__UNIQUE_ID___addressable_notify_change336], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @setattr_should_drop_sgid(ptr noundef %idmap, ptr noundef %inode) #0 align 16 !dbg !4484 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %mode = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.vfsgid_t, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !4488, metadata !DIExpression()), !dbg !4491
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4489, metadata !DIExpression()), !dbg !4492
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode) #8, !dbg !4493
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !4490, metadata !DIExpression()), !dbg !4494
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4495
  %i_mode = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 0, !dbg !4496
  %1 = load i16, ptr %i_mode, align 8, !dbg !4496
  store i16 %1, ptr %mode, align 2, !dbg !4494
  %2 = load i16, ptr %mode, align 2, !dbg !4497
  %conv = zext i16 %2 to i32, !dbg !4497
  %and = and i32 %conv, 1024, !dbg !4499
  %tobool = icmp ne i32 %and, 0, !dbg !4499
  br i1 %tobool, label %if.end, label %if.then, !dbg !4500

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4501

if.end:                                           ; preds = %entry
  %3 = load i16, ptr %mode, align 2, !dbg !4502
  %conv1 = zext i16 %3 to i32, !dbg !4502
  %and2 = and i32 %conv1, 8, !dbg !4504
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4504
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4505

if.then4:                                         ; preds = %if.end
  store i32 4096, ptr %retval, align 4, !dbg !4506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4506

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %idmap.addr, align 8, !dbg !4507
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !4509
  %6 = load ptr, ptr %idmap.addr, align 8, !dbg !4510
  %7 = load ptr, ptr %inode.addr, align 8, !dbg !4511
  %call = call i32 @i_gid_into_vfsgid(ptr noundef %6, ptr noundef %7) #9, !dbg !4512
  %coerce.dive = getelementptr inbounds %struct.vfsgid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4512
  store i32 %call, ptr %coerce.dive, align 4, !dbg !4512
  %coerce.dive6 = getelementptr inbounds %struct.vfsgid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4513
  %8 = load i32, ptr %coerce.dive6, align 4, !dbg !4513
  %call7 = call zeroext i1 @in_group_or_capable(ptr noundef %4, ptr noundef %5, i32 %8) #9, !dbg !4513
  br i1 %call7, label %if.end9, label %if.then8, !dbg !4514

if.then8:                                         ; preds = %if.end5
  store i32 4096, ptr %retval, align 4, !dbg !4515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4515

if.end9:                                          ; preds = %if.end5
  store i32 0, ptr %retval, align 4, !dbg !4516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4516

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode) #8, !dbg !4517
  %9 = load i32, ptr %retval, align 4, !dbg !4517
  ret i32 %9, !dbg !4517
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4518 dso_local zeroext i1 @in_group_or_capable(ptr noundef, ptr noundef, i32) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i_gid_into_vfsgid(ptr noundef %idmap, ptr noundef %inode) #4 align 16 !dbg !4522 {
entry:
  %retval = alloca %struct.vfsgid_t, align 4
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !4526, metadata !DIExpression()), !dbg !4528
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4527, metadata !DIExpression()), !dbg !4529
  %0 = load ptr, ptr %idmap.addr, align 8, !dbg !4530
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !4531
  %call = call ptr @i_user_ns(ptr noundef %1) #9, !dbg !4532
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !4533
  %i_gid = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 4, !dbg !4534
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %i_gid, i32 0, i32 0, !dbg !4535
  %3 = load i32, ptr %coerce.dive, align 8, !dbg !4535
  %call1 = call i32 @make_vfsgid(ptr noundef %0, ptr noundef %call, i32 %3) #9, !dbg !4535
  %coerce.dive2 = getelementptr inbounds %struct.vfsgid_t, ptr %retval, i32 0, i32 0, !dbg !4535
  store i32 %call1, ptr %coerce.dive2, align 4, !dbg !4535
  %coerce.dive3 = getelementptr inbounds %struct.vfsgid_t, ptr %retval, i32 0, i32 0, !dbg !4536
  %4 = load i32, ptr %coerce.dive3, align 4, !dbg !4536
  ret i32 %4, !dbg !4536
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @setattr_should_drop_suidgid(ptr noundef %idmap, ptr noundef %inode) #0 align 16 !dbg !4537 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %mode = alloca i16, align 2
  %kill = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !4541, metadata !DIExpression()), !dbg !4545
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4542, metadata !DIExpression()), !dbg !4546
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode) #8, !dbg !4547
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !4543, metadata !DIExpression()), !dbg !4548
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4549
  %i_mode = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 0, !dbg !4550
  %1 = load i16, ptr %i_mode, align 8, !dbg !4550
  store i16 %1, ptr %mode, align 2, !dbg !4548
  call void @llvm.lifetime.start.p0(i64 4, ptr %kill) #8, !dbg !4551
  call void @llvm.dbg.declare(metadata ptr %kill, metadata !4544, metadata !DIExpression()), !dbg !4552
  store i32 0, ptr %kill, align 4, !dbg !4552
  %2 = load i16, ptr %mode, align 2, !dbg !4553
  %conv = zext i16 %2 to i32, !dbg !4553
  %and = and i32 %conv, 2048, !dbg !4553
  %tobool = icmp ne i32 %and, 0, !dbg !4553
  %lnot = xor i1 %tobool, true, !dbg !4553
  %lnot1 = xor i1 %lnot, true, !dbg !4553
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4553
  %conv2 = sext i32 %lnot.ext to i64, !dbg !4553
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 0), !dbg !4553
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4553
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4555

if.then:                                          ; preds = %entry
  store i32 2048, ptr %kill, align 4, !dbg !4556
  br label %if.end, !dbg !4557

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %idmap.addr, align 8, !dbg !4558
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !4559
  %call = call i32 @setattr_should_drop_sgid(ptr noundef %3, ptr noundef %4) #9, !dbg !4560
  %5 = load i32, ptr %kill, align 4, !dbg !4561
  %or = or i32 %5, %call, !dbg !4561
  store i32 %or, ptr %kill, align 4, !dbg !4561
  %6 = load i32, ptr %kill, align 4, !dbg !4562
  %tobool4 = icmp ne i32 %6, 0, !dbg !4562
  br i1 %tobool4, label %land.lhs.true, label %land.end, !dbg !4562

land.lhs.true:                                    ; preds = %if.end
  %call5 = call zeroext i1 @capable(i32 noundef 4) #9, !dbg !4562
  br i1 %call5, label %land.end, label %land.rhs, !dbg !4562

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load i16, ptr %mode, align 2, !dbg !4562
  %conv6 = zext i16 %7 to i32, !dbg !4562
  %and7 = and i32 %conv6, 61440, !dbg !4562
  %cmp = icmp eq i32 %and7, 32768, !dbg !4562
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %if.end ], [ %cmp, %land.rhs ], !dbg !4564
  %lnot9 = xor i1 %8, true, !dbg !4562
  %lnot11 = xor i1 %lnot9, true, !dbg !4562
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !4562
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !4562
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !4562
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !4562
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4565

if.then16:                                        ; preds = %land.end
  %9 = load i32, ptr %kill, align 4, !dbg !4566
  store i32 %9, ptr %retval, align 4, !dbg !4567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4567

if.end17:                                         ; preds = %land.end
  store i32 0, ptr %retval, align 4, !dbg !4568
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4568

cleanup:                                          ; preds = %if.end17, %if.then16
  call void @llvm.lifetime.end.p0(i64 4, ptr %kill) #8, !dbg !4569
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode) #8, !dbg !4569
  %10 = load i32, ptr %retval, align 4, !dbg !4569
  ret i32 %10, !dbg !4569
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4570 dso_local zeroext i1 @capable(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @setattr_prepare(ptr noundef %idmap, ptr noundef %dentry, ptr noundef %attr) #0 align 16 !dbg !4573 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %ia_valid = alloca i32, align 4
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %vfsgid = alloca %struct.vfsgid_t, align 4
  %tmp = alloca %struct.vfsgid_t, align 4
  %error54 = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !4575, metadata !DIExpression()), !dbg !4590
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4576, metadata !DIExpression()), !dbg !4591
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4577, metadata !DIExpression()), !dbg !4592
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #8, !dbg !4593
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4578, metadata !DIExpression()), !dbg !4594
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4595
  %call = call ptr @d_inode(ptr noundef %0) #9, !dbg !4596
  store ptr %call, ptr %inode, align 8, !dbg !4594
  call void @llvm.lifetime.start.p0(i64 4, ptr %ia_valid) #8, !dbg !4597
  call void @llvm.dbg.declare(metadata ptr %ia_valid, metadata !4579, metadata !DIExpression()), !dbg !4598
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !4599
  %ia_valid1 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 0, !dbg !4600
  %2 = load i32, ptr %ia_valid1, align 8, !dbg !4600
  store i32 %2, ptr %ia_valid, align 4, !dbg !4598
  %3 = load i32, ptr %ia_valid, align 4, !dbg !4601
  %and = and i32 %3, 8, !dbg !4602
  %tobool = icmp ne i32 %and, 0, !dbg !4602
  br i1 %tobool, label %if.then, label %if.end5, !dbg !4603

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #8, !dbg !4604
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4580, metadata !DIExpression()), !dbg !4605
  %4 = load ptr, ptr %inode, align 8, !dbg !4606
  %5 = load ptr, ptr %attr.addr, align 8, !dbg !4607
  %ia_size = getelementptr inbounds %struct.iattr, ptr %5, i32 0, i32 4, !dbg !4608
  %6 = load i64, ptr %ia_size, align 8, !dbg !4608
  %call2 = call i32 @inode_newsize_ok(ptr noundef %4, i64 noundef %6) #9, !dbg !4609
  store i32 %call2, ptr %error, align 4, !dbg !4605
  %7 = load i32, ptr %error, align 4, !dbg !4610
  %tobool3 = icmp ne i32 %7, 0, !dbg !4610
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !4612

if.then4:                                         ; preds = %if.then
  %8 = load i32, ptr %error, align 4, !dbg !4613
  store i32 %8, ptr %retval, align 4, !dbg !4614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4614

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4615
  br label %cleanup, !dbg !4615

cleanup:                                          ; preds = %if.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #8, !dbg !4615
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup63 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end5, !dbg !4616

if.end5:                                          ; preds = %cleanup.cont, %entry
  %9 = load i32, ptr %ia_valid, align 4, !dbg !4617
  %and6 = and i32 %9, 512, !dbg !4619
  %tobool7 = icmp ne i32 %and6, 0, !dbg !4619
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4620

if.then8:                                         ; preds = %if.end5
  br label %kill_priv, !dbg !4621

if.end9:                                          ; preds = %if.end5
  %10 = load i32, ptr %ia_valid, align 4, !dbg !4622
  %and10 = and i32 %10, 2, !dbg !4624
  %tobool11 = icmp ne i32 %and10, 0, !dbg !4624
  br i1 %tobool11, label %land.lhs.true, label %if.end14, !dbg !4625

land.lhs.true:                                    ; preds = %if.end9
  %11 = load ptr, ptr %idmap.addr, align 8, !dbg !4626
  %12 = load ptr, ptr %inode, align 8, !dbg !4627
  %13 = load ptr, ptr %attr.addr, align 8, !dbg !4628
  %14 = getelementptr inbounds %struct.iattr, ptr %13, i32 0, i32 2, !dbg !4629
  %coerce.dive = getelementptr inbounds %struct.vfsuid_t, ptr %14, i32 0, i32 0, !dbg !4630
  %15 = load i32, ptr %coerce.dive, align 8, !dbg !4630
  %call12 = call zeroext i1 @chown_ok(ptr noundef %11, ptr noundef %12, i32 %15) #9, !dbg !4630
  br i1 %call12, label %if.end14, label %if.then13, !dbg !4631

if.then13:                                        ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4, !dbg !4632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !4632

if.end14:                                         ; preds = %land.lhs.true, %if.end9
  %16 = load i32, ptr %ia_valid, align 4, !dbg !4633
  %and15 = and i32 %16, 4, !dbg !4635
  %tobool16 = icmp ne i32 %and15, 0, !dbg !4635
  br i1 %tobool16, label %land.lhs.true17, label %if.end21, !dbg !4636

land.lhs.true17:                                  ; preds = %if.end14
  %17 = load ptr, ptr %idmap.addr, align 8, !dbg !4637
  %18 = load ptr, ptr %inode, align 8, !dbg !4638
  %19 = load ptr, ptr %attr.addr, align 8, !dbg !4639
  %20 = getelementptr inbounds %struct.iattr, ptr %19, i32 0, i32 3, !dbg !4640
  %coerce.dive18 = getelementptr inbounds %struct.vfsgid_t, ptr %20, i32 0, i32 0, !dbg !4641
  %21 = load i32, ptr %coerce.dive18, align 4, !dbg !4641
  %call19 = call zeroext i1 @chgrp_ok(ptr noundef %17, ptr noundef %18, i32 %21) #9, !dbg !4641
  br i1 %call19, label %if.end21, label %if.then20, !dbg !4642

if.then20:                                        ; preds = %land.lhs.true17
  store i32 -1, ptr %retval, align 4, !dbg !4643
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !4643

if.end21:                                         ; preds = %land.lhs.true17, %if.end14
  %22 = load i32, ptr %ia_valid, align 4, !dbg !4644
  %and22 = and i32 %22, 1, !dbg !4645
  %tobool23 = icmp ne i32 %and22, 0, !dbg !4645
  br i1 %tobool23, label %if.then24, label %if.end43, !dbg !4646

if.then24:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfsgid) #8, !dbg !4647
  call void @llvm.dbg.declare(metadata ptr %vfsgid, metadata !4583, metadata !DIExpression()), !dbg !4648
  %23 = load ptr, ptr %idmap.addr, align 8, !dbg !4649
  %24 = load ptr, ptr %inode, align 8, !dbg !4651
  %call25 = call zeroext i1 @inode_owner_or_capable(ptr noundef %23, ptr noundef %24) #9, !dbg !4652
  br i1 %call25, label %if.end27, label %if.then26, !dbg !4653

if.then26:                                        ; preds = %if.then24
  store i32 -1, ptr %retval, align 4, !dbg !4654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup40, !dbg !4654

if.end27:                                         ; preds = %if.then24
  %25 = load i32, ptr %ia_valid, align 4, !dbg !4655
  %and28 = and i32 %25, 4, !dbg !4657
  %tobool29 = icmp ne i32 %and28, 0, !dbg !4657
  br i1 %tobool29, label %if.then30, label %if.else, !dbg !4658

if.then30:                                        ; preds = %if.end27
  %26 = load ptr, ptr %attr.addr, align 8, !dbg !4659
  %27 = getelementptr inbounds %struct.iattr, ptr %26, i32 0, i32 3, !dbg !4660
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %vfsgid, ptr align 4 %27, i64 4, i1 false), !dbg !4660
  br label %if.end33, !dbg !4661

if.else:                                          ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #8, !dbg !4662
  %28 = load ptr, ptr %idmap.addr, align 8, !dbg !4663
  %29 = load ptr, ptr %inode, align 8, !dbg !4664
  %call31 = call i32 @i_gid_into_vfsgid(ptr noundef %28, ptr noundef %29) #9, !dbg !4662
  %coerce.dive32 = getelementptr inbounds %struct.vfsgid_t, ptr %tmp, i32 0, i32 0, !dbg !4662
  store i32 %call31, ptr %coerce.dive32, align 4, !dbg !4662
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %vfsgid, ptr align 4 %tmp, i64 4, i1 false), !dbg !4662
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #8, !dbg !4662
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then30
  %30 = load ptr, ptr %idmap.addr, align 8, !dbg !4665
  %31 = load ptr, ptr %inode, align 8, !dbg !4667
  %coerce.dive34 = getelementptr inbounds %struct.vfsgid_t, ptr %vfsgid, i32 0, i32 0, !dbg !4668
  %32 = load i32, ptr %coerce.dive34, align 4, !dbg !4668
  %call35 = call zeroext i1 @in_group_or_capable(ptr noundef %30, ptr noundef %31, i32 %32) #9, !dbg !4668
  br i1 %call35, label %if.end39, label %if.then36, !dbg !4669

if.then36:                                        ; preds = %if.end33
  %33 = load ptr, ptr %attr.addr, align 8, !dbg !4670
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %33, i32 0, i32 1, !dbg !4671
  %34 = load i16, ptr %ia_mode, align 4, !dbg !4672
  %conv = zext i16 %34 to i32, !dbg !4672
  %and37 = and i32 %conv, -1025, !dbg !4672
  %conv38 = trunc i32 %and37 to i16, !dbg !4672
  store i16 %conv38, ptr %ia_mode, align 4, !dbg !4672
  br label %if.end39, !dbg !4670

if.end39:                                         ; preds = %if.then36, %if.end33
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4673
  br label %cleanup40, !dbg !4673

cleanup40:                                        ; preds = %if.end39, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfsgid) #8, !dbg !4673
  %cleanup.dest41 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest41, label %cleanup63 [
    i32 0, label %cleanup.cont42
  ]

cleanup.cont42:                                   ; preds = %cleanup40
  br label %if.end43, !dbg !4674

if.end43:                                         ; preds = %cleanup.cont42, %if.end21
  %35 = load i32, ptr %ia_valid, align 4, !dbg !4675
  %and44 = and i32 %35, 65920, !dbg !4677
  %tobool45 = icmp ne i32 %and44, 0, !dbg !4677
  br i1 %tobool45, label %if.then46, label %if.end50, !dbg !4678

if.then46:                                        ; preds = %if.end43
  %36 = load ptr, ptr %idmap.addr, align 8, !dbg !4679
  %37 = load ptr, ptr %inode, align 8, !dbg !4682
  %call47 = call zeroext i1 @inode_owner_or_capable(ptr noundef %36, ptr noundef %37) #9, !dbg !4683
  br i1 %call47, label %if.end49, label %if.then48, !dbg !4684

if.then48:                                        ; preds = %if.then46
  store i32 -1, ptr %retval, align 4, !dbg !4685
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !4685

if.end49:                                         ; preds = %if.then46
  br label %if.end50, !dbg !4686

if.end50:                                         ; preds = %if.end49, %if.end43
  br label %kill_priv, !dbg !4687

kill_priv:                                        ; preds = %if.end50, %if.then8
  call void @llvm.dbg.label(metadata !4586), !dbg !4688
  %38 = load i32, ptr %ia_valid, align 4, !dbg !4689
  %and51 = and i32 %38, 16384, !dbg !4690
  %tobool52 = icmp ne i32 %and51, 0, !dbg !4690
  br i1 %tobool52, label %if.then53, label %if.end62, !dbg !4691

if.then53:                                        ; preds = %kill_priv
  call void @llvm.lifetime.start.p0(i64 4, ptr %error54) #8, !dbg !4692
  call void @llvm.dbg.declare(metadata ptr %error54, metadata !4587, metadata !DIExpression()), !dbg !4693
  %39 = load ptr, ptr %idmap.addr, align 8, !dbg !4694
  %40 = load ptr, ptr %dentry.addr, align 8, !dbg !4695
  %call55 = call i32 @security_inode_killpriv(ptr noundef %39, ptr noundef %40) #9, !dbg !4696
  store i32 %call55, ptr %error54, align 4, !dbg !4697
  %41 = load i32, ptr %error54, align 4, !dbg !4698
  %tobool56 = icmp ne i32 %41, 0, !dbg !4698
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !4700

if.then57:                                        ; preds = %if.then53
  %42 = load i32, ptr %error54, align 4, !dbg !4701
  store i32 %42, ptr %retval, align 4, !dbg !4702
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup59, !dbg !4702

if.end58:                                         ; preds = %if.then53
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4703
  br label %cleanup59, !dbg !4703

cleanup59:                                        ; preds = %if.end58, %if.then57
  call void @llvm.lifetime.end.p0(i64 4, ptr %error54) #8, !dbg !4703
  %cleanup.dest60 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest60, label %cleanup63 [
    i32 0, label %cleanup.cont61
  ]

cleanup.cont61:                                   ; preds = %cleanup59
  br label %if.end62, !dbg !4704

if.end62:                                         ; preds = %cleanup.cont61, %kill_priv
  store i32 0, ptr %retval, align 4, !dbg !4705
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !4705

cleanup63:                                        ; preds = %if.end62, %cleanup59, %if.then48, %cleanup40, %if.then20, %if.then13, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ia_valid) #8, !dbg !4706
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #8, !dbg !4706
  %43 = load i32, ptr %retval, align 4, !dbg !4706
  ret i32 %43, !dbg !4706
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #4 align 16 !dbg !4707 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4711, metadata !DIExpression()), !dbg !4712
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4713
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4714
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4714
  ret ptr %1, !dbg !4715
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @inode_newsize_ok(ptr noundef %inode, i64 noundef %offset) #0 align 16 !dbg !4716 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %limit = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4720, metadata !DIExpression()), !dbg !4727
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4721, metadata !DIExpression()), !dbg !4728
  %0 = load i64, ptr %offset.addr, align 8, !dbg !4729
  %cmp = icmp slt i64 %0, 0, !dbg !4731
  br i1 %cmp, label %if.then, label %if.end, !dbg !4732

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4733
  br label %return, !dbg !4733

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !4734
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15, !dbg !4735
  %2 = load i64, ptr %i_size, align 8, !dbg !4735
  %3 = load i64, ptr %offset.addr, align 8, !dbg !4736
  %cmp1 = icmp slt i64 %2, %3, !dbg !4737
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !4738

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #8, !dbg !4739
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !4722, metadata !DIExpression()), !dbg !4740
  %call = call i64 @rlimit(i32 noundef 1) #9, !dbg !4741
  store i64 %call, ptr %limit, align 8, !dbg !4742
  %4 = load i64, ptr %limit, align 8, !dbg !4743
  %cmp3 = icmp ne i64 %4, -1, !dbg !4745
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4746

land.lhs.true:                                    ; preds = %if.then2
  %5 = load i64, ptr %offset.addr, align 8, !dbg !4747
  %6 = load i64, ptr %limit, align 8, !dbg !4748
  %cmp4 = icmp ugt i64 %5, %6, !dbg !4749
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4750

if.then5:                                         ; preds = %land.lhs.true
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4751

if.end6:                                          ; preds = %land.lhs.true, %if.then2
  %7 = load i64, ptr %offset.addr, align 8, !dbg !4752
  %8 = load ptr, ptr %inode.addr, align 8, !dbg !4754
  %i_sb = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 9, !dbg !4755
  %9 = load ptr, ptr %i_sb, align 8, !dbg !4755
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 4, !dbg !4756
  %10 = load i64, ptr %s_maxbytes, align 32, !dbg !4756
  %cmp7 = icmp sgt i64 %7, %10, !dbg !4757
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !4758

if.then8:                                         ; preds = %if.end6
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4759

if.end9:                                          ; preds = %if.end6
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4760
  br label %cleanup, !dbg !4760

cleanup:                                          ; preds = %if.then8, %if.then5, %if.end9
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #8, !dbg !4760
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %out_sig
    i32 3, label %out_big
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end12, !dbg !4761

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %inode.addr, align 8, !dbg !4762
  %i_flags = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 5, !dbg !4762
  %12 = load i32, ptr %i_flags, align 4, !dbg !4762
  %and = and i32 %12, 256, !dbg !4762
  %tobool = icmp ne i32 %and, 0, !dbg !4762
  br i1 %tobool, label %if.then10, label %if.end11, !dbg !4765

if.then10:                                        ; preds = %if.else
  store i32 -26, ptr %retval, align 4, !dbg !4766
  br label %return, !dbg !4766

if.end11:                                         ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %cleanup.cont
  store i32 0, ptr %retval, align 4, !dbg !4767
  br label %return, !dbg !4767

out_sig:                                          ; preds = %cleanup
  call void @llvm.dbg.label(metadata !4725), !dbg !4768
  %call13 = call ptr @get_current() #9, !dbg !4769
  %call14 = call i32 @send_sig(i32 noundef 25, ptr noundef %call13, i32 noundef 0) #9, !dbg !4770
  br label %out_big, !dbg !4770

out_big:                                          ; preds = %out_sig, %cleanup
  call void @llvm.dbg.label(metadata !4726), !dbg !4771
  store i32 -27, ptr %retval, align 4, !dbg !4772
  br label %return, !dbg !4772

return:                                           ; preds = %out_big, %if.end12, %if.then10, %if.then
  %13 = load i32, ptr %retval, align 4, !dbg !4773
  ret i32 %13, !dbg !4773

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @chown_ok(ptr noundef %idmap, ptr noundef %inode, i32 %ia_vfsuid.coerce) #0 align 16 !dbg !4774 {
entry:
  %retval = alloca i1, align 1
  %ia_vfsuid = alloca %struct.vfsuid_t, align 4
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %vfsuid = alloca %struct.vfsuid_t, align 4
  %agg.tmp = alloca %struct.kuid_t, align 4
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsuid_t, ptr %ia_vfsuid, i32 0, i32 0
  store i32 %ia_vfsuid.coerce, ptr %coerce.dive, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !4778, metadata !DIExpression()), !dbg !4782
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4779, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.declare(metadata ptr %ia_vfsuid, metadata !4780, metadata !DIExpression()), !dbg !4784
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfsuid) #8, !dbg !4785
  call void @llvm.dbg.declare(metadata ptr %vfsuid, metadata !4781, metadata !DIExpression()), !dbg !4786
  %0 = load ptr, ptr %idmap.addr, align 8, !dbg !4787
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !4788
  %call = call i32 @i_uid_into_vfsuid(ptr noundef %0, ptr noundef %1) #9, !dbg !4789
  %coerce.dive1 = getelementptr inbounds %struct.vfsuid_t, ptr %vfsuid, i32 0, i32 0, !dbg !4789
  store i32 %call, ptr %coerce.dive1, align 4, !dbg !4789
  br label %do.body, !dbg !4790

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4794

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4794

do.end:                                           ; preds = %do.cond
  %call2 = call ptr @get_current() #9, !dbg !4790
  %cred = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 94, !dbg !4790
  %2 = load ptr, ptr %cred, align 32, !dbg !4790
  store ptr %2, ptr %tmp, align 8, !dbg !4794
  %3 = load ptr, ptr %tmp, align 8, !dbg !4790
  %fsuid = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 7, !dbg !4796
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 8 %fsuid, i64 4, i1 false), !dbg !4796
  %coerce.dive3 = getelementptr inbounds %struct.vfsuid_t, ptr %vfsuid, i32 0, i32 0, !dbg !4797
  %4 = load i32, ptr %coerce.dive3, align 4, !dbg !4797
  %coerce.dive4 = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4797
  %5 = load i32, ptr %coerce.dive4, align 4, !dbg !4797
  %call5 = call zeroext i1 @vfsuid_eq_kuid(i32 %4, i32 %5) #9, !dbg !4797
  br i1 %call5, label %land.lhs.true, label %if.end, !dbg !4798

land.lhs.true:                                    ; preds = %do.end
  %coerce.dive6 = getelementptr inbounds %struct.vfsuid_t, ptr %ia_vfsuid, i32 0, i32 0, !dbg !4799
  %6 = load i32, ptr %coerce.dive6, align 4, !dbg !4799
  %coerce.dive7 = getelementptr inbounds %struct.vfsuid_t, ptr %vfsuid, i32 0, i32 0, !dbg !4799
  %7 = load i32, ptr %coerce.dive7, align 4, !dbg !4799
  %call8 = call zeroext i1 @vfsuid_eq(i32 %6, i32 %7) #9, !dbg !4799
  br i1 %call8, label %if.then, label %if.end, !dbg !4800

if.then:                                          ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !4801
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4801

if.end:                                           ; preds = %land.lhs.true, %do.end
  %8 = load ptr, ptr %idmap.addr, align 8, !dbg !4802
  %9 = load ptr, ptr %inode.addr, align 8, !dbg !4804
  %call9 = call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %8, ptr noundef %9, i32 noundef 0) #9, !dbg !4805
  br i1 %call9, label %if.then10, label %if.end11, !dbg !4806

if.then10:                                        ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !4807
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4807

if.end11:                                         ; preds = %if.end
  %coerce.dive12 = getelementptr inbounds %struct.vfsuid_t, ptr %vfsuid, i32 0, i32 0, !dbg !4808
  %10 = load i32, ptr %coerce.dive12, align 4, !dbg !4808
  %call13 = call zeroext i1 @vfsuid_valid(i32 %10) #9, !dbg !4808
  br i1 %call13, label %if.end17, label %land.lhs.true14, !dbg !4810

land.lhs.true14:                                  ; preds = %if.end11
  %11 = load ptr, ptr %inode.addr, align 8, !dbg !4811
  %i_sb = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 9, !dbg !4812
  %12 = load ptr, ptr %i_sb, align 8, !dbg !4812
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 48, !dbg !4813
  %13 = load ptr, ptr %s_user_ns, align 8, !dbg !4813
  %call15 = call zeroext i1 @ns_capable(ptr noundef %13, i32 noundef 0) #9, !dbg !4814
  br i1 %call15, label %if.then16, label %if.end17, !dbg !4815

if.then16:                                        ; preds = %land.lhs.true14
  store i1 true, ptr %retval, align 1, !dbg !4816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4816

if.end17:                                         ; preds = %land.lhs.true14, %if.end11
  store i1 false, ptr %retval, align 1, !dbg !4817
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4817

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfsuid) #8, !dbg !4818
  %14 = load i1, ptr %retval, align 1, !dbg !4818
  ret i1 %14, !dbg !4818
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @chgrp_ok(ptr noundef %idmap, ptr noundef %inode, i32 %ia_vfsgid.coerce) #0 align 16 !dbg !4819 {
entry:
  %retval = alloca i1, align 1
  %ia_vfsgid = alloca %struct.vfsgid_t, align 4
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %vfsgid = alloca %struct.vfsgid_t, align 4
  %vfsuid = alloca %struct.vfsuid_t, align 4
  %agg.tmp = alloca %struct.kuid_t, align 4
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsgid_t, ptr %ia_vfsgid, i32 0, i32 0
  store i32 %ia_vfsgid.coerce, ptr %coerce.dive, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !4821, metadata !DIExpression()), !dbg !4826
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4822, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.declare(metadata ptr %ia_vfsgid, metadata !4823, metadata !DIExpression()), !dbg !4828
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfsgid) #8, !dbg !4829
  call void @llvm.dbg.declare(metadata ptr %vfsgid, metadata !4824, metadata !DIExpression()), !dbg !4830
  %0 = load ptr, ptr %idmap.addr, align 8, !dbg !4831
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !4832
  %call = call i32 @i_gid_into_vfsgid(ptr noundef %0, ptr noundef %1) #9, !dbg !4833
  %coerce.dive1 = getelementptr inbounds %struct.vfsgid_t, ptr %vfsgid, i32 0, i32 0, !dbg !4833
  store i32 %call, ptr %coerce.dive1, align 4, !dbg !4833
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfsuid) #8, !dbg !4834
  call void @llvm.dbg.declare(metadata ptr %vfsuid, metadata !4825, metadata !DIExpression()), !dbg !4835
  %2 = load ptr, ptr %idmap.addr, align 8, !dbg !4836
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !4837
  %call2 = call i32 @i_uid_into_vfsuid(ptr noundef %2, ptr noundef %3) #9, !dbg !4838
  %coerce.dive3 = getelementptr inbounds %struct.vfsuid_t, ptr %vfsuid, i32 0, i32 0, !dbg !4838
  store i32 %call2, ptr %coerce.dive3, align 4, !dbg !4838
  br label %do.body, !dbg !4839

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4843

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4843

do.end:                                           ; preds = %do.cond
  %call4 = call ptr @get_current() #9, !dbg !4839
  %cred = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 94, !dbg !4839
  %4 = load ptr, ptr %cred, align 32, !dbg !4839
  store ptr %4, ptr %tmp, align 8, !dbg !4843
  %5 = load ptr, ptr %tmp, align 8, !dbg !4839
  %fsuid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 7, !dbg !4845
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 8 %fsuid, i64 4, i1 false), !dbg !4845
  %coerce.dive5 = getelementptr inbounds %struct.vfsuid_t, ptr %vfsuid, i32 0, i32 0, !dbg !4846
  %6 = load i32, ptr %coerce.dive5, align 4, !dbg !4846
  %coerce.dive6 = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4846
  %7 = load i32, ptr %coerce.dive6, align 4, !dbg !4846
  %call7 = call zeroext i1 @vfsuid_eq_kuid(i32 %6, i32 %7) #9, !dbg !4846
  br i1 %call7, label %if.then, label %if.end16, !dbg !4847

if.then:                                          ; preds = %do.end
  %coerce.dive8 = getelementptr inbounds %struct.vfsgid_t, ptr %ia_vfsgid, i32 0, i32 0, !dbg !4848
  %8 = load i32, ptr %coerce.dive8, align 4, !dbg !4848
  %coerce.dive9 = getelementptr inbounds %struct.vfsgid_t, ptr %vfsgid, i32 0, i32 0, !dbg !4848
  %9 = load i32, ptr %coerce.dive9, align 4, !dbg !4848
  %call10 = call zeroext i1 @vfsgid_eq(i32 %8, i32 %9) #9, !dbg !4848
  br i1 %call10, label %if.then11, label %if.end, !dbg !4851

if.then11:                                        ; preds = %if.then
  store i1 true, ptr %retval, align 1, !dbg !4852
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4852

if.end:                                           ; preds = %if.then
  %coerce.dive12 = getelementptr inbounds %struct.vfsgid_t, ptr %ia_vfsgid, i32 0, i32 0, !dbg !4853
  %10 = load i32, ptr %coerce.dive12, align 4, !dbg !4853
  %call13 = call i32 @vfsgid_in_group_p(i32 %10) #9, !dbg !4853
  %tobool = icmp ne i32 %call13, 0, !dbg !4853
  br i1 %tobool, label %if.then14, label %if.end15, !dbg !4855

if.then14:                                        ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !4856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4856

if.end15:                                         ; preds = %if.end
  br label %if.end16, !dbg !4857

if.end16:                                         ; preds = %if.end15, %do.end
  %11 = load ptr, ptr %idmap.addr, align 8, !dbg !4858
  %12 = load ptr, ptr %inode.addr, align 8, !dbg !4860
  %call17 = call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %11, ptr noundef %12, i32 noundef 0) #9, !dbg !4861
  br i1 %call17, label %if.then18, label %if.end19, !dbg !4862

if.then18:                                        ; preds = %if.end16
  store i1 true, ptr %retval, align 1, !dbg !4863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4863

if.end19:                                         ; preds = %if.end16
  %coerce.dive20 = getelementptr inbounds %struct.vfsgid_t, ptr %vfsgid, i32 0, i32 0, !dbg !4864
  %13 = load i32, ptr %coerce.dive20, align 4, !dbg !4864
  %call21 = call zeroext i1 @vfsgid_valid(i32 %13) #9, !dbg !4864
  br i1 %call21, label %if.end24, label %land.lhs.true, !dbg !4866

land.lhs.true:                                    ; preds = %if.end19
  %14 = load ptr, ptr %inode.addr, align 8, !dbg !4867
  %i_sb = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 9, !dbg !4868
  %15 = load ptr, ptr %i_sb, align 8, !dbg !4868
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 48, !dbg !4869
  %16 = load ptr, ptr %s_user_ns, align 8, !dbg !4869
  %call22 = call zeroext i1 @ns_capable(ptr noundef %16, i32 noundef 0) #9, !dbg !4870
  br i1 %call22, label %if.then23, label %if.end24, !dbg !4871

if.then23:                                        ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !4872
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4872

if.end24:                                         ; preds = %land.lhs.true, %if.end19
  store i1 false, ptr %retval, align 1, !dbg !4873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4873

cleanup:                                          ; preds = %if.end24, %if.then23, %if.then18, %if.then14, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfsuid) #8, !dbg !4874
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfsgid) #8, !dbg !4874
  %17 = load i1, ptr %retval, align 1, !dbg !4874
  ret i1 %17, !dbg !4874
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4875 dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4878 dso_local i32 @security_inode_killpriv(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rlimit(i32 noundef %limit) #4 align 16 !dbg !4881 {
entry:
  %limit.addr = alloca i32, align 4
  store i32 %limit, ptr %limit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %limit.addr, metadata !4885, metadata !DIExpression()), !dbg !4886
  %call = call ptr @get_current() #9, !dbg !4887
  %0 = load i32, ptr %limit.addr, align 4, !dbg !4888
  %call1 = call i64 @task_rlimit(ptr noundef %call, i32 noundef %0) #9, !dbg !4889
  ret i64 %call1, !dbg !4890
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4891 dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #7 align 16 !dbg !4894 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #8, !dbg !4905
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4899, metadata !DIExpression()), !dbg !4905
  br label %do.body, !dbg !4905

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !4906
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4901, metadata !DIExpression()), !dbg !4906
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4906
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4906
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !4905
  br label %do.cond, !dbg !4906

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4906

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #8, !dbg !4907
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4903, metadata !DIExpression()), !dbg !4907
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #10, !dbg !4907, !srcloc !4908
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4907
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4907
  %3 = inttoptr i64 %2 to ptr, !dbg !4907
  store ptr %3, ptr %tmp, align 8, !dbg !4907
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #8, !dbg !4905
  %4 = load ptr, ptr %tmp, align 8, !dbg !4907
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4905
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4905
  store ptr %5, ptr %tmp1, align 8, !dbg !4905
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #8, !dbg !4909
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4905
  ret ptr %6, !dbg !4910
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @setattr_copy(ptr noundef %idmap, ptr noundef %inode, ptr noundef %attr) #0 align 16 !dbg !4911 {
entry:
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %ia_valid = alloca i32, align 4
  %coerce = alloca %struct.timespec64, align 8
  %mode = alloca i16, align 2
  %agg.tmp = alloca %struct.vfsgid_t, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !4917, metadata !DIExpression()), !dbg !4924
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4918, metadata !DIExpression()), !dbg !4925
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4919, metadata !DIExpression()), !dbg !4926
  call void @llvm.lifetime.start.p0(i64 4, ptr %ia_valid) #8, !dbg !4927
  call void @llvm.dbg.declare(metadata ptr %ia_valid, metadata !4920, metadata !DIExpression()), !dbg !4928
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !4929
  %ia_valid1 = getelementptr inbounds %struct.iattr, ptr %0, i32 0, i32 0, !dbg !4930
  %1 = load i32, ptr %ia_valid1, align 8, !dbg !4930
  store i32 %1, ptr %ia_valid, align 4, !dbg !4928
  %2 = load ptr, ptr %idmap.addr, align 8, !dbg !4931
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !4932
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !4933
  call void @i_uid_update(ptr noundef %2, ptr noundef %3, ptr noundef %4) #9, !dbg !4934
  %5 = load ptr, ptr %idmap.addr, align 8, !dbg !4935
  %6 = load ptr, ptr %attr.addr, align 8, !dbg !4936
  %7 = load ptr, ptr %inode.addr, align 8, !dbg !4937
  call void @i_gid_update(ptr noundef %5, ptr noundef %6, ptr noundef %7) #9, !dbg !4938
  %8 = load i32, ptr %ia_valid, align 4, !dbg !4939
  %and = and i32 %8, 16, !dbg !4941
  %tobool = icmp ne i32 %and, 0, !dbg !4941
  br i1 %tobool, label %if.then, label %if.end, !dbg !4942

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %inode.addr, align 8, !dbg !4943
  %i_atime = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 16, !dbg !4944
  %10 = load ptr, ptr %attr.addr, align 8, !dbg !4945
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %10, i32 0, i32 5, !dbg !4946
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_atime, ptr align 8 %ia_atime, i64 16, i1 false), !dbg !4946
  br label %if.end, !dbg !4943

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, ptr %ia_valid, align 4, !dbg !4947
  %and2 = and i32 %11, 32, !dbg !4949
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4949
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4950

if.then4:                                         ; preds = %if.end
  %12 = load ptr, ptr %inode.addr, align 8, !dbg !4951
  %i_mtime = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 17, !dbg !4952
  %13 = load ptr, ptr %attr.addr, align 8, !dbg !4953
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %13, i32 0, i32 6, !dbg !4954
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %ia_mtime, i64 16, i1 false), !dbg !4954
  br label %if.end5, !dbg !4951

if.end5:                                          ; preds = %if.then4, %if.end
  %14 = load i32, ptr %ia_valid, align 4, !dbg !4955
  %and6 = and i32 %14, 64, !dbg !4957
  %tobool7 = icmp ne i32 %and6, 0, !dbg !4957
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4958

if.then8:                                         ; preds = %if.end5
  %15 = load ptr, ptr %inode.addr, align 8, !dbg !4959
  %16 = load ptr, ptr %attr.addr, align 8, !dbg !4960
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %16, i32 0, i32 7, !dbg !4961
  %17 = getelementptr inbounds { i64, i64 }, ptr %ia_ctime, i32 0, i32 0, !dbg !4962
  %18 = load i64, ptr %17, align 8, !dbg !4962
  %19 = getelementptr inbounds { i64, i64 }, ptr %ia_ctime, i32 0, i32 1, !dbg !4962
  %20 = load i64, ptr %19, align 8, !dbg !4962
  %call = call { i64, i64 } @inode_set_ctime_to_ts(ptr noundef %15, i64 %18, i64 %20) #9, !dbg !4962
  %21 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 0, !dbg !4962
  %22 = extractvalue { i64, i64 } %call, 0, !dbg !4962
  store i64 %22, ptr %21, align 8, !dbg !4962
  %23 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 1, !dbg !4962
  %24 = extractvalue { i64, i64 } %call, 1, !dbg !4962
  store i64 %24, ptr %23, align 8, !dbg !4962
  br label %if.end9, !dbg !4962

if.end9:                                          ; preds = %if.then8, %if.end5
  %25 = load i32, ptr %ia_valid, align 4, !dbg !4963
  %and10 = and i32 %25, 1, !dbg !4964
  %tobool11 = icmp ne i32 %and10, 0, !dbg !4964
  br i1 %tobool11, label %if.then12, label %if.end20, !dbg !4965

if.then12:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode) #8, !dbg !4966
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !4921, metadata !DIExpression()), !dbg !4967
  %26 = load ptr, ptr %attr.addr, align 8, !dbg !4968
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %26, i32 0, i32 1, !dbg !4969
  %27 = load i16, ptr %ia_mode, align 4, !dbg !4969
  store i16 %27, ptr %mode, align 2, !dbg !4967
  %28 = load ptr, ptr %idmap.addr, align 8, !dbg !4970
  %29 = load ptr, ptr %inode.addr, align 8, !dbg !4972
  %30 = load ptr, ptr %idmap.addr, align 8, !dbg !4973
  %31 = load ptr, ptr %inode.addr, align 8, !dbg !4974
  %call13 = call i32 @i_gid_into_vfsgid(ptr noundef %30, ptr noundef %31) #9, !dbg !4975
  %coerce.dive = getelementptr inbounds %struct.vfsgid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4975
  store i32 %call13, ptr %coerce.dive, align 4, !dbg !4975
  %coerce.dive14 = getelementptr inbounds %struct.vfsgid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !4976
  %32 = load i32, ptr %coerce.dive14, align 4, !dbg !4976
  %call15 = call zeroext i1 @in_group_or_capable(ptr noundef %28, ptr noundef %29, i32 %32) #9, !dbg !4976
  br i1 %call15, label %if.end19, label %if.then16, !dbg !4977

if.then16:                                        ; preds = %if.then12
  %33 = load i16, ptr %mode, align 2, !dbg !4978
  %conv = zext i16 %33 to i32, !dbg !4978
  %and17 = and i32 %conv, -1025, !dbg !4978
  %conv18 = trunc i32 %and17 to i16, !dbg !4978
  store i16 %conv18, ptr %mode, align 2, !dbg !4978
  br label %if.end19, !dbg !4979

if.end19:                                         ; preds = %if.then16, %if.then12
  %34 = load i16, ptr %mode, align 2, !dbg !4980
  %35 = load ptr, ptr %inode.addr, align 8, !dbg !4981
  %i_mode = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 0, !dbg !4982
  store i16 %34, ptr %i_mode, align 8, !dbg !4983
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode) #8, !dbg !4984
  br label %if.end20, !dbg !4985

if.end20:                                         ; preds = %if.end19, %if.end9
  call void @llvm.lifetime.end.p0(i64 4, ptr %ia_valid) #8, !dbg !4986
  ret void, !dbg !4986
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i_uid_update(ptr noundef %idmap, ptr noundef %attr, ptr noundef %inode) #4 align 16 !dbg !4987 {
entry:
  %idmap.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %tmp = alloca %struct.kuid_t, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !4991, metadata !DIExpression()), !dbg !4994
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4992, metadata !DIExpression()), !dbg !4995
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4993, metadata !DIExpression()), !dbg !4996
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !4997
  %ia_valid = getelementptr inbounds %struct.iattr, ptr %0, i32 0, i32 0, !dbg !4999
  %1 = load i32, ptr %ia_valid, align 8, !dbg !4999
  %and = and i32 %1, 2, !dbg !5000
  %tobool = icmp ne i32 %and, 0, !dbg !5000
  br i1 %tobool, label %if.then, label %if.end, !dbg !5001

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5002
  %i_uid = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 2, !dbg !5003
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #8, !dbg !5004
  %3 = load ptr, ptr %idmap.addr, align 8, !dbg !5005
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !5006
  %call = call ptr @i_user_ns(ptr noundef %4) #9, !dbg !5007
  %5 = load ptr, ptr %attr.addr, align 8, !dbg !5008
  %6 = getelementptr inbounds %struct.iattr, ptr %5, i32 0, i32 2, !dbg !5009
  %coerce.dive = getelementptr inbounds %struct.vfsuid_t, ptr %6, i32 0, i32 0, !dbg !5004
  %7 = load i32, ptr %coerce.dive, align 8, !dbg !5004
  %call1 = call i32 @from_vfsuid(ptr noundef %3, ptr noundef %call, i32 %7) #9, !dbg !5004
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %tmp, i32 0, i32 0, !dbg !5004
  store i32 %call1, ptr %coerce.dive2, align 4, !dbg !5004
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid, ptr align 4 %tmp, i64 4, i1 false), !dbg !5004
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #8, !dbg !5004
  br label %if.end, !dbg !5002

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5010
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i_gid_update(ptr noundef %idmap, ptr noundef %attr, ptr noundef %inode) #4 align 16 !dbg !5011 {
entry:
  %idmap.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %tmp = alloca %struct.kgid_t, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5013, metadata !DIExpression()), !dbg !5016
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5014, metadata !DIExpression()), !dbg !5017
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5015, metadata !DIExpression()), !dbg !5018
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !5019
  %ia_valid = getelementptr inbounds %struct.iattr, ptr %0, i32 0, i32 0, !dbg !5021
  %1 = load i32, ptr %ia_valid, align 8, !dbg !5021
  %and = and i32 %1, 4, !dbg !5022
  %tobool = icmp ne i32 %and, 0, !dbg !5022
  br i1 %tobool, label %if.then, label %if.end, !dbg !5023

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5024
  %i_gid = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 4, !dbg !5025
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #8, !dbg !5026
  %3 = load ptr, ptr %idmap.addr, align 8, !dbg !5027
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !5028
  %call = call ptr @i_user_ns(ptr noundef %4) #9, !dbg !5029
  %5 = load ptr, ptr %attr.addr, align 8, !dbg !5030
  %6 = getelementptr inbounds %struct.iattr, ptr %5, i32 0, i32 3, !dbg !5031
  %coerce.dive = getelementptr inbounds %struct.vfsgid_t, ptr %6, i32 0, i32 0, !dbg !5026
  %7 = load i32, ptr %coerce.dive, align 4, !dbg !5026
  %call1 = call i32 @from_vfsgid(ptr noundef %3, ptr noundef %call, i32 %7) #9, !dbg !5026
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %tmp, i32 0, i32 0, !dbg !5026
  store i32 %call1, ptr %coerce.dive2, align 4, !dbg !5026
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid, ptr align 4 %tmp, i64 4, i1 false), !dbg !5026
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #8, !dbg !5026
  br label %if.end, !dbg !5024

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5032
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { i64, i64 } @inode_set_ctime_to_ts(ptr noundef %inode, i64 %ts.coerce0, i64 %ts.coerce1) #4 align 16 !dbg !5033 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %ts = alloca %struct.timespec64, align 8
  %inode.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 0
  store i64 %ts.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 1
  store i64 %ts.coerce1, ptr %1, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5037, metadata !DIExpression()), !dbg !5039
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !5038, metadata !DIExpression()), !dbg !5040
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5041
  %__i_ctime = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 18, !dbg !5042
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__i_ctime, ptr align 8 %ts, i64 16, i1 false), !dbg !5043
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %ts, i64 16, i1 false), !dbg !5044
  %3 = load { i64, i64 }, ptr %retval, align 8, !dbg !5045
  ret { i64, i64 } %3, !dbg !5045
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @may_setattr(ptr noundef %idmap, ptr noundef %inode, i32 noundef %ia_valid) #0 align 16 !dbg !5046 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %ia_valid.addr = alloca i32, align 4
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5050, metadata !DIExpression()), !dbg !5054
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5051, metadata !DIExpression()), !dbg !5055
  store i32 %ia_valid, ptr %ia_valid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ia_valid.addr, metadata !5052, metadata !DIExpression()), !dbg !5056
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #8, !dbg !5057
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5053, metadata !DIExpression()), !dbg !5058
  %0 = load i32, ptr %ia_valid.addr, align 4, !dbg !5059
  %and = and i32 %0, 65543, !dbg !5061
  %tobool = icmp ne i32 %and, 0, !dbg !5061
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5062

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !5063
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 5, !dbg !5063
  %2 = load i32, ptr %i_flags, align 4, !dbg !5063
  %and1 = and i32 %2, 8, !dbg !5063
  %tobool2 = icmp ne i32 %and1, 0, !dbg !5063
  br i1 %tobool2, label %if.then6, label %lor.lhs.false, !dbg !5066

lor.lhs.false:                                    ; preds = %if.then
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !5067
  %i_flags3 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 5, !dbg !5067
  %4 = load i32, ptr %i_flags3, align 4, !dbg !5067
  %and4 = and i32 %4, 4, !dbg !5067
  %tobool5 = icmp ne i32 %and4, 0, !dbg !5067
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !5068

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  store i32 -1, ptr %retval, align 4, !dbg !5069
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5069

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end7, !dbg !5070

if.end7:                                          ; preds = %if.end, %entry
  %5 = load i32, ptr %ia_valid.addr, align 4, !dbg !5071
  %and8 = and i32 %5, 131072, !dbg !5073
  %tobool9 = icmp ne i32 %and8, 0, !dbg !5073
  br i1 %tobool9, label %if.then10, label %if.end22, !dbg !5074

if.then10:                                        ; preds = %if.end7
  %6 = load ptr, ptr %inode.addr, align 8, !dbg !5075
  %i_flags11 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 5, !dbg !5075
  %7 = load i32, ptr %i_flags11, align 4, !dbg !5075
  %and12 = and i32 %7, 8, !dbg !5075
  %tobool13 = icmp ne i32 %and12, 0, !dbg !5075
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5078

if.then14:                                        ; preds = %if.then10
  store i32 -1, ptr %retval, align 4, !dbg !5079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5079

if.end15:                                         ; preds = %if.then10
  %8 = load ptr, ptr %idmap.addr, align 8, !dbg !5080
  %9 = load ptr, ptr %inode.addr, align 8, !dbg !5082
  %call = call zeroext i1 @inode_owner_or_capable(ptr noundef %8, ptr noundef %9) #9, !dbg !5083
  br i1 %call, label %if.end21, label %if.then16, !dbg !5084

if.then16:                                        ; preds = %if.end15
  %10 = load ptr, ptr %idmap.addr, align 8, !dbg !5085
  %11 = load ptr, ptr %inode.addr, align 8, !dbg !5087
  %call17 = call i32 @inode_permission(ptr noundef %10, ptr noundef %11, i32 noundef 2) #9, !dbg !5088
  store i32 %call17, ptr %error, align 4, !dbg !5089
  %12 = load i32, ptr %error, align 4, !dbg !5090
  %tobool18 = icmp ne i32 %12, 0, !dbg !5090
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5092

if.then19:                                        ; preds = %if.then16
  %13 = load i32, ptr %error, align 4, !dbg !5093
  store i32 %13, ptr %retval, align 4, !dbg !5094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5094

if.end20:                                         ; preds = %if.then16
  br label %if.end21, !dbg !5095

if.end21:                                         ; preds = %if.end20, %if.end15
  br label %if.end22, !dbg !5096

if.end22:                                         ; preds = %if.end21, %if.end7
  store i32 0, ptr %retval, align 4, !dbg !5097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5097

cleanup:                                          ; preds = %if.end22, %if.then19, %if.then14, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #8, !dbg !5098
  %14 = load i32, ptr %retval, align 4, !dbg !5098
  ret i32 %14, !dbg !5098
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5099 dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @notify_change(ptr noundef %idmap, ptr noundef %dentry, ptr noundef %attr, ptr noundef %delegated_inode) #0 align 16 !dbg !5100 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %delegated_inode.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %mode = alloca i16, align 2
  %error = alloca i32, align 4
  %now = alloca %struct.timespec64, align 8
  %ia_valid = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp43 = alloca %struct.timespec64, align 8
  %tmp49 = alloca %struct.timespec64, align 8
  %tmp58 = alloca %struct.timespec64, align 8
  %agg.tmp = alloca %struct.vfsuid_t, align 4
  %agg.tmp160 = alloca %struct.vfsgid_t, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5105, metadata !DIExpression()), !dbg !5119
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5106, metadata !DIExpression()), !dbg !5120
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5107, metadata !DIExpression()), !dbg !5121
  store ptr %delegated_inode, ptr %delegated_inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delegated_inode.addr, metadata !5108, metadata !DIExpression()), !dbg !5122
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #8, !dbg !5123
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5109, metadata !DIExpression()), !dbg !5124
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5125
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !5126
  %1 = load ptr, ptr %d_inode, align 8, !dbg !5126
  store ptr %1, ptr %inode, align 8, !dbg !5124
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode) #8, !dbg !5127
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !5110, metadata !DIExpression()), !dbg !5128
  %2 = load ptr, ptr %inode, align 8, !dbg !5129
  %i_mode = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 0, !dbg !5130
  %3 = load i16, ptr %i_mode, align 8, !dbg !5130
  store i16 %3, ptr %mode, align 2, !dbg !5128
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #8, !dbg !5131
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5111, metadata !DIExpression()), !dbg !5132
  call void @llvm.lifetime.start.p0(i64 16, ptr %now) #8, !dbg !5133
  call void @llvm.dbg.declare(metadata ptr %now, metadata !5112, metadata !DIExpression()), !dbg !5134
  call void @llvm.lifetime.start.p0(i64 4, ptr %ia_valid) #8, !dbg !5135
  call void @llvm.dbg.declare(metadata ptr %ia_valid, metadata !5113, metadata !DIExpression()), !dbg !5136
  %4 = load ptr, ptr %attr.addr, align 8, !dbg !5137
  %ia_valid1 = getelementptr inbounds %struct.iattr, ptr %4, i32 0, i32 0, !dbg !5138
  %5 = load i32, ptr %ia_valid1, align 8, !dbg !5138
  store i32 %5, ptr %ia_valid, align 4, !dbg !5136
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !5139
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5114, metadata !DIExpression()), !dbg !5139
  %6 = load ptr, ptr %inode, align 8, !dbg !5139
  %call = call i32 @inode_is_locked(ptr noundef %6) #9, !dbg !5139
  %tobool = icmp ne i32 %call, 0, !dbg !5139
  %lnot = xor i1 %tobool, true, !dbg !5139
  %lnot2 = xor i1 %lnot, true, !dbg !5139
  %lnot3 = xor i1 %lnot2, true, !dbg !5139
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5139
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5139
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5140
  %tobool4 = icmp ne i32 %7, 0, !dbg !5140
  %lnot5 = xor i1 %tobool4, true, !dbg !5140
  %lnot7 = xor i1 %lnot5, true, !dbg !5140
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5140
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5140
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5140
  %tobool9 = icmp ne i64 %expval, 0, !dbg !5140
  br i1 %tobool9, label %if.then, label %if.end, !dbg !5139

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5140

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !5141
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5116, metadata !DIExpression()), !dbg !5141
  store i32 2307, ptr %__flags, align 4, !dbg !5141
  br label %do.body10, !dbg !5141

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !5142

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !5142

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !5141

do.body11:                                        ; preds = %do.end
  %8 = load i32, ptr %__flags, align 4, !dbg !5144
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 390, i32 %8, i64 12) #8, !dbg !5144, !srcloc !5146
  br label %do.cond12, !dbg !5144

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5144

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5141

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !5147

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5147

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !5140
  br label %do.cond17, !dbg !5141

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5141

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !5141

if.end:                                           ; preds = %do.end18, %entry
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !5139
  %tobool19 = icmp ne i32 %9, 0, !dbg !5139
  %lnot20 = xor i1 %tobool19, true, !dbg !5139
  %lnot22 = xor i1 %lnot20, true, !dbg !5139
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5139
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5139
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5139
  store i64 %expval25, ptr %tmp, align 8, !dbg !5140
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !5149
  %10 = load i64, ptr %tmp, align 8, !dbg !5139
  %11 = load ptr, ptr %idmap.addr, align 8, !dbg !5150
  %12 = load ptr, ptr %inode, align 8, !dbg !5151
  %13 = load i32, ptr %ia_valid, align 4, !dbg !5152
  %call26 = call i32 @may_setattr(ptr noundef %11, ptr noundef %12, i32 noundef %13) #9, !dbg !5153
  store i32 %call26, ptr %error, align 4, !dbg !5154
  %14 = load i32, ptr %error, align 4, !dbg !5155
  %tobool27 = icmp ne i32 %14, 0, !dbg !5155
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !5157

if.then28:                                        ; preds = %if.end
  %15 = load i32, ptr %error, align 4, !dbg !5158
  store i32 %15, ptr %retval, align 4, !dbg !5159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5159

if.end29:                                         ; preds = %if.end
  %16 = load i32, ptr %ia_valid, align 4, !dbg !5160
  %and = and i32 %16, 1, !dbg !5162
  %tobool30 = icmp ne i32 %and, 0, !dbg !5162
  br i1 %tobool30, label %if.then31, label %if.end42, !dbg !5163

if.then31:                                        ; preds = %if.end29
  %17 = load ptr, ptr %inode, align 8, !dbg !5164
  %i_mode32 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 0, !dbg !5164
  %18 = load i16, ptr %i_mode32, align 8, !dbg !5164
  %conv33 = zext i16 %18 to i32, !dbg !5164
  %and34 = and i32 %conv33, 61440, !dbg !5164
  %cmp = icmp eq i32 %and34, 40960, !dbg !5164
  br i1 %cmp, label %if.then36, label %if.end37, !dbg !5167

if.then36:                                        ; preds = %if.then31
  store i32 -95, ptr %retval, align 4, !dbg !5168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5168

if.end37:                                         ; preds = %if.then31
  %19 = load ptr, ptr %attr.addr, align 8, !dbg !5169
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %19, i32 0, i32 1, !dbg !5171
  %20 = load i16, ptr %ia_mode, align 4, !dbg !5171
  %call38 = call zeroext i1 @is_sxid(i16 noundef zeroext %20) #9, !dbg !5172
  br i1 %call38, label %if.then39, label %if.end41, !dbg !5173

if.then39:                                        ; preds = %if.end37
  %21 = load ptr, ptr %inode, align 8, !dbg !5174
  %i_flags = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 5, !dbg !5175
  %22 = load i32, ptr %i_flags, align 4, !dbg !5176
  %and40 = and i32 %22, -4097, !dbg !5176
  store i32 %and40, ptr %i_flags, align 4, !dbg !5176
  br label %if.end41, !dbg !5174

if.end41:                                         ; preds = %if.then39, %if.end37
  br label %if.end42, !dbg !5177

if.end42:                                         ; preds = %if.end41, %if.end29
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp43) #8, !dbg !5178
  %23 = load ptr, ptr %inode, align 8, !dbg !5179
  %call44 = call { i64, i64 } @current_time(ptr noundef %23) #9, !dbg !5178
  %24 = getelementptr inbounds { i64, i64 }, ptr %tmp43, i32 0, i32 0, !dbg !5178
  %25 = extractvalue { i64, i64 } %call44, 0, !dbg !5178
  store i64 %25, ptr %24, align 8, !dbg !5178
  %26 = getelementptr inbounds { i64, i64 }, ptr %tmp43, i32 0, i32 1, !dbg !5178
  %27 = extractvalue { i64, i64 } %call44, 1, !dbg !5178
  store i64 %27, ptr %26, align 8, !dbg !5178
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %now, ptr align 8 %tmp43, i64 16, i1 false), !dbg !5178
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp43) #8, !dbg !5178
  %28 = load ptr, ptr %attr.addr, align 8, !dbg !5180
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %28, i32 0, i32 7, !dbg !5181
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ia_ctime, ptr align 8 %now, i64 16, i1 false), !dbg !5182
  %29 = load i32, ptr %ia_valid, align 4, !dbg !5183
  %and45 = and i32 %29, 128, !dbg !5185
  %tobool46 = icmp ne i32 %and45, 0, !dbg !5185
  br i1 %tobool46, label %if.else, label %if.then47, !dbg !5186

if.then47:                                        ; preds = %if.end42
  %30 = load ptr, ptr %attr.addr, align 8, !dbg !5187
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %30, i32 0, i32 5, !dbg !5188
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ia_atime, ptr align 8 %now, i64 16, i1 false), !dbg !5189
  br label %if.end52, !dbg !5187

if.else:                                          ; preds = %if.end42
  %31 = load ptr, ptr %attr.addr, align 8, !dbg !5190
  %ia_atime48 = getelementptr inbounds %struct.iattr, ptr %31, i32 0, i32 5, !dbg !5191
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp49) #8, !dbg !5192
  %32 = load ptr, ptr %attr.addr, align 8, !dbg !5193
  %ia_atime50 = getelementptr inbounds %struct.iattr, ptr %32, i32 0, i32 5, !dbg !5194
  %33 = load ptr, ptr %inode, align 8, !dbg !5195
  %34 = getelementptr inbounds { i64, i64 }, ptr %ia_atime50, i32 0, i32 0, !dbg !5192
  %35 = load i64, ptr %34, align 8, !dbg !5192
  %36 = getelementptr inbounds { i64, i64 }, ptr %ia_atime50, i32 0, i32 1, !dbg !5192
  %37 = load i64, ptr %36, align 8, !dbg !5192
  %call51 = call { i64, i64 } @timestamp_truncate(i64 %35, i64 %37, ptr noundef %33) #9, !dbg !5192
  %38 = getelementptr inbounds { i64, i64 }, ptr %tmp49, i32 0, i32 0, !dbg !5192
  %39 = extractvalue { i64, i64 } %call51, 0, !dbg !5192
  store i64 %39, ptr %38, align 8, !dbg !5192
  %40 = getelementptr inbounds { i64, i64 }, ptr %tmp49, i32 0, i32 1, !dbg !5192
  %41 = extractvalue { i64, i64 } %call51, 1, !dbg !5192
  store i64 %41, ptr %40, align 8, !dbg !5192
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ia_atime48, ptr align 8 %tmp49, i64 16, i1 false), !dbg !5192
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp49) #8, !dbg !5192
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then47
  %42 = load i32, ptr %ia_valid, align 4, !dbg !5196
  %and53 = and i32 %42, 256, !dbg !5198
  %tobool54 = icmp ne i32 %and53, 0, !dbg !5198
  br i1 %tobool54, label %if.else56, label %if.then55, !dbg !5199

if.then55:                                        ; preds = %if.end52
  %43 = load ptr, ptr %attr.addr, align 8, !dbg !5200
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %43, i32 0, i32 6, !dbg !5201
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ia_mtime, ptr align 8 %now, i64 16, i1 false), !dbg !5202
  br label %if.end61, !dbg !5200

if.else56:                                        ; preds = %if.end52
  %44 = load ptr, ptr %attr.addr, align 8, !dbg !5203
  %ia_mtime57 = getelementptr inbounds %struct.iattr, ptr %44, i32 0, i32 6, !dbg !5204
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp58) #8, !dbg !5205
  %45 = load ptr, ptr %attr.addr, align 8, !dbg !5206
  %ia_mtime59 = getelementptr inbounds %struct.iattr, ptr %45, i32 0, i32 6, !dbg !5207
  %46 = load ptr, ptr %inode, align 8, !dbg !5208
  %47 = getelementptr inbounds { i64, i64 }, ptr %ia_mtime59, i32 0, i32 0, !dbg !5205
  %48 = load i64, ptr %47, align 8, !dbg !5205
  %49 = getelementptr inbounds { i64, i64 }, ptr %ia_mtime59, i32 0, i32 1, !dbg !5205
  %50 = load i64, ptr %49, align 8, !dbg !5205
  %call60 = call { i64, i64 } @timestamp_truncate(i64 %48, i64 %50, ptr noundef %46) #9, !dbg !5205
  %51 = getelementptr inbounds { i64, i64 }, ptr %tmp58, i32 0, i32 0, !dbg !5205
  %52 = extractvalue { i64, i64 } %call60, 0, !dbg !5205
  store i64 %52, ptr %51, align 8, !dbg !5205
  %53 = getelementptr inbounds { i64, i64 }, ptr %tmp58, i32 0, i32 1, !dbg !5205
  %54 = extractvalue { i64, i64 } %call60, 1, !dbg !5205
  store i64 %54, ptr %53, align 8, !dbg !5205
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ia_mtime57, ptr align 8 %tmp58, i64 16, i1 false), !dbg !5205
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp58) #8, !dbg !5205
  br label %if.end61

if.end61:                                         ; preds = %if.else56, %if.then55
  %55 = load i32, ptr %ia_valid, align 4, !dbg !5209
  %and62 = and i32 %55, 16384, !dbg !5211
  %tobool63 = icmp ne i32 %and62, 0, !dbg !5211
  br i1 %tobool63, label %if.then64, label %if.end76, !dbg !5212

if.then64:                                        ; preds = %if.end61
  %56 = load ptr, ptr %dentry.addr, align 8, !dbg !5213
  %call65 = call i32 @security_inode_need_killpriv(ptr noundef %56) #9, !dbg !5215
  store i32 %call65, ptr %error, align 4, !dbg !5216
  %57 = load i32, ptr %error, align 4, !dbg !5217
  %cmp66 = icmp slt i32 %57, 0, !dbg !5219
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !5220

if.then68:                                        ; preds = %if.then64
  %58 = load i32, ptr %error, align 4, !dbg !5221
  store i32 %58, ptr %retval, align 4, !dbg !5222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5222

if.end69:                                         ; preds = %if.then64
  %59 = load i32, ptr %error, align 4, !dbg !5223
  %cmp70 = icmp eq i32 %59, 0, !dbg !5225
  br i1 %cmp70, label %if.then72, label %if.end75, !dbg !5226

if.then72:                                        ; preds = %if.end69
  %60 = load ptr, ptr %attr.addr, align 8, !dbg !5227
  %ia_valid73 = getelementptr inbounds %struct.iattr, ptr %60, i32 0, i32 0, !dbg !5228
  %61 = load i32, ptr %ia_valid73, align 8, !dbg !5229
  %and74 = and i32 %61, -16385, !dbg !5229
  store i32 %and74, ptr %ia_valid73, align 8, !dbg !5229
  store i32 %and74, ptr %ia_valid, align 4, !dbg !5230
  br label %if.end75, !dbg !5231

if.end75:                                         ; preds = %if.then72, %if.end69
  br label %if.end76, !dbg !5232

if.end76:                                         ; preds = %if.end75, %if.end61
  %62 = load i32, ptr %ia_valid, align 4, !dbg !5233
  %and77 = and i32 %62, 6144, !dbg !5235
  %tobool78 = icmp ne i32 %and77, 0, !dbg !5235
  br i1 %tobool78, label %land.lhs.true, label %if.end91, !dbg !5236

land.lhs.true:                                    ; preds = %if.end76
  %63 = load i32, ptr %ia_valid, align 4, !dbg !5237
  %and79 = and i32 %63, 1, !dbg !5238
  %tobool80 = icmp ne i32 %and79, 0, !dbg !5238
  br i1 %tobool80, label %if.then81, label %if.end91, !dbg !5239

if.then81:                                        ; preds = %land.lhs.true
  br label %do.body82, !dbg !5240

do.body82:                                        ; preds = %if.then81
  br label %do.body83, !dbg !5241

do.body83:                                        ; preds = %do.body82
  br label %do.cond84, !dbg !5243

do.cond84:                                        ; preds = %do.body83
  br label %do.end85, !dbg !5243

do.end85:                                         ; preds = %do.cond84
  br label %do.body86, !dbg !5241

do.body86:                                        ; preds = %do.end85
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 448, i32 0, i64 12) #8, !dbg !5245, !srcloc !5247
  br label %do.cond87, !dbg !5245

do.cond87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !5245

do.end88:                                         ; preds = %do.cond87
  unreachable, !dbg !5241

do.cond89:                                        ; No predecessors!
  br label %do.end90, !dbg !5241

do.end90:                                         ; preds = %do.cond89
  br label %if.end91, !dbg !5241

if.end91:                                         ; preds = %do.end90, %land.lhs.true, %if.end76
  %64 = load i32, ptr %ia_valid, align 4, !dbg !5248
  %and92 = and i32 %64, 2048, !dbg !5250
  %tobool93 = icmp ne i32 %and92, 0, !dbg !5250
  br i1 %tobool93, label %if.then94, label %if.end106, !dbg !5251

if.then94:                                        ; preds = %if.end91
  %65 = load i16, ptr %mode, align 2, !dbg !5252
  %conv95 = zext i16 %65 to i32, !dbg !5252
  %and96 = and i32 %conv95, 2048, !dbg !5255
  %tobool97 = icmp ne i32 %and96, 0, !dbg !5255
  br i1 %tobool97, label %if.then98, label %if.end105, !dbg !5256

if.then98:                                        ; preds = %if.then94
  %66 = load ptr, ptr %attr.addr, align 8, !dbg !5257
  %ia_valid99 = getelementptr inbounds %struct.iattr, ptr %66, i32 0, i32 0, !dbg !5259
  %67 = load i32, ptr %ia_valid99, align 8, !dbg !5260
  %or = or i32 %67, 1, !dbg !5260
  store i32 %or, ptr %ia_valid99, align 8, !dbg !5260
  store i32 %or, ptr %ia_valid, align 4, !dbg !5261
  %68 = load ptr, ptr %inode, align 8, !dbg !5262
  %i_mode100 = getelementptr inbounds %struct.inode, ptr %68, i32 0, i32 0, !dbg !5263
  %69 = load i16, ptr %i_mode100, align 8, !dbg !5263
  %conv101 = zext i16 %69 to i32, !dbg !5262
  %and102 = and i32 %conv101, -2049, !dbg !5264
  %conv103 = trunc i32 %and102 to i16, !dbg !5265
  %70 = load ptr, ptr %attr.addr, align 8, !dbg !5266
  %ia_mode104 = getelementptr inbounds %struct.iattr, ptr %70, i32 0, i32 1, !dbg !5267
  store i16 %conv103, ptr %ia_mode104, align 4, !dbg !5268
  br label %if.end105, !dbg !5269

if.end105:                                        ; preds = %if.then98, %if.then94
  br label %if.end106, !dbg !5270

if.end106:                                        ; preds = %if.end105, %if.end91
  %71 = load i32, ptr %ia_valid, align 4, !dbg !5271
  %and107 = and i32 %71, 4096, !dbg !5273
  %tobool108 = icmp ne i32 %and107, 0, !dbg !5273
  br i1 %tobool108, label %if.then109, label %if.end127, !dbg !5274

if.then109:                                       ; preds = %if.end106
  %72 = load i16, ptr %mode, align 2, !dbg !5275
  %conv110 = zext i16 %72 to i32, !dbg !5275
  %and111 = and i32 %conv110, 1024, !dbg !5278
  %tobool112 = icmp ne i32 %and111, 0, !dbg !5278
  br i1 %tobool112, label %if.then113, label %if.end126, !dbg !5279

if.then113:                                       ; preds = %if.then109
  %73 = load i32, ptr %ia_valid, align 4, !dbg !5280
  %and114 = and i32 %73, 1, !dbg !5283
  %tobool115 = icmp ne i32 %and114, 0, !dbg !5283
  br i1 %tobool115, label %if.end121, label %if.then116, !dbg !5284

if.then116:                                       ; preds = %if.then113
  %74 = load ptr, ptr %attr.addr, align 8, !dbg !5285
  %ia_valid117 = getelementptr inbounds %struct.iattr, ptr %74, i32 0, i32 0, !dbg !5287
  %75 = load i32, ptr %ia_valid117, align 8, !dbg !5288
  %or118 = or i32 %75, 1, !dbg !5288
  store i32 %or118, ptr %ia_valid117, align 8, !dbg !5288
  store i32 %or118, ptr %ia_valid, align 4, !dbg !5289
  %76 = load ptr, ptr %inode, align 8, !dbg !5290
  %i_mode119 = getelementptr inbounds %struct.inode, ptr %76, i32 0, i32 0, !dbg !5291
  %77 = load i16, ptr %i_mode119, align 8, !dbg !5291
  %78 = load ptr, ptr %attr.addr, align 8, !dbg !5292
  %ia_mode120 = getelementptr inbounds %struct.iattr, ptr %78, i32 0, i32 1, !dbg !5293
  store i16 %77, ptr %ia_mode120, align 4, !dbg !5294
  br label %if.end121, !dbg !5295

if.end121:                                        ; preds = %if.then116, %if.then113
  %79 = load ptr, ptr %attr.addr, align 8, !dbg !5296
  %ia_mode122 = getelementptr inbounds %struct.iattr, ptr %79, i32 0, i32 1, !dbg !5297
  %80 = load i16, ptr %ia_mode122, align 4, !dbg !5298
  %conv123 = zext i16 %80 to i32, !dbg !5298
  %and124 = and i32 %conv123, -1025, !dbg !5298
  %conv125 = trunc i32 %and124 to i16, !dbg !5298
  store i16 %conv125, ptr %ia_mode122, align 4, !dbg !5298
  br label %if.end126, !dbg !5299

if.end126:                                        ; preds = %if.end121, %if.then109
  br label %if.end127, !dbg !5300

if.end127:                                        ; preds = %if.end126, %if.end106
  %81 = load ptr, ptr %attr.addr, align 8, !dbg !5301
  %ia_valid128 = getelementptr inbounds %struct.iattr, ptr %81, i32 0, i32 0, !dbg !5303
  %82 = load i32, ptr %ia_valid128, align 8, !dbg !5303
  %and129 = and i32 %82, -6145, !dbg !5304
  %tobool130 = icmp ne i32 %and129, 0, !dbg !5304
  br i1 %tobool130, label %if.end132, label %if.then131, !dbg !5305

if.then131:                                       ; preds = %if.end127
  store i32 0, ptr %retval, align 4, !dbg !5306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5306

if.end132:                                        ; preds = %if.end127
  %83 = load i32, ptr %ia_valid, align 4, !dbg !5307
  %and133 = and i32 %83, 2, !dbg !5309
  %tobool134 = icmp ne i32 %and133, 0, !dbg !5309
  br i1 %tobool134, label %land.lhs.true135, label %if.end138, !dbg !5310

land.lhs.true135:                                 ; preds = %if.end132
  %84 = load ptr, ptr %idmap.addr, align 8, !dbg !5311
  %85 = load ptr, ptr %inode, align 8, !dbg !5312
  %i_sb = getelementptr inbounds %struct.inode, ptr %85, i32 0, i32 9, !dbg !5313
  %86 = load ptr, ptr %i_sb, align 8, !dbg !5313
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %86, i32 0, i32 48, !dbg !5314
  %87 = load ptr, ptr %s_user_ns, align 8, !dbg !5314
  %88 = load ptr, ptr %attr.addr, align 8, !dbg !5315
  %89 = getelementptr inbounds %struct.iattr, ptr %88, i32 0, i32 2, !dbg !5316
  %coerce.dive = getelementptr inbounds %struct.vfsuid_t, ptr %89, i32 0, i32 0, !dbg !5317
  %90 = load i32, ptr %coerce.dive, align 8, !dbg !5317
  %call136 = call zeroext i1 @vfsuid_has_fsmapping(ptr noundef %84, ptr noundef %87, i32 %90) #9, !dbg !5317
  br i1 %call136, label %if.end138, label %if.then137, !dbg !5318

if.then137:                                       ; preds = %land.lhs.true135
  store i32 -75, ptr %retval, align 4, !dbg !5319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5319

if.end138:                                        ; preds = %land.lhs.true135, %if.end132
  %91 = load i32, ptr %ia_valid, align 4, !dbg !5320
  %and139 = and i32 %91, 4, !dbg !5322
  %tobool140 = icmp ne i32 %and139, 0, !dbg !5322
  br i1 %tobool140, label %land.lhs.true141, label %if.end147, !dbg !5323

land.lhs.true141:                                 ; preds = %if.end138
  %92 = load ptr, ptr %idmap.addr, align 8, !dbg !5324
  %93 = load ptr, ptr %inode, align 8, !dbg !5325
  %i_sb142 = getelementptr inbounds %struct.inode, ptr %93, i32 0, i32 9, !dbg !5326
  %94 = load ptr, ptr %i_sb142, align 8, !dbg !5326
  %s_user_ns143 = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 48, !dbg !5327
  %95 = load ptr, ptr %s_user_ns143, align 8, !dbg !5327
  %96 = load ptr, ptr %attr.addr, align 8, !dbg !5328
  %97 = getelementptr inbounds %struct.iattr, ptr %96, i32 0, i32 3, !dbg !5329
  %coerce.dive144 = getelementptr inbounds %struct.vfsgid_t, ptr %97, i32 0, i32 0, !dbg !5330
  %98 = load i32, ptr %coerce.dive144, align 4, !dbg !5330
  %call145 = call zeroext i1 @vfsgid_has_fsmapping(ptr noundef %92, ptr noundef %95, i32 %98) #9, !dbg !5330
  br i1 %call145, label %if.end147, label %if.then146, !dbg !5331

if.then146:                                       ; preds = %land.lhs.true141
  store i32 -75, ptr %retval, align 4, !dbg !5332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5332

if.end147:                                        ; preds = %land.lhs.true141, %if.end138
  %99 = load i32, ptr %ia_valid, align 4, !dbg !5333
  %and148 = and i32 %99, 2, !dbg !5335
  %tobool149 = icmp ne i32 %and148, 0, !dbg !5335
  br i1 %tobool149, label %if.end156, label %land.lhs.true150, !dbg !5336

land.lhs.true150:                                 ; preds = %if.end147
  %100 = load ptr, ptr %idmap.addr, align 8, !dbg !5337
  %101 = load ptr, ptr %inode, align 8, !dbg !5338
  %call151 = call i32 @i_uid_into_vfsuid(ptr noundef %100, ptr noundef %101) #9, !dbg !5339
  %coerce.dive152 = getelementptr inbounds %struct.vfsuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5339
  store i32 %call151, ptr %coerce.dive152, align 4, !dbg !5339
  %coerce.dive153 = getelementptr inbounds %struct.vfsuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5340
  %102 = load i32, ptr %coerce.dive153, align 4, !dbg !5340
  %call154 = call zeroext i1 @vfsuid_valid(i32 %102) #9, !dbg !5340
  br i1 %call154, label %if.end156, label %if.then155, !dbg !5341

if.then155:                                       ; preds = %land.lhs.true150
  store i32 -75, ptr %retval, align 4, !dbg !5342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5342

if.end156:                                        ; preds = %land.lhs.true150, %if.end147
  %103 = load i32, ptr %ia_valid, align 4, !dbg !5343
  %and157 = and i32 %103, 4, !dbg !5345
  %tobool158 = icmp ne i32 %and157, 0, !dbg !5345
  br i1 %tobool158, label %if.end166, label %land.lhs.true159, !dbg !5346

land.lhs.true159:                                 ; preds = %if.end156
  %104 = load ptr, ptr %idmap.addr, align 8, !dbg !5347
  %105 = load ptr, ptr %inode, align 8, !dbg !5348
  %call161 = call i32 @i_gid_into_vfsgid(ptr noundef %104, ptr noundef %105) #9, !dbg !5349
  %coerce.dive162 = getelementptr inbounds %struct.vfsgid_t, ptr %agg.tmp160, i32 0, i32 0, !dbg !5349
  store i32 %call161, ptr %coerce.dive162, align 4, !dbg !5349
  %coerce.dive163 = getelementptr inbounds %struct.vfsgid_t, ptr %agg.tmp160, i32 0, i32 0, !dbg !5350
  %106 = load i32, ptr %coerce.dive163, align 4, !dbg !5350
  %call164 = call zeroext i1 @vfsgid_valid(i32 %106) #9, !dbg !5350
  br i1 %call164, label %if.end166, label %if.then165, !dbg !5351

if.then165:                                       ; preds = %land.lhs.true159
  store i32 -75, ptr %retval, align 4, !dbg !5352
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5352

if.end166:                                        ; preds = %land.lhs.true159, %if.end156
  %107 = load ptr, ptr %idmap.addr, align 8, !dbg !5353
  %108 = load ptr, ptr %dentry.addr, align 8, !dbg !5354
  %109 = load ptr, ptr %attr.addr, align 8, !dbg !5355
  %call167 = call i32 @security_inode_setattr(ptr noundef %107, ptr noundef %108, ptr noundef %109) #9, !dbg !5356
  store i32 %call167, ptr %error, align 4, !dbg !5357
  %110 = load i32, ptr %error, align 4, !dbg !5358
  %tobool168 = icmp ne i32 %110, 0, !dbg !5358
  br i1 %tobool168, label %if.then169, label %if.end170, !dbg !5360

if.then169:                                       ; preds = %if.end166
  %111 = load i32, ptr %error, align 4, !dbg !5361
  store i32 %111, ptr %retval, align 4, !dbg !5362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5362

if.end170:                                        ; preds = %if.end166
  %112 = load ptr, ptr %inode, align 8, !dbg !5363
  %113 = load ptr, ptr %delegated_inode.addr, align 8, !dbg !5364
  %call171 = call i32 @try_break_deleg(ptr noundef %112, ptr noundef %113) #9, !dbg !5365
  store i32 %call171, ptr %error, align 4, !dbg !5366
  %114 = load i32, ptr %error, align 4, !dbg !5367
  %tobool172 = icmp ne i32 %114, 0, !dbg !5367
  br i1 %tobool172, label %if.then173, label %if.end174, !dbg !5369

if.then173:                                       ; preds = %if.end170
  %115 = load i32, ptr %error, align 4, !dbg !5370
  store i32 %115, ptr %retval, align 4, !dbg !5371
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5371

if.end174:                                        ; preds = %if.end170
  %116 = load ptr, ptr %inode, align 8, !dbg !5372
  %i_op = getelementptr inbounds %struct.inode, ptr %116, i32 0, i32 8, !dbg !5374
  %117 = load ptr, ptr %i_op, align 8, !dbg !5374
  %setattr = getelementptr inbounds %struct.inode_operations, ptr %117, i32 0, i32 13, !dbg !5375
  %118 = load ptr, ptr %setattr, align 8, !dbg !5375
  %tobool175 = icmp ne ptr %118, null, !dbg !5372
  br i1 %tobool175, label %if.then176, label %if.else180, !dbg !5376

if.then176:                                       ; preds = %if.end174
  %119 = load ptr, ptr %inode, align 8, !dbg !5377
  %i_op177 = getelementptr inbounds %struct.inode, ptr %119, i32 0, i32 8, !dbg !5378
  %120 = load ptr, ptr %i_op177, align 8, !dbg !5378
  %setattr178 = getelementptr inbounds %struct.inode_operations, ptr %120, i32 0, i32 13, !dbg !5379
  %121 = load ptr, ptr %setattr178, align 8, !dbg !5379
  %122 = load ptr, ptr %idmap.addr, align 8, !dbg !5380
  %123 = load ptr, ptr %dentry.addr, align 8, !dbg !5381
  %124 = load ptr, ptr %attr.addr, align 8, !dbg !5382
  %call179 = call i32 %121(ptr noundef %122, ptr noundef %123, ptr noundef %124) #9, !dbg !5377
  store i32 %call179, ptr %error, align 4, !dbg !5383
  br label %if.end182, !dbg !5384

if.else180:                                       ; preds = %if.end174
  %125 = load ptr, ptr %idmap.addr, align 8, !dbg !5385
  %126 = load ptr, ptr %dentry.addr, align 8, !dbg !5386
  %127 = load ptr, ptr %attr.addr, align 8, !dbg !5387
  %call181 = call i32 @simple_setattr(ptr noundef %125, ptr noundef %126, ptr noundef %127) #9, !dbg !5388
  store i32 %call181, ptr %error, align 4, !dbg !5389
  br label %if.end182

if.end182:                                        ; preds = %if.else180, %if.then176
  %128 = load i32, ptr %error, align 4, !dbg !5390
  %tobool183 = icmp ne i32 %128, 0, !dbg !5390
  br i1 %tobool183, label %if.end185, label %if.then184, !dbg !5392

if.then184:                                       ; preds = %if.end182
  %129 = load ptr, ptr %dentry.addr, align 8, !dbg !5393
  %130 = load i32, ptr %ia_valid, align 4, !dbg !5395
  call void @fsnotify_change(ptr noundef %129, i32 noundef %130) #9, !dbg !5396
  %131 = load ptr, ptr %idmap.addr, align 8, !dbg !5397
  %132 = load ptr, ptr %dentry.addr, align 8, !dbg !5398
  call void @ima_inode_post_setattr(ptr noundef %131, ptr noundef %132) #9, !dbg !5399
  %133 = load ptr, ptr %dentry.addr, align 8, !dbg !5400
  %134 = load i32, ptr %ia_valid, align 4, !dbg !5401
  call void @evm_inode_post_setattr(ptr noundef %133, i32 noundef %134) #9, !dbg !5402
  br label %if.end185, !dbg !5403

if.end185:                                        ; preds = %if.then184, %if.end182
  %135 = load i32, ptr %error, align 4, !dbg !5404
  store i32 %135, ptr %retval, align 4, !dbg !5405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5405

cleanup:                                          ; preds = %if.end185, %if.then173, %if.then169, %if.then165, %if.then155, %if.then146, %if.then137, %if.then131, %if.then68, %if.then36, %if.then28
  call void @llvm.lifetime.end.p0(i64 4, ptr %ia_valid) #8, !dbg !5406
  call void @llvm.lifetime.end.p0(i64 16, ptr %now) #8, !dbg !5406
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #8, !dbg !5406
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode) #8, !dbg !5406
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #8, !dbg !5406
  %136 = load i32, ptr %retval, align 4, !dbg !5406
  ret i32 %136, !dbg !5406
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inode_is_locked(ptr noundef %inode) #4 align 16 !dbg !5407 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5409, metadata !DIExpression()), !dbg !5410
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5411
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !5412
  %call = call i32 @rwsem_is_locked(ptr noundef %i_rwsem) #9, !dbg !5413
  ret i32 %call, !dbg !5414
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_sxid(i16 noundef zeroext %mode) #4 align 16 !dbg !5415 {
entry:
  %mode.addr = alloca i16, align 2
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5419, metadata !DIExpression()), !dbg !5420
  %0 = load i16, ptr %mode.addr, align 2, !dbg !5421
  %conv = zext i16 %0 to i32, !dbg !5421
  %and = and i32 %conv, 3072, !dbg !5422
  %tobool = icmp ne i32 %and, 0, !dbg !5421
  ret i1 %tobool, !dbg !5423
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5424 dso_local { i64, i64 } @current_time(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5427 dso_local { i64, i64 } @timestamp_truncate(i64, i64, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5430 dso_local i32 @security_inode_need_killpriv(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vfsuid_has_fsmapping(ptr noundef %idmap, ptr noundef %fs_userns, i32 %vfsuid.coerce) #4 align 16 !dbg !5431 {
entry:
  %vfsuid = alloca %struct.vfsuid_t, align 4
  %idmap.addr = alloca ptr, align 8
  %fs_userns.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsuid_t, ptr %vfsuid, i32 0, i32 0
  store i32 %vfsuid.coerce, ptr %coerce.dive, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5435, metadata !DIExpression()), !dbg !5438
  store ptr %fs_userns, ptr %fs_userns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs_userns.addr, metadata !5436, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.declare(metadata ptr %vfsuid, metadata !5437, metadata !DIExpression()), !dbg !5440
  %0 = load ptr, ptr %idmap.addr, align 8, !dbg !5441
  %1 = load ptr, ptr %fs_userns.addr, align 8, !dbg !5442
  %coerce.dive1 = getelementptr inbounds %struct.vfsuid_t, ptr %vfsuid, i32 0, i32 0, !dbg !5443
  %2 = load i32, ptr %coerce.dive1, align 4, !dbg !5443
  %call = call i32 @from_vfsuid(ptr noundef %0, ptr noundef %1, i32 %2) #9, !dbg !5443
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5443
  store i32 %call, ptr %coerce.dive2, align 4, !dbg !5443
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5444
  %3 = load i32, ptr %coerce.dive3, align 4, !dbg !5444
  %call4 = call zeroext i1 @uid_valid(i32 %3) #9, !dbg !5444
  ret i1 %call4, !dbg !5445
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vfsgid_has_fsmapping(ptr noundef %idmap, ptr noundef %fs_userns, i32 %vfsgid.coerce) #4 align 16 !dbg !5446 {
entry:
  %vfsgid = alloca %struct.vfsgid_t, align 4
  %idmap.addr = alloca ptr, align 8
  %fs_userns.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsgid_t, ptr %vfsgid, i32 0, i32 0
  store i32 %vfsgid.coerce, ptr %coerce.dive, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5450, metadata !DIExpression()), !dbg !5453
  store ptr %fs_userns, ptr %fs_userns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs_userns.addr, metadata !5451, metadata !DIExpression()), !dbg !5454
  call void @llvm.dbg.declare(metadata ptr %vfsgid, metadata !5452, metadata !DIExpression()), !dbg !5455
  %0 = load ptr, ptr %idmap.addr, align 8, !dbg !5456
  %1 = load ptr, ptr %fs_userns.addr, align 8, !dbg !5457
  %coerce.dive1 = getelementptr inbounds %struct.vfsgid_t, ptr %vfsgid, i32 0, i32 0, !dbg !5458
  %2 = load i32, ptr %coerce.dive1, align 4, !dbg !5458
  %call = call i32 @from_vfsgid(ptr noundef %0, ptr noundef %1, i32 %2) #9, !dbg !5458
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5458
  store i32 %call, ptr %coerce.dive2, align 4, !dbg !5458
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !5459
  %3 = load i32, ptr %coerce.dive3, align 4, !dbg !5459
  %call4 = call zeroext i1 @gid_valid(i32 %3) #9, !dbg !5459
  ret i1 %call4, !dbg !5460
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vfsuid_valid(i32 %uid.coerce) #4 align 16 !dbg !5461 {
entry:
  %uid = alloca %struct.vfsuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5465, metadata !DIExpression()), !dbg !5466
  %coerce.dive1 = getelementptr inbounds %struct.vfsuid_t, ptr %uid, i32 0, i32 0, !dbg !5467
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !5467
  %call = call i32 @__vfsuid_val(i32 %0) #9, !dbg !5467
  %cmp = icmp ne i32 %call, -1, !dbg !5468
  ret i1 %cmp, !dbg !5469
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i_uid_into_vfsuid(ptr noundef %idmap, ptr noundef %inode) #4 align 16 !dbg !5470 {
entry:
  %retval = alloca %struct.vfsuid_t, align 4
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5474, metadata !DIExpression()), !dbg !5476
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5475, metadata !DIExpression()), !dbg !5477
  %0 = load ptr, ptr %idmap.addr, align 8, !dbg !5478
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !5479
  %call = call ptr @i_user_ns(ptr noundef %1) #9, !dbg !5480
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5481
  %i_uid = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 2, !dbg !5482
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %i_uid, i32 0, i32 0, !dbg !5483
  %3 = load i32, ptr %coerce.dive, align 4, !dbg !5483
  %call1 = call i32 @make_vfsuid(ptr noundef %0, ptr noundef %call, i32 %3) #9, !dbg !5483
  %coerce.dive2 = getelementptr inbounds %struct.vfsuid_t, ptr %retval, i32 0, i32 0, !dbg !5483
  store i32 %call1, ptr %coerce.dive2, align 4, !dbg !5483
  %coerce.dive3 = getelementptr inbounds %struct.vfsuid_t, ptr %retval, i32 0, i32 0, !dbg !5484
  %4 = load i32, ptr %coerce.dive3, align 4, !dbg !5484
  ret i32 %4, !dbg !5484
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vfsgid_valid(i32 %gid.coerce) #4 align 16 !dbg !5485 {
entry:
  %gid = alloca %struct.vfsgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !5489, metadata !DIExpression()), !dbg !5490
  %coerce.dive1 = getelementptr inbounds %struct.vfsgid_t, ptr %gid, i32 0, i32 0, !dbg !5491
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !5491
  %call = call i32 @__vfsgid_val(i32 %0) #9, !dbg !5491
  %cmp = icmp ne i32 %call, -1, !dbg !5492
  ret i1 %cmp, !dbg !5493
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5494 dso_local i32 @security_inode_setattr(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @try_break_deleg(ptr noundef %inode, ptr noundef %delegated_inode) #4 align 16 !dbg !5495 {
entry:
  %inode.addr = alloca ptr, align 8
  %delegated_inode.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5499, metadata !DIExpression()), !dbg !5502
  store ptr %delegated_inode, ptr %delegated_inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delegated_inode.addr, metadata !5500, metadata !DIExpression()), !dbg !5503
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !5504
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5501, metadata !DIExpression()), !dbg !5505
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5506
  %call = call i32 @break_deleg(ptr noundef %0, i32 noundef 2049) #9, !dbg !5507
  store i32 %call, ptr %ret, align 4, !dbg !5508
  %1 = load i32, ptr %ret, align 4, !dbg !5509
  %cmp = icmp eq i32 %1, -11, !dbg !5511
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5512

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %delegated_inode.addr, align 8, !dbg !5513
  %tobool = icmp ne ptr %2, null, !dbg !5513
  br i1 %tobool, label %if.then, label %if.end, !dbg !5514

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !5515
  %4 = load ptr, ptr %delegated_inode.addr, align 8, !dbg !5517
  store ptr %3, ptr %4, align 8, !dbg !5518
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !5519
  call void @ihold(ptr noundef %5) #9, !dbg !5520
  br label %if.end, !dbg !5521

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i32, ptr %ret, align 4, !dbg !5522
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !5523
  ret i32 %6, !dbg !5524
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5525 dso_local i32 @simple_setattr(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_change(ptr noundef %dentry, i32 noundef %ia_valid) #4 align 16 !dbg !5526 {
entry:
  %dentry.addr = alloca ptr, align 8
  %ia_valid.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5531, metadata !DIExpression()), !dbg !5534
  store i32 %ia_valid, ptr %ia_valid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ia_valid.addr, metadata !5532, metadata !DIExpression()), !dbg !5535
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #8, !dbg !5536
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5533, metadata !DIExpression()), !dbg !5537
  store i32 0, ptr %mask, align 4, !dbg !5537
  %0 = load i32, ptr %ia_valid.addr, align 4, !dbg !5538
  %and = and i32 %0, 2, !dbg !5540
  %tobool = icmp ne i32 %and, 0, !dbg !5540
  br i1 %tobool, label %if.then, label %if.end, !dbg !5541

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %mask, align 4, !dbg !5542
  %or = or i32 %1, 4, !dbg !5542
  store i32 %or, ptr %mask, align 4, !dbg !5542
  br label %if.end, !dbg !5543

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %ia_valid.addr, align 4, !dbg !5544
  %and1 = and i32 %2, 4, !dbg !5546
  %tobool2 = icmp ne i32 %and1, 0, !dbg !5546
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !5547

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %mask, align 4, !dbg !5548
  %or4 = or i32 %3, 4, !dbg !5548
  store i32 %or4, ptr %mask, align 4, !dbg !5548
  br label %if.end5, !dbg !5549

if.end5:                                          ; preds = %if.then3, %if.end
  %4 = load i32, ptr %ia_valid.addr, align 4, !dbg !5550
  %and6 = and i32 %4, 8, !dbg !5552
  %tobool7 = icmp ne i32 %and6, 0, !dbg !5552
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !5553

if.then8:                                         ; preds = %if.end5
  %5 = load i32, ptr %mask, align 4, !dbg !5554
  %or9 = or i32 %5, 2, !dbg !5554
  store i32 %or9, ptr %mask, align 4, !dbg !5554
  br label %if.end10, !dbg !5555

if.end10:                                         ; preds = %if.then8, %if.end5
  %6 = load i32, ptr %ia_valid.addr, align 4, !dbg !5556
  %and11 = and i32 %6, 48, !dbg !5558
  %cmp = icmp eq i32 %and11, 48, !dbg !5559
  br i1 %cmp, label %if.then12, label %if.else, !dbg !5560

if.then12:                                        ; preds = %if.end10
  %7 = load i32, ptr %mask, align 4, !dbg !5561
  %or13 = or i32 %7, 4, !dbg !5561
  store i32 %or13, ptr %mask, align 4, !dbg !5561
  br label %if.end25, !dbg !5562

if.else:                                          ; preds = %if.end10
  %8 = load i32, ptr %ia_valid.addr, align 4, !dbg !5563
  %and14 = and i32 %8, 16, !dbg !5565
  %tobool15 = icmp ne i32 %and14, 0, !dbg !5565
  br i1 %tobool15, label %if.then16, label %if.else18, !dbg !5566

if.then16:                                        ; preds = %if.else
  %9 = load i32, ptr %mask, align 4, !dbg !5567
  %or17 = or i32 %9, 1, !dbg !5567
  store i32 %or17, ptr %mask, align 4, !dbg !5567
  br label %if.end24, !dbg !5568

if.else18:                                        ; preds = %if.else
  %10 = load i32, ptr %ia_valid.addr, align 4, !dbg !5569
  %and19 = and i32 %10, 32, !dbg !5571
  %tobool20 = icmp ne i32 %and19, 0, !dbg !5571
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !5572

if.then21:                                        ; preds = %if.else18
  %11 = load i32, ptr %mask, align 4, !dbg !5573
  %or22 = or i32 %11, 2, !dbg !5573
  store i32 %or22, ptr %mask, align 4, !dbg !5573
  br label %if.end23, !dbg !5574

if.end23:                                         ; preds = %if.then21, %if.else18
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then16
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then12
  %12 = load i32, ptr %ia_valid.addr, align 4, !dbg !5575
  %and26 = and i32 %12, 1, !dbg !5577
  %tobool27 = icmp ne i32 %and26, 0, !dbg !5577
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !5578

if.then28:                                        ; preds = %if.end25
  %13 = load i32, ptr %mask, align 4, !dbg !5579
  %or29 = or i32 %13, 4, !dbg !5579
  store i32 %or29, ptr %mask, align 4, !dbg !5579
  br label %if.end30, !dbg !5580

if.end30:                                         ; preds = %if.then28, %if.end25
  %14 = load i32, ptr %mask, align 4, !dbg !5581
  %tobool31 = icmp ne i32 %14, 0, !dbg !5581
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5583

if.then32:                                        ; preds = %if.end30
  %15 = load ptr, ptr %dentry.addr, align 8, !dbg !5584
  %16 = load i32, ptr %mask, align 4, !dbg !5585
  call void @fsnotify_dentry(ptr noundef %15, i32 noundef %16) #9, !dbg !5586
  br label %if.end33, !dbg !5586

if.end33:                                         ; preds = %if.then32, %if.end30
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #8, !dbg !5587
  ret void, !dbg !5587
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ima_inode_post_setattr(ptr noundef %idmap, ptr noundef %dentry) #4 align 16 !dbg !5588 {
entry:
  %idmap.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5593, metadata !DIExpression()), !dbg !5595
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5594, metadata !DIExpression()), !dbg !5596
  ret void, !dbg !5597
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @evm_inode_post_setattr(ptr noundef %dentry, i32 noundef %ia_valid) #4 align 16 !dbg !5598 {
entry:
  %dentry.addr = alloca ptr, align 8
  %ia_valid.addr = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5603, metadata !DIExpression()), !dbg !5605
  store i32 %ia_valid, ptr %ia_valid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ia_valid.addr, metadata !5604, metadata !DIExpression()), !dbg !5606
  ret void, !dbg !5607
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5608 dso_local i32 @make_vfsgid(ptr noundef, ptr noundef, i32) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @i_user_ns(ptr noundef %inode) #4 align 16 !dbg !5611 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5615, metadata !DIExpression()), !dbg !5616
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5617
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5618
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5618
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 48, !dbg !5619
  %2 = load ptr, ptr %s_user_ns, align 8, !dbg !5619
  ret ptr %2, !dbg !5620
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vfsuid_eq_kuid(i32 %vfsuid.coerce, i32 %kuid.coerce) #4 align 16 !dbg !5621 {
entry:
  %vfsuid = alloca %struct.vfsuid_t, align 4
  %kuid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsuid_t, ptr %vfsuid, i32 0, i32 0
  store i32 %vfsuid.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %vfsuid, metadata !5625, metadata !DIExpression()), !dbg !5627
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !5626, metadata !DIExpression()), !dbg !5628
  %coerce.dive2 = getelementptr inbounds %struct.vfsuid_t, ptr %vfsuid, i32 0, i32 0, !dbg !5629
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !5629
  %call = call zeroext i1 @vfsuid_valid(i32 %0) #9, !dbg !5629
  br i1 %call, label %land.rhs, label %land.end, !dbg !5630

land.rhs:                                         ; preds = %entry
  %coerce.dive3 = getelementptr inbounds %struct.vfsuid_t, ptr %vfsuid, i32 0, i32 0, !dbg !5631
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !5631
  %call4 = call i32 @__vfsuid_val(i32 %1) #9, !dbg !5631
  %coerce.dive5 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !5632
  %2 = load i32, ptr %coerce.dive5, align 4, !dbg !5632
  %call6 = call i32 @__kuid_val(i32 %2) #9, !dbg !5632
  %cmp = icmp eq i32 %call4, %call6, !dbg !5633
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !5634
  ret i1 %3, !dbg !5635
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vfsuid_eq(i32 %left.coerce, i32 %right.coerce) #4 align 16 !dbg !5636 {
entry:
  %left = alloca %struct.vfsuid_t, align 4
  %right = alloca %struct.vfsuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsuid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.vfsuid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !5640, metadata !DIExpression()), !dbg !5642
  call void @llvm.dbg.declare(metadata ptr %right, metadata !5641, metadata !DIExpression()), !dbg !5643
  %coerce.dive2 = getelementptr inbounds %struct.vfsuid_t, ptr %left, i32 0, i32 0, !dbg !5644
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !5644
  %call = call zeroext i1 @vfsuid_valid(i32 %0) #9, !dbg !5644
  br i1 %call, label %land.rhs, label %land.end, !dbg !5645

land.rhs:                                         ; preds = %entry
  %coerce.dive3 = getelementptr inbounds %struct.vfsuid_t, ptr %left, i32 0, i32 0, !dbg !5646
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !5646
  %call4 = call i32 @__vfsuid_val(i32 %1) #9, !dbg !5646
  %coerce.dive5 = getelementptr inbounds %struct.vfsuid_t, ptr %right, i32 0, i32 0, !dbg !5647
  %2 = load i32, ptr %coerce.dive5, align 4, !dbg !5647
  %call6 = call i32 @__vfsuid_val(i32 %2) #9, !dbg !5647
  %cmp = icmp eq i32 %call4, %call6, !dbg !5648
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !5649
  ret i1 %3, !dbg !5650
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5651 dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5654 dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__vfsuid_val(i32 %uid.coerce) #4 align 16 !dbg !5657 {
entry:
  %uid = alloca %struct.vfsuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5661, metadata !DIExpression()), !dbg !5662
  %val = getelementptr inbounds %struct.vfsuid_t, ptr %uid, i32 0, i32 0, !dbg !5663
  %0 = load i32, ptr %val, align 4, !dbg !5663
  ret i32 %0, !dbg !5664
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #4 align 16 !dbg !5665 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5669, metadata !DIExpression()), !dbg !5670
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5671
  %0 = load i32, ptr %val, align 4, !dbg !5671
  ret i32 %0, !dbg !5672
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vfsgid_eq(i32 %left.coerce, i32 %right.coerce) #4 align 16 !dbg !5673 {
entry:
  %left = alloca %struct.vfsgid_t, align 4
  %right = alloca %struct.vfsgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsgid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.vfsgid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !5677, metadata !DIExpression()), !dbg !5679
  call void @llvm.dbg.declare(metadata ptr %right, metadata !5678, metadata !DIExpression()), !dbg !5680
  %coerce.dive2 = getelementptr inbounds %struct.vfsgid_t, ptr %left, i32 0, i32 0, !dbg !5681
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !5681
  %call = call zeroext i1 @vfsgid_valid(i32 %0) #9, !dbg !5681
  br i1 %call, label %land.rhs, label %land.end, !dbg !5682

land.rhs:                                         ; preds = %entry
  %coerce.dive3 = getelementptr inbounds %struct.vfsgid_t, ptr %left, i32 0, i32 0, !dbg !5683
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !5683
  %call4 = call i32 @__vfsgid_val(i32 %1) #9, !dbg !5683
  %coerce.dive5 = getelementptr inbounds %struct.vfsgid_t, ptr %right, i32 0, i32 0, !dbg !5684
  %2 = load i32, ptr %coerce.dive5, align 4, !dbg !5684
  %call6 = call i32 @__vfsgid_val(i32 %2) #9, !dbg !5684
  %cmp = icmp eq i32 %call4, %call6, !dbg !5685
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !5686
  ret i1 %3, !dbg !5687
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5688 dso_local i32 @vfsgid_in_group_p(i32) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__vfsgid_val(i32 %gid.coerce) #4 align 16 !dbg !5691 {
entry:
  %gid = alloca %struct.vfsgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.vfsgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !5695, metadata !DIExpression()), !dbg !5696
  %val = getelementptr inbounds %struct.vfsgid_t, ptr %gid, i32 0, i32 0, !dbg !5697
  %0 = load i32, ptr %val, align 4, !dbg !5697
  ret i32 %0, !dbg !5698
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @task_rlimit(ptr noundef %task, i32 noundef %limit) #4 align 16 !dbg !5699 {
entry:
  %task.addr = alloca ptr, align 8
  %limit.addr = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5705, metadata !DIExpression()), !dbg !5707
  store i32 %limit, ptr %limit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %limit.addr, metadata !5706, metadata !DIExpression()), !dbg !5708
  br label %do.body, !dbg !5709

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5711

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5709
  %signal = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 104, !dbg !5709
  %1 = load ptr, ptr %signal, align 64, !dbg !5709
  %rlim = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 51, !dbg !5709
  %2 = load i32, ptr %limit.addr, align 4, !dbg !5709
  %idxprom = zext i32 %2 to i64, !dbg !5709
  %arrayidx = getelementptr [16 x %struct.rlimit], ptr %rlim, i64 0, i64 %idxprom, !dbg !5709
  %rlim_cur = getelementptr inbounds %struct.rlimit, ptr %arrayidx, i32 0, i32 0, !dbg !5709
  %3 = load volatile i64, ptr %rlim_cur, align 8, !dbg !5709
  store i64 %3, ptr %tmp, align 8, !dbg !5711
  %4 = load i64, ptr %tmp, align 8, !dbg !5709
  ret i64 %4, !dbg !5713
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5714 dso_local i32 @from_vfsuid(ptr noundef, ptr noundef, i32) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5717 dso_local i32 @from_vfsgid(ptr noundef, ptr noundef, i32) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rwsem_is_locked(ptr noundef %sem) #4 align 16 !dbg !5720 {
entry:
  %sem.addr = alloca ptr, align 8
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5725, metadata !DIExpression()), !dbg !5726
  %0 = load ptr, ptr %sem.addr, align 8, !dbg !5727
  %count = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 0, !dbg !5728
  %call = call i64 @atomic_long_read(ptr noundef %count) #9, !dbg !5729
  %cmp = icmp ne i64 %call, 0, !dbg !5730
  %conv = zext i1 %cmp to i32, !dbg !5730
  ret i32 %conv, !dbg !5731
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #7 align 16 !dbg !5732 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5739, metadata !DIExpression()), !dbg !5740
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5741
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #9, !dbg !5742
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5743
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #9, !dbg !5744
  ret i64 %call, !dbg !5745
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5746 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5754, metadata !DIExpression()), !dbg !5756
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5755, metadata !DIExpression()), !dbg !5757
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5758
  %1 = load i64, ptr %size.addr, align 8, !dbg !5759
  %conv = trunc i64 %1 to i32, !dbg !5759
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #9, !dbg !5760
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5761
  %3 = load i64, ptr %size.addr, align 8, !dbg !5761
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #9, !dbg !5761
  ret void, !dbg !5762
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #7 align 16 !dbg !5763 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5765, metadata !DIExpression()), !dbg !5766
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5767
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #9, !dbg !5768
  ret i64 %call, !dbg !5769
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !5770 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5775, metadata !DIExpression()), !dbg !5777
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5776, metadata !DIExpression()), !dbg !5778
  ret i1 true, !dbg !5779
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !5780 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5785, metadata !DIExpression()), !dbg !5788
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5786, metadata !DIExpression()), !dbg !5789
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5787, metadata !DIExpression()), !dbg !5790
  ret void, !dbg !5791
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #7 align 16 !dbg !5792 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5799, metadata !DIExpression()), !dbg !5800
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5801
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #9, !dbg !5802
  ret i64 %call, !dbg !5803
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #7 align 16 !dbg !5804 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5807, metadata !DIExpression()), !dbg !5808
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5809
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !5809
  %1 = load volatile i64, ptr %counter, align 8, !dbg !5809
  ret i64 %1, !dbg !5810
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_valid(i32 %uid.coerce) #4 align 16 !dbg !5811 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5815, metadata !DIExpression()), !dbg !5816
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5817
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !5817
  %call = call i32 @__kuid_val(i32 %0) #9, !dbg !5817
  %cmp = icmp ne i32 %call, -1, !dbg !5818
  ret i1 %cmp, !dbg !5819
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_valid(i32 %gid.coerce) #4 align 16 !dbg !5820 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !5824, metadata !DIExpression()), !dbg !5825
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !5826
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !5826
  %call = call i32 @__kgid_val(i32 %0) #9, !dbg !5826
  %cmp = icmp ne i32 %call, -1, !dbg !5827
  ret i1 %cmp, !dbg !5828
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #4 align 16 !dbg !5829 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !5833, metadata !DIExpression()), !dbg !5834
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !5835
  %0 = load i32, ptr %val, align 4, !dbg !5835
  ret i32 %0, !dbg !5836
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5837 dso_local i32 @make_vfsuid(ptr noundef, ptr noundef, i32) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @break_deleg(ptr noundef %inode, i32 noundef %mode) #4 align 16 !dbg !5840 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5844, metadata !DIExpression()), !dbg !5846
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5845, metadata !DIExpression()), !dbg !5847
  br label %do.body, !dbg !5848

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5849

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5851

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5849, !srcloc !5853
  br label %do.end2, !dbg !5849

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5854
  %i_flctx = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 40, !dbg !5856
  %1 = load ptr, ptr %i_flctx, align 8, !dbg !5856
  %tobool = icmp ne ptr %1, null, !dbg !5854
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5857

land.lhs.true:                                    ; preds = %do.end2
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5858
  %i_flctx3 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 40, !dbg !5859
  %3 = load ptr, ptr %i_flctx3, align 8, !dbg !5859
  %flc_lease = getelementptr inbounds %struct.file_lock_context, ptr %3, i32 0, i32 3, !dbg !5860
  %call = call i32 @list_empty_careful(ptr noundef %flc_lease) #9, !dbg !5861
  %tobool4 = icmp ne i32 %call, 0, !dbg !5861
  br i1 %tobool4, label %if.end, label %if.then, !dbg !5862

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !5863
  %5 = load i32, ptr %mode.addr, align 4, !dbg !5864
  %call5 = call i32 @__break_lease(ptr noundef %4, i32 noundef %5, i32 noundef 4) #9, !dbg !5865
  store i32 %call5, ptr %retval, align 4, !dbg !5866
  br label %return, !dbg !5866

if.end:                                           ; preds = %land.lhs.true, %do.end2
  store i32 0, ptr %retval, align 4, !dbg !5867
  br label %return, !dbg !5867

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !5868
  ret i32 %6, !dbg !5868
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5869 dso_local void @ihold(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty_careful(ptr noundef %head) #4 align 16 !dbg !5870 {
entry:
  %head.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %___p1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5877, metadata !DIExpression()), !dbg !5882
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #8, !dbg !5883
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5878, metadata !DIExpression()), !dbg !5884
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #8, !dbg !5885
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !5879, metadata !DIExpression()), !dbg !5885
  br label %do.body, !dbg !5886

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5888

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5888

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5886
  %next1 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5886
  %1 = load volatile ptr, ptr %next1, align 8, !dbg !5886
  store ptr %1, ptr %tmp, align 8, !dbg !5888
  %2 = load ptr, ptr %tmp, align 8, !dbg !5886
  store ptr %2, ptr %___p1, align 8, !dbg !5885
  br label %do.body2, !dbg !5885

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !5890

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5890

do.end4:                                          ; preds = %do.cond3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5885, !srcloc !5892
  %3 = load ptr, ptr %___p1, align 8, !dbg !5885
  store ptr %3, ptr %tmp5, align 8, !dbg !5885
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #8, !dbg !5893
  %4 = load ptr, ptr %tmp5, align 8, !dbg !5885
  store ptr %4, ptr %next, align 8, !dbg !5884
  %5 = load ptr, ptr %next, align 8, !dbg !5894
  %6 = load ptr, ptr %head.addr, align 8, !dbg !5895
  %call = call i32 @list_is_head(ptr noundef %5, ptr noundef %6) #9, !dbg !5896
  %tobool = icmp ne i32 %call, 0, !dbg !5896
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5897

land.rhs:                                         ; preds = %do.end4
  %7 = load ptr, ptr %next, align 8, !dbg !5898
  br label %do.body6, !dbg !5899

do.body6:                                         ; preds = %land.rhs
  br label %do.cond7, !dbg !5901

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5901

do.end8:                                          ; preds = %do.cond7
  %8 = load ptr, ptr %head.addr, align 8, !dbg !5899
  %prev = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5899
  %9 = load volatile ptr, ptr %prev, align 8, !dbg !5899
  store ptr %9, ptr %tmp9, align 8, !dbg !5901
  %10 = load ptr, ptr %tmp9, align 8, !dbg !5899
  %cmp = icmp eq ptr %7, %10, !dbg !5903
  br label %land.end

land.end:                                         ; preds = %do.end8, %do.end4
  %11 = phi i1 [ false, %do.end4 ], [ %cmp, %do.end8 ], !dbg !5904
  %land.ext = zext i1 %11 to i32, !dbg !5897
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #8, !dbg !5905
  ret i32 %land.ext, !dbg !5906
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5907 dso_local i32 @__break_lease(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_is_head(ptr noundef %list, ptr noundef %head) #4 align 16 !dbg !5910 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5914, metadata !DIExpression()), !dbg !5916
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5915, metadata !DIExpression()), !dbg !5917
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5918
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5919
  %cmp = icmp eq ptr %0, %1, !dbg !5920
  %conv = zext i1 %cmp to i32, !dbg !5920
  ret i32 %conv, !dbg !5921
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_dentry(ptr noundef %dentry, i32 noundef %mask) #4 align 16 !dbg !5922 {
entry:
  %dentry.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5926, metadata !DIExpression()), !dbg !5928
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5927, metadata !DIExpression()), !dbg !5929
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5930
  %1 = load i32, ptr %mask.addr, align 4, !dbg !5931
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !5932
  %call = call i32 @fsnotify_parent(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 3) #9, !dbg !5933
  ret void, !dbg !5934
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fsnotify_parent(ptr noundef %dentry, i32 noundef %mask, ptr noundef %data, i32 noundef %data_type) #4 align 16 !dbg !5935 {
entry:
  %retval = alloca i32, align 4
  %dentry.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %data_type.addr = alloca i32, align 4
  %inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5939, metadata !DIExpression()), !dbg !5945
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5940, metadata !DIExpression()), !dbg !5946
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5941, metadata !DIExpression()), !dbg !5947
  store i32 %data_type, ptr %data_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data_type.addr, metadata !5942, metadata !DIExpression()), !dbg !5948
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #8, !dbg !5949
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5943, metadata !DIExpression()), !dbg !5950
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5951
  %call = call ptr @d_inode(ptr noundef %0) #9, !dbg !5952
  store ptr %call, ptr %inode, align 8, !dbg !5950
  %1 = load ptr, ptr %inode, align 8, !dbg !5953
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9, !dbg !5955
  %2 = load ptr, ptr %i_sb, align 8, !dbg !5955
  %s_fsnotify_connectors = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 43, !dbg !5956
  %call1 = call i64 @atomic_long_read(ptr noundef %s_fsnotify_connectors) #9, !dbg !5957
  %cmp = icmp eq i64 %call1, 0, !dbg !5958
  br i1 %cmp, label %if.then, label %if.end, !dbg !5959

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5960
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5960

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %inode, align 8, !dbg !5961
  %i_mode = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 0, !dbg !5961
  %4 = load i16, ptr %i_mode, align 8, !dbg !5961
  %conv = zext i16 %4 to i32, !dbg !5961
  %and = and i32 %conv, 61440, !dbg !5961
  %cmp2 = icmp eq i32 %and, 16384, !dbg !5961
  br i1 %cmp2, label %if.then4, label %if.end8, !dbg !5963

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr %mask.addr, align 4, !dbg !5964
  %or = or i32 %5, 1073741824, !dbg !5964
  store i32 %or, ptr %mask.addr, align 4, !dbg !5964
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !5966
  %d_flags = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 0, !dbg !5968
  %7 = load i32, ptr %d_flags, align 8, !dbg !5968
  %and5 = and i32 %7, 16384, !dbg !5969
  %tobool = icmp ne i32 %and5, 0, !dbg !5969
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !5970

if.then6:                                         ; preds = %if.then4
  br label %notify_child, !dbg !5971

if.end7:                                          ; preds = %if.then4
  br label %if.end8, !dbg !5972

if.end8:                                          ; preds = %if.end7, %if.end
  %8 = load ptr, ptr %dentry.addr, align 8, !dbg !5973
  %9 = load ptr, ptr %dentry.addr, align 8, !dbg !5973
  %d_parent = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 3, !dbg !5973
  %10 = load ptr, ptr %d_parent, align 8, !dbg !5973
  %cmp9 = icmp eq ptr %8, %10, !dbg !5973
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5975

if.then11:                                        ; preds = %if.end8
  br label %notify_child, !dbg !5976

if.end12:                                         ; preds = %if.end8
  %11 = load ptr, ptr %dentry.addr, align 8, !dbg !5977
  %12 = load i32, ptr %mask.addr, align 4, !dbg !5978
  %13 = load ptr, ptr %data.addr, align 8, !dbg !5979
  %14 = load i32, ptr %data_type.addr, align 4, !dbg !5980
  %call13 = call i32 @__fsnotify_parent(ptr noundef %11, i32 noundef %12, ptr noundef %13, i32 noundef %14) #9, !dbg !5981
  store i32 %call13, ptr %retval, align 4, !dbg !5982
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5982

notify_child:                                     ; preds = %if.then11, %if.then6
  call void @llvm.dbg.label(metadata !5944), !dbg !5983
  %15 = load i32, ptr %mask.addr, align 4, !dbg !5984
  %16 = load ptr, ptr %data.addr, align 8, !dbg !5985
  %17 = load i32, ptr %data_type.addr, align 4, !dbg !5986
  %18 = load ptr, ptr %inode, align 8, !dbg !5987
  %call14 = call i32 @fsnotify(i32 noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef null, ptr noundef null, ptr noundef %18, i32 noundef 0) #9, !dbg !5988
  store i32 %call14, ptr %retval, align 4, !dbg !5989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5989

cleanup:                                          ; preds = %notify_child, %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #8, !dbg !5990
  %19 = load i32, ptr %retval, align 4, !dbg !5990
  ret i32 %19, !dbg !5990
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5991 dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5992 dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482}
!llvm.ident = !{!4483}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_setattr_should_drop_sgid330", scope: !2, file: !3, line: 50, type: !41, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.attr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/attr\22 -D KBUILD_BASENAME=\22attr\22 -D KBUILD_MODNAME=\22attr\22 -D __KBUILD_MODNAME=kmod_attr -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/attr.ll fs/attr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !196, globals: !4459, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/attr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e48627c8ad13665124a854414b0c8647")
!4 = !{!5, !13, !21, !26, !32, !128, !135, !143, !159, !166, !172, !177, !183, !188}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !14, line: 68, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!17 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!18 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!19 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!20 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !22, line: 65, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!25 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !27, line: 16, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "TT_NONE", value: 0)
!30 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!31 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !34, file: !33, line: 147, baseType: !7, size: 32, elements: !125)
!33 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !33, line: 135, size: 512, elements: !35)
!35 = !{!36, !40, !42, !44, !48, !49, !65, !123, !124}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !34, file: !33, line: 136, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !34, file: !33, line: 137, baseType: !41, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !34, file: !33, line: 138, baseType: !43, size: 32, offset: 128)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !34, file: !33, line: 139, baseType: !45, size: 16, offset: 160)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !46, line: 24, baseType: !47)
!46 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !34, file: !33, line: 150, baseType: !32, size: 32, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !34, file: !33, line: 151, baseType: !50, size: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !33, line: 64, baseType: !52)
!52 = !DISubroutineType(types: !53)
!53 = !{!43, !54, !43, !41, !55, !61}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 61, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !58, line: 72, baseType: !59)
!58 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !58, line: 16, baseType: !60)
!60 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !46, line: 52, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !58, line: 88, baseType: !64)
!64 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !34, file: !33, line: 152, baseType: !66, size: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !33, line: 117, size: 256, elements: !68)
!68 = !{!69, !74}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !67, file: !33, line: 118, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !46, line: 174, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 172, size: 32, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !71, file: !46, line: 173, baseType: !43, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !67, file: !33, line: 119, baseType: !75, size: 192, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !76, line: 41, baseType: !77)
!76 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !76, line: 37, size: 192, elements: !78)
!78 = !{!79, !117}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !77, file: !76, line: 38, baseType: !80, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !81, line: 29, baseType: !82)
!81 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !81, line: 17, size: 32, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !81, line: 18, baseType: !85, size: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !82, file: !81, line: 18, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !85, file: !81, line: 19, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !89, line: 14, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !88, file: !89, line: 15, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !93, line: 44, baseType: !94)
!93 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !93, line: 14, size: 32, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !93, line: 15, baseType: !97, size: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !93, line: 15, size: 32, elements: !98)
!98 = !{!99, !100, !110}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !97, file: !93, line: 16, baseType: !70, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !93, line: 24, baseType: !101, size: 16)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !97, file: !93, line: 24, size: 16, elements: !102)
!102 = !{!103, !109}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !101, file: !93, line: 25, baseType: !104, size: 8)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !105, line: 17, baseType: !106)
!105 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !107, line: 21, baseType: !108)
!107 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!108 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !101, file: !93, line: 26, baseType: !104, size: 8, offset: 8)
!110 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !93, line: 28, baseType: !111, size: 32)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !97, file: !93, line: 28, size: 32, elements: !112)
!112 = !{!113, !116}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !111, file: !93, line: 29, baseType: !114, size: 16)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !105, line: 19, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !107, line: 24, baseType: !47)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !111, file: !93, line: 30, baseType: !114, size: 16, offset: 16)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !77, file: !76, line: 39, baseType: !118, size: 128, offset: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !46, line: 190, size: 128, elements: !119)
!119 = !{!120, !122}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !118, file: !46, line: 191, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !118, file: !46, line: 191, baseType: !121, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !34, file: !33, line: 153, baseType: !41, size: 64, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !34, file: !33, line: 154, baseType: !41, size: 64, offset: 448)
!125 = !{!126, !127}
!126 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!127 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !129, line: 51, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!130 = !{!131, !132, !133, !134}
!131 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!132 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!133 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!134 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !136, line: 9, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!137 = !{!138, !139, !140, !141, !142}
!138 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!139 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!140 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!141 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!142 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !144, line: 1325, baseType: !7, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!146 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!147 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!148 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!149 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!150 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!151 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!152 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!153 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!154 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!155 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!156 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!157 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!158 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !160, line: 15, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!161 = !{!162, !163, !164, !165}
!162 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!163 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!164 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!165 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !167, line: 26, baseType: !7, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!168 = !{!169, !170, !171}
!169 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!170 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!171 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !173, line: 2052, baseType: !7, size: 32, elements: !174)
!173 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!174 = !{!175, !176}
!175 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!176 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !178, line: 54, baseType: !7, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!179 = !{!180, !181, !182}
!180 = !DIEnumerator(name: "USRQUOTA", value: 0)
!181 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!182 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !184, line: 10, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!185 = !{!186, !187}
!186 = !DIEnumerator(name: "false", value: 0)
!187 = !DIEnumerator(name: "true", value: 1)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsnotify_data_type", file: !189, line: 286, baseType: !7, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/fsnotify_backend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad4cb752e360d262cfaf7a818c344e9c")
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIEnumerator(name: "FSNOTIFY_EVENT_NONE", value: 0)
!192 = !DIEnumerator(name: "FSNOTIFY_EVENT_PATH", value: 1)
!193 = !DIEnumerator(name: "FSNOTIFY_EVENT_INODE", value: 2)
!194 = !DIEnumerator(name: "FSNOTIFY_EVENT_DENTRY", value: 3)
!195 = !DIEnumerator(name: "FSNOTIFY_EVENT_ERROR", value: 4)
!196 = !{!41, !197, !614, !617, !618, !60, !4453, !217, !224, !4456}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !200, line: 110, size: 1472, elements: !201)
!200 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!201 = !{!202, !211, !219, !226, !227, !228, !229, !230, !231, !232, !233, !242, !243, !244, !245, !246, !247, !400, !401, !402, !403, !404, !441, !598, !599, !609}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !199, file: !200, line: 111, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !204, line: 13, baseType: !205)
!204 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !46, line: 181, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 179, size: 64, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !206, file: !46, line: 180, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !105, line: 22, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !107, line: 30, baseType: !64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !199, file: !200, line: 112, baseType: !212, size: 32, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !213, line: 23, baseType: !214)
!213 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 21, size: 32, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !214, file: !213, line: 22, baseType: !217, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !46, line: 37, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !58, line: 49, baseType: !7)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !199, file: !200, line: 113, baseType: !220, size: 32, offset: 96)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !213, line: 28, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 26, size: 32, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !221, file: !213, line: 27, baseType: !224, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !46, line: 38, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !58, line: 50, baseType: !7)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !199, file: !200, line: 114, baseType: !212, size: 32, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !199, file: !200, line: 115, baseType: !220, size: 32, offset: 160)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !199, file: !200, line: 116, baseType: !212, size: 32, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !199, file: !200, line: 117, baseType: !220, size: 32, offset: 224)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !199, file: !200, line: 118, baseType: !212, size: 32, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !199, file: !200, line: 119, baseType: !220, size: 32, offset: 288)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !199, file: !200, line: 120, baseType: !7, size: 32, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !199, file: !200, line: 121, baseType: !234, size: 64, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !235, line: 24, baseType: !236)
!235 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !235, line: 24, size: 64, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !236, file: !235, line: 24, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !105, line: 23, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !107, line: 31, baseType: !241)
!241 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !199, file: !200, line: 122, baseType: !234, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !199, file: !200, line: 123, baseType: !234, size: 64, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !199, file: !200, line: 124, baseType: !234, size: 64, offset: 576)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !199, file: !200, line: 125, baseType: !234, size: 64, offset: 640)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !199, file: !200, line: 127, baseType: !108, size: 8, offset: 704)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !199, file: !200, line: 129, baseType: !248, size: 64, offset: 768)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !250, line: 195, size: 1728, elements: !251)
!250 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!251 = !{!252, !258, !263, !275, !289, !292, !293, !300, !301, !302, !303, !308, !309, !310, !312, !313, !362, !385}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !249, file: !250, line: 196, baseType: !253, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !254, line: 113, baseType: !255)
!254 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !254, line: 111, size: 32, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !255, file: !254, line: 112, baseType: !70, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !249, file: !250, line: 197, baseType: !259, size: 32, offset: 32)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !250, line: 28, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !46, line: 104, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !105, line: 20, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !107, line: 26, baseType: !43)
!263 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !250, line: 198, baseType: !264, size: 192, offset: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !249, file: !250, line: 198, size: 192, elements: !265)
!265 = !{!266, !267}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !264, file: !250, line: 199, baseType: !118, size: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !264, file: !250, line: 200, baseType: !268, size: 192, align: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !269, line: 5, size: 192, align: 64, elements: !270)
!269 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!270 = !{!271, !272, !274}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !268, file: !269, line: 6, baseType: !60, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !268, file: !269, line: 7, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !268, file: !269, line: 8, baseType: !273, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !249, file: !250, line: 205, baseType: !276, size: 320, offset: 256)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !277, line: 48, size: 320, elements: !278)
!277 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!278 = !{!279, !280, !281, !286, !288}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !276, file: !277, line: 49, baseType: !203, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !276, file: !277, line: 55, baseType: !203, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !276, file: !277, line: 57, baseType: !282, size: 32, offset: 128)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !283, line: 15, size: 32, elements: !284)
!283 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !282, file: !283, line: 20, baseType: !70, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !276, file: !277, line: 59, baseType: !287, size: 32, offset: 160)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !89, line: 23, baseType: !88)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !276, file: !277, line: 60, baseType: !118, size: 128, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !249, file: !250, line: 206, baseType: !290, size: 64, offset: 576)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !250, line: 206, flags: DIFlagFwdDecl)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !249, file: !250, line: 207, baseType: !41, size: 64, offset: 640)
!293 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !250, line: 208, baseType: !294, size: 64, offset: 704)
!294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !249, file: !250, line: 208, size: 64, elements: !295)
!295 = !{!296, !299}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !294, file: !250, line: 209, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !298, line: 8, baseType: !210)
!298 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!299 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !294, file: !250, line: 210, baseType: !297, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !249, file: !250, line: 212, baseType: !297, size: 64, offset: 768)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !249, file: !250, line: 213, baseType: !212, size: 32, offset: 832)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !249, file: !250, line: 214, baseType: !220, size: 32, offset: 864)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !249, file: !250, line: 215, baseType: !304, size: 32, offset: 896)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !250, line: 31, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !46, line: 110, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !105, line: 21, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !107, line: 27, baseType: !7)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !249, file: !250, line: 216, baseType: !47, size: 16, offset: 928)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !249, file: !250, line: 217, baseType: !47, size: 16, offset: 944)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !249, file: !250, line: 221, baseType: !311, size: 16, offset: 960)
!311 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !249, file: !250, line: 228, baseType: !60, size: 64, offset: 1024)
!313 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !250, line: 245, baseType: !314, size: 320, offset: 1088)
!314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !249, file: !250, line: 245, size: 320, elements: !315)
!315 = !{!316, !353}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !314, file: !250, line: 246, baseType: !317, size: 320)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !250, line: 114, size: 320, elements: !318)
!318 = !{!319, !320, !332, !335, !352}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !317, file: !250, line: 116, baseType: !60, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !250, line: 117, baseType: !321, size: 64, offset: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !250, line: 117, size: 64, elements: !322)
!322 = !{!323, !331}
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !250, line: 118, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !321, file: !250, line: 118, size: 64, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !324, file: !250, line: 120, baseType: !114, size: 16)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !324, file: !250, line: 121, baseType: !328, size: 48, offset: 16)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 48, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 6)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !321, file: !250, line: 127, baseType: !60, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !317, file: !250, line: 129, baseType: !333, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !250, line: 102, flags: DIFlagFwdDecl)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !317, file: !250, line: 130, baseType: !336, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !250, line: 108, size: 192, elements: !338)
!338 = !{!339, !348, !349}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !337, file: !250, line: 109, baseType: !340, size: 128, align: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !46, line: 232, size: 128, align: 64, elements: !341)
!341 = !{!342, !344}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !46, line: 233, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !340, file: !46, line: 234, baseType: !345, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !343}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !337, file: !250, line: 110, baseType: !253, size: 32, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !337, file: !250, line: 111, baseType: !350, size: 8, offset: 160)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !46, line: 35, baseType: !351)
!351 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !317, file: !250, line: 131, baseType: !37, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !250, line: 247, baseType: !354, size: 320)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !314, file: !250, line: 247, size: 320, elements: !355)
!355 = !{!356, !357, !358, !359, !360}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !354, file: !250, line: 248, baseType: !60, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !354, file: !250, line: 249, baseType: !60, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !354, file: !250, line: 250, baseType: !333, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !354, file: !250, line: 251, baseType: !336, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !354, file: !250, line: 252, baseType: !361, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !250, line: 260, baseType: !363, size: 256, offset: 1408)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !249, file: !250, line: 260, size: 256, elements: !364)
!364 = !{!365, !373}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !363, file: !250, line: 261, baseType: !366, size: 256)
!366 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !250, line: 134, size: 256, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !366, file: !250, line: 135, baseType: !41, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !366, file: !250, line: 136, baseType: !370, size: 256)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 256, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 4)
!373 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !250, line: 262, baseType: !374, size: 256)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !250, line: 262, size: 256, elements: !375)
!375 = !{!376, !377}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !374, file: !250, line: 264, baseType: !118, size: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !374, file: !250, line: 265, baseType: !378, size: 128, offset: 128)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !379, line: 22, size: 128, elements: !380)
!379 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!380 = !{!381, !384}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !378, file: !379, line: 23, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !379, line: 23, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !378, file: !379, line: 24, baseType: !60, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !249, file: !250, line: 280, baseType: !386, size: 64, offset: 1664)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !250, line: 176, size: 192, elements: !388)
!388 = !{!389, !398, !399}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !387, file: !250, line: 177, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !250, line: 171, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!43, !248, !394, !396, !248}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !387, file: !250, line: 178, baseType: !248, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !387, file: !250, line: 179, baseType: !333, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !199, file: !200, line: 130, baseType: !248, size: 64, offset: 832)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !199, file: !200, line: 131, baseType: !248, size: 64, offset: 896)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !199, file: !200, line: 132, baseType: !248, size: 64, offset: 960)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !199, file: !200, line: 135, baseType: !41, size: 64, offset: 1024)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !199, file: !200, line: 137, baseType: !405, size: 64, offset: 1088)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !407, line: 14, size: 1088, elements: !408)
!407 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!408 = !{!409, !410, !419, !420, !421, !428, !429, !430}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !406, file: !407, line: 15, baseType: !253, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !406, file: !407, line: 17, baseType: !411, size: 320, offset: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !412, line: 22, size: 320, elements: !413)
!412 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!413 = !{!414, !415, !416, !417}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !411, file: !412, line: 23, baseType: !287, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !411, file: !412, line: 24, baseType: !209, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !411, file: !412, line: 26, baseType: !118, size: 128, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !411, file: !412, line: 28, baseType: !418, size: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !406, file: !407, line: 19, baseType: !60, size: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !406, file: !407, line: 20, baseType: !203, size: 64, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !406, file: !407, line: 23, baseType: !422, size: 128, offset: 512)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !46, line: 198, size: 128, elements: !423)
!423 = !{!424, !426}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !422, file: !46, line: 199, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !422, file: !46, line: 199, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !406, file: !407, line: 24, baseType: !212, size: 32, offset: 640)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !406, file: !407, line: 29, baseType: !203, size: 64, offset: 704)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !406, file: !407, line: 36, baseType: !431, size: 320, offset: 768)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !432, line: 15, size: 320, elements: !433)
!432 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!433 = !{!434, !435, !436, !437, !438, !439, !440}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !431, file: !432, line: 16, baseType: !287, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !431, file: !432, line: 18, baseType: !43, size: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !431, file: !432, line: 19, baseType: !43, size: 32, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !431, file: !432, line: 20, baseType: !43, size: 32, offset: 96)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !431, file: !432, line: 21, baseType: !43, size: 32, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !431, file: !432, line: 22, baseType: !60, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !431, file: !432, line: 23, baseType: !60, size: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !199, file: !200, line: 138, baseType: !442, size: 64, offset: 1152)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !444, line: 68, size: 4800, elements: !445)
!444 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!445 = !{!446, !468, !469, !470, !471, !472, !473, !474, !485, !486, !487, !488, !489, !490, !502, !578, !579, !593, !596}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !443, file: !444, line: 69, baseType: !447, size: 576)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !444, line: 23, size: 576, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !447, file: !444, line: 24, baseType: !306, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !444, line: 25, baseType: !451, size: 512, offset: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !444, line: 25, size: 512, elements: !452)
!452 = !{!453, !462}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !451, file: !444, line: 26, baseType: !454, size: 480)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 480, elements: !460)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !444, line: 17, size: 96, elements: !456)
!456 = !{!457, !458, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !455, file: !444, line: 18, baseType: !306, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !455, file: !444, line: 19, baseType: !306, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !455, file: !444, line: 20, baseType: !306, size: 32, offset: 64)
!460 = !{!461}
!461 = !DISubrange(count: 5)
!462 = !DIDerivedType(tag: DW_TAG_member, scope: !451, file: !444, line: 27, baseType: !463, size: 128)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !444, line: 27, size: 128, elements: !464)
!464 = !{!465, !467}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !463, file: !444, line: 28, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !463, file: !444, line: 29, baseType: !466, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !443, file: !444, line: 70, baseType: !447, size: 576, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !443, file: !444, line: 71, baseType: !447, size: 576, offset: 1152)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !443, file: !444, line: 72, baseType: !442, size: 64, offset: 1728)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !443, file: !444, line: 73, baseType: !43, size: 32, offset: 1792)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !443, file: !444, line: 74, baseType: !212, size: 32, offset: 1824)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !443, file: !444, line: 75, baseType: !220, size: 32, offset: 1856)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !443, file: !444, line: 76, baseType: !475, size: 192, offset: 1920)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !476, line: 9, size: 192, elements: !477)
!476 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!477 = !{!478, !479, !483, !484}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !475, file: !476, line: 10, baseType: !203, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !475, file: !476, line: 11, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !476, line: 7, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !475, file: !476, line: 12, baseType: !7, size: 32, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !475, file: !476, line: 13, baseType: !253, size: 32, offset: 160)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !443, file: !444, line: 77, baseType: !60, size: 64, offset: 2112)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !443, file: !444, line: 80, baseType: !350, size: 8, offset: 2176)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !443, file: !444, line: 88, baseType: !118, size: 128, offset: 2240)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !443, file: !444, line: 89, baseType: !248, size: 64, offset: 2368)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !443, file: !444, line: 90, baseType: !276, size: 320, offset: 2432)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !443, file: !444, line: 97, baseType: !491, size: 256, offset: 2752)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !492, line: 98, size: 256, elements: !493)
!492 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!493 = !{!494, !495, !496}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !491, file: !492, line: 99, baseType: !203, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !491, file: !492, line: 100, baseType: !118, size: 128, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !491, file: !492, line: 101, baseType: !497, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !492, line: 21, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !443, file: !444, line: 99, baseType: !503, size: 768, offset: 3008)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !33, line: 199, size: 768, elements: !504)
!504 = !{!505, !510}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !503, file: !33, line: 200, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!43, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !503, file: !33, line: 201, baseType: !511, size: 704, offset: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !33, line: 193, size: 704, elements: !512)
!512 = !{!513, !574}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !511, file: !33, line: 195, baseType: !514, size: 640)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !33, line: 173, size: 640, elements: !515)
!515 = !{!516, !528, !540, !541, !561, !562, !564, !570}
!516 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !33, line: 174, baseType: !517, size: 192)
!517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !33, line: 174, size: 192, elements: !518)
!518 = !{!519, !527}
!519 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !33, line: 175, baseType: !520, size: 192)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !517, file: !33, line: 175, size: 192, elements: !521)
!521 = !{!522, !523, !524, !525, !526}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !520, file: !33, line: 176, baseType: !54, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !520, file: !33, line: 177, baseType: !43, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !520, file: !33, line: 178, baseType: !43, size: 32, offset: 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !520, file: !33, line: 179, baseType: !43, size: 32, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !520, file: !33, line: 180, baseType: !43, size: 32, offset: 160)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !517, file: !33, line: 182, baseType: !340, size: 128, align: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !514, file: !33, line: 184, baseType: !529, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !531, line: 26, size: 256, elements: !532)
!531 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !530, file: !531, line: 27, baseType: !7, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !530, file: !531, line: 28, baseType: !535, size: 192, offset: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !536, line: 43, size: 192, elements: !537)
!536 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !535, file: !536, line: 44, baseType: !287, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !535, file: !536, line: 45, baseType: !118, size: 128, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !514, file: !33, line: 185, baseType: !54, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !514, file: !33, line: 186, baseType: !542, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !33, line: 204, size: 960, elements: !544)
!544 = !{!545, !546, !550, !557}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !543, file: !33, line: 205, baseType: !503, size: 768)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !543, file: !33, line: 206, baseType: !547, size: 64, offset: 768)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!509, !542}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !543, file: !33, line: 207, baseType: !551, size: 64, offset: 832)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !554, !555, !556}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !543, file: !33, line: 209, baseType: !558, size: 64, offset: 896)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!43, !554, !54}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !514, file: !33, line: 187, baseType: !509, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !514, file: !33, line: 188, baseType: !563, size: 64, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !514, file: !33, line: 189, baseType: !565, size: 64, offset: 512)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !33, line: 157, size: 256, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !566, file: !33, line: 158, baseType: !268, size: 192, align: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !566, file: !33, line: 159, baseType: !554, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !514, file: !33, line: 190, baseType: !571, size: 64, offset: 576)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !46, line: 194, size: 64, elements: !572)
!572 = !{!573}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !571, file: !46, line: 195, baseType: !425, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !511, file: !33, line: 196, baseType: !575, size: 64, offset: 640)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !269, line: 12, size: 64, elements: !576)
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !575, file: !269, line: 13, baseType: !273, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !443, file: !444, line: 100, baseType: !554, size: 64, offset: 3776)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !443, file: !444, line: 102, baseType: !580, size: 64, offset: 3840)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !444, line: 107, size: 1152, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !591}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !581, file: !444, line: 108, baseType: !422, size: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !581, file: !444, line: 109, baseType: !442, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !581, file: !444, line: 110, baseType: !212, size: 32, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !581, file: !444, line: 111, baseType: !70, size: 32, offset: 224)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !581, file: !444, line: 112, baseType: !588, size: 640, offset: 256)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 640, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 10)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !581, file: !444, line: 113, baseType: !592, size: 256, offset: 896)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 256, elements: !371)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !443, file: !444, line: 103, baseType: !594, size: 640, offset: 3904)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 640, elements: !589)
!595 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !443, file: !444, line: 104, baseType: !597, size: 256, offset: 4544)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 256, elements: !371)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !199, file: !200, line: 139, baseType: !580, size: 64, offset: 1216)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !199, file: !200, line: 140, baseType: !600, size: 64, offset: 1280)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !200, line: 25, size: 64, elements: !602)
!602 = !{!603, !604, !605}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !601, file: !200, line: 26, baseType: !70, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !601, file: !200, line: 27, baseType: !43, size: 32, offset: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !601, file: !200, line: 28, baseType: !606, offset: 64)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, elements: !607)
!607 = !{!608}
!608 = !DISubrange(count: -1)
!609 = !DIDerivedType(tag: DW_TAG_member, scope: !199, file: !200, line: 142, baseType: !610, size: 128, offset: 1344)
!610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !199, file: !200, line: 142, size: 128, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !610, file: !200, line: 143, baseType: !43, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !610, file: !200, line: 144, baseType: !340, size: 128, align: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !60)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !620, line: 746, size: 58368, elements: !621)
!620 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!621 = !{!622, !630, !631, !632, !633, !634, !635, !636, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !707, !718, !815, !819, !822, !853, !854, !855, !856, !867, !869, !870, !871, !872, !873, !874, !885, !886, !889, !890, !891, !892, !893, !894, !895, !896, !903, !904, !911, !912, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3595, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3643, !3649, !3650, !3651, !3652, !3653, !3655, !3658, !3665, !3670, !3673, !3676, !3679, !3705, !3844, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3882, !3883, !3884, !3893, !3901, !3902, !3903, !3904, !3905, !3910, !3911, !3912, !3915, !3916, !3919, !3922, !3925, !3933, !3936, !3937, !4023, !4024, !4025, !4026, !4027, !4033, !4034, !4035, !4036, !4039, !4040, !4043, !4057, !4058, !4061, !4062, !4063, !4066, !4067, !4068, !4069, !4070, !4071, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4103, !4104, !4110, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4122, !4194, !4196, !4197, !4198, !4199, !4200, !4201, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4230, !4231, !4232}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !619, file: !620, line: 752, baseType: !623, size: 192)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !624, line: 56, size: 192, elements: !625)
!624 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!625 = !{!626, !627, !628, !629}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !624, line: 57, baseType: !60, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !623, file: !624, line: 58, baseType: !60, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !623, file: !624, line: 59, baseType: !306, size: 32, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !623, file: !624, line: 61, baseType: !306, size: 32, offset: 160)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !619, file: !620, line: 754, baseType: !7, size: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !619, file: !620, line: 767, baseType: !41, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !619, file: !620, line: 768, baseType: !253, size: 32, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !620, line: 770, baseType: !7, size: 32, offset: 352)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !619, file: !620, line: 771, baseType: !7, size: 32, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !619, file: !620, line: 774, baseType: !43, size: 32, offset: 416)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !619, file: !620, line: 775, baseType: !637, size: 128, offset: 448)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !638, line: 58, size: 128, elements: !639)
!638 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!639 = !{!640, !646, !651, !652}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !637, file: !638, line: 59, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !642, line: 60, size: 64, elements: !643)
!642 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!643 = !{!644}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !641, file: !642, line: 61, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, scope: !637, file: !638, line: 60, baseType: !647, size: 32, offset: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !637, file: !638, line: 60, size: 32, elements: !648)
!648 = !{!649, !650}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !647, file: !638, line: 61, baseType: !7, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !647, file: !638, line: 62, baseType: !70, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !637, file: !638, line: 65, baseType: !114, size: 16, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !637, file: !638, line: 65, baseType: !114, size: 16, offset: 112)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !619, file: !620, line: 776, baseType: !7, size: 32, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !619, file: !620, line: 777, baseType: !60, size: 64, offset: 640)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !619, file: !620, line: 778, baseType: !618, size: 64, offset: 704)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !619, file: !620, line: 787, baseType: !43, size: 32, offset: 768)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !619, file: !620, line: 788, baseType: !43, size: 32, offset: 800)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !619, file: !620, line: 790, baseType: !43, size: 32, offset: 832)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !619, file: !620, line: 792, baseType: !43, size: 32, offset: 864)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !619, file: !620, line: 793, baseType: !43, size: 32, offset: 896)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !619, file: !620, line: 794, baseType: !43, size: 32, offset: 928)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !619, file: !620, line: 795, baseType: !7, size: 32, offset: 960)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !619, file: !620, line: 797, baseType: !664, size: 2048, offset: 1024)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !620, line: 551, size: 2048, elements: !665)
!665 = !{!666, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !686, !689, !690, !691}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !664, file: !620, line: 553, baseType: !667, size: 128)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !620, line: 411, size: 128, elements: !668)
!668 = !{!669, !670}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !667, file: !620, line: 412, baseType: !60, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !667, file: !620, line: 413, baseType: !306, size: 32, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !664, file: !620, line: 554, baseType: !268, size: 192, align: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !664, file: !620, line: 555, baseType: !239, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !664, file: !620, line: 556, baseType: !239, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !664, file: !620, line: 558, baseType: !118, size: 128, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !664, file: !620, line: 559, baseType: !7, size: 32, offset: 576)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !664, file: !620, line: 561, baseType: !239, size: 64, offset: 640)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !664, file: !620, line: 562, baseType: !239, size: 64, offset: 704)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !664, file: !620, line: 563, baseType: !239, size: 64, offset: 768)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !664, file: !620, line: 564, baseType: !239, size: 64, offset: 832)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !664, file: !620, line: 565, baseType: !209, size: 64, offset: 896)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !664, file: !620, line: 566, baseType: !239, size: 64, offset: 960)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !664, file: !620, line: 568, baseType: !239, size: 64, offset: 1024)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !664, file: !620, line: 571, baseType: !43, size: 32, offset: 1088)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !664, file: !620, line: 572, baseType: !685, size: 64, offset: 1152)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !664, file: !620, line: 574, baseType: !687, size: 64, offset: 1216)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !620, line: 49, flags: DIFlagFwdDecl)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !664, file: !620, line: 576, baseType: !687, size: 64, offset: 1280)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !664, file: !620, line: 578, baseType: !60, size: 64, offset: 1344)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !664, file: !620, line: 588, baseType: !692, size: 512, align: 512, offset: 1536)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !620, line: 497, size: 512, align: 512, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !702}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !692, file: !620, line: 498, baseType: !239, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !692, file: !620, line: 499, baseType: !239, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !692, file: !620, line: 500, baseType: !239, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !692, file: !620, line: 501, baseType: !306, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !692, file: !620, line: 502, baseType: !306, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !692, file: !620, line: 503, baseType: !60, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !692, file: !620, line: 504, baseType: !60, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !692, file: !620, line: 505, baseType: !60, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !692, file: !620, line: 506, baseType: !703, size: 64, align: 64, offset: 448)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !620, line: 445, size: 64, align: 64, elements: !704)
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !703, file: !620, line: 446, baseType: !7, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !703, file: !620, line: 447, baseType: !7, size: 32, offset: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !619, file: !620, line: 798, baseType: !708, size: 384, offset: 3072)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !620, line: 592, size: 384, elements: !709)
!709 = !{!710, !711, !712, !713, !714, !715, !716}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !708, file: !620, line: 593, baseType: !118, size: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !708, file: !620, line: 594, baseType: !60, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !708, file: !620, line: 595, baseType: !60, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !708, file: !620, line: 596, baseType: !7, size: 32, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !708, file: !620, line: 597, baseType: !47, size: 16, offset: 288)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !708, file: !620, line: 598, baseType: !47, size: 16, offset: 304)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !708, file: !620, line: 600, baseType: !717, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !619, file: !620, line: 799, baseType: !719, size: 1792, offset: 3456)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !620, line: 610, size: 1792, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !812, !813}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !719, file: !620, line: 611, baseType: !268, size: 192, align: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !719, file: !620, line: 618, baseType: !239, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !719, file: !620, line: 619, baseType: !239, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !719, file: !620, line: 620, baseType: !239, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !719, file: !620, line: 621, baseType: !239, size: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !719, file: !620, line: 622, baseType: !239, size: 64, offset: 448)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !719, file: !620, line: 629, baseType: !209, size: 64, offset: 512)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !719, file: !620, line: 630, baseType: !239, size: 64, offset: 576)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !620, line: 631, baseType: !7, size: 32, offset: 640)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !719, file: !620, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !719, file: !620, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !719, file: !620, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !719, file: !620, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !719, file: !620, line: 662, baseType: !735, size: 512, offset: 704)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !22, line: 118, size: 512, elements: !736)
!736 = !{!737, !745, !746, !751, !808, !809, !810, !811}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !735, file: !22, line: 119, baseType: !738, size: 256)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !739, line: 9, size: 256, elements: !740)
!739 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !738, file: !739, line: 10, baseType: !268, size: 192, align: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !738, file: !739, line: 11, baseType: !743, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !744, line: 29, baseType: !209)
!744 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !735, file: !22, line: 120, baseType: !743, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !735, file: !22, line: 121, baseType: !747, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!21, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !735, file: !22, line: 122, baseType: !752, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !22, line: 159, size: 512, align: 512, elements: !754)
!754 = !{!755, !780, !781, !784, !794, !795, !803, !807}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !753, file: !22, line: 160, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !22, line: 215, size: 4608, align: 512, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !757, file: !22, line: 216, baseType: !287, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !757, file: !22, line: 217, baseType: !7, size: 32, offset: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !757, file: !22, line: 218, baseType: !7, size: 32, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !757, file: !22, line: 219, baseType: !7, size: 32, offset: 96)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !757, file: !22, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !757, file: !22, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !757, file: !22, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !757, file: !22, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !757, file: !22, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !757, file: !22, line: 226, baseType: !7, size: 32, offset: 160)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !757, file: !22, line: 227, baseType: !47, size: 16, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !757, file: !22, line: 228, baseType: !47, size: 16, offset: 208)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !757, file: !22, line: 229, baseType: !7, size: 32, offset: 224)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !757, file: !22, line: 235, baseType: !743, size: 64, offset: 256)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !757, file: !22, line: 236, baseType: !750, size: 64, offset: 320)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !757, file: !22, line: 237, baseType: !743, size: 64, offset: 384)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !757, file: !22, line: 238, baseType: !750, size: 64, offset: 448)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !757, file: !22, line: 239, baseType: !777, size: 4096, align: 512, offset: 512)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, size: 4096, align: 512, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 8)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !753, file: !22, line: 161, baseType: !7, size: 32, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !753, file: !22, line: 162, baseType: !782, size: 32, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !46, line: 32, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !58, line: 96, baseType: !43)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !753, file: !22, line: 163, baseType: !785, size: 32, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !786, line: 274, baseType: !787)
!786 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !786, line: 274, size: 32, elements: !788)
!788 = !{!789}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !787, file: !786, line: 274, baseType: !790, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !786, line: 69, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !786, line: 64, size: 32, elements: !792)
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !791, file: !786, line: 65, baseType: !7, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !753, file: !22, line: 164, baseType: !750, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !753, file: !22, line: 165, baseType: !796, size: 128, offset: 256)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !739, line: 14, size: 128, elements: !797)
!797 = !{!798}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !796, file: !739, line: 15, baseType: !799, size: 128)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !269, line: 26, size: 128, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !799, file: !269, line: 27, baseType: !575, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !799, file: !269, line: 28, baseType: !273, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !753, file: !22, line: 166, baseType: !804, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!743}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !753, file: !22, line: 167, baseType: !743, size: 64, offset: 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !735, file: !22, line: 123, baseType: !104, size: 8, offset: 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !735, file: !22, line: 124, baseType: !104, size: 8, offset: 456)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !735, file: !22, line: 125, baseType: !104, size: 8, offset: 464)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !735, file: !22, line: 126, baseType: !104, size: 8, offset: 472)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !719, file: !620, line: 671, baseType: !735, size: 512, offset: 1216)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !719, file: !620, line: 679, baseType: !814, size: 64, offset: 1728)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !619, file: !620, line: 800, baseType: !816, size: 64, offset: 5248)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !620, line: 800, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !619, file: !620, line: 809, baseType: !820, size: 64, offset: 5312)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !620, line: 70, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !619, file: !620, line: 825, baseType: !823, size: 2048, align: 512, offset: 5632)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !620, line: 509, size: 2048, align: 512, elements: !824)
!824 = !{!825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !823, file: !620, line: 511, baseType: !239, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !823, file: !620, line: 512, baseType: !239, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !823, file: !620, line: 513, baseType: !239, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !823, file: !620, line: 514, baseType: !239, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !823, file: !620, line: 515, baseType: !239, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !823, file: !620, line: 516, baseType: !239, size: 64, offset: 320)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !823, file: !620, line: 518, baseType: !239, size: 64, offset: 384)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !823, file: !620, line: 519, baseType: !239, size: 64, offset: 448)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !823, file: !620, line: 520, baseType: !209, size: 64, offset: 512)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !823, file: !620, line: 522, baseType: !239, size: 64, offset: 576)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !823, file: !620, line: 523, baseType: !239, size: 64, offset: 640)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !823, file: !620, line: 524, baseType: !209, size: 64, offset: 704)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !823, file: !620, line: 526, baseType: !209, size: 64, offset: 768)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !823, file: !620, line: 527, baseType: !239, size: 64, offset: 832)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !823, file: !620, line: 529, baseType: !239, size: 64, offset: 896)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !823, file: !620, line: 530, baseType: !239, size: 64, offset: 960)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !823, file: !620, line: 531, baseType: !239, size: 64, offset: 1024)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !823, file: !620, line: 532, baseType: !239, size: 64, offset: 1088)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !823, file: !620, line: 533, baseType: !239, size: 64, offset: 1152)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !823, file: !620, line: 535, baseType: !239, size: 64, offset: 1216)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !823, file: !620, line: 536, baseType: !239, size: 64, offset: 1280)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !823, file: !620, line: 537, baseType: !239, size: 64, offset: 1344)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !823, file: !620, line: 538, baseType: !239, size: 64, offset: 1408)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !823, file: !620, line: 539, baseType: !239, size: 64, offset: 1472)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !823, file: !620, line: 540, baseType: !239, size: 64, offset: 1536)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !823, file: !620, line: 541, baseType: !239, size: 64, offset: 1600)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !823, file: !620, line: 542, baseType: !239, size: 64, offset: 1664)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !823, file: !620, line: 543, baseType: !239, size: 64, offset: 1728)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !619, file: !620, line: 833, baseType: !7, size: 32, offset: 7680)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !619, file: !620, line: 836, baseType: !7, size: 32, offset: 7712)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !619, file: !620, line: 837, baseType: !43, size: 32, offset: 7744)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !619, file: !620, line: 838, baseType: !857, size: 64, offset: 7808)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !860, line: 19, baseType: !861)
!860 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !860, line: 19, size: 64, elements: !862)
!862 = !{!863}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !861, file: !860, line: 19, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 64, elements: !865)
!865 = !{!866}
!866 = !DISubrange(count: 1)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !619, file: !620, line: 839, baseType: !868, size: 64, offset: 7872)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !619, file: !620, line: 840, baseType: !859, size: 64, offset: 7936)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !619, file: !620, line: 841, baseType: !41, size: 64, offset: 8000)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !619, file: !620, line: 843, baseType: !47, size: 16, offset: 8064)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !619, file: !620, line: 845, baseType: !47, size: 16, offset: 8080)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !619, file: !620, line: 848, baseType: !43, size: 32, offset: 8096)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !619, file: !620, line: 849, baseType: !875, size: 32, offset: 8128)
!875 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !620, line: 718, size: 32, elements: !876)
!876 = !{!877, !884}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !875, file: !620, line: 724, baseType: !878, size: 32)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !875, file: !620, line: 719, size: 32, elements: !879)
!879 = !{!880, !881, !882, !883}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !878, file: !620, line: 720, baseType: !104, size: 8)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !878, file: !620, line: 721, baseType: !104, size: 8, offset: 8)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !878, file: !620, line: 722, baseType: !104, size: 8, offset: 16)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !878, file: !620, line: 723, baseType: !104, size: 8, offset: 24)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !875, file: !620, line: 725, baseType: !306, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !619, file: !620, line: 850, baseType: !118, size: 128, offset: 8192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !619, file: !620, line: 851, baseType: !887, size: 64, offset: 8320)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !620, line: 60, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !619, file: !620, line: 855, baseType: !60, size: 64, offset: 8384)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !619, file: !620, line: 856, baseType: !104, size: 8, offset: 8448)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !619, file: !620, line: 857, baseType: !104, size: 8, offset: 8456)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !619, file: !620, line: 858, baseType: !43, size: 32, offset: 8480)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !619, file: !620, line: 859, baseType: !118, size: 128, offset: 8512)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !619, file: !620, line: 860, baseType: !43, size: 32, offset: 8640)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !619, file: !620, line: 861, baseType: !118, size: 128, offset: 8704)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !619, file: !620, line: 873, baseType: !897, size: 256, offset: 8832)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !620, line: 376, size: 256, elements: !898)
!898 = !{!899, !900, !901, !902}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !897, file: !620, line: 381, baseType: !60, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !897, file: !620, line: 384, baseType: !241, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !897, file: !620, line: 389, baseType: !241, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !897, file: !620, line: 392, baseType: !241, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !619, file: !620, line: 875, baseType: !118, size: 128, offset: 9088)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !619, file: !620, line: 877, baseType: !905, size: 320, offset: 9216)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !906, line: 86, size: 320, elements: !907)
!906 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !905, file: !906, line: 87, baseType: !43, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !905, file: !906, line: 88, baseType: !118, size: 128, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !905, file: !906, line: 89, baseType: !118, size: 128, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !619, file: !620, line: 878, baseType: !268, size: 192, align: 64, offset: 9536)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !619, file: !620, line: 881, baseType: !913, size: 64, offset: 9728)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !144, line: 733, size: 10240, elements: !915)
!915 = !{!916, !3514}
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !914, file: !144, line: 734, baseType: !917, size: 10240)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !914, file: !144, line: 734, size: 10240, elements: !918)
!918 = !{!919, !923, !937, !3393, !3394, !3395, !3396, !3397, !3398, !3405, !3406, !3407, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3446, !3448, !3451, !3494, !3495, !3496, !3499, !3500, !3501, !3504, !3505, !3506, !3512, !3513}
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !144, line: 739, baseType: !920, size: 512, align: 512)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !917, file: !144, line: 739, size: 512, align: 512, elements: !921)
!921 = !{!922}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !920, file: !144, line: 747, baseType: !70, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !917, file: !144, line: 750, baseType: !924, size: 128, offset: 512)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !925, line: 218, size: 128, elements: !926)
!925 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!926 = !{!927, !935, !936}
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !925, line: 219, baseType: !928, size: 32)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !924, file: !925, line: 219, size: 32, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !928, file: !925, line: 220, baseType: !80, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !928, file: !925, line: 221, baseType: !932)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !925, line: 197, baseType: !933)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !925, line: 197, elements: !934)
!934 = !{}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !924, file: !925, line: 223, baseType: !7, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !924, file: !925, line: 224, baseType: !41, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !917, file: !144, line: 752, baseType: !938, size: 64, offset: 640)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!60, !941, !60, !60, !60, !60}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !173, line: 994, size: 1856, align: 64, elements: !943)
!943 = !{!944, !950, !951, !953, !954, !962, !963, !964, !1047, !1048, !1057, !3383, !3384, !3385, !3386, !3387, !3388, !3390, !3391, !3392}
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !173, line: 995, baseType: !945, size: 128)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !942, file: !173, line: 995, size: 128, elements: !946)
!946 = !{!947, !948, !949}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !945, file: !173, line: 996, baseType: !641, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !945, file: !173, line: 997, baseType: !340, size: 128, align: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !945, file: !173, line: 998, baseType: !7, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !942, file: !173, line: 1005, baseType: !80, size: 32, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !942, file: !173, line: 1006, baseType: !952, size: 32, offset: 160)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !46, line: 156, baseType: !7)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !942, file: !173, line: 1007, baseType: !203, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !942, file: !173, line: 1008, baseType: !955, size: 256, offset: 256)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !956, line: 66, size: 256, elements: !957)
!956 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!957 = !{!958, !959, !960, !961}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !955, file: !956, line: 67, baseType: !203, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !955, file: !956, line: 68, baseType: !287, size: 32, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !955, file: !956, line: 70, baseType: !282, size: 32, offset: 96)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !955, file: !956, line: 72, baseType: !118, size: 128, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !942, file: !173, line: 1009, baseType: !62, size: 64, offset: 512)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !942, file: !173, line: 1010, baseType: !7, size: 32, offset: 576)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !942, file: !173, line: 1011, baseType: !965, size: 256, offset: 640)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !173, line: 948, size: 256, elements: !966)
!966 = !{!967, !990, !1043, !1044, !1045, !1046}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !965, file: !173, line: 949, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !969, line: 34, baseType: !970)
!969 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !969, line: 25, size: 64, elements: !971)
!971 = !{!972}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !970, file: !969, line: 26, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !974, line: 27, baseType: !975)
!974 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !974, line: 13, size: 64, elements: !976)
!976 = !{!977, !989}
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !974, line: 14, baseType: !978, size: 32)
!978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !974, line: 14, size: 32, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !978, file: !974, line: 15, baseType: !70, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !974, line: 16, baseType: !982, size: 32)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !974, line: 16, size: 32, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !982, file: !974, line: 18, baseType: !104, size: 8)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !982, file: !974, line: 19, baseType: !986, size: 24, offset: 8)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 24, elements: !987)
!987 = !{!988}
!988 = !DISubrange(count: 3)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !975, file: !974, line: 26, baseType: !92, size: 32, offset: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !965, file: !173, line: 950, baseType: !991, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !136, line: 59, size: 768, elements: !993)
!993 = !{!994, !995, !996, !997, !999, !1000, !1001, !1002}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !992, file: !136, line: 61, baseType: !253, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !992, file: !136, line: 62, baseType: !7, size: 32, offset: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !992, file: !136, line: 63, baseType: !80, size: 32, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !992, file: !136, line: 65, baseType: !998, size: 256, offset: 128)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 256, elements: !371)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !992, file: !136, line: 66, baseType: !571, size: 64, offset: 384)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !992, file: !136, line: 68, baseType: !75, size: 192, offset: 448)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !992, file: !136, line: 69, baseType: !340, size: 128, align: 64, offset: 640)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !992, file: !136, line: 70, baseType: !1003, offset: 768)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, elements: !607)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !136, line: 54, size: 128, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1004, file: !136, line: 55, baseType: !43, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1004, file: !136, line: 56, baseType: !1008, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1010, line: 26, size: 1152, elements: !1011)
!1010 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1011 = !{!1012, !1026, !1027, !1028, !1029, !1033, !1034, !1035, !1038, !1039, !1040, !1041, !1042}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1009, file: !1010, line: 27, baseType: !1013, size: 192)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1014, line: 19, size: 192, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1015 = !{!1016, !1024, !1025}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1013, file: !1014, line: 20, baseType: !1017, size: 128)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1018, line: 296, size: 128, elements: !1019)
!1018 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1019 = !{!1020, !1021, !1023}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1017, file: !1018, line: 297, baseType: !80, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1017, file: !1018, line: 299, baseType: !1022, size: 32, offset: 32)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !46, line: 154, baseType: !7)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1017, file: !1018, line: 300, baseType: !41, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1013, file: !1014, line: 21, baseType: !7, size: 32, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1013, file: !1014, line: 22, baseType: !7, size: 32, offset: 160)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1009, file: !1010, line: 28, baseType: !340, size: 128, align: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1009, file: !1010, line: 29, baseType: !7, size: 32, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1009, file: !1010, line: 30, baseType: !618, size: 64, offset: 384)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1009, file: !1010, line: 31, baseType: !1030, size: 64, offset: 448)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1032, line: 11, flags: DIFlagFwdDecl)
!1032 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1009, file: !1010, line: 32, baseType: !7, size: 32, offset: 512)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1009, file: !1010, line: 33, baseType: !1008, size: 64, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1009, file: !1010, line: 35, baseType: !1036, size: 64, offset: 640)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1010, line: 17, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1009, file: !1010, line: 37, baseType: !442, size: 64, offset: 704)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1009, file: !1010, line: 38, baseType: !580, size: 64, offset: 768)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1009, file: !1010, line: 39, baseType: !43, size: 32, offset: 832)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1009, file: !1010, line: 40, baseType: !475, size: 192, offset: 896)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1009, file: !1010, line: 42, baseType: !43, size: 32, offset: 1088)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !965, file: !173, line: 951, baseType: !135, size: 32, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !965, file: !173, line: 952, baseType: !212, size: 32, offset: 160)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !965, file: !173, line: 952, baseType: !212, size: 32, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !965, file: !173, line: 953, baseType: !43, size: 32, offset: 224)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !942, file: !173, line: 1012, baseType: !197, size: 64, offset: 896)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !942, file: !173, line: 1013, baseType: !1049, size: 256, offset: 960)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !173, line: 970, size: 256, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1049, file: !173, line: 971, baseType: !60, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1049, file: !173, line: 972, baseType: !7, size: 32, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1049, file: !173, line: 973, baseType: !7, size: 32, offset: 96)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1049, file: !173, line: 974, baseType: !7, size: 32, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1049, file: !173, line: 975, baseType: !7, size: 32, offset: 160)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1049, file: !173, line: 976, baseType: !62, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !942, file: !173, line: 1014, baseType: !1058, size: 128, offset: 1216)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1059, line: 8, size: 128, elements: !1060)
!1059 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1060 = !{!1061, !3382}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1058, file: !1059, line: 9, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1064, line: 70, size: 256, elements: !1065)
!1064 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1065 = !{!1066, !3379, !3380, !3381}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1063, file: !1064, line: 71, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1069, line: 82, size: 1536, elements: !1070)
!1069 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1070 = !{!1071, !1072, !1077, !1085, !1086, !1101, !3346, !3348, !3361, !3362, !3363, !3364, !3365, !3371, !3372, !3373}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1068, file: !1069, line: 84, baseType: !7, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1068, file: !1069, line: 85, baseType: !1073, size: 32, offset: 32)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !786, line: 275, baseType: !1074)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !786, line: 275, size: 32, elements: !1075)
!1075 = !{!1076}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1074, file: !786, line: 275, baseType: !790, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1068, file: !1069, line: 86, baseType: !1078, size: 128, offset: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1079, line: 38, size: 128, elements: !1080)
!1079 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1080 = !{!1081, !1083}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1078, file: !1079, line: 39, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1078, file: !1079, line: 39, baseType: !1084, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1068, file: !1069, line: 87, baseType: !1067, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1068, file: !1069, line: 88, baseType: !1087, size: 128, offset: 256)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1069, line: 49, size: 128, elements: !1088)
!1088 = !{!1089, !1098}
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !1069, line: 50, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !1069, line: 50, size: 64, elements: !1091)
!1091 = !{!1092, !1097}
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !1090, file: !1069, line: 51, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1069, line: 51, size: 64, elements: !1094)
!1094 = !{!1095, !1096}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1093, file: !1069, line: 52, baseType: !306, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1093, file: !1069, line: 52, baseType: !306, size: 32, offset: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1090, file: !1069, line: 54, baseType: !239, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1087, file: !1069, line: 56, baseType: !1099, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1068, file: !1069, line: 89, baseType: !1102, size: 64, offset: 384)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !173, line: 641, size: 4800, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110, !1111, !1114, !1115, !1302, !3052, !3053, !3054, !3055, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3323, !3331, !3332, !3333, !3342, !3343, !3344, !3345}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1103, file: !173, line: 642, baseType: !45, size: 16)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1103, file: !173, line: 643, baseType: !47, size: 16, offset: 16)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1103, file: !173, line: 644, baseType: !212, size: 32, offset: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1103, file: !173, line: 645, baseType: !118, size: 128, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1103, file: !173, line: 646, baseType: !220, size: 32, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1103, file: !173, line: 647, baseType: !7, size: 32, offset: 224)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1103, file: !173, line: 650, baseType: !1112, size: 64, offset: 256)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !173, line: 607, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1103, file: !173, line: 651, baseType: !1112, size: 64, offset: 320)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1103, file: !173, line: 654, baseType: !1116, size: 64, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1118)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !173, line: 1966, size: 2048, align: 512, elements: !1119)
!1119 = !{!1120, !1124, !1137, !1143, !1147, !1151, !1155, !1159, !1163, !1167, !1171, !1172, !1178, !1182, !1219, !1250, !1257, !1263, !1267, !1271, !1275, !1279, !1283, !1289, !1293}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1118, file: !173, line: 1967, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!1067, !1102, !1067, !7}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1118, file: !173, line: 1968, baseType: !1125, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!37, !1067, !1102, !1128}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1130, line: 10, size: 128, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1131 = !{!1132, !1136}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1129, file: !1130, line: 11, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !41}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1129, file: !1130, line: 12, baseType: !41, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1118, file: !173, line: 1969, baseType: !1138, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!43, !1141, !1102, !43}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !235, line: 42, flags: DIFlagFwdDecl)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1118, file: !173, line: 1970, baseType: !1144, size: 64, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!1112, !1102, !43, !350}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1118, file: !173, line: 1972, baseType: !1148, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!43, !1067, !361, !43}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1118, file: !173, line: 1974, baseType: !1152, size: 64, offset: 320)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!43, !1141, !1102, !1067, !45, !350}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1118, file: !173, line: 1976, baseType: !1156, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!43, !1067, !1102, !1067}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1118, file: !173, line: 1977, baseType: !1160, size: 64, offset: 448)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!43, !1102, !1067}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1118, file: !173, line: 1978, baseType: !1164, size: 64, offset: 512)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!43, !1141, !1102, !1067, !37}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1118, file: !173, line: 1980, baseType: !1168, size: 64, offset: 576)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!43, !1141, !1102, !1067, !45}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1118, file: !173, line: 1982, baseType: !1160, size: 64, offset: 640)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1118, file: !173, line: 1983, baseType: !1173, size: 64, offset: 704)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!43, !1141, !1102, !1067, !45, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !46, line: 21, baseType: !1177)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !46, line: 18, baseType: !306)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1118, file: !173, line: 1985, baseType: !1179, size: 64, offset: 768)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!43, !1141, !1102, !1067, !1102, !1067, !7}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1118, file: !173, line: 1987, baseType: !1183, size: 64, offset: 832)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!43, !1141, !1067, !1186}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !173, line: 226, size: 640, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1201, !1210, !1211, !1216, !1217, !1218}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1187, file: !173, line: 227, baseType: !7, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1187, file: !173, line: 228, baseType: !45, size: 16, offset: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !173, line: 241, baseType: !1192, size: 32, offset: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1187, file: !173, line: 241, size: 32, elements: !1193)
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1192, file: !173, line: 242, baseType: !212, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1192, file: !173, line: 243, baseType: !1196, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1197, line: 16, baseType: !1198)
!1197 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1197, line: 14, size: 32, elements: !1199)
!1199 = !{!1200}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1198, file: !1197, line: 15, baseType: !217, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !173, line: 245, baseType: !1202, size: 32, offset: 96)
!1202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1187, file: !173, line: 245, size: 32, elements: !1203)
!1203 = !{!1204, !1205}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1202, file: !173, line: 246, baseType: !220, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1202, file: !173, line: 247, baseType: !1206, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1197, line: 20, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1197, line: 18, size: 32, elements: !1208)
!1208 = !{!1209}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1207, file: !1197, line: 19, baseType: !224, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1187, file: !173, line: 249, baseType: !62, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1187, file: !173, line: 250, baseType: !1212, size: 128, offset: 192)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !298, line: 13, size: 128, elements: !1213)
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1212, file: !298, line: 14, baseType: !297, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1212, file: !298, line: 15, baseType: !595, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1187, file: !173, line: 251, baseType: !1212, size: 128, offset: 320)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1187, file: !173, line: 252, baseType: !1212, size: 128, offset: 448)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1187, file: !173, line: 259, baseType: !941, size: 64, offset: 576)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1118, file: !173, line: 1988, baseType: !1220, size: 64, offset: 896)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!43, !1141, !1223, !1225, !306, !7}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1058)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1227, line: 22, size: 1280, elements: !1228)
!1227 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1226, file: !1227, line: 23, baseType: !306, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1226, file: !1227, line: 24, baseType: !45, size: 16, offset: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1226, file: !1227, line: 25, baseType: !7, size: 32, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1226, file: !1227, line: 26, baseType: !305, size: 32, offset: 96)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1226, file: !1227, line: 27, baseType: !239, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1226, file: !1227, line: 28, baseType: !239, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1226, file: !1227, line: 41, baseType: !239, size: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1226, file: !1227, line: 42, baseType: !1176, size: 32, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1226, file: !1227, line: 43, baseType: !1176, size: 32, offset: 352)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1226, file: !1227, line: 44, baseType: !212, size: 32, offset: 384)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1226, file: !1227, line: 45, baseType: !220, size: 32, offset: 416)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1226, file: !1227, line: 46, baseType: !62, size: 64, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1226, file: !1227, line: 47, baseType: !1212, size: 128, offset: 512)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1226, file: !1227, line: 48, baseType: !1212, size: 128, offset: 640)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1226, file: !1227, line: 49, baseType: !1212, size: 128, offset: 768)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1226, file: !1227, line: 50, baseType: !1212, size: 128, offset: 896)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1226, file: !1227, line: 51, baseType: !239, size: 64, offset: 1024)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1226, file: !1227, line: 52, baseType: !239, size: 64, offset: 1088)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1226, file: !1227, line: 53, baseType: !306, size: 32, offset: 1152)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1226, file: !1227, line: 54, baseType: !306, size: 32, offset: 1184)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1226, file: !1227, line: 55, baseType: !239, size: 64, offset: 1216)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1118, file: !173, line: 1990, baseType: !1251, size: 64, offset: 960)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!1254, !1067, !361, !56}
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !46, line: 66, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !58, line: 73, baseType: !1256)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !58, line: 15, baseType: !595)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1118, file: !173, line: 1991, baseType: !1258, size: 64, offset: 1024)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!43, !1102, !1261, !239, !239}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !173, line: 55, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1118, file: !173, line: 1993, baseType: !1264, size: 64, offset: 1088)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!43, !1102, !43}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1118, file: !173, line: 1994, baseType: !1268, size: 64, offset: 1152)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!43, !1102, !1067, !941, !7, !45}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1118, file: !173, line: 1997, baseType: !1272, size: 64, offset: 1216)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!43, !1141, !1102, !941, !45}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1118, file: !173, line: 1999, baseType: !1276, size: 64, offset: 1280)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!1112, !1141, !1067, !43}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1118, file: !173, line: 2001, baseType: !1280, size: 64, offset: 1344)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!43, !1141, !1067, !1112, !43}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1118, file: !173, line: 2003, baseType: !1284, size: 64, offset: 1408)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!43, !1141, !1067, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !173, line: 76, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1118, file: !173, line: 2005, baseType: !1290, size: 64, offset: 1472)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!43, !1067, !1287}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1118, file: !173, line: 2006, baseType: !1294, size: 64, offset: 1536)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!1297, !1102}
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !173, line: 3192, size: 192, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1298, file: !173, line: 3193, baseType: !1017, size: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1298, file: !173, line: 3194, baseType: !306, size: 32, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1103, file: !173, line: 655, baseType: !1303, size: 64, offset: 448)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !173, line: 1190, size: 10752, elements: !1305)
!1305 = !{!1306, !1307, !1308, !1309, !1310, !1311, !2530, !2662, !2702, !2785, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2819, !2823, !2824, !2827, !2830, !2833, !2836, !2837, !2838, !2879, !2905, !2906, !2907, !2908, !2909, !2910, !2931, !2935, !2944, !2945, !2946, !2947, !3006, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1304, file: !173, line: 1191, baseType: !118, size: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1304, file: !173, line: 1192, baseType: !1176, size: 32, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1304, file: !173, line: 1193, baseType: !108, size: 8, offset: 160)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1304, file: !173, line: 1194, baseType: !60, size: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1304, file: !173, line: 1195, baseType: !62, size: 64, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1304, file: !173, line: 1196, baseType: !1312, size: 64, offset: 320)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !173, line: 2366, size: 576, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1323, !1327, !1331, !1335, !2518, !2519, !2520, !2522, !2523, !2524, !2526, !2527, !2528, !2529}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1313, file: !173, line: 2367, baseType: !37, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1313, file: !173, line: 2368, baseType: !43, size: 32, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1313, file: !173, line: 2376, baseType: !1318, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!43, !1321}
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1064, line: 21, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1313, file: !173, line: 2377, baseType: !1324, size: 64, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1326)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !173, line: 75, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1313, file: !173, line: 2378, baseType: !1328, size: 64, offset: 256)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!1067, !1312, !43, !37, !41}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1313, file: !173, line: 2380, baseType: !1332, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{null, !1303}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1313, file: !173, line: 2381, baseType: !1336, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1345, !2173, !2199, !2200, !2201, !2202, !2206, !2209, !2210, !2211, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2279, !2283, !2303, !2323, !2324, !2325, !2326, !2335, !2358, !2359, !2362, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2376, !2377, !2476, !2484, !2485, !2486, !2488, !2492, !2493, !2497, !2498, !2499, !2500, !2502, !2503, !2504, !2511, !2512, !2513, !2517}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1337, file: !6, line: 403, baseType: !5, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1337, file: !6, line: 406, baseType: !118, size: 128, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1337, file: !6, line: 409, baseType: !1342, size: 448, offset: 192)
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 448, elements: !1343)
!1343 = !{!1344}
!1344 = !DISubrange(count: 56)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1337, file: !6, line: 417, baseType: !1346, size: 768, offset: 640)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !1347)
!1347 = !{!1348, !2167, !2168, !2169, !2172}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1346, file: !6, line: 46, baseType: !1349, size: 512)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1350, line: 64, size: 512, elements: !1351)
!1350 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1351 = !{!1352, !1353, !1354, !1356, !1400, !2047, !2157, !2162, !2163, !2164, !2165, !2166}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1349, file: !1350, line: 65, baseType: !37, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1349, file: !1350, line: 66, baseType: !118, size: 128, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1349, file: !1350, line: 67, baseType: !1355, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1349, file: !1350, line: 68, baseType: !1357, size: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1350, line: 168, size: 768, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1363}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1358, file: !1350, line: 169, baseType: !118, size: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1358, file: !1350, line: 170, baseType: !80, size: 32, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1358, file: !1350, line: 171, baseType: !1349, size: 512, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1358, file: !1350, line: 172, baseType: !1364, size: 64, offset: 704)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1366)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1350, line: 133, size: 192, elements: !1367)
!1367 = !{!1368, !1375, !1380}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1366, file: !1350, line: 134, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1370)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!43, !1373}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1349)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1366, file: !1350, line: 135, baseType: !1376, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1377)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!37, !1373}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1366, file: !1350, line: 136, baseType: !1381, size: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!43, !1373, !1385}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1350, line: 125, size: 20736, elements: !1387)
!1387 = !{!1388, !1390, !1394, !1395, !1399}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1386, file: !1350, line: 126, baseType: !1389, size: 192)
!1389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 192, elements: !987)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1386, file: !1350, line: 127, baseType: !1391, size: 4096, offset: 192)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 4096, elements: !1392)
!1392 = !{!1393}
!1393 = !DISubrange(count: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1386, file: !1350, line: 128, baseType: !43, size: 32, offset: 4288)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1386, file: !1350, line: 129, baseType: !1396, size: 16384, offset: 4320)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 16384, elements: !1397)
!1397 = !{!1398}
!1398 = !DISubrange(count: 2048)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1386, file: !1350, line: 130, baseType: !43, size: 32, offset: 20704)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1349, file: !1350, line: 69, baseType: !1401, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1350, line: 116, size: 384, elements: !1404)
!1404 = !{!1405, !1409, !1428, !2008, !2039, !2043}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1403, file: !1350, line: 117, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !1355}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1403, file: !1350, line: 118, baseType: !1410, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1413, line: 254, size: 128, elements: !1414)
!1413 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1414 = !{!1415, !1424}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1412, file: !1413, line: 255, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!1254, !1355, !1419, !361}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1413, line: 30, size: 128, elements: !1421)
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1420, file: !1413, line: 31, baseType: !37, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1420, file: !1413, line: 32, baseType: !45, size: 16, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1412, file: !1413, line: 256, baseType: !1425, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!1254, !1355, !1419, !37, !56}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1403, file: !1350, line: 119, baseType: !1429, size: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1432)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1413, line: 84, size: 320, elements: !1433)
!1433 = !{!1434, !1435, !1439, !2004, !2006}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1432, file: !1413, line: 85, baseType: !37, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1432, file: !1413, line: 86, baseType: !1436, size: 64, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!45, !1355, !1419, !43}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1432, file: !1413, line: 88, baseType: !1440, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!45, !1355, !1443, !43}
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1413, line: 175, size: 512, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1995, !1999, !2000}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1444, file: !1413, line: 176, baseType: !1420, size: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1444, file: !1413, line: 177, baseType: !56, size: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1444, file: !1413, line: 178, baseType: !41, size: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1444, file: !1413, line: 179, baseType: !1450, size: 64, offset: 256)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!1453}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !173, line: 472, size: 1536, align: 64, elements: !1455)
!1455 = !{!1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1987, !1988, !1989, !1992, !1993, !1994}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1454, file: !173, line: 473, baseType: !1102, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1454, file: !173, line: 474, baseType: !1017, size: 128, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1454, file: !173, line: 475, baseType: !276, size: 320, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1454, file: !173, line: 476, baseType: !1022, size: 32, offset: 512)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1454, file: !173, line: 477, baseType: !70, size: 32, offset: 544)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1454, file: !173, line: 482, baseType: !799, size: 128, offset: 576)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1454, file: !173, line: 483, baseType: !60, size: 64, offset: 704)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1454, file: !173, line: 484, baseType: !60, size: 64, offset: 768)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1454, file: !173, line: 485, baseType: !1465, size: 64, offset: 832)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !173, line: 404, size: 1280, elements: !1468)
!1468 = !{!1469, !1762, !1832, !1836, !1840, !1846, !1852, !1856, !1861, !1865, !1869, !1873, !1951, !1955, !1959, !1963, !1968, !1972, !1979, !1983}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1467, file: !173, line: 405, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!43, !1473, !1760}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !144, line: 74, size: 512, align: 128, elements: !1475)
!1475 = !{!1476, !1477, !1754, !1759}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1474, file: !144, line: 75, baseType: !60, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !144, line: 83, baseType: !1478, size: 320, offset: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1474, file: !144, line: 83, size: 320, elements: !1479)
!1479 = !{!1480, !1501, !1515, !1519, !1753}
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !144, line: 84, baseType: !1481, size: 320)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !144, line: 84, size: 320, elements: !1482)
!1482 = !{!1483, !1494, !1495, !1500}
!1483 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !144, line: 90, baseType: !1484, size: 128)
!1484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1481, file: !144, line: 90, size: 128, elements: !1485)
!1485 = !{!1486, !1487, !1492, !1493}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1484, file: !144, line: 91, baseType: !118, size: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !144, line: 94, baseType: !1488, size: 128)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1484, file: !144, line: 94, size: 128, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1488, file: !144, line: 96, baseType: !41, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1488, file: !144, line: 98, baseType: !7, size: 32, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1484, file: !144, line: 102, baseType: !118, size: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1484, file: !144, line: 103, baseType: !118, size: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1481, file: !144, line: 106, baseType: !1453, size: 64, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !144, line: 107, baseType: !1496, size: 64, offset: 192)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1481, file: !144, line: 107, size: 64, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1496, file: !144, line: 108, baseType: !60, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1496, file: !144, line: 109, baseType: !60, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1481, file: !144, line: 117, baseType: !60, size: 64, offset: 256)
!1501 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !144, line: 119, baseType: !1502, size: 320)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !144, line: 119, size: 320, elements: !1503)
!1503 = !{!1504, !1505, !1508, !1509, !1510}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1502, file: !144, line: 124, baseType: !60, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1502, file: !144, line: 125, baseType: !1506, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !144, line: 125, flags: DIFlagFwdDecl)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1502, file: !144, line: 126, baseType: !60, size: 64, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1502, file: !144, line: 127, baseType: !60, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1502, file: !144, line: 128, baseType: !1511, size: 64, offset: 256)
!1511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1502, file: !144, line: 128, size: 64, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1511, file: !144, line: 133, baseType: !60, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1511, file: !144, line: 138, baseType: !203, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !144, line: 141, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !144, line: 141, size: 64, elements: !1517)
!1517 = !{!1518}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1516, file: !144, line: 142, baseType: !60, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !144, line: 144, baseType: !1520, size: 128)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !144, line: 144, size: 128, elements: !1521)
!1521 = !{!1522, !1752}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1520, file: !144, line: 146, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !14, line: 126, size: 1216, elements: !1525)
!1525 = !{!1526, !1536, !1557, !1558, !1559, !1560, !1561, !1734, !1735, !1736}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1524, file: !14, line: 127, baseType: !1527, size: 384)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !14, line: 21, size: 384, elements: !1528)
!1528 = !{!1529, !1530, !1532, !1533, !1534, !1535}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1527, file: !14, line: 22, baseType: !60, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1527, file: !14, line: 23, baseType: !1531, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1527, file: !14, line: 24, baseType: !1531, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1527, file: !14, line: 25, baseType: !60, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1527, file: !14, line: 26, baseType: !60, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1527, file: !14, line: 27, baseType: !60, size: 64, offset: 320)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1524, file: !14, line: 128, baseType: !1537, size: 128, offset: 384)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1538, line: 105, size: 128, elements: !1539)
!1538 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1537, file: !1538, line: 110, baseType: !60, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1537, file: !1538, line: 118, baseType: !1542, size: 64, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1538, line: 95, size: 448, elements: !1544)
!1544 = !{!1545, !1546, !1552, !1553, !1554, !1555, !1556}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1543, file: !1538, line: 96, baseType: !203, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1543, file: !1538, line: 97, baseType: !1547, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1538, line: 60, baseType: !1549)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{null, !1551}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1543, file: !1538, line: 98, baseType: !1547, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1543, file: !1538, line: 99, baseType: !350, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1543, file: !1538, line: 100, baseType: !350, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1543, file: !1538, line: 101, baseType: !340, size: 128, align: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1543, file: !1538, line: 102, baseType: !1551, size: 64, offset: 384)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1524, file: !14, line: 129, baseType: !530, size: 256, offset: 512)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1524, file: !14, line: 130, baseType: !13, size: 32, offset: 768)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1524, file: !14, line: 131, baseType: !7, size: 32, offset: 800)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1524, file: !14, line: 132, baseType: !60, size: 64, offset: 832)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1524, file: !14, line: 133, baseType: !1562, size: 64, offset: 896)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1564)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !14, line: 77, size: 192, elements: !1565)
!1565 = !{!1566, !1570, !1730}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1564, file: !14, line: 83, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !1473}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1564, file: !14, line: 89, baseType: !1571, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!1574, !1575}
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !144, line: 1184, baseType: !7)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1577, line: 512, size: 896, elements: !1578)
!1577 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1578 = !{!1579, !1697, !1698, !1705, !1712, !1722, !1723, !1724, !1726, !1728}
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !1577, line: 513, baseType: !1580, size: 320)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !1577, line: 513, size: 320, elements: !1581)
!1581 = !{!1582, !1693, !1694, !1695, !1696}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1580, file: !1577, line: 514, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !144, line: 625, size: 1344, elements: !1585)
!1585 = !{!1586, !1595, !1596, !1604, !1611, !1612, !1617, !1618, !1623, !1624, !1627, !1686, !1687, !1688, !1689, !1690, !1691}
!1586 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !144, line: 628, baseType: !1587, size: 128)
!1587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !144, line: 628, size: 128, elements: !1588)
!1588 = !{!1589, !1594}
!1589 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !144, line: 629, baseType: !1590, size: 128)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1587, file: !144, line: 629, size: 128, elements: !1591)
!1591 = !{!1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1590, file: !144, line: 631, baseType: !60, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1590, file: !144, line: 632, baseType: !60, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1587, file: !144, line: 635, baseType: !340, size: 128, align: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1584, file: !144, line: 639, baseType: !913, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1584, file: !144, line: 640, baseType: !1597, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1598, line: 297, baseType: !1599)
!1598 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1598, line: 297, size: 64, elements: !1600)
!1600 = !{!1601}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1599, file: !1598, line: 297, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1603, line: 19, baseType: !60)
!1603 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !144, line: 646, baseType: !1605, size: 64, offset: 256)
!1605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !144, line: 646, size: 64, elements: !1606)
!1606 = !{!1607, !1610}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1605, file: !144, line: 647, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1609)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !144, line: 542, baseType: !60)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1605, file: !144, line: 648, baseType: !1609, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1584, file: !144, line: 666, baseType: !43, size: 32, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1584, file: !144, line: 667, baseType: !1613, size: 64, offset: 384)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !144, line: 579, size: 320, elements: !1615)
!1615 = !{!1616}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1614, file: !144, line: 580, baseType: !276, size: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1584, file: !144, line: 670, baseType: !350, size: 8, offset: 448)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1584, file: !144, line: 681, baseType: !1619, size: 256, offset: 512)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !144, line: 678, size: 256, elements: !1620)
!1620 = !{!1621, !1622}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1619, file: !144, line: 679, baseType: !268, size: 192, align: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1619, file: !144, line: 680, baseType: !60, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1584, file: !144, line: 689, baseType: !118, size: 128, offset: 768)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1584, file: !144, line: 691, baseType: !1625, size: 64, offset: 896)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !144, line: 691, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1584, file: !144, line: 694, baseType: !1628, size: 64, offset: 960)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1630)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1577, line: 563, size: 1024, elements: !1631)
!1631 = !{!1632, !1636, !1637, !1641, !1645, !1649, !1650, !1654, !1658, !1662, !1663, !1664, !1668, !1672, !1678, !1682}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1630, file: !1577, line: 564, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !1583}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1630, file: !1577, line: 569, baseType: !1633, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1630, file: !1577, line: 571, baseType: !1638, size: 64, offset: 128)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!43, !1583, !60}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1630, file: !1577, line: 572, baseType: !1642, size: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!43, !1583}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1630, file: !1577, line: 578, baseType: !1646, size: 64, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!43, !1583, !60, !60, !60}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1630, file: !1577, line: 580, baseType: !1571, size: 64, offset: 320)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1630, file: !1577, line: 581, baseType: !1651, size: 64, offset: 384)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!1574, !1575, !7}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1630, file: !1577, line: 582, baseType: !1655, size: 64, offset: 448)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!1574, !1575, !60, !60}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1630, file: !1577, line: 584, baseType: !1659, size: 64, offset: 512)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!60, !1583}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1630, file: !1577, line: 588, baseType: !1571, size: 64, offset: 576)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1630, file: !1577, line: 591, baseType: !1571, size: 64, offset: 640)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1630, file: !1577, line: 597, baseType: !1665, size: 64, offset: 704)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!43, !1583, !60, !41, !43, !43}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1630, file: !1577, line: 603, baseType: !1669, size: 64, offset: 768)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!37, !1583}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1630, file: !1577, line: 613, baseType: !1673, size: 64, offset: 832)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!43, !1583, !1676}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !144, line: 717, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1630, file: !1577, line: 625, baseType: !1679, size: 64, offset: 896)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!1676, !1583, !60}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1630, file: !1577, line: 633, baseType: !1683, size: 64, offset: 960)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!1473, !1583, !60}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1584, file: !144, line: 697, baseType: !60, size: 64, offset: 1024)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1584, file: !144, line: 699, baseType: !941, size: 64, offset: 1088)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1584, file: !144, line: 700, baseType: !41, size: 64, offset: 1152)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1584, file: !144, line: 711, baseType: !203, size: 64, offset: 1216)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1584, file: !144, line: 717, baseType: !1676, size: 64, offset: 1280)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1584, file: !144, line: 722, baseType: !1692, offset: 1344)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !144, line: 570, elements: !934)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1580, file: !1577, line: 515, baseType: !1022, size: 32, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1580, file: !1577, line: 516, baseType: !60, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1580, file: !1577, line: 517, baseType: !60, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1580, file: !1577, line: 518, baseType: !60, size: 64, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1576, file: !1577, line: 520, baseType: !143, size: 32, offset: 320)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1576, file: !1577, line: 522, baseType: !1699, size: 64, offset: 384)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1603, line: 22, baseType: !1701)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1603, line: 22, size: 64, elements: !1702)
!1702 = !{!1703}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1701, file: !1603, line: 22, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1603, line: 15, baseType: !60)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1576, file: !1577, line: 524, baseType: !1706, size: 64, offset: 448)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1598, line: 372, baseType: !1708)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1598, line: 372, size: 64, elements: !1709)
!1709 = !{!1710}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1708, file: !1598, line: 372, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1603, line: 16, baseType: !60)
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !1577, line: 527, baseType: !1713, size: 64, offset: 512)
!1713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1576, file: !1577, line: 527, size: 64, elements: !1714)
!1714 = !{!1715, !1721}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1713, file: !1577, line: 528, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1603, line: 21, baseType: !1717)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1603, line: 21, size: 64, elements: !1718)
!1718 = !{!1719}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1717, file: !1603, line: 21, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1603, line: 14, baseType: !60)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1713, file: !1577, line: 529, baseType: !1700, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1576, file: !1577, line: 534, baseType: !1473, size: 64, offset: 576)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1576, file: !1577, line: 535, baseType: !1473, size: 64, offset: 640)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1576, file: !1577, line: 541, baseType: !1725, size: 64, offset: 704)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1576, file: !1577, line: 545, baseType: !1727, size: 64, offset: 768)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1576, file: !1577, line: 549, baseType: !1729, size: 64, offset: 832)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1598, line: 520, baseType: !1473)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1564, file: !14, line: 100, baseType: !1731, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!43, !1523, !60, !60, !43}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1524, file: !14, line: 134, baseType: !41, size: 64, offset: 960)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1524, file: !14, line: 135, baseType: !43, size: 32, offset: 1024)
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !14, line: 136, baseType: !1737, size: 128, offset: 1088)
!1737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1524, file: !14, line: 136, size: 128, elements: !1738)
!1738 = !{!1739, !1745}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1737, file: !14, line: 137, baseType: !1740, size: 128)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1741, line: 6, size: 128, elements: !1742)
!1741 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1740, file: !1741, line: 7, baseType: !239, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1740, file: !1741, line: 8, baseType: !239, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1737, file: !14, line: 138, baseType: !1746)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1737, file: !14, line: 138, elements: !1747)
!1747 = !{!1748, !1750}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1746, file: !14, line: 138, baseType: !1749)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1746, file: !14, line: 138, elements: !934)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1746, file: !14, line: 138, baseType: !1751)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1740, elements: !607)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1520, file: !144, line: 147, baseType: !41, size: 64, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1478, file: !144, line: 161, baseType: !340, size: 128, align: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !144, line: 164, baseType: !1755, size: 32, offset: 384)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1474, file: !144, line: 164, size: 32, elements: !1756)
!1756 = !{!1757, !1758}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1755, file: !144, line: 169, baseType: !70, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1755, file: !144, line: 177, baseType: !7, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1474, file: !144, line: 181, baseType: !70, size: 32, offset: 416)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !173, line: 309, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1467, file: !173, line: 406, baseType: !1763, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!43, !941, !1766}
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !144, line: 293, size: 1536, elements: !1768)
!1768 = !{!1769, !1799, !1813}
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !144, line: 295, baseType: !1770, size: 512)
!1770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1767, file: !144, line: 295, size: 512, elements: !1771)
!1771 = !{!1772, !1798}
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !144, line: 296, baseType: !1773, size: 448)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1770, file: !144, line: 296, size: 448, elements: !1774)
!1774 = !{!1775, !1776, !1785, !1786, !1787, !1796, !1797}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1773, file: !144, line: 298, baseType: !60, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !144, line: 299, baseType: !1777, size: 128, offset: 64)
!1777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !144, line: 299, size: 128, elements: !1778)
!1778 = !{!1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1777, file: !144, line: 300, baseType: !118, size: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1777, file: !144, line: 302, baseType: !1781, size: 128)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1777, file: !144, line: 302, size: 128, elements: !1782)
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1781, file: !144, line: 303, baseType: !41, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1781, file: !144, line: 305, baseType: !7, size: 32, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1773, file: !144, line: 310, baseType: !1453, size: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1773, file: !144, line: 311, baseType: !60, size: 64, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !144, line: 312, baseType: !1788, size: 64, offset: 320)
!1788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !144, line: 312, size: 64, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1788, file: !144, line: 313, baseType: !41, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1788, file: !144, line: 314, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !144, line: 257, baseType: !1793)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 255, size: 64, elements: !1794)
!1794 = !{!1795}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1793, file: !144, line: 256, baseType: !60, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1773, file: !144, line: 316, baseType: !70, size: 32, offset: 384)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1773, file: !144, line: 317, baseType: !70, size: 32, offset: 416)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1770, file: !144, line: 323, baseType: !1474, size: 512, align: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !144, line: 325, baseType: !1800, size: 512, offset: 512)
!1800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1767, file: !144, line: 325, size: 512, elements: !1801)
!1801 = !{!1802, !1812}
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1800, file: !144, line: 326, baseType: !1803, size: 320)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1800, file: !144, line: 326, size: 320, elements: !1804)
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1803, file: !144, line: 327, baseType: !60, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1803, file: !144, line: 328, baseType: !60, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1803, file: !144, line: 329, baseType: !60, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1803, file: !144, line: 331, baseType: !70, size: 32, offset: 192)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1803, file: !144, line: 332, baseType: !70, size: 32, offset: 224)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1803, file: !144, line: 333, baseType: !70, size: 32, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1803, file: !144, line: 335, baseType: !7, size: 32, offset: 288)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1800, file: !144, line: 339, baseType: !1474, size: 512, align: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !144, line: 341, baseType: !1814, size: 512, offset: 1024)
!1814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1767, file: !144, line: 341, size: 512, elements: !1815)
!1815 = !{!1816, !1825, !1831}
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1814, file: !144, line: 342, baseType: !1817, size: 384)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1814, file: !144, line: 342, size: 384, elements: !1818)
!1818 = !{!1819, !1820, !1821, !1822, !1823, !1824}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1817, file: !144, line: 343, baseType: !60, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1817, file: !144, line: 344, baseType: !60, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1817, file: !144, line: 346, baseType: !41, size: 64, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1817, file: !144, line: 347, baseType: !41, size: 64, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1817, file: !144, line: 348, baseType: !41, size: 64, offset: 256)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1817, file: !144, line: 349, baseType: !41, size: 64, offset: 320)
!1825 = !DIDerivedType(tag: DW_TAG_member, scope: !1814, file: !144, line: 352, baseType: !1826, size: 256)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1814, file: !144, line: 352, size: 256, elements: !1827)
!1827 = !{!1828, !1829, !1830}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1826, file: !144, line: 353, baseType: !60, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1826, file: !144, line: 354, baseType: !60, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1826, file: !144, line: 356, baseType: !118, size: 128, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1814, file: !144, line: 359, baseType: !1474, size: 512, align: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1467, file: !173, line: 409, baseType: !1833, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!43, !1453, !1760}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1467, file: !173, line: 412, baseType: !1837, size: 64, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!350, !1453, !1766}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1467, file: !173, line: 414, baseType: !1841, size: 64, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !1844}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !173, line: 310, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1467, file: !173, line: 416, baseType: !1847, size: 64, offset: 320)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!43, !941, !1453, !62, !7, !1850, !1851}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1467, file: !173, line: 419, baseType: !1853, size: 64, offset: 384)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!43, !941, !1453, !62, !7, !7, !1473, !41}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1467, file: !173, line: 424, baseType: !1857, size: 64, offset: 448)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!1860, !1453, !1860}
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !46, line: 131, baseType: !239)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1467, file: !173, line: 425, baseType: !1862, size: 64, offset: 512)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{null, !1766, !56, !56}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1467, file: !173, line: 426, baseType: !1866, size: 64, offset: 576)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!350, !1766, !1022}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1467, file: !173, line: 427, baseType: !1870, size: 64, offset: 640)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{null, !1766}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1467, file: !173, line: 428, baseType: !1874, size: 64, offset: 704)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!1254, !1877, !1899}
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !173, line: 373, size: 384, elements: !1879)
!1879 = !{!1880, !1881, !1882, !1886, !1887, !1888, !1889}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1878, file: !173, line: 374, baseType: !941, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1878, file: !173, line: 375, baseType: !62, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1878, file: !173, line: 376, baseType: !1883, size: 64, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{null, !1877, !595}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1878, file: !173, line: 377, baseType: !41, size: 64, offset: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1878, file: !173, line: 378, baseType: !43, size: 32, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1878, file: !173, line: 379, baseType: !114, size: 16, offset: 288)
!1889 = !DIDerivedType(tag: DW_TAG_member, scope: !1878, file: !173, line: 380, baseType: !1890, size: 64, offset: 320)
!1890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1878, file: !173, line: 380, size: 64, elements: !1891)
!1891 = !{!1892, !1895}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1890, file: !173, line: 386, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !173, line: 386, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1890, file: !173, line: 395, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!1254, !41}
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1901, line: 41, size: 320, elements: !1902)
!1901 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1902 = !{!1903, !1904, !1905, !1906, !1907, !1908, !1913, !1946}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1900, file: !1901, line: 42, baseType: !104, size: 8)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1900, file: !1901, line: 43, baseType: !350, size: 8, offset: 8)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1900, file: !1901, line: 44, baseType: !350, size: 8, offset: 16)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1900, file: !1901, line: 45, baseType: !350, size: 8, offset: 24)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1900, file: !1901, line: 46, baseType: !350, size: 8, offset: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, scope: !1900, file: !1901, line: 47, baseType: !1909, size: 64, offset: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1900, file: !1901, line: 47, size: 64, elements: !1910)
!1910 = !{!1911, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1909, file: !1901, line: 48, baseType: !56, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1909, file: !1901, line: 49, baseType: !43, size: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, scope: !1900, file: !1901, line: 61, baseType: !1914, size: 128, offset: 128)
!1914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1900, file: !1901, line: 61, size: 128, elements: !1915)
!1915 = !{!1916, !1922}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1914, file: !1901, line: 67, baseType: !1917, size: 128)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1918, line: 17, size: 128, elements: !1919)
!1918 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1917, file: !1918, line: 19, baseType: !41, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1917, file: !1918, line: 20, baseType: !57, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, scope: !1914, file: !1901, line: 68, baseType: !1923, size: 128)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1914, file: !1901, line: 68, size: 128, elements: !1924)
!1924 = !{!1925, !1945}
!1925 = !DIDerivedType(tag: DW_TAG_member, scope: !1923, file: !1901, line: 69, baseType: !1926, size: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1923, file: !1901, line: 69, size: 64, elements: !1927)
!1927 = !{!1928, !1931, !1938, !1942, !1944}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1926, file: !1901, line: 71, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1917)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1926, file: !1901, line: 72, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1934)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1901, line: 17, size: 128, elements: !1935)
!1935 = !{!1936, !1937}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1934, file: !1901, line: 18, baseType: !41, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1934, file: !1901, line: 19, baseType: !56, size: 64, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1926, file: !1901, line: 73, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1941)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1901, line: 73, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1926, file: !1901, line: 74, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1926, file: !1901, line: 75, baseType: !41, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1923, file: !1901, line: 77, baseType: !56, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, scope: !1900, file: !1901, line: 80, baseType: !1947, size: 64, offset: 256)
!1947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1900, file: !1901, line: 80, size: 64, elements: !1948)
!1948 = !{!1949, !1950}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1947, file: !1901, line: 81, baseType: !60, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1947, file: !1901, line: 82, baseType: !62, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1467, file: !173, line: 433, baseType: !1952, size: 64, offset: 768)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!43, !1453, !1766, !1766, !159}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1467, file: !173, line: 435, baseType: !1956, size: 64, offset: 832)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!43, !1766}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1467, file: !173, line: 436, baseType: !1960, size: 64, offset: 896)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!350, !1766, !56, !56}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1467, file: !173, line: 438, baseType: !1964, size: 64, offset: 960)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !1766, !1967, !1967}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1467, file: !173, line: 439, baseType: !1969, size: 64, offset: 1024)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!43, !1453, !1473}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1467, file: !173, line: 442, baseType: !1973, size: 64, offset: 1088)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!43, !1976, !941, !1978}
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !173, line: 66, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1467, file: !173, line: 444, baseType: !1980, size: 64, offset: 1152)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !941}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1467, file: !173, line: 445, baseType: !1984, size: 64, offset: 1216)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!43, !1877, !1899}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1454, file: !173, line: 486, baseType: !60, size: 64, offset: 896)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1454, file: !173, line: 487, baseType: !276, size: 320, offset: 960)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1454, file: !173, line: 488, baseType: !1990, size: 32, offset: 1280)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1991, line: 8, baseType: !306)
!1991 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1454, file: !173, line: 489, baseType: !80, size: 32, offset: 1312)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1454, file: !173, line: 490, baseType: !118, size: 128, offset: 1344)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1454, file: !173, line: 491, baseType: !41, size: 64, offset: 1472)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1444, file: !1413, line: 180, baseType: !1996, size: 64, offset: 320)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!1254, !941, !1355, !1443, !361, !62, !56}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1444, file: !1413, line: 182, baseType: !1996, size: 64, offset: 384)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1444, file: !1413, line: 184, baseType: !2001, size: 64, offset: 448)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!43, !941, !1355, !1443, !1583}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1432, file: !1413, line: 90, baseType: !2005, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1432, file: !1413, line: 91, baseType: !2007, size: 64, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1403, file: !1350, line: 120, baseType: !2009, size: 64, offset: 192)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!2012, !1373}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2014)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !167, line: 39, size: 384, elements: !2015)
!2015 = !{!2016, !2017, !2021, !2025, !2034, !2038}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2014, file: !167, line: 40, baseType: !166, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2014, file: !167, line: 41, baseType: !2018, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!350}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2014, file: !167, line: 42, baseType: !2022, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!41}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2014, file: !167, line: 43, baseType: !2026, size: 64, offset: 192)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!2029, !2031}
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !2033, line: 177, flags: DIFlagFwdDecl)
!2033 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2014, file: !167, line: 44, baseType: !2035, size: 64, offset: 256)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!2029}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2014, file: !167, line: 45, baseType: !1133, size: 64, offset: 320)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1403, file: !1350, line: 121, baseType: !2040, size: 64, offset: 256)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!2029, !1373}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1403, file: !1350, line: 122, baseType: !2044, size: 64, offset: 320)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{null, !1373, !555, !556}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1349, file: !1350, line: 70, baseType: !2048, size: 64, offset: 384)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2050, line: 190, size: 1152, elements: !2051)
!2050 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2051 = !{!2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2149, !2150, !2151, !2152, !2153, !2156}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2049, file: !2050, line: 191, baseType: !70, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2049, file: !2050, line: 192, baseType: !70, size: 32, offset: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2049, file: !2050, line: 202, baseType: !2048, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2049, file: !2050, line: 203, baseType: !37, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2049, file: !2050, line: 205, baseType: !268, size: 192, align: 64, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2049, file: !2050, line: 207, baseType: !2029, size: 64, offset: 384)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2049, file: !2050, line: 208, baseType: !7, size: 32, offset: 448)
!2059 = !DIDerivedType(tag: DW_TAG_member, scope: !2049, file: !2050, line: 209, baseType: !2060, size: 256, offset: 512)
!2060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2049, file: !2050, line: 209, size: 256, elements: !2061)
!2061 = !{!2062, !2071, !2075}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2060, file: !2050, line: 210, baseType: !2063, size: 256)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2050, line: 153, size: 256, elements: !2064)
!2064 = !{!2065, !2066, !2067, !2070}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2063, file: !2050, line: 154, baseType: !60, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2063, file: !2050, line: 156, baseType: !575, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2063, file: !2050, line: 162, baseType: !2068, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2050, line: 162, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2063, file: !2050, line: 167, baseType: !60, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2060, file: !2050, line: 211, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2050, line: 170, size: 64, elements: !2073)
!2073 = !{!2074}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2072, file: !2050, line: 171, baseType: !2048, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2060, file: !2050, line: 212, baseType: !2076, size: 256)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2050, line: 174, size: 256, elements: !2077)
!2077 = !{!2078, !2144, !2147, !2148}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2076, file: !2050, line: 175, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2081)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2050, line: 271, size: 768, elements: !2082)
!2082 = !{!2083, !2105, !2109, !2113, !2117, !2121, !2125, !2129, !2130, !2131, !2132, !2140}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2081, file: !2050, line: 276, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!43, !2087}
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2050, line: 251, size: 1216, elements: !2089)
!2089 = !{!2090, !2091, !2092, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2088, file: !2050, line: 253, baseType: !2048, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2088, file: !2050, line: 254, baseType: !941, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2088, file: !2050, line: 255, baseType: !2093, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !620, line: 66, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2088, file: !2050, line: 256, baseType: !41, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2088, file: !2050, line: 259, baseType: !955, size: 256, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2088, file: !2050, line: 260, baseType: !955, size: 256, offset: 512)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2088, file: !2050, line: 261, baseType: !43, size: 32, offset: 768)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2088, file: !2050, line: 262, baseType: !118, size: 128, offset: 832)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2088, file: !2050, line: 263, baseType: !361, size: 64, offset: 960)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2088, file: !2050, line: 265, baseType: !56, size: 64, offset: 1024)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2088, file: !2050, line: 266, baseType: !350, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2088, file: !2050, line: 267, baseType: !350, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2088, file: !2050, line: 268, baseType: !1628, size: 64, offset: 1152)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2081, file: !2050, line: 277, baseType: !2106, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{null, !2087}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2081, file: !2050, line: 290, baseType: !2110, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!43, !2093, !41}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2081, file: !2050, line: 292, baseType: !2114, size: 64, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!41, !2093, !61}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2081, file: !2050, line: 293, baseType: !2118, size: 64, offset: 256)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!41, !2093, !41, !61}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2081, file: !2050, line: 294, baseType: !2122, size: 64, offset: 320)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{null, !2093, !41}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2081, file: !2050, line: 296, baseType: !2126, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!1254, !2087, !361, !56, !62}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2081, file: !2050, line: 306, baseType: !56, size: 64, offset: 448)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2081, file: !2050, line: 313, baseType: !350, size: 8, offset: 512)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2081, file: !2050, line: 314, baseType: !2126, size: 64, offset: 576)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2081, file: !2050, line: 317, baseType: !2133, size: 64, offset: 640)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!2136, !2087, !2138}
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2137, line: 59, baseType: !7)
!2137 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !173, line: 61, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2081, file: !2050, line: 320, baseType: !2141, size: 64, offset: 704)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!43, !2087, !1583}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2076, file: !2050, line: 176, baseType: !2145, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2050, line: 35, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2076, file: !2050, line: 177, baseType: !62, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2076, file: !2050, line: 178, baseType: !2048, size: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2049, file: !2050, line: 215, baseType: !41, size: 64, offset: 768)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2049, file: !2050, line: 221, baseType: !239, size: 64, offset: 832)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2049, file: !2050, line: 223, baseType: !47, size: 16, offset: 896)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2049, file: !2050, line: 224, baseType: !45, size: 16, offset: 912)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2049, file: !2050, line: 225, baseType: !2154, size: 64, offset: 960)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2050, line: 36, flags: DIFlagFwdDecl)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2049, file: !2050, line: 227, baseType: !340, size: 128, align: 64, offset: 1024)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1349, file: !1350, line: 71, baseType: !2158, size: 32, offset: 448)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2159, line: 19, size: 32, elements: !2160)
!2159 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2160 = !{!2161}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2158, file: !2159, line: 20, baseType: !253, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1349, file: !1350, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1349, file: !1350, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1349, file: !1350, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1349, file: !1350, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1349, file: !1350, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1346, file: !6, line: 47, baseType: !1336, size: 64, offset: 512)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1346, file: !6, line: 48, baseType: !1355, size: 64, offset: 576)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1346, file: !6, line: 49, baseType: !2170, size: 64, offset: 640)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1346, file: !6, line: 50, baseType: !529, size: 64, offset: 704)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1337, file: !6, line: 418, baseType: !2174, size: 64, offset: 1408)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !2176)
!2176 = !{!2177, !2178, !2183, !2187, !2191, !2195}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2175, file: !6, line: 54, baseType: !1420, size: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2175, file: !6, line: 55, baseType: !2179, size: 64, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!1254, !2174, !2182, !361}
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2175, file: !6, line: 57, baseType: !2184, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!1254, !2174, !2182, !37, !56}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2175, file: !6, line: 59, baseType: !2188, size: 64, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{null, !1336, !37}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2175, file: !6, line: 60, baseType: !2192, size: 64, offset: 320)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!43, !1336}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2175, file: !6, line: 61, baseType: !2196, size: 64, offset: 384)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !1336}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1337, file: !6, line: 419, baseType: !37, size: 64, offset: 1472)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1337, file: !6, line: 420, baseType: !37, size: 64, offset: 1536)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1337, file: !6, line: 421, baseType: !1355, size: 64, offset: 1600)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1337, file: !6, line: 424, baseType: !2203, size: 64, offset: 1664)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2205)
!2205 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1337, file: !6, line: 425, baseType: !2207, size: 64, offset: 1728)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1337, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1337, file: !6, line: 435, baseType: !955, size: 256, offset: 1856)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1337, file: !6, line: 437, baseType: !2212, size: 64, offset: 2112)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2214, line: 69, size: 320, elements: !2215)
!2214 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2215 = !{!2216, !2217, !2218, !2235, !2237, !2241, !2242}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2213, file: !2214, line: 70, baseType: !37, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2213, file: !2214, line: 71, baseType: !1336, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2213, file: !2214, line: 72, baseType: !2219, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2214, line: 47, size: 256, elements: !2222)
!2222 = !{!2223, !2224, !2230, !2234}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2221, file: !2214, line: 49, baseType: !7, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2221, file: !2214, line: 51, baseType: !2225, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!43, !37, !2228}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2213)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2221, file: !2214, line: 53, baseType: !2231, size: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!43, !361, !2228}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2221, file: !2214, line: 55, baseType: !1133, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2213, file: !2214, line: 73, baseType: !2236, size: 16, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2213, file: !2214, line: 74, baseType: !2238, size: 8, offset: 208)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !105, line: 16, baseType: !2239)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !107, line: 20, baseType: !2240)
!2240 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2213, file: !2214, line: 75, baseType: !104, size: 8, offset: 216)
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2213, file: !2214, line: 76, baseType: !2243, size: 64, offset: 256)
!2243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2213, file: !2214, line: 76, size: 64, elements: !2244)
!2244 = !{!2245, !2246, !2253}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2243, file: !2214, line: 77, baseType: !41, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2243, file: !2214, line: 78, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2249)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2214, line: 86, size: 128, elements: !2250)
!2250 = !{!2251, !2252}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2249, file: !2214, line: 87, baseType: !7, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2249, file: !2214, line: 88, baseType: !361, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2243, file: !2214, line: 79, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2214, line: 92, size: 256, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2262, !2263}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2256, file: !2214, line: 94, baseType: !7, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2256, file: !2214, line: 95, baseType: !7, size: 32, offset: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2256, file: !2214, line: 96, baseType: !2261, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2256, file: !2214, line: 97, baseType: !2219, size: 64, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2256, file: !2214, line: 98, baseType: !41, size: 64, offset: 192)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1337, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1337, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1337, file: !6, line: 442, baseType: !2203, size: 64, offset: 2240)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1337, file: !6, line: 443, baseType: !2207, size: 64, offset: 2304)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1337, file: !6, line: 444, baseType: !350, size: 8, offset: 2368)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1337, file: !6, line: 451, baseType: !350, size: 8, offset: 2376)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1337, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1337, file: !6, line: 455, baseType: !2272, size: 64, offset: 2432)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2274, line: 23, size: 96, elements: !2275)
!2274 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2275 = !{!2276, !2277, !2278}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2273, file: !2274, line: 24, baseType: !43, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2273, file: !2274, line: 24, baseType: !43, size: 32, offset: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2273, file: !2274, line: 24, baseType: !43, size: 32, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1337, file: !6, line: 458, baseType: !2280, size: 64, offset: 2496)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!43}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1337, file: !6, line: 460, baseType: !2284, size: 4032, align: 512, offset: 2560)
!2284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2285, size: 4032, elements: !2301)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2286)
!2286 = !{!2287, !2288, !2289}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2285, file: !6, line: 363, baseType: !41, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2285, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2285, file: !6, line: 367, baseType: !2290, size: 448, offset: 128)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2291)
!2291 = !{!2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2290, file: !6, line: 320, baseType: !1336, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2290, file: !6, line: 321, baseType: !2294, size: 384, offset: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2295, line: 40, size: 384, elements: !2296)
!2295 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2296 = !{!2297}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2294, file: !2295, line: 41, baseType: !2298, size: 384, align: 64)
!2298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 384, align: 64, elements: !2299)
!2299 = !{!2300}
!2300 = !DISubrange(count: 2)
!2301 = !{!2302}
!2302 = !DISubrange(count: 7)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1337, file: !6, line: 463, baseType: !2304, size: 192, offset: 6592)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2305, line: 8, size: 192, elements: !2306)
!2305 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2306 = !{!2307, !2308, !2310}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2304, file: !2305, line: 10, baseType: !7, size: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2304, file: !2305, line: 11, baseType: !2309, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2304, file: !2305, line: 12, baseType: !2311, size: 64, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2313, line: 59, size: 48, elements: !2314)
!2313 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2314 = !{!2315, !2318, !2319, !2320, !2321, !2322}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2312, file: !2313, line: 60, baseType: !2316, size: 16)
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !105, line: 18, baseType: !2317)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !107, line: 23, baseType: !311)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2312, file: !2313, line: 61, baseType: !2316, size: 16, offset: 16)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2312, file: !2313, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2312, file: !2313, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2312, file: !2313, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2312, file: !2313, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1337, file: !6, line: 465, baseType: !60, size: 64, offset: 6784)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1337, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1337, file: !6, line: 470, baseType: !118, size: 128, offset: 6912)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1337, file: !6, line: 471, baseType: !2327, size: 64, offset: 7040)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2329, line: 33, size: 96, elements: !2330)
!2329 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2330 = !{!2331, !2332, !2333, !2334}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2328, file: !2329, line: 37, baseType: !43, size: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2328, file: !2329, line: 43, baseType: !43, size: 32, offset: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2328, file: !2329, line: 45, baseType: !47, size: 16, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2328, file: !2329, line: 47, baseType: !47, size: 16, offset: 80)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1337, file: !6, line: 476, baseType: !2336, size: 64, offset: 7104)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2338)
!2338 = !{!2339, !2355, !2356, !2357}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2337, file: !6, line: 379, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2342, line: 204, baseType: !2343)
!2342 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2342, line: 197, size: 192, elements: !2344)
!2344 = !{!2345, !2347, !2348, !2349, !2351, !2353}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2343, file: !2342, line: 198, baseType: !2346, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2342, line: 21, baseType: !307)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2343, file: !2342, line: 199, baseType: !108, size: 8, offset: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2343, file: !2342, line: 200, baseType: !108, size: 8, offset: 40)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2343, file: !2342, line: 201, baseType: !2350, size: 16, offset: 48)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2342, line: 17, baseType: !115)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2343, file: !2342, line: 202, baseType: !2352, size: 64, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2342, line: 16, baseType: !240)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2343, file: !2342, line: 203, baseType: !2354, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2342, line: 22, baseType: !240)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2337, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2337, file: !6, line: 381, baseType: !361, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2337, file: !6, line: 382, baseType: !361, size: 64, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1337, file: !6, line: 477, baseType: !2337, size: 256, offset: 7168)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1337, file: !6, line: 480, baseType: !2360, size: 64, offset: 7424)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1337, file: !6, line: 483, baseType: !2363, size: 64, offset: 7488)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1337, file: !6, line: 488, baseType: !361, size: 64, offset: 7552)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1337, file: !6, line: 492, baseType: !41, size: 64, offset: 7616)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1337, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1337, file: !6, line: 495, baseType: !41, size: 64, offset: 7744)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1337, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1337, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1337, file: !6, line: 500, baseType: !2372, size: 64, offset: 7872)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2374, line: 45, baseType: !2375)
!2374 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1337, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1337, file: !6, line: 504, baseType: !2378, size: 64, offset: 8000)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2381, line: 96, size: 192, elements: !2382)
!2381 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2382 = !{!2383, !2384, !2437, !2440}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2380, file: !2381, line: 97, baseType: !7, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2380, file: !2381, line: 98, baseType: !2385, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2381, line: 24, size: 3072, elements: !2387)
!2387 = !{!2388, !2390, !2391, !2392, !2393, !2406, !2407, !2408, !2409, !2421, !2422, !2423, !2434, !2435, !2436}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2386, file: !2381, line: 26, baseType: !2389, size: 128)
!2389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 128, elements: !2299)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2386, file: !2381, line: 27, baseType: !2389, size: 128, offset: 128)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2386, file: !2381, line: 28, baseType: !43, size: 32, offset: 256)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2386, file: !2381, line: 31, baseType: !80, size: 32, align: 512, offset: 512)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2386, file: !2381, line: 32, baseType: !2394, size: 960, offset: 576)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2395, line: 206, size: 960, elements: !2396)
!2395 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2396 = !{!2397, !2398, !2401, !2403, !2404, !2405}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2394, file: !2395, line: 207, baseType: !343, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2394, file: !2395, line: 208, baseType: !2399, size: 256, offset: 64)
!2399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2400, size: 256, elements: !371)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2394, file: !2395, line: 209, baseType: !2402, size: 256, offset: 320)
!2402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 256, elements: !371)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2394, file: !2395, line: 213, baseType: !595, size: 64, offset: 576)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2394, file: !2395, line: 215, baseType: !597, size: 256, offset: 640)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2394, file: !2395, line: 216, baseType: !104, size: 8, offset: 896)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2386, file: !2381, line: 33, baseType: !60, size: 64, offset: 1536)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2386, file: !2381, line: 34, baseType: !60, size: 64, offset: 1600)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2386, file: !2381, line: 35, baseType: !350, size: 8, offset: 1664)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2386, file: !2381, line: 36, baseType: !2410, size: 320, offset: 1728)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2411, line: 11, size: 320, elements: !2412)
!2411 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2412 = !{!2413, !2414, !2415, !2420}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2410, file: !2411, line: 16, baseType: !422, size: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2410, file: !2411, line: 17, baseType: !60, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2410, file: !2411, line: 18, baseType: !2416, size: 64, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !2419}
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2410, file: !2411, line: 19, baseType: !306, size: 32, offset: 256)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2386, file: !2381, line: 37, baseType: !491, size: 256, offset: 2048)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2386, file: !2381, line: 38, baseType: !340, size: 128, align: 64, offset: 2304)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2386, file: !2381, line: 39, baseType: !2424, size: 64, offset: 2432)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2381, line: 49, size: 768, elements: !2426)
!2426 = !{!2427, !2428, !2429, !2430, !2431, !2432, !2433}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2425, file: !2381, line: 50, baseType: !80, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2425, file: !2381, line: 51, baseType: !2402, size: 256, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2425, file: !2381, line: 53, baseType: !2402, size: 256, offset: 320)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2425, file: !2381, line: 54, baseType: !60, size: 64, offset: 576)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2425, file: !2381, line: 55, baseType: !2424, size: 64, offset: 640)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2425, file: !2381, line: 56, baseType: !43, size: 32, offset: 704)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2425, file: !2381, line: 57, baseType: !43, size: 32, offset: 736)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2386, file: !2381, line: 40, baseType: !60, size: 64, offset: 2496)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2386, file: !2381, line: 42, baseType: !43, size: 32, offset: 2560)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2386, file: !2381, line: 43, baseType: !2379, size: 64, offset: 2624)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2380, file: !2381, line: 99, baseType: !2438, offset: 128)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2439, line: 211, elements: !934)
!2439 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2380, file: !2381, line: 100, baseType: !2441, size: 64, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2381, line: 63, size: 3008, elements: !2443)
!2443 = !{!2444, !2445, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2475}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2442, file: !2381, line: 64, baseType: !2424, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2442, file: !2381, line: 65, baseType: !2446, size: 192, offset: 64)
!2446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2424, size: 192, elements: !987)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2442, file: !2381, line: 67, baseType: !43, size: 32, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2442, file: !2381, line: 68, baseType: !955, size: 256, offset: 320)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2442, file: !2381, line: 69, baseType: !80, size: 32, offset: 576)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2442, file: !2381, line: 70, baseType: !955, size: 256, offset: 640)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2442, file: !2381, line: 71, baseType: !60, size: 64, offset: 896)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2442, file: !2381, line: 72, baseType: !60, size: 64, offset: 960)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2442, file: !2381, line: 73, baseType: !60, size: 64, offset: 1024)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2442, file: !2381, line: 74, baseType: !60, size: 64, offset: 1088)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2442, file: !2381, line: 75, baseType: !60, size: 64, offset: 1152)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2442, file: !2381, line: 76, baseType: !60, size: 64, offset: 1216)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2442, file: !2381, line: 77, baseType: !60, size: 64, offset: 1280)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2442, file: !2381, line: 78, baseType: !60, size: 64, offset: 1344)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2442, file: !2381, line: 79, baseType: !350, size: 8, offset: 1408)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2442, file: !2381, line: 80, baseType: !60, size: 64, offset: 1472)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2442, file: !2381, line: 81, baseType: !955, size: 256, offset: 1536)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2442, file: !2381, line: 82, baseType: !530, size: 256, offset: 1792)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2442, file: !2381, line: 84, baseType: !70, size: 32, offset: 2048)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2442, file: !2381, line: 87, baseType: !60, size: 64, offset: 2112)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2442, file: !2381, line: 88, baseType: !60, size: 64, offset: 2176)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2442, file: !2381, line: 89, baseType: !2467, size: 704, offset: 2240)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !492, line: 111, size: 704, elements: !2468)
!2468 = !{!2469, !2470, !2471, !2474}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2467, file: !492, line: 112, baseType: !491, size: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2467, file: !492, line: 113, baseType: !2410, size: 320, offset: 256)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2467, file: !492, line: 116, baseType: !2472, size: 64, offset: 576)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !492, line: 18, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2467, file: !492, line: 117, baseType: !43, size: 32, offset: 640)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2442, file: !2381, line: 90, baseType: !2379, size: 64, offset: 2944)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1337, file: !6, line: 515, baseType: !2477, size: 64, offset: 8064)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2479, line: 117, size: 128, elements: !2480)
!2479 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2480 = !{!2481, !2482, !2483}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2478, file: !2479, line: 118, baseType: !261, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2478, file: !2479, line: 119, baseType: !261, size: 32, offset: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2478, file: !2479, line: 120, baseType: !595, size: 64, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1337, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1337, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1337, file: !6, line: 520, baseType: !2487, size: 64, offset: 8192)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1337, file: !6, line: 523, baseType: !2489, size: 64, offset: 8256)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1337, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1337, file: !6, line: 525, baseType: !2494, size: 64, offset: 8384)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1337, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1337, file: !6, line: 533, baseType: !41, size: 64, offset: 8512)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1337, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1337, file: !6, line: 535, baseType: !2501, size: 64, offset: 8640)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1337, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1337, file: !6, line: 539, baseType: !43, size: 32, offset: 8736)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1337, file: !6, line: 540, baseType: !2505, size: 64, offset: 8768)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2507, line: 32, size: 64, elements: !2508)
!2507 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2508 = !{!2509, !2510}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2506, file: !2507, line: 33, baseType: !261, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2506, file: !2507, line: 34, baseType: !261, size: 32, offset: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1337, file: !6, line: 563, baseType: !118, size: 128, offset: 8832)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1337, file: !6, line: 565, baseType: !118, size: 128, offset: 8960)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1337, file: !6, line: 568, baseType: !2514, size: 64, offset: 9088)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{null}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1337, file: !6, line: 570, baseType: !70, size: 32, offset: 9152)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1313, file: !173, line: 2382, baseType: !1312, size: 64, offset: 448)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1313, file: !173, line: 2383, baseType: !571, size: 64, offset: 512)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1313, file: !173, line: 2385, baseType: !2521, offset: 576)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2439, line: 206, elements: !934)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1313, file: !173, line: 2386, baseType: !2521, offset: 576)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1313, file: !173, line: 2387, baseType: !2521, offset: 576)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1313, file: !173, line: 2388, baseType: !2525, offset: 576)
!2525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2521, elements: !987)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1313, file: !173, line: 2390, baseType: !2521, offset: 576)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1313, file: !173, line: 2391, baseType: !2521, offset: 576)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1313, file: !173, line: 2392, baseType: !2521, offset: 576)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1313, file: !173, line: 2393, baseType: !2521, offset: 576)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1304, file: !173, line: 1197, baseType: !2531, size: 64, offset: 384)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2533)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !173, line: 2057, size: 1664, elements: !2534)
!2534 = !{!2535, !2539, !2543, !2544, !2548, !2552, !2556, !2557, !2558, !2562, !2566, !2570, !2571, !2572, !2578, !2582, !2583, !2587, !2588, !2589, !2590, !2594, !2598, !2645, !2660, !2661}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2533, file: !173, line: 2058, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!1102, !1303}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2533, file: !173, line: 2059, baseType: !2540, size: 64, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{null, !1102}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2533, file: !173, line: 2060, baseType: !2540, size: 64, offset: 128)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2533, file: !173, line: 2062, baseType: !2545, size: 64, offset: 192)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{null, !1102, !43}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2533, file: !173, line: 2063, baseType: !2549, size: 64, offset: 256)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!43, !1102, !1760}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2533, file: !173, line: 2064, baseType: !2553, size: 64, offset: 320)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!43, !1102}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2533, file: !173, line: 2065, baseType: !2540, size: 64, offset: 384)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2533, file: !173, line: 2066, baseType: !1332, size: 64, offset: 448)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2533, file: !173, line: 2067, baseType: !2559, size: 64, offset: 512)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!43, !1303, !43}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2533, file: !173, line: 2068, baseType: !2563, size: 64, offset: 576)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!43, !1303, !172}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2533, file: !173, line: 2069, baseType: !2567, size: 64, offset: 640)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!43, !1303}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2533, file: !173, line: 2070, baseType: !2563, size: 64, offset: 704)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2533, file: !173, line: 2071, baseType: !2567, size: 64, offset: 768)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2533, file: !173, line: 2072, baseType: !2573, size: 64, offset: 832)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!43, !1067, !2576}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !173, line: 62, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2533, file: !173, line: 2073, baseType: !2579, size: 64, offset: 896)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!43, !1303, !2309, !361}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2533, file: !173, line: 2074, baseType: !1332, size: 64, offset: 960)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2533, file: !173, line: 2076, baseType: !2584, size: 64, offset: 1024)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!43, !2093, !1067}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2533, file: !173, line: 2077, baseType: !2584, size: 64, offset: 1088)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2533, file: !173, line: 2078, baseType: !2584, size: 64, offset: 1152)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2533, file: !173, line: 2079, baseType: !2584, size: 64, offset: 1216)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2533, file: !173, line: 2081, baseType: !2591, size: 64, offset: 1280)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!1254, !1303, !43, !361, !56, !62}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2533, file: !173, line: 2082, baseType: !2595, size: 64, offset: 1344)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!1254, !1303, !43, !37, !56, !62}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2533, file: !173, line: 2083, baseType: !2599, size: 64, offset: 1408)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!2602, !1102}
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !178, line: 296, size: 1664, elements: !2605)
!2605 = !{!2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2630, !2631, !2632}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2604, file: !178, line: 297, baseType: !422, size: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2604, file: !178, line: 298, baseType: !118, size: 128, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2604, file: !178, line: 299, baseType: !118, size: 128, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2604, file: !178, line: 300, baseType: !118, size: 128, offset: 384)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2604, file: !178, line: 301, baseType: !955, size: 256, offset: 512)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2604, file: !178, line: 302, baseType: !80, size: 32, offset: 768)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2604, file: !178, line: 303, baseType: !70, size: 32, offset: 800)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2604, file: !178, line: 304, baseType: !1303, size: 64, offset: 832)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2604, file: !178, line: 305, baseType: !2615, size: 64, offset: 896)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !178, line: 68, size: 64, elements: !2616)
!2616 = !{!2617, !2629}
!2617 = !DIDerivedType(tag: DW_TAG_member, scope: !2615, file: !178, line: 69, baseType: !2618, size: 32)
!2618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2615, file: !178, line: 69, size: 32, elements: !2619)
!2619 = !{!2620, !2621, !2622}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2618, file: !178, line: 70, baseType: !212, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2618, file: !178, line: 71, baseType: !220, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2618, file: !178, line: 72, baseType: !2623, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2624, line: 24, baseType: !2625)
!2624 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2624, line: 22, size: 32, elements: !2626)
!2626 = !{!2627}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2625, file: !2624, line: 23, baseType: !2628, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2624, line: 20, baseType: !218)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2615, file: !178, line: 74, baseType: !177, size: 32, offset: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2604, file: !178, line: 306, baseType: !62, size: 64, offset: 960)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2604, file: !178, line: 307, baseType: !60, size: 64, offset: 1024)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2604, file: !178, line: 308, baseType: !2633, size: 576, offset: 1088)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !178, line: 205, size: 576, elements: !2634)
!2634 = !{!2635, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2633, file: !178, line: 206, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !178, line: 66, baseType: !64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2633, file: !178, line: 207, baseType: !2636, size: 64, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2633, file: !178, line: 208, baseType: !2636, size: 64, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2633, file: !178, line: 209, baseType: !2636, size: 64, offset: 192)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2633, file: !178, line: 210, baseType: !2636, size: 64, offset: 256)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2633, file: !178, line: 211, baseType: !2636, size: 64, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2633, file: !178, line: 212, baseType: !2636, size: 64, offset: 384)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2633, file: !178, line: 213, baseType: !297, size: 64, offset: 448)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2633, file: !178, line: 214, baseType: !297, size: 64, offset: 512)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2533, file: !173, line: 2085, baseType: !2646, size: 64, offset: 1472)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!595, !1303, !2649}
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2651, line: 15, size: 256, elements: !2652)
!2651 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2652 = !{!2653, !2654, !2655, !2656, !2657}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2650, file: !2651, line: 16, baseType: !1022, size: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2650, file: !2651, line: 19, baseType: !43, size: 32, offset: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2650, file: !2651, line: 26, baseType: !60, size: 64, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2650, file: !2651, line: 33, baseType: !60, size: 64, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2650, file: !2651, line: 36, baseType: !2658, size: 64, offset: 192)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !144, line: 33, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2533, file: !173, line: 2087, baseType: !2646, size: 64, offset: 1536)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2533, file: !173, line: 2089, baseType: !1332, size: 64, offset: 1600)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1304, file: !173, line: 1198, baseType: !2663, size: 64, offset: 448)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2665)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !178, line: 324, size: 704, elements: !2666)
!2666 = !{!2667, !2671, !2675, !2679, !2680, !2681, !2682, !2683, !2688, !2693, !2697}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2665, file: !178, line: 325, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!43, !2603}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2665, file: !178, line: 326, baseType: !2672, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!2603, !1303, !43}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2665, file: !178, line: 327, baseType: !2676, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{null, !2603}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2665, file: !178, line: 328, baseType: !2668, size: 64, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2665, file: !178, line: 329, baseType: !2668, size: 64, offset: 256)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2665, file: !178, line: 330, baseType: !2668, size: 64, offset: 320)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2665, file: !178, line: 331, baseType: !2559, size: 64, offset: 384)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2665, file: !178, line: 334, baseType: !2684, size: 64, offset: 448)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!2687, !1102}
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2665, file: !178, line: 335, baseType: !2689, size: 64, offset: 512)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!43, !1102, !2692}
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2665, file: !178, line: 337, baseType: !2694, size: 64, offset: 576)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!43, !1102, !2687}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2665, file: !178, line: 339, baseType: !2698, size: 64, offset: 640)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!43, !1303, !2701}
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1304, file: !173, line: 1199, baseType: !2703, size: 64, offset: 512)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2705)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !178, line: 430, size: 704, elements: !2706)
!2706 = !{!2707, !2711, !2712, !2716, !2717, !2718, !2733, !2756, !2760, !2761, !2784}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2705, file: !178, line: 431, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!43, !1303, !43, !43, !1223}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2705, file: !178, line: 432, baseType: !2559, size: 64, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2705, file: !178, line: 433, baseType: !2713, size: 64, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!43, !1303, !7}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2705, file: !178, line: 434, baseType: !2713, size: 64, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2705, file: !178, line: 435, baseType: !2559, size: 64, offset: 256)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2705, file: !178, line: 436, baseType: !2719, size: 64, offset: 320)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!43, !1303, !43, !2722}
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !178, line: 417, size: 256, elements: !2724)
!2724 = !{!2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2723, file: !178, line: 418, baseType: !43, size: 32)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2723, file: !178, line: 419, baseType: !7, size: 32, offset: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2723, file: !178, line: 420, baseType: !7, size: 32, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2723, file: !178, line: 422, baseType: !7, size: 32, offset: 96)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2723, file: !178, line: 423, baseType: !7, size: 32, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2723, file: !178, line: 424, baseType: !7, size: 32, offset: 160)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2723, file: !178, line: 425, baseType: !7, size: 32, offset: 192)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2723, file: !178, line: 426, baseType: !7, size: 32, offset: 224)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2705, file: !178, line: 437, baseType: !2734, size: 64, offset: 384)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!43, !1303, !2615, !2737}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !178, line: 345, size: 960, elements: !2739)
!2739 = !{!2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2738, file: !178, line: 346, baseType: !43, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2738, file: !178, line: 347, baseType: !239, size: 64, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2738, file: !178, line: 348, baseType: !239, size: 64, offset: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2738, file: !178, line: 349, baseType: !239, size: 64, offset: 192)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2738, file: !178, line: 350, baseType: !239, size: 64, offset: 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2738, file: !178, line: 351, baseType: !239, size: 64, offset: 320)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2738, file: !178, line: 352, baseType: !239, size: 64, offset: 384)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2738, file: !178, line: 353, baseType: !209, size: 64, offset: 448)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2738, file: !178, line: 355, baseType: !209, size: 64, offset: 512)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2738, file: !178, line: 356, baseType: !43, size: 32, offset: 576)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2738, file: !178, line: 357, baseType: !43, size: 32, offset: 608)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2738, file: !178, line: 358, baseType: !239, size: 64, offset: 640)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2738, file: !178, line: 359, baseType: !239, size: 64, offset: 704)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2738, file: !178, line: 360, baseType: !239, size: 64, offset: 768)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2738, file: !178, line: 361, baseType: !209, size: 64, offset: 832)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2738, file: !178, line: 362, baseType: !43, size: 32, offset: 896)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2705, file: !178, line: 438, baseType: !2757, size: 64, offset: 448)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!43, !1303, !2701, !2737}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2705, file: !178, line: 440, baseType: !2734, size: 64, offset: 512)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2705, file: !178, line: 441, baseType: !2762, size: 64, offset: 576)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!43, !1303, !2765}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !178, line: 411, size: 1408, elements: !2767)
!2767 = !{!2768, !2769}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2766, file: !178, line: 412, baseType: !7, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2766, file: !178, line: 413, baseType: !2770, size: 1344, offset: 64)
!2770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2771, size: 1344, elements: !987)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !178, line: 397, size: 448, elements: !2772)
!2772 = !{!2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2783}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2771, file: !178, line: 398, baseType: !7, size: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2771, file: !178, line: 399, baseType: !7, size: 32, offset: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2771, file: !178, line: 401, baseType: !7, size: 32, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2771, file: !178, line: 402, baseType: !7, size: 32, offset: 96)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2771, file: !178, line: 403, baseType: !7, size: 32, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2771, file: !178, line: 404, baseType: !7, size: 32, offset: 160)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2771, file: !178, line: 405, baseType: !7, size: 32, offset: 192)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2771, file: !178, line: 406, baseType: !241, size: 64, offset: 256)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2771, file: !178, line: 407, baseType: !2782, size: 64, offset: 320)
!2782 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !46, line: 132, baseType: !239)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2771, file: !178, line: 408, baseType: !2782, size: 64, offset: 384)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2705, file: !178, line: 442, baseType: !2713, size: 64, offset: 640)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1304, file: !173, line: 1200, baseType: !2786, size: 64, offset: 576)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2788)
!2788 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !173, line: 54, flags: DIFlagFwdDecl)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1304, file: !173, line: 1201, baseType: !60, size: 64, offset: 640)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1304, file: !173, line: 1202, baseType: !60, size: 64, offset: 704)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1304, file: !173, line: 1203, baseType: !60, size: 64, offset: 768)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1304, file: !173, line: 1204, baseType: !1067, size: 64, offset: 832)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1304, file: !173, line: 1205, baseType: !276, size: 320, offset: 896)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1304, file: !173, line: 1206, baseType: !43, size: 32, offset: 1216)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1304, file: !173, line: 1207, baseType: !70, size: 32, offset: 1248)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1304, file: !173, line: 1209, baseType: !41, size: 64, offset: 1280)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1304, file: !173, line: 1211, baseType: !2798, size: 64, offset: 1344)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2801)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !2802, line: 36, size: 384, elements: !2803)
!2802 = !DIFile(filename: "./include/linux/xattr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b18c2f606ad05d87dee3d79567b8d0c")
!2803 = !{!2804, !2805, !2806, !2807, !2811, !2815}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2801, file: !2802, line: 37, baseType: !37, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !2801, file: !2802, line: 38, baseType: !37, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2801, file: !2802, line: 39, baseType: !43, size: 32, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2801, file: !2802, line: 40, baseType: !2808, size: 64, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!350, !1067}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2801, file: !2802, line: 41, baseType: !2812, size: 64, offset: 256)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!43, !2799, !1067, !1102, !37, !41, !56}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2801, file: !2802, line: 44, baseType: !2816, size: 64, offset: 320)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!43, !2799, !1141, !1067, !1102, !37, !2029, !56, !43}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1304, file: !173, line: 1223, baseType: !2820, size: 64, offset: 1408)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1079, line: 34, size: 64, elements: !2821)
!2821 = !{!2822}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2820, file: !1079, line: 35, baseType: !1082, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1304, file: !173, line: 1224, baseType: !118, size: 128, offset: 1472)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1304, file: !173, line: 1225, baseType: !2825, size: 64, offset: 1600)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !173, line: 1225, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1304, file: !173, line: 1226, baseType: !2828, size: 64, offset: 1664)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !173, line: 1226, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1304, file: !173, line: 1227, baseType: !2831, size: 64, offset: 1728)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !173, line: 50, flags: DIFlagFwdDecl)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1304, file: !173, line: 1228, baseType: !2834, size: 64, offset: 1792)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !173, line: 1228, flags: DIFlagFwdDecl)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1304, file: !173, line: 1229, baseType: !422, size: 128, offset: 1856)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1304, file: !173, line: 1230, baseType: !7, size: 32, offset: 1984)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1304, file: !173, line: 1231, baseType: !2839, size: 2496, offset: 2048)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !178, line: 521, size: 2496, elements: !2840)
!2840 = !{!2841, !2842, !2843, !2845, !2877}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2839, file: !178, line: 522, baseType: !7, size: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2839, file: !178, line: 523, baseType: !276, size: 320, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2839, file: !178, line: 524, baseType: !2844, size: 192, offset: 384)
!2844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1102, size: 192, elements: !987)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2839, file: !178, line: 525, baseType: !2846, size: 1728, offset: 576)
!2846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2847, size: 1728, elements: !987)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !178, line: 222, size: 576, elements: !2848)
!2848 = !{!2849, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2847, file: !178, line: 223, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !178, line: 445, size: 256, elements: !2852)
!2852 = !{!2853, !2854, !2867, !2868}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2851, file: !178, line: 446, baseType: !43, size: 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2851, file: !178, line: 447, baseType: !2855, size: 64, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2857)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !178, line: 312, size: 512, elements: !2858)
!2858 = !{!2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2857, file: !178, line: 313, baseType: !2559, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2857, file: !178, line: 314, baseType: !2559, size: 64, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2857, file: !178, line: 315, baseType: !2559, size: 64, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2857, file: !178, line: 316, baseType: !2559, size: 64, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2857, file: !178, line: 317, baseType: !2668, size: 64, offset: 256)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2857, file: !178, line: 318, baseType: !2668, size: 64, offset: 320)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2857, file: !178, line: 319, baseType: !2668, size: 64, offset: 384)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2857, file: !178, line: 320, baseType: !2698, size: 64, offset: 448)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2851, file: !178, line: 448, baseType: !1336, size: 64, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2851, file: !178, line: 449, baseType: !2850, size: 64, offset: 192)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2847, file: !178, line: 224, baseType: !43, size: 32, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2847, file: !178, line: 226, baseType: !118, size: 128, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2847, file: !178, line: 227, baseType: !60, size: 64, offset: 256)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2847, file: !178, line: 228, baseType: !7, size: 32, offset: 320)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2847, file: !178, line: 229, baseType: !7, size: 32, offset: 352)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2847, file: !178, line: 230, baseType: !2636, size: 64, offset: 384)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2847, file: !178, line: 231, baseType: !2636, size: 64, offset: 448)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2847, file: !178, line: 232, baseType: !41, size: 64, offset: 512)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2839, file: !178, line: 526, baseType: !2878, size: 192, offset: 2304)
!2878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2855, size: 192, elements: !987)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1304, file: !173, line: 1233, baseType: !2880, size: 2368, offset: 4544)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !173, line: 1184, size: 2368, elements: !2881)
!2881 = !{!2882, !2883, !2884}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2880, file: !173, line: 1185, baseType: !47, size: 16)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2880, file: !173, line: 1186, baseType: !47, size: 16, offset: 16)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2880, file: !173, line: 1187, baseType: !2885, size: 2304, offset: 64)
!2885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2886, size: 2304, elements: !987)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2887, line: 12, size: 768, elements: !2888)
!2887 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2888 = !{!2889, !2897, !2898, !2903, !2904}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2886, file: !2887, line: 13, baseType: !2890, size: 384)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2891, line: 17, size: 384, elements: !2892)
!2891 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2892 = !{!2893, !2894, !2895, !2896}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2890, file: !2891, line: 18, baseType: !43, size: 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2890, file: !2891, line: 19, baseType: !43, size: 32, offset: 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2890, file: !2891, line: 20, baseType: !75, size: 192, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2890, file: !2891, line: 22, baseType: !340, size: 128, align: 64, offset: 256)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2886, file: !2887, line: 14, baseType: !2261, size: 64, offset: 384)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2886, file: !2887, line: 15, baseType: !2899, size: 64, offset: 448)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2900, line: 16, size: 64, elements: !2901)
!2900 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2901 = !{!2902}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2899, file: !2900, line: 17, baseType: !618, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2886, file: !2887, line: 16, baseType: !75, size: 192, offset: 512)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2886, file: !2887, line: 17, baseType: !70, size: 32, offset: 704)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1304, file: !173, line: 1240, baseType: !41, size: 64, offset: 6912)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1304, file: !173, line: 1243, baseType: !306, size: 32, offset: 6976)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1304, file: !173, line: 1245, baseType: !297, size: 64, offset: 7040)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1304, file: !173, line: 1246, baseType: !297, size: 64, offset: 7104)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1304, file: !173, line: 1248, baseType: !307, size: 32, offset: 7168)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1304, file: !173, line: 1249, baseType: !2911, size: 64, offset: 7232)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !189, line: 472, size: 256, elements: !2913)
!2913 = !{!2914, !2915, !2916, !2917, !2923, !2930}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2912, file: !189, line: 473, baseType: !80, size: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2912, file: !189, line: 474, baseType: !47, size: 16, offset: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2912, file: !189, line: 477, baseType: !47, size: 16, offset: 48)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fsid", scope: !2912, file: !189, line: 478, baseType: !2918, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_fsid_t", file: !58, line: 81, baseType: !2919)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 79, size: 64, elements: !2920)
!2920 = !{!2921}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2919, file: !58, line: 80, baseType: !2922, size: 64)
!2922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !2299)
!2923 = !DIDerivedType(tag: DW_TAG_member, scope: !2912, file: !189, line: 479, baseType: !2924, size: 64, offset: 128)
!2924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2912, file: !189, line: 479, size: 64, elements: !2925)
!2925 = !{!2926, !2929}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !2924, file: !189, line: 481, baseType: !2927, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsnotify_connp_t", file: !189, line: 464, baseType: !2911)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_next", scope: !2924, file: !189, line: 483, baseType: !2911, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2912, file: !189, line: 485, baseType: !571, size: 64, offset: 192)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1304, file: !173, line: 1252, baseType: !2932, size: 256, offset: 7296)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !2933)
!2933 = !{!2934}
!2934 = !DISubrange(count: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1304, file: !173, line: 1253, baseType: !2936, size: 128, offset: 7552)
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2937, line: 21, baseType: !2938)
!2937 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2937, line: 19, size: 128, elements: !2939)
!2939 = !{!2940}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2938, file: !2937, line: 20, baseType: !2941, size: 128)
!2941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 128, elements: !2942)
!2942 = !{!2943}
!2943 = !DISubrange(count: 16)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1304, file: !173, line: 1255, baseType: !7, size: 32, offset: 7680)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1304, file: !173, line: 1261, baseType: !955, size: 256, offset: 7744)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1304, file: !173, line: 1267, baseType: !37, size: 64, offset: 8000)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1304, file: !173, line: 1269, baseType: !2948, size: 64, offset: 8064)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2950)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1069, line: 128, size: 1024, align: 512, elements: !2951)
!2951 = !{!2952, !2956, !2957, !2964, !2970, !2974, !2978, !2982, !2983, !2987, !2991, !2996, !3000}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2950, file: !1069, line: 129, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!43, !1067, !7}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2950, file: !1069, line: 130, baseType: !2953, size: 64, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2950, file: !1069, line: 131, baseType: !2958, size: 64, offset: 128)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!43, !2961, !2963}
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1068)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2950, file: !1069, line: 132, baseType: !2965, size: 64, offset: 192)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!43, !2961, !7, !37, !2968}
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1087)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2950, file: !1069, line: 134, baseType: !2971, size: 64, offset: 256)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!43, !2961}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2950, file: !1069, line: 135, baseType: !2975, size: 64, offset: 320)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!43, !1067}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2950, file: !1069, line: 136, baseType: !2979, size: 64, offset: 384)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{null, !1067}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2950, file: !1069, line: 137, baseType: !2979, size: 64, offset: 448)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2950, file: !1069, line: 138, baseType: !2984, size: 64, offset: 512)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{null, !1067, !1102}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2950, file: !1069, line: 139, baseType: !2988, size: 64, offset: 576)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!361, !1067, !361, !43}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2950, file: !1069, line: 140, baseType: !2992, size: 64, offset: 640)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!1062, !2995}
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2950, file: !1069, line: 141, baseType: !2997, size: 64, offset: 704)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!43, !1223, !350}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2950, file: !1069, line: 142, baseType: !3001, size: 64, offset: 768)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!1067, !1067, !3004}
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1103)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1304, file: !173, line: 1271, baseType: !3007, size: 448, offset: 8128)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2651, line: 63, size: 448, elements: !3008)
!3008 = !{!3009, !3014, !3015, !3016, !3017, !3018, !3019}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3007, file: !2651, line: 64, baseType: !3010, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!60, !3013, !2649}
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3007, file: !2651, line: 66, baseType: !3010, size: 64, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3007, file: !2651, line: 69, baseType: !595, size: 64, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3007, file: !2651, line: 70, baseType: !43, size: 32, offset: 192)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3007, file: !2651, line: 71, baseType: !7, size: 32, offset: 224)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3007, file: !2651, line: 74, baseType: !118, size: 128, offset: 256)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3007, file: !2651, line: 85, baseType: !3020, size: 64, offset: 384)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1304, file: !173, line: 1274, baseType: !203, size: 64, offset: 8576)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1304, file: !173, line: 1280, baseType: !203, size: 64, offset: 8640)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1304, file: !173, line: 1283, baseType: !43, size: 32, offset: 8704)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1304, file: !173, line: 1286, baseType: !1990, size: 32, offset: 8736)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1304, file: !173, line: 1289, baseType: !2472, size: 64, offset: 8768)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1304, file: !173, line: 1290, baseType: !571, size: 64, offset: 8832)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1304, file: !173, line: 1297, baseType: !442, size: 64, offset: 8896)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1304, file: !173, line: 1304, baseType: !3029, size: 64, offset: 8960)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3030, line: 49, size: 64, elements: !3031)
!3030 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3031 = !{!3032}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3029, file: !3030, line: 50, baseType: !3033, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3030, line: 41, size: 512, align: 512, elements: !3035)
!3035 = !{!3036, !3037, !3042}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3034, file: !3030, line: 43, baseType: !80, size: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3034, file: !3030, line: 45, baseType: !3038, size: 192, offset: 64)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3030, line: 29, size: 192, elements: !3039)
!3039 = !{!3040, !3041}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3038, file: !3030, line: 30, baseType: !118, size: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3038, file: !3030, line: 32, baseType: !595, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3034, file: !3030, line: 46, baseType: !595, size: 64, offset: 256)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1304, file: !173, line: 1305, baseType: !3029, size: 64, offset: 9024)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1304, file: !173, line: 1306, baseType: !340, size: 128, align: 64, offset: 9088)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1304, file: !173, line: 1307, baseType: !491, size: 256, offset: 9216)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1304, file: !173, line: 1309, baseType: !955, size: 256, offset: 9472)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1304, file: !173, line: 1314, baseType: !43, size: 32, offset: 9728)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1304, file: !173, line: 1317, baseType: !80, size: 32, align: 512, offset: 10240)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1304, file: !173, line: 1318, baseType: !118, size: 128, offset: 10304)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1304, file: !173, line: 1320, baseType: !80, size: 32, offset: 10432)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1304, file: !173, line: 1321, baseType: !118, size: 128, offset: 10496)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1103, file: !173, line: 656, baseType: !1453, size: 64, offset: 512)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1103, file: !173, line: 659, baseType: !41, size: 64, offset: 576)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1103, file: !173, line: 663, baseType: !60, size: 64, offset: 640)
!3055 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !173, line: 671, baseType: !3056, size: 32, offset: 704)
!3056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1103, file: !173, line: 671, size: 32, elements: !3057)
!3057 = !{!3058, !3060}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3056, file: !173, line: 672, baseType: !3059, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3056, file: !173, line: 673, baseType: !7, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1103, file: !173, line: 675, baseType: !1176, size: 32, offset: 736)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1103, file: !173, line: 676, baseType: !62, size: 64, offset: 768)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1103, file: !173, line: 677, baseType: !1212, size: 128, offset: 832)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1103, file: !173, line: 678, baseType: !1212, size: 128, offset: 960)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1103, file: !173, line: 679, baseType: !1212, size: 128, offset: 1088)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1103, file: !173, line: 680, baseType: !80, size: 32, offset: 1216)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1103, file: !173, line: 681, baseType: !47, size: 16, offset: 1248)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1103, file: !173, line: 682, baseType: !104, size: 8, offset: 1264)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1103, file: !173, line: 683, baseType: !104, size: 8, offset: 1272)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1103, file: !173, line: 684, baseType: !2782, size: 64, offset: 1280)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1103, file: !173, line: 691, baseType: !60, size: 64, offset: 1344)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1103, file: !173, line: 692, baseType: !276, size: 320, offset: 1408)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1103, file: !173, line: 694, baseType: !60, size: 64, offset: 1728)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1103, file: !173, line: 695, baseType: !60, size: 64, offset: 1792)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1103, file: !173, line: 697, baseType: !422, size: 128, offset: 1856)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1103, file: !173, line: 698, baseType: !118, size: 128, offset: 1984)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1103, file: !173, line: 707, baseType: !118, size: 128, offset: 2112)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1103, file: !173, line: 708, baseType: !118, size: 128, offset: 2240)
!3079 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !173, line: 709, baseType: !3080, size: 128, offset: 2368)
!3080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1103, file: !173, line: 709, size: 128, elements: !3081)
!3081 = !{!3082, !3083}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3080, file: !173, line: 710, baseType: !571, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3080, file: !173, line: 711, baseType: !340, size: 128, align: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1103, file: !173, line: 713, baseType: !205, size: 64, offset: 2496)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1103, file: !173, line: 714, baseType: !205, size: 64, offset: 2560)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1103, file: !173, line: 715, baseType: !70, size: 32, offset: 2624)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1103, file: !173, line: 716, baseType: !70, size: 32, offset: 2656)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1103, file: !173, line: 717, baseType: !70, size: 32, offset: 2688)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1103, file: !173, line: 719, baseType: !70, size: 32, offset: 2720)
!3090 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !173, line: 721, baseType: !3091, size: 64, offset: 2752)
!3091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1103, file: !173, line: 721, size: 64, elements: !3092)
!3092 = !{!3093, !3322}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3091, file: !173, line: 722, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3096)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !173, line: 1914, size: 2112, elements: !3097)
!3097 = !{!3098, !3099, !3103, !3107, !3111, !3112, !3113, !3119, !3132, !3136, !3140, !3141, !3145, !3146, !3150, !3155, !3156, !3160, !3164, !3273, !3274, !3278, !3279, !3285, !3289, !3290, !3295, !3299, !3303, !3307, !3311, !3312, !3318}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3096, file: !173, line: 1915, baseType: !1336, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3096, file: !173, line: 1916, baseType: !3100, size: 64, offset: 64)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!62, !941, !62, !43}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3096, file: !173, line: 1917, baseType: !3104, size: 64, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!1254, !941, !361, !56, !61}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3096, file: !173, line: 1918, baseType: !3108, size: 64, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!1254, !941, !37, !56, !61}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3096, file: !173, line: 1919, baseType: !1874, size: 64, offset: 256)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3096, file: !173, line: 1920, baseType: !1874, size: 64, offset: 320)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3096, file: !173, line: 1921, baseType: !3114, size: 64, offset: 384)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!43, !1877, !3117, !7}
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !173, line: 53, flags: DIFlagFwdDecl)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3096, file: !173, line: 1923, baseType: !3120, size: 64, offset: 448)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!43, !941, !3123}
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !173, line: 1858, size: 128, elements: !3125)
!3125 = !{!3126, !3131}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3124, file: !173, line: 1859, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !173, line: 1855, baseType: !3128)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!350, !3123, !37, !43, !62, !239, !7}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3124, file: !173, line: 1860, baseType: !62, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3096, file: !173, line: 1924, baseType: !3133, size: 64, offset: 512)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!2136, !941, !2138}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3096, file: !173, line: 1925, baseType: !3137, size: 64, offset: 576)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!595, !941, !7, !60}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3096, file: !173, line: 1926, baseType: !3137, size: 64, offset: 640)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3096, file: !173, line: 1927, baseType: !3142, size: 64, offset: 704)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!43, !941, !1583}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3096, file: !173, line: 1928, baseType: !60, size: 64, offset: 768)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3096, file: !173, line: 1929, baseType: !3147, size: 64, offset: 832)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!43, !1102, !941}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3096, file: !173, line: 1930, baseType: !3151, size: 64, offset: 896)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!43, !941, !3154}
!3154 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !173, line: 1061, baseType: !41)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3096, file: !173, line: 1931, baseType: !3147, size: 64, offset: 960)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3096, file: !173, line: 1932, baseType: !3157, size: 64, offset: 1024)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!43, !941, !62, !62, !43}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3096, file: !173, line: 1933, baseType: !3161, size: 64, offset: 1088)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!43, !43, !941, !43}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3096, file: !173, line: 1934, baseType: !3165, size: 64, offset: 1152)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!43, !941, !43, !3168}
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !3170, line: 88, size: 1728, elements: !3171)
!3170 = !DIFile(filename: "./include/linux/filelock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "341396167365df38f75a901b3ed01a3d")
!3171 = !{!3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3196, !3197, !3198, !3211, !3245}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3169, file: !3170, line: 89, baseType: !3168, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3169, file: !3170, line: 90, baseType: !118, size: 128, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3169, file: !3170, line: 91, baseType: !422, size: 128, offset: 192)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3169, file: !3170, line: 92, baseType: !118, size: 128, offset: 320)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3169, file: !3170, line: 95, baseType: !118, size: 128, offset: 448)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3169, file: !3170, line: 98, baseType: !3154, size: 64, offset: 576)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3169, file: !3170, line: 99, baseType: !7, size: 32, offset: 640)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3169, file: !3170, line: 100, baseType: !108, size: 8, offset: 672)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3169, file: !3170, line: 101, baseType: !7, size: 32, offset: 704)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3169, file: !3170, line: 102, baseType: !43, size: 32, offset: 736)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3169, file: !3170, line: 103, baseType: !75, size: 192, offset: 768)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3169, file: !3170, line: 104, baseType: !941, size: 64, offset: 960)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3169, file: !3170, line: 105, baseType: !62, size: 64, offset: 1024)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3169, file: !3170, line: 106, baseType: !62, size: 64, offset: 1088)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3169, file: !3170, line: 108, baseType: !3187, size: 64, offset: 1152)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !173, line: 1083, size: 384, elements: !3189)
!3189 = !{!3190, !3191, !3192, !3193, !3194, !3195}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3188, file: !173, line: 1084, baseType: !968, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3188, file: !173, line: 1085, baseType: !43, size: 32, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3188, file: !173, line: 1086, baseType: !43, size: 32, offset: 96)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3188, file: !173, line: 1087, baseType: !3187, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3188, file: !173, line: 1088, baseType: !941, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3188, file: !173, line: 1089, baseType: !340, size: 128, align: 64, offset: 256)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3169, file: !3170, line: 110, baseType: !60, size: 64, offset: 1216)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3169, file: !3170, line: 111, baseType: !60, size: 64, offset: 1280)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3169, file: !3170, line: 113, baseType: !3199, size: 64, offset: 1344)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3201)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !3170, line: 31, size: 128, elements: !3202)
!3202 = !{!3203, !3207}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3201, file: !3170, line: 32, baseType: !3204, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{null, !3168, !3168}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3201, file: !3170, line: 33, baseType: !3208, size: 64, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{null, !3168}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3169, file: !3170, line: 114, baseType: !3212, size: 64, offset: 1408)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3214)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !3170, line: 36, size: 704, elements: !3215)
!3215 = !{!3216, !3217, !3221, !3225, !3226, !3230, !3234, !3238, !3242, !3243, !3244}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "lm_mod_owner", scope: !3214, file: !3170, line: 37, baseType: !41, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3214, file: !3170, line: 38, baseType: !3218, size: 64, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!3154, !3154}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3214, file: !3170, line: 39, baseType: !3222, size: 64, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{null, !3154}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3214, file: !3170, line: 40, baseType: !3208, size: 64, offset: 192)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3214, file: !3170, line: 41, baseType: !3227, size: 64, offset: 256)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!43, !3168, !43}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3214, file: !3170, line: 42, baseType: !3231, size: 64, offset: 320)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!350, !3168}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3214, file: !3170, line: 43, baseType: !3235, size: 64, offset: 384)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!43, !3168, !43, !121}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3214, file: !3170, line: 44, baseType: !3239, size: 64, offset: 448)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{null, !3168, !1851}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3214, file: !3170, line: 45, baseType: !3231, size: 64, offset: 512)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "lm_lock_expirable", scope: !3214, file: !3170, line: 46, baseType: !3231, size: 64, offset: 576)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "lm_expire_lock", scope: !3214, file: !3170, line: 47, baseType: !2514, size: 64, offset: 640)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3169, file: !3170, line: 126, baseType: !3246, size: 256, offset: 1472)
!3246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3169, file: !3170, line: 115, size: 256, elements: !3247)
!3247 = !{!3248, !3257, !3263, !3269}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3246, file: !3170, line: 116, baseType: !3249, size: 256)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3250, line: 10, size: 256, elements: !3251)
!3250 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c146eb6cc450a23c1b61e3c824cbd799")
!3251 = !{!3252, !3253, !3256}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3249, file: !3250, line: 11, baseType: !306, size: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3249, file: !3250, line: 12, baseType: !3254, size: 64, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3250, line: 5, flags: DIFlagFwdDecl)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3249, file: !3250, line: 13, baseType: !118, size: 128, offset: 128)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3246, file: !3170, line: 117, baseType: !3258, size: 64)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3250, line: 17, size: 64, elements: !3259)
!3259 = !{!3260}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3258, file: !3250, line: 18, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3250, line: 16, flags: DIFlagFwdDecl)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3246, file: !3170, line: 122, baseType: !3264, size: 192)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3246, file: !3170, line: 118, size: 192, elements: !3265)
!3265 = !{!3266, !3267, !3268}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3264, file: !3170, line: 119, baseType: !118, size: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3264, file: !3170, line: 120, baseType: !43, size: 32, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3264, file: !3170, line: 121, baseType: !7, size: 32, offset: 160)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "ceph", scope: !3246, file: !3170, line: 125, baseType: !3270, size: 64)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3246, file: !3170, line: 123, size: 64, elements: !3271)
!3271 = !{!3272}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !3270, file: !3170, line: 124, baseType: !1102, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3096, file: !173, line: 1935, baseType: !938, size: 64, offset: 1216)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3096, file: !173, line: 1936, baseType: !3275, size: 64, offset: 1280)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!43, !43}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3096, file: !173, line: 1937, baseType: !3165, size: 64, offset: 1344)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3096, file: !173, line: 1938, baseType: !3280, size: 64, offset: 1408)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!1254, !3283, !941, !61, !56, !7}
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !620, line: 59, flags: DIFlagFwdDecl)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3096, file: !173, line: 1939, baseType: !3286, size: 64, offset: 1472)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!1254, !941, !61, !3283, !56, !7}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3096, file: !173, line: 1940, baseType: !1980, size: 64, offset: 1536)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3096, file: !173, line: 1941, baseType: !3291, size: 64, offset: 1600)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!43, !941, !43, !3294, !1851}
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3096, file: !173, line: 1942, baseType: !3296, size: 64, offset: 1664)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!595, !941, !43, !62, !62}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3096, file: !173, line: 1944, baseType: !3300, size: 64, offset: 1728)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{null, !2093, !941}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3096, file: !173, line: 1948, baseType: !3304, size: 64, offset: 1792)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!1254, !941, !62, !941, !62, !56, !7}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3096, file: !173, line: 1950, baseType: !3308, size: 64, offset: 1856)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!62, !941, !62, !941, !62, !62, !7}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3096, file: !173, line: 1953, baseType: !3157, size: 64, offset: 1920)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3096, file: !173, line: 1954, baseType: !3313, size: 64, offset: 1984)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!43, !3316, !7}
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !173, line: 1911, flags: DIFlagFwdDecl)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3096, file: !173, line: 1955, baseType: !3319, size: 64, offset: 2048)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!43, !3316, !3117, !7}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3091, file: !173, line: 723, baseType: !2540, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1103, file: !173, line: 725, baseType: !3324, size: 64, offset: 2816)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !3170, line: 129, size: 448, elements: !3326)
!3326 = !{!3327, !3328, !3329, !3330}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3325, file: !3170, line: 130, baseType: !80, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3325, file: !3170, line: 131, baseType: !118, size: 128, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3325, file: !3170, line: 132, baseType: !118, size: 128, offset: 192)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3325, file: !3170, line: 133, baseType: !118, size: 128, offset: 320)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1103, file: !173, line: 726, baseType: !1454, size: 1536, align: 64, offset: 2880)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1103, file: !173, line: 727, baseType: !118, size: 128, offset: 4416)
!3333 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !173, line: 728, baseType: !3334, size: 64, offset: 4544)
!3334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1103, file: !173, line: 728, size: 64, elements: !3335)
!3335 = !{!3336, !3337, !3340, !3341}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3334, file: !173, line: 729, baseType: !3283, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3334, file: !173, line: 730, baseType: !3338, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !173, line: 730, flags: DIFlagFwdDecl)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3334, file: !173, line: 731, baseType: !361, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3334, file: !173, line: 732, baseType: !7, size: 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1103, file: !173, line: 735, baseType: !307, size: 32, offset: 4608)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1103, file: !173, line: 738, baseType: !307, size: 32, offset: 4640)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1103, file: !173, line: 739, baseType: !2911, size: 64, offset: 4672)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1103, file: !173, line: 750, baseType: !41, size: 64, offset: 4736)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1068, file: !1069, line: 91, baseType: !3347, size: 256, offset: 448)
!3347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !2933)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1068, file: !1069, line: 94, baseType: !3349, size: 64, offset: 704)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3350, line: 25, size: 64, elements: !3351)
!3350 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3351 = !{!3352}
!3352 = !DIDerivedType(tag: DW_TAG_member, scope: !3349, file: !3350, line: 26, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3349, file: !3350, line: 26, size: 64, elements: !3354)
!3354 = !{!3355, !3356}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3353, file: !3350, line: 28, baseType: !240, size: 64, align: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, scope: !3353, file: !3350, line: 30, baseType: !3357, size: 64)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3353, file: !3350, line: 30, size: 64, elements: !3358)
!3358 = !{!3359, !3360}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3357, file: !3350, line: 31, baseType: !80, size: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3357, file: !3350, line: 32, baseType: !43, size: 32, offset: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1068, file: !1069, line: 95, baseType: !2948, size: 64, offset: 768)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1068, file: !1069, line: 96, baseType: !1303, size: 64, offset: 832)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1068, file: !1069, line: 97, baseType: !60, size: 64, offset: 896)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1068, file: !1069, line: 98, baseType: !41, size: 64, offset: 960)
!3365 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !1069, line: 100, baseType: !3366, size: 128, offset: 1024)
!3366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1068, file: !1069, line: 100, size: 128, elements: !3367)
!3367 = !{!3368, !3369}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3366, file: !1069, line: 101, baseType: !118, size: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3366, file: !1069, line: 102, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1068, file: !1069, line: 104, baseType: !118, size: 128, offset: 1152)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1068, file: !1069, line: 105, baseType: !118, size: 128, offset: 1280)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1068, file: !1069, line: 113, baseType: !3374, size: 128, offset: 1408)
!3374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1068, file: !1069, line: 109, size: 128, elements: !3375)
!3375 = !{!3376, !3377, !3378}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3374, file: !1069, line: 110, baseType: !422, size: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3374, file: !1069, line: 111, baseType: !1078, size: 128)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3374, file: !1069, line: 112, baseType: !340, size: 128, align: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1063, file: !1064, line: 72, baseType: !1303, size: 64, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1063, file: !1064, line: 73, baseType: !43, size: 32, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1063, file: !1064, line: 74, baseType: !1141, size: 64, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1058, file: !1059, line: 10, baseType: !1067, size: 64, offset: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !942, file: !173, line: 1015, baseType: !1102, size: 64, offset: 1344)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !942, file: !173, line: 1016, baseType: !3094, size: 64, offset: 1408)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !942, file: !173, line: 1018, baseType: !239, size: 64, offset: 1472)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !942, file: !173, line: 1020, baseType: !41, size: 64, offset: 1536)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !942, file: !173, line: 1023, baseType: !41, size: 64, offset: 1600)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !942, file: !173, line: 1027, baseType: !3389, size: 64, offset: 1664)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !942, file: !173, line: 1029, baseType: !1453, size: 64, offset: 1728)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !942, file: !173, line: 1030, baseType: !1990, size: 32, offset: 1792)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !942, file: !173, line: 1031, baseType: !1990, size: 32, offset: 1824)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !917, file: !144, line: 756, baseType: !60, size: 64, offset: 704)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !917, file: !144, line: 757, baseType: !60, size: 64, offset: 768)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !917, file: !144, line: 760, baseType: !60, size: 64, offset: 832)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !917, file: !144, line: 761, baseType: !60, size: 64, offset: 896)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !917, file: !144, line: 763, baseType: !60, size: 64, offset: 960)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !917, file: !144, line: 764, baseType: !3399, size: 64, offset: 1024)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1598, line: 299, baseType: !3401)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1598, line: 299, size: 64, elements: !3402)
!3402 = !{!3403}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3401, file: !1598, line: 299, baseType: !3404, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1603, line: 18, baseType: !60)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !917, file: !144, line: 773, baseType: !70, size: 32, offset: 1088)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !917, file: !144, line: 785, baseType: !70, size: 32, offset: 1120)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !917, file: !144, line: 795, baseType: !3408, size: 64, offset: 1152)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !144, line: 726, size: 128, elements: !3410)
!3410 = !{!3411, !3412}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3409, file: !144, line: 727, baseType: !239, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3409, file: !144, line: 728, baseType: !43, size: 32, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !917, file: !144, line: 801, baseType: !60, size: 64, offset: 1216)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !917, file: !144, line: 804, baseType: !203, size: 64, offset: 1280)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !917, file: !144, line: 806, baseType: !43, size: 32, offset: 1344)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !917, file: !144, line: 808, baseType: !80, size: 32, offset: 1376)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !917, file: !144, line: 823, baseType: !276, size: 320, offset: 1408)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !917, file: !144, line: 825, baseType: !118, size: 128, offset: 1728)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !917, file: !144, line: 845, baseType: !43, size: 32, offset: 1856)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !917, file: !144, line: 849, baseType: !60, size: 64, offset: 1920)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !917, file: !144, line: 850, baseType: !60, size: 64, offset: 1984)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !917, file: !144, line: 852, baseType: !60, size: 64, offset: 2048)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !917, file: !144, line: 853, baseType: !60, size: 64, offset: 2112)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !917, file: !144, line: 854, baseType: !205, size: 64, offset: 2176)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !917, file: !144, line: 855, baseType: !60, size: 64, offset: 2240)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !917, file: !144, line: 856, baseType: !60, size: 64, offset: 2304)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !917, file: !144, line: 857, baseType: !60, size: 64, offset: 2368)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !917, file: !144, line: 858, baseType: !60, size: 64, offset: 2432)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !917, file: !144, line: 865, baseType: !790, size: 32, offset: 2496)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !917, file: !144, line: 867, baseType: !80, size: 32, offset: 2528)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !917, file: !144, line: 869, baseType: !60, size: 64, offset: 2560)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !917, file: !144, line: 869, baseType: !60, size: 64, offset: 2624)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !917, file: !144, line: 869, baseType: !60, size: 64, offset: 2688)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !917, file: !144, line: 869, baseType: !60, size: 64, offset: 2752)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !917, file: !144, line: 870, baseType: !60, size: 64, offset: 2816)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !917, file: !144, line: 870, baseType: !60, size: 64, offset: 2880)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !917, file: !144, line: 870, baseType: !60, size: 64, offset: 2944)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !917, file: !144, line: 871, baseType: !60, size: 64, offset: 3008)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !917, file: !144, line: 871, baseType: !60, size: 64, offset: 3072)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !917, file: !144, line: 871, baseType: !60, size: 64, offset: 3136)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !917, file: !144, line: 871, baseType: !60, size: 64, offset: 3200)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !917, file: !144, line: 873, baseType: !3443, size: 3328, offset: 3264)
!3443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 3328, elements: !3444)
!3444 = !{!3445}
!3445 = !DISubrange(count: 52)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !917, file: !144, line: 875, baseType: !3447, size: 1280, offset: 6592)
!3447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 1280, elements: !371)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !917, file: !144, line: 877, baseType: !3449, size: 64, offset: 7872)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !144, line: 877, flags: DIFlagFwdDecl)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !917, file: !144, line: 880, baseType: !3452, size: 1088, offset: 7936)
!3452 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3453, line: 72, baseType: !3454)
!3453 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3453, line: 23, size: 1088, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3463, !3464, !3465, !3466, !3491, !3492, !3493}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3454, file: !3453, line: 28, baseType: !239, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3454, file: !3453, line: 38, baseType: !205, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3454, file: !3453, line: 40, baseType: !60, size: 64, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3454, file: !3453, line: 43, baseType: !276, size: 320, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3454, file: !3453, line: 44, baseType: !3461, size: 64, offset: 512)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3453, line: 44, flags: DIFlagFwdDecl)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3454, file: !3453, line: 48, baseType: !60, size: 64, offset: 576)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3454, file: !3453, line: 59, baseType: !955, size: 256, offset: 640)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3454, file: !3453, line: 60, baseType: !41, size: 64, offset: 896)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3454, file: !3453, line: 61, baseType: !3467, size: 64, offset: 960)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3469)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3470, line: 13, size: 1216, elements: !3471)
!3470 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3471 = !{!3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3469, file: !3470, line: 14, baseType: !41, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3469, file: !3470, line: 15, baseType: !60, size: 64, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3469, file: !3470, line: 17, baseType: !60, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3469, file: !3470, line: 17, baseType: !60, size: 64, offset: 192)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3469, file: !3470, line: 18, baseType: !60, size: 64, offset: 256)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3469, file: !3470, line: 18, baseType: !60, size: 64, offset: 320)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3469, file: !3470, line: 19, baseType: !2029, size: 64, offset: 384)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3469, file: !3470, line: 21, baseType: !595, size: 64, offset: 448)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3469, file: !3470, line: 23, baseType: !595, size: 64, offset: 512)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3469, file: !3470, line: 24, baseType: !595, size: 64, offset: 576)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3469, file: !3470, line: 25, baseType: !595, size: 64, offset: 640)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3469, file: !3470, line: 26, baseType: !595, size: 64, offset: 704)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3469, file: !3470, line: 27, baseType: !595, size: 64, offset: 768)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3469, file: !3470, line: 28, baseType: !595, size: 64, offset: 832)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3469, file: !3470, line: 29, baseType: !595, size: 64, offset: 896)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3469, file: !3470, line: 30, baseType: !595, size: 64, offset: 960)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3469, file: !3470, line: 31, baseType: !595, size: 64, offset: 1024)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3469, file: !3470, line: 32, baseType: !595, size: 64, offset: 1088)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3469, file: !3470, line: 33, baseType: !595, size: 64, offset: 1152)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3454, file: !3453, line: 63, baseType: !70, size: 32, offset: 1024)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3454, file: !3453, line: 69, baseType: !114, size: 16, offset: 1056)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3454, file: !3453, line: 70, baseType: !2316, size: 16, offset: 1072)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !917, file: !144, line: 882, baseType: !60, size: 64, offset: 9024)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !917, file: !144, line: 885, baseType: !80, size: 32, offset: 9088)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !917, file: !144, line: 886, baseType: !3497, size: 64, offset: 9152)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !144, line: 732, flags: DIFlagFwdDecl)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !917, file: !144, line: 901, baseType: !442, size: 64, offset: 9216)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !917, file: !144, line: 904, baseType: !941, size: 64, offset: 9280)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !917, file: !144, line: 906, baseType: !3502, size: 64, offset: 9344)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !144, line: 906, flags: DIFlagFwdDecl)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !917, file: !144, line: 930, baseType: !70, size: 32, offset: 9408)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !917, file: !144, line: 933, baseType: !70, size: 32, offset: 9440)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !917, file: !144, line: 935, baseType: !3507, size: 64, offset: 9472)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !129, line: 103, size: 64, elements: !3508)
!3508 = !{!3509}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3507, file: !129, line: 104, baseType: !3510, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !129, line: 101, flags: DIFlagFwdDecl)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !917, file: !144, line: 940, baseType: !203, size: 64, offset: 9536)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !917, file: !144, line: 942, baseType: !491, size: 256, offset: 9600)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !914, file: !144, line: 986, baseType: !3515, offset: 10240)
!3515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, elements: !607)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !619, file: !620, line: 882, baseType: !913, size: 64, offset: 9792)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !619, file: !620, line: 884, baseType: !43, size: 32, offset: 9856)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !619, file: !620, line: 885, baseType: !43, size: 32, offset: 9888)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !619, file: !620, line: 886, baseType: !43, size: 32, offset: 9920)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !619, file: !620, line: 888, baseType: !43, size: 32, offset: 9952)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !619, file: !620, line: 890, baseType: !60, size: 64, offset: 9984)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !619, file: !620, line: 893, baseType: !7, size: 32, offset: 10048)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !619, file: !620, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !619, file: !620, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !619, file: !620, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !619, file: !620, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !619, file: !620, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !619, file: !620, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !619, file: !620, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !619, file: !620, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !619, file: !620, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !619, file: !620, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !619, file: !620, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !619, file: !620, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !619, file: !620, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !619, file: !620, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !619, file: !620, line: 969, baseType: !60, size: 64, offset: 10176)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !619, file: !620, line: 971, baseType: !3539, size: 448, offset: 10240)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !27, line: 25, size: 448, elements: !3540)
!3540 = !{!3541, !3542, !3547}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3539, file: !27, line: 26, baseType: !60, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3539, file: !27, line: 27, baseType: !3543, size: 64, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!595, !3546}
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, scope: !3539, file: !27, line: 28, baseType: !3548, size: 320, offset: 128)
!3548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3539, file: !27, line: 28, size: 320, elements: !3549)
!3549 = !{!3550, !3560, !3585}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3548, file: !27, line: 37, baseType: !3551, size: 320)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3548, file: !27, line: 30, size: 320, elements: !3552)
!3552 = !{!3553, !3555, !3556, !3557, !3558, !3559}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3551, file: !27, line: 31, baseType: !3554, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3551, file: !27, line: 32, baseType: !306, size: 32, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3551, file: !27, line: 33, baseType: !306, size: 32, offset: 96)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3551, file: !27, line: 34, baseType: !306, size: 32, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3551, file: !27, line: 35, baseType: !239, size: 64, offset: 192)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3551, file: !27, line: 36, baseType: !3554, size: 64, offset: 256)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3548, file: !27, line: 47, baseType: !3561, size: 192)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3548, file: !27, line: 39, size: 192, elements: !3562)
!3562 = !{!3563, !3564, !3565, !3584}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3561, file: !27, line: 40, baseType: !782, size: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3561, file: !27, line: 41, baseType: !26, size: 32, offset: 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, scope: !3561, file: !27, line: 42, baseType: !3566, size: 64, offset: 64)
!3566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3561, file: !27, line: 42, size: 64, elements: !3567)
!3567 = !{!3568, !3576}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3566, file: !27, line: 43, baseType: !3569, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3571, line: 7, size: 128, elements: !3572)
!3571 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3572 = !{!3573, !3575}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3570, file: !3571, line: 8, baseType: !3574, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !58, line: 93, baseType: !64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3570, file: !3571, line: 9, baseType: !64, size: 64, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3566, file: !27, line: 44, baseType: !3577, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3579, line: 7, size: 64, elements: !3580)
!3579 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3580 = !{!3581, !3583}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3578, file: !3579, line: 8, baseType: !3582, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3579, line: 5, baseType: !261)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3578, file: !3579, line: 9, baseType: !261, size: 32, offset: 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3561, file: !27, line: 46, baseType: !239, size: 64, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3548, file: !27, line: 55, baseType: !3586, size: 256)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3548, file: !27, line: 49, size: 256, elements: !3587)
!3587 = !{!3588, !3591, !3592, !3593, !3594}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3586, file: !27, line: 50, baseType: !3589, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !27, line: 14, flags: DIFlagFwdDecl)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3586, file: !27, line: 51, baseType: !43, size: 32, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3586, file: !27, line: 52, baseType: !43, size: 32, offset: 96)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3586, file: !27, line: 53, baseType: !60, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3586, file: !27, line: 54, baseType: !60, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !619, file: !620, line: 973, baseType: !3596, size: 32, offset: 10688)
!3596 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !46, line: 27, baseType: !3597)
!3597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !58, line: 28, baseType: !43)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !619, file: !620, line: 974, baseType: !3596, size: 32, offset: 10720)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !619, file: !620, line: 978, baseType: !60, size: 64, offset: 10752)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !619, file: !620, line: 987, baseType: !618, size: 64, offset: 10816)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !619, file: !620, line: 990, baseType: !618, size: 64, offset: 10880)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !619, file: !620, line: 995, baseType: !118, size: 128, offset: 10944)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !619, file: !620, line: 996, baseType: !118, size: 128, offset: 11072)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !619, file: !620, line: 997, baseType: !618, size: 64, offset: 11200)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !619, file: !620, line: 1005, baseType: !118, size: 128, offset: 11264)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !619, file: !620, line: 1006, baseType: !118, size: 128, offset: 11392)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !619, file: !620, line: 1009, baseType: !991, size: 64, offset: 11520)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !619, file: !620, line: 1010, baseType: !3609, size: 512, offset: 11584)
!3609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 512, elements: !371)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !619, file: !620, line: 1011, baseType: !118, size: 128, offset: 12096)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !619, file: !620, line: 1012, baseType: !118, size: 128, offset: 12224)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !619, file: !620, line: 1014, baseType: !529, size: 64, offset: 12352)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !619, file: !620, line: 1017, baseType: !2309, size: 64, offset: 12416)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !619, file: !620, line: 1020, baseType: !2309, size: 64, offset: 12480)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !619, file: !620, line: 1023, baseType: !41, size: 64, offset: 12544)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !619, file: !620, line: 1025, baseType: !239, size: 64, offset: 12608)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !619, file: !620, line: 1026, baseType: !239, size: 64, offset: 12672)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !619, file: !620, line: 1031, baseType: !239, size: 64, offset: 12736)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !619, file: !620, line: 1032, baseType: !3620, size: 192, offset: 12800)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !620, line: 324, size: 192, elements: !3621)
!3621 = !{!3622, !3623, !3624}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3620, file: !620, line: 326, baseType: !239, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3620, file: !620, line: 327, baseType: !239, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3620, file: !620, line: 328, baseType: !287, size: 32, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !619, file: !620, line: 1041, baseType: !60, size: 64, offset: 12992)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !619, file: !620, line: 1042, baseType: !60, size: 64, offset: 13056)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !619, file: !620, line: 1045, baseType: !239, size: 64, offset: 13120)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !619, file: !620, line: 1048, baseType: !239, size: 64, offset: 13184)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !619, file: !620, line: 1051, baseType: !60, size: 64, offset: 13248)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !619, file: !620, line: 1052, baseType: !60, size: 64, offset: 13312)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !619, file: !620, line: 1055, baseType: !3632, size: 640, offset: 13376)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3633, line: 132, size: 640, elements: !3634)
!3633 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3634 = !{!3635, !3641, !3642}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3632, file: !3633, line: 133, baseType: !3636, size: 576)
!3636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3637, size: 576, elements: !987)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3633, line: 117, size: 192, elements: !3638)
!3638 = !{!3639, !3640}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3637, file: !3633, line: 118, baseType: !239, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3637, file: !3633, line: 119, baseType: !796, size: 128, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3632, file: !3633, line: 134, baseType: !7, size: 32, offset: 576)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3632, file: !3633, line: 135, baseType: !7, size: 32, offset: 608)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !619, file: !620, line: 1058, baseType: !3644, size: 448, offset: 14016)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3633, line: 144, size: 448, elements: !3645)
!3645 = !{!3646, !3647, !3648}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3644, file: !3633, line: 145, baseType: !340, size: 128, align: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3644, file: !3633, line: 146, baseType: !955, size: 256, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3644, file: !3633, line: 147, baseType: !7, size: 32, offset: 384)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !619, file: !620, line: 1064, baseType: !197, size: 64, offset: 14464)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !619, file: !620, line: 1067, baseType: !197, size: 64, offset: 14528)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !619, file: !620, line: 1070, baseType: !197, size: 64, offset: 14592)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !619, file: !620, line: 1074, baseType: !248, size: 64, offset: 14656)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !619, file: !620, line: 1084, baseType: !3654, size: 128, offset: 14720)
!3654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !2942)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !619, file: !620, line: 1086, baseType: !3656, size: 64, offset: 14848)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !620, line: 55, flags: DIFlagFwdDecl)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !619, file: !620, line: 1089, baseType: !3659, size: 64, offset: 14912)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3660, line: 12, size: 64, elements: !3661)
!3660 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3661 = !{!3662}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3659, file: !3660, line: 13, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3660, line: 8, flags: DIFlagFwdDecl)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !619, file: !620, line: 1090, baseType: !3666, size: 128, offset: 14976)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3667, line: 13, size: 128, elements: !3668)
!3667 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3668 = !{!3669}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3666, file: !3667, line: 14, baseType: !118, size: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !619, file: !620, line: 1097, baseType: !3671, size: 64, offset: 15104)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !620, line: 50, flags: DIFlagFwdDecl)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !619, file: !620, line: 1100, baseType: !3674, size: 64, offset: 15168)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !620, line: 1100, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !619, file: !620, line: 1103, baseType: !3677, size: 64, offset: 15232)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !620, line: 53, flags: DIFlagFwdDecl)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !619, file: !620, line: 1107, baseType: !3680, size: 64, offset: 15296)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3682, line: 31, size: 576, elements: !3683)
!3682 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3683 = !{!3684, !3685, !3688, !3691, !3694, !3695, !3698, !3701, !3702}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3681, file: !3682, line: 32, baseType: !253, size: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3681, file: !3682, line: 33, baseType: !3686, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3682, line: 9, flags: DIFlagFwdDecl)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3681, file: !3682, line: 34, baseType: !3689, size: 64, offset: 128)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3682, line: 10, flags: DIFlagFwdDecl)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3681, file: !3682, line: 35, baseType: !3692, size: 64, offset: 192)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3682, line: 8, flags: DIFlagFwdDecl)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3681, file: !3682, line: 36, baseType: !1008, size: 64, offset: 256)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3681, file: !3682, line: 37, baseType: !3696, size: 64, offset: 320)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !250, line: 34, flags: DIFlagFwdDecl)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3681, file: !3682, line: 38, baseType: !3699, size: 64, offset: 384)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3682, line: 38, flags: DIFlagFwdDecl)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3681, file: !3682, line: 39, baseType: !3699, size: 64, offset: 448)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3681, file: !3682, line: 40, baseType: !3703, size: 64, offset: 512)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3682, line: 12, flags: DIFlagFwdDecl)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !619, file: !620, line: 1110, baseType: !3706, size: 64, offset: 15360)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3708, line: 93, size: 8768, elements: !3709)
!3708 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3709 = !{!3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3758, !3767, !3768, !3770, !3771, !3772, !3775, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3813, !3814, !3821, !3831, !3834, !3835, !3838, !3839, !3840, !3841, !3842, !3843}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3707, file: !3708, line: 94, baseType: !253, size: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3707, file: !3708, line: 95, baseType: !70, size: 32, offset: 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3707, file: !3708, line: 96, baseType: !43, size: 32, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3707, file: !3708, line: 97, baseType: !43, size: 32, offset: 96)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3707, file: !3708, line: 98, baseType: !118, size: 128, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3707, file: !3708, line: 100, baseType: !75, size: 192, offset: 256)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3707, file: !3708, line: 103, baseType: !618, size: 64, offset: 448)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3707, file: !3708, line: 106, baseType: !3718, size: 192, offset: 512)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3719, line: 32, size: 192, elements: !3720)
!3719 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3720 = !{!3721, !3722}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3718, file: !3719, line: 33, baseType: !118, size: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3718, file: !3719, line: 34, baseType: !3723, size: 64, offset: 128)
!3723 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3724, line: 25, baseType: !3725)
!3724 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3724, line: 23, size: 64, elements: !3726)
!3726 = !{!3727}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3725, file: !3724, line: 24, baseType: !864, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3707, file: !3708, line: 109, baseType: !571, size: 64, offset: 704)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3707, file: !3708, line: 112, baseType: !43, size: 32, offset: 768)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3707, file: !3708, line: 114, baseType: !43, size: 32, offset: 800)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3707, file: !3708, line: 115, baseType: !618, size: 64, offset: 832)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3707, file: !3708, line: 118, baseType: !43, size: 32, offset: 896)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3707, file: !3708, line: 119, baseType: !7, size: 32, offset: 928)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3707, file: !3708, line: 121, baseType: !3735, size: 64, offset: 960)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3708, line: 80, size: 448, elements: !3737)
!3737 = !{!3738, !3739, !3745}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3736, file: !3708, line: 81, baseType: !70, size: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3736, file: !3708, line: 82, baseType: !3740, size: 128, offset: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3708, line: 75, size: 128, elements: !3741)
!3741 = !{!3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3740, file: !3708, line: 76, baseType: !618, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3740, file: !3708, line: 77, baseType: !3744, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3736, file: !3708, line: 83, baseType: !530, size: 256, offset: 192)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3707, file: !3708, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3707, file: !3708, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3707, file: !3708, line: 138, baseType: !7, size: 32, offset: 1056)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3707, file: !3708, line: 139, baseType: !118, size: 128, offset: 1088)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3707, file: !3708, line: 142, baseType: !735, size: 512, offset: 1216)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3707, file: !3708, line: 143, baseType: !743, size: 64, offset: 1728)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3707, file: !3708, line: 150, baseType: !3753, size: 256, offset: 1792)
!3753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3754, size: 256, elements: !2299)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3708, line: 38, size: 128, elements: !3755)
!3755 = !{!3756, !3757}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3754, file: !3708, line: 39, baseType: !239, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3754, file: !3708, line: 40, baseType: !239, size: 64, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3707, file: !3708, line: 156, baseType: !3759, size: 192, offset: 2048)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3708, line: 66, size: 192, elements: !3760)
!3760 = !{!3761}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3759, file: !3708, line: 67, baseType: !3762, size: 192)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3708, line: 47, size: 192, elements: !3763)
!3763 = !{!3764, !3765, !3766}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3762, file: !3708, line: 48, baseType: !205, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3762, file: !3708, line: 49, baseType: !205, size: 64, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3762, file: !3708, line: 50, baseType: !205, size: 64, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3707, file: !3708, line: 160, baseType: !3632, size: 640, offset: 2240)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3707, file: !3708, line: 163, baseType: !3769, size: 256, offset: 2880)
!3769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !991, size: 256, elements: !371)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3707, file: !3708, line: 169, baseType: !991, size: 64, offset: 3136)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3707, file: !3708, line: 172, baseType: !43, size: 32, offset: 3200)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3707, file: !3708, line: 174, baseType: !3773, size: 64, offset: 3264)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3708, line: 174, flags: DIFlagFwdDecl)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3707, file: !3708, line: 185, baseType: !3776, size: 64, offset: 3328)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !786, line: 860, baseType: !3777)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !786, line: 853, size: 64, elements: !3778)
!3778 = !{!3779, !3780}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3777, file: !786, line: 858, baseType: !1073, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3777, file: !786, line: 859, baseType: !80, size: 32, offset: 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3707, file: !3708, line: 186, baseType: !239, size: 64, offset: 3392)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3707, file: !3708, line: 186, baseType: !239, size: 64, offset: 3456)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3707, file: !3708, line: 186, baseType: !239, size: 64, offset: 3520)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3707, file: !3708, line: 186, baseType: !239, size: 64, offset: 3584)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3707, file: !3708, line: 187, baseType: !239, size: 64, offset: 3648)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3707, file: !3708, line: 188, baseType: !239, size: 64, offset: 3712)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3707, file: !3708, line: 189, baseType: !3620, size: 192, offset: 3776)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3707, file: !3708, line: 190, baseType: !60, size: 64, offset: 3968)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3707, file: !3708, line: 190, baseType: !60, size: 64, offset: 4032)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3707, file: !3708, line: 190, baseType: !60, size: 64, offset: 4096)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3707, file: !3708, line: 190, baseType: !60, size: 64, offset: 4160)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3707, file: !3708, line: 191, baseType: !60, size: 64, offset: 4224)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3707, file: !3708, line: 191, baseType: !60, size: 64, offset: 4288)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3707, file: !3708, line: 191, baseType: !60, size: 64, offset: 4352)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3707, file: !3708, line: 191, baseType: !60, size: 64, offset: 4416)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3707, file: !3708, line: 192, baseType: !60, size: 64, offset: 4480)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3707, file: !3708, line: 192, baseType: !60, size: 64, offset: 4544)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3707, file: !3708, line: 192, baseType: !60, size: 64, offset: 4608)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3707, file: !3708, line: 192, baseType: !60, size: 64, offset: 4672)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3707, file: !3708, line: 193, baseType: !60, size: 64, offset: 4736)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3707, file: !3708, line: 193, baseType: !60, size: 64, offset: 4800)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3707, file: !3708, line: 194, baseType: !3803, size: 448, offset: 4864)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3804, line: 12, size: 448, elements: !3805)
!3804 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3805 = !{!3806, !3807, !3808, !3809, !3810, !3811, !3812}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3803, file: !3804, line: 15, baseType: !239, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3803, file: !3804, line: 17, baseType: !239, size: 64, offset: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3803, file: !3804, line: 19, baseType: !239, size: 64, offset: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3803, file: !3804, line: 21, baseType: !239, size: 64, offset: 192)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3803, file: !3804, line: 29, baseType: !239, size: 64, offset: 256)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3803, file: !3804, line: 35, baseType: !239, size: 64, offset: 320)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3803, file: !3804, line: 44, baseType: !239, size: 64, offset: 384)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3707, file: !3708, line: 202, baseType: !241, size: 64, offset: 5312)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3707, file: !3708, line: 213, baseType: !3815, size: 2048, offset: 5376)
!3815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3816, size: 2048, elements: !2942)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3817, line: 43, size: 128, elements: !3818)
!3817 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3818 = !{!3819, !3820}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3816, file: !3817, line: 44, baseType: !59, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3816, file: !3817, line: 45, baseType: !59, size: 64, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3707, file: !3708, line: 216, baseType: !3822, size: 448, offset: 7424)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3708, line: 30, size: 448, elements: !3823)
!3823 = !{!3824, !3825, !3826, !3827, !3828, !3829, !3830}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3822, file: !3708, line: 31, baseType: !43, size: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3822, file: !3708, line: 32, baseType: !595, size: 64, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3822, file: !3708, line: 33, baseType: !60, size: 64, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3822, file: !3708, line: 34, baseType: !239, size: 64, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3822, file: !3708, line: 34, baseType: !239, size: 64, offset: 256)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3822, file: !3708, line: 35, baseType: !60, size: 64, offset: 320)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3822, file: !3708, line: 35, baseType: !60, size: 64, offset: 384)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3707, file: !3708, line: 219, baseType: !3832, size: 64, offset: 7872)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3708, line: 219, flags: DIFlagFwdDecl)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3707, file: !3708, line: 222, baseType: !7, size: 32, offset: 7936)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3707, file: !3708, line: 223, baseType: !3836, size: 64, offset: 8000)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3708, line: 223, flags: DIFlagFwdDecl)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3707, file: !3708, line: 230, baseType: !350, size: 8, offset: 8064)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3707, file: !3708, line: 231, baseType: !311, size: 16, offset: 8080)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3707, file: !3708, line: 232, baseType: !311, size: 16, offset: 8096)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3707, file: !3708, line: 234, baseType: !913, size: 64, offset: 8128)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3707, file: !3708, line: 237, baseType: !955, size: 256, offset: 8192)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3707, file: !3708, line: 243, baseType: !276, size: 320, offset: 8448)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !619, file: !620, line: 1111, baseType: !3845, size: 64, offset: 15424)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3708, line: 20, size: 16640, elements: !3847)
!3847 = !{!3848, !3849, !3850, !3851}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3846, file: !3708, line: 21, baseType: !80, size: 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3846, file: !3708, line: 22, baseType: !253, size: 32, offset: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3846, file: !3708, line: 23, baseType: !75, size: 192, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3846, file: !3708, line: 24, baseType: !3852, size: 16384, offset: 256)
!3852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3853, size: 16384, elements: !1392)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3719, line: 51, size: 256, elements: !3854)
!3854 = !{!3855}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3853, file: !3719, line: 52, baseType: !3856, size: 256)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3719, line: 37, size: 256, elements: !3857)
!3857 = !{!3858, !3865, !3866, !3870}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3856, file: !3719, line: 39, baseType: !3859, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3860, line: 83, baseType: !3861)
!3860 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3860, line: 82, baseType: !3863)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{null, !43}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3856, file: !3719, line: 40, baseType: !60, size: 64, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3856, file: !3719, line: 46, baseType: !3867, size: 64, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3860, line: 86, baseType: !3868)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3860, line: 85, baseType: !2515)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3856, file: !3719, line: 48, baseType: !3723, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !619, file: !620, line: 1112, baseType: !3723, size: 64, offset: 15488)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !619, file: !620, line: 1113, baseType: !3723, size: 64, offset: 15552)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !619, file: !620, line: 1115, baseType: !3723, size: 64, offset: 15616)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !619, file: !620, line: 1116, baseType: !3718, size: 192, offset: 15680)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !619, file: !620, line: 1117, baseType: !60, size: 64, offset: 15872)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !619, file: !620, line: 1118, baseType: !56, size: 64, offset: 15936)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !619, file: !620, line: 1119, baseType: !7, size: 32, offset: 16000)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !619, file: !620, line: 1121, baseType: !343, size: 64, offset: 16064)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !619, file: !620, line: 1125, baseType: !3880, size: 64, offset: 16128)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !620, line: 43, flags: DIFlagFwdDecl)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !619, file: !620, line: 1127, baseType: !212, size: 32, offset: 16192)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !619, file: !620, line: 1128, baseType: !7, size: 32, offset: 16224)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !619, file: !620, line: 1130, baseType: !3885, size: 128, offset: 16256)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3886, line: 37, size: 128, elements: !3887)
!3886 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3887 = !{!3888, !3889, !3890}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3885, file: !3886, line: 38, baseType: !43, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3885, file: !3886, line: 39, baseType: !70, size: 32, offset: 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3885, file: !3886, line: 40, baseType: !3891, size: 64, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3886, line: 24, flags: DIFlagFwdDecl)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !619, file: !620, line: 1131, baseType: !3894, size: 256, offset: 16384)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3895, line: 12, size: 256, elements: !3896)
!3895 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3896 = !{!3897, !3898, !3899, !3900}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3894, file: !3895, line: 13, baseType: !361, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3894, file: !3895, line: 14, baseType: !60, size: 64, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3894, file: !3895, line: 15, baseType: !60, size: 64, offset: 128)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3894, file: !3895, line: 16, baseType: !350, size: 8, offset: 192)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !619, file: !620, line: 1134, baseType: !239, size: 64, offset: 16640)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !619, file: !620, line: 1135, baseType: !239, size: 64, offset: 16704)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !619, file: !620, line: 1138, baseType: !80, size: 32, offset: 16768)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !619, file: !620, line: 1141, baseType: !287, size: 32, offset: 16800)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !619, file: !620, line: 1143, baseType: !3906, size: 64, offset: 16832)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !620, line: 735, size: 64, elements: !3907)
!3907 = !{!3908}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3906, file: !620, line: 736, baseType: !3909, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !619, file: !620, line: 1147, baseType: !799, size: 128, offset: 16896)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !619, file: !620, line: 1149, baseType: !618, size: 64, offset: 17024)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !619, file: !620, line: 1151, baseType: !3913, size: 64, offset: 17088)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !620, line: 1151, flags: DIFlagFwdDecl)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !619, file: !620, line: 1188, baseType: !41, size: 64, offset: 17152)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !619, file: !620, line: 1191, baseType: !3917, size: 64, offset: 17216)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !620, line: 44, flags: DIFlagFwdDecl)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !619, file: !620, line: 1194, baseType: !3920, size: 64, offset: 17280)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !620, line: 45, flags: DIFlagFwdDecl)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !619, file: !620, line: 1197, baseType: !3923, size: 64, offset: 17344)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !620, line: 61, flags: DIFlagFwdDecl)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !619, file: !620, line: 1199, baseType: !3926, size: 64, offset: 17408)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3928, line: 99, size: 128, elements: !3929)
!3928 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3929 = !{!3930, !3931, !3932}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3927, file: !3928, line: 100, baseType: !203, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3927, file: !3928, line: 101, baseType: !70, size: 32, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3927, file: !3928, line: 103, baseType: !47, size: 16, offset: 96)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !619, file: !620, line: 1202, baseType: !3934, size: 64, offset: 17472)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !620, line: 48, flags: DIFlagFwdDecl)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !619, file: !620, line: 1205, baseType: !60, size: 64, offset: 17536)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !619, file: !620, line: 1206, baseType: !3938, size: 64, offset: 17600)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3719, line: 14, baseType: !3940)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3719, line: 12, size: 384, elements: !3941)
!3941 = !{!3942}
!3942 = !DIDerivedType(tag: DW_TAG_member, scope: !3940, file: !3719, line: 13, baseType: !3943, size: 384)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3940, file: !3719, line: 13, size: 384, elements: !3944)
!3944 = !{!3945, !3946, !3947, !3948}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3943, file: !3719, line: 13, baseType: !43, size: 32)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3943, file: !3719, line: 13, baseType: !43, size: 32, offset: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3943, file: !3719, line: 13, baseType: !43, size: 32, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3943, file: !3719, line: 13, baseType: !3949, size: 256, offset: 128)
!3949 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3950, line: 37, size: 256, elements: !3951)
!3950 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3951 = !{!3952, !3957, !3970, !3976, !3985, !4012, !4017}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3949, file: !3950, line: 42, baseType: !3953, size: 64)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3949, file: !3950, line: 39, size: 64, elements: !3954)
!3954 = !{!3955, !3956}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3953, file: !3950, line: 40, baseType: !3597, size: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3953, file: !3950, line: 41, baseType: !218, size: 32, offset: 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3949, file: !3950, line: 50, baseType: !3958, size: 192)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3949, file: !3950, line: 45, size: 192, elements: !3959)
!3959 = !{!3960, !3962, !3963, !3969}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3958, file: !3950, line: 46, baseType: !3961, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !58, line: 95, baseType: !43)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3958, file: !3950, line: 47, baseType: !43, size: 32, offset: 32)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3958, file: !3950, line: 48, baseType: !3964, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3950, line: 11, baseType: !3965)
!3965 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3950, line: 8, size: 64, elements: !3966)
!3966 = !{!3967, !3968}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3965, file: !3950, line: 9, baseType: !43, size: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3965, file: !3950, line: 10, baseType: !41, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3958, file: !3950, line: 49, baseType: !43, size: 32, offset: 128)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3949, file: !3950, line: 57, baseType: !3971, size: 128)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3949, file: !3950, line: 53, size: 128, elements: !3972)
!3972 = !{!3973, !3974, !3975}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3971, file: !3950, line: 54, baseType: !3597, size: 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3971, file: !3950, line: 55, baseType: !218, size: 32, offset: 32)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3971, file: !3950, line: 56, baseType: !3964, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3949, file: !3950, line: 66, baseType: !3977, size: 256)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3949, file: !3950, line: 60, size: 256, elements: !3978)
!3978 = !{!3979, !3980, !3981, !3982, !3984}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3977, file: !3950, line: 61, baseType: !3597, size: 32)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3977, file: !3950, line: 62, baseType: !218, size: 32, offset: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3977, file: !3950, line: 63, baseType: !43, size: 32, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3977, file: !3950, line: 64, baseType: !3983, size: 64, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !58, line: 94, baseType: !1256)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3977, file: !3950, line: 65, baseType: !3983, size: 64, offset: 192)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3949, file: !3950, line: 105, baseType: !3986, size: 256)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3949, file: !3950, line: 69, size: 256, elements: !3987)
!3987 = !{!3988, !3989}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3986, file: !3950, line: 70, baseType: !41, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, scope: !3986, file: !3950, line: 79, baseType: !3990, size: 192, offset: 64)
!3990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3986, file: !3950, line: 79, size: 192, elements: !3991)
!3991 = !{!3992, !3993, !3994, !4001, !4006}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3990, file: !3950, line: 81, baseType: !43, size: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3990, file: !3950, line: 86, baseType: !311, size: 16)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3990, file: !3950, line: 92, baseType: !3995, size: 192)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3990, file: !3950, line: 88, size: 192, elements: !3996)
!3996 = !{!3997, !3999, !4000}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3995, file: !3950, line: 89, baseType: !3998, size: 64)
!3998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !778)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3995, file: !3950, line: 90, baseType: !41, size: 64, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3995, file: !3950, line: 91, baseType: !41, size: 64, offset: 128)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3990, file: !3950, line: 97, baseType: !4002, size: 96)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3990, file: !3950, line: 94, size: 96, elements: !4003)
!4003 = !{!4004, !4005}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4002, file: !3950, line: 95, baseType: !3998, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4002, file: !3950, line: 96, baseType: !307, size: 32, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3990, file: !3950, line: 103, baseType: !4007, size: 128)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3990, file: !3950, line: 99, size: 128, elements: !4008)
!4008 = !{!4009, !4010, !4011}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4007, file: !3950, line: 100, baseType: !60, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4007, file: !3950, line: 101, baseType: !307, size: 32, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4007, file: !3950, line: 102, baseType: !307, size: 32, offset: 96)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3949, file: !3950, line: 111, baseType: !4013, size: 128)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3949, file: !3950, line: 108, size: 128, elements: !4014)
!4014 = !{!4015, !4016}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4013, file: !3950, line: 109, baseType: !595, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4013, file: !3950, line: 110, baseType: !43, size: 32, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3949, file: !3950, line: 118, baseType: !4018, size: 128)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3949, file: !3950, line: 114, size: 128, elements: !4019)
!4019 = !{!4020, !4021, !4022}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4018, file: !3950, line: 115, baseType: !41, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4018, file: !3950, line: 116, baseType: !43, size: 32, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4018, file: !3950, line: 117, baseType: !7, size: 32, offset: 96)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !619, file: !620, line: 1208, baseType: !3803, size: 448, offset: 17664)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !619, file: !620, line: 1215, baseType: !239, size: 64, offset: 18112)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !619, file: !620, line: 1217, baseType: !239, size: 64, offset: 18176)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !619, file: !620, line: 1219, baseType: !239, size: 64, offset: 18240)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !619, file: !620, line: 1223, baseType: !4028, size: 64, offset: 18304)
!4028 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4029, line: 99, baseType: !4030)
!4029 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4029, line: 99, size: 64, elements: !4031)
!4031 = !{!4032}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4030, file: !4029, line: 99, baseType: !864, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !619, file: !620, line: 1225, baseType: !1073, size: 32, offset: 18368)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !619, file: !620, line: 1226, baseType: !43, size: 32, offset: 18400)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !619, file: !620, line: 1227, baseType: !43, size: 32, offset: 18432)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !619, file: !620, line: 1231, baseType: !4037, size: 64, offset: 18496)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !620, line: 1231, flags: DIFlagFwdDecl)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !619, file: !620, line: 1233, baseType: !118, size: 128, offset: 18560)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !619, file: !620, line: 1240, baseType: !4041, size: 64, offset: 18688)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !620, line: 62, flags: DIFlagFwdDecl)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !619, file: !620, line: 1242, baseType: !4044, size: 64, offset: 18752)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !4046, line: 392, size: 96, elements: !4047)
!4046 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!4047 = !{!4048, !4054, !4056}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4045, file: !4046, line: 393, baseType: !4049, size: 32)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !4046, line: 388, size: 32, elements: !4050)
!4050 = !{!4051}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4049, file: !4046, line: 389, baseType: !4052, size: 32)
!4052 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !4053, line: 46, baseType: !306)
!4053 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !4045, file: !4046, line: 394, baseType: !4055, size: 32, offset: 32)
!4055 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !4053, line: 42, baseType: !261)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !4045, file: !4046, line: 395, baseType: !4052, size: 32, offset: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !619, file: !620, line: 1244, baseType: !118, size: 128, offset: 18816)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !619, file: !620, line: 1245, baseType: !4059, size: 64, offset: 18944)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !620, line: 51, flags: DIFlagFwdDecl)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !619, file: !620, line: 1246, baseType: !955, size: 256, offset: 19008)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !619, file: !620, line: 1247, baseType: !7, size: 32, offset: 19264)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !619, file: !620, line: 1250, baseType: !4064, size: 64, offset: 19328)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !620, line: 57, flags: DIFlagFwdDecl)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !619, file: !620, line: 1251, baseType: !955, size: 256, offset: 19392)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !619, file: !620, line: 1252, baseType: !118, size: 128, offset: 19648)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !619, file: !620, line: 1259, baseType: !1676, size: 64, offset: 19776)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !619, file: !620, line: 1260, baseType: !311, size: 16, offset: 19840)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !619, file: !620, line: 1261, baseType: !311, size: 16, offset: 19856)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !619, file: !620, line: 1314, baseType: !4072, size: 64, offset: 19904)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4074, line: 62, size: 256, align: 256, elements: !4075)
!4074 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4075 = !{!4076, !4077, !4078, !4079, !4080, !4081, !4082}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4073, file: !4074, line: 75, baseType: !307, size: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4073, file: !4074, line: 90, baseType: !307, size: 32, offset: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4073, file: !4074, line: 112, baseType: !240, size: 64, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4073, file: !4074, line: 132, baseType: !307, size: 32, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4073, file: !4074, line: 140, baseType: !307, size: 32, offset: 160)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4073, file: !4074, line: 149, baseType: !307, size: 32, offset: 192)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4073, file: !4074, line: 154, baseType: !4083, offset: 224)
!4083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !607)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !619, file: !620, line: 1315, baseType: !306, size: 32, offset: 19968)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !619, file: !620, line: 1316, baseType: !306, size: 32, offset: 20000)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !619, file: !620, line: 1321, baseType: !60, size: 64, offset: 20032)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !619, file: !620, line: 1325, baseType: !43, size: 32, offset: 20096)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !619, file: !620, line: 1326, baseType: !43, size: 32, offset: 20128)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !619, file: !620, line: 1327, baseType: !43, size: 32, offset: 20160)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !619, file: !620, line: 1328, baseType: !43, size: 32, offset: 20192)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !619, file: !620, line: 1329, baseType: !340, size: 128, align: 64, offset: 20224)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !619, file: !620, line: 1332, baseType: !4093, size: 128, offset: 20352)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4094, line: 51, size: 128, elements: !4095)
!4094 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4095 = !{!4096, !4101, !4102}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4093, file: !4094, line: 60, baseType: !4097, size: 64)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4098, line: 7, size: 64, elements: !4099)
!4098 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4099 = !{!4100}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4097, file: !4098, line: 12, baseType: !861, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4093, file: !4094, line: 63, baseType: !350, size: 8, offset: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4093, file: !4094, line: 70, baseType: !350, size: 8, offset: 72)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !619, file: !620, line: 1335, baseType: !3283, size: 64, offset: 20480)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !619, file: !620, line: 1337, baseType: !4105, size: 128, offset: 20544)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4094, line: 39, size: 128, elements: !4106)
!4106 = !{!4107, !4108, !4109}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4105, file: !4094, line: 40, baseType: !1473, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4105, file: !4094, line: 42, baseType: !307, size: 32, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4105, file: !4094, line: 43, baseType: !307, size: 32, offset: 96)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !619, file: !620, line: 1340, baseType: !4111, size: 64, offset: 20672)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !620, line: 69, flags: DIFlagFwdDecl)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !619, file: !620, line: 1351, baseType: !43, size: 32, offset: 20736)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !619, file: !620, line: 1352, baseType: !43, size: 32, offset: 20768)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !619, file: !620, line: 1354, baseType: !60, size: 64, offset: 20800)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !619, file: !620, line: 1364, baseType: !239, size: 64, offset: 20864)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !619, file: !620, line: 1365, baseType: !239, size: 64, offset: 20928)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !619, file: !620, line: 1412, baseType: !60, size: 64, offset: 20992)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !619, file: !620, line: 1453, baseType: !4120, size: 64, offset: 21056)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !620, line: 1453, flags: DIFlagFwdDecl)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !619, file: !620, line: 1457, baseType: !4123, size: 64, offset: 21120)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !129, line: 61, size: 576, elements: !4125)
!4125 = !{!4126, !4127, !4146, !4149, !4150, !4183, !4193}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4124, file: !129, line: 62, baseType: !128, size: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, scope: !4124, file: !129, line: 64, baseType: !4128, size: 192, offset: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4124, file: !129, line: 64, size: 192, elements: !4129)
!4129 = !{!4130, !4141}
!4130 = !DIDerivedType(tag: DW_TAG_member, scope: !4128, file: !129, line: 65, baseType: !4131, size: 192)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4128, file: !129, line: 65, size: 192, elements: !4132)
!4132 = !{!4133, !4140}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4131, file: !129, line: 66, baseType: !4134, size: 128)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4135, line: 50, size: 128, elements: !4136)
!4135 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4136 = !{!4137, !4138, !4139}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4134, file: !4135, line: 52, baseType: !60, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4134, file: !4135, line: 54, baseType: !7, size: 32, offset: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4134, file: !4135, line: 55, baseType: !7, size: 32, offset: 96)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4131, file: !129, line: 67, baseType: !60, size: 64, offset: 128)
!4141 = !DIDerivedType(tag: DW_TAG_member, scope: !4128, file: !129, line: 70, baseType: !4142, size: 192)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4128, file: !129, line: 70, size: 192, elements: !4143)
!4143 = !{!4144, !4145}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4142, file: !129, line: 71, baseType: !340, size: 128, align: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4142, file: !129, line: 72, baseType: !60, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4124, file: !129, line: 76, baseType: !4147, size: 64, offset: 256)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !129, line: 76, flags: DIFlagFwdDecl)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4124, file: !129, line: 77, baseType: !60, size: 64, offset: 320)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4124, file: !129, line: 79, baseType: !4151, size: 64, offset: 384)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4135, line: 25, size: 256, elements: !4153)
!4153 = !{!4154, !4160, !4164}
!4154 = !DIDerivedType(tag: DW_TAG_member, scope: !4152, file: !4135, line: 26, baseType: !4155, size: 128)
!4155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4152, file: !4135, line: 26, size: 128, elements: !4156)
!4156 = !{!4157, !4159}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4155, file: !4135, line: 27, baseType: !4158, size: 128)
!4158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !2942)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4155, file: !4135, line: 28, baseType: !4158, size: 128)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4152, file: !4135, line: 31, baseType: !4161, size: 64, offset: 128)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4163)
!4163 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4135, line: 23, flags: DIFlagFwdDecl)
!4164 = !DIDerivedType(tag: DW_TAG_member, scope: !4152, file: !4135, line: 33, baseType: !4165, size: 64, offset: 192)
!4165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4152, file: !4135, line: 33, size: 64, elements: !4166)
!4166 = !{!4167, !4173, !4178}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4165, file: !4135, line: 38, baseType: !4168, size: 64)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4165, file: !4135, line: 34, size: 64, elements: !4169)
!4169 = !{!4170, !4171, !4172}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4168, file: !4135, line: 35, baseType: !261, size: 32)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4168, file: !4135, line: 36, baseType: !104, size: 8, offset: 32)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4168, file: !4135, line: 37, baseType: !104, size: 8, offset: 40)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4165, file: !4135, line: 42, baseType: !4174, size: 16)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4165, file: !4135, line: 39, size: 16, elements: !4175)
!4175 = !{!4176, !4177}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4174, file: !4135, line: 40, baseType: !104, size: 8)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4174, file: !4135, line: 41, baseType: !104, size: 8, offset: 8)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4165, file: !4135, line: 46, baseType: !4179, size: 16)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4165, file: !4135, line: 43, size: 16, elements: !4180)
!4180 = !{!4181, !4182}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4179, file: !4135, line: 44, baseType: !104, size: 8)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4179, file: !4135, line: 45, baseType: !104, size: 8, offset: 8)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4124, file: !129, line: 81, baseType: !4184, size: 64, offset: 448)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !129, line: 85, size: 384, elements: !4186)
!4186 = !{!4187, !4188, !4189, !4190, !4191, !4192}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4185, file: !129, line: 86, baseType: !4147, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4185, file: !129, line: 87, baseType: !60, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4185, file: !129, line: 88, baseType: !60, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4185, file: !129, line: 89, baseType: !60, size: 64, offset: 192)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4185, file: !129, line: 90, baseType: !350, size: 8, offset: 256)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4185, file: !129, line: 92, baseType: !4184, size: 64, offset: 320)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4124, file: !129, line: 82, baseType: !7, size: 32, offset: 512)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !619, file: !620, line: 1463, baseType: !4195, offset: 21184)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !620, line: 739, elements: !934)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !619, file: !620, line: 1470, baseType: !340, size: 128, align: 64, offset: 21184)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !619, file: !620, line: 1471, baseType: !253, size: 32, offset: 21312)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !619, file: !620, line: 1472, baseType: !43, size: 32, offset: 21344)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !619, file: !620, line: 1474, baseType: !618, size: 64, offset: 21376)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !619, file: !620, line: 1475, baseType: !2410, size: 320, offset: 21440)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !619, file: !620, line: 1478, baseType: !4202, size: 64, offset: 21760)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4204, line: 49, size: 512, elements: !4205)
!4204 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4205 = !{!4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4215}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4203, file: !4204, line: 50, baseType: !4202, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4203, file: !4204, line: 51, baseType: !41, size: 64, offset: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4203, file: !4204, line: 52, baseType: !60, size: 64, offset: 128)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4203, file: !4204, line: 53, baseType: !60, size: 64, offset: 192)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4203, file: !4204, line: 54, baseType: !1850, size: 64, offset: 256)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4203, file: !4204, line: 56, baseType: !7, size: 32, offset: 320)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4203, file: !4204, line: 58, baseType: !7, size: 32, offset: 352)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4203, file: !4204, line: 59, baseType: !4214, size: 64, offset: 384)
!4214 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !46, line: 159, baseType: !239)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4203, file: !4204, line: 60, baseType: !2029, size: 64, offset: 448)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !619, file: !620, line: 1482, baseType: !253, size: 32, offset: 21824)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !619, file: !620, line: 1489, baseType: !41, size: 64, offset: 21888)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !619, file: !620, line: 1504, baseType: !41, size: 64, offset: 21952)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !619, file: !620, line: 1505, baseType: !240, size: 64, offset: 22016)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !619, file: !620, line: 1506, baseType: !239, size: 64, offset: 22080)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !619, file: !620, line: 1507, baseType: !240, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !619, file: !620, line: 1508, baseType: !240, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !619, file: !620, line: 1509, baseType: !240, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !619, file: !620, line: 1510, baseType: !340, size: 128, align: 64, offset: 22208)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !619, file: !620, line: 1511, baseType: !43, size: 32, offset: 22336)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !619, file: !620, line: 1515, baseType: !4227, size: 64, offset: 22400)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !642, line: 56, size: 64, elements: !4228)
!4228 = !{!4229}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4227, file: !642, line: 57, baseType: !645, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !619, file: !620, line: 1518, baseType: !4227, size: 64, offset: 22464)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !619, file: !620, line: 1528, baseType: !340, size: 128, align: 64, offset: 22528)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !619, file: !620, line: 1552, baseType: !4233, size: 35328, offset: 23040)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4234, line: 430, size: 35328, elements: !4235)
!4234 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4235 = !{!4236, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4265, !4266, !4267, !4268, !4269, !4270, !4273, !4274, !4275, !4276}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4233, file: !4234, line: 432, baseType: !4237, size: 192)
!4237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4238, size: 192, elements: !987)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4239, line: 16, size: 64, elements: !4240)
!4239 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4240 = !{!4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4238, file: !4239, line: 17, baseType: !114, size: 16)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4238, file: !4239, line: 18, baseType: !114, size: 16, offset: 16)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4238, file: !4239, line: 19, baseType: !114, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4238, file: !4239, line: 19, baseType: !114, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4238, file: !4239, line: 19, baseType: !114, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4238, file: !4239, line: 19, baseType: !114, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4238, file: !4239, line: 19, baseType: !114, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4238, file: !4239, line: 20, baseType: !114, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4238, file: !4239, line: 20, baseType: !114, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4238, file: !4239, line: 20, baseType: !114, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4238, file: !4239, line: 20, baseType: !114, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4238, file: !4239, line: 20, baseType: !114, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4238, file: !4239, line: 20, baseType: !114, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4233, file: !4234, line: 436, baseType: !60, size: 64, offset: 192)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4233, file: !4234, line: 440, baseType: !47, size: 16, offset: 256)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4233, file: !4234, line: 441, baseType: !47, size: 16, offset: 272)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4233, file: !4234, line: 442, baseType: !47, size: 16, offset: 288)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4233, file: !4234, line: 443, baseType: !47, size: 16, offset: 304)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4233, file: !4234, line: 447, baseType: !60, size: 64, offset: 320)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4233, file: !4234, line: 448, baseType: !60, size: 64, offset: 384)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4233, file: !4234, line: 459, baseType: !4262, size: 256, offset: 448)
!4262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4263, size: 256, elements: !371)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4234, line: 428, flags: DIFlagFwdDecl)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4233, file: !4234, line: 461, baseType: !60, size: 64, offset: 704)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4233, file: !4234, line: 463, baseType: !60, size: 64, offset: 768)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4233, file: !4234, line: 465, baseType: !60, size: 64, offset: 832)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4233, file: !4234, line: 466, baseType: !60, size: 64, offset: 896)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4233, file: !4234, line: 467, baseType: !60, size: 64, offset: 960)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4233, file: !4234, line: 473, baseType: !4271, size: 64, offset: 1024)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4234, line: 10, flags: DIFlagFwdDecl)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4233, file: !4234, line: 480, baseType: !60, size: 64, offset: 1088)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4233, file: !4234, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4233, file: !4234, line: 491, baseType: !306, size: 32, offset: 1184)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4233, file: !4234, line: 501, baseType: !4277, size: 33792, offset: 1536)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4278, line: 448, size: 33792, elements: !4279)
!4278 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4279 = !{!4280, !4281, !4282, !4444, !4445, !4451, !4452}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4277, file: !4278, line: 461, baseType: !7, size: 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4277, file: !4278, line: 468, baseType: !60, size: 64, offset: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4277, file: !4278, line: 476, baseType: !4283, size: 64, offset: 128)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4278, line: 356, size: 33280, align: 512, elements: !4285)
!4285 = !{!4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4284, file: !4278, line: 358, baseType: !7, size: 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4284, file: !4278, line: 361, baseType: !7, size: 32, offset: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4284, file: !4278, line: 364, baseType: !239, size: 64, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4284, file: !4278, line: 367, baseType: !239, size: 64, offset: 128)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4284, file: !4278, line: 370, baseType: !239, size: 64, offset: 192)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4284, file: !4278, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4284, file: !4278, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4284, file: !4278, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4284, file: !4278, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4284, file: !4278, line: 397, baseType: !4296, size: 32768, offset: 512)
!4296 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4278, line: 348, size: 32768, elements: !4297)
!4297 = !{!4298, !4313, !4350, !4427, !4440}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4296, file: !4278, line: 349, baseType: !4299, size: 896)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4278, line: 12, size: 896, elements: !4300)
!4300 = !{!4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4312}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4299, file: !4278, line: 13, baseType: !306, size: 32)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4299, file: !4278, line: 14, baseType: !306, size: 32, offset: 32)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4299, file: !4278, line: 15, baseType: !306, size: 32, offset: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4299, file: !4278, line: 16, baseType: !306, size: 32, offset: 96)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4299, file: !4278, line: 17, baseType: !306, size: 32, offset: 128)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4299, file: !4278, line: 18, baseType: !306, size: 32, offset: 160)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4299, file: !4278, line: 19, baseType: !306, size: 32, offset: 192)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4299, file: !4278, line: 22, baseType: !4309, size: 640, offset: 224)
!4309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 640, elements: !4310)
!4310 = !{!4311}
!4311 = !DISubrange(count: 20)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4299, file: !4278, line: 25, baseType: !306, size: 32, offset: 864)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4296, file: !4278, line: 350, baseType: !4314, size: 4096, align: 128)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4278, line: 34, size: 4096, align: 128, elements: !4315)
!4315 = !{!4316, !4317, !4318, !4319, !4320, !4335, !4336, !4337, !4339, !4341, !4345}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4314, file: !4278, line: 35, baseType: !114, size: 16)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4314, file: !4278, line: 36, baseType: !114, size: 16, offset: 16)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4314, file: !4278, line: 37, baseType: !114, size: 16, offset: 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4314, file: !4278, line: 38, baseType: !114, size: 16, offset: 48)
!4320 = !DIDerivedType(tag: DW_TAG_member, scope: !4314, file: !4278, line: 39, baseType: !4321, size: 128, offset: 64)
!4321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4314, file: !4278, line: 39, size: 128, elements: !4322)
!4322 = !{!4323, !4328}
!4323 = !DIDerivedType(tag: DW_TAG_member, scope: !4321, file: !4278, line: 40, baseType: !4324, size: 128)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4321, file: !4278, line: 40, size: 128, elements: !4325)
!4325 = !{!4326, !4327}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4324, file: !4278, line: 41, baseType: !239, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4324, file: !4278, line: 42, baseType: !239, size: 64, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, scope: !4321, file: !4278, line: 44, baseType: !4329, size: 128)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4321, file: !4278, line: 44, size: 128, elements: !4330)
!4330 = !{!4331, !4332, !4333, !4334}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4329, file: !4278, line: 45, baseType: !306, size: 32)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4329, file: !4278, line: 46, baseType: !306, size: 32, offset: 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4329, file: !4278, line: 47, baseType: !306, size: 32, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4329, file: !4278, line: 48, baseType: !306, size: 32, offset: 96)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4314, file: !4278, line: 51, baseType: !306, size: 32, offset: 192)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4314, file: !4278, line: 52, baseType: !306, size: 32, offset: 224)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4314, file: !4278, line: 55, baseType: !4338, size: 1024, offset: 256)
!4338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 1024, elements: !2933)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4314, file: !4278, line: 58, baseType: !4340, size: 2048, offset: 1280)
!4340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 2048, elements: !1392)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4314, file: !4278, line: 60, baseType: !4342, size: 384, offset: 3328)
!4342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 384, elements: !4343)
!4343 = !{!4344}
!4344 = !DISubrange(count: 12)
!4345 = !DIDerivedType(tag: DW_TAG_member, scope: !4314, file: !4278, line: 62, baseType: !4346, size: 384, offset: 3712)
!4346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4314, file: !4278, line: 62, size: 384, elements: !4347)
!4347 = !{!4348, !4349}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4346, file: !4278, line: 63, baseType: !4342, size: 384)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4346, file: !4278, line: 64, baseType: !4342, size: 384)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4296, file: !4278, line: 351, baseType: !4351, size: 1088)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4278, line: 79, size: 1088, elements: !4352)
!4352 = !{!4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4426}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4351, file: !4278, line: 80, baseType: !306, size: 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4351, file: !4278, line: 81, baseType: !306, size: 32, offset: 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4351, file: !4278, line: 82, baseType: !306, size: 32, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4351, file: !4278, line: 83, baseType: !306, size: 32, offset: 96)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4351, file: !4278, line: 84, baseType: !306, size: 32, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4351, file: !4278, line: 85, baseType: !306, size: 32, offset: 160)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4351, file: !4278, line: 86, baseType: !306, size: 32, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4351, file: !4278, line: 88, baseType: !4309, size: 640, offset: 224)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4351, file: !4278, line: 89, baseType: !104, size: 8, offset: 864)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4351, file: !4278, line: 90, baseType: !104, size: 8, offset: 872)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4351, file: !4278, line: 91, baseType: !104, size: 8, offset: 880)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4351, file: !4278, line: 92, baseType: !104, size: 8, offset: 888)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4351, file: !4278, line: 93, baseType: !104, size: 8, offset: 896)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4351, file: !4278, line: 94, baseType: !104, size: 8, offset: 904)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4351, file: !4278, line: 95, baseType: !4368, size: 64, offset: 960)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4370, line: 11, size: 128, elements: !4371)
!4370 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4371 = !{!4372, !4373}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4369, file: !4370, line: 12, baseType: !595, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4369, file: !4370, line: 13, baseType: !4374, size: 64, offset: 64)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4376, line: 103, size: 1344, elements: !4377)
!4376 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4377 = !{!4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4406, !4407, !4408}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4375, file: !4376, line: 109, baseType: !60, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4375, file: !4376, line: 110, baseType: !60, size: 64, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4375, file: !4376, line: 111, baseType: !60, size: 64, offset: 128)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4375, file: !4376, line: 112, baseType: !60, size: 64, offset: 192)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4375, file: !4376, line: 113, baseType: !60, size: 64, offset: 256)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4375, file: !4376, line: 114, baseType: !60, size: 64, offset: 320)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4375, file: !4376, line: 117, baseType: !60, size: 64, offset: 384)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4375, file: !4376, line: 118, baseType: !60, size: 64, offset: 448)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4375, file: !4376, line: 119, baseType: !60, size: 64, offset: 512)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4375, file: !4376, line: 120, baseType: !60, size: 64, offset: 576)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4375, file: !4376, line: 121, baseType: !60, size: 64, offset: 640)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4375, file: !4376, line: 122, baseType: !60, size: 64, offset: 704)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4375, file: !4376, line: 123, baseType: !60, size: 64, offset: 768)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4375, file: !4376, line: 124, baseType: !60, size: 64, offset: 832)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4375, file: !4376, line: 125, baseType: !60, size: 64, offset: 896)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4375, file: !4376, line: 139, baseType: !60, size: 64, offset: 960)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4375, file: !4376, line: 142, baseType: !60, size: 64, offset: 1024)
!4395 = !DIDerivedType(tag: DW_TAG_member, scope: !4375, file: !4376, line: 144, baseType: !4396, size: 64, offset: 1088)
!4396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4375, file: !4376, line: 144, size: 64, elements: !4397)
!4397 = !{!4398, !4399, !4400}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4396, file: !4376, line: 146, baseType: !114, size: 16)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4396, file: !4376, line: 148, baseType: !239, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4396, file: !4376, line: 150, baseType: !4401, size: 64)
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4376, line: 59, size: 64, elements: !4402)
!4402 = !{!4403, !4404, !4405}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4401, file: !4376, line: 61, baseType: !239, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4401, file: !4376, line: 63, baseType: !239, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4401, file: !4376, line: 65, baseType: !239, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4375, file: !4376, line: 153, baseType: !60, size: 64, offset: 1152)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4375, file: !4376, line: 154, baseType: !60, size: 64, offset: 1216)
!4408 = !DIDerivedType(tag: DW_TAG_member, scope: !4375, file: !4376, line: 156, baseType: !4409, size: 64, offset: 1280)
!4409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4375, file: !4376, line: 156, size: 64, elements: !4410)
!4410 = !{!4411, !4412, !4413}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4409, file: !4376, line: 158, baseType: !114, size: 16)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4409, file: !4376, line: 160, baseType: !239, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4409, file: !4376, line: 162, baseType: !4414, size: 64)
!4414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4376, line: 69, size: 64, elements: !4415)
!4415 = !{!4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4414, file: !4376, line: 71, baseType: !239, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4414, file: !4376, line: 73, baseType: !239, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4414, file: !4376, line: 75, baseType: !239, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4414, file: !4376, line: 77, baseType: !239, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4414, file: !4376, line: 80, baseType: !239, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4414, file: !4376, line: 83, baseType: !239, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4414, file: !4376, line: 86, baseType: !239, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4414, file: !4376, line: 88, baseType: !239, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4414, file: !4376, line: 93, baseType: !239, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4414, file: !4376, line: 100, baseType: !239, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4351, file: !4278, line: 96, baseType: !306, size: 32, offset: 1024)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4296, file: !4278, line: 352, baseType: !4428, size: 4608, align: 512)
!4428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4278, line: 333, size: 4608, align: 512, elements: !4429)
!4429 = !{!4430, !4431, !4438}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4428, file: !4278, line: 334, baseType: !4314, size: 4096, align: 128)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4428, file: !4278, line: 335, baseType: !4432, size: 512, offset: 4096)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4278, line: 312, size: 512, elements: !4433)
!4433 = !{!4434, !4435, !4436}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4432, file: !4278, line: 313, baseType: !239, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4432, file: !4278, line: 314, baseType: !239, size: 64, offset: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4432, file: !4278, line: 315, baseType: !4437, size: 384, offset: 128)
!4437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 384, elements: !329)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4428, file: !4278, line: 336, baseType: !4439, offset: 4608)
!4439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, elements: !607)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4296, file: !4278, line: 353, baseType: !4441, size: 32768)
!4441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 32768, elements: !4442)
!4442 = !{!4443}
!4443 = !DISubrange(count: 4096)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4277, file: !4278, line: 484, baseType: !4283, size: 64, offset: 192)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4277, file: !4278, line: 491, baseType: !4446, size: 128, offset: 256)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4278, line: 404, size: 128, elements: !4447)
!4447 = !{!4448, !4449, !4450}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4446, file: !4278, line: 424, baseType: !239, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4446, file: !4278, line: 432, baseType: !7, size: 32, offset: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4446, file: !4278, line: 440, baseType: !7, size: 32, offset: 96)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4277, file: !4278, line: 498, baseType: !4446, size: 128, offset: 384)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4277, file: !4278, line: 508, baseType: !4284, size: 33280, align: 512, offset: 512)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4455)
!4455 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4458)
!4458 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !121)
!4459 = !{!0, !4460, !4462, !4464, !4466, !4468, !4470, !4473}
!4460 = !DIGlobalVariableExpression(var: !4461, expr: !DIExpression())
!4461 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_setattr_should_drop_suidgid331", scope: !2, file: !3, line: 84, type: !41, isLocal: true, isDefinition: true)
!4462 = !DIGlobalVariableExpression(var: !4463, expr: !DIExpression())
!4463 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_setattr_prepare332", scope: !2, file: !3, line: 230, type: !41, isLocal: true, isDefinition: true)
!4464 = !DIGlobalVariableExpression(var: !4465, expr: !DIExpression())
!4465 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_inode_newsize_ok333", scope: !2, file: !3, line: 276, type: !41, isLocal: true, isDefinition: true)
!4466 = !DIGlobalVariableExpression(var: !4467, expr: !DIExpression())
!4467 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_setattr_copy334", scope: !2, file: !3, line: 324, type: !41, isLocal: true, isDefinition: true)
!4468 = !DIGlobalVariableExpression(var: !4469, expr: !DIExpression())
!4469 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_may_setattr335", scope: !2, file: !3, line: 352, type: !41, isLocal: true, isDefinition: true)
!4470 = !DIGlobalVariableExpression(var: !4471, expr: !DIExpression())
!4471 = distinct !DIGlobalVariable(scope: null, file: !3, line: 390, type: !4472, isLocal: true, isDefinition: true)
!4472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 80, elements: !589)
!4473 = !DIGlobalVariableExpression(var: !4474, expr: !DIExpression())
!4474 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_notify_change336", scope: !2, file: !3, line: 511, type: !41, isLocal: true, isDefinition: true)
!4475 = !{i32 7, !"Dwarf Version", i32 5}
!4476 = !{i32 2, !"Debug Info Version", i32 3}
!4477 = !{i32 1, !"wchar_size", i32 2}
!4478 = !{i32 8, !"cf-protection-branch", i32 1}
!4479 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4480 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4481 = !{i32 1, !"Code Model", i32 2}
!4482 = !{i32 1, !"override-stack-alignment", i32 8}
!4483 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4484 = distinct !DISubprogram(name: "setattr_should_drop_sgid", scope: !3, file: !3, line: 37, type: !4485, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4487)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!43, !1141, !3004}
!4487 = !{!4488, !4489, !4490}
!4488 = !DILocalVariable(name: "idmap", arg: 1, scope: !4484, file: !3, line: 37, type: !1141)
!4489 = !DILocalVariable(name: "inode", arg: 2, scope: !4484, file: !3, line: 38, type: !3004)
!4490 = !DILocalVariable(name: "mode", scope: !4484, file: !3, line: 40, type: !45)
!4491 = !DILocation(line: 37, column: 48, scope: !4484)
!4492 = !DILocation(line: 38, column: 29, scope: !4484)
!4493 = !DILocation(line: 40, column: 2, scope: !4484)
!4494 = !DILocation(line: 40, column: 10, scope: !4484)
!4495 = !DILocation(line: 40, column: 17, scope: !4484)
!4496 = !DILocation(line: 40, column: 24, scope: !4484)
!4497 = !DILocation(line: 42, column: 8, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 42, column: 6)
!4499 = !DILocation(line: 42, column: 13, scope: !4498)
!4500 = !DILocation(line: 42, column: 6, scope: !4484)
!4501 = !DILocation(line: 43, column: 3, scope: !4498)
!4502 = !DILocation(line: 44, column: 6, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 44, column: 6)
!4504 = !DILocation(line: 44, column: 11, scope: !4503)
!4505 = !DILocation(line: 44, column: 6, scope: !4484)
!4506 = !DILocation(line: 45, column: 3, scope: !4503)
!4507 = !DILocation(line: 46, column: 27, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 46, column: 6)
!4509 = !DILocation(line: 46, column: 34, scope: !4508)
!4510 = !DILocation(line: 46, column: 59, scope: !4508)
!4511 = !DILocation(line: 46, column: 66, scope: !4508)
!4512 = !DILocation(line: 46, column: 41, scope: !4508)
!4513 = !DILocation(line: 46, column: 7, scope: !4508)
!4514 = !DILocation(line: 46, column: 6, scope: !4484)
!4515 = !DILocation(line: 47, column: 3, scope: !4508)
!4516 = !DILocation(line: 48, column: 2, scope: !4484)
!4517 = !DILocation(line: 49, column: 1, scope: !4484)
!4518 = !DISubprogram(name: "in_group_or_capable", scope: !4519, file: !4519, line: 189, type: !4520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4519 = !DIFile(filename: "fs/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8afc0abbd20470e9e11dfbcff1f3969f")
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!350, !1141, !3004, !1206}
!4522 = distinct !DISubprogram(name: "i_gid_into_vfsgid", scope: !173, file: !173, line: 1414, type: !4523, scopeLine: 1416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4525)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!1206, !1141, !3004}
!4525 = !{!4526, !4527}
!4526 = !DILocalVariable(name: "idmap", arg: 1, scope: !4522, file: !173, line: 1414, type: !1141)
!4527 = !DILocalVariable(name: "inode", arg: 2, scope: !4522, file: !173, line: 1415, type: !3004)
!4528 = !DILocation(line: 1414, column: 60, scope: !4522)
!4529 = !DILocation(line: 1415, column: 27, scope: !4522)
!4530 = !DILocation(line: 1417, column: 21, scope: !4522)
!4531 = !DILocation(line: 1417, column: 38, scope: !4522)
!4532 = !DILocation(line: 1417, column: 28, scope: !4522)
!4533 = !DILocation(line: 1417, column: 46, scope: !4522)
!4534 = !DILocation(line: 1417, column: 53, scope: !4522)
!4535 = !DILocation(line: 1417, column: 9, scope: !4522)
!4536 = !DILocation(line: 1417, column: 2, scope: !4522)
!4537 = distinct !DISubprogram(name: "setattr_should_drop_suidgid", scope: !3, file: !3, line: 67, type: !4538, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4540)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!43, !1141, !1102}
!4540 = !{!4541, !4542, !4543, !4544}
!4541 = !DILocalVariable(name: "idmap", arg: 1, scope: !4537, file: !3, line: 67, type: !1141)
!4542 = !DILocalVariable(name: "inode", arg: 2, scope: !4537, file: !3, line: 68, type: !1102)
!4543 = !DILocalVariable(name: "mode", scope: !4537, file: !3, line: 70, type: !45)
!4544 = !DILocalVariable(name: "kill", scope: !4537, file: !3, line: 71, type: !43)
!4545 = !DILocation(line: 67, column: 51, scope: !4537)
!4546 = !DILocation(line: 68, column: 19, scope: !4537)
!4547 = !DILocation(line: 70, column: 2, scope: !4537)
!4548 = !DILocation(line: 70, column: 10, scope: !4537)
!4549 = !DILocation(line: 70, column: 17, scope: !4537)
!4550 = !DILocation(line: 70, column: 24, scope: !4537)
!4551 = !DILocation(line: 71, column: 2, scope: !4537)
!4552 = !DILocation(line: 71, column: 6, scope: !4537)
!4553 = !DILocation(line: 74, column: 6, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 74, column: 6)
!4555 = !DILocation(line: 74, column: 6, scope: !4537)
!4556 = !DILocation(line: 75, column: 8, scope: !4554)
!4557 = !DILocation(line: 75, column: 3, scope: !4554)
!4558 = !DILocation(line: 77, column: 35, scope: !4537)
!4559 = !DILocation(line: 77, column: 42, scope: !4537)
!4560 = !DILocation(line: 77, column: 10, scope: !4537)
!4561 = !DILocation(line: 77, column: 7, scope: !4537)
!4562 = !DILocation(line: 79, column: 6, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 79, column: 6)
!4564 = !DILocation(line: 0, scope: !4563)
!4565 = !DILocation(line: 79, column: 6, scope: !4537)
!4566 = !DILocation(line: 80, column: 10, scope: !4563)
!4567 = !DILocation(line: 80, column: 3, scope: !4563)
!4568 = !DILocation(line: 82, column: 2, scope: !4537)
!4569 = !DILocation(line: 83, column: 1, scope: !4537)
!4570 = !DISubprogram(name: "capable", scope: !235, file: !235, line: 148, type: !4571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!350, !43}
!4573 = distinct !DISubprogram(name: "setattr_prepare", scope: !3, file: !3, line: 165, type: !1184, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4574)
!4574 = !{!4575, !4576, !4577, !4578, !4579, !4580, !4583, !4586, !4587}
!4575 = !DILocalVariable(name: "idmap", arg: 1, scope: !4573, file: !3, line: 165, type: !1141)
!4576 = !DILocalVariable(name: "dentry", arg: 2, scope: !4573, file: !3, line: 165, type: !1067)
!4577 = !DILocalVariable(name: "attr", arg: 3, scope: !4573, file: !3, line: 166, type: !1186)
!4578 = !DILocalVariable(name: "inode", scope: !4573, file: !3, line: 168, type: !1102)
!4579 = !DILocalVariable(name: "ia_valid", scope: !4573, file: !3, line: 169, type: !7)
!4580 = !DILocalVariable(name: "error", scope: !4581, file: !3, line: 176, type: !43)
!4581 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 175, column: 28)
!4582 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 175, column: 6)
!4583 = !DILocalVariable(name: "vfsgid", scope: !4584, file: !3, line: 197, type: !1206)
!4584 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 196, column: 28)
!4585 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 196, column: 6)
!4586 = !DILabel(scope: !4573, name: "kill_priv", file: !3, line: 218)
!4587 = !DILocalVariable(name: "error", scope: !4588, file: !3, line: 221, type: !43)
!4588 = distinct !DILexicalBlock(scope: !4589, file: !3, line: 220, column: 33)
!4589 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 220, column: 6)
!4590 = !DILocation(line: 165, column: 39, scope: !4573)
!4591 = !DILocation(line: 165, column: 61, scope: !4573)
!4592 = !DILocation(line: 166, column: 21, scope: !4573)
!4593 = !DILocation(line: 168, column: 2, scope: !4573)
!4594 = !DILocation(line: 168, column: 16, scope: !4573)
!4595 = !DILocation(line: 168, column: 32, scope: !4573)
!4596 = !DILocation(line: 168, column: 24, scope: !4573)
!4597 = !DILocation(line: 169, column: 2, scope: !4573)
!4598 = !DILocation(line: 169, column: 15, scope: !4573)
!4599 = !DILocation(line: 169, column: 26, scope: !4573)
!4600 = !DILocation(line: 169, column: 32, scope: !4573)
!4601 = !DILocation(line: 175, column: 6, scope: !4582)
!4602 = !DILocation(line: 175, column: 15, scope: !4582)
!4603 = !DILocation(line: 175, column: 6, scope: !4573)
!4604 = !DILocation(line: 176, column: 3, scope: !4581)
!4605 = !DILocation(line: 176, column: 7, scope: !4581)
!4606 = !DILocation(line: 176, column: 32, scope: !4581)
!4607 = !DILocation(line: 176, column: 39, scope: !4581)
!4608 = !DILocation(line: 176, column: 45, scope: !4581)
!4609 = !DILocation(line: 176, column: 15, scope: !4581)
!4610 = !DILocation(line: 177, column: 7, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 177, column: 7)
!4612 = !DILocation(line: 177, column: 7, scope: !4581)
!4613 = !DILocation(line: 178, column: 11, scope: !4611)
!4614 = !DILocation(line: 178, column: 4, scope: !4611)
!4615 = !DILocation(line: 179, column: 2, scope: !4582)
!4616 = !DILocation(line: 179, column: 2, scope: !4581)
!4617 = !DILocation(line: 182, column: 6, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 182, column: 6)
!4619 = !DILocation(line: 182, column: 15, scope: !4618)
!4620 = !DILocation(line: 182, column: 6, scope: !4573)
!4621 = !DILocation(line: 183, column: 3, scope: !4618)
!4622 = !DILocation(line: 186, column: 7, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 186, column: 6)
!4624 = !DILocation(line: 186, column: 16, scope: !4623)
!4625 = !DILocation(line: 186, column: 28, scope: !4623)
!4626 = !DILocation(line: 187, column: 16, scope: !4623)
!4627 = !DILocation(line: 187, column: 23, scope: !4623)
!4628 = !DILocation(line: 187, column: 30, scope: !4623)
!4629 = !DILocation(line: 187, column: 36, scope: !4623)
!4630 = !DILocation(line: 187, column: 7, scope: !4623)
!4631 = !DILocation(line: 186, column: 6, scope: !4573)
!4632 = !DILocation(line: 188, column: 3, scope: !4623)
!4633 = !DILocation(line: 191, column: 7, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 191, column: 6)
!4635 = !DILocation(line: 191, column: 16, scope: !4634)
!4636 = !DILocation(line: 191, column: 28, scope: !4634)
!4637 = !DILocation(line: 192, column: 16, scope: !4634)
!4638 = !DILocation(line: 192, column: 23, scope: !4634)
!4639 = !DILocation(line: 192, column: 30, scope: !4634)
!4640 = !DILocation(line: 192, column: 36, scope: !4634)
!4641 = !DILocation(line: 192, column: 7, scope: !4634)
!4642 = !DILocation(line: 191, column: 6, scope: !4573)
!4643 = !DILocation(line: 193, column: 3, scope: !4634)
!4644 = !DILocation(line: 196, column: 6, scope: !4585)
!4645 = !DILocation(line: 196, column: 15, scope: !4585)
!4646 = !DILocation(line: 196, column: 6, scope: !4573)
!4647 = !DILocation(line: 197, column: 3, scope: !4584)
!4648 = !DILocation(line: 197, column: 12, scope: !4584)
!4649 = !DILocation(line: 199, column: 31, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 199, column: 7)
!4651 = !DILocation(line: 199, column: 38, scope: !4650)
!4652 = !DILocation(line: 199, column: 8, scope: !4650)
!4653 = !DILocation(line: 199, column: 7, scope: !4584)
!4654 = !DILocation(line: 200, column: 4, scope: !4650)
!4655 = !DILocation(line: 202, column: 7, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 202, column: 7)
!4657 = !DILocation(line: 202, column: 16, scope: !4656)
!4658 = !DILocation(line: 202, column: 7, scope: !4584)
!4659 = !DILocation(line: 203, column: 13, scope: !4656)
!4660 = !DILocation(line: 203, column: 19, scope: !4656)
!4661 = !DILocation(line: 203, column: 4, scope: !4656)
!4662 = !DILocation(line: 205, column: 13, scope: !4656)
!4663 = !DILocation(line: 205, column: 31, scope: !4656)
!4664 = !DILocation(line: 205, column: 38, scope: !4656)
!4665 = !DILocation(line: 208, column: 28, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 208, column: 7)
!4667 = !DILocation(line: 208, column: 35, scope: !4666)
!4668 = !DILocation(line: 208, column: 8, scope: !4666)
!4669 = !DILocation(line: 208, column: 7, scope: !4584)
!4670 = !DILocation(line: 209, column: 4, scope: !4666)
!4671 = !DILocation(line: 209, column: 10, scope: !4666)
!4672 = !DILocation(line: 209, column: 18, scope: !4666)
!4673 = !DILocation(line: 210, column: 2, scope: !4585)
!4674 = !DILocation(line: 210, column: 2, scope: !4584)
!4675 = !DILocation(line: 213, column: 6, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 213, column: 6)
!4677 = !DILocation(line: 213, column: 15, scope: !4676)
!4678 = !DILocation(line: 213, column: 6, scope: !4573)
!4679 = !DILocation(line: 214, column: 31, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 214, column: 7)
!4681 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 213, column: 69)
!4682 = !DILocation(line: 214, column: 38, scope: !4680)
!4683 = !DILocation(line: 214, column: 8, scope: !4680)
!4684 = !DILocation(line: 214, column: 7, scope: !4681)
!4685 = !DILocation(line: 215, column: 4, scope: !4680)
!4686 = !DILocation(line: 216, column: 2, scope: !4681)
!4687 = !DILocation(line: 213, column: 66, scope: !4676)
!4688 = !DILocation(line: 218, column: 1, scope: !4573)
!4689 = !DILocation(line: 220, column: 6, scope: !4589)
!4690 = !DILocation(line: 220, column: 15, scope: !4589)
!4691 = !DILocation(line: 220, column: 6, scope: !4573)
!4692 = !DILocation(line: 221, column: 3, scope: !4588)
!4693 = !DILocation(line: 221, column: 7, scope: !4588)
!4694 = !DILocation(line: 223, column: 35, scope: !4588)
!4695 = !DILocation(line: 223, column: 42, scope: !4588)
!4696 = !DILocation(line: 223, column: 11, scope: !4588)
!4697 = !DILocation(line: 223, column: 9, scope: !4588)
!4698 = !DILocation(line: 224, column: 7, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 224, column: 7)
!4700 = !DILocation(line: 224, column: 7, scope: !4588)
!4701 = !DILocation(line: 225, column: 11, scope: !4699)
!4702 = !DILocation(line: 225, column: 4, scope: !4699)
!4703 = !DILocation(line: 226, column: 2, scope: !4589)
!4704 = !DILocation(line: 226, column: 2, scope: !4588)
!4705 = !DILocation(line: 228, column: 2, scope: !4573)
!4706 = !DILocation(line: 229, column: 1, scope: !4573)
!4707 = distinct !DISubprogram(name: "d_inode", scope: !1069, file: !1069, line: 514, type: !4708, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4710)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!1102, !2961}
!4710 = !{!4711}
!4711 = !DILocalVariable(name: "dentry", arg: 1, scope: !4707, file: !1069, line: 514, type: !2961)
!4712 = !DILocation(line: 514, column: 58, scope: !4707)
!4713 = !DILocation(line: 516, column: 9, scope: !4707)
!4714 = !DILocation(line: 516, column: 17, scope: !4707)
!4715 = !DILocation(line: 516, column: 2, scope: !4707)
!4716 = distinct !DISubprogram(name: "inode_newsize_ok", scope: !3, file: !3, line: 248, type: !4717, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4719)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!43, !3004, !62}
!4719 = !{!4720, !4721, !4722, !4725, !4726}
!4720 = !DILocalVariable(name: "inode", arg: 1, scope: !4716, file: !3, line: 248, type: !3004)
!4721 = !DILocalVariable(name: "offset", arg: 2, scope: !4716, file: !3, line: 248, type: !62)
!4722 = !DILocalVariable(name: "limit", scope: !4723, file: !3, line: 253, type: !60)
!4723 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 252, column: 30)
!4724 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 252, column: 6)
!4725 = !DILabel(scope: !4716, name: "out_sig", file: !3, line: 271)
!4726 = !DILabel(scope: !4716, name: "out_big", file: !3, line: 273)
!4727 = !DILocation(line: 248, column: 42, scope: !4716)
!4728 = !DILocation(line: 248, column: 56, scope: !4716)
!4729 = !DILocation(line: 250, column: 6, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 250, column: 6)
!4731 = !DILocation(line: 250, column: 13, scope: !4730)
!4732 = !DILocation(line: 250, column: 6, scope: !4716)
!4733 = !DILocation(line: 251, column: 3, scope: !4730)
!4734 = !DILocation(line: 252, column: 6, scope: !4724)
!4735 = !DILocation(line: 252, column: 13, scope: !4724)
!4736 = !DILocation(line: 252, column: 22, scope: !4724)
!4737 = !DILocation(line: 252, column: 20, scope: !4724)
!4738 = !DILocation(line: 252, column: 6, scope: !4716)
!4739 = !DILocation(line: 253, column: 3, scope: !4723)
!4740 = !DILocation(line: 253, column: 17, scope: !4723)
!4741 = !DILocation(line: 255, column: 11, scope: !4723)
!4742 = !DILocation(line: 255, column: 9, scope: !4723)
!4743 = !DILocation(line: 256, column: 7, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 256, column: 7)
!4745 = !DILocation(line: 256, column: 13, scope: !4744)
!4746 = !DILocation(line: 256, column: 30, scope: !4744)
!4747 = !DILocation(line: 256, column: 33, scope: !4744)
!4748 = !DILocation(line: 256, column: 42, scope: !4744)
!4749 = !DILocation(line: 256, column: 40, scope: !4744)
!4750 = !DILocation(line: 256, column: 7, scope: !4723)
!4751 = !DILocation(line: 257, column: 4, scope: !4744)
!4752 = !DILocation(line: 258, column: 7, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 258, column: 7)
!4754 = !DILocation(line: 258, column: 16, scope: !4753)
!4755 = !DILocation(line: 258, column: 23, scope: !4753)
!4756 = !DILocation(line: 258, column: 29, scope: !4753)
!4757 = !DILocation(line: 258, column: 14, scope: !4753)
!4758 = !DILocation(line: 258, column: 7, scope: !4723)
!4759 = !DILocation(line: 259, column: 4, scope: !4753)
!4760 = !DILocation(line: 260, column: 2, scope: !4724)
!4761 = !DILocation(line: 260, column: 2, scope: !4723)
!4762 = !DILocation(line: 266, column: 7, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4764, file: !3, line: 266, column: 7)
!4764 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 260, column: 9)
!4765 = !DILocation(line: 266, column: 7, scope: !4764)
!4766 = !DILocation(line: 267, column: 4, scope: !4763)
!4767 = !DILocation(line: 270, column: 2, scope: !4716)
!4768 = !DILocation(line: 271, column: 1, scope: !4716)
!4769 = !DILocation(line: 272, column: 20, scope: !4716)
!4770 = !DILocation(line: 272, column: 2, scope: !4716)
!4771 = !DILocation(line: 273, column: 1, scope: !4716)
!4772 = !DILocation(line: 274, column: 2, scope: !4716)
!4773 = !DILocation(line: 275, column: 1, scope: !4716)
!4774 = distinct !DISubprogram(name: "chown_ok", scope: !3, file: !3, line: 98, type: !4775, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4777)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{!350, !1141, !3004, !1196}
!4777 = !{!4778, !4779, !4780, !4781}
!4778 = !DILocalVariable(name: "idmap", arg: 1, scope: !4774, file: !3, line: 98, type: !1141)
!4779 = !DILocalVariable(name: "inode", arg: 2, scope: !4774, file: !3, line: 99, type: !3004)
!4780 = !DILocalVariable(name: "ia_vfsuid", arg: 3, scope: !4774, file: !3, line: 99, type: !1196)
!4781 = !DILocalVariable(name: "vfsuid", scope: !4774, file: !3, line: 101, type: !1196)
!4782 = !DILocation(line: 98, column: 40, scope: !4774)
!4783 = !DILocation(line: 99, column: 28, scope: !4774)
!4784 = !DILocation(line: 99, column: 44, scope: !4774)
!4785 = !DILocation(line: 101, column: 2, scope: !4774)
!4786 = !DILocation(line: 101, column: 11, scope: !4774)
!4787 = !DILocation(line: 101, column: 38, scope: !4774)
!4788 = !DILocation(line: 101, column: 45, scope: !4774)
!4789 = !DILocation(line: 101, column: 20, scope: !4774)
!4790 = !DILocation(line: 102, column: 29, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 102, column: 29)
!4792 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 102, column: 29)
!4793 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 102, column: 6)
!4794 = !DILocation(line: 102, column: 29, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4791, file: !3, line: 102, column: 29)
!4796 = !DILocation(line: 102, column: 29, scope: !4792)
!4797 = !DILocation(line: 102, column: 6, scope: !4793)
!4798 = !DILocation(line: 102, column: 46, scope: !4793)
!4799 = !DILocation(line: 103, column: 6, scope: !4793)
!4800 = !DILocation(line: 102, column: 6, scope: !4774)
!4801 = !DILocation(line: 104, column: 3, scope: !4793)
!4802 = !DILocation(line: 105, column: 31, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 105, column: 6)
!4804 = !DILocation(line: 105, column: 38, scope: !4803)
!4805 = !DILocation(line: 105, column: 6, scope: !4803)
!4806 = !DILocation(line: 105, column: 6, scope: !4774)
!4807 = !DILocation(line: 106, column: 3, scope: !4803)
!4808 = !DILocation(line: 107, column: 7, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 107, column: 6)
!4810 = !DILocation(line: 107, column: 28, scope: !4809)
!4811 = !DILocation(line: 108, column: 17, scope: !4809)
!4812 = !DILocation(line: 108, column: 24, scope: !4809)
!4813 = !DILocation(line: 108, column: 30, scope: !4809)
!4814 = !DILocation(line: 108, column: 6, scope: !4809)
!4815 = !DILocation(line: 107, column: 6, scope: !4774)
!4816 = !DILocation(line: 109, column: 3, scope: !4809)
!4817 = !DILocation(line: 110, column: 2, scope: !4774)
!4818 = !DILocation(line: 111, column: 1, scope: !4774)
!4819 = distinct !DISubprogram(name: "chgrp_ok", scope: !3, file: !3, line: 125, type: !4520, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4820)
!4820 = !{!4821, !4822, !4823, !4824, !4825}
!4821 = !DILocalVariable(name: "idmap", arg: 1, scope: !4819, file: !3, line: 125, type: !1141)
!4822 = !DILocalVariable(name: "inode", arg: 2, scope: !4819, file: !3, line: 126, type: !3004)
!4823 = !DILocalVariable(name: "ia_vfsgid", arg: 3, scope: !4819, file: !3, line: 126, type: !1206)
!4824 = !DILocalVariable(name: "vfsgid", scope: !4819, file: !3, line: 128, type: !1206)
!4825 = !DILocalVariable(name: "vfsuid", scope: !4819, file: !3, line: 129, type: !1196)
!4826 = !DILocation(line: 125, column: 40, scope: !4819)
!4827 = !DILocation(line: 126, column: 28, scope: !4819)
!4828 = !DILocation(line: 126, column: 44, scope: !4819)
!4829 = !DILocation(line: 128, column: 2, scope: !4819)
!4830 = !DILocation(line: 128, column: 11, scope: !4819)
!4831 = !DILocation(line: 128, column: 38, scope: !4819)
!4832 = !DILocation(line: 128, column: 45, scope: !4819)
!4833 = !DILocation(line: 128, column: 20, scope: !4819)
!4834 = !DILocation(line: 129, column: 2, scope: !4819)
!4835 = !DILocation(line: 129, column: 11, scope: !4819)
!4836 = !DILocation(line: 129, column: 38, scope: !4819)
!4837 = !DILocation(line: 129, column: 45, scope: !4819)
!4838 = !DILocation(line: 129, column: 20, scope: !4819)
!4839 = !DILocation(line: 130, column: 29, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 130, column: 29)
!4841 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 130, column: 29)
!4842 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 130, column: 6)
!4843 = !DILocation(line: 130, column: 29, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4840, file: !3, line: 130, column: 29)
!4845 = !DILocation(line: 130, column: 29, scope: !4841)
!4846 = !DILocation(line: 130, column: 6, scope: !4842)
!4847 = !DILocation(line: 130, column: 6, scope: !4819)
!4848 = !DILocation(line: 131, column: 7, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 131, column: 7)
!4850 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 130, column: 47)
!4851 = !DILocation(line: 131, column: 7, scope: !4850)
!4852 = !DILocation(line: 132, column: 4, scope: !4849)
!4853 = !DILocation(line: 133, column: 7, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 133, column: 7)
!4855 = !DILocation(line: 133, column: 7, scope: !4850)
!4856 = !DILocation(line: 134, column: 4, scope: !4854)
!4857 = !DILocation(line: 135, column: 2, scope: !4850)
!4858 = !DILocation(line: 136, column: 31, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 136, column: 6)
!4860 = !DILocation(line: 136, column: 38, scope: !4859)
!4861 = !DILocation(line: 136, column: 6, scope: !4859)
!4862 = !DILocation(line: 136, column: 6, scope: !4819)
!4863 = !DILocation(line: 137, column: 3, scope: !4859)
!4864 = !DILocation(line: 138, column: 7, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 138, column: 6)
!4866 = !DILocation(line: 138, column: 28, scope: !4865)
!4867 = !DILocation(line: 139, column: 17, scope: !4865)
!4868 = !DILocation(line: 139, column: 24, scope: !4865)
!4869 = !DILocation(line: 139, column: 30, scope: !4865)
!4870 = !DILocation(line: 139, column: 6, scope: !4865)
!4871 = !DILocation(line: 138, column: 6, scope: !4819)
!4872 = !DILocation(line: 140, column: 3, scope: !4865)
!4873 = !DILocation(line: 141, column: 2, scope: !4819)
!4874 = !DILocation(line: 142, column: 1, scope: !4819)
!4875 = !DISubprogram(name: "inode_owner_or_capable", scope: !173, file: !173, line: 1763, type: !4876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!350, !1141, !3004}
!4878 = !DISubprogram(name: "security_inode_killpriv", scope: !2033, file: !2033, line: 377, type: !4879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!43, !1141, !1067}
!4881 = distinct !DISubprogram(name: "rlimit", scope: !3708, file: !3708, line: 771, type: !4882, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4884)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!60, !7}
!4884 = !{!4885}
!4885 = !DILocalVariable(name: "limit", arg: 1, scope: !4881, file: !3708, line: 771, type: !7)
!4886 = !DILocation(line: 771, column: 49, scope: !4881)
!4887 = !DILocation(line: 773, column: 21, scope: !4881)
!4888 = !DILocation(line: 773, column: 30, scope: !4881)
!4889 = !DILocation(line: 773, column: 9, scope: !4881)
!4890 = !DILocation(line: 773, column: 2, scope: !4881)
!4891 = !DISubprogram(name: "send_sig", scope: !3708, file: !3708, line: 348, type: !4892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{!43, !43, !618, !43}
!4894 = distinct !DISubprogram(name: "get_current", scope: !4895, file: !4895, line: 39, type: !4896, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4898)
!4895 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!618}
!4898 = !{!4899, !4901, !4903}
!4899 = !DILocalVariable(name: "pscr_ret__", scope: !4900, file: !4895, line: 41, type: !618)
!4900 = distinct !DILexicalBlock(scope: !4894, file: !4895, line: 41, column: 9)
!4901 = !DILocalVariable(name: "__vpp_verify", scope: !4902, file: !4895, line: 41, type: !2029)
!4902 = distinct !DILexicalBlock(scope: !4900, file: !4895, line: 41, column: 9)
!4903 = !DILocalVariable(name: "pfo_val__", scope: !4904, file: !4895, line: 41, type: !239)
!4904 = distinct !DILexicalBlock(scope: !4900, file: !4895, line: 41, column: 9)
!4905 = !DILocation(line: 41, column: 9, scope: !4900)
!4906 = !DILocation(line: 41, column: 9, scope: !4902)
!4907 = !DILocation(line: 41, column: 9, scope: !4904)
!4908 = !{i64 2148394482}
!4909 = !DILocation(line: 41, column: 9, scope: !4894)
!4910 = !DILocation(line: 41, column: 2, scope: !4894)
!4911 = distinct !DISubprogram(name: "setattr_copy", scope: !3, file: !3, line: 303, type: !4912, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4916)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{null, !1141, !1102, !4914}
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!4916 = !{!4917, !4918, !4919, !4920, !4921}
!4917 = !DILocalVariable(name: "idmap", arg: 1, scope: !4911, file: !3, line: 303, type: !1141)
!4918 = !DILocalVariable(name: "inode", arg: 2, scope: !4911, file: !3, line: 303, type: !1102)
!4919 = !DILocalVariable(name: "attr", arg: 3, scope: !4911, file: !3, line: 304, type: !4914)
!4920 = !DILocalVariable(name: "ia_valid", scope: !4911, file: !3, line: 306, type: !7)
!4921 = !DILocalVariable(name: "mode", scope: !4922, file: !3, line: 317, type: !45)
!4922 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 316, column: 28)
!4923 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 316, column: 6)
!4924 = !DILocation(line: 303, column: 37, scope: !4911)
!4925 = !DILocation(line: 303, column: 58, scope: !4911)
!4926 = !DILocation(line: 304, column: 25, scope: !4911)
!4927 = !DILocation(line: 306, column: 2, scope: !4911)
!4928 = !DILocation(line: 306, column: 15, scope: !4911)
!4929 = !DILocation(line: 306, column: 26, scope: !4911)
!4930 = !DILocation(line: 306, column: 32, scope: !4911)
!4931 = !DILocation(line: 308, column: 15, scope: !4911)
!4932 = !DILocation(line: 308, column: 22, scope: !4911)
!4933 = !DILocation(line: 308, column: 28, scope: !4911)
!4934 = !DILocation(line: 308, column: 2, scope: !4911)
!4935 = !DILocation(line: 309, column: 15, scope: !4911)
!4936 = !DILocation(line: 309, column: 22, scope: !4911)
!4937 = !DILocation(line: 309, column: 28, scope: !4911)
!4938 = !DILocation(line: 309, column: 2, scope: !4911)
!4939 = !DILocation(line: 310, column: 6, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 310, column: 6)
!4941 = !DILocation(line: 310, column: 15, scope: !4940)
!4942 = !DILocation(line: 310, column: 6, scope: !4911)
!4943 = !DILocation(line: 311, column: 3, scope: !4940)
!4944 = !DILocation(line: 311, column: 10, scope: !4940)
!4945 = !DILocation(line: 311, column: 20, scope: !4940)
!4946 = !DILocation(line: 311, column: 26, scope: !4940)
!4947 = !DILocation(line: 312, column: 6, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 312, column: 6)
!4949 = !DILocation(line: 312, column: 15, scope: !4948)
!4950 = !DILocation(line: 312, column: 6, scope: !4911)
!4951 = !DILocation(line: 313, column: 3, scope: !4948)
!4952 = !DILocation(line: 313, column: 10, scope: !4948)
!4953 = !DILocation(line: 313, column: 20, scope: !4948)
!4954 = !DILocation(line: 313, column: 26, scope: !4948)
!4955 = !DILocation(line: 314, column: 6, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 314, column: 6)
!4957 = !DILocation(line: 314, column: 15, scope: !4956)
!4958 = !DILocation(line: 314, column: 6, scope: !4911)
!4959 = !DILocation(line: 315, column: 25, scope: !4956)
!4960 = !DILocation(line: 315, column: 32, scope: !4956)
!4961 = !DILocation(line: 315, column: 38, scope: !4956)
!4962 = !DILocation(line: 315, column: 3, scope: !4956)
!4963 = !DILocation(line: 316, column: 6, scope: !4923)
!4964 = !DILocation(line: 316, column: 15, scope: !4923)
!4965 = !DILocation(line: 316, column: 6, scope: !4911)
!4966 = !DILocation(line: 317, column: 3, scope: !4922)
!4967 = !DILocation(line: 317, column: 11, scope: !4922)
!4968 = !DILocation(line: 317, column: 18, scope: !4922)
!4969 = !DILocation(line: 317, column: 24, scope: !4922)
!4970 = !DILocation(line: 318, column: 28, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 318, column: 7)
!4972 = !DILocation(line: 318, column: 35, scope: !4971)
!4973 = !DILocation(line: 319, column: 25, scope: !4971)
!4974 = !DILocation(line: 319, column: 32, scope: !4971)
!4975 = !DILocation(line: 319, column: 7, scope: !4971)
!4976 = !DILocation(line: 318, column: 8, scope: !4971)
!4977 = !DILocation(line: 318, column: 7, scope: !4922)
!4978 = !DILocation(line: 320, column: 9, scope: !4971)
!4979 = !DILocation(line: 320, column: 4, scope: !4971)
!4980 = !DILocation(line: 321, column: 19, scope: !4922)
!4981 = !DILocation(line: 321, column: 3, scope: !4922)
!4982 = !DILocation(line: 321, column: 10, scope: !4922)
!4983 = !DILocation(line: 321, column: 17, scope: !4922)
!4984 = !DILocation(line: 322, column: 2, scope: !4923)
!4985 = !DILocation(line: 322, column: 2, scope: !4922)
!4986 = !DILocation(line: 323, column: 1, scope: !4911)
!4987 = distinct !DISubprogram(name: "i_uid_update", scope: !173, file: !173, line: 1397, type: !4988, scopeLine: 1400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4990)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{null, !1141, !4914, !1102}
!4990 = !{!4991, !4992, !4993}
!4991 = !DILocalVariable(name: "idmap", arg: 1, scope: !4987, file: !173, line: 1397, type: !1141)
!4992 = !DILocalVariable(name: "attr", arg: 2, scope: !4987, file: !173, line: 1398, type: !4914)
!4993 = !DILocalVariable(name: "inode", arg: 3, scope: !4987, file: !173, line: 1399, type: !1102)
!4994 = !DILocation(line: 1397, column: 51, scope: !4987)
!4995 = !DILocation(line: 1398, column: 25, scope: !4987)
!4996 = !DILocation(line: 1399, column: 19, scope: !4987)
!4997 = !DILocation(line: 1401, column: 6, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4987, file: !173, line: 1401, column: 6)
!4999 = !DILocation(line: 1401, column: 12, scope: !4998)
!5000 = !DILocation(line: 1401, column: 21, scope: !4998)
!5001 = !DILocation(line: 1401, column: 6, scope: !4987)
!5002 = !DILocation(line: 1402, column: 3, scope: !4998)
!5003 = !DILocation(line: 1402, column: 10, scope: !4998)
!5004 = !DILocation(line: 1402, column: 18, scope: !4998)
!5005 = !DILocation(line: 1402, column: 30, scope: !4998)
!5006 = !DILocation(line: 1402, column: 47, scope: !4998)
!5007 = !DILocation(line: 1402, column: 37, scope: !4998)
!5008 = !DILocation(line: 1403, column: 9, scope: !4998)
!5009 = !DILocation(line: 1403, column: 15, scope: !4998)
!5010 = !DILocation(line: 1404, column: 1, scope: !4987)
!5011 = distinct !DISubprogram(name: "i_gid_update", scope: !173, file: !173, line: 1449, type: !4988, scopeLine: 1452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5012)
!5012 = !{!5013, !5014, !5015}
!5013 = !DILocalVariable(name: "idmap", arg: 1, scope: !5011, file: !173, line: 1449, type: !1141)
!5014 = !DILocalVariable(name: "attr", arg: 2, scope: !5011, file: !173, line: 1450, type: !4914)
!5015 = !DILocalVariable(name: "inode", arg: 3, scope: !5011, file: !173, line: 1451, type: !1102)
!5016 = !DILocation(line: 1449, column: 51, scope: !5011)
!5017 = !DILocation(line: 1450, column: 25, scope: !5011)
!5018 = !DILocation(line: 1451, column: 19, scope: !5011)
!5019 = !DILocation(line: 1453, column: 6, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5011, file: !173, line: 1453, column: 6)
!5021 = !DILocation(line: 1453, column: 12, scope: !5020)
!5022 = !DILocation(line: 1453, column: 21, scope: !5020)
!5023 = !DILocation(line: 1453, column: 6, scope: !5011)
!5024 = !DILocation(line: 1454, column: 3, scope: !5020)
!5025 = !DILocation(line: 1454, column: 10, scope: !5020)
!5026 = !DILocation(line: 1454, column: 18, scope: !5020)
!5027 = !DILocation(line: 1454, column: 30, scope: !5020)
!5028 = !DILocation(line: 1454, column: 47, scope: !5020)
!5029 = !DILocation(line: 1454, column: 37, scope: !5020)
!5030 = !DILocation(line: 1455, column: 9, scope: !5020)
!5031 = !DILocation(line: 1455, column: 15, scope: !5020)
!5032 = !DILocation(line: 1456, column: 1, scope: !5011)
!5033 = distinct !DISubprogram(name: "inode_set_ctime_to_ts", scope: !173, file: !173, line: 1592, type: !5034, scopeLine: 1594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5036)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{!1212, !1102, !1212}
!5036 = !{!5037, !5038}
!5037 = !DILocalVariable(name: "inode", arg: 1, scope: !5033, file: !173, line: 1592, type: !1102)
!5038 = !DILocalVariable(name: "ts", arg: 2, scope: !5033, file: !173, line: 1593, type: !1212)
!5039 = !DILocation(line: 1592, column: 69, scope: !5033)
!5040 = !DILocation(line: 1593, column: 31, scope: !5033)
!5041 = !DILocation(line: 1595, column: 2, scope: !5033)
!5042 = !DILocation(line: 1595, column: 9, scope: !5033)
!5043 = !DILocation(line: 1595, column: 21, scope: !5033)
!5044 = !DILocation(line: 1596, column: 9, scope: !5033)
!5045 = !DILocation(line: 1596, column: 2, scope: !5033)
!5046 = distinct !DISubprogram(name: "may_setattr", scope: !3, file: !3, line: 326, type: !5047, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5049)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!43, !1141, !1102, !7}
!5049 = !{!5050, !5051, !5052, !5053}
!5050 = !DILocalVariable(name: "idmap", arg: 1, scope: !5046, file: !3, line: 326, type: !1141)
!5051 = !DILocalVariable(name: "inode", arg: 2, scope: !5046, file: !3, line: 326, type: !1102)
!5052 = !DILocalVariable(name: "ia_valid", arg: 3, scope: !5046, file: !3, line: 327, type: !7)
!5053 = !DILocalVariable(name: "error", scope: !5046, file: !3, line: 329, type: !43)
!5054 = !DILocation(line: 326, column: 35, scope: !5046)
!5055 = !DILocation(line: 326, column: 56, scope: !5046)
!5056 = !DILocation(line: 327, column: 16, scope: !5046)
!5057 = !DILocation(line: 329, column: 2, scope: !5046)
!5058 = !DILocation(line: 329, column: 6, scope: !5046)
!5059 = !DILocation(line: 331, column: 6, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 331, column: 6)
!5061 = !DILocation(line: 331, column: 15, scope: !5060)
!5062 = !DILocation(line: 331, column: 6, scope: !5046)
!5063 = !DILocation(line: 332, column: 7, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 332, column: 7)
!5065 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 331, column: 69)
!5066 = !DILocation(line: 332, column: 27, scope: !5064)
!5067 = !DILocation(line: 332, column: 30, scope: !5064)
!5068 = !DILocation(line: 332, column: 7, scope: !5065)
!5069 = !DILocation(line: 333, column: 4, scope: !5064)
!5070 = !DILocation(line: 334, column: 2, scope: !5065)
!5071 = !DILocation(line: 340, column: 6, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 340, column: 6)
!5073 = !DILocation(line: 340, column: 15, scope: !5072)
!5074 = !DILocation(line: 340, column: 6, scope: !5046)
!5075 = !DILocation(line: 341, column: 7, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5077, file: !3, line: 341, column: 7)
!5077 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 340, column: 29)
!5078 = !DILocation(line: 341, column: 7, scope: !5077)
!5079 = !DILocation(line: 342, column: 4, scope: !5076)
!5080 = !DILocation(line: 344, column: 31, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5077, file: !3, line: 344, column: 7)
!5082 = !DILocation(line: 344, column: 38, scope: !5081)
!5083 = !DILocation(line: 344, column: 8, scope: !5081)
!5084 = !DILocation(line: 344, column: 7, scope: !5077)
!5085 = !DILocation(line: 345, column: 29, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5081, file: !3, line: 344, column: 46)
!5087 = !DILocation(line: 345, column: 36, scope: !5086)
!5088 = !DILocation(line: 345, column: 12, scope: !5086)
!5089 = !DILocation(line: 345, column: 10, scope: !5086)
!5090 = !DILocation(line: 346, column: 8, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 346, column: 8)
!5092 = !DILocation(line: 346, column: 8, scope: !5086)
!5093 = !DILocation(line: 347, column: 12, scope: !5091)
!5094 = !DILocation(line: 347, column: 5, scope: !5091)
!5095 = !DILocation(line: 348, column: 3, scope: !5086)
!5096 = !DILocation(line: 349, column: 2, scope: !5077)
!5097 = !DILocation(line: 350, column: 2, scope: !5046)
!5098 = !DILocation(line: 351, column: 1, scope: !5046)
!5099 = !DISubprogram(name: "inode_permission", scope: !173, file: !173, line: 2675, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5100 = distinct !DISubprogram(name: "notify_change", scope: !3, file: !3, line: 381, type: !5101, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5104)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!43, !1141, !1067, !1186, !5103}
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!5104 = !{!5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5116}
!5105 = !DILocalVariable(name: "idmap", arg: 1, scope: !5100, file: !3, line: 381, type: !1141)
!5106 = !DILocalVariable(name: "dentry", arg: 2, scope: !5100, file: !3, line: 381, type: !1067)
!5107 = !DILocalVariable(name: "attr", arg: 3, scope: !5100, file: !3, line: 382, type: !1186)
!5108 = !DILocalVariable(name: "delegated_inode", arg: 4, scope: !5100, file: !3, line: 382, type: !5103)
!5109 = !DILocalVariable(name: "inode", scope: !5100, file: !3, line: 384, type: !1102)
!5110 = !DILocalVariable(name: "mode", scope: !5100, file: !3, line: 385, type: !45)
!5111 = !DILocalVariable(name: "error", scope: !5100, file: !3, line: 386, type: !43)
!5112 = !DILocalVariable(name: "now", scope: !5100, file: !3, line: 387, type: !1212)
!5113 = !DILocalVariable(name: "ia_valid", scope: !5100, file: !3, line: 388, type: !7)
!5114 = !DILocalVariable(name: "__ret_warn_on", scope: !5115, file: !3, line: 390, type: !43)
!5115 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 390, column: 2)
!5116 = !DILocalVariable(name: "__flags", scope: !5117, file: !3, line: 390, type: !43)
!5117 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 390, column: 2)
!5118 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 390, column: 2)
!5119 = !DILocation(line: 381, column: 37, scope: !5100)
!5120 = !DILocation(line: 381, column: 59, scope: !5100)
!5121 = !DILocation(line: 382, column: 19, scope: !5100)
!5122 = !DILocation(line: 382, column: 40, scope: !5100)
!5123 = !DILocation(line: 384, column: 2, scope: !5100)
!5124 = !DILocation(line: 384, column: 16, scope: !5100)
!5125 = !DILocation(line: 384, column: 24, scope: !5100)
!5126 = !DILocation(line: 384, column: 32, scope: !5100)
!5127 = !DILocation(line: 385, column: 2, scope: !5100)
!5128 = !DILocation(line: 385, column: 10, scope: !5100)
!5129 = !DILocation(line: 385, column: 17, scope: !5100)
!5130 = !DILocation(line: 385, column: 24, scope: !5100)
!5131 = !DILocation(line: 386, column: 2, scope: !5100)
!5132 = !DILocation(line: 386, column: 6, scope: !5100)
!5133 = !DILocation(line: 387, column: 2, scope: !5100)
!5134 = !DILocation(line: 387, column: 20, scope: !5100)
!5135 = !DILocation(line: 388, column: 2, scope: !5100)
!5136 = !DILocation(line: 388, column: 15, scope: !5100)
!5137 = !DILocation(line: 388, column: 26, scope: !5100)
!5138 = !DILocation(line: 388, column: 32, scope: !5100)
!5139 = !DILocation(line: 390, column: 2, scope: !5115)
!5140 = !DILocation(line: 390, column: 2, scope: !5118)
!5141 = !DILocation(line: 390, column: 2, scope: !5117)
!5142 = !DILocation(line: 390, column: 2, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 390, column: 2)
!5144 = !DILocation(line: 390, column: 2, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 390, column: 2)
!5146 = !{i64 2155085302, i64 2155085331, i64 2155085377, i64 2155085435, i64 2155085489, i64 2155085543, i64 2155085598, i64 2155085629, i64 2155085937, i64 2155085943, i64 2155085990, i64 2155086013, i64 2155086039}
!5147 = !DILocation(line: 390, column: 2, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 390, column: 2)
!5149 = !DILocation(line: 390, column: 2, scope: !5100)
!5150 = !DILocation(line: 392, column: 22, scope: !5100)
!5151 = !DILocation(line: 392, column: 29, scope: !5100)
!5152 = !DILocation(line: 392, column: 36, scope: !5100)
!5153 = !DILocation(line: 392, column: 10, scope: !5100)
!5154 = !DILocation(line: 392, column: 8, scope: !5100)
!5155 = !DILocation(line: 393, column: 6, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 393, column: 6)
!5157 = !DILocation(line: 393, column: 6, scope: !5100)
!5158 = !DILocation(line: 394, column: 10, scope: !5156)
!5159 = !DILocation(line: 394, column: 3, scope: !5156)
!5160 = !DILocation(line: 396, column: 7, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 396, column: 6)
!5162 = !DILocation(line: 396, column: 16, scope: !5161)
!5163 = !DILocation(line: 396, column: 6, scope: !5100)
!5164 = !DILocation(line: 411, column: 7, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 411, column: 7)
!5166 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 396, column: 30)
!5167 = !DILocation(line: 411, column: 7, scope: !5166)
!5168 = !DILocation(line: 412, column: 4, scope: !5165)
!5169 = !DILocation(line: 415, column: 15, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 415, column: 7)
!5171 = !DILocation(line: 415, column: 21, scope: !5170)
!5172 = !DILocation(line: 415, column: 7, scope: !5170)
!5173 = !DILocation(line: 415, column: 7, scope: !5166)
!5174 = !DILocation(line: 416, column: 4, scope: !5170)
!5175 = !DILocation(line: 416, column: 11, scope: !5170)
!5176 = !DILocation(line: 416, column: 19, scope: !5170)
!5177 = !DILocation(line: 417, column: 2, scope: !5166)
!5178 = !DILocation(line: 419, column: 8, scope: !5100)
!5179 = !DILocation(line: 419, column: 21, scope: !5100)
!5180 = !DILocation(line: 421, column: 2, scope: !5100)
!5181 = !DILocation(line: 421, column: 8, scope: !5100)
!5182 = !DILocation(line: 421, column: 19, scope: !5100)
!5183 = !DILocation(line: 422, column: 8, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 422, column: 6)
!5185 = !DILocation(line: 422, column: 17, scope: !5184)
!5186 = !DILocation(line: 422, column: 6, scope: !5100)
!5187 = !DILocation(line: 423, column: 3, scope: !5184)
!5188 = !DILocation(line: 423, column: 9, scope: !5184)
!5189 = !DILocation(line: 423, column: 20, scope: !5184)
!5190 = !DILocation(line: 425, column: 3, scope: !5184)
!5191 = !DILocation(line: 425, column: 9, scope: !5184)
!5192 = !DILocation(line: 425, column: 20, scope: !5184)
!5193 = !DILocation(line: 425, column: 39, scope: !5184)
!5194 = !DILocation(line: 425, column: 45, scope: !5184)
!5195 = !DILocation(line: 425, column: 55, scope: !5184)
!5196 = !DILocation(line: 426, column: 8, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 426, column: 6)
!5198 = !DILocation(line: 426, column: 17, scope: !5197)
!5199 = !DILocation(line: 426, column: 6, scope: !5100)
!5200 = !DILocation(line: 427, column: 3, scope: !5197)
!5201 = !DILocation(line: 427, column: 9, scope: !5197)
!5202 = !DILocation(line: 427, column: 20, scope: !5197)
!5203 = !DILocation(line: 429, column: 3, scope: !5197)
!5204 = !DILocation(line: 429, column: 9, scope: !5197)
!5205 = !DILocation(line: 429, column: 20, scope: !5197)
!5206 = !DILocation(line: 429, column: 39, scope: !5197)
!5207 = !DILocation(line: 429, column: 45, scope: !5197)
!5208 = !DILocation(line: 429, column: 55, scope: !5197)
!5209 = !DILocation(line: 431, column: 6, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 431, column: 6)
!5211 = !DILocation(line: 431, column: 15, scope: !5210)
!5212 = !DILocation(line: 431, column: 6, scope: !5100)
!5213 = !DILocation(line: 432, column: 40, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 431, column: 33)
!5215 = !DILocation(line: 432, column: 11, scope: !5214)
!5216 = !DILocation(line: 432, column: 9, scope: !5214)
!5217 = !DILocation(line: 433, column: 7, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 433, column: 7)
!5219 = !DILocation(line: 433, column: 13, scope: !5218)
!5220 = !DILocation(line: 433, column: 7, scope: !5214)
!5221 = !DILocation(line: 434, column: 11, scope: !5218)
!5222 = !DILocation(line: 434, column: 4, scope: !5218)
!5223 = !DILocation(line: 435, column: 7, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 435, column: 7)
!5225 = !DILocation(line: 435, column: 13, scope: !5224)
!5226 = !DILocation(line: 435, column: 7, scope: !5214)
!5227 = !DILocation(line: 436, column: 15, scope: !5224)
!5228 = !DILocation(line: 436, column: 21, scope: !5224)
!5229 = !DILocation(line: 436, column: 30, scope: !5224)
!5230 = !DILocation(line: 436, column: 13, scope: !5224)
!5231 = !DILocation(line: 436, column: 4, scope: !5224)
!5232 = !DILocation(line: 437, column: 2, scope: !5214)
!5233 = !DILocation(line: 446, column: 7, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 446, column: 6)
!5235 = !DILocation(line: 446, column: 16, scope: !5234)
!5236 = !DILocation(line: 446, column: 51, scope: !5234)
!5237 = !DILocation(line: 447, column: 7, scope: !5234)
!5238 = !DILocation(line: 447, column: 16, scope: !5234)
!5239 = !DILocation(line: 446, column: 6, scope: !5100)
!5240 = !DILocation(line: 448, column: 3, scope: !5234)
!5241 = !DILocation(line: 448, column: 3, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 448, column: 3)
!5243 = !DILocation(line: 448, column: 3, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 448, column: 3)
!5245 = !DILocation(line: 448, column: 3, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 448, column: 3)
!5247 = !{i64 2155086594, i64 2155086623, i64 2155086669, i64 2155086727, i64 2155086781, i64 2155086835, i64 2155086890, i64 2155086921}
!5248 = !DILocation(line: 450, column: 6, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 450, column: 6)
!5250 = !DILocation(line: 450, column: 15, scope: !5249)
!5251 = !DILocation(line: 450, column: 6, scope: !5100)
!5252 = !DILocation(line: 451, column: 7, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5254, file: !3, line: 451, column: 7)
!5254 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 450, column: 33)
!5255 = !DILocation(line: 451, column: 12, scope: !5253)
!5256 = !DILocation(line: 451, column: 7, scope: !5254)
!5257 = !DILocation(line: 452, column: 15, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 451, column: 23)
!5259 = !DILocation(line: 452, column: 21, scope: !5258)
!5260 = !DILocation(line: 452, column: 30, scope: !5258)
!5261 = !DILocation(line: 452, column: 13, scope: !5258)
!5262 = !DILocation(line: 453, column: 21, scope: !5258)
!5263 = !DILocation(line: 453, column: 28, scope: !5258)
!5264 = !DILocation(line: 453, column: 35, scope: !5258)
!5265 = !DILocation(line: 453, column: 20, scope: !5258)
!5266 = !DILocation(line: 453, column: 4, scope: !5258)
!5267 = !DILocation(line: 453, column: 10, scope: !5258)
!5268 = !DILocation(line: 453, column: 18, scope: !5258)
!5269 = !DILocation(line: 454, column: 3, scope: !5258)
!5270 = !DILocation(line: 455, column: 2, scope: !5254)
!5271 = !DILocation(line: 456, column: 6, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 456, column: 6)
!5273 = !DILocation(line: 456, column: 15, scope: !5272)
!5274 = !DILocation(line: 456, column: 6, scope: !5100)
!5275 = !DILocation(line: 457, column: 7, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 457, column: 7)
!5277 = distinct !DILexicalBlock(scope: !5272, file: !3, line: 456, column: 33)
!5278 = !DILocation(line: 457, column: 12, scope: !5276)
!5279 = !DILocation(line: 457, column: 7, scope: !5277)
!5280 = !DILocation(line: 458, column: 10, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 458, column: 8)
!5282 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 457, column: 23)
!5283 = !DILocation(line: 458, column: 19, scope: !5281)
!5284 = !DILocation(line: 458, column: 8, scope: !5282)
!5285 = !DILocation(line: 459, column: 16, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5281, file: !3, line: 458, column: 33)
!5287 = !DILocation(line: 459, column: 22, scope: !5286)
!5288 = !DILocation(line: 459, column: 31, scope: !5286)
!5289 = !DILocation(line: 459, column: 14, scope: !5286)
!5290 = !DILocation(line: 460, column: 21, scope: !5286)
!5291 = !DILocation(line: 460, column: 28, scope: !5286)
!5292 = !DILocation(line: 460, column: 5, scope: !5286)
!5293 = !DILocation(line: 460, column: 11, scope: !5286)
!5294 = !DILocation(line: 460, column: 19, scope: !5286)
!5295 = !DILocation(line: 461, column: 4, scope: !5286)
!5296 = !DILocation(line: 462, column: 4, scope: !5282)
!5297 = !DILocation(line: 462, column: 10, scope: !5282)
!5298 = !DILocation(line: 462, column: 18, scope: !5282)
!5299 = !DILocation(line: 463, column: 3, scope: !5282)
!5300 = !DILocation(line: 464, column: 2, scope: !5277)
!5301 = !DILocation(line: 465, column: 8, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 465, column: 6)
!5303 = !DILocation(line: 465, column: 14, scope: !5302)
!5304 = !DILocation(line: 465, column: 23, scope: !5302)
!5305 = !DILocation(line: 465, column: 6, scope: !5100)
!5306 = !DILocation(line: 466, column: 3, scope: !5302)
!5307 = !DILocation(line: 472, column: 6, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 472, column: 6)
!5309 = !DILocation(line: 472, column: 15, scope: !5308)
!5310 = !DILocation(line: 472, column: 26, scope: !5308)
!5311 = !DILocation(line: 473, column: 28, scope: !5308)
!5312 = !DILocation(line: 473, column: 35, scope: !5308)
!5313 = !DILocation(line: 473, column: 42, scope: !5308)
!5314 = !DILocation(line: 473, column: 48, scope: !5308)
!5315 = !DILocation(line: 474, column: 7, scope: !5308)
!5316 = !DILocation(line: 474, column: 13, scope: !5308)
!5317 = !DILocation(line: 473, column: 7, scope: !5308)
!5318 = !DILocation(line: 472, column: 6, scope: !5100)
!5319 = !DILocation(line: 475, column: 3, scope: !5308)
!5320 = !DILocation(line: 476, column: 6, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 476, column: 6)
!5322 = !DILocation(line: 476, column: 15, scope: !5321)
!5323 = !DILocation(line: 476, column: 26, scope: !5321)
!5324 = !DILocation(line: 477, column: 28, scope: !5321)
!5325 = !DILocation(line: 477, column: 35, scope: !5321)
!5326 = !DILocation(line: 477, column: 42, scope: !5321)
!5327 = !DILocation(line: 477, column: 48, scope: !5321)
!5328 = !DILocation(line: 478, column: 7, scope: !5321)
!5329 = !DILocation(line: 478, column: 13, scope: !5321)
!5330 = !DILocation(line: 477, column: 7, scope: !5321)
!5331 = !DILocation(line: 476, column: 6, scope: !5100)
!5332 = !DILocation(line: 479, column: 3, scope: !5321)
!5333 = !DILocation(line: 484, column: 8, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 484, column: 6)
!5335 = !DILocation(line: 484, column: 17, scope: !5334)
!5336 = !DILocation(line: 484, column: 29, scope: !5334)
!5337 = !DILocation(line: 485, column: 38, scope: !5334)
!5338 = !DILocation(line: 485, column: 45, scope: !5334)
!5339 = !DILocation(line: 485, column: 20, scope: !5334)
!5340 = !DILocation(line: 485, column: 7, scope: !5334)
!5341 = !DILocation(line: 484, column: 6, scope: !5100)
!5342 = !DILocation(line: 486, column: 3, scope: !5334)
!5343 = !DILocation(line: 487, column: 8, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 487, column: 6)
!5345 = !DILocation(line: 487, column: 17, scope: !5344)
!5346 = !DILocation(line: 487, column: 29, scope: !5344)
!5347 = !DILocation(line: 488, column: 38, scope: !5344)
!5348 = !DILocation(line: 488, column: 45, scope: !5344)
!5349 = !DILocation(line: 488, column: 20, scope: !5344)
!5350 = !DILocation(line: 488, column: 7, scope: !5344)
!5351 = !DILocation(line: 487, column: 6, scope: !5100)
!5352 = !DILocation(line: 489, column: 3, scope: !5344)
!5353 = !DILocation(line: 491, column: 33, scope: !5100)
!5354 = !DILocation(line: 491, column: 40, scope: !5100)
!5355 = !DILocation(line: 491, column: 48, scope: !5100)
!5356 = !DILocation(line: 491, column: 10, scope: !5100)
!5357 = !DILocation(line: 491, column: 8, scope: !5100)
!5358 = !DILocation(line: 492, column: 6, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 492, column: 6)
!5360 = !DILocation(line: 492, column: 6, scope: !5100)
!5361 = !DILocation(line: 493, column: 10, scope: !5359)
!5362 = !DILocation(line: 493, column: 3, scope: !5359)
!5363 = !DILocation(line: 494, column: 26, scope: !5100)
!5364 = !DILocation(line: 494, column: 33, scope: !5100)
!5365 = !DILocation(line: 494, column: 10, scope: !5100)
!5366 = !DILocation(line: 494, column: 8, scope: !5100)
!5367 = !DILocation(line: 495, column: 6, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 495, column: 6)
!5369 = !DILocation(line: 495, column: 6, scope: !5100)
!5370 = !DILocation(line: 496, column: 10, scope: !5368)
!5371 = !DILocation(line: 496, column: 3, scope: !5368)
!5372 = !DILocation(line: 498, column: 6, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 498, column: 6)
!5374 = !DILocation(line: 498, column: 13, scope: !5373)
!5375 = !DILocation(line: 498, column: 19, scope: !5373)
!5376 = !DILocation(line: 498, column: 6, scope: !5100)
!5377 = !DILocation(line: 499, column: 11, scope: !5373)
!5378 = !DILocation(line: 499, column: 18, scope: !5373)
!5379 = !DILocation(line: 499, column: 24, scope: !5373)
!5380 = !DILocation(line: 499, column: 32, scope: !5373)
!5381 = !DILocation(line: 499, column: 39, scope: !5373)
!5382 = !DILocation(line: 499, column: 47, scope: !5373)
!5383 = !DILocation(line: 499, column: 9, scope: !5373)
!5384 = !DILocation(line: 499, column: 3, scope: !5373)
!5385 = !DILocation(line: 501, column: 26, scope: !5373)
!5386 = !DILocation(line: 501, column: 33, scope: !5373)
!5387 = !DILocation(line: 501, column: 41, scope: !5373)
!5388 = !DILocation(line: 501, column: 11, scope: !5373)
!5389 = !DILocation(line: 501, column: 9, scope: !5373)
!5390 = !DILocation(line: 503, column: 7, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 503, column: 6)
!5392 = !DILocation(line: 503, column: 6, scope: !5100)
!5393 = !DILocation(line: 504, column: 19, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 503, column: 14)
!5395 = !DILocation(line: 504, column: 27, scope: !5394)
!5396 = !DILocation(line: 504, column: 3, scope: !5394)
!5397 = !DILocation(line: 505, column: 26, scope: !5394)
!5398 = !DILocation(line: 505, column: 33, scope: !5394)
!5399 = !DILocation(line: 505, column: 3, scope: !5394)
!5400 = !DILocation(line: 506, column: 26, scope: !5394)
!5401 = !DILocation(line: 506, column: 34, scope: !5394)
!5402 = !DILocation(line: 506, column: 3, scope: !5394)
!5403 = !DILocation(line: 507, column: 2, scope: !5394)
!5404 = !DILocation(line: 509, column: 9, scope: !5100)
!5405 = !DILocation(line: 509, column: 2, scope: !5100)
!5406 = !DILocation(line: 510, column: 1, scope: !5100)
!5407 = distinct !DISubprogram(name: "inode_is_locked", scope: !173, file: !173, line: 832, type: !2554, scopeLine: 833, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5408)
!5408 = !{!5409}
!5409 = !DILocalVariable(name: "inode", arg: 1, scope: !5407, file: !173, line: 832, type: !1102)
!5410 = !DILocation(line: 832, column: 49, scope: !5407)
!5411 = !DILocation(line: 834, column: 26, scope: !5407)
!5412 = !DILocation(line: 834, column: 33, scope: !5407)
!5413 = !DILocation(line: 834, column: 9, scope: !5407)
!5414 = !DILocation(line: 834, column: 2, scope: !5407)
!5415 = distinct !DISubprogram(name: "is_sxid", scope: !173, file: !173, line: 3392, type: !5416, scopeLine: 3393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5418)
!5416 = !DISubroutineType(types: !5417)
!5417 = !{!350, !45}
!5418 = !{!5419}
!5419 = !DILocalVariable(name: "mode", arg: 1, scope: !5415, file: !173, line: 3392, type: !45)
!5420 = !DILocation(line: 3392, column: 36, scope: !5415)
!5421 = !DILocation(line: 3394, column: 9, scope: !5415)
!5422 = !DILocation(line: 3394, column: 14, scope: !5415)
!5423 = !DILocation(line: 3394, column: 2, scope: !5415)
!5424 = !DISubprogram(name: "current_time", scope: !173, file: !173, line: 1514, type: !5425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{!1212, !1102}
!5427 = !DISubprogram(name: "timestamp_truncate", scope: !173, file: !173, line: 753, type: !5428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5428 = !DISubroutineType(types: !5429)
!5429 = !{!1212, !1212, !1102}
!5430 = !DISubprogram(name: "security_inode_need_killpriv", scope: !2033, file: !2033, line: 376, type: !2976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5431 = distinct !DISubprogram(name: "vfsuid_has_fsmapping", scope: !1197, file: !1197, line: 142, type: !5432, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5434)
!5432 = !DISubroutineType(types: !5433)
!5433 = !{!350, !1141, !442, !1196}
!5434 = !{!5435, !5436, !5437}
!5435 = !DILocalVariable(name: "idmap", arg: 1, scope: !5431, file: !1197, line: 142, type: !1141)
!5436 = !DILocalVariable(name: "fs_userns", arg: 2, scope: !5431, file: !1197, line: 143, type: !442)
!5437 = !DILocalVariable(name: "vfsuid", arg: 3, scope: !5431, file: !1197, line: 144, type: !1196)
!5438 = !DILocation(line: 142, column: 59, scope: !5431)
!5439 = !DILocation(line: 143, column: 29, scope: !5431)
!5440 = !DILocation(line: 144, column: 15, scope: !5431)
!5441 = !DILocation(line: 146, column: 31, scope: !5431)
!5442 = !DILocation(line: 146, column: 38, scope: !5431)
!5443 = !DILocation(line: 146, column: 19, scope: !5431)
!5444 = !DILocation(line: 146, column: 9, scope: !5431)
!5445 = !DILocation(line: 146, column: 2, scope: !5431)
!5446 = distinct !DISubprogram(name: "vfsgid_has_fsmapping", scope: !1197, file: !1197, line: 180, type: !5447, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5449)
!5447 = !DISubroutineType(types: !5448)
!5448 = !{!350, !1141, !442, !1206}
!5449 = !{!5450, !5451, !5452}
!5450 = !DILocalVariable(name: "idmap", arg: 1, scope: !5446, file: !1197, line: 180, type: !1141)
!5451 = !DILocalVariable(name: "fs_userns", arg: 2, scope: !5446, file: !1197, line: 181, type: !442)
!5452 = !DILocalVariable(name: "vfsgid", arg: 3, scope: !5446, file: !1197, line: 182, type: !1206)
!5453 = !DILocation(line: 180, column: 59, scope: !5446)
!5454 = !DILocation(line: 181, column: 29, scope: !5446)
!5455 = !DILocation(line: 182, column: 15, scope: !5446)
!5456 = !DILocation(line: 184, column: 31, scope: !5446)
!5457 = !DILocation(line: 184, column: 38, scope: !5446)
!5458 = !DILocation(line: 184, column: 19, scope: !5446)
!5459 = !DILocation(line: 184, column: 9, scope: !5446)
!5460 = !DILocation(line: 184, column: 2, scope: !5446)
!5461 = distinct !DISubprogram(name: "vfsuid_valid", scope: !1197, file: !1197, line: 49, type: !5462, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5464)
!5462 = !DISubroutineType(types: !5463)
!5463 = !{!350, !1196}
!5464 = !{!5465}
!5465 = !DILocalVariable(name: "uid", arg: 1, scope: !5461, file: !1197, line: 49, type: !1196)
!5466 = !DILocation(line: 49, column: 42, scope: !5461)
!5467 = !DILocation(line: 51, column: 9, scope: !5461)
!5468 = !DILocation(line: 51, column: 27, scope: !5461)
!5469 = !DILocation(line: 51, column: 2, scope: !5461)
!5470 = distinct !DISubprogram(name: "i_uid_into_vfsuid", scope: !173, file: !173, line: 1362, type: !5471, scopeLine: 1364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5473)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{!1196, !1141, !3004}
!5473 = !{!5474, !5475}
!5474 = !DILocalVariable(name: "idmap", arg: 1, scope: !5470, file: !173, line: 1362, type: !1141)
!5475 = !DILocalVariable(name: "inode", arg: 2, scope: !5470, file: !173, line: 1363, type: !3004)
!5476 = !DILocation(line: 1362, column: 60, scope: !5470)
!5477 = !DILocation(line: 1363, column: 27, scope: !5470)
!5478 = !DILocation(line: 1365, column: 21, scope: !5470)
!5479 = !DILocation(line: 1365, column: 38, scope: !5470)
!5480 = !DILocation(line: 1365, column: 28, scope: !5470)
!5481 = !DILocation(line: 1365, column: 46, scope: !5470)
!5482 = !DILocation(line: 1365, column: 53, scope: !5470)
!5483 = !DILocation(line: 1365, column: 9, scope: !5470)
!5484 = !DILocation(line: 1365, column: 2, scope: !5470)
!5485 = distinct !DISubprogram(name: "vfsgid_valid", scope: !1197, file: !1197, line: 54, type: !5486, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5488)
!5486 = !DISubroutineType(types: !5487)
!5487 = !{!350, !1206}
!5488 = !{!5489}
!5489 = !DILocalVariable(name: "gid", arg: 1, scope: !5485, file: !1197, line: 54, type: !1206)
!5490 = !DILocation(line: 54, column: 42, scope: !5485)
!5491 = !DILocation(line: 56, column: 9, scope: !5485)
!5492 = !DILocation(line: 56, column: 27, scope: !5485)
!5493 = !DILocation(line: 56, column: 2, scope: !5485)
!5494 = !DISubprogram(name: "security_inode_setattr", scope: !2033, file: !2033, line: 357, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5495 = distinct !DISubprogram(name: "try_break_deleg", scope: !3170, file: !3170, line: 378, type: !5496, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5498)
!5496 = !DISubroutineType(types: !5497)
!5497 = !{!43, !1102, !5103}
!5498 = !{!5499, !5500, !5501}
!5499 = !DILocalVariable(name: "inode", arg: 1, scope: !5495, file: !3170, line: 378, type: !1102)
!5500 = !DILocalVariable(name: "delegated_inode", arg: 2, scope: !5495, file: !3170, line: 378, type: !5103)
!5501 = !DILocalVariable(name: "ret", scope: !5495, file: !3170, line: 380, type: !43)
!5502 = !DILocation(line: 378, column: 49, scope: !5495)
!5503 = !DILocation(line: 378, column: 71, scope: !5495)
!5504 = !DILocation(line: 380, column: 2, scope: !5495)
!5505 = !DILocation(line: 380, column: 6, scope: !5495)
!5506 = !DILocation(line: 382, column: 20, scope: !5495)
!5507 = !DILocation(line: 382, column: 8, scope: !5495)
!5508 = !DILocation(line: 382, column: 6, scope: !5495)
!5509 = !DILocation(line: 383, column: 6, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5495, file: !3170, line: 383, column: 6)
!5511 = !DILocation(line: 383, column: 10, scope: !5510)
!5512 = !DILocation(line: 383, column: 26, scope: !5510)
!5513 = !DILocation(line: 383, column: 29, scope: !5510)
!5514 = !DILocation(line: 383, column: 6, scope: !5495)
!5515 = !DILocation(line: 384, column: 22, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5510, file: !3170, line: 383, column: 46)
!5517 = !DILocation(line: 384, column: 4, scope: !5516)
!5518 = !DILocation(line: 384, column: 20, scope: !5516)
!5519 = !DILocation(line: 385, column: 9, scope: !5516)
!5520 = !DILocation(line: 385, column: 3, scope: !5516)
!5521 = !DILocation(line: 386, column: 2, scope: !5516)
!5522 = !DILocation(line: 387, column: 9, scope: !5495)
!5523 = !DILocation(line: 388, column: 1, scope: !5495)
!5524 = !DILocation(line: 387, column: 2, scope: !5495)
!5525 = !DISubprogram(name: "simple_setattr", scope: !173, file: !173, line: 3144, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5526 = distinct !DISubprogram(name: "fsnotify_change", scope: !5527, file: !5527, line: 364, type: !5528, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5530)
!5527 = !DIFile(filename: "./include/linux/fsnotify.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41bc5e92750cfb13d8322458d84e0ec0")
!5528 = !DISubroutineType(types: !5529)
!5529 = !{null, !1067, !7}
!5530 = !{!5531, !5532, !5533}
!5531 = !DILocalVariable(name: "dentry", arg: 1, scope: !5526, file: !5527, line: 364, type: !1067)
!5532 = !DILocalVariable(name: "ia_valid", arg: 2, scope: !5526, file: !5527, line: 364, type: !7)
!5533 = !DILocalVariable(name: "mask", scope: !5526, file: !5527, line: 366, type: !307)
!5534 = !DILocation(line: 364, column: 51, scope: !5526)
!5535 = !DILocation(line: 364, column: 72, scope: !5526)
!5536 = !DILocation(line: 366, column: 2, scope: !5526)
!5537 = !DILocation(line: 366, column: 8, scope: !5526)
!5538 = !DILocation(line: 368, column: 6, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5526, file: !5527, line: 368, column: 6)
!5540 = !DILocation(line: 368, column: 15, scope: !5539)
!5541 = !DILocation(line: 368, column: 6, scope: !5526)
!5542 = !DILocation(line: 369, column: 8, scope: !5539)
!5543 = !DILocation(line: 369, column: 3, scope: !5539)
!5544 = !DILocation(line: 370, column: 6, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5526, file: !5527, line: 370, column: 6)
!5546 = !DILocation(line: 370, column: 15, scope: !5545)
!5547 = !DILocation(line: 370, column: 6, scope: !5526)
!5548 = !DILocation(line: 371, column: 8, scope: !5545)
!5549 = !DILocation(line: 371, column: 3, scope: !5545)
!5550 = !DILocation(line: 372, column: 6, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5526, file: !5527, line: 372, column: 6)
!5552 = !DILocation(line: 372, column: 15, scope: !5551)
!5553 = !DILocation(line: 372, column: 6, scope: !5526)
!5554 = !DILocation(line: 373, column: 8, scope: !5551)
!5555 = !DILocation(line: 373, column: 3, scope: !5551)
!5556 = !DILocation(line: 376, column: 7, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5526, file: !5527, line: 376, column: 6)
!5558 = !DILocation(line: 376, column: 16, scope: !5557)
!5559 = !DILocation(line: 376, column: 45, scope: !5557)
!5560 = !DILocation(line: 376, column: 6, scope: !5526)
!5561 = !DILocation(line: 377, column: 8, scope: !5557)
!5562 = !DILocation(line: 377, column: 3, scope: !5557)
!5563 = !DILocation(line: 378, column: 11, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5557, file: !5527, line: 378, column: 11)
!5565 = !DILocation(line: 378, column: 20, scope: !5564)
!5566 = !DILocation(line: 378, column: 11, scope: !5557)
!5567 = !DILocation(line: 379, column: 8, scope: !5564)
!5568 = !DILocation(line: 379, column: 3, scope: !5564)
!5569 = !DILocation(line: 380, column: 11, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5564, file: !5527, line: 380, column: 11)
!5571 = !DILocation(line: 380, column: 20, scope: !5570)
!5572 = !DILocation(line: 380, column: 11, scope: !5564)
!5573 = !DILocation(line: 381, column: 8, scope: !5570)
!5574 = !DILocation(line: 381, column: 3, scope: !5570)
!5575 = !DILocation(line: 383, column: 6, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5526, file: !5527, line: 383, column: 6)
!5577 = !DILocation(line: 383, column: 15, scope: !5576)
!5578 = !DILocation(line: 383, column: 6, scope: !5526)
!5579 = !DILocation(line: 384, column: 8, scope: !5576)
!5580 = !DILocation(line: 384, column: 3, scope: !5576)
!5581 = !DILocation(line: 386, column: 6, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5526, file: !5527, line: 386, column: 6)
!5583 = !DILocation(line: 386, column: 6, scope: !5526)
!5584 = !DILocation(line: 387, column: 19, scope: !5582)
!5585 = !DILocation(line: 387, column: 27, scope: !5582)
!5586 = !DILocation(line: 387, column: 3, scope: !5582)
!5587 = !DILocation(line: 388, column: 1, scope: !5526)
!5588 = distinct !DISubprogram(name: "ima_inode_post_setattr", scope: !5589, file: !5589, line: 208, type: !5590, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5592)
!5589 = !DIFile(filename: "./include/linux/ima.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ee7ab0cd0f172777c98616f0785c7af")
!5590 = !DISubroutineType(types: !5591)
!5591 = !{null, !1141, !1067}
!5592 = !{!5593, !5594}
!5593 = !DILocalVariable(name: "idmap", arg: 1, scope: !5588, file: !5589, line: 208, type: !1141)
!5594 = !DILocalVariable(name: "dentry", arg: 2, scope: !5588, file: !5589, line: 209, type: !1067)
!5595 = !DILocation(line: 208, column: 61, scope: !5588)
!5596 = !DILocation(line: 209, column: 23, scope: !5588)
!5597 = !DILocation(line: 211, column: 2, scope: !5588)
!5598 = distinct !DISubprogram(name: "evm_inode_post_setattr", scope: !5599, file: !5599, line: 101, type: !5600, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5602)
!5599 = !DIFile(filename: "./include/linux/evm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7da3d0b1f56d07d9df95c3c4720c0a0a")
!5600 = !DISubroutineType(types: !5601)
!5601 = !{null, !1067, !43}
!5602 = !{!5603, !5604}
!5603 = !DILocalVariable(name: "dentry", arg: 1, scope: !5598, file: !5599, line: 101, type: !1067)
!5604 = !DILocalVariable(name: "ia_valid", arg: 2, scope: !5598, file: !5599, line: 101, type: !43)
!5605 = !DILocation(line: 101, column: 58, scope: !5598)
!5606 = !DILocation(line: 101, column: 70, scope: !5598)
!5607 = !DILocation(line: 103, column: 2, scope: !5598)
!5608 = !DISubprogram(name: "make_vfsgid", scope: !1197, file: !1197, line: 121, type: !5609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5609 = !DISubroutineType(types: !5610)
!5610 = !{!1206, !1141, !442, !220}
!5611 = distinct !DISubprogram(name: "i_user_ns", scope: !173, file: !173, line: 1324, type: !5612, scopeLine: 1325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5614)
!5612 = !DISubroutineType(types: !5613)
!5613 = !{!442, !3004}
!5614 = !{!5615}
!5615 = !DILocalVariable(name: "inode", arg: 1, scope: !5611, file: !173, line: 1324, type: !3004)
!5616 = !DILocation(line: 1324, column: 68, scope: !5611)
!5617 = !DILocation(line: 1326, column: 9, scope: !5611)
!5618 = !DILocation(line: 1326, column: 16, scope: !5611)
!5619 = !DILocation(line: 1326, column: 22, scope: !5611)
!5620 = !DILocation(line: 1326, column: 2, scope: !5611)
!5621 = distinct !DISubprogram(name: "vfsuid_eq_kuid", scope: !1197, file: !1197, line: 79, type: !5622, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5624)
!5622 = !DISubroutineType(types: !5623)
!5623 = !{!350, !1196, !212}
!5624 = !{!5625, !5626}
!5625 = !DILocalVariable(name: "vfsuid", arg: 1, scope: !5621, file: !1197, line: 79, type: !1196)
!5626 = !DILocalVariable(name: "kuid", arg: 2, scope: !5621, file: !1197, line: 79, type: !212)
!5627 = !DILocation(line: 79, column: 44, scope: !5621)
!5628 = !DILocation(line: 79, column: 59, scope: !5621)
!5629 = !DILocation(line: 81, column: 9, scope: !5621)
!5630 = !DILocation(line: 81, column: 30, scope: !5621)
!5631 = !DILocation(line: 81, column: 33, scope: !5621)
!5632 = !DILocation(line: 81, column: 57, scope: !5621)
!5633 = !DILocation(line: 81, column: 54, scope: !5621)
!5634 = !DILocation(line: 0, scope: !5621)
!5635 = !DILocation(line: 81, column: 2, scope: !5621)
!5636 = distinct !DISubprogram(name: "vfsuid_eq", scope: !1197, file: !1197, line: 59, type: !5637, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5639)
!5637 = !DISubroutineType(types: !5638)
!5638 = !{!350, !1196, !1196}
!5639 = !{!5640, !5641}
!5640 = !DILocalVariable(name: "left", arg: 1, scope: !5636, file: !1197, line: 59, type: !1196)
!5641 = !DILocalVariable(name: "right", arg: 2, scope: !5636, file: !1197, line: 59, type: !1196)
!5642 = !DILocation(line: 59, column: 39, scope: !5636)
!5643 = !DILocation(line: 59, column: 54, scope: !5636)
!5644 = !DILocation(line: 61, column: 9, scope: !5636)
!5645 = !DILocation(line: 61, column: 28, scope: !5636)
!5646 = !DILocation(line: 61, column: 31, scope: !5636)
!5647 = !DILocation(line: 61, column: 53, scope: !5636)
!5648 = !DILocation(line: 61, column: 50, scope: !5636)
!5649 = !DILocation(line: 0, scope: !5636)
!5650 = !DILocation(line: 61, column: 2, scope: !5636)
!5651 = !DISubprogram(name: "capable_wrt_inode_uidgid", scope: !235, file: !235, line: 191, type: !5652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5652 = !DISubroutineType(types: !5653)
!5653 = !{!350, !1141, !3004, !43}
!5654 = !DISubprogram(name: "ns_capable", scope: !235, file: !235, line: 149, type: !5655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5655 = !DISubroutineType(types: !5656)
!5656 = !{!350, !442, !43}
!5657 = distinct !DISubprogram(name: "__vfsuid_val", scope: !1197, file: !1197, line: 28, type: !5658, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5660)
!5658 = !DISubroutineType(types: !5659)
!5659 = !{!217, !1196}
!5660 = !{!5661}
!5661 = !DILocalVariable(name: "uid", arg: 1, scope: !5657, file: !1197, line: 28, type: !1196)
!5662 = !DILocation(line: 28, column: 43, scope: !5657)
!5663 = !DILocation(line: 30, column: 13, scope: !5657)
!5664 = !DILocation(line: 30, column: 2, scope: !5657)
!5665 = distinct !DISubprogram(name: "__kuid_val", scope: !213, file: !213, line: 34, type: !5666, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5668)
!5666 = !DISubroutineType(types: !5667)
!5667 = !{!217, !212}
!5668 = !{!5669}
!5669 = !DILocalVariable(name: "uid", arg: 1, scope: !5665, file: !213, line: 34, type: !212)
!5670 = !DILocation(line: 34, column: 39, scope: !5665)
!5671 = !DILocation(line: 36, column: 13, scope: !5665)
!5672 = !DILocation(line: 36, column: 2, scope: !5665)
!5673 = distinct !DISubprogram(name: "vfsgid_eq", scope: !1197, file: !1197, line: 64, type: !5674, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5676)
!5674 = !DISubroutineType(types: !5675)
!5675 = !{!350, !1206, !1206}
!5676 = !{!5677, !5678}
!5677 = !DILocalVariable(name: "left", arg: 1, scope: !5673, file: !1197, line: 64, type: !1206)
!5678 = !DILocalVariable(name: "right", arg: 2, scope: !5673, file: !1197, line: 64, type: !1206)
!5679 = !DILocation(line: 64, column: 39, scope: !5673)
!5680 = !DILocation(line: 64, column: 54, scope: !5673)
!5681 = !DILocation(line: 66, column: 9, scope: !5673)
!5682 = !DILocation(line: 66, column: 28, scope: !5673)
!5683 = !DILocation(line: 66, column: 31, scope: !5673)
!5684 = !DILocation(line: 66, column: 53, scope: !5673)
!5685 = !DILocation(line: 66, column: 50, scope: !5673)
!5686 = !DILocation(line: 0, scope: !5673)
!5687 = !DILocation(line: 66, column: 2, scope: !5673)
!5688 = !DISubprogram(name: "vfsgid_in_group_p", scope: !1197, file: !1197, line: 116, type: !5689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5689 = !DISubroutineType(types: !5690)
!5690 = !{!43, !1206}
!5691 = distinct !DISubprogram(name: "__vfsgid_val", scope: !1197, file: !1197, line: 33, type: !5692, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5694)
!5692 = !DISubroutineType(types: !5693)
!5693 = !{!224, !1206}
!5694 = !{!5695}
!5695 = !DILocalVariable(name: "gid", arg: 1, scope: !5691, file: !1197, line: 33, type: !1206)
!5696 = !DILocation(line: 33, column: 43, scope: !5691)
!5697 = !DILocation(line: 35, column: 13, scope: !5691)
!5698 = !DILocation(line: 35, column: 2, scope: !5691)
!5699 = distinct !DISubprogram(name: "task_rlimit", scope: !3708, file: !3708, line: 759, type: !5700, scopeLine: 761, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5704)
!5700 = !DISubroutineType(types: !5701)
!5701 = !{!60, !5702, !7}
!5702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5703, size: 64)
!5703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!5704 = !{!5705, !5706}
!5705 = !DILocalVariable(name: "task", arg: 1, scope: !5699, file: !3708, line: 759, type: !5702)
!5706 = !DILocalVariable(name: "limit", arg: 2, scope: !5699, file: !3708, line: 760, type: !7)
!5707 = !DILocation(line: 759, column: 67, scope: !5699)
!5708 = !DILocation(line: 760, column: 16, scope: !5699)
!5709 = !DILocation(line: 762, column: 9, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5699, file: !3708, line: 762, column: 9)
!5711 = !DILocation(line: 762, column: 9, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5710, file: !3708, line: 762, column: 9)
!5713 = !DILocation(line: 762, column: 2, scope: !5699)
!5714 = !DISubprogram(name: "from_vfsuid", scope: !1197, file: !1197, line: 124, type: !5715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5715 = !DISubroutineType(types: !5716)
!5716 = !{!212, !1141, !442, !1196}
!5717 = !DISubprogram(name: "from_vfsgid", scope: !1197, file: !1197, line: 127, type: !5718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5718 = !DISubroutineType(types: !5719)
!5719 = !{!220, !1141, !442, !1206}
!5720 = distinct !DISubprogram(name: "rwsem_is_locked", scope: !277, file: !277, line: 70, type: !5721, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5724)
!5721 = !DISubroutineType(types: !5722)
!5722 = !{!43, !5723}
!5723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!5724 = !{!5725}
!5725 = !DILocalVariable(name: "sem", arg: 1, scope: !5720, file: !277, line: 70, type: !5723)
!5726 = !DILocation(line: 70, column: 56, scope: !5720)
!5727 = !DILocation(line: 72, column: 27, scope: !5720)
!5728 = !DILocation(line: 72, column: 32, scope: !5720)
!5729 = !DILocation(line: 72, column: 9, scope: !5720)
!5730 = !DILocation(line: 72, column: 39, scope: !5720)
!5731 = !DILocation(line: 72, column: 2, scope: !5720)
!5732 = distinct !DISubprogram(name: "atomic_long_read", scope: !5733, file: !5733, line: 3158, type: !5734, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5738)
!5733 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5734 = !DISubroutineType(types: !5735)
!5735 = !{!595, !5736}
!5736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5737, size: 64)
!5737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!5738 = !{!5739}
!5739 = !DILocalVariable(name: "v", arg: 1, scope: !5732, file: !5733, line: 3158, type: !5736)
!5740 = !DILocation(line: 3158, column: 39, scope: !5732)
!5741 = !DILocation(line: 3160, column: 25, scope: !5732)
!5742 = !DILocation(line: 3160, column: 2, scope: !5732)
!5743 = !DILocation(line: 3161, column: 30, scope: !5732)
!5744 = !DILocation(line: 3161, column: 9, scope: !5732)
!5745 = !DILocation(line: 3161, column: 2, scope: !5732)
!5746 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5747, file: !5747, line: 66, type: !5748, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5753)
!5747 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5748 = !DISubroutineType(types: !5749)
!5749 = !{null, !5750, !56}
!5750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5751, size: 64)
!5751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5752)
!5752 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5753 = !{!5754, !5755}
!5754 = !DILocalVariable(name: "v", arg: 1, scope: !5746, file: !5747, line: 66, type: !5750)
!5755 = !DILocalVariable(name: "size", arg: 2, scope: !5746, file: !5747, line: 66, type: !56)
!5756 = !DILocation(line: 66, column: 73, scope: !5746)
!5757 = !DILocation(line: 66, column: 83, scope: !5746)
!5758 = !DILocation(line: 68, column: 19, scope: !5746)
!5759 = !DILocation(line: 68, column: 22, scope: !5746)
!5760 = !DILocation(line: 68, column: 2, scope: !5746)
!5761 = !DILocation(line: 69, column: 2, scope: !5746)
!5762 = !DILocation(line: 70, column: 1, scope: !5746)
!5763 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !204, file: !204, line: 35, type: !5734, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5764)
!5764 = !{!5765}
!5765 = !DILocalVariable(name: "v", arg: 1, scope: !5763, file: !204, line: 35, type: !5736)
!5766 = !DILocation(line: 35, column: 43, scope: !5763)
!5767 = !DILocation(line: 38, column: 27, scope: !5763)
!5768 = !DILocation(line: 38, column: 9, scope: !5763)
!5769 = !DILocation(line: 38, column: 2, scope: !5763)
!5770 = distinct !DISubprogram(name: "kasan_check_read", scope: !5771, file: !5771, line: 40, type: !5772, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5774)
!5771 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5772 = !DISubroutineType(types: !5773)
!5773 = !{!350, !5750, !7}
!5774 = !{!5775, !5776}
!5775 = !DILocalVariable(name: "p", arg: 1, scope: !5770, file: !5771, line: 40, type: !5750)
!5776 = !DILocalVariable(name: "size", arg: 2, scope: !5770, file: !5771, line: 40, type: !7)
!5777 = !DILocation(line: 40, column: 58, scope: !5770)
!5778 = !DILocation(line: 40, column: 74, scope: !5770)
!5779 = !DILocation(line: 42, column: 2, scope: !5770)
!5780 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5781, file: !5781, line: 229, type: !5782, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5784)
!5781 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5782 = !DISubroutineType(types: !5783)
!5783 = !{null, !5750, !56, !43}
!5784 = !{!5785, !5786, !5787}
!5785 = !DILocalVariable(name: "ptr", arg: 1, scope: !5780, file: !5781, line: 229, type: !5750)
!5786 = !DILocalVariable(name: "size", arg: 2, scope: !5780, file: !5781, line: 229, type: !56)
!5787 = !DILocalVariable(name: "type", arg: 3, scope: !5780, file: !5781, line: 230, type: !43)
!5788 = !DILocation(line: 229, column: 60, scope: !5780)
!5789 = !DILocation(line: 229, column: 72, scope: !5780)
!5790 = !DILocation(line: 230, column: 15, scope: !5780)
!5791 = !DILocation(line: 230, column: 23, scope: !5780)
!5792 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !5793, file: !5793, line: 2554, type: !5794, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5798)
!5793 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5794 = !DISubroutineType(types: !5795)
!5795 = !{!209, !5796}
!5796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5797, size: 64)
!5797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!5798 = !{!5799}
!5799 = !DILocalVariable(name: "v", arg: 1, scope: !5792, file: !5793, line: 2554, type: !5796)
!5800 = !DILocation(line: 2554, column: 37, scope: !5792)
!5801 = !DILocation(line: 2556, column: 28, scope: !5792)
!5802 = !DILocation(line: 2556, column: 9, scope: !5792)
!5803 = !DILocation(line: 2556, column: 2, scope: !5792)
!5804 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !5805, file: !5805, line: 13, type: !5794, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5806)
!5805 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!5806 = !{!5807}
!5807 = !DILocalVariable(name: "v", arg: 1, scope: !5804, file: !5805, line: 13, type: !5796)
!5808 = !DILocation(line: 13, column: 65, scope: !5804)
!5809 = !DILocation(line: 15, column: 9, scope: !5804)
!5810 = !DILocation(line: 15, column: 2, scope: !5804)
!5811 = distinct !DISubprogram(name: "uid_valid", scope: !213, file: !213, line: 111, type: !5812, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5814)
!5812 = !DISubroutineType(types: !5813)
!5813 = !{!350, !212}
!5814 = !{!5815}
!5815 = !DILocalVariable(name: "uid", arg: 1, scope: !5811, file: !213, line: 111, type: !212)
!5816 = !DILocation(line: 111, column: 37, scope: !5811)
!5817 = !DILocation(line: 113, column: 9, scope: !5811)
!5818 = !DILocation(line: 113, column: 25, scope: !5811)
!5819 = !DILocation(line: 113, column: 2, scope: !5811)
!5820 = distinct !DISubprogram(name: "gid_valid", scope: !213, file: !213, line: 116, type: !5821, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5823)
!5821 = !DISubroutineType(types: !5822)
!5822 = !{!350, !220}
!5823 = !{!5824}
!5824 = !DILocalVariable(name: "gid", arg: 1, scope: !5820, file: !213, line: 116, type: !220)
!5825 = !DILocation(line: 116, column: 37, scope: !5820)
!5826 = !DILocation(line: 118, column: 9, scope: !5820)
!5827 = !DILocation(line: 118, column: 25, scope: !5820)
!5828 = !DILocation(line: 118, column: 2, scope: !5820)
!5829 = distinct !DISubprogram(name: "__kgid_val", scope: !213, file: !213, line: 39, type: !5830, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5832)
!5830 = !DISubroutineType(types: !5831)
!5831 = !{!224, !220}
!5832 = !{!5833}
!5833 = !DILocalVariable(name: "gid", arg: 1, scope: !5829, file: !213, line: 39, type: !220)
!5834 = !DILocation(line: 39, column: 39, scope: !5829)
!5835 = !DILocation(line: 41, column: 13, scope: !5829)
!5836 = !DILocation(line: 41, column: 2, scope: !5829)
!5837 = !DISubprogram(name: "make_vfsuid", scope: !1197, file: !1197, line: 118, type: !5838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5838 = !DISubroutineType(types: !5839)
!5839 = !{!1196, !1141, !442, !212}
!5840 = distinct !DISubprogram(name: "break_deleg", scope: !3170, file: !3170, line: 364, type: !5841, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5843)
!5841 = !DISubroutineType(types: !5842)
!5842 = !{!43, !1102, !7}
!5843 = !{!5844, !5845}
!5844 = !DILocalVariable(name: "inode", arg: 1, scope: !5840, file: !3170, line: 364, type: !1102)
!5845 = !DILocalVariable(name: "mode", arg: 2, scope: !5840, file: !3170, line: 364, type: !7)
!5846 = !DILocation(line: 364, column: 45, scope: !5840)
!5847 = !DILocation(line: 364, column: 65, scope: !5840)
!5848 = !DILocation(line: 372, column: 2, scope: !5840)
!5849 = !DILocation(line: 372, column: 2, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5840, file: !3170, line: 372, column: 2)
!5851 = !DILocation(line: 372, column: 2, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5850, file: !3170, line: 372, column: 2)
!5853 = !{i64 2154271826}
!5854 = !DILocation(line: 373, column: 6, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5840, file: !3170, line: 373, column: 6)
!5856 = !DILocation(line: 373, column: 13, scope: !5855)
!5857 = !DILocation(line: 373, column: 21, scope: !5855)
!5858 = !DILocation(line: 373, column: 45, scope: !5855)
!5859 = !DILocation(line: 373, column: 52, scope: !5855)
!5860 = !DILocation(line: 373, column: 61, scope: !5855)
!5861 = !DILocation(line: 373, column: 25, scope: !5855)
!5862 = !DILocation(line: 373, column: 6, scope: !5840)
!5863 = !DILocation(line: 374, column: 24, scope: !5855)
!5864 = !DILocation(line: 374, column: 31, scope: !5855)
!5865 = !DILocation(line: 374, column: 10, scope: !5855)
!5866 = !DILocation(line: 374, column: 3, scope: !5855)
!5867 = !DILocation(line: 375, column: 2, scope: !5840)
!5868 = !DILocation(line: 376, column: 1, scope: !5840)
!5869 = !DISubprogram(name: "ihold", scope: !173, file: !173, line: 2458, type: !2541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5870 = distinct !DISubprogram(name: "list_empty_careful", scope: !5871, file: !5871, line: 407, type: !5872, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5876)
!5871 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5872 = !DISubroutineType(types: !5873)
!5873 = !{!43, !5874}
!5874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5875, size: 64)
!5875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!5876 = !{!5877, !5878, !5879}
!5877 = !DILocalVariable(name: "head", arg: 1, scope: !5870, file: !5871, line: 407, type: !5874)
!5878 = !DILocalVariable(name: "next", scope: !5870, file: !5871, line: 409, type: !121)
!5879 = !DILocalVariable(name: "___p1", scope: !5880, file: !5871, line: 409, type: !5881)
!5880 = distinct !DILexicalBlock(scope: !5870, file: !5871, line: 409, column: 27)
!5881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!5882 = !DILocation(line: 407, column: 62, scope: !5870)
!5883 = !DILocation(line: 409, column: 2, scope: !5870)
!5884 = !DILocation(line: 409, column: 20, scope: !5870)
!5885 = !DILocation(line: 409, column: 27, scope: !5880)
!5886 = !DILocation(line: 409, column: 27, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5880, file: !5871, line: 409, column: 27)
!5888 = !DILocation(line: 409, column: 27, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5887, file: !5871, line: 409, column: 27)
!5890 = !DILocation(line: 409, column: 27, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5880, file: !5871, line: 409, column: 27)
!5892 = !{i64 2149646539}
!5893 = !DILocation(line: 409, column: 27, scope: !5870)
!5894 = !DILocation(line: 410, column: 22, scope: !5870)
!5895 = !DILocation(line: 410, column: 28, scope: !5870)
!5896 = !DILocation(line: 410, column: 9, scope: !5870)
!5897 = !DILocation(line: 410, column: 34, scope: !5870)
!5898 = !DILocation(line: 410, column: 38, scope: !5870)
!5899 = !DILocation(line: 410, column: 46, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5870, file: !5871, line: 410, column: 46)
!5901 = !DILocation(line: 410, column: 46, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5900, file: !5871, line: 410, column: 46)
!5903 = !DILocation(line: 410, column: 43, scope: !5870)
!5904 = !DILocation(line: 0, scope: !5870)
!5905 = !DILocation(line: 411, column: 1, scope: !5870)
!5906 = !DILocation(line: 410, column: 2, scope: !5870)
!5907 = !DISubprogram(name: "__break_lease", scope: !3170, file: !3170, line: 168, type: !5908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5908 = !DISubroutineType(types: !5909)
!5909 = !{!43, !1102, !7, !7}
!5910 = distinct !DISubprogram(name: "list_is_head", scope: !5871, file: !5871, line: 362, type: !5911, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5913)
!5911 = !DISubroutineType(types: !5912)
!5912 = !{!43, !5874, !5874}
!5913 = !{!5914, !5915}
!5914 = !DILocalVariable(name: "list", arg: 1, scope: !5910, file: !5871, line: 362, type: !5874)
!5915 = !DILocalVariable(name: "head", arg: 2, scope: !5910, file: !5871, line: 362, type: !5874)
!5916 = !DILocation(line: 362, column: 56, scope: !5910)
!5917 = !DILocation(line: 362, column: 86, scope: !5910)
!5918 = !DILocation(line: 364, column: 9, scope: !5910)
!5919 = !DILocation(line: 364, column: 17, scope: !5910)
!5920 = !DILocation(line: 364, column: 14, scope: !5910)
!5921 = !DILocation(line: 364, column: 2, scope: !5910)
!5922 = distinct !DISubprogram(name: "fsnotify_dentry", scope: !5527, file: !5527, line: 87, type: !5923, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5925)
!5923 = !DISubroutineType(types: !5924)
!5924 = !{null, !1067, !307}
!5925 = !{!5926, !5927}
!5926 = !DILocalVariable(name: "dentry", arg: 1, scope: !5922, file: !5527, line: 87, type: !1067)
!5927 = !DILocalVariable(name: "mask", arg: 2, scope: !5922, file: !5527, line: 87, type: !307)
!5928 = !DILocation(line: 87, column: 51, scope: !5922)
!5929 = !DILocation(line: 87, column: 65, scope: !5922)
!5930 = !DILocation(line: 89, column: 18, scope: !5922)
!5931 = !DILocation(line: 89, column: 26, scope: !5922)
!5932 = !DILocation(line: 89, column: 32, scope: !5922)
!5933 = !DILocation(line: 89, column: 2, scope: !5922)
!5934 = !DILocation(line: 90, column: 1, scope: !5922)
!5935 = distinct !DISubprogram(name: "fsnotify_parent", scope: !5527, file: !5527, line: 57, type: !5936, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5938)
!5936 = !DISubroutineType(types: !5937)
!5937 = !{!43, !1067, !307, !2029, !43}
!5938 = !{!5939, !5940, !5941, !5942, !5943, !5944}
!5939 = !DILocalVariable(name: "dentry", arg: 1, scope: !5935, file: !5527, line: 57, type: !1067)
!5940 = !DILocalVariable(name: "mask", arg: 2, scope: !5935, file: !5527, line: 57, type: !307)
!5941 = !DILocalVariable(name: "data", arg: 3, scope: !5935, file: !5527, line: 58, type: !2029)
!5942 = !DILocalVariable(name: "data_type", arg: 4, scope: !5935, file: !5527, line: 58, type: !43)
!5943 = !DILocalVariable(name: "inode", scope: !5935, file: !5527, line: 60, type: !1102)
!5944 = !DILabel(scope: !5935, name: "notify_child", file: !5527, line: 79)
!5945 = !DILocation(line: 57, column: 50, scope: !5935)
!5946 = !DILocation(line: 57, column: 64, scope: !5935)
!5947 = !DILocation(line: 58, column: 19, scope: !5935)
!5948 = !DILocation(line: 58, column: 29, scope: !5935)
!5949 = !DILocation(line: 60, column: 2, scope: !5935)
!5950 = !DILocation(line: 60, column: 16, scope: !5935)
!5951 = !DILocation(line: 60, column: 32, scope: !5935)
!5952 = !DILocation(line: 60, column: 24, scope: !5935)
!5953 = !DILocation(line: 62, column: 24, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5935, file: !5527, line: 62, column: 6)
!5955 = !DILocation(line: 62, column: 31, scope: !5954)
!5956 = !DILocation(line: 62, column: 37, scope: !5954)
!5957 = !DILocation(line: 62, column: 6, scope: !5954)
!5958 = !DILocation(line: 62, column: 60, scope: !5954)
!5959 = !DILocation(line: 62, column: 6, scope: !5935)
!5960 = !DILocation(line: 63, column: 3, scope: !5954)
!5961 = !DILocation(line: 65, column: 6, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5935, file: !5527, line: 65, column: 6)
!5963 = !DILocation(line: 65, column: 6, scope: !5935)
!5964 = !DILocation(line: 66, column: 8, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5962, file: !5527, line: 65, column: 30)
!5966 = !DILocation(line: 69, column: 9, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5965, file: !5527, line: 69, column: 7)
!5968 = !DILocation(line: 69, column: 17, scope: !5967)
!5969 = !DILocation(line: 69, column: 25, scope: !5967)
!5970 = !DILocation(line: 69, column: 7, scope: !5965)
!5971 = !DILocation(line: 70, column: 4, scope: !5967)
!5972 = !DILocation(line: 71, column: 2, scope: !5965)
!5973 = !DILocation(line: 74, column: 6, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5935, file: !5527, line: 74, column: 6)
!5975 = !DILocation(line: 74, column: 6, scope: !5935)
!5976 = !DILocation(line: 75, column: 3, scope: !5974)
!5977 = !DILocation(line: 77, column: 27, scope: !5935)
!5978 = !DILocation(line: 77, column: 35, scope: !5935)
!5979 = !DILocation(line: 77, column: 41, scope: !5935)
!5980 = !DILocation(line: 77, column: 47, scope: !5935)
!5981 = !DILocation(line: 77, column: 9, scope: !5935)
!5982 = !DILocation(line: 77, column: 2, scope: !5935)
!5983 = !DILocation(line: 79, column: 1, scope: !5935)
!5984 = !DILocation(line: 80, column: 18, scope: !5935)
!5985 = !DILocation(line: 80, column: 24, scope: !5935)
!5986 = !DILocation(line: 80, column: 30, scope: !5935)
!5987 = !DILocation(line: 80, column: 53, scope: !5935)
!5988 = !DILocation(line: 80, column: 9, scope: !5935)
!5989 = !DILocation(line: 80, column: 2, scope: !5935)
!5990 = !DILocation(line: 81, column: 1, scope: !5935)
!5991 = !DISubprogram(name: "__fsnotify_parent", scope: !189, file: !189, line: 544, type: !5936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5992 = !DISubprogram(name: "fsnotify", scope: !189, file: !189, line: 541, type: !5993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5993 = !DISubroutineType(types: !5994)
!5994 = !{!43, !307, !2029, !43, !1102, !2968, !1102, !306}
