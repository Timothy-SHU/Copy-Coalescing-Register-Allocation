; ModuleID = 'fs/ext4/fsync.c'
source_filename = "fs/ext4/fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22, [16 x i8] }
%struct.anon.22 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.23 }
%struct.atomic_t = type { i32 }
%union.anon.23 = type { i64 }
%struct.static_call_key = type { ptr, %union.anon.24 }
%union.anon.24 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.file = type { %union.anon.13, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.16, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.17, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.18, ptr, %struct.address_space, %struct.list_head, %union.anon.19, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.16 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.17 = type { %struct.callback_head }
%union.anon.18 = type { ptr }
%union.anon.19 = type { ptr }
%struct.ext4_sb_info = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i64, ptr, ptr, ptr, i32, i32, i64, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i64, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i64, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [5 x %struct.atomic_t], %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [5 x %struct.atomic64_t], [5 x %struct.atomic64_t], [5 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i64, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i64, ptr, i32, %struct.shrinker, %struct.list_head, i64, %struct.ext4_es_stats, ptr, ptr, [40 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, %struct.ext4_fc_replay_state, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.ext4_es_stats = type { i64, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.fscrypt_dummy_policy = type {}
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ext4_fc_stats = type { [10 x i32], i64, i64, i64, i64, i64, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i64, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i16, i16, [3 x %struct.percpu_rw_semaphore] }
%struct.uuid_t = type { [16 x i8] }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.ext4_inode_info = type { [15 x i32], i32, i64, i32, i32, i64, %struct.rw_semaphore, %union.anon.31, %struct.list_head, %struct.list_head, i32, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, i64, %struct.rw_semaphore, %struct.inode, ptr, %struct.spinlock, %struct.timespec64, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, %struct.ext4_es_tree, %struct.rwlock_t, %struct.list_head, i32, i32, i32, i32, i32, %struct.ext4_pending_tree, i16, i16, i16, i64, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.spinlock, i32, i32, [3 x ptr], i32, %struct.kprojid_t }
%union.anon.31 = type { %struct.list_head }
%struct.ext4_es_tree = type { %struct.rb_root, ptr }
%struct.ext4_pending_tree = type { %struct.rb_root }
%struct.kprojid_t = type { i32 }
%struct.journal_s = type { i64, i64, i32, %struct.mutex, ptr, ptr, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, i64, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.transaction_stats_s = type { i64, i64, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i64, i64, i64, i64, i64, i64, i32, i32, i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, ptr, ptr }
%struct.restart_block = type { i64, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.29, %struct.list_head, %struct.list_head, %union.anon.30 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.25, ptr }
%union.anon.25 = type { i64 }
%struct.lockref = type { %union.anon.27 }
%union.anon.27 = type { i64 }
%union.anon.29 = type { %struct.list_head }
%union.anon.30 = type { %struct.hlist_node }

@.str = private unnamed_addr constant [44 x i8] c"\010Assertion failure in %s() at %s:%d: '%s'\0A\00", align 1, !dbg !0
@__func__.ext4_sync_file = private unnamed_addr constant [15 x i8] c"ext4_sync_file\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [16 x i8] c"fs/ext4/fsync.c\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [38 x i8] c"ext4_journal_current_handle() == NULL\00", align 1, !dbg !18
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__tracepoint_ext4_sync_file_enter = external dso_local global %struct.tracepoint, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"include/trace/events/ext4.h\00", align 1, !dbg !23
@trace_ext4_sync_file_enter.__UNIQUE_ID___addressable___SCK__tp_func_ext4_sync_file_enter626 = internal global ptr @__SCK__tp_func_ext4_sync_file_enter, section ".discard.addressable", align 8, !dbg !29
@__SCK__tp_func_ext4_sync_file_enter = external dso_local global %struct.static_call_key, align 8
@trace_ext4_sync_file_enter.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace627 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !5556
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__tracepoint_ext4_sync_file_exit = external dso_local global %struct.tracepoint, align 8
@trace_ext4_sync_file_exit.__UNIQUE_ID___addressable___SCK__tp_func_ext4_sync_file_exit634 = internal global ptr @__SCK__tp_func_ext4_sync_file_exit, section ".discard.addressable", align 8, !dbg !5558
@__SCK__tp_func_ext4_sync_file_exit = external dso_local global %struct.static_call_key, align 8
@trace_ext4_sync_file_exit.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace635 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !5585
@llvm.compiler.used = appending global [4 x ptr] [ptr @trace_ext4_sync_file_enter.__UNIQUE_ID___addressable___SCK__tp_func_ext4_sync_file_enter626, ptr @trace_ext4_sync_file_enter.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace627, ptr @trace_ext4_sync_file_exit.__UNIQUE_ID___addressable___SCK__tp_func_ext4_sync_file_exit634, ptr @trace_ext4_sync_file_exit.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace635], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ext4_sync_file(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 16 !dbg !5621 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %datasync.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %err = alloca i32, align 4
  %needs_barrier = alloca i8, align 1
  %inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5623, metadata !DIExpression()), !dbg !5633
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5624, metadata !DIExpression()), !dbg !5634
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !5625, metadata !DIExpression()), !dbg !5635
  store i32 %datasync, ptr %datasync.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %datasync.addr, metadata !5626, metadata !DIExpression()), !dbg !5636
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !5637
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5627, metadata !DIExpression()), !dbg !5638
  store i32 0, ptr %ret, align 4, !dbg !5638
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !5637
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5628, metadata !DIExpression()), !dbg !5639
  call void @llvm.lifetime.start.p0(i64 1, ptr %needs_barrier) #12, !dbg !5640
  call void @llvm.dbg.declare(metadata ptr %needs_barrier, metadata !5629, metadata !DIExpression()), !dbg !5641
  store i8 0, ptr %needs_barrier, align 1, !dbg !5641
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #12, !dbg !5642
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5630, metadata !DIExpression()), !dbg !5643
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5644
  %f_mapping = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17, !dbg !5645
  %1 = load ptr, ptr %f_mapping, align 8, !dbg !5645
  %host = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 0, !dbg !5646
  %2 = load ptr, ptr %host, align 8, !dbg !5646
  store ptr %2, ptr %inode, align 8, !dbg !5643
  %3 = load ptr, ptr %inode, align 8, !dbg !5647
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9, !dbg !5647
  %4 = load ptr, ptr %i_sb, align 8, !dbg !5647
  %call = call i32 @ext4_forced_shutdown(ptr noundef %4) #13, !dbg !5647
  %tobool = icmp ne i32 %call, 0, !dbg !5647
  %lnot = xor i1 %tobool, true, !dbg !5647
  %lnot1 = xor i1 %lnot, true, !dbg !5647
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5647
  %conv = sext i32 %lnot.ext to i64, !dbg !5647
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5647
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5647
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5649

if.then:                                          ; preds = %entry
  store i32 -5, ptr %retval, align 4, !dbg !5650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5650

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5651

do.body:                                          ; preds = %if.end
  %call3 = call ptr @ext4_journal_current_handle() #13, !dbg !5652
  %cmp = icmp eq ptr %call3, null, !dbg !5652
  %lnot5 = xor i1 %cmp, true, !dbg !5652
  %lnot7 = xor i1 %lnot5, true, !dbg !5652
  %lnot9 = xor i1 %lnot7, true, !dbg !5652
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !5652
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !5652
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !5652
  %tobool13 = icmp ne i64 %expval12, 0, !dbg !5652
  br i1 %tobool13, label %if.then14, label %if.end26, !dbg !5655

if.then14:                                        ; preds = %do.body
  br label %do.body15, !dbg !5656

do.body15:                                        ; preds = %if.then14
  br label %do.cond, !dbg !5659

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !5659

do.end:                                           ; preds = %do.cond
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef @__func__.ext4_sync_file, ptr noundef @.str.1, i32 noundef 138, ptr noundef @.str.2) #14, !dbg !5656
  store i32 %call16, ptr %tmp, align 4, !dbg !5659
  %5 = load i32, ptr %tmp, align 4, !dbg !5656
  br label %do.body17, !dbg !5661

do.body17:                                        ; preds = %do.end
  br label %do.body18, !dbg !5662

do.body18:                                        ; preds = %do.body17
  br label %do.cond19, !dbg !5664

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !5664

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !5662

do.body21:                                        ; preds = %do.end20
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 138, i32 0, i64 12) #12, !dbg !5666, !srcloc !5668
  br label %do.cond22, !dbg !5666

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !5666

do.end23:                                         ; preds = %do.cond22
  unreachable, !dbg !5662

do.cond24:                                        ; No predecessors!
  br label %do.end25, !dbg !5662

do.end25:                                         ; preds = %do.cond24
  br label %if.end26, !dbg !5661

if.end26:                                         ; preds = %do.end25, %do.body
  br label %do.cond27, !dbg !5655

do.cond27:                                        ; preds = %if.end26
  br label %do.end28, !dbg !5655

do.end28:                                         ; preds = %do.cond27
  %6 = load ptr, ptr %file.addr, align 8, !dbg !5669
  %7 = load i32, ptr %datasync.addr, align 4, !dbg !5670
  call void @trace_ext4_sync_file_enter(ptr noundef %6, i32 noundef %7) #13, !dbg !5671
  %8 = load ptr, ptr %inode, align 8, !dbg !5672
  %i_sb29 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 9, !dbg !5674
  %9 = load ptr, ptr %i_sb29, align 8, !dbg !5674
  %call30 = call zeroext i1 @sb_rdonly(ptr noundef %9) #13, !dbg !5675
  br i1 %call30, label %if.then31, label %if.end49, !dbg !5676

if.then31:                                        ; preds = %do.end28
  br label %do.body32, !dbg !5677

do.body32:                                        ; preds = %if.then31
  br label %do.body33, !dbg !5679

do.body33:                                        ; preds = %do.body32
  br label %do.cond34, !dbg !5681

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !5681

do.end35:                                         ; preds = %do.cond34
  br label %do.body36, !dbg !5679

do.body36:                                        ; preds = %do.end35
  br label %do.body37, !dbg !5683

do.body37:                                        ; preds = %do.body36
  br label %do.cond38, !dbg !5685

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !5685

do.end39:                                         ; preds = %do.cond38
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5683, !srcloc !5687
  br label %do.cond40, !dbg !5683

do.cond40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !5683

do.end41:                                         ; preds = %do.cond40
  br label %do.cond42, !dbg !5679

do.cond42:                                        ; preds = %do.end41
  br label %do.end43, !dbg !5679

do.end43:                                         ; preds = %do.cond42
  %10 = load ptr, ptr %inode, align 8, !dbg !5688
  %i_sb44 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 9, !dbg !5690
  %11 = load ptr, ptr %i_sb44, align 8, !dbg !5690
  %call45 = call i32 @ext4_forced_shutdown(ptr noundef %11) #13, !dbg !5691
  %tobool46 = icmp ne i32 %call45, 0, !dbg !5691
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !5692

if.then47:                                        ; preds = %do.end43
  store i32 -30, ptr %ret, align 4, !dbg !5693
  br label %if.end48, !dbg !5694

if.end48:                                         ; preds = %if.then47, %do.end43
  br label %out, !dbg !5695

if.end49:                                         ; preds = %do.end28
  %12 = load ptr, ptr %inode, align 8, !dbg !5696
  %i_sb50 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 9, !dbg !5698
  %13 = load ptr, ptr %i_sb50, align 8, !dbg !5698
  %call51 = call ptr @EXT4_SB(ptr noundef %13) #13, !dbg !5699
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %call51, i32 0, i32 48, !dbg !5700
  %14 = load ptr, ptr %s_journal, align 8, !dbg !5700
  %tobool52 = icmp ne ptr %14, null, !dbg !5699
  br i1 %tobool52, label %if.end58, label %if.then53, !dbg !5701

if.then53:                                        ; preds = %if.end49
  %15 = load ptr, ptr %file.addr, align 8, !dbg !5702
  %16 = load i64, ptr %start.addr, align 8, !dbg !5704
  %17 = load i64, ptr %end.addr, align 8, !dbg !5705
  %18 = load i32, ptr %datasync.addr, align 4, !dbg !5706
  %call54 = call i32 @ext4_fsync_nojournal(ptr noundef %15, i64 noundef %16, i64 noundef %17, i32 noundef %18, ptr noundef %needs_barrier) #13, !dbg !5707
  store i32 %call54, ptr %ret, align 4, !dbg !5708
  %19 = load i8, ptr %needs_barrier, align 1, !dbg !5709, !range !5711, !noundef !1093
  %tobool55 = trunc i8 %19 to i1, !dbg !5709
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !5712

if.then56:                                        ; preds = %if.then53
  br label %issue_flush, !dbg !5713

if.end57:                                         ; preds = %if.then53
  br label %out, !dbg !5714

if.end58:                                         ; preds = %if.end49
  %20 = load ptr, ptr %file.addr, align 8, !dbg !5715
  %21 = load i64, ptr %start.addr, align 8, !dbg !5716
  %22 = load i64, ptr %end.addr, align 8, !dbg !5717
  %call59 = call i32 @file_write_and_wait_range(ptr noundef %20, i64 noundef %21, i64 noundef %22) #13, !dbg !5718
  store i32 %call59, ptr %ret, align 4, !dbg !5719
  %23 = load i32, ptr %ret, align 4, !dbg !5720
  %tobool60 = icmp ne i32 %23, 0, !dbg !5720
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !5722

if.then61:                                        ; preds = %if.end58
  br label %out, !dbg !5723

if.end62:                                         ; preds = %if.end58
  %24 = load ptr, ptr %inode, align 8, !dbg !5724
  %25 = load i32, ptr %datasync.addr, align 4, !dbg !5725
  %tobool63 = icmp ne i32 %25, 0, !dbg !5725
  %call64 = call i32 @ext4_fsync_journal(ptr noundef %24, i1 noundef zeroext %tobool63, ptr noundef %needs_barrier) #13, !dbg !5726
  store i32 %call64, ptr %ret, align 4, !dbg !5727
  br label %issue_flush, !dbg !5728

issue_flush:                                      ; preds = %if.end62, %if.then56
  call void @llvm.dbg.label(metadata !5631), !dbg !5729
  %26 = load i8, ptr %needs_barrier, align 1, !dbg !5730, !range !5711, !noundef !1093
  %tobool65 = trunc i8 %26 to i1, !dbg !5730
  br i1 %tobool65, label %if.then66, label %if.end72, !dbg !5732

if.then66:                                        ; preds = %issue_flush
  %27 = load ptr, ptr %inode, align 8, !dbg !5733
  %i_sb67 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 9, !dbg !5735
  %28 = load ptr, ptr %i_sb67, align 8, !dbg !5735
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 21, !dbg !5736
  %29 = load ptr, ptr %s_bdev, align 8, !dbg !5736
  %call68 = call i32 @blkdev_issue_flush(ptr noundef %29) #13, !dbg !5737
  store i32 %call68, ptr %err, align 4, !dbg !5738
  %30 = load i32, ptr %ret, align 4, !dbg !5739
  %tobool69 = icmp ne i32 %30, 0, !dbg !5739
  br i1 %tobool69, label %if.end71, label %if.then70, !dbg !5741

if.then70:                                        ; preds = %if.then66
  %31 = load i32, ptr %err, align 4, !dbg !5742
  store i32 %31, ptr %ret, align 4, !dbg !5743
  br label %if.end71, !dbg !5744

if.end71:                                         ; preds = %if.then70, %if.then66
  br label %if.end72, !dbg !5745

if.end72:                                         ; preds = %if.end71, %issue_flush
  br label %out, !dbg !5730

out:                                              ; preds = %if.end72, %if.then61, %if.end57, %if.end48
  call void @llvm.dbg.label(metadata !5632), !dbg !5746
  %32 = load ptr, ptr %file.addr, align 8, !dbg !5747
  %call73 = call i32 @file_check_and_advance_wb_err(ptr noundef %32) #13, !dbg !5748
  store i32 %call73, ptr %err, align 4, !dbg !5749
  %33 = load i32, ptr %ret, align 4, !dbg !5750
  %cmp74 = icmp eq i32 %33, 0, !dbg !5752
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !5753

if.then76:                                        ; preds = %out
  %34 = load i32, ptr %err, align 4, !dbg !5754
  store i32 %34, ptr %ret, align 4, !dbg !5755
  br label %if.end77, !dbg !5756

if.end77:                                         ; preds = %if.then76, %out
  %35 = load ptr, ptr %inode, align 8, !dbg !5757
  %36 = load i32, ptr %ret, align 4, !dbg !5758
  call void @trace_ext4_sync_file_exit(ptr noundef %35, i32 noundef %36) #13, !dbg !5759
  %37 = load i32, ptr %ret, align 4, !dbg !5760
  store i32 %37, ptr %retval, align 4, !dbg !5761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5761

cleanup:                                          ; preds = %if.end77, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #12, !dbg !5762
  call void @llvm.lifetime.end.p0(i64 1, ptr %needs_barrier) #12, !dbg !5762
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !5762
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !5762
  %38 = load i32, ptr %retval, align 4, !dbg !5762
  ret i32 %38, !dbg !5762
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ext4_forced_shutdown(ptr noundef %sb) #3 align 16 !dbg !5763 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5765, metadata !DIExpression()), !dbg !5766
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5767
  %call = call ptr @EXT4_SB(ptr noundef %0) #13, !dbg !5767
  %s_ext4_flags = getelementptr inbounds %struct.ext4_sb_info, ptr %call, i32 0, i32 49, !dbg !5767
  %call1 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %s_ext4_flags) #13, !dbg !5767
  %conv = zext i1 %call1 to i32, !dbg !5767
  ret i32 %conv, !dbg !5768
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ext4_journal_current_handle() #3 align 16 !dbg !5769 {
entry:
  %call = call ptr @journal_current_handle() #13, !dbg !5797
  ret ptr %call, !dbg !5798
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5799 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_ext4_sync_file_enter(ptr noundef %file, i32 noundef %datasync) #3 align 16 !dbg !31 {
entry:
  %file.addr = alloca ptr, align 8
  %datasync.addr = alloca i32, align 4
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
  %__UNIQUE_ID_rcu624 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5588, metadata !DIExpression()), !dbg !5803
  store i32 %datasync, ptr %datasync.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %datasync.addr, metadata !5589, metadata !DIExpression()), !dbg !5803
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_sync_file_enter, i32 0, i32 1)) #13, !dbg !5804
  br i1 %call, label %if.then, label %if.end68, !dbg !5803

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5804

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #12, !dbg !5805
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !5590, metadata !DIExpression()), !dbg !5805
  store i32 0, ptr %__idx, align 4, !dbg !5805
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !5806
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5593, metadata !DIExpression()), !dbg !5806
  br label %do.body1, !dbg !5806

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5807
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5596, metadata !DIExpression()), !dbg !5807
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5807
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5807
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5806
  br label %do.cond, !dbg !5807

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5807

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !5808
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5598, metadata !DIExpression()), !dbg !5808
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !5808, !srcloc !5809
  store i32 %1, ptr %pfo_val__, align 4, !dbg !5808
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !5808
  %conv = zext i32 %2 to i64, !dbg !5808
  %conv2 = trunc i64 %conv to i32, !dbg !5808
  store i32 %conv2, ptr %tmp, align 4, !dbg !5808
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !5806
  %3 = load i32, ptr %tmp, align 4, !dbg !5808
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !5806
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !5806
  store i32 %4, ptr %tmp3, align 4, !dbg !5806
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !5810
  %5 = load i32, ptr %tmp3, align 4, !dbg !5806
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #13, !dbg !5810
  br i1 %call4, label %if.end, label %if.then5, !dbg !5805

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5810

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !5811
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5600, metadata !DIExpression()), !dbg !5811
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !5811
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5812
  %tobool = icmp ne i32 %6, 0, !dbg !5812
  %lnot = xor i1 %tobool, true, !dbg !5812
  %lnot6 = xor i1 %lnot, true, !dbg !5812
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5812
  %conv7 = sext i32 %lnot.ext to i64, !dbg !5812
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !5812
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5812
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !5811

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !5812

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !5813
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5603, metadata !DIExpression()), !dbg !5813
  store i32 2307, ptr %__flags, align 4, !dbg !5813
  br label %do.body11, !dbg !5813

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !5814

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5814

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5813

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !5816
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 959, i32 %7, i64 12) #12, !dbg !5816, !srcloc !5818
  br label %do.cond15, !dbg !5816

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5816

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !5813

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !5819

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5819

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !5812
  br label %do.cond20, !dbg !5813

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5813

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !5813

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !5811
  %tobool24 = icmp ne i32 %8, 0, !dbg !5811
  %lnot25 = xor i1 %tobool24, true, !dbg !5811
  %lnot27 = xor i1 %lnot25, true, !dbg !5811
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5811
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !5811
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !5811
  store i64 %expval30, ptr %tmp23, align 8, !dbg !5812
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !5821
  %9 = load i64, ptr %tmp23, align 8, !dbg !5811
  %tobool31 = icmp ne i64 %9, 0, !dbg !5821
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5805

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5821

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !5805

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !5822
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5822, !srcloc !5824
  br label %do.cond35, !dbg !5822

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5822

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !5805

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #12, !dbg !5825
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !5606, metadata !DIExpression()), !dbg !5825
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #12, !dbg !5825
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !5608, metadata !DIExpression()), !dbg !5825
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu624) #12, !dbg !5826
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu624, metadata !5609, metadata !DIExpression()), !dbg !5826
  br label %do.body38, !dbg !5827

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !5829

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5829

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_sync_file_enter, i32 0, i32 8), align 8, !dbg !5827
  store ptr %10, ptr %tmp41, align 8, !dbg !5829
  %11 = load ptr, ptr %tmp41, align 8, !dbg !5827
  store ptr %11, ptr %__UNIQUE_ID_rcu624, align 8, !dbg !5826
  %12 = load ptr, ptr %__UNIQUE_ID_rcu624, align 8, !dbg !5826
  store ptr %12, ptr %tmp42, align 8, !dbg !5826
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu624) #12, !dbg !5825
  %13 = load ptr, ptr %tmp42, align 8, !dbg !5826
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !5825
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !5831
  %tobool43 = icmp ne ptr %14, null, !dbg !5831
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !5825

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !5833
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !5833
  %16 = load ptr, ptr %data, align 8, !dbg !5833
  store ptr %16, ptr %__data, align 8, !dbg !5833
  store ptr @__SCT__tp_func_ext4_sync_file_enter, ptr %tmp45, align 8, !dbg !5835
  %17 = load ptr, ptr %tmp45, align 8, !dbg !5835
  %18 = load ptr, ptr %__data, align 8, !dbg !5833
  %19 = load ptr, ptr %file.addr, align 8, !dbg !5833
  %20 = load i32, ptr %datasync.addr, align 4, !dbg !5833
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20) #13, !dbg !5833
  br label %if.end47, !dbg !5833

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #12, !dbg !5805
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #12, !dbg !5805
  br label %do.cond48, !dbg !5825

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !5825

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !5805

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5837, !srcloc !5839
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !5840
  %lnot52 = xor i1 %call51, true, !dbg !5840
  %lnot54 = xor i1 %lnot52, true, !dbg !5840
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5840
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !5840
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !5840
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !5840
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !5837

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !5840

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !5611), !dbg !5842
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #12, !dbg !5842, !srcloc !5844
  call void @llvm.write_register.i64(metadata !5611, i64 %22), !dbg !5842
  br label %do.cond61, !dbg !5842

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !5842

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !5842

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !5837

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !5837

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5804
  br label %cleanup, !dbg !5804

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #12, !dbg !5804
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !5805

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !5805

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !5803

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @sb_rdonly(ptr noundef %sb) #3 align 16 !dbg !5845 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5851, metadata !DIExpression()), !dbg !5852
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5853
  %s_flags = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10, !dbg !5854
  %1 = load i64, ptr %s_flags, align 16, !dbg !5854
  %and = and i64 %1, 1, !dbg !5855
  %tobool = icmp ne i64 %and, 0, !dbg !5853
  ret i1 %tobool, !dbg !5856
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @EXT4_SB(ptr noundef %sb) #3 align 16 !dbg !5857 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6277, metadata !DIExpression()), !dbg !6278
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6279
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !6280
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !6280
  ret ptr %1, !dbg !6281
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ext4_fsync_nojournal(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync, ptr noundef %needs_barrier) #0 align 16 !dbg !6282 {
entry:
  %file.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %datasync.addr = alloca i32, align 4
  %needs_barrier.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6286, metadata !DIExpression()), !dbg !6293
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6287, metadata !DIExpression()), !dbg !6294
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6288, metadata !DIExpression()), !dbg !6295
  store i32 %datasync, ptr %datasync.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %datasync.addr, metadata !6289, metadata !DIExpression()), !dbg !6296
  store ptr %needs_barrier, ptr %needs_barrier.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %needs_barrier.addr, metadata !6290, metadata !DIExpression()), !dbg !6297
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #12, !dbg !6298
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6291, metadata !DIExpression()), !dbg !6299
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6300
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !6301
  %1 = load ptr, ptr %f_inode, align 8, !dbg !6301
  store ptr %1, ptr %inode, align 8, !dbg !6299
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !6302
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6292, metadata !DIExpression()), !dbg !6303
  %2 = load ptr, ptr %file.addr, align 8, !dbg !6304
  %3 = load i64, ptr %start.addr, align 8, !dbg !6305
  %4 = load i64, ptr %end.addr, align 8, !dbg !6306
  %5 = load i32, ptr %datasync.addr, align 4, !dbg !6307
  %tobool = icmp ne i32 %5, 0, !dbg !6307
  %call = call i32 @generic_buffers_fsync_noflush(ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %tobool) #13, !dbg !6308
  store i32 %call, ptr %ret, align 4, !dbg !6309
  %6 = load i32, ptr %ret, align 4, !dbg !6310
  %tobool1 = icmp ne i32 %6, 0, !dbg !6310
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6312

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %inode, align 8, !dbg !6313
  %call2 = call i32 @ext4_sync_parent(ptr noundef %7) #13, !dbg !6314
  store i32 %call2, ptr %ret, align 4, !dbg !6315
  br label %if.end, !dbg !6316

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %inode, align 8, !dbg !6317
  %i_sb = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 9, !dbg !6317
  %9 = load ptr, ptr %i_sb, align 8, !dbg !6317
  %call3 = call ptr @EXT4_SB(ptr noundef %9) #13, !dbg !6317
  %s_mount_opt = getelementptr inbounds %struct.ext4_sb_info, ptr %call3, i32 0, i32 17, !dbg !6317
  %10 = load i32, ptr %s_mount_opt, align 8, !dbg !6317
  %and = and i32 %10, 131072, !dbg !6317
  %tobool4 = icmp ne i32 %and, 0, !dbg !6317
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !6319

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %needs_barrier.addr, align 8, !dbg !6320
  store i8 1, ptr %11, align 1, !dbg !6321
  br label %if.end6, !dbg !6322

if.end6:                                          ; preds = %if.then5, %if.end
  %12 = load i32, ptr %ret, align 4, !dbg !6323
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !6324
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #12, !dbg !6324
  ret i32 %12, !dbg !6325
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6326 dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ext4_fsync_journal(ptr noundef %inode, i1 noundef zeroext %datasync, ptr noundef %needs_barrier) #0 align 16 !dbg !6329 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %datasync.addr = alloca i8, align 1
  %needs_barrier.addr = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %journal = alloca ptr, align 8
  %commit_tid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6333, metadata !DIExpression()), !dbg !6341
  %frombool = zext i1 %datasync to i8
  store i8 %frombool, ptr %datasync.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %datasync.addr, metadata !6334, metadata !DIExpression()), !dbg !6342
  store ptr %needs_barrier, ptr %needs_barrier.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %needs_barrier.addr, metadata !6335, metadata !DIExpression()), !dbg !6343
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #12, !dbg !6344
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !6336, metadata !DIExpression()), !dbg !6345
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !6346
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6337, metadata !DIExpression()), !dbg !6346
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6346
  store ptr %0, ptr %__mptr, align 8, !dbg !6346
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6346
  %add.ptr = getelementptr i8, ptr %1, i64 -296, !dbg !6346
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6346
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !6347
  %2 = load ptr, ptr %tmp, align 8, !dbg !6346
  store ptr %2, ptr %ei, align 8, !dbg !6345
  call void @llvm.lifetime.start.p0(i64 8, ptr %journal) #12, !dbg !6348
  call void @llvm.dbg.declare(metadata ptr %journal, metadata !6339, metadata !DIExpression()), !dbg !6349
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !6350
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9, !dbg !6351
  %4 = load ptr, ptr %i_sb, align 8, !dbg !6351
  %call = call ptr @EXT4_SB(ptr noundef %4) #13, !dbg !6352
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %call, i32 0, i32 48, !dbg !6353
  %5 = load ptr, ptr %s_journal, align 8, !dbg !6353
  store ptr %5, ptr %journal, align 8, !dbg !6349
  call void @llvm.lifetime.start.p0(i64 4, ptr %commit_tid) #12, !dbg !6354
  call void @llvm.dbg.declare(metadata ptr %commit_tid, metadata !6340, metadata !DIExpression()), !dbg !6355
  %6 = load i8, ptr %datasync.addr, align 1, !dbg !6356, !range !5711, !noundef !1093
  %tobool = trunc i8 %6 to i1, !dbg !6356
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6356

cond.true:                                        ; preds = %entry
  %7 = load ptr, ptr %ei, align 8, !dbg !6357
  %i_datasync_tid = getelementptr inbounds %struct.ext4_inode_info, ptr %7, i32 0, i32 43, !dbg !6358
  %8 = load i32, ptr %i_datasync_tid, align 4, !dbg !6358
  br label %cond.end, !dbg !6356

cond.false:                                       ; preds = %entry
  %9 = load ptr, ptr %ei, align 8, !dbg !6359
  %i_sync_tid = getelementptr inbounds %struct.ext4_inode_info, ptr %9, i32 0, i32 42, !dbg !6360
  %10 = load i32, ptr %i_sync_tid, align 8, !dbg !6360
  br label %cond.end, !dbg !6356

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %10, %cond.false ], !dbg !6356
  store i32 %cond, ptr %commit_tid, align 4, !dbg !6355
  %11 = load ptr, ptr %inode.addr, align 8, !dbg !6361
  %i_mode = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 0, !dbg !6361
  %12 = load i16, ptr %i_mode, align 8, !dbg !6361
  %conv = zext i16 %12 to i32, !dbg !6361
  %and = and i32 %conv, 61440, !dbg !6361
  %cmp = icmp eq i32 %and, 32768, !dbg !6361
  br i1 %cmp, label %if.end, label %if.then, !dbg !6363

if.then:                                          ; preds = %cond.end
  %13 = load ptr, ptr %inode.addr, align 8, !dbg !6364
  %i_sb2 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 9, !dbg !6365
  %14 = load ptr, ptr %i_sb2, align 8, !dbg !6365
  %call3 = call i32 @ext4_force_commit(ptr noundef %14) #13, !dbg !6366
  store i32 %call3, ptr %retval, align 4, !dbg !6367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6367

if.end:                                           ; preds = %cond.end
  %15 = load ptr, ptr %journal, align 8, !dbg !6368
  %j_flags = getelementptr inbounds %struct.journal_s, ptr %15, i32 0, i32 0, !dbg !6370
  %16 = load i64, ptr %j_flags, align 8, !dbg !6370
  %and4 = and i64 %16, 32, !dbg !6371
  %tobool5 = icmp ne i64 %and4, 0, !dbg !6371
  br i1 %tobool5, label %land.lhs.true, label %if.end9, !dbg !6372

land.lhs.true:                                    ; preds = %if.end
  %17 = load ptr, ptr %journal, align 8, !dbg !6373
  %18 = load i32, ptr %commit_tid, align 4, !dbg !6374
  %call6 = call i32 @jbd2_trans_will_send_data_barrier(ptr noundef %17, i32 noundef %18) #13, !dbg !6375
  %tobool7 = icmp ne i32 %call6, 0, !dbg !6375
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !6376

if.then8:                                         ; preds = %land.lhs.true
  %19 = load ptr, ptr %needs_barrier.addr, align 8, !dbg !6377
  store i8 1, ptr %19, align 1, !dbg !6378
  br label %if.end9, !dbg !6379

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %if.end
  %20 = load ptr, ptr %journal, align 8, !dbg !6380
  %21 = load i32, ptr %commit_tid, align 4, !dbg !6381
  %call10 = call i32 @ext4_fc_commit(ptr noundef %20, i32 noundef %21) #13, !dbg !6382
  store i32 %call10, ptr %retval, align 4, !dbg !6383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6383

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %commit_tid) #12, !dbg !6384
  call void @llvm.lifetime.end.p0(i64 8, ptr %journal) #12, !dbg !6384
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #12, !dbg !6384
  %22 = load i32, ptr %retval, align 4, !dbg !6384
  ret i32 %22, !dbg !6384
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6385 dso_local i32 @blkdev_issue_flush(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6388 dso_local i32 @file_check_and_advance_wb_err(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_ext4_sync_file_exit(ptr noundef %inode, i32 noundef %ret) #3 align 16 !dbg !5560 {
entry:
  %inode.addr = alloca ptr, align 8
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
  %__UNIQUE_ID_rcu632 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5562, metadata !DIExpression()), !dbg !6391
  store i32 %ret, ptr %ret.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !5563, metadata !DIExpression()), !dbg !6391
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_sync_file_exit, i32 0, i32 1)) #13, !dbg !6392
  br i1 %call, label %if.then, label %if.end68, !dbg !6391

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6392

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #12, !dbg !6393
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !5564, metadata !DIExpression()), !dbg !6393
  store i32 0, ptr %__idx, align 4, !dbg !6393
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !6394
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5567, metadata !DIExpression()), !dbg !6394
  br label %do.body1, !dbg !6394

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6395
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5570, metadata !DIExpression()), !dbg !6395
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6395
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6395
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6394
  br label %do.cond, !dbg !6395

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6395

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !6396
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5572, metadata !DIExpression()), !dbg !6396
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !6396, !srcloc !6397
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6396
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6396
  %conv = zext i32 %2 to i64, !dbg !6396
  %conv2 = trunc i64 %conv to i32, !dbg !6396
  store i32 %conv2, ptr %tmp, align 4, !dbg !6396
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !6394
  %3 = load i32, ptr %tmp, align 4, !dbg !6396
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6394
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6394
  store i32 %4, ptr %tmp3, align 4, !dbg !6394
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !6398
  %5 = load i32, ptr %tmp3, align 4, !dbg !6394
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #13, !dbg !6398
  br i1 %call4, label %if.end, label %if.then5, !dbg !6393

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6398

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6399
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5574, metadata !DIExpression()), !dbg !6399
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !6399
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6400
  %tobool = icmp ne i32 %6, 0, !dbg !6400
  %lnot = xor i1 %tobool, true, !dbg !6400
  %lnot6 = xor i1 %lnot, true, !dbg !6400
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6400
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6400
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6400
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6400
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !6399

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !6400

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !6401
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5577, metadata !DIExpression()), !dbg !6401
  store i32 2307, ptr %__flags, align 4, !dbg !6401
  br label %do.body11, !dbg !6401

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6402

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6402

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6401

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !6404
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 982, i32 %7, i64 12) #12, !dbg !6404, !srcloc !6406
  br label %do.cond15, !dbg !6404

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6404

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6401

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6407

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6407

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !6400
  br label %do.cond20, !dbg !6401

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6401

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6401

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6399
  %tobool24 = icmp ne i32 %8, 0, !dbg !6399
  %lnot25 = xor i1 %tobool24, true, !dbg !6399
  %lnot27 = xor i1 %lnot25, true, !dbg !6399
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6399
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6399
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6399
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6400
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !6409
  %9 = load i64, ptr %tmp23, align 8, !dbg !6399
  %tobool31 = icmp ne i64 %9, 0, !dbg !6409
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6393

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6409

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !6393

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !6410
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !6410, !srcloc !6412
  br label %do.cond35, !dbg !6410

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6410

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6393

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #12, !dbg !6413
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !5580, metadata !DIExpression()), !dbg !6413
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #12, !dbg !6413
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !5582, metadata !DIExpression()), !dbg !6413
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu632) #12, !dbg !6414
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu632, metadata !5583, metadata !DIExpression()), !dbg !6414
  br label %do.body38, !dbg !6415

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !6417

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !6417

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_sync_file_exit, i32 0, i32 8), align 8, !dbg !6415
  store ptr %10, ptr %tmp41, align 8, !dbg !6417
  %11 = load ptr, ptr %tmp41, align 8, !dbg !6415
  store ptr %11, ptr %__UNIQUE_ID_rcu632, align 8, !dbg !6414
  %12 = load ptr, ptr %__UNIQUE_ID_rcu632, align 8, !dbg !6414
  store ptr %12, ptr %tmp42, align 8, !dbg !6414
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu632) #12, !dbg !6413
  %13 = load ptr, ptr %tmp42, align 8, !dbg !6414
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !6413
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !6419
  %tobool43 = icmp ne ptr %14, null, !dbg !6419
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !6413

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6421
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !6421
  %16 = load ptr, ptr %data, align 8, !dbg !6421
  store ptr %16, ptr %__data, align 8, !dbg !6421
  store ptr @__SCT__tp_func_ext4_sync_file_exit, ptr %tmp45, align 8, !dbg !6423
  %17 = load ptr, ptr %tmp45, align 8, !dbg !6423
  %18 = load ptr, ptr %__data, align 8, !dbg !6421
  %19 = load ptr, ptr %inode.addr, align 8, !dbg !6421
  %20 = load i32, ptr %ret.addr, align 4, !dbg !6421
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20) #13, !dbg !6421
  br label %if.end47, !dbg !6421

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #12, !dbg !6393
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #12, !dbg !6393
  br label %do.cond48, !dbg !6413

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !6413

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !6393

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !6425, !srcloc !6427
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !6428
  %lnot52 = xor i1 %call51, true, !dbg !6428
  %lnot54 = xor i1 %lnot52, true, !dbg !6428
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !6428
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !6428
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !6428
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !6428
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !6425

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !6428

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !5611), !dbg !6430
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #12, !dbg !6430, !srcloc !6432
  call void @llvm.write_register.i64(metadata !5611, i64 %22), !dbg !6430
  br label %do.cond61, !dbg !6430

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !6430

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !6430

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !6425

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !6425

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6392
  br label %cleanup, !dbg !6392

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #12, !dbg !6392
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !6393

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !6393

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !6391

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6433 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6441, metadata !DIExpression()), !dbg !6443
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6442, metadata !DIExpression()), !dbg !6444
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6445
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6446
  %div = udiv i64 %1, 64, !dbg !6446
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6447
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !6448
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6449
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6450
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !6451
  ret i1 %call, !dbg !6452
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6453 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6461, metadata !DIExpression()), !dbg !6463
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6462, metadata !DIExpression()), !dbg !6464
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6465
  %1 = load i64, ptr %size.addr, align 8, !dbg !6466
  %conv = trunc i64 %1 to i32, !dbg !6466
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !6467
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6468
  %3 = load i64, ptr %size.addr, align 8, !dbg !6468
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !6468
  ret void, !dbg !6469
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6470 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6473, metadata !DIExpression()), !dbg !6475
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6474, metadata !DIExpression()), !dbg !6476
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6477
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6478
  br i1 %1, label %cond.true, label %cond.false, !dbg !6478

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6479
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6480
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !6481
  %conv = zext i1 %call to i32, !dbg !6481
  br label %cond.end, !dbg !6478

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6482
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6483
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !6484
  %conv2 = zext i1 %call1 to i32, !dbg !6484
  br label %cond.end, !dbg !6478

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6478
  %tobool = icmp ne i32 %cond, 0, !dbg !6478
  ret i1 %tobool, !dbg !6485
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6486 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6491, metadata !DIExpression()), !dbg !6493
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6492, metadata !DIExpression()), !dbg !6494
  ret i1 true, !dbg !6495
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6496 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6501, metadata !DIExpression()), !dbg !6504
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6502, metadata !DIExpression()), !dbg !6505
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6503, metadata !DIExpression()), !dbg !6506
  ret void, !dbg !6507
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6508 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6512, metadata !DIExpression()), !dbg !6514
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6513, metadata !DIExpression()), !dbg !6515
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6516
  %and = and i64 %0, 63, !dbg !6517
  %shl = shl i64 1, %and, !dbg !6518
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6519
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6520
  %shr = ashr i64 %2, 6, !dbg !6521
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6519
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6519
  %and1 = and i64 %shl, %3, !dbg !6522
  %cmp = icmp ne i64 %and1, 0, !dbg !6523
  ret i1 %cmp, !dbg !6524
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6525 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6527, metadata !DIExpression()), !dbg !6530
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6528, metadata !DIExpression()), !dbg !6531
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !6532
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6529, metadata !DIExpression()), !dbg !6533
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6534
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6535
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !6536, !srcloc !6537
  %3 = icmp ult i8 %2, 2, !dbg !6536
  call void @llvm.assume(i1 %3), !dbg !6536
  store i8 %2, ptr %oldbit, align 1, !dbg !6536
  %4 = load i8, ptr %oldbit, align 1, !dbg !6538, !range !5711, !noundef !1093
  %tobool = trunc i8 %4 to i1, !dbg !6538
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !6539
  ret i1 %tobool, !dbg !6540
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @journal_current_handle() #3 align 16 !dbg !6541 {
entry:
  %call = call ptr @get_current() #13, !dbg !6542
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 127, !dbg !6543
  %0 = load ptr, ptr %journal_info, align 32, !dbg !6543
  ret ptr %0, !dbg !6544
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #7 align 16 !dbg !6545 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #12, !dbg !6556
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6550, metadata !DIExpression()), !dbg !6556
  br label %do.body, !dbg !6556

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6557
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6552, metadata !DIExpression()), !dbg !6557
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6557
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6557
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6556
  br label %do.cond, !dbg !6557

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6557

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #12, !dbg !6558
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6554, metadata !DIExpression()), !dbg !6558
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #15, !dbg !6558, !srcloc !6559
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6558
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6558
  %3 = inttoptr i64 %2 to ptr, !dbg !6558
  store ptr %3, ptr %tmp, align 8, !dbg !6558
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #12, !dbg !6556
  %4 = load ptr, ptr %tmp, align 8, !dbg !6558
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6556
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6556
  store ptr %5, ptr %tmp1, align 8, !dbg !6556
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #12, !dbg !6560
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6556
  ret ptr %6, !dbg !6561
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #7 align 16 !dbg !6562 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6578, metadata !DIExpression()), !dbg !6579
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6580
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !6581
  ret i1 %call, !dbg !6582
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #3 align 16 !dbg !6583 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6587, metadata !DIExpression()), !dbg !6588
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6589
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #13, !dbg !6590
  ret i1 %call, !dbg !6591
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #7 align 16 !dbg !6592 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6595, metadata !DIExpression()), !dbg !6602
  br label %do.body, !dbg !6603

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #12, !dbg !6604
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !6596, metadata !DIExpression()), !dbg !6604
  %0 = load i32, ptr %val.addr, align 4, !dbg !6604
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6604
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6604

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !6604
  %cmp = icmp eq i32 %2, 1, !dbg !6604
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !6604

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !6604
  %cmp1 = icmp eq i32 %3, -1, !dbg !6604
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !6604

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !6604
  br label %cond.end, !dbg !6604

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !6604

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !6604
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !6604
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !6605
  %cmp2 = icmp eq i32 %5, 1, !dbg !6605
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6604

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !6606, !srcloc !6608
  br label %if.end8, !dbg !6605

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !6609
  %cmp3 = icmp eq i32 %6, -1, !dbg !6609
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !6605

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !6610, !srcloc !6612
  br label %if.end, !dbg !6609

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !6609

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #12, !dbg !6613
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !6598, metadata !DIExpression()), !dbg !6613
  %7 = load i32, ptr %val.addr, align 4, !dbg !6613
  %conv = sext i32 %7 to i64, !dbg !6613
  %and = and i64 %conv, 4294967295, !dbg !6613
  %conv7 = trunc i64 %and to i32, !dbg !6613
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !6613
  %8 = load i32, ptr %pto_val__, align 4, !dbg !6613
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !6613, !srcloc !6614
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #12, !dbg !6609
  br label %do.cond, !dbg !6613

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6613

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #12, !dbg !6603
  br label %do.end10, !dbg !6604

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !6615
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_ext4_sync_file_enter(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #7 align 16 !dbg !6616 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !6620
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6618, metadata !DIExpression()), !dbg !6620
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !6620, !srcloc !6621
  %1 = icmp ult i8 %0, 2, !dbg !6620
  call void @llvm.assume(i1 %1), !dbg !6620
  store i8 %0, ptr %c, align 1, !dbg !6620
  %2 = load i8, ptr %c, align 1, !dbg !6620, !range !5711, !noundef !1093
  %tobool = trunc i8 %2 to i1, !dbg !6620
  %frombool = zext i1 %tobool to i8, !dbg !6620
  store i8 %frombool, ptr %tmp, align 1, !dbg !6620
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !6622
  %3 = load i8, ptr %tmp, align 1, !dbg !6620, !range !5711, !noundef !1093
  %tobool1 = trunc i8 %3 to i1, !dbg !6620
  ret i1 %tobool1, !dbg !6623
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #7 align 16 !dbg !6624 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6629, metadata !DIExpression()), !dbg !6632
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6630, metadata !DIExpression()), !dbg !6633
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6634
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6635, !range !5711, !noundef !1093
  %tobool = trunc i8 %1 to i1, !dbg !6635
  %conv = zext i1 %tobool to i32, !dbg !6635
  %or = or i32 2, %conv, !dbg !6636
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !6637, !srcloc !6638

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6639
  br label %return, !dbg !6639

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6631), !dbg !6640
  store i1 true, ptr %retval, align 1, !dbg !6641
  br label %return, !dbg !6641

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6642
  ret i1 %2, !dbg !6642
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #7 align 16 !dbg !6643 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6647, metadata !DIExpression()), !dbg !6649
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !6648, metadata !DIExpression()), !dbg !6650
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6651
  %call = call i32 @cpumask_check(i32 noundef %0) #13, !dbg !6651
  %conv = zext i32 %call to i64, !dbg !6651
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !6651
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !6651
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6651
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #13, !dbg !6651
  ret i1 %call1, !dbg !6652
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #7 align 16 !dbg !6653 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6657, metadata !DIExpression()), !dbg !6658
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6659
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #13, !dbg !6660
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !6661
  ret i32 %1, !dbg !6662
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #7 align 16 !dbg !6663 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6667, metadata !DIExpression()), !dbg !6669
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !6668, metadata !DIExpression()), !dbg !6670
  ret void, !dbg !6671
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6672 dso_local i32 @generic_buffers_fsync_noflush(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ext4_sync_parent(ptr noundef %inode) #0 align 16 !dbg !6675 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %next = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6677, metadata !DIExpression()), !dbg !6681
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #12, !dbg !6682
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !6678, metadata !DIExpression()), !dbg !6683
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #12, !dbg !6682
  call void @llvm.dbg.declare(metadata ptr %next, metadata !6679, metadata !DIExpression()), !dbg !6684
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !6685
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6680, metadata !DIExpression()), !dbg !6686
  store i32 0, ptr %ret, align 4, !dbg !6686
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6687
  %call = call i32 @ext4_test_inode_state(ptr noundef %0, i32 noundef 5) #13, !dbg !6689
  %tobool = icmp ne i32 %call, 0, !dbg !6689
  br i1 %tobool, label %if.end, label %if.then, !dbg !6690

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6691

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6692
  %call1 = call ptr @d_find_any_alias(ptr noundef %1) #13, !dbg !6693
  store ptr %call1, ptr %dentry, align 8, !dbg !6694
  %2 = load ptr, ptr %dentry, align 8, !dbg !6695
  %tobool2 = icmp ne ptr %2, null, !dbg !6695
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6697

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6698

if.end4:                                          ; preds = %if.end
  br label %while.cond, !dbg !6699

while.cond:                                       ; preds = %if.end15, %if.end4
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !6700
  %call5 = call i32 @ext4_test_inode_state(ptr noundef %3, i32 noundef 5) #13, !dbg !6701
  %tobool6 = icmp ne i32 %call5, 0, !dbg !6699
  br i1 %tobool6, label %while.body, label %while.end, !dbg !6699

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !6702
  call void @ext4_clear_inode_state(ptr noundef %4, i32 noundef 5) #13, !dbg !6704
  %5 = load ptr, ptr %dentry, align 8, !dbg !6705
  %call7 = call ptr @dget_parent(ptr noundef %5) #13, !dbg !6706
  store ptr %call7, ptr %next, align 8, !dbg !6707
  %6 = load ptr, ptr %dentry, align 8, !dbg !6708
  call void @dput(ptr noundef %6) #13, !dbg !6709
  %7 = load ptr, ptr %next, align 8, !dbg !6710
  store ptr %7, ptr %dentry, align 8, !dbg !6711
  %8 = load ptr, ptr %dentry, align 8, !dbg !6712
  %d_inode = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5, !dbg !6713
  %9 = load ptr, ptr %d_inode, align 8, !dbg !6713
  store ptr %9, ptr %inode.addr, align 8, !dbg !6714
  %10 = load ptr, ptr %inode.addr, align 8, !dbg !6715
  %i_mapping = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 10, !dbg !6716
  %11 = load ptr, ptr %i_mapping, align 8, !dbg !6716
  %call8 = call i32 @sync_mapping_buffers(ptr noundef %11) #13, !dbg !6717
  store i32 %call8, ptr %ret, align 4, !dbg !6718
  %12 = load i32, ptr %ret, align 4, !dbg !6719
  %tobool9 = icmp ne i32 %12, 0, !dbg !6719
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6721

if.then10:                                        ; preds = %while.body
  br label %while.end, !dbg !6722

if.end11:                                         ; preds = %while.body
  %13 = load ptr, ptr %inode.addr, align 8, !dbg !6723
  %call12 = call i32 @sync_inode_metadata(ptr noundef %13, i32 noundef 1) #13, !dbg !6724
  store i32 %call12, ptr %ret, align 4, !dbg !6725
  %14 = load i32, ptr %ret, align 4, !dbg !6726
  %tobool13 = icmp ne i32 %14, 0, !dbg !6726
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !6728

if.then14:                                        ; preds = %if.end11
  br label %while.end, !dbg !6729

if.end15:                                         ; preds = %if.end11
  br label %while.cond, !dbg !6699, !llvm.loop !6730

while.end:                                        ; preds = %if.then14, %if.then10, %while.cond
  %15 = load ptr, ptr %dentry, align 8, !dbg !6734
  call void @dput(ptr noundef %15) #13, !dbg !6735
  %16 = load i32, ptr %ret, align 4, !dbg !6736
  store i32 %16, ptr %retval, align 4, !dbg !6737
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6737

cleanup:                                          ; preds = %while.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !6738
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #12, !dbg !6738
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #12, !dbg !6738
  %17 = load i32, ptr %retval, align 4, !dbg !6738
  ret i32 %17, !dbg !6738
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ext4_test_inode_state(ptr noundef %inode, i32 noundef %bit) #3 align 16 !dbg !6739 {
entry:
  %inode.addr = alloca ptr, align 8
  %bit.addr = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6741, metadata !DIExpression()), !dbg !6743
  store i32 %bit, ptr %bit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6742, metadata !DIExpression()), !dbg !6743
  %0 = load i32, ptr %bit.addr, align 4, !dbg !6743
  %add = add i32 %0, 32, !dbg !6743
  %1 = call i1 @llvm.is.constant.i32(i32 %add), !dbg !6743
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6743

land.lhs.true:                                    ; preds = %entry
  br i1 false, label %land.lhs.true1, label %cond.false, !dbg !6743

land.lhs.true1:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !6743
  %call = call ptr @EXT4_I(ptr noundef %2) #13, !dbg !6743
  %i_flags = getelementptr inbounds %struct.ext4_inode_info, ptr %call, i32 0, i32 5, !dbg !6743
  %3 = ptrtoint ptr %i_flags to i64, !dbg !6743
  %cmp = icmp ne i64 %3, 0, !dbg !6743
  br i1 %cmp, label %land.lhs.true2, label %cond.false, !dbg !6743

land.lhs.true2:                                   ; preds = %land.lhs.true1
  br i1 false, label %cond.true, label %cond.false, !dbg !6743

cond.true:                                        ; preds = %land.lhs.true2
  %4 = load i32, ptr %bit.addr, align 4, !dbg !6743
  %add3 = add i32 %4, 32, !dbg !6743
  %conv = sext i32 %add3 to i64, !dbg !6743
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !6743
  %call4 = call ptr @EXT4_I(ptr noundef %5) #13, !dbg !6743
  %i_flags5 = getelementptr inbounds %struct.ext4_inode_info, ptr %call4, i32 0, i32 5, !dbg !6743
  %call6 = call zeroext i1 @const_test_bit(i64 noundef %conv, ptr noundef %i_flags5) #13, !dbg !6743
  %conv7 = zext i1 %call6 to i32, !dbg !6743
  br label %cond.end, !dbg !6743

cond.false:                                       ; preds = %land.lhs.true2, %land.lhs.true1, %land.lhs.true, %entry
  %6 = load i32, ptr %bit.addr, align 4, !dbg !6743
  %add8 = add i32 %6, 32, !dbg !6743
  %conv9 = sext i32 %add8 to i64, !dbg !6743
  %7 = load ptr, ptr %inode.addr, align 8, !dbg !6743
  %call10 = call ptr @EXT4_I(ptr noundef %7) #13, !dbg !6743
  %i_flags11 = getelementptr inbounds %struct.ext4_inode_info, ptr %call10, i32 0, i32 5, !dbg !6743
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv9, ptr noundef %i_flags11) #13, !dbg !6743
  %conv13 = zext i1 %call12 to i32, !dbg !6743
  br label %cond.end, !dbg !6743

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv13, %cond.false ], !dbg !6743
  ret i32 %cond, !dbg !6743
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6744 dso_local ptr @d_find_any_alias(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ext4_clear_inode_state(ptr noundef %inode, i32 noundef %bit) #3 align 16 !dbg !6747 {
entry:
  %inode.addr = alloca ptr, align 8
  %bit.addr = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6749, metadata !DIExpression()), !dbg !6751
  store i32 %bit, ptr %bit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6750, metadata !DIExpression()), !dbg !6751
  %0 = load i32, ptr %bit.addr, align 4, !dbg !6751
  %add = add i32 %0, 32, !dbg !6751
  %conv = sext i32 %add to i64, !dbg !6751
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6751
  %call = call ptr @EXT4_I(ptr noundef %1) #13, !dbg !6751
  %i_flags = getelementptr inbounds %struct.ext4_inode_info, ptr %call, i32 0, i32 5, !dbg !6751
  call void @clear_bit(i64 noundef %conv, ptr noundef %i_flags) #13, !dbg !6751
  ret void, !dbg !6751
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6752 dso_local ptr @dget_parent(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6755 dso_local void @dput(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6756 dso_local i32 @sync_mapping_buffers(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6759 dso_local i32 @sync_inode_metadata(ptr noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @EXT4_I(ptr noundef %inode) #3 align 16 !dbg !6760 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6764, metadata !DIExpression()), !dbg !6767
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !6768
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6765, metadata !DIExpression()), !dbg !6768
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6768
  store ptr %0, ptr %__mptr, align 8, !dbg !6768
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6768
  %add.ptr = getelementptr i8, ptr %1, i64 -296, !dbg !6768
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6768
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !6769
  %2 = load ptr, ptr %tmp, align 8, !dbg !6768
  ret ptr %2, !dbg !6770
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6771 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6774, metadata !DIExpression()), !dbg !6779
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6775, metadata !DIExpression()), !dbg !6780
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !6781
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6776, metadata !DIExpression()), !dbg !6782
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6783
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6784
  %div = udiv i64 %1, 64, !dbg !6784
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6785
  store ptr %add.ptr, ptr %p, align 8, !dbg !6782
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !6786
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6777, metadata !DIExpression()), !dbg !6787
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6788
  %rem = urem i64 %2, 64, !dbg !6788
  %shl = shl i64 1, %rem, !dbg !6788
  store i64 %shl, ptr %mask, align 8, !dbg !6787
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !6789
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6778, metadata !DIExpression()), !dbg !6790
  %3 = load ptr, ptr %p, align 8, !dbg !6791
  %4 = load i64, ptr %3, align 8, !dbg !6792
  store i64 %4, ptr %val, align 8, !dbg !6790
  %5 = load i64, ptr %val, align 8, !dbg !6793
  %6 = load i64, ptr %mask, align 8, !dbg !6794
  %and = and i64 %5, %6, !dbg !6795
  %tobool = icmp ne i64 %and, 0, !dbg !6796
  %lnot = xor i1 %tobool, true, !dbg !6796
  %lnot1 = xor i1 %lnot, true, !dbg !6797
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !6798
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !6798
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !6798
  ret i1 %lnot1, !dbg !6799
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6800 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6806, metadata !DIExpression()), !dbg !6808
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6807, metadata !DIExpression()), !dbg !6809
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6810
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6811
  %div = sdiv i64 %1, 64, !dbg !6811
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6812
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !6813
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6814
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6815
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !6816
  ret void, !dbg !6817
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6818 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6820, metadata !DIExpression()), !dbg !6822
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6821, metadata !DIExpression()), !dbg !6823
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6824
  %1 = load i64, ptr %size.addr, align 8, !dbg !6825
  %conv = trunc i64 %1 to i32, !dbg !6825
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !6826
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6827
  %3 = load i64, ptr %size.addr, align 8, !dbg !6827
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #13, !dbg !6827
  ret void, !dbg !6828
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6829 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6831, metadata !DIExpression()), !dbg !6833
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6832, metadata !DIExpression()), !dbg !6834
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6835
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6837
  br i1 %1, label %if.then, label %if.else, !dbg !6838

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6839
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6839
  %shr = ashr i64 %3, 3, !dbg !6839
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6839
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6841
  %and = and i64 %4, 7, !dbg !6841
  %sh_prom = trunc i64 %and to i32, !dbg !6841
  %shl = shl i32 1, %sh_prom, !dbg !6841
  %not = xor i32 %shl, -1, !dbg !6842
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #12, !dbg !6843, !srcloc !6844
  br label %if.end, !dbg !6845

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6846
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6848
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #12, !dbg !6849, !srcloc !6850
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6851
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6852 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6854, metadata !DIExpression()), !dbg !6856
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6855, metadata !DIExpression()), !dbg !6857
  ret i1 true, !dbg !6858
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6859 dso_local i32 @ext4_force_commit(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6860 dso_local i32 @jbd2_trans_will_send_data_barrier(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6863 dso_local i32 @ext4_fc_commit(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_ext4_sync_file_exit(ptr noundef, ptr noundef, i32 noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nounwind }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { cold noredzone }
attributes #15 = { nounwind memory(none) }

!llvm.dbg.cu = !{!5080}
!llvm.named.register.rsp = !{!5611}
!llvm.module.flags = !{!5612, !5613, !5614, !5615, !5616, !5617, !5618, !5619}
!llvm.ident = !{!5620}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/ext4/fsync.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3508103862b841e82be4a3afaa0e21db")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 44)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 120, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 15)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 16)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 38)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !25, line: 934, type: !26, isLocal: true, isDefinition: true)
!25 = !DIFile(filename: "./include/trace/events/ext4.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8592580b1e091acdd38c4ef89493d9d9")
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 28)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_ext4_sync_file_enter626", scope: !31, file: !25, line: 934, type: !300, isLocal: true, isDefinition: true)
!31 = distinct !DISubprogram(name: "trace_ext4_sync_file_enter", scope: !25, file: !25, line: 934, type: !32, scopeLine: 934, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !5587)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !84}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !36, line: 994, size: 1856, align: 64, elements: !37)
!36 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!37 = !{!38, !59, !103, !105, !115, !133, !137, !138, !227, !454, !463, !5070, !5071, !5072, !5073, !5074, !5075, !5077, !5078, !5079}
!38 = !DIDerivedType(tag: DW_TAG_member, scope: !35, file: !36, line: 995, baseType: !39, size: 128)
!39 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !35, file: !36, line: 995, size: 128, elements: !40)
!40 = !{!41, !47, !57}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !39, file: !36, line: 996, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !43, line: 60, size: 64, elements: !44)
!43 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !42, file: !43, line: 61, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !39, file: !36, line: 997, baseType: !48, size: 128, align: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !49, line: 232, size: 128, align: 64, elements: !50)
!49 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!50 = !{!51, !53}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !48, file: !49, line: 233, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !48, file: !49, line: 234, baseType: !54, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !52}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !39, file: !36, line: 998, baseType: !58, size: 32)
!58 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !35, file: !36, line: 1005, baseType: !60, size: 32, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !61, line: 29, baseType: !62)
!61 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !61, line: 17, size: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, scope: !62, file: !61, line: 18, baseType: !65, size: 32)
!65 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !62, file: !61, line: 18, size: 32, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !65, file: !61, line: 19, baseType: !68, size: 32)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !69, line: 14, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !68, file: !69, line: 15, baseType: !72, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !73, line: 44, baseType: !74)
!73 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !73, line: 14, size: 32, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !74, file: !73, line: 15, baseType: !77, size: 32)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !74, file: !73, line: 15, size: 32, elements: !78)
!78 = !{!79, !85, !95}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !77, file: !73, line: 16, baseType: !80, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !49, line: 174, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 172, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !81, file: !49, line: 173, baseType: !84, size: 32)
!84 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, scope: !77, file: !73, line: 24, baseType: !86, size: 16)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !77, file: !73, line: 24, size: 16, elements: !87)
!87 = !{!88, !94}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !86, file: !73, line: 25, baseType: !89, size: 8)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !90, line: 17, baseType: !91)
!90 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !92, line: 21, baseType: !93)
!92 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!93 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !86, file: !73, line: 26, baseType: !89, size: 8, offset: 8)
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !77, file: !73, line: 28, baseType: !96, size: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !77, file: !73, line: 28, size: 32, elements: !97)
!97 = !{!98, !102}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !96, file: !73, line: 29, baseType: !99, size: 16)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !90, line: 19, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !92, line: 24, baseType: !101)
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !96, file: !73, line: 30, baseType: !99, size: 16, offset: 16)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !35, file: !36, line: 1006, baseType: !104, size: 32, offset: 160)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !49, line: 156, baseType: !58)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !35, file: !36, line: 1007, baseType: !106, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !107, line: 13, baseType: !108)
!107 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !49, line: 181, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 179, size: 64, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !109, file: !49, line: 180, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !90, line: 22, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !92, line: 30, baseType: !114)
!114 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !35, file: !36, line: 1008, baseType: !116, size: 256, offset: 256)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !117, line: 66, size: 256, elements: !118)
!117 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!118 = !{!119, !120, !122, !127}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !116, file: !117, line: 67, baseType: !106, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !116, file: !117, line: 68, baseType: !121, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !69, line: 23, baseType: !68)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !116, file: !117, line: 70, baseType: !123, size: 32, offset: 96)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !124, line: 15, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !123, file: !124, line: 20, baseType: !80, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !116, file: !117, line: 72, baseType: !128, size: 128, offset: 128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !49, line: 190, size: 128, elements: !129)
!129 = !{!130, !132}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !128, file: !49, line: 191, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !128, file: !49, line: 191, baseType: !131, size: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !35, file: !36, line: 1009, baseType: !134, size: 64, offset: 512)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !49, line: 52, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !136, line: 88, baseType: !114)
!136 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!137 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !35, file: !36, line: 1010, baseType: !58, size: 32, offset: 576)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !35, file: !36, line: 1011, baseType: !139, size: 256, offset: 640)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !36, line: 948, size: 256, elements: !140)
!140 = !{!141, !164, !209, !217, !225, !226}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !139, file: !36, line: 949, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !143, line: 34, baseType: !144)
!143 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 25, size: 64, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !144, file: !143, line: 26, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !148, line: 27, baseType: !149)
!148 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !148, line: 13, size: 64, elements: !150)
!150 = !{!151, !163}
!151 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !148, line: 14, baseType: !152, size: 32)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !148, line: 14, size: 32, elements: !153)
!153 = !{!154, !155}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !152, file: !148, line: 15, baseType: !80, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !148, line: 16, baseType: !156, size: 32)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !148, line: 16, size: 32, elements: !157)
!157 = !{!158, !159}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !156, file: !148, line: 18, baseType: !89, size: 8)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !156, file: !148, line: 19, baseType: !160, size: 24, offset: 8)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 24, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 3)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !149, file: !148, line: 26, baseType: !72, size: 32, offset: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !139, file: !36, line: 950, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !167, line: 59, size: 768, elements: !168)
!167 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!168 = !{!169, !175, !176, !177, !190, !191, !198, !199}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !166, file: !167, line: 61, baseType: !170, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !171, line: 113, baseType: !172)
!171 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !171, line: 111, size: 32, elements: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !172, file: !171, line: 112, baseType: !80, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !166, file: !167, line: 62, baseType: !58, size: 32, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !166, file: !167, line: 63, baseType: !60, size: 32, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !166, file: !167, line: 65, baseType: !178, size: 256, offset: 128)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !188)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !49, line: 194, size: 64, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !179, file: !49, line: 195, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !49, line: 198, size: 128, elements: !184)
!184 = !{!185, !186}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !49, line: 199, baseType: !182, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !183, file: !49, line: 199, baseType: !187, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!188 = !{!189}
!189 = !DISubrange(count: 4)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !166, file: !167, line: 66, baseType: !179, size: 64, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !166, file: !167, line: 68, baseType: !192, size: 192, offset: 448)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !193, line: 41, baseType: !194)
!193 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !193, line: 37, size: 192, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !194, file: !193, line: 38, baseType: !60, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !194, file: !193, line: 39, baseType: !128, size: 128, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !166, file: !167, line: 69, baseType: !48, size: 128, align: 64, offset: 640)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !166, file: !167, line: 70, baseType: !200, offset: 768)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, elements: !207)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !167, line: 54, size: 128, elements: !202)
!202 = !{!203, !204}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !201, file: !167, line: 55, baseType: !84, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !201, file: !167, line: 56, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !167, line: 56, flags: DIFlagFwdDecl)
!207 = !{!208}
!208 = !DISubrange(count: -1)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !139, file: !36, line: 951, baseType: !210, size: 32, offset: 128)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !167, line: 9, baseType: !58, size: 32, elements: !211)
!211 = !{!212, !213, !214, !215, !216}
!212 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!213 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!214 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!215 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!216 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !139, file: !36, line: 952, baseType: !218, size: 32, offset: 160)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !219, line: 23, baseType: !220)
!219 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 21, size: 32, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !220, file: !219, line: 22, baseType: !223, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !49, line: 37, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !136, line: 49, baseType: !58)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !139, file: !36, line: 952, baseType: !218, size: 32, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !139, file: !36, line: 953, baseType: !84, size: 32, offset: 224)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !35, file: !36, line: 1012, baseType: !228, size: 64, offset: 896)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !231, line: 110, size: 1472, elements: !232)
!231 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!232 = !{!233, !234, !235, !242, !243, !244, !245, !246, !247, !248, !249, !258, !259, !260, !261, !262, !263, !399, !400, !401, !402, !403, !434, !437, !441, !449}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !230, file: !231, line: 111, baseType: !106, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !230, file: !231, line: 112, baseType: !218, size: 32, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !230, file: !231, line: 113, baseType: !236, size: 32, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !219, line: 28, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 26, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !237, file: !219, line: 27, baseType: !240, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !49, line: 38, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !136, line: 50, baseType: !58)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !230, file: !231, line: 114, baseType: !218, size: 32, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !230, file: !231, line: 115, baseType: !236, size: 32, offset: 160)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !230, file: !231, line: 116, baseType: !218, size: 32, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !230, file: !231, line: 117, baseType: !236, size: 32, offset: 224)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !230, file: !231, line: 118, baseType: !218, size: 32, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !230, file: !231, line: 119, baseType: !236, size: 32, offset: 288)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !230, file: !231, line: 120, baseType: !58, size: 32, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !230, file: !231, line: 121, baseType: !250, size: 64, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !251, line: 24, baseType: !252)
!251 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 24, size: 64, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !252, file: !251, line: 24, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !90, line: 23, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !92, line: 31, baseType: !257)
!257 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !230, file: !231, line: 122, baseType: !250, size: 64, offset: 448)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !230, file: !231, line: 123, baseType: !250, size: 64, offset: 512)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !230, file: !231, line: 124, baseType: !250, size: 64, offset: 576)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !230, file: !231, line: 125, baseType: !250, size: 64, offset: 640)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !230, file: !231, line: 127, baseType: !93, size: 8, offset: 704)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !230, file: !231, line: 129, baseType: !264, size: 64, offset: 768)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !266, line: 195, size: 1728, elements: !267)
!266 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!267 = !{!268, !269, !274, !287, !296, !299, !301, !308, !309, !310, !311, !316, !317, !318, !320, !321, !363, !384}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !265, file: !266, line: 196, baseType: !170, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !265, file: !266, line: 197, baseType: !270, size: 32, offset: 32)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !266, line: 28, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !49, line: 104, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !90, line: 20, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !92, line: 26, baseType: !84)
!274 = !DIDerivedType(tag: DW_TAG_member, scope: !265, file: !266, line: 198, baseType: !275, size: 192, offset: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !265, file: !266, line: 198, size: 192, elements: !276)
!276 = !{!277, !278}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !275, file: !266, line: 199, baseType: !128, size: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !275, file: !266, line: 200, baseType: !279, size: 192, align: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !280, line: 5, size: 192, align: 64, elements: !281)
!280 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!281 = !{!282, !284, !286}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !279, file: !280, line: 6, baseType: !283, size: 64)
!283 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !279, file: !280, line: 7, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !279, file: !280, line: 8, baseType: !285, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !265, file: !266, line: 205, baseType: !288, size: 320, offset: 256)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !289, line: 48, size: 320, elements: !290)
!289 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!290 = !{!291, !292, !293, !294, !295}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !288, file: !289, line: 49, baseType: !106, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !288, file: !289, line: 55, baseType: !106, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !288, file: !289, line: 57, baseType: !123, size: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !288, file: !289, line: 59, baseType: !121, size: 32, offset: 160)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !288, file: !289, line: 60, baseType: !128, size: 128, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !265, file: !266, line: 206, baseType: !297, size: 64, offset: 576)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !266, line: 206, flags: DIFlagFwdDecl)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !265, file: !266, line: 207, baseType: !300, size: 64, offset: 640)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, scope: !265, file: !266, line: 208, baseType: !302, size: 64, offset: 704)
!302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !265, file: !266, line: 208, size: 64, elements: !303)
!303 = !{!304, !307}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !302, file: !266, line: 209, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !306, line: 8, baseType: !113)
!306 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!307 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !302, file: !266, line: 210, baseType: !305, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !265, file: !266, line: 212, baseType: !305, size: 64, offset: 768)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !265, file: !266, line: 213, baseType: !218, size: 32, offset: 832)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !265, file: !266, line: 214, baseType: !236, size: 32, offset: 864)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !265, file: !266, line: 215, baseType: !312, size: 32, offset: 896)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !266, line: 31, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !49, line: 110, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !90, line: 21, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !92, line: 27, baseType: !58)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !265, file: !266, line: 216, baseType: !101, size: 16, offset: 928)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !265, file: !266, line: 217, baseType: !101, size: 16, offset: 944)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !265, file: !266, line: 221, baseType: !319, size: 16, offset: 960)
!319 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !266, line: 228, baseType: !283, size: 64, offset: 1024)
!321 = !DIDerivedType(tag: DW_TAG_member, scope: !265, file: !266, line: 245, baseType: !322, size: 320, offset: 1088)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !265, file: !266, line: 245, size: 320, elements: !323)
!323 = !{!324, !354}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !322, file: !266, line: 246, baseType: !325, size: 320)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !266, line: 114, size: 320, elements: !326)
!326 = !{!327, !328, !340, !343, !352}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !325, file: !266, line: 116, baseType: !283, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !266, line: 117, baseType: !329, size: 64, offset: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !266, line: 117, size: 64, elements: !330)
!330 = !{!331, !339}
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !266, line: 118, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !266, line: 118, size: 64, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !332, file: !266, line: 120, baseType: !99, size: 16)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !332, file: !266, line: 121, baseType: !336, size: 48, offset: 16)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 6)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !329, file: !266, line: 127, baseType: !283, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !325, file: !266, line: 129, baseType: !341, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !266, line: 102, flags: DIFlagFwdDecl)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !325, file: !266, line: 130, baseType: !344, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !266, line: 108, size: 192, elements: !346)
!346 = !{!347, !348, !349}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !345, file: !266, line: 109, baseType: !48, size: 128, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !345, file: !266, line: 110, baseType: !170, size: 32, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !345, file: !266, line: 111, baseType: !350, size: 8, offset: 160)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !49, line: 35, baseType: !351)
!351 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !325, file: !266, line: 131, baseType: !353, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !266, line: 247, baseType: !355, size: 320)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !266, line: 247, size: 320, elements: !356)
!356 = !{!357, !358, !359, !360, !361}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !355, file: !266, line: 248, baseType: !283, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !355, file: !266, line: 249, baseType: !283, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !355, file: !266, line: 250, baseType: !341, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !355, file: !266, line: 251, baseType: !344, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !355, file: !266, line: 252, baseType: !362, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, scope: !265, file: !266, line: 260, baseType: !364, size: 256, offset: 1408)
!364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !265, file: !266, line: 260, size: 256, elements: !365)
!365 = !{!366, !372}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !364, file: !266, line: 261, baseType: !367, size: 256)
!367 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !266, line: 134, size: 256, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !367, file: !266, line: 135, baseType: !300, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !367, file: !266, line: 136, baseType: !371, size: 256)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 256, elements: !188)
!372 = !DIDerivedType(tag: DW_TAG_member, scope: !364, file: !266, line: 262, baseType: !373, size: 256)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !364, file: !266, line: 262, size: 256, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !373, file: !266, line: 264, baseType: !128, size: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !373, file: !266, line: 265, baseType: !377, size: 128, offset: 128)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !378, line: 22, size: 128, elements: !379)
!378 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!379 = !{!380, !383}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !377, file: !378, line: 23, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !378, line: 23, flags: DIFlagFwdDecl)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !377, file: !378, line: 24, baseType: !283, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !265, file: !266, line: 280, baseType: !385, size: 64, offset: 1664)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !266, line: 176, size: 192, elements: !387)
!387 = !{!388, !397, !398}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !386, file: !266, line: 177, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !266, line: 171, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!84, !264, !393, !395, !264}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !386, file: !266, line: 178, baseType: !264, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !386, file: !266, line: 179, baseType: !341, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !230, file: !231, line: 130, baseType: !264, size: 64, offset: 832)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !230, file: !231, line: 131, baseType: !264, size: 64, offset: 896)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !230, file: !231, line: 132, baseType: !264, size: 64, offset: 960)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !230, file: !231, line: 135, baseType: !300, size: 64, offset: 1024)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !230, file: !231, line: 137, baseType: !404, size: 64, offset: 1088)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !406, line: 14, size: 1088, elements: !407)
!406 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!407 = !{!408, !409, !418, !419, !420, !421, !422, !423}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !405, file: !406, line: 15, baseType: !170, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !405, file: !406, line: 17, baseType: !410, size: 320, offset: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !411, line: 22, size: 320, elements: !412)
!411 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!412 = !{!413, !414, !415, !416}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !410, file: !411, line: 23, baseType: !121, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !410, file: !411, line: 24, baseType: !112, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !410, file: !411, line: 26, baseType: !128, size: 128, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !410, file: !411, line: 28, baseType: !417, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !405, file: !406, line: 19, baseType: !283, size: 64, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !405, file: !406, line: 20, baseType: !106, size: 64, offset: 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !405, file: !406, line: 23, baseType: !183, size: 128, offset: 512)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !405, file: !406, line: 24, baseType: !218, size: 32, offset: 640)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !405, file: !406, line: 29, baseType: !106, size: 64, offset: 704)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !405, file: !406, line: 36, baseType: !424, size: 320, offset: 768)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !425, line: 15, size: 320, elements: !426)
!425 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!426 = !{!427, !428, !429, !430, !431, !432, !433}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !424, file: !425, line: 16, baseType: !121, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !424, file: !425, line: 18, baseType: !84, size: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !424, file: !425, line: 19, baseType: !84, size: 32, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !424, file: !425, line: 20, baseType: !84, size: 32, offset: 96)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !424, file: !425, line: 21, baseType: !84, size: 32, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !424, file: !425, line: 22, baseType: !283, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !424, file: !425, line: 23, baseType: !283, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !230, file: !231, line: 138, baseType: !435, size: 64, offset: 1152)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !219, line: 18, flags: DIFlagFwdDecl)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !230, file: !231, line: 139, baseType: !438, size: 64, offset: 1216)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !440, line: 16, flags: DIFlagFwdDecl)
!440 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!441 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !230, file: !231, line: 140, baseType: !442, size: 64, offset: 1280)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !231, line: 25, size: 64, elements: !444)
!444 = !{!445, !446, !447}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !443, file: !231, line: 26, baseType: !80, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !443, file: !231, line: 27, baseType: !84, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !443, file: !231, line: 28, baseType: !448, offset: 64)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, elements: !207)
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !230, file: !231, line: 142, baseType: !450, size: 128, offset: 1344)
!450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !230, file: !231, line: 142, size: 128, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !450, file: !231, line: 143, baseType: !84, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !450, file: !231, line: 144, baseType: !48, size: 128, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !35, file: !36, line: 1013, baseType: !455, size: 256, offset: 960)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !36, line: 970, size: 256, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !455, file: !36, line: 971, baseType: !283, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !455, file: !36, line: 972, baseType: !58, size: 32, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !455, file: !36, line: 973, baseType: !58, size: 32, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !455, file: !36, line: 974, baseType: !58, size: 32, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !455, file: !36, line: 975, baseType: !58, size: 32, offset: 160)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !455, file: !36, line: 976, baseType: !134, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !35, file: !36, line: 1014, baseType: !464, size: 128, offset: 1216)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !465, line: 8, size: 128, elements: !466)
!465 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!466 = !{!467, !5069}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !464, file: !465, line: 9, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !470, line: 70, size: 256, elements: !471)
!470 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!471 = !{!472, !5066, !5067, !5068}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !469, file: !470, line: 71, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !475, line: 82, size: 1536, elements: !476)
!475 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!476 = !{!477, !478, !488, !496, !497, !512, !5033, !5035, !5048, !5049, !5050, !5051, !5052, !5058, !5059, !5060}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !474, file: !475, line: 84, baseType: !58, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !474, file: !475, line: 85, baseType: !479, size: 32, offset: 32)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !480, line: 275, baseType: !481)
!480 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !480, line: 275, size: 32, elements: !482)
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !481, file: !480, line: 275, baseType: !484, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !480, line: 69, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !480, line: 64, size: 32, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !485, file: !480, line: 65, baseType: !58, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !474, file: !475, line: 86, baseType: !489, size: 128, offset: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !490, line: 38, size: 128, elements: !491)
!490 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!491 = !{!492, !494}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !489, file: !490, line: 39, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !489, file: !490, line: 39, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !474, file: !475, line: 87, baseType: !473, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !474, file: !475, line: 88, baseType: !498, size: 128, offset: 256)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !475, line: 49, size: 128, elements: !499)
!499 = !{!500, !509}
!500 = !DIDerivedType(tag: DW_TAG_member, scope: !498, file: !475, line: 50, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !498, file: !475, line: 50, size: 64, elements: !502)
!502 = !{!503, !508}
!503 = !DIDerivedType(tag: DW_TAG_member, scope: !501, file: !475, line: 51, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !501, file: !475, line: 51, size: 64, elements: !505)
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !504, file: !475, line: 52, baseType: !314, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !504, file: !475, line: 52, baseType: !314, size: 32, offset: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !501, file: !475, line: 54, baseType: !255, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !498, file: !475, line: 56, baseType: !510, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !474, file: !475, line: 89, baseType: !513, size: 64, offset: 384)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !36, line: 641, size: 4800, elements: !515)
!515 = !{!516, !518, !519, !520, !521, !522, !523, !526, !527, !745, !4851, !4852, !4853, !4854, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !5015, !5018, !5019, !5020, !5029, !5030, !5031, !5032}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !514, file: !36, line: 642, baseType: !517, size: 16)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !49, line: 24, baseType: !101)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !514, file: !36, line: 643, baseType: !101, size: 16, offset: 16)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !514, file: !36, line: 644, baseType: !218, size: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !514, file: !36, line: 645, baseType: !128, size: 128, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !514, file: !36, line: 646, baseType: !236, size: 32, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !514, file: !36, line: 647, baseType: !58, size: 32, offset: 224)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !514, file: !36, line: 650, baseType: !524, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !36, line: 607, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !514, file: !36, line: 651, baseType: !524, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !514, file: !36, line: 654, baseType: !528, size: 64, offset: 384)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !36, line: 1966, size: 2048, align: 512, elements: !531)
!531 = !{!532, !536, !549, !555, !559, !563, !567, !571, !575, !579, !583, !584, !590, !594, !632, !663, !673, !699, !703, !707, !711, !715, !719, !725, !729}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !530, file: !36, line: 1967, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!473, !513, !473, !58}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !530, file: !36, line: 1968, baseType: !537, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!353, !473, !513, !540}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !542, line: 10, size: 128, elements: !543)
!542 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!543 = !{!544, !548}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !541, file: !542, line: 11, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !300}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !541, file: !542, line: 12, baseType: !300, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !530, file: !36, line: 1969, baseType: !550, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!84, !553, !513, !84}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !251, line: 42, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !530, file: !36, line: 1970, baseType: !556, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!524, !513, !84, !350}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !530, file: !36, line: 1972, baseType: !560, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!84, !473, !362, !84}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !530, file: !36, line: 1974, baseType: !564, size: 64, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!84, !553, !513, !473, !517, !350}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !530, file: !36, line: 1976, baseType: !568, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!84, !473, !513, !473}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !530, file: !36, line: 1977, baseType: !572, size: 64, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!84, !513, !473}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !530, file: !36, line: 1978, baseType: !576, size: 64, offset: 512)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!84, !553, !513, !473, !353}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !530, file: !36, line: 1980, baseType: !580, size: 64, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!84, !553, !513, !473, !517}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !530, file: !36, line: 1982, baseType: !572, size: 64, offset: 640)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !530, file: !36, line: 1983, baseType: !585, size: 64, offset: 704)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!84, !553, !513, !473, !517, !588}
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !49, line: 21, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !49, line: 18, baseType: !314)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !530, file: !36, line: 1985, baseType: !591, size: 64, offset: 768)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!84, !553, !513, !473, !513, !473, !58}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !530, file: !36, line: 1987, baseType: !595, size: 64, offset: 832)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!84, !553, !473, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !36, line: 226, size: 640, elements: !600)
!600 = !{!601, !602, !603, !613, !622, !623, !629, !630, !631}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !599, file: !36, line: 227, baseType: !58, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !599, file: !36, line: 228, baseType: !517, size: 16, offset: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !36, line: 241, baseType: !604, size: 32, offset: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !36, line: 241, size: 32, elements: !605)
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !604, file: !36, line: 242, baseType: !218, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !604, file: !36, line: 243, baseType: !608, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !609, line: 16, baseType: !610)
!609 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !609, line: 14, size: 32, elements: !611)
!611 = !{!612}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !610, file: !609, line: 15, baseType: !223, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !36, line: 245, baseType: !614, size: 32, offset: 96)
!614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !36, line: 245, size: 32, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !614, file: !36, line: 246, baseType: !236, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !614, file: !36, line: 247, baseType: !618, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !609, line: 20, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !609, line: 18, size: 32, elements: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !619, file: !609, line: 19, baseType: !240, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !599, file: !36, line: 249, baseType: !134, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !599, file: !36, line: 250, baseType: !624, size: 128, offset: 192)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !306, line: 13, size: 128, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !624, file: !306, line: 14, baseType: !305, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !624, file: !306, line: 15, baseType: !628, size: 64, offset: 64)
!628 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !599, file: !36, line: 251, baseType: !624, size: 128, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !599, file: !36, line: 252, baseType: !624, size: 128, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !599, file: !36, line: 259, baseType: !34, size: 64, offset: 576)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !530, file: !36, line: 1988, baseType: !633, size: 64, offset: 896)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!84, !553, !636, !638, !314, !58}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !640, line: 22, size: 1280, elements: !641)
!640 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!641 = !{!642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !639, file: !640, line: 23, baseType: !314, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !639, file: !640, line: 24, baseType: !517, size: 16, offset: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !639, file: !640, line: 25, baseType: !58, size: 32, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !639, file: !640, line: 26, baseType: !313, size: 32, offset: 96)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !639, file: !640, line: 27, baseType: !255, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !639, file: !640, line: 28, baseType: !255, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !639, file: !640, line: 41, baseType: !255, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !639, file: !640, line: 42, baseType: !588, size: 32, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !639, file: !640, line: 43, baseType: !588, size: 32, offset: 352)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !639, file: !640, line: 44, baseType: !218, size: 32, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !639, file: !640, line: 45, baseType: !236, size: 32, offset: 416)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !639, file: !640, line: 46, baseType: !134, size: 64, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !639, file: !640, line: 47, baseType: !624, size: 128, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !639, file: !640, line: 48, baseType: !624, size: 128, offset: 640)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !639, file: !640, line: 49, baseType: !624, size: 128, offset: 768)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !639, file: !640, line: 50, baseType: !624, size: 128, offset: 896)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !639, file: !640, line: 51, baseType: !255, size: 64, offset: 1024)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !639, file: !640, line: 52, baseType: !255, size: 64, offset: 1088)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !639, file: !640, line: 53, baseType: !314, size: 32, offset: 1152)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !639, file: !640, line: 54, baseType: !314, size: 32, offset: 1184)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !639, file: !640, line: 55, baseType: !255, size: 64, offset: 1216)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !530, file: !36, line: 1990, baseType: !664, size: 64, offset: 960)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!667, !473, !362, !670}
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !49, line: 66, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !136, line: 73, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !136, line: 15, baseType: !628)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 61, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !136, line: 72, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !136, line: 16, baseType: !283)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !530, file: !36, line: 1991, baseType: !674, size: 64, offset: 1024)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!84, !513, !677, !255, !255}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !679, line: 8, size: 192, elements: !680)
!679 = !DIFile(filename: "./include/linux/fiemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3549901db5ed482defb65607c38335f0")
!680 = !{!681, !682, !683, !684}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "fi_flags", scope: !678, file: !679, line: 9, baseType: !58, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "fi_extents_mapped", scope: !678, file: !679, line: 10, baseType: !58, size: 32, offset: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "fi_extents_max", scope: !678, file: !679, line: 11, baseType: !58, size: 32, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "fi_extents_start", scope: !678, file: !679, line: 12, baseType: !685, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent", file: !687, line: 17, size: 448, elements: !688)
!687 = !DIFile(filename: "./include/uapi/linux/fiemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f949abda36490fd9e5a2006af40ce33c")
!688 = !{!689, !690, !691, !692, !696, !697}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "fe_logical", scope: !686, file: !687, line: 18, baseType: !256, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "fe_physical", scope: !686, file: !687, line: 20, baseType: !256, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "fe_length", scope: !686, file: !687, line: 22, baseType: !256, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "fe_reserved64", scope: !686, file: !687, line: 23, baseType: !693, size: 128, offset: 192)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 128, elements: !694)
!694 = !{!695}
!695 = !DISubrange(count: 2)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "fe_flags", scope: !686, file: !687, line: 24, baseType: !315, size: 32, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "fe_reserved", scope: !686, file: !687, line: 25, baseType: !698, size: 96, offset: 352)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 96, elements: !161)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !530, file: !36, line: 1993, baseType: !700, size: 64, offset: 1088)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!84, !513, !84}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !530, file: !36, line: 1994, baseType: !704, size: 64, offset: 1152)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!84, !513, !473, !34, !58, !517}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !530, file: !36, line: 1997, baseType: !708, size: 64, offset: 1216)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!84, !553, !513, !34, !517}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !530, file: !36, line: 1999, baseType: !712, size: 64, offset: 1280)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!524, !553, !473, !84}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !530, file: !36, line: 2001, baseType: !716, size: 64, offset: 1344)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!84, !553, !473, !524, !84}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !530, file: !36, line: 2003, baseType: !720, size: 64, offset: 1408)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!84, !553, !473, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !36, line: 76, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !530, file: !36, line: 2005, baseType: !726, size: 64, offset: 1472)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!84, !473, !723}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !530, file: !36, line: 2006, baseType: !730, size: 64, offset: 1536)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!733, !513}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !36, line: 3192, size: 192, elements: !735)
!735 = !{!736, !744}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !734, file: !36, line: 3193, baseType: !737, size: 128)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !738, line: 296, size: 128, elements: !739)
!738 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!739 = !{!740, !741, !743}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !737, file: !738, line: 297, baseType: !60, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !737, file: !738, line: 299, baseType: !742, size: 32, offset: 32)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !49, line: 154, baseType: !58)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !737, file: !738, line: 300, baseType: !300, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !734, file: !36, line: 3194, baseType: !314, size: 32, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !514, file: !36, line: 655, baseType: !746, size: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !36, line: 1190, size: 10752, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !2260, !2402, !2442, !2525, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2542, !2546, !2547, !3520, !3526, !3527, !3530, !3531, !3532, !3573, !4727, !4728, !4729, !4730, !4731, !4732, !4735, !4736, !4743, !4744, !4745, !4746, !4805, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !747, file: !36, line: 1191, baseType: !128, size: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !747, file: !36, line: 1192, baseType: !588, size: 32, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !747, file: !36, line: 1193, baseType: !93, size: 8, offset: 160)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !747, file: !36, line: 1194, baseType: !283, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !747, file: !36, line: 1195, baseType: !134, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !747, file: !36, line: 1196, baseType: !755, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !36, line: 2366, size: 576, elements: !757)
!757 = !{!758, !759, !760, !766, !770, !774, !778, !2248, !2249, !2250, !2252, !2253, !2254, !2256, !2257, !2258, !2259}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !756, file: !36, line: 2367, baseType: !353, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !756, file: !36, line: 2368, baseType: !84, size: 32, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !756, file: !36, line: 2376, baseType: !761, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!84, !764}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !470, line: 21, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !756, file: !36, line: 2377, baseType: !767, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !36, line: 75, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !756, file: !36, line: 2378, baseType: !771, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!473, !755, !84, !353, !300}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !756, file: !36, line: 2380, baseType: !775, size: 64, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !746}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !756, file: !36, line: 2381, baseType: !779, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !781, line: 402, size: 9216, align: 512, elements: !782)
!781 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!782 = !{!783, !790, !791, !795, !1901, !1927, !1928, !1929, !1930, !1934, !1937, !1938, !1939, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2007, !2011, !2029, !2047, !2048, !2049, !2050, !2059, !2082, !2083, !2086, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2100, !2101, !2201, !2209, !2210, !2211, !2213, !2217, !2218, !2227, !2228, !2229, !2230, !2232, !2233, !2234, !2241, !2242, !2243, !2247}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !780, file: !781, line: 403, baseType: !784, size: 32)
!784 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !781, line: 312, baseType: !58, size: 32, elements: !785)
!785 = !{!786, !787, !788, !789}
!786 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!787 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!788 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!789 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !780, file: !781, line: 406, baseType: !128, size: 128, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !780, file: !781, line: 409, baseType: !792, size: 448, offset: 192)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !793)
!793 = !{!794}
!794 = !DISubrange(count: 56)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !780, file: !781, line: 417, baseType: !796, size: 768, offset: 640)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !781, line: 45, size: 768, elements: !797)
!797 = !{!798, !1894, !1895, !1896, !1899}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !796, file: !781, line: 46, baseType: !799, size: 512)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !800, line: 64, size: 512, elements: !801)
!800 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!801 = !{!802, !803, !804, !806, !850, !1772, !1884, !1889, !1890, !1891, !1892, !1893}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !799, file: !800, line: 65, baseType: !353, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !799, file: !800, line: 66, baseType: !128, size: 128, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !799, file: !800, line: 67, baseType: !805, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !799, file: !800, line: 68, baseType: !807, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !800, line: 168, size: 768, elements: !809)
!809 = !{!810, !811, !812, !813}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !808, file: !800, line: 169, baseType: !128, size: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !808, file: !800, line: 170, baseType: !60, size: 32, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !808, file: !800, line: 171, baseType: !799, size: 512, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !808, file: !800, line: 172, baseType: !814, size: 64, offset: 704)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !816)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !800, line: 133, size: 192, elements: !817)
!817 = !{!818, !825, !830}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !816, file: !800, line: 134, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!84, !823}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !799)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !816, file: !800, line: 135, baseType: !826, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!353, !823}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !816, file: !800, line: 136, baseType: !831, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !832)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!84, !823, !835}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !800, line: 125, size: 20736, elements: !837)
!837 = !{!838, !840, !844, !845, !849}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !836, file: !800, line: 126, baseType: !839, size: 192)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 192, elements: !161)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !836, file: !800, line: 127, baseType: !841, size: 4096, offset: 192)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 4096, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !836, file: !800, line: 128, baseType: !84, size: 32, offset: 4288)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !836, file: !800, line: 129, baseType: !846, size: 16384, offset: 4320)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 2048)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !836, file: !800, line: 130, baseType: !84, size: 32, offset: 20704)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !799, file: !800, line: 69, baseType: !851, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !800, line: 116, size: 384, elements: !854)
!854 = !{!855, !859, !878, !1728, !1762, !1766}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !853, file: !800, line: 117, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !805}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !853, file: !800, line: 118, baseType: !860, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !863, line: 254, size: 128, elements: !864)
!863 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!864 = !{!865, !874}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !862, file: !863, line: 255, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!667, !805, !869, !362}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !863, line: 30, size: 128, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !870, file: !863, line: 31, baseType: !353, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !870, file: !863, line: 32, baseType: !517, size: 16, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !862, file: !863, line: 256, baseType: !875, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!667, !805, !869, !353, !670}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !853, file: !800, line: 119, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !882)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !863, line: 84, size: 320, elements: !883)
!883 = !{!884, !885, !889, !1724, !1726}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !882, file: !863, line: 85, baseType: !353, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !882, file: !863, line: 86, baseType: !886, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!517, !805, !869, !84}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !882, file: !863, line: 88, baseType: !890, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!517, !805, !893, !84}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !863, line: 175, size: 512, elements: !895)
!895 = !{!896, !897, !898, !899, !1715, !1719, !1720}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !894, file: !863, line: 176, baseType: !870, size: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !894, file: !863, line: 177, baseType: !670, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !894, file: !863, line: 178, baseType: !300, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !894, file: !863, line: 179, baseType: !900, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!903}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !36, line: 472, size: 1536, align: 64, elements: !905)
!905 = !{!906, !907, !908, !909, !910, !911, !919, !920, !921, !1707, !1708, !1709, !1712, !1713, !1714}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !904, file: !36, line: 473, baseType: !513, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !904, file: !36, line: 474, baseType: !737, size: 128, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !904, file: !36, line: 475, baseType: !288, size: 320, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !904, file: !36, line: 476, baseType: !742, size: 32, offset: 512)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !904, file: !36, line: 477, baseType: !80, size: 32, offset: 544)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !904, file: !36, line: 482, baseType: !912, size: 128, offset: 576)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !280, line: 26, size: 128, elements: !913)
!913 = !{!914, !918}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !912, file: !280, line: 27, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !280, line: 12, size: 64, elements: !916)
!916 = !{!917}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !915, file: !280, line: 13, baseType: !285, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !912, file: !280, line: 28, baseType: !285, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !904, file: !36, line: 483, baseType: !283, size: 64, offset: 704)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !904, file: !36, line: 484, baseType: !283, size: 64, offset: 768)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !904, file: !36, line: 485, baseType: !922, size: 64, offset: 832)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !924)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !36, line: 404, size: 1280, elements: !925)
!925 = !{!926, !1443, !1513, !1517, !1521, !1538, !1544, !1548, !1553, !1557, !1561, !1565, !1664, !1675, !1679, !1683, !1688, !1692, !1699, !1703}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !924, file: !36, line: 405, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!84, !930, !1418}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !932, line: 74, size: 512, align: 128, elements: !933)
!932 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!933 = !{!934, !935, !1412, !1417}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !931, file: !932, line: 75, baseType: !283, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !932, line: 83, baseType: !936, size: 320, offset: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !932, line: 83, size: 320, elements: !937)
!937 = !{!938, !959, !973, !977, !1411}
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !932, line: 84, baseType: !939, size: 320)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !932, line: 84, size: 320, elements: !940)
!940 = !{!941, !952, !953, !958}
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !932, line: 90, baseType: !942, size: 128)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !932, line: 90, size: 128, elements: !943)
!943 = !{!944, !945, !950, !951}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !942, file: !932, line: 91, baseType: !128, size: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !932, line: 94, baseType: !946, size: 128)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !942, file: !932, line: 94, size: 128, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !946, file: !932, line: 96, baseType: !300, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !946, file: !932, line: 98, baseType: !58, size: 32, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !942, file: !932, line: 102, baseType: !128, size: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !942, file: !932, line: 103, baseType: !128, size: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !939, file: !932, line: 106, baseType: !903, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !932, line: 107, baseType: !954, size: 64, offset: 192)
!954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !932, line: 107, size: 64, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !954, file: !932, line: 108, baseType: !283, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !954, file: !932, line: 109, baseType: !283, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !939, file: !932, line: 117, baseType: !283, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !932, line: 119, baseType: !960, size: 320)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !932, line: 119, size: 320, elements: !961)
!961 = !{!962, !963, !966, !967, !968}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !960, file: !932, line: 124, baseType: !283, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !960, file: !932, line: 125, baseType: !964, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !932, line: 125, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !960, file: !932, line: 126, baseType: !283, size: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !960, file: !932, line: 127, baseType: !283, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !932, line: 128, baseType: !969, size: 64, offset: 256)
!969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !932, line: 128, size: 64, elements: !970)
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !969, file: !932, line: 133, baseType: !283, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !969, file: !932, line: 138, baseType: !106, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !932, line: 141, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !932, line: 141, size: 64, elements: !975)
!975 = !{!976}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !974, file: !932, line: 142, baseType: !283, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !932, line: 144, baseType: !978, size: 128)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !932, line: 144, size: 128, elements: !979)
!979 = !{!980, !1410}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !978, file: !932, line: 146, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !983, line: 126, size: 1216, elements: !984)
!983 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!984 = !{!985, !995, !1016, !1027, !1035, !1036, !1037, !1392, !1393, !1394}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !982, file: !983, line: 127, baseType: !986, size: 384)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !983, line: 21, size: 384, elements: !987)
!987 = !{!988, !989, !991, !992, !993, !994}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !986, file: !983, line: 22, baseType: !283, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !986, file: !983, line: 23, baseType: !990, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !986, file: !983, line: 24, baseType: !990, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !986, file: !983, line: 25, baseType: !283, size: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !986, file: !983, line: 26, baseType: !283, size: 64, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !986, file: !983, line: 27, baseType: !283, size: 64, offset: 320)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !982, file: !983, line: 128, baseType: !996, size: 128, offset: 384)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !997, line: 105, size: 128, elements: !998)
!997 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !996, file: !997, line: 110, baseType: !283, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !996, file: !997, line: 118, baseType: !1001, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !997, line: 95, size: 448, elements: !1003)
!1003 = !{!1004, !1005, !1011, !1012, !1013, !1014, !1015}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1002, file: !997, line: 96, baseType: !106, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1002, file: !997, line: 97, baseType: !1006, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !997, line: 60, baseType: !1008)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !1010}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1002, file: !997, line: 98, baseType: !1006, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1002, file: !997, line: 99, baseType: !350, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1002, file: !997, line: 100, baseType: !350, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1002, file: !997, line: 101, baseType: !48, size: 128, align: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1002, file: !997, line: 102, baseType: !1010, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !982, file: !983, line: 129, baseType: !1017, size: 256, offset: 512)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1018, line: 26, size: 256, elements: !1019)
!1018 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1017, file: !1018, line: 27, baseType: !58, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1017, file: !1018, line: 28, baseType: !1022, size: 192, offset: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1023, line: 43, size: 192, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1022, file: !1023, line: 44, baseType: !121, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1022, file: !1023, line: 45, baseType: !128, size: 128, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !982, file: !983, line: 130, baseType: !1028, size: 32, offset: 768)
!1028 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !983, line: 68, baseType: !58, size: 32, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1033, !1034}
!1030 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!1031 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!1032 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!1033 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!1034 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !982, file: !983, line: 131, baseType: !58, size: 32, offset: 800)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !982, file: !983, line: 132, baseType: !283, size: 64, offset: 832)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !982, file: !983, line: 133, baseType: !1038, size: 64, offset: 896)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1040)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !983, line: 77, size: 192, elements: !1041)
!1041 = !{!1042, !1046, !1388}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1040, file: !983, line: 83, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !930}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1040, file: !983, line: 89, baseType: !1047, size: 64, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !932, line: 1184, baseType: !58)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1053, line: 512, size: 896, elements: !1054)
!1053 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1054 = !{!1055, !1340, !1356, !1363, !1370, !1380, !1381, !1382, !1384, !1386}
!1055 = !DIDerivedType(tag: DW_TAG_member, scope: !1052, file: !1053, line: 513, baseType: !1056, size: 320)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !1053, line: 513, size: 320, elements: !1057)
!1057 = !{!1058, !1336, !1337, !1338, !1339}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1056, file: !1053, line: 514, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !932, line: 625, size: 1344, elements: !1061)
!1061 = !{!1062, !1071, !1241, !1247, !1254, !1255, !1260, !1261, !1266, !1267, !1270, !1329, !1330, !1331, !1332, !1333, !1334}
!1062 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !932, line: 628, baseType: !1063, size: 128)
!1063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1060, file: !932, line: 628, size: 128, elements: !1064)
!1064 = !{!1065, !1070}
!1065 = !DIDerivedType(tag: DW_TAG_member, scope: !1063, file: !932, line: 629, baseType: !1066, size: 128)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1063, file: !932, line: 629, size: 128, elements: !1067)
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1066, file: !932, line: 631, baseType: !283, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1066, file: !932, line: 632, baseType: !283, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1063, file: !932, line: 635, baseType: !48, size: 128, align: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1060, file: !932, line: 639, baseType: !1072, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !932, line: 733, size: 10240, elements: !1074)
!1074 = !{!1075, !1239}
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !932, line: 734, baseType: !1076, size: 10240)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1073, file: !932, line: 734, size: 10240, elements: !1077)
!1077 = !{!1078, !1082, !1096, !1100, !1101, !1102, !1103, !1104, !1105, !1114, !1115, !1116, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1155, !1157, !1160, !1207, !1208, !1209, !1212, !1213, !1214, !1217, !1218, !1219, !1226, !1227}
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !932, line: 739, baseType: !1079, size: 512, align: 512)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1076, file: !932, line: 739, size: 512, align: 512, elements: !1080)
!1080 = !{!1081}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1079, file: !932, line: 747, baseType: !80, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1076, file: !932, line: 750, baseType: !1083, size: 128, offset: 512)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1084, line: 218, size: 128, elements: !1085)
!1084 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1085 = !{!1086, !1094, !1095}
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1083, file: !1084, line: 219, baseType: !1087, size: 32)
!1087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1083, file: !1084, line: 219, size: 32, elements: !1088)
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1087, file: !1084, line: 220, baseType: !60, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1087, file: !1084, line: 221, baseType: !1091)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1084, line: 197, baseType: !1092)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1084, line: 197, elements: !1093)
!1093 = !{}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1083, file: !1084, line: 223, baseType: !58, size: 32, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1083, file: !1084, line: 224, baseType: !300, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1076, file: !932, line: 752, baseType: !1097, size: 64, offset: 640)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!283, !34, !283, !283, !283, !283}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1076, file: !932, line: 756, baseType: !283, size: 64, offset: 704)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1076, file: !932, line: 757, baseType: !283, size: 64, offset: 768)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1076, file: !932, line: 760, baseType: !283, size: 64, offset: 832)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1076, file: !932, line: 761, baseType: !283, size: 64, offset: 896)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1076, file: !932, line: 763, baseType: !283, size: 64, offset: 960)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1076, file: !932, line: 764, baseType: !1106, size: 64, offset: 1024)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1108, line: 299, baseType: !1109)
!1108 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1108, line: 299, size: 64, elements: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1109, file: !1108, line: 299, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1113, line: 18, baseType: !283)
!1113 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1076, file: !932, line: 773, baseType: !80, size: 32, offset: 1088)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1076, file: !932, line: 785, baseType: !80, size: 32, offset: 1120)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1076, file: !932, line: 795, baseType: !1117, size: 64, offset: 1152)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !932, line: 726, size: 128, elements: !1119)
!1119 = !{!1120, !1121}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1118, file: !932, line: 727, baseType: !255, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1118, file: !932, line: 728, baseType: !84, size: 32, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1076, file: !932, line: 801, baseType: !283, size: 64, offset: 1216)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1076, file: !932, line: 804, baseType: !106, size: 64, offset: 1280)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1076, file: !932, line: 806, baseType: !84, size: 32, offset: 1344)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1076, file: !932, line: 808, baseType: !60, size: 32, offset: 1376)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1076, file: !932, line: 823, baseType: !288, size: 320, offset: 1408)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1076, file: !932, line: 825, baseType: !128, size: 128, offset: 1728)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1076, file: !932, line: 845, baseType: !84, size: 32, offset: 1856)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1076, file: !932, line: 849, baseType: !283, size: 64, offset: 1920)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1076, file: !932, line: 850, baseType: !283, size: 64, offset: 1984)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1076, file: !932, line: 852, baseType: !283, size: 64, offset: 2048)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1076, file: !932, line: 853, baseType: !283, size: 64, offset: 2112)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1076, file: !932, line: 854, baseType: !108, size: 64, offset: 2176)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1076, file: !932, line: 855, baseType: !283, size: 64, offset: 2240)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1076, file: !932, line: 856, baseType: !283, size: 64, offset: 2304)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1076, file: !932, line: 857, baseType: !283, size: 64, offset: 2368)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1076, file: !932, line: 858, baseType: !283, size: 64, offset: 2432)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1076, file: !932, line: 865, baseType: !484, size: 32, offset: 2496)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1076, file: !932, line: 867, baseType: !60, size: 32, offset: 2528)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1076, file: !932, line: 869, baseType: !283, size: 64, offset: 2560)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1076, file: !932, line: 869, baseType: !283, size: 64, offset: 2624)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1076, file: !932, line: 869, baseType: !283, size: 64, offset: 2688)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1076, file: !932, line: 869, baseType: !283, size: 64, offset: 2752)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1076, file: !932, line: 870, baseType: !283, size: 64, offset: 2816)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1076, file: !932, line: 870, baseType: !283, size: 64, offset: 2880)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1076, file: !932, line: 870, baseType: !283, size: 64, offset: 2944)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1076, file: !932, line: 871, baseType: !283, size: 64, offset: 3008)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1076, file: !932, line: 871, baseType: !283, size: 64, offset: 3072)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1076, file: !932, line: 871, baseType: !283, size: 64, offset: 3136)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1076, file: !932, line: 871, baseType: !283, size: 64, offset: 3200)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1076, file: !932, line: 873, baseType: !1152, size: 3328, offset: 3264)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 3328, elements: !1153)
!1153 = !{!1154}
!1154 = !DISubrange(count: 52)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1076, file: !932, line: 875, baseType: !1156, size: 1280, offset: 6592)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 1280, elements: !188)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1076, file: !932, line: 877, baseType: !1158, size: 64, offset: 7872)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !932, line: 877, flags: DIFlagFwdDecl)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1076, file: !932, line: 880, baseType: !1161, size: 1088, offset: 7936)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1162, line: 72, baseType: !1163)
!1162 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1162, line: 23, size: 1088, elements: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1172, !1173, !1174, !1175, !1202, !1203, !1204}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1163, file: !1162, line: 28, baseType: !255, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1163, file: !1162, line: 38, baseType: !108, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1163, file: !1162, line: 40, baseType: !283, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1163, file: !1162, line: 43, baseType: !288, size: 320, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1163, file: !1162, line: 44, baseType: !1170, size: 64, offset: 512)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1162, line: 44, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1163, file: !1162, line: 48, baseType: !283, size: 64, offset: 576)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1163, file: !1162, line: 59, baseType: !116, size: 256, offset: 640)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1163, file: !1162, line: 60, baseType: !300, size: 64, offset: 896)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1163, file: !1162, line: 61, baseType: !1176, size: 64, offset: 960)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1179, line: 13, size: 1216, elements: !1180)
!1179 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1178, file: !1179, line: 14, baseType: !300, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1178, file: !1179, line: 15, baseType: !283, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1178, file: !1179, line: 17, baseType: !283, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1178, file: !1179, line: 17, baseType: !283, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1178, file: !1179, line: 18, baseType: !283, size: 64, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1178, file: !1179, line: 18, baseType: !283, size: 64, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1178, file: !1179, line: 19, baseType: !1188, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1178, file: !1179, line: 21, baseType: !628, size: 64, offset: 448)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1178, file: !1179, line: 23, baseType: !628, size: 64, offset: 512)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1178, file: !1179, line: 24, baseType: !628, size: 64, offset: 576)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1178, file: !1179, line: 25, baseType: !628, size: 64, offset: 640)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1178, file: !1179, line: 26, baseType: !628, size: 64, offset: 704)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1178, file: !1179, line: 27, baseType: !628, size: 64, offset: 768)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1178, file: !1179, line: 28, baseType: !628, size: 64, offset: 832)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1178, file: !1179, line: 29, baseType: !628, size: 64, offset: 896)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1178, file: !1179, line: 30, baseType: !628, size: 64, offset: 960)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1178, file: !1179, line: 31, baseType: !628, size: 64, offset: 1024)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1178, file: !1179, line: 32, baseType: !628, size: 64, offset: 1088)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1178, file: !1179, line: 33, baseType: !628, size: 64, offset: 1152)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1163, file: !1162, line: 63, baseType: !80, size: 32, offset: 1024)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1163, file: !1162, line: 69, baseType: !99, size: 16, offset: 1056)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1163, file: !1162, line: 70, baseType: !1205, size: 16, offset: 1072)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !90, line: 18, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !92, line: 23, baseType: !319)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1076, file: !932, line: 882, baseType: !283, size: 64, offset: 9024)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1076, file: !932, line: 885, baseType: !60, size: 32, offset: 9088)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1076, file: !932, line: 886, baseType: !1210, size: 64, offset: 9152)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !932, line: 732, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1076, file: !932, line: 901, baseType: !435, size: 64, offset: 9216)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1076, file: !932, line: 904, baseType: !34, size: 64, offset: 9280)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1076, file: !932, line: 906, baseType: !1215, size: 64, offset: 9344)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !932, line: 906, flags: DIFlagFwdDecl)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1076, file: !932, line: 930, baseType: !80, size: 32, offset: 9408)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1076, file: !932, line: 933, baseType: !80, size: 32, offset: 9440)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1076, file: !932, line: 935, baseType: !1220, size: 64, offset: 9472)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1221, line: 103, size: 64, elements: !1222)
!1221 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!1222 = !{!1223}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1220, file: !1221, line: 104, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !1221, line: 101, flags: DIFlagFwdDecl)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1076, file: !932, line: 940, baseType: !106, size: 64, offset: 9536)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1076, file: !932, line: 942, baseType: !1228, size: 256, offset: 9600)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1229, line: 98, size: 256, elements: !1230)
!1229 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1230 = !{!1231, !1232, !1233}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1228, file: !1229, line: 99, baseType: !106, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1228, file: !1229, line: 100, baseType: !128, size: 128, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1228, file: !1229, line: 101, baseType: !1234, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1229, line: 21, baseType: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1073, file: !932, line: 986, baseType: !1240, offset: 10240)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, elements: !207)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1060, file: !932, line: 640, baseType: !1242, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1108, line: 297, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1108, line: 297, size: 64, elements: !1244)
!1244 = !{!1245}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1243, file: !1108, line: 297, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1113, line: 19, baseType: !283)
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !932, line: 646, baseType: !1248, size: 64, offset: 256)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1060, file: !932, line: 646, size: 64, elements: !1249)
!1249 = !{!1250, !1253}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1248, file: !932, line: 647, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !932, line: 542, baseType: !283)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1248, file: !932, line: 648, baseType: !1252, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1060, file: !932, line: 666, baseType: !84, size: 32, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1060, file: !932, line: 667, baseType: !1256, size: 64, offset: 384)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !932, line: 579, size: 320, elements: !1258)
!1258 = !{!1259}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1257, file: !932, line: 580, baseType: !288, size: 320)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1060, file: !932, line: 670, baseType: !350, size: 8, offset: 448)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1060, file: !932, line: 681, baseType: !1262, size: 256, offset: 512)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !932, line: 678, size: 256, elements: !1263)
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1262, file: !932, line: 679, baseType: !279, size: 192, align: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1262, file: !932, line: 680, baseType: !283, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1060, file: !932, line: 689, baseType: !128, size: 128, offset: 768)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1060, file: !932, line: 691, baseType: !1268, size: 64, offset: 896)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !932, line: 691, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1060, file: !932, line: 694, baseType: !1271, size: 64, offset: 960)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1053, line: 563, size: 1024, elements: !1274)
!1274 = !{!1275, !1279, !1280, !1284, !1288, !1292, !1293, !1297, !1301, !1305, !1306, !1307, !1311, !1315, !1321, !1325}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1273, file: !1053, line: 564, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !1059}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1273, file: !1053, line: 569, baseType: !1276, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1273, file: !1053, line: 571, baseType: !1281, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!84, !1059, !283}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1273, file: !1053, line: 572, baseType: !1285, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!84, !1059}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1273, file: !1053, line: 578, baseType: !1289, size: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!84, !1059, !283, !283, !283}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1273, file: !1053, line: 580, baseType: !1047, size: 64, offset: 320)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1273, file: !1053, line: 581, baseType: !1294, size: 64, offset: 384)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!1050, !1051, !58}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1273, file: !1053, line: 582, baseType: !1298, size: 64, offset: 448)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!1050, !1051, !283, !283}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1273, file: !1053, line: 584, baseType: !1302, size: 64, offset: 512)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!283, !1059}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1273, file: !1053, line: 588, baseType: !1047, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1273, file: !1053, line: 591, baseType: !1047, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1273, file: !1053, line: 597, baseType: !1308, size: 64, offset: 704)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!84, !1059, !283, !300, !84, !84}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1273, file: !1053, line: 603, baseType: !1312, size: 64, offset: 768)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!353, !1059}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1273, file: !1053, line: 613, baseType: !1316, size: 64, offset: 832)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!84, !1059, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !932, line: 717, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1273, file: !1053, line: 625, baseType: !1322, size: 64, offset: 896)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!1319, !1059, !283}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1273, file: !1053, line: 633, baseType: !1326, size: 64, offset: 960)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!930, !1059, !283}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1060, file: !932, line: 697, baseType: !283, size: 64, offset: 1024)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1060, file: !932, line: 699, baseType: !34, size: 64, offset: 1088)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1060, file: !932, line: 700, baseType: !300, size: 64, offset: 1152)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1060, file: !932, line: 711, baseType: !106, size: 64, offset: 1216)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1060, file: !932, line: 717, baseType: !1319, size: 64, offset: 1280)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1060, file: !932, line: 722, baseType: !1335, offset: 1344)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !932, line: 570, elements: !1093)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1056, file: !1053, line: 515, baseType: !742, size: 32, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1056, file: !1053, line: 516, baseType: !283, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1056, file: !1053, line: 517, baseType: !283, size: 64, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1056, file: !1053, line: 518, baseType: !283, size: 64, offset: 256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1052, file: !1053, line: 520, baseType: !1341, size: 32, offset: 320)
!1341 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !932, line: 1325, baseType: !58, size: 32, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355}
!1343 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!1344 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!1345 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!1346 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!1347 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!1348 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!1349 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!1350 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!1351 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!1352 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!1353 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!1354 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!1355 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1052, file: !1053, line: 522, baseType: !1357, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1113, line: 22, baseType: !1359)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1113, line: 22, size: 64, elements: !1360)
!1360 = !{!1361}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1359, file: !1113, line: 22, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1113, line: 15, baseType: !283)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1052, file: !1053, line: 524, baseType: !1364, size: 64, offset: 448)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1108, line: 372, baseType: !1366)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1108, line: 372, size: 64, elements: !1367)
!1367 = !{!1368}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1366, file: !1108, line: 372, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1113, line: 16, baseType: !283)
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1052, file: !1053, line: 527, baseType: !1371, size: 64, offset: 512)
!1371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1052, file: !1053, line: 527, size: 64, elements: !1372)
!1372 = !{!1373, !1379}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1371, file: !1053, line: 528, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1113, line: 21, baseType: !1375)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1113, line: 21, size: 64, elements: !1376)
!1376 = !{!1377}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1375, file: !1113, line: 21, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1113, line: 14, baseType: !283)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1371, file: !1053, line: 529, baseType: !1358, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1052, file: !1053, line: 534, baseType: !930, size: 64, offset: 576)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1052, file: !1053, line: 535, baseType: !930, size: 64, offset: 640)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1052, file: !1053, line: 541, baseType: !1383, size: 64, offset: 704)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1052, file: !1053, line: 545, baseType: !1385, size: 64, offset: 768)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1052, file: !1053, line: 549, baseType: !1387, size: 64, offset: 832)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1108, line: 520, baseType: !930)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1040, file: !983, line: 100, baseType: !1389, size: 64, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!84, !981, !283, !283, !84}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !982, file: !983, line: 134, baseType: !300, size: 64, offset: 960)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !982, file: !983, line: 135, baseType: !84, size: 32, offset: 1024)
!1394 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !983, line: 136, baseType: !1395, size: 128, offset: 1088)
!1395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !983, line: 136, size: 128, elements: !1396)
!1396 = !{!1397, !1403}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1395, file: !983, line: 137, baseType: !1398, size: 128)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1399, line: 6, size: 128, elements: !1400)
!1399 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1398, file: !1399, line: 7, baseType: !255, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1398, file: !1399, line: 8, baseType: !255, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !983, line: 138, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1395, file: !983, line: 138, elements: !1405)
!1405 = !{!1406, !1408}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1404, file: !983, line: 138, baseType: !1407)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !983, line: 138, elements: !1093)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1404, file: !983, line: 138, baseType: !1409)
!1409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1398, elements: !207)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !978, file: !932, line: 147, baseType: !300, size: 64, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !936, file: !932, line: 161, baseType: !48, size: 128, align: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !932, line: 164, baseType: !1413, size: 32, offset: 384)
!1413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !932, line: 164, size: 32, elements: !1414)
!1414 = !{!1415, !1416}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1413, file: !932, line: 169, baseType: !80, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1413, file: !932, line: 177, baseType: !58, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !931, file: !932, line: 181, baseType: !80, size: 32, offset: 416)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !1420, line: 42, size: 384, elements: !1421)
!1420 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1419, file: !1420, line: 43, baseType: !628, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1419, file: !1420, line: 45, baseType: !628, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1419, file: !1420, line: 52, baseType: !134, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1419, file: !1420, line: 53, baseType: !134, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1419, file: !1420, line: 55, baseType: !1427, size: 32, offset: 256)
!1427 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !1420, line: 32, baseType: !58, size: 32, elements: !1428)
!1428 = !{!1429, !1430}
!1429 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!1430 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1419, file: !1420, line: 57, baseType: !58, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1419, file: !1420, line: 58, baseType: !58, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1419, file: !1420, line: 59, baseType: !58, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1419, file: !1420, line: 60, baseType: !58, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1419, file: !1420, line: 61, baseType: !58, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1419, file: !1420, line: 62, baseType: !58, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1419, file: !1420, line: 63, baseType: !58, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1419, file: !1420, line: 71, baseType: !58, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1419, file: !1420, line: 78, baseType: !1440, size: 64, offset: 320)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !1420, line: 78, flags: DIFlagFwdDecl)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !924, file: !36, line: 406, baseType: !1444, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!84, !34, !1447}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !932, line: 293, size: 1536, elements: !1449)
!1449 = !{!1450, !1480, !1494}
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !932, line: 295, baseType: !1451, size: 512)
!1451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !932, line: 295, size: 512, elements: !1452)
!1452 = !{!1453, !1479}
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1451, file: !932, line: 296, baseType: !1454, size: 448)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1451, file: !932, line: 296, size: 448, elements: !1455)
!1455 = !{!1456, !1457, !1466, !1467, !1468, !1477, !1478}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1454, file: !932, line: 298, baseType: !283, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !932, line: 299, baseType: !1458, size: 128, offset: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !932, line: 299, size: 128, elements: !1459)
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1458, file: !932, line: 300, baseType: !128, size: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1458, file: !932, line: 302, baseType: !1462, size: 128)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1458, file: !932, line: 302, size: 128, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1462, file: !932, line: 303, baseType: !300, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1462, file: !932, line: 305, baseType: !58, size: 32, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1454, file: !932, line: 310, baseType: !903, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1454, file: !932, line: 311, baseType: !283, size: 64, offset: 256)
!1468 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !932, line: 312, baseType: !1469, size: 64, offset: 320)
!1469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !932, line: 312, size: 64, elements: !1470)
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1469, file: !932, line: 313, baseType: !300, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1469, file: !932, line: 314, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !932, line: 257, baseType: !1474)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !932, line: 255, size: 64, elements: !1475)
!1475 = !{!1476}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1474, file: !932, line: 256, baseType: !283, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1454, file: !932, line: 316, baseType: !80, size: 32, offset: 384)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1454, file: !932, line: 317, baseType: !80, size: 32, offset: 416)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1451, file: !932, line: 323, baseType: !931, size: 512, align: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !932, line: 325, baseType: !1481, size: 512, offset: 512)
!1481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !932, line: 325, size: 512, elements: !1482)
!1482 = !{!1483, !1493}
!1483 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !932, line: 326, baseType: !1484, size: 320)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1481, file: !932, line: 326, size: 320, elements: !1485)
!1485 = !{!1486, !1487, !1488, !1489, !1490, !1491, !1492}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1484, file: !932, line: 327, baseType: !283, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1484, file: !932, line: 328, baseType: !283, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1484, file: !932, line: 329, baseType: !283, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1484, file: !932, line: 331, baseType: !80, size: 32, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1484, file: !932, line: 332, baseType: !80, size: 32, offset: 224)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1484, file: !932, line: 333, baseType: !80, size: 32, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1484, file: !932, line: 335, baseType: !58, size: 32, offset: 288)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1481, file: !932, line: 339, baseType: !931, size: 512, align: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !932, line: 341, baseType: !1495, size: 512, offset: 1024)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !932, line: 341, size: 512, elements: !1496)
!1496 = !{!1497, !1506, !1512}
!1497 = !DIDerivedType(tag: DW_TAG_member, scope: !1495, file: !932, line: 342, baseType: !1498, size: 384)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1495, file: !932, line: 342, size: 384, elements: !1499)
!1499 = !{!1500, !1501, !1502, !1503, !1504, !1505}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1498, file: !932, line: 343, baseType: !283, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1498, file: !932, line: 344, baseType: !283, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1498, file: !932, line: 346, baseType: !300, size: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1498, file: !932, line: 347, baseType: !300, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1498, file: !932, line: 348, baseType: !300, size: 64, offset: 256)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1498, file: !932, line: 349, baseType: !300, size: 64, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, scope: !1495, file: !932, line: 352, baseType: !1507, size: 256)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1495, file: !932, line: 352, size: 256, elements: !1508)
!1508 = !{!1509, !1510, !1511}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1507, file: !932, line: 353, baseType: !283, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1507, file: !932, line: 354, baseType: !283, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1507, file: !932, line: 356, baseType: !128, size: 128, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1495, file: !932, line: 359, baseType: !931, size: 512, align: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !924, file: !36, line: 409, baseType: !1514, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!84, !903, !1418}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !924, file: !36, line: 412, baseType: !1518, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!350, !903, !1447}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !924, file: !36, line: 414, baseType: !1522, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{null, !1525}
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1527, line: 1276, size: 448, elements: !1528)
!1527 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1528 = !{!1529, !1530, !1531, !1533, !1534, !1535, !1536, !1537}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1526, file: !1527, line: 1277, baseType: !34, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1526, file: !1527, line: 1278, baseType: !903, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1526, file: !1527, line: 1279, baseType: !1532, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1526, file: !1527, line: 1281, baseType: !283, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1526, file: !1527, line: 1282, baseType: !58, size: 32, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1526, file: !1527, line: 1283, baseType: !58, size: 32, offset: 288)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1526, file: !1527, line: 1284, baseType: !350, size: 8, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1526, file: !1527, line: 1285, baseType: !283, size: 64, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !924, file: !36, line: 416, baseType: !1539, size: 64, offset: 320)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!84, !34, !903, !134, !58, !1542, !1543}
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !924, file: !36, line: 419, baseType: !1545, size: 64, offset: 384)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!84, !34, !903, !134, !58, !58, !930, !300}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !924, file: !36, line: 424, baseType: !1549, size: 64, offset: 448)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!1552, !903, !1552}
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !49, line: 131, baseType: !255)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !924, file: !36, line: 425, baseType: !1554, size: 64, offset: 512)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{null, !1447, !670, !670}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !924, file: !36, line: 426, baseType: !1558, size: 64, offset: 576)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!350, !1447, !742}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !924, file: !36, line: 427, baseType: !1562, size: 64, offset: 640)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !1447}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !924, file: !36, line: 428, baseType: !1566, size: 64, offset: 704)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!667, !1569, !1607}
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !36, line: 373, size: 384, elements: !1571)
!1571 = !{!1572, !1573, !1574, !1578, !1579, !1580, !1581}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1570, file: !36, line: 374, baseType: !34, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1570, file: !36, line: 375, baseType: !134, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1570, file: !36, line: 376, baseType: !1575, size: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{null, !1569, !628}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1570, file: !36, line: 377, baseType: !300, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1570, file: !36, line: 378, baseType: !84, size: 32, offset: 256)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1570, file: !36, line: 379, baseType: !99, size: 16, offset: 288)
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !36, line: 380, baseType: !1582, size: 64, offset: 320)
!1582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1570, file: !36, line: 380, size: 64, elements: !1583)
!1583 = !{!1584, !1603}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1582, file: !36, line: 386, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1527, line: 998, size: 448, elements: !1587)
!1587 = !{!1588, !1589, !1590}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1586, file: !1527, line: 999, baseType: !1447, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1586, file: !1527, line: 1000, baseType: !84, size: 32, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1586, file: !1527, line: 1001, baseType: !1591, size: 320, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !193, line: 14, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !193, line: 30, size: 320, elements: !1593)
!1593 = !{!1594, !1595, !1596, !1602}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1592, file: !193, line: 31, baseType: !58, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1592, file: !193, line: 32, baseType: !300, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1592, file: !193, line: 33, baseType: !1597, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !193, line: 16, baseType: !1598)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!84, !1601, !58, !84, !300}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1592, file: !193, line: 34, baseType: !128, size: 128, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1582, file: !36, line: 395, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!667, !300}
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1609, line: 41, size: 320, elements: !1610)
!1609 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1616, !1621, !1659}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1608, file: !1609, line: 42, baseType: !89, size: 8)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1608, file: !1609, line: 43, baseType: !350, size: 8, offset: 8)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1608, file: !1609, line: 44, baseType: !350, size: 8, offset: 16)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1608, file: !1609, line: 45, baseType: !350, size: 8, offset: 24)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1608, file: !1609, line: 46, baseType: !350, size: 8, offset: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !1609, line: 47, baseType: !1617, size: 64, offset: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !1609, line: 47, size: 64, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1617, file: !1609, line: 48, baseType: !670, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1617, file: !1609, line: 49, baseType: !84, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !1609, line: 61, baseType: !1622, size: 128, offset: 128)
!1622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !1609, line: 61, size: 128, elements: !1623)
!1623 = !{!1624, !1630}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1622, file: !1609, line: 67, baseType: !1625, size: 128)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1626, line: 17, size: 128, elements: !1627)
!1626 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1625, file: !1626, line: 19, baseType: !300, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1625, file: !1626, line: 20, baseType: !671, size: 64, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, scope: !1622, file: !1609, line: 68, baseType: !1631, size: 128)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1622, file: !1609, line: 68, size: 128, elements: !1632)
!1632 = !{!1633, !1658}
!1633 = !DIDerivedType(tag: DW_TAG_member, scope: !1631, file: !1609, line: 69, baseType: !1634, size: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1631, file: !1609, line: 69, size: 64, elements: !1635)
!1635 = !{!1636, !1639, !1646, !1655, !1657}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1634, file: !1609, line: 71, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1625)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1634, file: !1609, line: 72, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1642)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1609, line: 17, size: 128, elements: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1642, file: !1609, line: 18, baseType: !300, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1642, file: !1609, line: 19, baseType: !670, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1634, file: !1609, line: 73, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1649)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1650, line: 31, size: 128, elements: !1651)
!1650 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1651 = !{!1652, !1653, !1654}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1649, file: !1650, line: 32, baseType: !930, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1649, file: !1650, line: 33, baseType: !58, size: 32, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1649, file: !1650, line: 34, baseType: !58, size: 32, offset: 96)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1634, file: !1609, line: 74, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1634, file: !1609, line: 75, baseType: !300, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1631, file: !1609, line: 77, baseType: !670, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !1609, line: 80, baseType: !1660, size: 64, offset: 256)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !1609, line: 80, size: 64, elements: !1661)
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1660, file: !1609, line: 81, baseType: !283, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1660, file: !1609, line: 82, baseType: !134, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !924, file: !36, line: 433, baseType: !1665, size: 64, offset: 768)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!84, !903, !1447, !1447, !1668}
!1668 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !1669, line: 15, baseType: !58, size: 32, elements: !1670)
!1669 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!1670 = !{!1671, !1672, !1673, !1674}
!1671 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!1672 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!1673 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!1674 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !924, file: !36, line: 435, baseType: !1676, size: 64, offset: 832)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!84, !1447}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !924, file: !36, line: 436, baseType: !1680, size: 64, offset: 896)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!350, !1447, !670, !670}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !924, file: !36, line: 438, baseType: !1684, size: 64, offset: 960)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{null, !1447, !1687, !1687}
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !924, file: !36, line: 439, baseType: !1689, size: 64, offset: 1024)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!84, !903, !930}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !924, file: !36, line: 442, baseType: !1693, size: 64, offset: 1088)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!84, !1696, !34, !1698}
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !36, line: 66, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !924, file: !36, line: 444, baseType: !1700, size: 64, offset: 1152)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{null, !34}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !924, file: !36, line: 445, baseType: !1704, size: 64, offset: 1216)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!84, !1569, !1607}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !904, file: !36, line: 486, baseType: !283, size: 64, offset: 896)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !904, file: !36, line: 487, baseType: !288, size: 320, offset: 960)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !904, file: !36, line: 488, baseType: !1710, size: 32, offset: 1280)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1711, line: 8, baseType: !314)
!1711 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !904, file: !36, line: 489, baseType: !60, size: 32, offset: 1312)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !904, file: !36, line: 490, baseType: !128, size: 128, offset: 1344)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !904, file: !36, line: 491, baseType: !300, size: 64, offset: 1472)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !894, file: !863, line: 180, baseType: !1716, size: 64, offset: 320)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!667, !34, !805, !893, !362, !134, !670}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !894, file: !863, line: 182, baseType: !1716, size: 64, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !894, file: !863, line: 184, baseType: !1721, size: 64, offset: 448)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!84, !34, !805, !893, !1059}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !882, file: !863, line: 90, baseType: !1725, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !882, file: !863, line: 91, baseType: !1727, size: 64, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !853, file: !800, line: 120, baseType: !1729, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!1732, !823}
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1734)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1735, line: 39, size: 384, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!1736 = !{!1737, !1743, !1747, !1751, !1757, !1761}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1734, file: !1735, line: 40, baseType: !1738, size: 32)
!1738 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1735, line: 26, baseType: !58, size: 32, elements: !1739)
!1739 = !{!1740, !1741, !1742}
!1740 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!1741 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!1742 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1734, file: !1735, line: 41, baseType: !1744, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!350}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1734, file: !1735, line: 42, baseType: !1748, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!300}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1734, file: !1735, line: 43, baseType: !1752, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!1188, !1755}
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1735, line: 19, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1734, file: !1735, line: 44, baseType: !1758, size: 64, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!1188}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1734, file: !1735, line: 45, baseType: !545, size: 64, offset: 320)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !853, file: !800, line: 121, baseType: !1763, size: 64, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!1188, !823}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !853, file: !800, line: 122, baseType: !1767, size: 64, offset: 320)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{null, !823, !1770, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !799, file: !800, line: 70, baseType: !1773, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1775, line: 190, size: 1152, elements: !1776)
!1775 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1776 = !{!1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1876, !1877, !1878, !1879, !1880, !1883}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1774, file: !1775, line: 191, baseType: !80, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1774, file: !1775, line: 192, baseType: !80, size: 32, offset: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1774, file: !1775, line: 202, baseType: !1773, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1774, file: !1775, line: 203, baseType: !353, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1774, file: !1775, line: 205, baseType: !279, size: 192, align: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1774, file: !1775, line: 207, baseType: !1188, size: 64, offset: 384)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1774, file: !1775, line: 208, baseType: !58, size: 32, offset: 448)
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1774, file: !1775, line: 209, baseType: !1785, size: 256, offset: 512)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1774, file: !1775, line: 209, size: 256, elements: !1786)
!1786 = !{!1787, !1796, !1800}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1785, file: !1775, line: 210, baseType: !1788, size: 256)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1775, line: 153, size: 256, elements: !1789)
!1789 = !{!1790, !1791, !1792, !1795}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1788, file: !1775, line: 154, baseType: !283, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1788, file: !1775, line: 156, baseType: !915, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1788, file: !1775, line: 162, baseType: !1793, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1775, line: 162, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1788, file: !1775, line: 167, baseType: !283, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1785, file: !1775, line: 211, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1775, line: 170, size: 64, elements: !1798)
!1798 = !{!1799}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1797, file: !1775, line: 171, baseType: !1773, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1785, file: !1775, line: 212, baseType: !1801, size: 256)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1775, line: 174, size: 256, elements: !1802)
!1802 = !{!1803, !1871, !1874, !1875}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1801, file: !1775, line: 175, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1775, line: 271, size: 768, elements: !1807)
!1807 = !{!1808, !1831, !1835, !1839, !1844, !1848, !1852, !1856, !1857, !1858, !1859, !1867}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1806, file: !1775, line: 276, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!84, !1812}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1775, line: 251, size: 1216, elements: !1814)
!1814 = !{!1815, !1816, !1817, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1813, file: !1775, line: 253, baseType: !1773, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1813, file: !1775, line: 254, baseType: !34, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1813, file: !1775, line: 255, baseType: !1818, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1820, line: 66, flags: DIFlagFwdDecl)
!1820 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1813, file: !1775, line: 256, baseType: !300, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1813, file: !1775, line: 259, baseType: !116, size: 256, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1813, file: !1775, line: 260, baseType: !116, size: 256, offset: 512)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1813, file: !1775, line: 261, baseType: !84, size: 32, offset: 768)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1813, file: !1775, line: 262, baseType: !128, size: 128, offset: 832)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1813, file: !1775, line: 263, baseType: !362, size: 64, offset: 960)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1813, file: !1775, line: 265, baseType: !670, size: 64, offset: 1024)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1813, file: !1775, line: 266, baseType: !350, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1813, file: !1775, line: 267, baseType: !350, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1813, file: !1775, line: 268, baseType: !1271, size: 64, offset: 1152)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1806, file: !1775, line: 277, baseType: !1832, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !1812}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1806, file: !1775, line: 290, baseType: !1836, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!84, !1818, !300}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1806, file: !1775, line: 292, baseType: !1840, size: 64, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!300, !1818, !1843}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1806, file: !1775, line: 293, baseType: !1845, size: 64, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!300, !1818, !300, !1843}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1806, file: !1775, line: 294, baseType: !1849, size: 64, offset: 320)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !1818, !300}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1806, file: !1775, line: 296, baseType: !1853, size: 64, offset: 384)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!667, !1812, !362, !670, !134}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1806, file: !1775, line: 306, baseType: !670, size: 64, offset: 448)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1806, file: !1775, line: 313, baseType: !350, size: 8, offset: 512)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1806, file: !1775, line: 314, baseType: !1853, size: 64, offset: 576)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1806, file: !1775, line: 317, baseType: !1860, size: 64, offset: 640)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!1863, !1812, !1865}
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1864, line: 59, baseType: !58)
!1864 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !36, line: 61, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1806, file: !1775, line: 320, baseType: !1868, size: 64, offset: 704)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!84, !1812, !1059}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1801, file: !1775, line: 176, baseType: !1872, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1775, line: 35, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1801, file: !1775, line: 177, baseType: !134, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1801, file: !1775, line: 178, baseType: !1773, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1774, file: !1775, line: 215, baseType: !300, size: 64, offset: 768)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1774, file: !1775, line: 221, baseType: !255, size: 64, offset: 832)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1774, file: !1775, line: 223, baseType: !101, size: 16, offset: 896)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1774, file: !1775, line: 224, baseType: !517, size: 16, offset: 912)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1774, file: !1775, line: 225, baseType: !1881, size: 64, offset: 960)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1775, line: 36, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1774, file: !1775, line: 227, baseType: !48, size: 128, align: 64, offset: 1024)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !799, file: !800, line: 71, baseType: !1885, size: 32, offset: 448)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1886, line: 19, size: 32, elements: !1887)
!1886 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1887 = !{!1888}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1885, file: !1886, line: 20, baseType: !170, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !799, file: !800, line: 73, baseType: !58, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !799, file: !800, line: 74, baseType: !58, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !799, file: !800, line: 75, baseType: !58, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !799, file: !800, line: 76, baseType: !58, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !799, file: !800, line: 77, baseType: !58, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !796, file: !781, line: 47, baseType: !779, size: 64, offset: 512)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !796, file: !781, line: 48, baseType: !805, size: 64, offset: 576)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !796, file: !781, line: 49, baseType: !1897, size: 64, offset: 640)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !781, line: 49, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !796, file: !781, line: 50, baseType: !1900, size: 64, offset: 704)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !780, file: !781, line: 418, baseType: !1902, size: 64, offset: 1408)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !781, line: 53, size: 448, elements: !1904)
!1904 = !{!1905, !1906, !1911, !1915, !1919, !1923}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1903, file: !781, line: 54, baseType: !870, size: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1903, file: !781, line: 55, baseType: !1907, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!667, !1902, !1910, !362}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1903, file: !781, line: 57, baseType: !1912, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!667, !1902, !1910, !353, !670}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1903, file: !781, line: 59, baseType: !1916, size: 64, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !779, !353}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1903, file: !781, line: 60, baseType: !1920, size: 64, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!84, !779}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1903, file: !781, line: 61, baseType: !1924, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{null, !779}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !780, file: !781, line: 419, baseType: !353, size: 64, offset: 1472)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !780, file: !781, line: 420, baseType: !353, size: 64, offset: 1536)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !780, file: !781, line: 421, baseType: !805, size: 64, offset: 1600)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !780, file: !781, line: 424, baseType: !1931, size: 64, offset: 1664)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1933)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !781, line: 424, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !780, file: !781, line: 425, baseType: !1935, size: 64, offset: 1728)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !780, file: !781, line: 426, baseType: !58, size: 32, offset: 1792)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !780, file: !781, line: 435, baseType: !116, size: 256, offset: 1856)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !780, file: !781, line: 437, baseType: !1940, size: 64, offset: 2112)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1942, line: 69, size: 320, elements: !1943)
!1942 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1943 = !{!1944, !1945, !1946, !1963, !1965, !1969, !1970}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1941, file: !1942, line: 70, baseType: !353, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1941, file: !1942, line: 71, baseType: !779, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1941, file: !1942, line: 72, baseType: !1947, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1949)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1942, line: 47, size: 256, elements: !1950)
!1950 = !{!1951, !1952, !1958, !1962}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1949, file: !1942, line: 49, baseType: !58, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1949, file: !1942, line: 51, baseType: !1953, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!84, !353, !1956}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1941)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1949, file: !1942, line: 53, baseType: !1959, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!84, !362, !1956}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1949, file: !1942, line: 55, baseType: !545, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1941, file: !1942, line: 73, baseType: !1964, size: 16, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1941, file: !1942, line: 74, baseType: !1966, size: 8, offset: 208)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !90, line: 16, baseType: !1967)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !92, line: 20, baseType: !1968)
!1968 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1941, file: !1942, line: 75, baseType: !89, size: 8, offset: 216)
!1970 = !DIDerivedType(tag: DW_TAG_member, scope: !1941, file: !1942, line: 76, baseType: !1971, size: 64, offset: 256)
!1971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1941, file: !1942, line: 76, size: 64, elements: !1972)
!1972 = !{!1973, !1974, !1981}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1971, file: !1942, line: 77, baseType: !300, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1971, file: !1942, line: 78, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1977)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1942, line: 86, size: 128, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1977, file: !1942, line: 87, baseType: !58, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1977, file: !1942, line: 88, baseType: !362, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1971, file: !1942, line: 79, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1984)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1942, line: 92, size: 256, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1990, !1991}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1984, file: !1942, line: 94, baseType: !58, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1984, file: !1942, line: 95, baseType: !58, size: 32, offset: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1984, file: !1942, line: 96, baseType: !1989, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1984, file: !1942, line: 97, baseType: !1947, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1984, file: !1942, line: 98, baseType: !300, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !780, file: !781, line: 438, baseType: !58, size: 32, offset: 2176)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !780, file: !781, line: 441, baseType: !58, size: 32, offset: 2208)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !780, file: !781, line: 442, baseType: !1931, size: 64, offset: 2240)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !780, file: !781, line: 443, baseType: !1935, size: 64, offset: 2304)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !780, file: !781, line: 444, baseType: !350, size: 8, offset: 2368)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !780, file: !781, line: 451, baseType: !350, size: 8, offset: 2376)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !780, file: !781, line: 454, baseType: !58, size: 32, offset: 2400)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !780, file: !781, line: 455, baseType: !2000, size: 64, offset: 2432)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2002, line: 23, size: 96, elements: !2003)
!2002 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2003 = !{!2004, !2005, !2006}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2001, file: !2002, line: 24, baseType: !84, size: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2001, file: !2002, line: 24, baseType: !84, size: 32, offset: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2001, file: !2002, line: 24, baseType: !84, size: 32, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !780, file: !781, line: 458, baseType: !2008, size: 64, offset: 2496)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!84}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !780, file: !781, line: 460, baseType: !2012, size: 4032, align: 512, offset: 2560)
!2012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2013, size: 4032, elements: !2027)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !781, line: 362, size: 576, elements: !2014)
!2014 = !{!2015, !2016, !2017}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2013, file: !781, line: 363, baseType: !300, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2013, file: !781, line: 364, baseType: !58, size: 32, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2013, file: !781, line: 367, baseType: !2018, size: 448, offset: 128)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !781, line: 319, size: 448, elements: !2019)
!2019 = !{!2020, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2018, file: !781, line: 320, baseType: !779, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2018, file: !781, line: 321, baseType: !2022, size: 384, offset: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2023, line: 40, size: 384, elements: !2024)
!2023 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2024 = !{!2025}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2022, file: !2023, line: 41, baseType: !2026, size: 384, align: 64)
!2026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 384, align: 64, elements: !694)
!2027 = !{!2028}
!2028 = !DISubrange(count: 7)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !780, file: !781, line: 463, baseType: !2030, size: 192, offset: 6592)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2031, line: 8, size: 192, elements: !2032)
!2031 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2032 = !{!2033, !2034, !2036}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2030, file: !2031, line: 10, baseType: !58, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2030, file: !2031, line: 11, baseType: !2035, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2030, file: !2031, line: 12, baseType: !2037, size: 64, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2039, line: 59, size: 48, elements: !2040)
!2039 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2040 = !{!2041, !2042, !2043, !2044, !2045, !2046}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2038, file: !2039, line: 60, baseType: !1205, size: 16)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2038, file: !2039, line: 61, baseType: !1205, size: 16, offset: 16)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2038, file: !2039, line: 63, baseType: !58, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2038, file: !2039, line: 64, baseType: !58, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2038, file: !2039, line: 65, baseType: !58, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2038, file: !2039, line: 66, baseType: !58, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !780, file: !781, line: 465, baseType: !283, size: 64, offset: 6784)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !780, file: !781, line: 469, baseType: !58, size: 32, offset: 6848)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !780, file: !781, line: 470, baseType: !128, size: 128, offset: 6912)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !780, file: !781, line: 471, baseType: !2051, size: 64, offset: 7040)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2053, line: 33, size: 96, elements: !2054)
!2053 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2054 = !{!2055, !2056, !2057, !2058}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2052, file: !2053, line: 37, baseType: !84, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2052, file: !2053, line: 43, baseType: !84, size: 32, offset: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2052, file: !2053, line: 45, baseType: !101, size: 16, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2052, file: !2053, line: 47, baseType: !101, size: 16, offset: 80)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !780, file: !781, line: 476, baseType: !2060, size: 64, offset: 7104)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !781, line: 378, size: 256, elements: !2062)
!2062 = !{!2063, !2079, !2080, !2081}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2061, file: !781, line: 379, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2066, line: 204, baseType: !2067)
!2066 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2066, line: 197, size: 192, elements: !2068)
!2068 = !{!2069, !2071, !2072, !2073, !2075, !2077}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2067, file: !2066, line: 198, baseType: !2070, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2066, line: 21, baseType: !315)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2067, file: !2066, line: 199, baseType: !93, size: 8, offset: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2067, file: !2066, line: 200, baseType: !93, size: 8, offset: 40)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2067, file: !2066, line: 201, baseType: !2074, size: 16, offset: 48)
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2066, line: 17, baseType: !100)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2067, file: !2066, line: 202, baseType: !2076, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2066, line: 16, baseType: !256)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2067, file: !2066, line: 203, baseType: !2078, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2066, line: 22, baseType: !256)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2061, file: !781, line: 380, baseType: !58, size: 32, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2061, file: !781, line: 381, baseType: !362, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2061, file: !781, line: 382, baseType: !362, size: 64, offset: 192)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !780, file: !781, line: 477, baseType: !2061, size: 256, offset: 7168)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !780, file: !781, line: 480, baseType: !2084, size: 64, offset: 7424)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !781, line: 480, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !780, file: !781, line: 483, baseType: !2087, size: 64, offset: 7488)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !781, line: 483, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !780, file: !781, line: 488, baseType: !362, size: 64, offset: 7552)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !780, file: !781, line: 492, baseType: !300, size: 64, offset: 7616)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !780, file: !781, line: 493, baseType: !58, size: 32, offset: 7680)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !780, file: !781, line: 495, baseType: !300, size: 64, offset: 7744)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !780, file: !781, line: 496, baseType: !58, size: 32, offset: 7808)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !780, file: !781, line: 499, baseType: !58, size: 32, offset: 7840)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !780, file: !781, line: 500, baseType: !2096, size: 64, offset: 7872)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2098, line: 45, baseType: !2099)
!2098 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !780, file: !781, line: 503, baseType: !58, size: 32, offset: 7936)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !780, file: !781, line: 504, baseType: !2102, size: 64, offset: 8000)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2105, line: 96, size: 192, elements: !2106)
!2105 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2106 = !{!2107, !2108, !2162, !2165}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2104, file: !2105, line: 97, baseType: !58, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2104, file: !2105, line: 98, baseType: !2109, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2105, line: 24, size: 3072, elements: !2111)
!2111 = !{!2112, !2114, !2115, !2116, !2117, !2131, !2132, !2133, !2134, !2146, !2147, !2148, !2159, !2160, !2161}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2110, file: !2105, line: 26, baseType: !2113, size: 128)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 128, elements: !694)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2110, file: !2105, line: 27, baseType: !2113, size: 128, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2110, file: !2105, line: 28, baseType: !84, size: 32, offset: 256)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2110, file: !2105, line: 31, baseType: !60, size: 32, align: 512, offset: 512)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2110, file: !2105, line: 32, baseType: !2118, size: 960, offset: 576)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2119, line: 206, size: 960, elements: !2120)
!2119 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2120 = !{!2121, !2122, !2125, !2127, !2128, !2130}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2118, file: !2119, line: 207, baseType: !52, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2118, file: !2119, line: 208, baseType: !2123, size: 256, offset: 64)
!2123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2124, size: 256, elements: !188)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2118, file: !2119, line: 209, baseType: !2126, size: 256, offset: 320)
!2126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 256, elements: !188)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2118, file: !2119, line: 213, baseType: !628, size: 64, offset: 576)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2118, file: !2119, line: 215, baseType: !2129, size: 256, offset: 640)
!2129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 256, elements: !188)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2118, file: !2119, line: 216, baseType: !89, size: 8, offset: 896)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2110, file: !2105, line: 33, baseType: !283, size: 64, offset: 1536)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2110, file: !2105, line: 34, baseType: !283, size: 64, offset: 1600)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2110, file: !2105, line: 35, baseType: !350, size: 8, offset: 1664)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2110, file: !2105, line: 36, baseType: !2135, size: 320, offset: 1728)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2136, line: 11, size: 320, elements: !2137)
!2136 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2137 = !{!2138, !2139, !2140, !2145}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2135, file: !2136, line: 16, baseType: !183, size: 128)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2135, file: !2136, line: 17, baseType: !283, size: 64, offset: 128)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2135, file: !2136, line: 18, baseType: !2141, size: 64, offset: 192)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{null, !2144}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2135, file: !2136, line: 19, baseType: !314, size: 32, offset: 256)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2110, file: !2105, line: 37, baseType: !1228, size: 256, offset: 2048)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2110, file: !2105, line: 38, baseType: !48, size: 128, align: 64, offset: 2304)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2110, file: !2105, line: 39, baseType: !2149, size: 64, offset: 2432)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2105, line: 49, size: 768, elements: !2151)
!2151 = !{!2152, !2153, !2154, !2155, !2156, !2157, !2158}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2150, file: !2105, line: 50, baseType: !60, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2150, file: !2105, line: 51, baseType: !2126, size: 256, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2150, file: !2105, line: 53, baseType: !2126, size: 256, offset: 320)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2150, file: !2105, line: 54, baseType: !283, size: 64, offset: 576)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2150, file: !2105, line: 55, baseType: !2149, size: 64, offset: 640)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2150, file: !2105, line: 56, baseType: !84, size: 32, offset: 704)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2150, file: !2105, line: 57, baseType: !84, size: 32, offset: 736)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2110, file: !2105, line: 40, baseType: !283, size: 64, offset: 2496)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2110, file: !2105, line: 42, baseType: !84, size: 32, offset: 2560)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2110, file: !2105, line: 43, baseType: !2103, size: 64, offset: 2624)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2104, file: !2105, line: 99, baseType: !2163, offset: 128)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2164, line: 211, elements: !1093)
!2164 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2104, file: !2105, line: 100, baseType: !2166, size: 64, offset: 128)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2105, line: 63, size: 3008, elements: !2168)
!2168 = !{!2169, !2170, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2200}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2167, file: !2105, line: 64, baseType: !2149, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2167, file: !2105, line: 65, baseType: !2171, size: 192, offset: 64)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2149, size: 192, elements: !161)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2167, file: !2105, line: 67, baseType: !84, size: 32, offset: 256)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2167, file: !2105, line: 68, baseType: !116, size: 256, offset: 320)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2167, file: !2105, line: 69, baseType: !60, size: 32, offset: 576)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2167, file: !2105, line: 70, baseType: !116, size: 256, offset: 640)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2167, file: !2105, line: 71, baseType: !283, size: 64, offset: 896)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2167, file: !2105, line: 72, baseType: !283, size: 64, offset: 960)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2167, file: !2105, line: 73, baseType: !283, size: 64, offset: 1024)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2167, file: !2105, line: 74, baseType: !283, size: 64, offset: 1088)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2167, file: !2105, line: 75, baseType: !283, size: 64, offset: 1152)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2167, file: !2105, line: 76, baseType: !283, size: 64, offset: 1216)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2167, file: !2105, line: 77, baseType: !283, size: 64, offset: 1280)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2167, file: !2105, line: 78, baseType: !283, size: 64, offset: 1344)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2167, file: !2105, line: 79, baseType: !350, size: 8, offset: 1408)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2167, file: !2105, line: 80, baseType: !283, size: 64, offset: 1472)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2167, file: !2105, line: 81, baseType: !116, size: 256, offset: 1536)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2167, file: !2105, line: 82, baseType: !1017, size: 256, offset: 1792)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2167, file: !2105, line: 84, baseType: !80, size: 32, offset: 2048)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2167, file: !2105, line: 87, baseType: !283, size: 64, offset: 2112)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2167, file: !2105, line: 88, baseType: !283, size: 64, offset: 2176)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2167, file: !2105, line: 89, baseType: !2192, size: 704, offset: 2240)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1229, line: 111, size: 704, elements: !2193)
!2193 = !{!2194, !2195, !2196, !2199}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2192, file: !1229, line: 112, baseType: !1228, size: 256)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2192, file: !1229, line: 113, baseType: !2135, size: 320, offset: 256)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2192, file: !1229, line: 116, baseType: !2197, size: 64, offset: 576)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1229, line: 18, flags: DIFlagFwdDecl)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2192, file: !1229, line: 117, baseType: !84, size: 32, offset: 640)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2167, file: !2105, line: 90, baseType: !2103, size: 64, offset: 2944)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !780, file: !781, line: 515, baseType: !2202, size: 64, offset: 8064)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2204, line: 117, size: 128, elements: !2205)
!2204 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2205 = !{!2206, !2207, !2208}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2203, file: !2204, line: 118, baseType: !272, size: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2203, file: !2204, line: 119, baseType: !272, size: 32, offset: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2203, file: !2204, line: 120, baseType: !628, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !780, file: !781, line: 516, baseType: !58, size: 32, offset: 8128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !780, file: !781, line: 519, baseType: !58, size: 32, offset: 8160)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !780, file: !781, line: 520, baseType: !2212, size: 64, offset: 8192)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !780, file: !781, line: 523, baseType: !2214, size: 64, offset: 8256)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !781, line: 523, flags: DIFlagFwdDecl)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !780, file: !781, line: 524, baseType: !58, size: 32, offset: 8320)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !780, file: !781, line: 525, baseType: !2219, size: 64, offset: 8384)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2222, line: 28, size: 192, elements: !2223)
!2222 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!2223 = !{!2224, !2225, !2226}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2221, file: !2222, line: 29, baseType: !353, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !2221, file: !2222, line: 30, baseType: !353, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !2221, file: !2222, line: 31, baseType: !283, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !780, file: !781, line: 526, baseType: !58, size: 32, offset: 8448)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !780, file: !781, line: 533, baseType: !300, size: 64, offset: 8512)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !780, file: !781, line: 534, baseType: !58, size: 32, offset: 8576)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !780, file: !781, line: 535, baseType: !2231, size: 64, offset: 8640)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !780, file: !781, line: 536, baseType: !58, size: 32, offset: 8704)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !780, file: !781, line: 539, baseType: !84, size: 32, offset: 8736)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !780, file: !781, line: 540, baseType: !2235, size: 64, offset: 8768)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2237, line: 32, size: 64, elements: !2238)
!2237 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2238 = !{!2239, !2240}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2236, file: !2237, line: 33, baseType: !272, size: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2236, file: !2237, line: 34, baseType: !272, size: 32, offset: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !780, file: !781, line: 563, baseType: !128, size: 128, offset: 8832)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !780, file: !781, line: 565, baseType: !128, size: 128, offset: 8960)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !780, file: !781, line: 568, baseType: !2244, size: 64, offset: 9088)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{null}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !780, file: !781, line: 570, baseType: !80, size: 32, offset: 9152)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !756, file: !36, line: 2382, baseType: !755, size: 64, offset: 448)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !756, file: !36, line: 2383, baseType: !179, size: 64, offset: 512)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !756, file: !36, line: 2385, baseType: !2251, offset: 576)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2164, line: 206, elements: !1093)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !756, file: !36, line: 2386, baseType: !2251, offset: 576)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !756, file: !36, line: 2387, baseType: !2251, offset: 576)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !756, file: !36, line: 2388, baseType: !2255, offset: 576)
!2255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2251, elements: !161)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !756, file: !36, line: 2390, baseType: !2251, offset: 576)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !756, file: !36, line: 2391, baseType: !2251, offset: 576)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !756, file: !36, line: 2392, baseType: !2251, offset: 576)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !756, file: !36, line: 2393, baseType: !2251, offset: 576)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !747, file: !36, line: 1197, baseType: !2261, size: 64, offset: 384)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2263)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !36, line: 2057, size: 1664, elements: !2264)
!2264 = !{!2265, !2269, !2273, !2274, !2278, !2282, !2286, !2287, !2288, !2292, !2300, !2304, !2305, !2306, !2312, !2316, !2317, !2321, !2322, !2323, !2324, !2328, !2332, !2385, !2400, !2401}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2263, file: !36, line: 2058, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!513, !746}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2263, file: !36, line: 2059, baseType: !2270, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{null, !513}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2263, file: !36, line: 2060, baseType: !2270, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2263, file: !36, line: 2062, baseType: !2275, size: 64, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{null, !513, !84}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2263, file: !36, line: 2063, baseType: !2279, size: 64, offset: 256)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!84, !513, !1418}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2263, file: !36, line: 2064, baseType: !2283, size: 64, offset: 320)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!84, !513}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2263, file: !36, line: 2065, baseType: !2270, size: 64, offset: 384)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2263, file: !36, line: 2066, baseType: !775, size: 64, offset: 448)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2263, file: !36, line: 2067, baseType: !2289, size: 64, offset: 512)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!84, !746, !84}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2263, file: !36, line: 2068, baseType: !2293, size: 64, offset: 576)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!84, !746, !2296}
!2296 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !36, line: 2052, baseType: !58, size: 32, elements: !2297)
!2297 = !{!2298, !2299}
!2298 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!2299 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2263, file: !36, line: 2069, baseType: !2301, size: 64, offset: 640)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!84, !746}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2263, file: !36, line: 2070, baseType: !2293, size: 64, offset: 704)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2263, file: !36, line: 2071, baseType: !2301, size: 64, offset: 768)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2263, file: !36, line: 2072, baseType: !2307, size: 64, offset: 832)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!84, !473, !2310}
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !36, line: 62, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2263, file: !36, line: 2073, baseType: !2313, size: 64, offset: 896)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!84, !746, !2035, !362}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2263, file: !36, line: 2074, baseType: !775, size: 64, offset: 960)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2263, file: !36, line: 2076, baseType: !2318, size: 64, offset: 1024)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!84, !1818, !473}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2263, file: !36, line: 2077, baseType: !2318, size: 64, offset: 1088)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2263, file: !36, line: 2078, baseType: !2318, size: 64, offset: 1152)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2263, file: !36, line: 2079, baseType: !2318, size: 64, offset: 1216)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2263, file: !36, line: 2081, baseType: !2325, size: 64, offset: 1280)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!667, !746, !84, !362, !670, !134}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2263, file: !36, line: 2082, baseType: !2329, size: 64, offset: 1344)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!667, !746, !84, !353, !670, !134}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2263, file: !36, line: 2083, baseType: !2333, size: 64, offset: 1408)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!2336, !513}
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !2339, line: 296, size: 1664, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!2340 = !{!2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2370, !2371, !2372}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2338, file: !2339, line: 297, baseType: !183, size: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2338, file: !2339, line: 298, baseType: !128, size: 128, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2338, file: !2339, line: 299, baseType: !128, size: 128, offset: 256)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2338, file: !2339, line: 300, baseType: !128, size: 128, offset: 384)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2338, file: !2339, line: 301, baseType: !116, size: 256, offset: 512)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2338, file: !2339, line: 302, baseType: !60, size: 32, offset: 768)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2338, file: !2339, line: 303, baseType: !80, size: 32, offset: 800)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2338, file: !2339, line: 304, baseType: !746, size: 64, offset: 832)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2338, file: !2339, line: 305, baseType: !2350, size: 64, offset: 896)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !2339, line: 68, size: 64, elements: !2351)
!2351 = !{!2352, !2364}
!2352 = !DIDerivedType(tag: DW_TAG_member, scope: !2350, file: !2339, line: 69, baseType: !2353, size: 32)
!2353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2350, file: !2339, line: 69, size: 32, elements: !2354)
!2354 = !{!2355, !2356, !2357}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2353, file: !2339, line: 70, baseType: !218, size: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2353, file: !2339, line: 71, baseType: !236, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2353, file: !2339, line: 72, baseType: !2358, size: 32)
!2358 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2359, line: 24, baseType: !2360)
!2359 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2359, line: 22, size: 32, elements: !2361)
!2361 = !{!2362}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2360, file: !2359, line: 23, baseType: !2363, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2359, line: 20, baseType: !224)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2350, file: !2339, line: 74, baseType: !2365, size: 32, offset: 32)
!2365 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !2339, line: 54, baseType: !58, size: 32, elements: !2366)
!2366 = !{!2367, !2368, !2369}
!2367 = !DIEnumerator(name: "USRQUOTA", value: 0)
!2368 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!2369 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2338, file: !2339, line: 306, baseType: !134, size: 64, offset: 960)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2338, file: !2339, line: 307, baseType: !283, size: 64, offset: 1024)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2338, file: !2339, line: 308, baseType: !2373, size: 576, offset: 1088)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !2339, line: 205, size: 576, elements: !2374)
!2374 = !{!2375, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2373, file: !2339, line: 206, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !2339, line: 66, baseType: !114)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2373, file: !2339, line: 207, baseType: !2376, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2373, file: !2339, line: 208, baseType: !2376, size: 64, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2373, file: !2339, line: 209, baseType: !2376, size: 64, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2373, file: !2339, line: 210, baseType: !2376, size: 64, offset: 256)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2373, file: !2339, line: 211, baseType: !2376, size: 64, offset: 320)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2373, file: !2339, line: 212, baseType: !2376, size: 64, offset: 384)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2373, file: !2339, line: 213, baseType: !305, size: 64, offset: 448)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2373, file: !2339, line: 214, baseType: !305, size: 64, offset: 512)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2263, file: !36, line: 2085, baseType: !2386, size: 64, offset: 1472)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!628, !746, !2389}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2391, line: 15, size: 256, elements: !2392)
!2391 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2392 = !{!2393, !2394, !2395, !2396, !2397}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2390, file: !2391, line: 16, baseType: !742, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2390, file: !2391, line: 19, baseType: !84, size: 32, offset: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2390, file: !2391, line: 26, baseType: !283, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2390, file: !2391, line: 33, baseType: !283, size: 64, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2390, file: !2391, line: 36, baseType: !2398, size: 64, offset: 192)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2391, line: 36, flags: DIFlagFwdDecl)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2263, file: !36, line: 2087, baseType: !2386, size: 64, offset: 1536)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2263, file: !36, line: 2089, baseType: !775, size: 64, offset: 1600)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !747, file: !36, line: 1198, baseType: !2403, size: 64, offset: 448)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2405)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !2339, line: 324, size: 704, elements: !2406)
!2406 = !{!2407, !2411, !2415, !2419, !2420, !2421, !2422, !2423, !2428, !2433, !2437}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2405, file: !2339, line: 325, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!84, !2337}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2405, file: !2339, line: 326, baseType: !2412, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!2337, !746, !84}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2405, file: !2339, line: 327, baseType: !2416, size: 64, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !2337}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2405, file: !2339, line: 328, baseType: !2408, size: 64, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2405, file: !2339, line: 329, baseType: !2408, size: 64, offset: 256)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2405, file: !2339, line: 330, baseType: !2408, size: 64, offset: 320)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2405, file: !2339, line: 331, baseType: !2289, size: 64, offset: 384)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2405, file: !2339, line: 334, baseType: !2424, size: 64, offset: 448)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!2427, !513}
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2405, file: !2339, line: 335, baseType: !2429, size: 64, offset: 512)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!84, !513, !2432}
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2405, file: !2339, line: 337, baseType: !2434, size: 64, offset: 576)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!84, !513, !2427}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2405, file: !2339, line: 339, baseType: !2438, size: 64, offset: 640)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!84, !746, !2441}
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !747, file: !36, line: 1199, baseType: !2443, size: 64, offset: 512)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2445)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !2339, line: 430, size: 704, elements: !2446)
!2446 = !{!2447, !2451, !2452, !2456, !2457, !2458, !2473, !2496, !2500, !2501, !2524}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2445, file: !2339, line: 431, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!84, !746, !84, !84, !636}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2445, file: !2339, line: 432, baseType: !2289, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2445, file: !2339, line: 433, baseType: !2453, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!84, !746, !58}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2445, file: !2339, line: 434, baseType: !2453, size: 64, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2445, file: !2339, line: 435, baseType: !2289, size: 64, offset: 256)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2445, file: !2339, line: 436, baseType: !2459, size: 64, offset: 320)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!84, !746, !84, !2462}
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !2339, line: 417, size: 256, elements: !2464)
!2464 = !{!2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2463, file: !2339, line: 418, baseType: !84, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2463, file: !2339, line: 419, baseType: !58, size: 32, offset: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2463, file: !2339, line: 420, baseType: !58, size: 32, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2463, file: !2339, line: 422, baseType: !58, size: 32, offset: 96)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2463, file: !2339, line: 423, baseType: !58, size: 32, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2463, file: !2339, line: 424, baseType: !58, size: 32, offset: 160)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2463, file: !2339, line: 425, baseType: !58, size: 32, offset: 192)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2463, file: !2339, line: 426, baseType: !58, size: 32, offset: 224)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2445, file: !2339, line: 437, baseType: !2474, size: 64, offset: 384)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!84, !746, !2350, !2477}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !2339, line: 345, size: 960, elements: !2479)
!2479 = !{!2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2478, file: !2339, line: 346, baseType: !84, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2478, file: !2339, line: 347, baseType: !255, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2478, file: !2339, line: 348, baseType: !255, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2478, file: !2339, line: 349, baseType: !255, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2478, file: !2339, line: 350, baseType: !255, size: 64, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2478, file: !2339, line: 351, baseType: !255, size: 64, offset: 320)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2478, file: !2339, line: 352, baseType: !255, size: 64, offset: 384)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2478, file: !2339, line: 353, baseType: !112, size: 64, offset: 448)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2478, file: !2339, line: 355, baseType: !112, size: 64, offset: 512)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2478, file: !2339, line: 356, baseType: !84, size: 32, offset: 576)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2478, file: !2339, line: 357, baseType: !84, size: 32, offset: 608)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2478, file: !2339, line: 358, baseType: !255, size: 64, offset: 640)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2478, file: !2339, line: 359, baseType: !255, size: 64, offset: 704)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2478, file: !2339, line: 360, baseType: !255, size: 64, offset: 768)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2478, file: !2339, line: 361, baseType: !112, size: 64, offset: 832)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2478, file: !2339, line: 362, baseType: !84, size: 32, offset: 896)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2445, file: !2339, line: 438, baseType: !2497, size: 64, offset: 448)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!84, !746, !2441, !2477}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2445, file: !2339, line: 440, baseType: !2474, size: 64, offset: 512)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2445, file: !2339, line: 441, baseType: !2502, size: 64, offset: 576)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!84, !746, !2505}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !2339, line: 411, size: 1408, elements: !2507)
!2507 = !{!2508, !2509}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2506, file: !2339, line: 412, baseType: !58, size: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2506, file: !2339, line: 413, baseType: !2510, size: 1344, offset: 64)
!2510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2511, size: 1344, elements: !161)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !2339, line: 397, size: 448, elements: !2512)
!2512 = !{!2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2523}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2511, file: !2339, line: 398, baseType: !58, size: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2511, file: !2339, line: 399, baseType: !58, size: 32, offset: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2511, file: !2339, line: 401, baseType: !58, size: 32, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2511, file: !2339, line: 402, baseType: !58, size: 32, offset: 96)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2511, file: !2339, line: 403, baseType: !58, size: 32, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2511, file: !2339, line: 404, baseType: !58, size: 32, offset: 160)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2511, file: !2339, line: 405, baseType: !58, size: 32, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2511, file: !2339, line: 406, baseType: !257, size: 64, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2511, file: !2339, line: 407, baseType: !2522, size: 64, offset: 320)
!2522 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !49, line: 132, baseType: !255)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2511, file: !2339, line: 408, baseType: !2522, size: 64, offset: 384)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2445, file: !2339, line: 442, baseType: !2453, size: 64, offset: 640)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !747, file: !36, line: 1200, baseType: !2526, size: 64, offset: 576)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2528)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !36, line: 54, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !747, file: !36, line: 1201, baseType: !283, size: 64, offset: 640)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !747, file: !36, line: 1202, baseType: !283, size: 64, offset: 704)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !747, file: !36, line: 1203, baseType: !283, size: 64, offset: 768)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !747, file: !36, line: 1204, baseType: !473, size: 64, offset: 832)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !747, file: !36, line: 1205, baseType: !288, size: 320, offset: 896)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !747, file: !36, line: 1206, baseType: !84, size: 32, offset: 1216)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !747, file: !36, line: 1207, baseType: !80, size: 32, offset: 1248)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !747, file: !36, line: 1209, baseType: !300, size: 64, offset: 1280)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !747, file: !36, line: 1211, baseType: !2538, size: 64, offset: 1344)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2541)
!2541 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !36, line: 1211, flags: DIFlagFwdDecl)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !747, file: !36, line: 1223, baseType: !2543, size: 64, offset: 1408)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !490, line: 34, size: 64, elements: !2544)
!2544 = !{!2545}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2543, file: !490, line: 35, baseType: !493, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !747, file: !36, line: 1224, baseType: !128, size: 128, offset: 1472)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !747, file: !36, line: 1225, baseType: !2548, size: 64, offset: 1600)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2550, line: 40, size: 7424, elements: !2551)
!2550 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2551 = !{!2552, !2553, !2554, !3474, !3475, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3518, !3519}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2549, file: !2550, line: 41, baseType: !1552, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2549, file: !2550, line: 42, baseType: !1552, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2549, file: !2550, line: 43, baseType: !2555, size: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2557, line: 128, size: 4544, elements: !2558)
!2557 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!2558 = !{!2559, !2560, !2561, !2562, !2566, !2567, !2568, !2569, !2570, !2765, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3440, !3441, !3442, !3443, !3446, !3447, !3450, !3453, !3454, !3457, !3458, !3459, !3460}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2556, file: !2557, line: 133, baseType: !84, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2556, file: !2557, line: 134, baseType: !84, size: 32, offset: 32)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2556, file: !2557, line: 135, baseType: !84, size: 32, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2556, file: !2557, line: 137, baseType: !2563, size: 256, offset: 96)
!2563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !2564)
!2564 = !{!2565}
!2565 = !DISubrange(count: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2556, file: !2557, line: 139, baseType: !101, size: 16, offset: 352)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2556, file: !2557, line: 140, baseType: !101, size: 16, offset: 368)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2556, file: !2557, line: 142, baseType: !737, size: 128, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2556, file: !2557, line: 143, baseType: !2548, size: 64, offset: 512)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2556, file: !2557, line: 145, baseType: !2571, size: 64, offset: 576)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2573)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !2557, line: 1388, size: 1152, elements: !2574)
!2574 = !{!2575, !2666, !2681, !2686, !2690, !2694, !2695, !2699, !2700, !2706, !2710, !2711, !2715, !2741, !2746, !2756, !2757, !2761}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2573, file: !2557, line: 1389, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{null, !2579}
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !2550, line: 265, size: 960, elements: !2581)
!2581 = !{!2582, !2583, !2584, !2586, !2587, !2588, !2590, !2591, !2598, !2600, !2603, !2604, !2607, !2611, !2612, !2614, !2615, !2616, !2617, !2619, !2664}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2580, file: !2550, line: 266, baseType: !2579, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !2580, file: !2550, line: 267, baseType: !2548, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2580, file: !2550, line: 268, baseType: !2585, size: 32, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !2550, line: 256, baseType: !315)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2580, file: !2550, line: 271, baseType: !101, size: 16, offset: 160)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2580, file: !2550, line: 272, baseType: !101, size: 16, offset: 176)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2580, file: !2550, line: 273, baseType: !2589, size: 8, offset: 192)
!2589 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !2550, line: 97, baseType: !89)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2580, file: !2550, line: 274, baseType: !80, size: 32, offset: 224)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2580, file: !2550, line: 276, baseType: !2592, size: 160, align: 32, offset: 256)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1650, line: 77, size: 160, align: 32, elements: !2593)
!2593 = !{!2594, !2595, !2596, !2597}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2592, file: !1650, line: 78, baseType: !1552, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2592, file: !1650, line: 80, baseType: !58, size: 32, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2592, file: !1650, line: 82, baseType: !58, size: 32, offset: 96)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2592, file: !1650, line: 84, baseType: !58, size: 32, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !2580, file: !2550, line: 278, baseType: !2599, size: 32, offset: 416)
!2599 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !2550, line: 258, baseType: !58)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2580, file: !2550, line: 279, baseType: !2601, size: 64, offset: 448)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !2550, line: 20, baseType: !2577)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2580, file: !2550, line: 280, baseType: !300, size: 64, offset: 512)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !2580, file: !2550, line: 288, baseType: !2605, size: 64, offset: 576)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !2550, line: 288, flags: DIFlagFwdDecl)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !2580, file: !2550, line: 289, baseType: !2608, size: 64, offset: 640)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !2550, line: 228, size: 64, elements: !2609)
!2609 = !{!2610}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2608, file: !2550, line: 229, baseType: !255, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !2580, file: !2550, line: 291, baseType: !255, size: 64, offset: 704)
!2612 = !DIDerivedType(tag: DW_TAG_member, scope: !2580, file: !2550, line: 299, baseType: !2613, offset: 768)
!2613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2580, file: !2550, line: 299, elements: !1093)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2580, file: !2550, line: 305, baseType: !101, size: 16, offset: 768)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2580, file: !2550, line: 311, baseType: !101, size: 16, offset: 784)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2580, file: !2550, line: 313, baseType: !80, size: 32, offset: 800)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2580, file: !2550, line: 315, baseType: !2618, size: 64, offset: 832)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2580, file: !2550, line: 317, baseType: !2620, size: 64, offset: 896)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2622, line: 678, size: 1984, elements: !2623)
!2622 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2623 = !{!2624, !2628, !2629, !2632, !2653, !2654, !2655, !2656, !2661, !2662, !2663}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2621, file: !2622, line: 679, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2627, line: 325, flags: DIFlagFwdDecl)
!2627 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2621, file: !2622, line: 680, baseType: !58, size: 32, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2621, file: !2622, line: 685, baseType: !2630, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2622, line: 685, flags: DIFlagFwdDecl)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2621, file: !2622, line: 687, baseType: !2633, size: 576, offset: 192)
!2633 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2634, line: 26, baseType: !2635)
!2634 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2634, line: 16, size: 576, elements: !2636)
!2636 = !{!2637, !2638, !2639, !2640, !2641, !2642, !2647, !2652}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2635, file: !2634, line: 17, baseType: !60, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2635, file: !2634, line: 18, baseType: !84, size: 32, offset: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2635, file: !2634, line: 19, baseType: !84, size: 32, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2635, file: !2634, line: 20, baseType: !1543, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2635, file: !2634, line: 22, baseType: !300, size: 64, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2635, file: !2634, line: 23, baseType: !2643, size: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2634, line: 13, baseType: !2645)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!300, !742, !300}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2635, file: !2634, line: 24, baseType: !2648, size: 64, offset: 320)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2634, line: 14, baseType: !2650)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{null, !300, !300}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2635, file: !2634, line: 25, baseType: !192, size: 192, offset: 384)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2621, file: !2622, line: 688, baseType: !2633, size: 576, offset: 768)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2621, file: !2622, line: 694, baseType: !58, size: 32, offset: 1344)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2621, file: !2622, line: 699, baseType: !60, size: 32, offset: 1376)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2621, file: !2622, line: 700, baseType: !2657, size: 128, offset: 1408)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2622, line: 550, size: 128, elements: !2658)
!2658 = !{!2659, !2660}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2657, file: !2622, line: 551, baseType: !2579, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2657, file: !2622, line: 552, baseType: !2579, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2621, file: !2622, line: 701, baseType: !1228, size: 256, offset: 1536)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2621, file: !2622, line: 702, baseType: !2197, size: 64, offset: 1792)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2621, file: !2622, line: 707, baseType: !183, size: 128, offset: 1856)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2580, file: !2550, line: 324, baseType: !2665, offset: 960)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1649, elements: !207)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !2573, file: !2557, line: 1390, baseType: !2667, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!84, !2579, !2670, !58}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !2557, line: 1559, size: 192, elements: !2672)
!2672 = !{!2673, !2676, !2677}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !2671, file: !2557, line: 1560, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !2557, line: 32, flags: DIFlagFwdDecl)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !2671, file: !2557, line: 1561, baseType: !350, size: 8, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2671, file: !2557, line: 1562, baseType: !2678, size: 64, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{null, !2670}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2573, file: !2557, line: 1392, baseType: !2682, size: 64, offset: 128)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!84, !2555, !2685}
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !2557, line: 115, baseType: !58)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2573, file: !2557, line: 1393, baseType: !2687, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{null, !2555}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2573, file: !2557, line: 1394, baseType: !2691, size: 64, offset: 256)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!84, !2548, !2685, !58, !283}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2573, file: !2557, line: 1396, baseType: !2691, size: 64, offset: 320)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2573, file: !2557, line: 1398, baseType: !2696, size: 64, offset: 384)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!58, !2555, !58}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2573, file: !2557, line: 1400, baseType: !2687, size: 64, offset: 448)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2573, file: !2557, line: 1401, baseType: !2701, size: 64, offset: 512)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!84, !2548, !2704}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !36, line: 56, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !2573, file: !2557, line: 1402, baseType: !2707, size: 64, offset: 576)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!84, !2548, !350}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !2573, file: !2557, line: 1403, baseType: !2687, size: 64, offset: 640)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2573, file: !2557, line: 1405, baseType: !2712, size: 64, offset: 704)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !2548, !283}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2573, file: !2557, line: 1406, baseType: !2716, size: 64, offset: 768)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!84, !2555, !1552, !58, !2719, !300}
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !2557, line: 342, baseType: !2720)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!84, !2723, !58, !300}
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2725, line: 106, size: 512, elements: !2726)
!2725 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2726 = !{!2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2736, !2737}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2724, file: !2725, line: 107, baseType: !256, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2724, file: !2725, line: 108, baseType: !256, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2724, file: !2725, line: 109, baseType: !256, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2724, file: !2725, line: 110, baseType: !91, size: 8, offset: 192)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2724, file: !2725, line: 111, baseType: !91, size: 8, offset: 200)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2724, file: !2725, line: 112, baseType: !91, size: 8, offset: 208)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2724, file: !2725, line: 113, baseType: !91, size: 8, offset: 216)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2724, file: !2725, line: 114, baseType: !2735, size: 32, offset: 224)
!2735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 32, elements: !188)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2724, file: !2725, line: 115, baseType: !256, size: 64, offset: 256)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2724, file: !2725, line: 116, baseType: !2738, size: 192, offset: 320)
!2738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 192, elements: !2739)
!2739 = !{!2740}
!2740 = !DISubrange(count: 24)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2573, file: !2557, line: 1408, baseType: !2742, size: 64, offset: 832)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!362, !2555, !2745}
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !2573, file: !2557, line: 1410, baseType: !2747, size: 64, offset: 896)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!84, !2555, !2750, !2751}
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!2751 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !2557, line: 1381, baseType: !58, size: 32, elements: !2752)
!2752 = !{!2753, !2754, !2755}
!2753 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!2754 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!2755 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2573, file: !2557, line: 1412, baseType: !779, size: 64, offset: 960)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2573, file: !2557, line: 1413, baseType: !2758, size: 64, offset: 1024)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2760)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !2557, line: 37, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !2573, file: !2557, line: 1420, baseType: !2762, size: 64, offset: 1088)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!84, !2555, !1698}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2556, file: !2557, line: 146, baseType: !2766, size: 64, offset: 640)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2557, line: 391, size: 7296, elements: !2768)
!2768 = !{!2769, !2770, !2773, !2774, !2777, !2780, !2781, !2785, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3284, !3285, !3289, !3290, !3291, !3292, !3334, !3335, !3336, !3339, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3358, !3359, !3360, !3361, !3362, !3363}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2767, file: !2557, line: 392, baseType: !2674, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2767, file: !2557, line: 393, baseType: !2771, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !2557, line: 30, flags: DIFlagFwdDecl)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2767, file: !2557, line: 395, baseType: !996, size: 128, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2767, file: !2557, line: 397, baseType: !2775, size: 64, offset: 256)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !2557, line: 39, flags: DIFlagFwdDecl)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2767, file: !2557, line: 398, baseType: !2778, size: 64, offset: 320)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !2557, line: 38, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !2767, file: !2557, line: 399, baseType: !116, size: 256, offset: 384)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2767, file: !2557, line: 401, baseType: !2782, size: 64, offset: 640)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2784)
!2784 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !2557, line: 401, flags: DIFlagFwdDecl)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2767, file: !2557, line: 404, baseType: !2786, size: 64, offset: 704)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !2557, line: 404, flags: DIFlagFwdDecl)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2767, file: !2557, line: 406, baseType: !58, size: 32, offset: 768)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !2767, file: !2557, line: 409, baseType: !737, size: 128, offset: 832)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2767, file: !2557, line: 410, baseType: !58, size: 32, offset: 960)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2767, file: !2557, line: 416, baseType: !300, size: 64, offset: 1024)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2767, file: !2557, line: 421, baseType: !283, size: 64, offset: 1088)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2767, file: !2557, line: 426, baseType: !80, size: 32, offset: 1152)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2767, file: !2557, line: 432, baseType: !84, size: 32, offset: 1184)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2767, file: !2557, line: 434, baseType: !60, size: 32, offset: 1216)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !2767, file: !2557, line: 436, baseType: !2555, size: 64, offset: 1280)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2767, file: !2557, line: 438, baseType: !170, size: 32, offset: 1344)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2767, file: !2557, line: 443, baseType: !805, size: 64, offset: 1408)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2767, file: !2557, line: 450, baseType: !2800, size: 64, offset: 1472)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !2802, line: 705, size: 5824, elements: !2803)
!2802 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!2803 = !{!2804, !2805, !2806, !2809, !2810, !2863, !2939, !2940, !2941, !2942, !2943, !2956, !3135, !3148, !3158, !3162, !3164, !3165, !3166, !3170, !3177, !3178, !3181, !3184, !3188, !3191, !3192, !3193, !3194, !3195, !3196, !3226, !3227, !3228, !3231, !3234, !3262, !3269, !3270, !3271, !3272, !3273}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2801, file: !2802, line: 706, baseType: !799, size: 512)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2801, file: !2802, line: 707, baseType: !2800, size: 64, offset: 512)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2801, file: !2802, line: 709, baseType: !2807, size: 64, offset: 576)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !2802, line: 37, flags: DIFlagFwdDecl)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2801, file: !2802, line: 711, baseType: !353, size: 64, offset: 640)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2801, file: !2802, line: 712, baseType: !2811, size: 64, offset: 704)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2813)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !2802, line: 89, size: 384, elements: !2814)
!2814 = !{!2815, !2816, !2817, !2823, !2827, !2831}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2813, file: !2802, line: 90, baseType: !353, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2813, file: !2802, line: 91, baseType: !879, size: 64, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2813, file: !2802, line: 92, baseType: !2818, size: 64, offset: 128)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!84, !2821, !835}
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2801)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2813, file: !2802, line: 93, baseType: !2824, size: 64, offset: 192)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!362, !2821, !2745, !1770, !1771}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2813, file: !2802, line: 95, baseType: !2828, size: 64, offset: 256)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{null, !2800}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2813, file: !2802, line: 97, baseType: !2832, size: 64, offset: 320)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2834)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !2835, line: 286, size: 1472, elements: !2836)
!2835 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!2836 = !{!2837, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2834, file: !2835, line: 287, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!84, !2800}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2834, file: !2835, line: 288, baseType: !2828, size: 64, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2834, file: !2835, line: 289, baseType: !2838, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2834, file: !2835, line: 290, baseType: !2838, size: 64, offset: 192)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2834, file: !2835, line: 291, baseType: !2838, size: 64, offset: 256)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2834, file: !2835, line: 292, baseType: !2838, size: 64, offset: 320)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2834, file: !2835, line: 293, baseType: !2838, size: 64, offset: 384)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2834, file: !2835, line: 294, baseType: !2838, size: 64, offset: 448)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2834, file: !2835, line: 295, baseType: !2838, size: 64, offset: 512)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2834, file: !2835, line: 296, baseType: !2838, size: 64, offset: 576)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2834, file: !2835, line: 297, baseType: !2838, size: 64, offset: 640)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2834, file: !2835, line: 298, baseType: !2838, size: 64, offset: 704)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2834, file: !2835, line: 299, baseType: !2838, size: 64, offset: 768)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2834, file: !2835, line: 300, baseType: !2838, size: 64, offset: 832)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2834, file: !2835, line: 301, baseType: !2838, size: 64, offset: 896)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2834, file: !2835, line: 302, baseType: !2838, size: 64, offset: 960)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2834, file: !2835, line: 303, baseType: !2838, size: 64, offset: 1024)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2834, file: !2835, line: 304, baseType: !2838, size: 64, offset: 1088)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2834, file: !2835, line: 305, baseType: !2838, size: 64, offset: 1152)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2834, file: !2835, line: 306, baseType: !2838, size: 64, offset: 1216)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2834, file: !2835, line: 307, baseType: !2838, size: 64, offset: 1280)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2834, file: !2835, line: 308, baseType: !2838, size: 64, offset: 1344)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2834, file: !2835, line: 309, baseType: !2838, size: 64, offset: 1408)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2801, file: !2802, line: 714, baseType: !2864, size: 64, offset: 768)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2866)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2867, line: 80, size: 1344, elements: !2868)
!2867 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2868 = !{!2869, !2870, !2871, !2872, !2873, !2874, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2938}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2866, file: !2867, line: 81, baseType: !353, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2866, file: !2867, line: 82, baseType: !353, size: 64, offset: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2866, file: !2867, line: 83, baseType: !879, size: 64, offset: 128)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2866, file: !2867, line: 84, baseType: !879, size: 64, offset: 192)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2866, file: !2867, line: 85, baseType: !879, size: 64, offset: 256)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2866, file: !2867, line: 87, baseType: !2875, size: 64, offset: 320)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!84, !2800, !2878}
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !2880, line: 96, size: 1152, elements: !2881)
!2880 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!2881 = !{!2882, !2883, !2884, !2885, !2886, !2887, !2893, !2897, !2901, !2902, !2903, !2904, !2905, !2913, !2914, !2915, !2916, !2917, !2918}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2879, file: !2880, line: 97, baseType: !353, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2879, file: !2880, line: 98, baseType: !2864, size: 64, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2879, file: !2880, line: 100, baseType: !779, size: 64, offset: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2879, file: !2880, line: 101, baseType: !353, size: 64, offset: 192)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2879, file: !2880, line: 103, baseType: !350, size: 8, offset: 256)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2879, file: !2880, line: 104, baseType: !2888, size: 32, offset: 288)
!2888 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !2880, line: 45, baseType: !58, size: 32, elements: !2889)
!2889 = !{!2890, !2891, !2892}
!2890 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!2891 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!2892 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2879, file: !2880, line: 106, baseType: !2894, size: 64, offset: 320)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2896)
!2896 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2880, line: 106, flags: DIFlagFwdDecl)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2879, file: !2880, line: 107, baseType: !2898, size: 64, offset: 384)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2900)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2880, line: 107, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2879, file: !2880, line: 109, baseType: !2838, size: 64, offset: 448)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2879, file: !2880, line: 110, baseType: !2828, size: 64, offset: 512)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2879, file: !2880, line: 111, baseType: !2838, size: 64, offset: 576)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2879, file: !2880, line: 112, baseType: !2828, size: 64, offset: 640)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2879, file: !2880, line: 113, baseType: !2906, size: 64, offset: 704)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!84, !2800, !2909}
!2909 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !2835, line: 60, baseType: !2910)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !2835, line: 58, size: 32, elements: !2911)
!2911 = !{!2912}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2910, file: !2835, line: 59, baseType: !84, size: 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2879, file: !2880, line: 114, baseType: !2838, size: 64, offset: 768)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2879, file: !2880, line: 115, baseType: !879, size: 64, offset: 832)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2879, file: !2880, line: 116, baseType: !879, size: 64, offset: 896)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2879, file: !2880, line: 118, baseType: !2832, size: 64, offset: 960)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2879, file: !2880, line: 119, baseType: !2828, size: 64, offset: 1024)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2879, file: !2880, line: 121, baseType: !2919, size: 64, offset: 1088)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !2880, line: 121, flags: DIFlagFwdDecl)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2866, file: !2867, line: 88, baseType: !2818, size: 64, offset: 384)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2866, file: !2867, line: 89, baseType: !2838, size: 64, offset: 448)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2866, file: !2867, line: 90, baseType: !2828, size: 64, offset: 512)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2866, file: !2867, line: 91, baseType: !2828, size: 64, offset: 576)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2866, file: !2867, line: 92, baseType: !2828, size: 64, offset: 640)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2866, file: !2867, line: 94, baseType: !2838, size: 64, offset: 704)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2866, file: !2867, line: 95, baseType: !2838, size: 64, offset: 768)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2866, file: !2867, line: 97, baseType: !2906, size: 64, offset: 832)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2866, file: !2867, line: 98, baseType: !2838, size: 64, offset: 896)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2866, file: !2867, line: 100, baseType: !2838, size: 64, offset: 960)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2866, file: !2867, line: 102, baseType: !2838, size: 64, offset: 1024)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2866, file: !2867, line: 103, baseType: !2828, size: 64, offset: 1088)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2866, file: !2867, line: 105, baseType: !2832, size: 64, offset: 1152)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2866, file: !2867, line: 107, baseType: !2935, size: 64, offset: 1216)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2937)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2867, line: 107, flags: DIFlagFwdDecl)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2866, file: !2867, line: 109, baseType: !350, size: 8, offset: 1280)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2801, file: !2802, line: 715, baseType: !2878, size: 64, offset: 832)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2801, file: !2802, line: 717, baseType: !300, size: 64, offset: 896)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2801, file: !2802, line: 719, baseType: !300, size: 64, offset: 960)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2801, file: !2802, line: 721, baseType: !116, size: 256, offset: 1024)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2801, file: !2802, line: 725, baseType: !2944, size: 448, offset: 1280)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !2802, line: 517, size: 448, elements: !2945)
!2945 = !{!2946, !2947, !2948, !2949}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2944, file: !2802, line: 518, baseType: !128, size: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2944, file: !2802, line: 519, baseType: !128, size: 128, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2944, file: !2802, line: 520, baseType: !128, size: 128, offset: 256)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2944, file: !2802, line: 521, baseType: !2950, size: 32, offset: 384)
!2950 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !2802, line: 487, baseType: !58, size: 32, elements: !2951)
!2951 = !{!2952, !2953, !2954, !2955}
!2952 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!2953 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!2954 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!2955 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2801, file: !2802, line: 726, baseType: !2957, size: 2496, offset: 1728)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !2835, line: 663, size: 2496, elements: !2958)
!2958 = !{!2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !3003, !3004, !3005, !3006, !3007, !3008, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3107, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3128, !3132}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2957, file: !2835, line: 664, baseType: !2909, size: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2957, file: !2835, line: 665, baseType: !58, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2957, file: !2835, line: 666, baseType: !58, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2957, file: !2835, line: 667, baseType: !350, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2957, file: !2835, line: 668, baseType: !350, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2957, file: !2835, line: 669, baseType: !350, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2957, file: !2835, line: 670, baseType: !350, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2957, file: !2835, line: 671, baseType: !350, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2957, file: !2835, line: 672, baseType: !350, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2957, file: !2835, line: 673, baseType: !350, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2957, file: !2835, line: 674, baseType: !350, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2957, file: !2835, line: 675, baseType: !314, size: 32, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2957, file: !2835, line: 676, baseType: !60, size: 32, offset: 96)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2957, file: !2835, line: 678, baseType: !128, size: 128, offset: 128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2957, file: !2835, line: 679, baseType: !1017, size: 256, offset: 256)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2957, file: !2835, line: 680, baseType: !2975, size: 64, offset: 512)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2977, line: 43, size: 1536, elements: !2978)
!2977 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2978 = !{!2979, !2980, !2981, !2982, !2983, !2986, !2987, !2988, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2976, file: !2977, line: 44, baseType: !353, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2976, file: !2977, line: 45, baseType: !84, size: 32, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2976, file: !2977, line: 46, baseType: !128, size: 128, offset: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2976, file: !2977, line: 47, baseType: !60, size: 32, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2976, file: !2977, line: 48, baseType: !2984, size: 64, offset: 320)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !2835, line: 629, flags: DIFlagFwdDecl)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2976, file: !2977, line: 49, baseType: !2135, size: 320, offset: 384)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2976, file: !2977, line: 50, baseType: !283, size: 64, offset: 704)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2976, file: !2977, line: 51, baseType: !2989, size: 64, offset: 768)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2990, line: 29, baseType: !112)
!2990 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2976, file: !2977, line: 52, baseType: !2989, size: 64, offset: 832)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2976, file: !2977, line: 53, baseType: !2989, size: 64, offset: 896)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2976, file: !2977, line: 54, baseType: !2989, size: 64, offset: 960)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2976, file: !2977, line: 55, baseType: !2989, size: 64, offset: 1024)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2976, file: !2977, line: 56, baseType: !283, size: 64, offset: 1088)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2976, file: !2977, line: 57, baseType: !283, size: 64, offset: 1152)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2976, file: !2977, line: 58, baseType: !283, size: 64, offset: 1216)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2976, file: !2977, line: 59, baseType: !283, size: 64, offset: 1280)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2976, file: !2977, line: 60, baseType: !283, size: 64, offset: 1344)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2976, file: !2977, line: 61, baseType: !2800, size: 64, offset: 1408)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2976, file: !2977, line: 62, baseType: !350, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2976, file: !2977, line: 63, baseType: !350, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2957, file: !2835, line: 681, baseType: !350, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2957, file: !2835, line: 682, baseType: !350, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2957, file: !2835, line: 683, baseType: !350, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2957, file: !2835, line: 684, baseType: !58, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2957, file: !2835, line: 685, baseType: !58, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2957, file: !2835, line: 690, baseType: !3009, size: 512, offset: 640)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !3010, line: 118, size: 512, elements: !3011)
!3010 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!3011 = !{!3012, !3018, !3019, !3028, !3076, !3077, !3078, !3079}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3009, file: !3010, line: 119, baseType: !3013, size: 256)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3014, line: 9, size: 256, elements: !3015)
!3014 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3015 = !{!3016, !3017}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3013, file: !3014, line: 10, baseType: !279, size: 192, align: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3013, file: !3014, line: 11, baseType: !2989, size: 64, offset: 192)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3009, file: !3010, line: 120, baseType: !2989, size: 64, offset: 256)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3009, file: !3010, line: 121, baseType: !3020, size: 64, offset: 320)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!3023, !3027}
!3023 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !3010, line: 65, baseType: !58, size: 32, elements: !3024)
!3024 = !{!3025, !3026}
!3025 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!3026 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3009, file: !3010, line: 122, baseType: !3029, size: 64, offset: 384)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !3010, line: 159, size: 512, align: 512, elements: !3031)
!3031 = !{!3032, !3057, !3058, !3061, !3066, !3067, !3071, !3075}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3030, file: !3010, line: 160, baseType: !3033, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !3010, line: 215, size: 4608, align: 512, elements: !3035)
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3034, file: !3010, line: 216, baseType: !121, size: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3034, file: !3010, line: 217, baseType: !58, size: 32, offset: 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3034, file: !3010, line: 218, baseType: !58, size: 32, offset: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3034, file: !3010, line: 219, baseType: !58, size: 32, offset: 96)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3034, file: !3010, line: 220, baseType: !58, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3034, file: !3010, line: 221, baseType: !58, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3034, file: !3010, line: 222, baseType: !58, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3034, file: !3010, line: 223, baseType: !58, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3034, file: !3010, line: 224, baseType: !58, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3034, file: !3010, line: 226, baseType: !58, size: 32, offset: 160)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3034, file: !3010, line: 227, baseType: !101, size: 16, offset: 192)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3034, file: !3010, line: 228, baseType: !101, size: 16, offset: 208)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3034, file: !3010, line: 229, baseType: !58, size: 32, offset: 224)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3034, file: !3010, line: 235, baseType: !2989, size: 64, offset: 256)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3034, file: !3010, line: 236, baseType: !3027, size: 64, offset: 320)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3034, file: !3010, line: 237, baseType: !2989, size: 64, offset: 384)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3034, file: !3010, line: 238, baseType: !3027, size: 64, offset: 448)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3034, file: !3010, line: 239, baseType: !3054, size: 4096, align: 512, offset: 512)
!3054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3030, size: 4096, align: 512, elements: !3055)
!3055 = !{!3056}
!3056 = !DISubrange(count: 8)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3030, file: !3010, line: 161, baseType: !58, size: 32, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3030, file: !3010, line: 162, baseType: !3059, size: 32, offset: 96)
!3059 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !49, line: 32, baseType: !3060)
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !136, line: 96, baseType: !84)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3030, file: !3010, line: 163, baseType: !3062, size: 32, offset: 128)
!3062 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !480, line: 274, baseType: !3063)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !480, line: 274, size: 32, elements: !3064)
!3064 = !{!3065}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3063, file: !480, line: 274, baseType: !484, size: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3030, file: !3010, line: 164, baseType: !3027, size: 64, offset: 192)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3030, file: !3010, line: 165, baseType: !3068, size: 128, offset: 256)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3014, line: 14, size: 128, elements: !3069)
!3069 = !{!3070}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3068, file: !3014, line: 15, baseType: !912, size: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3030, file: !3010, line: 166, baseType: !3072, size: 64, offset: 384)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!2989}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3030, file: !3010, line: 167, baseType: !2989, size: 64, offset: 448)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3009, file: !3010, line: 123, baseType: !89, size: 8, offset: 448)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3009, file: !3010, line: 124, baseType: !89, size: 8, offset: 456)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3009, file: !3010, line: 125, baseType: !89, size: 8, offset: 464)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3009, file: !3010, line: 126, baseType: !89, size: 8, offset: 472)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2957, file: !2835, line: 691, baseType: !255, size: 64, offset: 1152)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2957, file: !2835, line: 692, baseType: !1228, size: 256, offset: 1216)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2957, file: !2835, line: 693, baseType: !192, size: 192, offset: 1472)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2957, file: !2835, line: 694, baseType: !2984, size: 64, offset: 1664)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2957, file: !2835, line: 695, baseType: !80, size: 32, offset: 1728)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2957, file: !2835, line: 696, baseType: !80, size: 32, offset: 1760)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2957, file: !2835, line: 697, baseType: !58, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2957, file: !2835, line: 698, baseType: !58, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2957, file: !2835, line: 699, baseType: !58, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2957, file: !2835, line: 700, baseType: !58, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2957, file: !2835, line: 701, baseType: !58, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2957, file: !2835, line: 702, baseType: !58, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2957, file: !2835, line: 703, baseType: !350, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2957, file: !2835, line: 704, baseType: !58, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2957, file: !2835, line: 705, baseType: !58, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2957, file: !2835, line: 706, baseType: !58, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2957, file: !2835, line: 707, baseType: !58, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2957, file: !2835, line: 708, baseType: !58, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2957, file: !2835, line: 709, baseType: !58, size: 32, offset: 1824)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2957, file: !2835, line: 710, baseType: !3100, size: 32, offset: 1856)
!3100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !2835, line: 620, baseType: !58, size: 32, elements: !3101)
!3101 = !{!3102, !3103, !3104, !3105, !3106}
!3102 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!3103 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!3104 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!3105 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!3106 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2957, file: !2835, line: 711, baseType: !3108, size: 32, offset: 1888)
!3108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !2835, line: 597, baseType: !84, size: 32, elements: !3109)
!3109 = !{!3110, !3111, !3112, !3113, !3114}
!3110 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!3111 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!3112 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!3113 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!3114 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2957, file: !2835, line: 712, baseType: !3108, size: 32, offset: 1920)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2957, file: !2835, line: 713, baseType: !84, size: 32, offset: 1952)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2957, file: !2835, line: 714, baseType: !84, size: 32, offset: 1984)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2957, file: !2835, line: 715, baseType: !255, size: 64, offset: 2048)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2957, file: !2835, line: 716, baseType: !255, size: 64, offset: 2112)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2957, file: !2835, line: 717, baseType: !255, size: 64, offset: 2176)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2957, file: !2835, line: 718, baseType: !255, size: 64, offset: 2240)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2957, file: !2835, line: 720, baseType: !3123, size: 64, offset: 2304)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !2835, line: 632, size: 64, elements: !3125)
!3125 = !{!3126, !3127}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3124, file: !2835, line: 633, baseType: !60, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3124, file: !2835, line: 634, baseType: !58, size: 32, offset: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2957, file: !2835, line: 721, baseType: !3129, size: 64, offset: 2368)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !2800, !272}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2957, file: !2835, line: 722, baseType: !3133, size: 64, offset: 2432)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !2835, line: 722, flags: DIFlagFwdDecl)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2801, file: !2802, line: 727, baseType: !3136, size: 64, offset: 4224)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !2835, line: 742, size: 1792, elements: !3138)
!3138 = !{!3139, !3140, !3141, !3145, !3146, !3147}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3137, file: !2835, line: 743, baseType: !2834, size: 1472)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3137, file: !2835, line: 744, baseType: !2838, size: 64, offset: 1472)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3137, file: !2835, line: 745, baseType: !3142, size: 64, offset: 1536)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{null, !2800, !350}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3137, file: !2835, line: 746, baseType: !2838, size: 64, offset: 1600)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3137, file: !2835, line: 747, baseType: !2828, size: 64, offset: 1664)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3137, file: !2835, line: 748, baseType: !2828, size: 64, offset: 1728)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2801, file: !2802, line: 736, baseType: !3149, size: 128, offset: 4288)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !2802, line: 529, size: 128, elements: !3150)
!3150 = !{!3151, !3155}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3149, file: !2802, line: 531, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3154, line: 13, flags: DIFlagFwdDecl)
!3154 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3149, file: !2802, line: 532, baseType: !3156, size: 64, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !2802, line: 49, flags: DIFlagFwdDecl)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2801, file: !2802, line: 738, baseType: !3159, size: 64, offset: 4416)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3161)
!3161 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !2802, line: 738, flags: DIFlagFwdDecl)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2801, file: !2802, line: 740, baseType: !3163, size: 64, offset: 4480)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2801, file: !2802, line: 741, baseType: !255, size: 64, offset: 4544)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2801, file: !2802, line: 746, baseType: !255, size: 64, offset: 4608)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2801, file: !2802, line: 747, baseType: !3167, size: 64, offset: 4672)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3169)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !2802, line: 747, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2801, file: !2802, line: 749, baseType: !3171, size: 64, offset: 4736)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !2802, line: 428, size: 128, elements: !3173)
!3173 = !{!3174, !3175, !3176}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3172, file: !2802, line: 433, baseType: !58, size: 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3172, file: !2802, line: 434, baseType: !58, size: 32, offset: 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3172, file: !2802, line: 435, baseType: !283, size: 64, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2801, file: !2802, line: 751, baseType: !128, size: 128, offset: 4800)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2801, file: !2802, line: 762, baseType: !3179, size: 64, offset: 4928)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !2802, line: 762, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2801, file: !2802, line: 770, baseType: !3182, offset: 4992)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3183, line: 5, elements: !1093)
!3183 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2801, file: !2802, line: 772, baseType: !3185, size: 64, offset: 4992)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3187, line: 18, flags: DIFlagFwdDecl)
!3187 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2801, file: !2802, line: 773, baseType: !3189, size: 64, offset: 5056)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2867, line: 22, flags: DIFlagFwdDecl)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2801, file: !2802, line: 776, baseType: !84, size: 32, offset: 5120)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2801, file: !2802, line: 778, baseType: !588, size: 32, offset: 5152)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2801, file: !2802, line: 779, baseType: !314, size: 32, offset: 5184)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2801, file: !2802, line: 781, baseType: !60, size: 32, offset: 5216)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2801, file: !2802, line: 782, baseType: !128, size: 128, offset: 5248)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2801, file: !2802, line: 784, baseType: !3197, size: 64, offset: 5376)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3199)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3200, line: 52, size: 768, elements: !3201)
!3200 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3210, !3214, !3215, !3216, !3217, !3221, !3225}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3199, file: !3200, line: 53, baseType: !353, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3199, file: !3200, line: 55, baseType: !879, size: 64, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3199, file: !3200, line: 56, baseType: !879, size: 64, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3199, file: !3200, line: 58, baseType: !2818, size: 64, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3199, file: !3200, line: 59, baseType: !3207, size: 64, offset: 256)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!362, !2821, !2745}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3199, file: !3200, line: 61, baseType: !3211, size: 64, offset: 320)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{null, !3197}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3199, file: !3200, line: 62, baseType: !2828, size: 64, offset: 384)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3199, file: !3200, line: 64, baseType: !2838, size: 64, offset: 448)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3199, file: !3200, line: 66, baseType: !1732, size: 64, offset: 512)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3199, file: !3200, line: 67, baseType: !3218, size: 64, offset: 576)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!1188, !2821}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3199, file: !3200, line: 69, baseType: !3222, size: 64, offset: 640)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{null, !2821, !1770, !1771}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3199, file: !3200, line: 71, baseType: !2832, size: 64, offset: 704)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2801, file: !2802, line: 785, baseType: !879, size: 64, offset: 5440)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2801, file: !2802, line: 787, baseType: !2828, size: 64, offset: 5504)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2801, file: !2802, line: 788, baseType: !3229, size: 64, offset: 5568)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !2802, line: 46, flags: DIFlagFwdDecl)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2801, file: !2802, line: 789, baseType: !3232, size: 64, offset: 5632)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !2802, line: 48, flags: DIFlagFwdDecl)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2801, file: !2802, line: 791, baseType: !3235, size: 64, offset: 5696)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !2802, line: 597, size: 128, elements: !3237)
!3237 = !{!3238, !3248, !3254, !3260, !3261}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3236, file: !2802, line: 598, baseType: !3239, size: 32)
!3239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !2802, line: 547, baseType: !58, size: 32, elements: !3240)
!3240 = !{!3241, !3242, !3243, !3244, !3245, !3246, !3247}
!3241 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!3242 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!3243 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!3244 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!3245 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!3246 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!3247 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3236, file: !2802, line: 599, baseType: !3249, size: 32, offset: 32)
!3249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !2802, line: 564, baseType: !58, size: 32, elements: !3250)
!3250 = !{!3251, !3252, !3253}
!3251 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!3252 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!3253 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3236, file: !2802, line: 600, baseType: !3255, size: 32, offset: 64)
!3255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !2802, line: 577, baseType: !58, size: 32, elements: !3256)
!3256 = !{!3257, !3258, !3259}
!3257 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!3258 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!3259 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3236, file: !2802, line: 601, baseType: !350, size: 8, offset: 96)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3236, file: !2802, line: 602, baseType: !350, size: 8, offset: 104)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2801, file: !2802, line: 793, baseType: !3263, size: 32, offset: 5760)
!3263 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !2802, line: 503, baseType: !58, size: 32, elements: !3264)
!3264 = !{!3265, !3266, !3267, !3268}
!3265 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!3266 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!3267 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!3268 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2801, file: !2802, line: 795, baseType: !350, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2801, file: !2802, line: 796, baseType: !350, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2801, file: !2802, line: 797, baseType: !350, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2801, file: !2802, line: 798, baseType: !350, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2801, file: !2802, line: 799, baseType: !350, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2767, file: !2557, line: 451, baseType: !3108, size: 32, offset: 1536)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2767, file: !2557, line: 457, baseType: !283, size: 64, offset: 1600)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2767, file: !2557, line: 459, baseType: !58, size: 32, offset: 1664)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2767, file: !2557, line: 466, baseType: !58, size: 32, offset: 1696)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2767, file: !2557, line: 468, baseType: !2135, size: 320, offset: 1728)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2767, file: !2557, line: 469, baseType: !1228, size: 256, offset: 2048)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !2767, file: !2557, line: 471, baseType: !80, size: 32, offset: 2304)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !2767, file: !2557, line: 473, baseType: !3282, size: 64, offset: 2368)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !2557, line: 473, flags: DIFlagFwdDecl)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2767, file: !2557, line: 475, baseType: !128, size: 128, offset: 2432)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !2767, file: !2557, line: 477, baseType: !3286, size: 64, offset: 2560)
!3286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 64, elements: !3287)
!3287 = !{!3288}
!3288 = !DISubrange(count: 1)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !2767, file: !2557, line: 478, baseType: !2605, size: 64, offset: 2624)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !2767, file: !2557, line: 479, baseType: !128, size: 128, offset: 2688)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !2767, file: !2557, line: 480, baseType: !116, size: 256, offset: 2816)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2767, file: !2557, line: 483, baseType: !3293, size: 960, offset: 3072)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !2557, line: 300, size: 960, elements: !3294)
!3294 = !{!3295, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3333}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !3293, file: !2557, line: 301, baseType: !3296, size: 32)
!3296 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !2557, line: 295, baseType: !58, size: 32, elements: !3297)
!3297 = !{!3298, !3299}
!3298 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!3299 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !3293, file: !2557, line: 302, baseType: !283, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !3293, file: !2557, line: 303, baseType: !283, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !3293, file: !2557, line: 305, baseType: !58, size: 32, offset: 192)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !3293, file: !2557, line: 306, baseType: !58, size: 32, offset: 224)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !3293, file: !2557, line: 307, baseType: !58, size: 32, offset: 256)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !3293, file: !2557, line: 308, baseType: !58, size: 32, offset: 288)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !3293, file: !2557, line: 309, baseType: !58, size: 32, offset: 320)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3293, file: !2557, line: 310, baseType: !58, size: 32, offset: 352)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !3293, file: !2557, line: 311, baseType: !58, size: 32, offset: 384)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !3293, file: !2557, line: 312, baseType: !58, size: 32, offset: 416)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !3293, file: !2557, line: 313, baseType: !58, size: 32, offset: 448)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !3293, file: !2557, line: 314, baseType: !58, size: 32, offset: 480)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !3293, file: !2557, line: 315, baseType: !58, size: 32, offset: 512)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !3293, file: !2557, line: 316, baseType: !58, size: 32, offset: 544)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !3293, file: !2557, line: 317, baseType: !58, size: 32, offset: 576)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !3293, file: !2557, line: 318, baseType: !58, size: 32, offset: 608)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !3293, file: !2557, line: 319, baseType: !58, size: 32, offset: 640)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !3293, file: !2557, line: 320, baseType: !58, size: 32, offset: 672)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !3293, file: !2557, line: 321, baseType: !58, size: 32, offset: 704)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !3293, file: !2557, line: 322, baseType: !58, size: 32, offset: 736)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !3293, file: !2557, line: 323, baseType: !58, size: 32, offset: 768)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !3293, file: !2557, line: 325, baseType: !101, size: 16, offset: 800)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !3293, file: !2557, line: 326, baseType: !101, size: 16, offset: 816)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !3293, file: !2557, line: 327, baseType: !101, size: 16, offset: 832)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !3293, file: !2557, line: 329, baseType: !93, size: 8, offset: 848)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !3293, file: !2557, line: 330, baseType: !93, size: 8, offset: 856)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !3293, file: !2557, line: 331, baseType: !93, size: 8, offset: 864)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !3293, file: !2557, line: 332, baseType: !3328, size: 32, offset: 896)
!3328 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !2557, line: 285, baseType: !58, size: 32, elements: !3329)
!3329 = !{!3330, !3331, !3332}
!3330 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!3331 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!3332 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !3293, file: !2557, line: 339, baseType: !58, size: 32, offset: 928)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2767, file: !2557, line: 485, baseType: !58, size: 32, offset: 4032)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2767, file: !2557, line: 487, baseType: !84, size: 32, offset: 4064)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !2767, file: !2557, line: 489, baseType: !3337, size: 64, offset: 4096)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !2557, line: 31, flags: DIFlagFwdDecl)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2767, file: !2557, line: 494, baseType: !3340, size: 64, offset: 4160)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !2557, line: 35, flags: DIFlagFwdDecl)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !2767, file: !2557, line: 495, baseType: !128, size: 128, offset: 4224)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2767, file: !2557, line: 497, baseType: !128, size: 128, offset: 4352)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2767, file: !2557, line: 498, baseType: !60, size: 32, offset: 4480)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2767, file: !2557, line: 499, baseType: !2192, size: 704, offset: 4544)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2767, file: !2557, line: 501, baseType: !116, size: 256, offset: 5248)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2767, file: !2557, line: 502, baseType: !116, size: 256, offset: 5504)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2767, file: !2557, line: 508, baseType: !128, size: 128, offset: 5760)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2767, file: !2557, line: 509, baseType: !60, size: 32, offset: 5888)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2767, file: !2557, line: 511, baseType: !84, size: 32, offset: 5920)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2767, file: !2557, line: 517, baseType: !48, size: 128, align: 64, offset: 5952)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2767, file: !2557, line: 518, baseType: !192, size: 192, offset: 6080)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2767, file: !2557, line: 523, baseType: !116, size: 256, offset: 6272)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !2767, file: !2557, line: 525, baseType: !84, size: 32, offset: 6528)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2767, file: !2557, line: 527, baseType: !3356, size: 64, offset: 6592)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !2557, line: 527, flags: DIFlagFwdDecl)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2767, file: !2557, line: 528, baseType: !128, size: 128, offset: 6656)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2767, file: !2557, line: 530, baseType: !473, size: 64, offset: 6784)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !2767, file: !2557, line: 531, baseType: !473, size: 64, offset: 6848)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !2767, file: !2557, line: 532, baseType: !473, size: 64, offset: 6912)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2767, file: !2557, line: 536, baseType: !116, size: 256, offset: 6976)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2767, file: !2557, line: 538, baseType: !350, size: 8, offset: 7232)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2556, file: !2557, line: 147, baseType: !300, size: 64, offset: 704)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2556, file: !2557, line: 149, baseType: !2621, size: 1984, offset: 768)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2556, file: !2557, line: 151, baseType: !84, size: 32, offset: 2752)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2556, file: !2557, line: 152, baseType: !283, size: 64, offset: 2816)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !2556, file: !2557, line: 161, baseType: !116, size: 256, offset: 2880)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !2556, file: !2557, line: 162, baseType: !58, size: 32, offset: 3136)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2556, file: !2557, line: 164, baseType: !3371, size: 64, offset: 3200)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !3373, line: 163, size: 6848, elements: !3374)
!3373 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!3374 = !{!3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3432, !3433, !3434, !3435, !3437, !3438, !3439}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3372, file: !3373, line: 164, baseType: !255, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3372, file: !3373, line: 165, baseType: !279, size: 192, align: 64, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3372, file: !3373, line: 166, baseType: !128, size: 128, offset: 256)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3372, file: !3373, line: 167, baseType: !283, size: 64, offset: 384)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3372, file: !3373, line: 168, baseType: !283, size: 64, offset: 448)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3372, file: !3373, line: 170, baseType: !1885, size: 32, offset: 512)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3372, file: !3373, line: 171, baseType: !58, size: 32, offset: 544)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3372, file: !3373, line: 172, baseType: !58, size: 32, offset: 576)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3372, file: !3373, line: 173, baseType: !58, size: 32, offset: 608)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3372, file: !3373, line: 173, baseType: !58, size: 32, offset: 640)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3372, file: !3373, line: 179, baseType: !106, size: 64, offset: 704)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3372, file: !3373, line: 184, baseType: !283, size: 64, offset: 768)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3372, file: !3373, line: 186, baseType: !3388, size: 4672, offset: 832)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !3373, line: 105, size: 4672, elements: !3389)
!3389 = !{!3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3414, !3415, !3427, !3428, !3429, !3430, !3431}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3388, file: !3373, line: 106, baseType: !3371, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3388, file: !3373, line: 108, baseType: !283, size: 64, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3388, file: !3373, line: 109, baseType: !283, size: 64, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3388, file: !3373, line: 111, baseType: !128, size: 128, offset: 192)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3388, file: !3373, line: 112, baseType: !128, size: 128, offset: 320)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3388, file: !3373, line: 113, baseType: !128, size: 128, offset: 448)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3388, file: !3373, line: 114, baseType: !128, size: 128, offset: 576)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3388, file: !3373, line: 115, baseType: !60, size: 32, offset: 704)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3388, file: !3373, line: 117, baseType: !80, size: 32, offset: 736)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3388, file: !3373, line: 118, baseType: !1156, size: 1280, offset: 768)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3388, file: !3373, line: 120, baseType: !283, size: 64, offset: 2048)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3388, file: !3373, line: 121, baseType: !283, size: 64, offset: 2112)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3388, file: !3373, line: 122, baseType: !283, size: 64, offset: 2176)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3388, file: !3373, line: 123, baseType: !283, size: 64, offset: 2240)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3388, file: !3373, line: 124, baseType: !283, size: 64, offset: 2304)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3388, file: !3373, line: 132, baseType: !283, size: 64, offset: 2368)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3388, file: !3373, line: 133, baseType: !283, size: 64, offset: 2432)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3388, file: !3373, line: 135, baseType: !3408, size: 384, offset: 2496)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3409, line: 76, size: 384, elements: !3410)
!3409 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3410 = !{!3411, !3412, !3413}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3408, file: !3409, line: 78, baseType: !410, size: 320)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3408, file: !3409, line: 80, baseType: !58, size: 32, offset: 320)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3408, file: !3409, line: 81, baseType: !121, size: 32, offset: 352)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3388, file: !3373, line: 136, baseType: !84, size: 32, offset: 2880)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3388, file: !3373, line: 137, baseType: !3416, size: 32, offset: 2912)
!3416 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !3373, line: 44, baseType: !58, size: 32, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426}
!3418 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!3419 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!3420 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!3421 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!3422 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!3423 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!3424 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!3425 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!3426 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3388, file: !3373, line: 139, baseType: !60, size: 32, offset: 2944)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3388, file: !3373, line: 140, baseType: !128, size: 128, offset: 3008)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3388, file: !3373, line: 141, baseType: !2192, size: 704, offset: 3136)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3388, file: !3373, line: 142, baseType: !2192, size: 704, offset: 3840)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3388, file: !3373, line: 144, baseType: !128, size: 128, offset: 4544)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3372, file: !3373, line: 187, baseType: !128, size: 128, offset: 5504)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3372, file: !3373, line: 193, baseType: !192, size: 192, offset: 5632)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3372, file: !3373, line: 195, baseType: !2800, size: 64, offset: 5824)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3372, file: !3373, line: 196, baseType: !3436, size: 512, offset: 5888)
!3436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !842)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3372, file: !3373, line: 197, baseType: !2800, size: 64, offset: 6400)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3372, file: !3373, line: 199, baseType: !2135, size: 320, offset: 6464)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3372, file: !3373, line: 202, baseType: !473, size: 64, offset: 6784)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !2556, file: !2557, line: 165, baseType: !799, size: 512, offset: 3264)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2556, file: !2557, line: 166, baseType: !805, size: 64, offset: 3776)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !2556, file: !2557, line: 168, baseType: !128, size: 128, offset: 3840)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2556, file: !2557, line: 170, baseType: !3444, size: 64, offset: 3968)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !2557, line: 170, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2556, file: !2557, line: 171, baseType: !80, size: 32, offset: 4032)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2556, file: !2557, line: 172, baseType: !3448, size: 64, offset: 4096)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !2557, line: 104, flags: DIFlagFwdDecl)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !2556, file: !2557, line: 197, baseType: !3451, size: 64, offset: 4160)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !2557, line: 197, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2556, file: !2557, line: 199, baseType: !84, size: 32, offset: 4224)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2556, file: !2557, line: 200, baseType: !3455, size: 64, offset: 4288)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !2557, line: 105, flags: DIFlagFwdDecl)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2556, file: !2557, line: 201, baseType: !2163, offset: 4352)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !2556, file: !2557, line: 202, baseType: !255, size: 64, offset: 4352)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !2556, file: !2557, line: 203, baseType: !2685, size: 32, offset: 4416)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !2556, file: !2557, line: 209, baseType: !3461, size: 64, offset: 4480)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !2557, line: 384, size: 576, elements: !3463)
!3463 = !{!3464, !3465, !3466, !3467}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3462, file: !2557, line: 385, baseType: !799, size: 512)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !3462, file: !2557, line: 386, baseType: !350, size: 8, offset: 512)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !3462, file: !2557, line: 387, baseType: !58, size: 32, offset: 544)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !3462, file: !2557, line: 388, baseType: !3468, offset: 576)
!3468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3469, elements: !207)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !2557, line: 378, size: 640, elements: !3470)
!3470 = !{!3471, !3472, !3473}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3469, file: !2557, line: 379, baseType: !799, size: 512)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !3469, file: !2557, line: 380, baseType: !1552, size: 64, offset: 512)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !3469, file: !2557, line: 381, baseType: !1552, size: 64, offset: 576)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2549, file: !2550, line: 44, baseType: !2766, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2549, file: !2550, line: 45, baseType: !3476, size: 64, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2550, line: 45, flags: DIFlagFwdDecl)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2549, file: !2550, line: 46, baseType: !283, size: 64, offset: 320)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2549, file: !2550, line: 47, baseType: !350, size: 8, offset: 384)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2549, file: !2550, line: 48, baseType: !89, size: 8, offset: 392)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2549, file: !2550, line: 49, baseType: !350, size: 8, offset: 400)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2549, file: !2550, line: 50, baseType: !350, size: 8, offset: 408)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2549, file: !2550, line: 51, baseType: !588, size: 32, offset: 416)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2549, file: !2550, line: 52, baseType: !80, size: 32, offset: 448)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2549, file: !2550, line: 53, baseType: !60, size: 32, offset: 480)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2549, file: !2550, line: 54, baseType: !513, size: 64, offset: 512)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2549, file: !2550, line: 55, baseType: !300, size: 64, offset: 576)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2549, file: !2550, line: 56, baseType: !300, size: 64, offset: 640)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2549, file: !2550, line: 57, baseType: !3490, size: 64, offset: 704)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3492)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2557, line: 1477, size: 128, elements: !3493)
!3493 = !{!3494, !3498}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !3492, file: !2557, line: 1478, baseType: !3495, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{null, !2548, !350}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3492, file: !2557, line: 1483, baseType: !3499, size: 64, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{null, !2548}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2549, file: !2550, line: 58, baseType: !116, size: 256, offset: 768)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2549, file: !2550, line: 60, baseType: !84, size: 32, offset: 1024)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2549, file: !2550, line: 61, baseType: !84, size: 32, offset: 1056)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2549, file: !2550, line: 62, baseType: !805, size: 64, offset: 1088)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2549, file: !2550, line: 65, baseType: !116, size: 256, offset: 1152)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2549, file: !2550, line: 66, baseType: !746, size: 64, offset: 1408)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2549, file: !2550, line: 68, baseType: !3509, size: 64, offset: 1472)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2557, line: 63, size: 808, elements: !3511)
!3511 = !{!3512, !3516}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !3510, file: !2557, line: 64, baseType: !3513, size: 296)
!3513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !3514)
!3514 = !{!3515}
!3515 = !DISubrange(count: 37)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !3510, file: !2557, line: 65, baseType: !3517, size: 512, offset: 296)
!3517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 512, elements: !842)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2549, file: !2550, line: 72, baseType: !350, size: 8, offset: 1536)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2549, file: !2550, line: 77, baseType: !2801, size: 5824, offset: 1600)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !747, file: !36, line: 1226, baseType: !3521, size: 64, offset: 1664)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !2557, line: 1495, size: 128, elements: !3523)
!3523 = !{!3524, !3525}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3522, file: !2557, line: 1496, baseType: !2548, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3522, file: !2557, line: 1497, baseType: !300, size: 64, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !747, file: !36, line: 1227, baseType: !3371, size: 64, offset: 1728)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !747, file: !36, line: 1228, baseType: !3528, size: 64, offset: 1792)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !36, line: 1228, flags: DIFlagFwdDecl)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !747, file: !36, line: 1229, baseType: !183, size: 128, offset: 1856)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !747, file: !36, line: 1230, baseType: !58, size: 32, offset: 1984)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !747, file: !36, line: 1231, baseType: !3533, size: 2496, offset: 2048)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !2339, line: 521, size: 2496, elements: !3534)
!3534 = !{!3535, !3536, !3537, !3539, !3571}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3533, file: !2339, line: 522, baseType: !58, size: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3533, file: !2339, line: 523, baseType: !288, size: 320, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3533, file: !2339, line: 524, baseType: !3538, size: 192, offset: 384)
!3538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 192, elements: !161)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3533, file: !2339, line: 525, baseType: !3540, size: 1728, offset: 576)
!3540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3541, size: 1728, elements: !161)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !2339, line: 222, size: 576, elements: !3542)
!3542 = !{!3543, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3541, file: !2339, line: 223, baseType: !3544, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !2339, line: 445, size: 256, elements: !3546)
!3546 = !{!3547, !3548, !3561, !3562}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3545, file: !2339, line: 446, baseType: !84, size: 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3545, file: !2339, line: 447, baseType: !3549, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3551)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !2339, line: 312, size: 512, elements: !3552)
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3551, file: !2339, line: 313, baseType: !2289, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3551, file: !2339, line: 314, baseType: !2289, size: 64, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3551, file: !2339, line: 315, baseType: !2289, size: 64, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3551, file: !2339, line: 316, baseType: !2289, size: 64, offset: 192)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3551, file: !2339, line: 317, baseType: !2408, size: 64, offset: 256)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3551, file: !2339, line: 318, baseType: !2408, size: 64, offset: 320)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3551, file: !2339, line: 319, baseType: !2408, size: 64, offset: 384)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3551, file: !2339, line: 320, baseType: !2438, size: 64, offset: 448)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3545, file: !2339, line: 448, baseType: !779, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3545, file: !2339, line: 449, baseType: !3544, size: 64, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3541, file: !2339, line: 224, baseType: !84, size: 32, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3541, file: !2339, line: 226, baseType: !128, size: 128, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3541, file: !2339, line: 227, baseType: !283, size: 64, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3541, file: !2339, line: 228, baseType: !58, size: 32, offset: 320)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3541, file: !2339, line: 229, baseType: !58, size: 32, offset: 352)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3541, file: !2339, line: 230, baseType: !2376, size: 64, offset: 384)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3541, file: !2339, line: 231, baseType: !2376, size: 64, offset: 448)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3541, file: !2339, line: 232, baseType: !300, size: 64, offset: 512)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3533, file: !2339, line: 526, baseType: !3572, size: 192, offset: 2304)
!3572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3549, size: 192, elements: !161)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !747, file: !36, line: 1233, baseType: !3574, size: 2368, offset: 4544)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !36, line: 1184, size: 2368, elements: !3575)
!3575 = !{!3576, !3577, !3578}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3574, file: !36, line: 1185, baseType: !101, size: 16)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3574, file: !36, line: 1186, baseType: !101, size: 16, offset: 16)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3574, file: !36, line: 1187, baseType: !3579, size: 2304, offset: 64)
!3579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3580, size: 2304, elements: !161)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3581, line: 12, size: 768, elements: !3582)
!3581 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3582 = !{!3583, !3591, !3592, !4725, !4726}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3580, file: !3581, line: 13, baseType: !3584, size: 384)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3585, line: 17, size: 384, elements: !3586)
!3585 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3586 = !{!3587, !3588, !3589, !3590}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3584, file: !3585, line: 18, baseType: !84, size: 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3584, file: !3585, line: 19, baseType: !84, size: 32, offset: 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3584, file: !3585, line: 20, baseType: !192, size: 192, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3584, file: !3585, line: 22, baseType: !48, size: 128, align: 64, offset: 256)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3580, file: !3581, line: 14, baseType: !1989, size: 64, offset: 384)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3580, file: !3581, line: 15, baseType: !3593, size: 64, offset: 448)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3594, line: 16, size: 64, elements: !3595)
!3594 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3595 = !{!3596}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3593, file: !3594, line: 17, baseType: !3597, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1820, line: 746, size: 58368, elements: !3599)
!3599 = !{!3600, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3680, !3691, !3711, !3715, !3718, !3749, !3750, !3751, !3752, !3760, !3762, !3763, !3764, !3765, !3766, !3767, !3778, !3779, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3796, !3797, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3891, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3939, !3945, !3946, !3947, !3948, !3949, !3950, !3953, !3960, !3965, !3968, !3971, !3974, !3977, !4115, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4153, !4154, !4155, !4164, !4172, !4173, !4174, !4175, !4176, !4181, !4182, !4183, !4186, !4187, !4189, !4200, !4203, !4211, !4214, !4215, !4301, !4302, !4303, !4304, !4305, !4311, !4312, !4313, !4314, !4317, !4318, !4321, !4335, !4336, !4339, !4340, !4341, !4344, !4345, !4346, !4347, !4348, !4349, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4381, !4384, !4390, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4478, !4480, !4481, !4482, !4483, !4484, !4485, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4502, !4503, !4504}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3598, file: !1820, line: 752, baseType: !3601, size: 192)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3602, line: 56, size: 192, elements: !3603)
!3602 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3603 = !{!3604, !3605, !3606, !3607}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3601, file: !3602, line: 57, baseType: !283, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3601, file: !3602, line: 58, baseType: !283, size: 64, offset: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3601, file: !3602, line: 59, baseType: !314, size: 32, offset: 128)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3601, file: !3602, line: 61, baseType: !314, size: 32, offset: 160)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3598, file: !1820, line: 754, baseType: !58, size: 32, offset: 192)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3598, file: !1820, line: 767, baseType: !300, size: 64, offset: 256)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3598, file: !1820, line: 768, baseType: !170, size: 32, offset: 320)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3598, file: !1820, line: 770, baseType: !58, size: 32, offset: 352)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3598, file: !1820, line: 771, baseType: !58, size: 32, offset: 384)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3598, file: !1820, line: 774, baseType: !84, size: 32, offset: 416)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3598, file: !1820, line: 775, baseType: !3615, size: 128, offset: 448)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3616, line: 58, size: 128, elements: !3617)
!3616 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3617 = !{!3618, !3619, !3624, !3625}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3615, file: !3616, line: 59, baseType: !42, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, scope: !3615, file: !3616, line: 60, baseType: !3620, size: 32, offset: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3615, file: !3616, line: 60, size: 32, elements: !3621)
!3621 = !{!3622, !3623}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3620, file: !3616, line: 61, baseType: !58, size: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3620, file: !3616, line: 62, baseType: !80, size: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3615, file: !3616, line: 65, baseType: !99, size: 16, offset: 96)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3615, file: !3616, line: 65, baseType: !99, size: 16, offset: 112)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3598, file: !1820, line: 776, baseType: !58, size: 32, offset: 576)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3598, file: !1820, line: 777, baseType: !283, size: 64, offset: 640)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3598, file: !1820, line: 778, baseType: !3597, size: 64, offset: 704)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3598, file: !1820, line: 787, baseType: !84, size: 32, offset: 768)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3598, file: !1820, line: 788, baseType: !84, size: 32, offset: 800)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3598, file: !1820, line: 790, baseType: !84, size: 32, offset: 832)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3598, file: !1820, line: 792, baseType: !84, size: 32, offset: 864)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3598, file: !1820, line: 793, baseType: !84, size: 32, offset: 896)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3598, file: !1820, line: 794, baseType: !84, size: 32, offset: 928)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3598, file: !1820, line: 795, baseType: !58, size: 32, offset: 960)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3598, file: !1820, line: 797, baseType: !3637, size: 2048, offset: 1024)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1820, line: 551, size: 2048, elements: !3638)
!3638 = !{!3639, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3659, !3662, !3663, !3664}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3637, file: !1820, line: 553, baseType: !3640, size: 128)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1820, line: 411, size: 128, elements: !3641)
!3641 = !{!3642, !3643}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3640, file: !1820, line: 412, baseType: !283, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3640, file: !1820, line: 413, baseType: !314, size: 32, offset: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3637, file: !1820, line: 554, baseType: !279, size: 192, align: 64, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3637, file: !1820, line: 555, baseType: !255, size: 64, offset: 320)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3637, file: !1820, line: 556, baseType: !255, size: 64, offset: 384)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3637, file: !1820, line: 558, baseType: !128, size: 128, offset: 448)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3637, file: !1820, line: 559, baseType: !58, size: 32, offset: 576)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3637, file: !1820, line: 561, baseType: !255, size: 64, offset: 640)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3637, file: !1820, line: 562, baseType: !255, size: 64, offset: 704)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3637, file: !1820, line: 563, baseType: !255, size: 64, offset: 768)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3637, file: !1820, line: 564, baseType: !255, size: 64, offset: 832)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3637, file: !1820, line: 565, baseType: !112, size: 64, offset: 896)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3637, file: !1820, line: 566, baseType: !255, size: 64, offset: 960)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3637, file: !1820, line: 568, baseType: !255, size: 64, offset: 1024)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3637, file: !1820, line: 571, baseType: !84, size: 32, offset: 1088)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3637, file: !1820, line: 572, baseType: !3658, size: 64, offset: 1152)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3637, file: !1820, line: 574, baseType: !3660, size: 64, offset: 1216)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1820, line: 49, flags: DIFlagFwdDecl)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3637, file: !1820, line: 576, baseType: !3660, size: 64, offset: 1280)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3637, file: !1820, line: 578, baseType: !283, size: 64, offset: 1344)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3637, file: !1820, line: 588, baseType: !3665, size: 512, align: 512, offset: 1536)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1820, line: 497, size: 512, align: 512, elements: !3666)
!3666 = !{!3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3665, file: !1820, line: 498, baseType: !255, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3665, file: !1820, line: 499, baseType: !255, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3665, file: !1820, line: 500, baseType: !255, size: 64, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3665, file: !1820, line: 501, baseType: !314, size: 32, offset: 192)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3665, file: !1820, line: 502, baseType: !314, size: 32, offset: 224)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3665, file: !1820, line: 503, baseType: !283, size: 64, offset: 256)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3665, file: !1820, line: 504, baseType: !283, size: 64, offset: 320)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3665, file: !1820, line: 505, baseType: !283, size: 64, offset: 384)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3665, file: !1820, line: 506, baseType: !3676, size: 64, align: 64, offset: 448)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1820, line: 445, size: 64, align: 64, elements: !3677)
!3677 = !{!3678, !3679}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3676, file: !1820, line: 446, baseType: !58, size: 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3676, file: !1820, line: 447, baseType: !58, size: 32, offset: 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3598, file: !1820, line: 798, baseType: !3681, size: 384, offset: 3072)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1820, line: 592, size: 384, elements: !3682)
!3682 = !{!3683, !3684, !3685, !3686, !3687, !3688, !3689}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3681, file: !1820, line: 593, baseType: !128, size: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3681, file: !1820, line: 594, baseType: !283, size: 64, offset: 128)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3681, file: !1820, line: 595, baseType: !283, size: 64, offset: 192)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3681, file: !1820, line: 596, baseType: !58, size: 32, offset: 256)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3681, file: !1820, line: 597, baseType: !101, size: 16, offset: 288)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3681, file: !1820, line: 598, baseType: !101, size: 16, offset: 304)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3681, file: !1820, line: 600, baseType: !3690, size: 64, offset: 320)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3598, file: !1820, line: 799, baseType: !3692, size: 1792, offset: 3456)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1820, line: 610, size: 1792, elements: !3693)
!3693 = !{!3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3692, file: !1820, line: 611, baseType: !279, size: 192, align: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3692, file: !1820, line: 618, baseType: !255, size: 64, offset: 192)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3692, file: !1820, line: 619, baseType: !255, size: 64, offset: 256)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3692, file: !1820, line: 620, baseType: !255, size: 64, offset: 320)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3692, file: !1820, line: 621, baseType: !255, size: 64, offset: 384)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3692, file: !1820, line: 622, baseType: !255, size: 64, offset: 448)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3692, file: !1820, line: 629, baseType: !112, size: 64, offset: 512)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3692, file: !1820, line: 630, baseType: !255, size: 64, offset: 576)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3692, file: !1820, line: 631, baseType: !58, size: 32, offset: 640)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3692, file: !1820, line: 653, baseType: !58, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3692, file: !1820, line: 654, baseType: !58, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3692, file: !1820, line: 655, baseType: !58, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3692, file: !1820, line: 656, baseType: !58, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3692, file: !1820, line: 662, baseType: !3009, size: 512, offset: 704)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3692, file: !1820, line: 671, baseType: !3009, size: 512, offset: 1216)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3692, file: !1820, line: 679, baseType: !3710, size: 64, offset: 1728)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3598, file: !1820, line: 800, baseType: !3712, size: 64, offset: 5248)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3714)
!3714 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1820, line: 800, flags: DIFlagFwdDecl)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3598, file: !1820, line: 809, baseType: !3716, size: 64, offset: 5312)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1820, line: 70, flags: DIFlagFwdDecl)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3598, file: !1820, line: 825, baseType: !3719, size: 2048, align: 512, offset: 5632)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1820, line: 509, size: 2048, align: 512, elements: !3720)
!3720 = !{!3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3719, file: !1820, line: 511, baseType: !255, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3719, file: !1820, line: 512, baseType: !255, size: 64, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3719, file: !1820, line: 513, baseType: !255, size: 64, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3719, file: !1820, line: 514, baseType: !255, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3719, file: !1820, line: 515, baseType: !255, size: 64, offset: 256)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3719, file: !1820, line: 516, baseType: !255, size: 64, offset: 320)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3719, file: !1820, line: 518, baseType: !255, size: 64, offset: 384)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3719, file: !1820, line: 519, baseType: !255, size: 64, offset: 448)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3719, file: !1820, line: 520, baseType: !112, size: 64, offset: 512)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3719, file: !1820, line: 522, baseType: !255, size: 64, offset: 576)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3719, file: !1820, line: 523, baseType: !255, size: 64, offset: 640)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3719, file: !1820, line: 524, baseType: !112, size: 64, offset: 704)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3719, file: !1820, line: 526, baseType: !112, size: 64, offset: 768)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3719, file: !1820, line: 527, baseType: !255, size: 64, offset: 832)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3719, file: !1820, line: 529, baseType: !255, size: 64, offset: 896)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3719, file: !1820, line: 530, baseType: !255, size: 64, offset: 960)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3719, file: !1820, line: 531, baseType: !255, size: 64, offset: 1024)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3719, file: !1820, line: 532, baseType: !255, size: 64, offset: 1088)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3719, file: !1820, line: 533, baseType: !255, size: 64, offset: 1152)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3719, file: !1820, line: 535, baseType: !255, size: 64, offset: 1216)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3719, file: !1820, line: 536, baseType: !255, size: 64, offset: 1280)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3719, file: !1820, line: 537, baseType: !255, size: 64, offset: 1344)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3719, file: !1820, line: 538, baseType: !255, size: 64, offset: 1408)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3719, file: !1820, line: 539, baseType: !255, size: 64, offset: 1472)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3719, file: !1820, line: 540, baseType: !255, size: 64, offset: 1536)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3719, file: !1820, line: 541, baseType: !255, size: 64, offset: 1600)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3719, file: !1820, line: 542, baseType: !255, size: 64, offset: 1664)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3719, file: !1820, line: 543, baseType: !255, size: 64, offset: 1728)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3598, file: !1820, line: 833, baseType: !58, size: 32, offset: 7680)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3598, file: !1820, line: 836, baseType: !58, size: 32, offset: 7712)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3598, file: !1820, line: 837, baseType: !84, size: 32, offset: 7744)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3598, file: !1820, line: 838, baseType: !3753, size: 64, offset: 7808)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3755)
!3755 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3756, line: 19, baseType: !3757)
!3756 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3756, line: 19, size: 64, elements: !3758)
!3758 = !{!3759}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3757, file: !3756, line: 19, baseType: !3286, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3598, file: !1820, line: 839, baseType: !3761, size: 64, offset: 7872)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3598, file: !1820, line: 840, baseType: !3755, size: 64, offset: 7936)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3598, file: !1820, line: 841, baseType: !300, size: 64, offset: 8000)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3598, file: !1820, line: 843, baseType: !101, size: 16, offset: 8064)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3598, file: !1820, line: 845, baseType: !101, size: 16, offset: 8080)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3598, file: !1820, line: 848, baseType: !84, size: 32, offset: 8096)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3598, file: !1820, line: 849, baseType: !3768, size: 32, offset: 8128)
!3768 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1820, line: 718, size: 32, elements: !3769)
!3769 = !{!3770, !3777}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3768, file: !1820, line: 724, baseType: !3771, size: 32)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3768, file: !1820, line: 719, size: 32, elements: !3772)
!3772 = !{!3773, !3774, !3775, !3776}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3771, file: !1820, line: 720, baseType: !89, size: 8)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3771, file: !1820, line: 721, baseType: !89, size: 8, offset: 8)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3771, file: !1820, line: 722, baseType: !89, size: 8, offset: 16)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3771, file: !1820, line: 723, baseType: !89, size: 8, offset: 24)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3768, file: !1820, line: 725, baseType: !314, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3598, file: !1820, line: 850, baseType: !128, size: 128, offset: 8192)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3598, file: !1820, line: 851, baseType: !3780, size: 64, offset: 8320)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1820, line: 60, flags: DIFlagFwdDecl)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3598, file: !1820, line: 855, baseType: !283, size: 64, offset: 8384)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3598, file: !1820, line: 856, baseType: !89, size: 8, offset: 8448)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3598, file: !1820, line: 857, baseType: !89, size: 8, offset: 8456)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3598, file: !1820, line: 858, baseType: !84, size: 32, offset: 8480)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3598, file: !1820, line: 859, baseType: !128, size: 128, offset: 8512)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3598, file: !1820, line: 860, baseType: !84, size: 32, offset: 8640)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3598, file: !1820, line: 861, baseType: !128, size: 128, offset: 8704)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3598, file: !1820, line: 873, baseType: !3790, size: 256, offset: 8832)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1820, line: 376, size: 256, elements: !3791)
!3791 = !{!3792, !3793, !3794, !3795}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3790, file: !1820, line: 381, baseType: !283, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3790, file: !1820, line: 384, baseType: !257, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3790, file: !1820, line: 389, baseType: !257, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3790, file: !1820, line: 392, baseType: !257, size: 64, offset: 192)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3598, file: !1820, line: 875, baseType: !128, size: 128, offset: 9088)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3598, file: !1820, line: 877, baseType: !3798, size: 320, offset: 9216)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3799, line: 86, size: 320, elements: !3800)
!3799 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3800 = !{!3801, !3802, !3803}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3798, file: !3799, line: 87, baseType: !84, size: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3798, file: !3799, line: 88, baseType: !128, size: 128, offset: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3798, file: !3799, line: 89, baseType: !128, size: 128, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3598, file: !1820, line: 878, baseType: !279, size: 192, align: 64, offset: 9536)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3598, file: !1820, line: 881, baseType: !1072, size: 64, offset: 9728)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3598, file: !1820, line: 882, baseType: !1072, size: 64, offset: 9792)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3598, file: !1820, line: 884, baseType: !84, size: 32, offset: 9856)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3598, file: !1820, line: 885, baseType: !84, size: 32, offset: 9888)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3598, file: !1820, line: 886, baseType: !84, size: 32, offset: 9920)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3598, file: !1820, line: 888, baseType: !84, size: 32, offset: 9952)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3598, file: !1820, line: 890, baseType: !283, size: 64, offset: 9984)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3598, file: !1820, line: 893, baseType: !58, size: 32, offset: 10048)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3598, file: !1820, line: 896, baseType: !58, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3598, file: !1820, line: 897, baseType: !58, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3598, file: !1820, line: 898, baseType: !58, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3598, file: !1820, line: 899, baseType: !58, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3598, file: !1820, line: 919, baseType: !58, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3598, file: !1820, line: 922, baseType: !58, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3598, file: !1820, line: 923, baseType: !58, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3598, file: !1820, line: 925, baseType: !58, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3598, file: !1820, line: 939, baseType: !58, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3598, file: !1820, line: 941, baseType: !58, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3598, file: !1820, line: 944, baseType: !58, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3598, file: !1820, line: 956, baseType: !58, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3598, file: !1820, line: 962, baseType: !58, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3598, file: !1820, line: 966, baseType: !58, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3598, file: !1820, line: 969, baseType: !283, size: 64, offset: 10176)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3598, file: !1820, line: 971, baseType: !3829, size: 448, offset: 10240)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !3830, line: 25, size: 448, elements: !3831)
!3830 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!3831 = !{!3832, !3833, !3838}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3829, file: !3830, line: 26, baseType: !283, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3829, file: !3830, line: 27, baseType: !3834, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!628, !3837}
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, scope: !3829, file: !3830, line: 28, baseType: !3839, size: 320, offset: 128)
!3839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3829, file: !3830, line: 28, size: 320, elements: !3840)
!3840 = !{!3841, !3851, !3881}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3839, file: !3830, line: 37, baseType: !3842, size: 320)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3839, file: !3830, line: 30, size: 320, elements: !3843)
!3843 = !{!3844, !3846, !3847, !3848, !3849, !3850}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3842, file: !3830, line: 31, baseType: !3845, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3842, file: !3830, line: 32, baseType: !314, size: 32, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3842, file: !3830, line: 33, baseType: !314, size: 32, offset: 96)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3842, file: !3830, line: 34, baseType: !314, size: 32, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3842, file: !3830, line: 35, baseType: !255, size: 64, offset: 192)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3842, file: !3830, line: 36, baseType: !3845, size: 64, offset: 256)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3839, file: !3830, line: 47, baseType: !3852, size: 192)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3839, file: !3830, line: 39, size: 192, elements: !3853)
!3853 = !{!3854, !3855, !3861, !3880}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3852, file: !3830, line: 40, baseType: !3059, size: 32)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3852, file: !3830, line: 41, baseType: !3856, size: 32, offset: 32)
!3856 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !3830, line: 16, baseType: !58, size: 32, elements: !3857)
!3857 = !{!3858, !3859, !3860}
!3858 = !DIEnumerator(name: "TT_NONE", value: 0)
!3859 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!3860 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!3861 = !DIDerivedType(tag: DW_TAG_member, scope: !3852, file: !3830, line: 42, baseType: !3862, size: 64, offset: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3852, file: !3830, line: 42, size: 64, elements: !3863)
!3863 = !{!3864, !3872}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3862, file: !3830, line: 43, baseType: !3865, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3867, line: 7, size: 128, elements: !3868)
!3867 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3868 = !{!3869, !3871}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3866, file: !3867, line: 8, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !136, line: 93, baseType: !114)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3866, file: !3867, line: 9, baseType: !114, size: 64, offset: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3862, file: !3830, line: 44, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3875, line: 7, size: 64, elements: !3876)
!3875 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3876 = !{!3877, !3879}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3874, file: !3875, line: 8, baseType: !3878, size: 32)
!3878 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3875, line: 5, baseType: !272)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3874, file: !3875, line: 9, baseType: !272, size: 32, offset: 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3852, file: !3830, line: 46, baseType: !255, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3839, file: !3830, line: 55, baseType: !3882, size: 256)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3839, file: !3830, line: 49, size: 256, elements: !3883)
!3883 = !{!3884, !3887, !3888, !3889, !3890}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3882, file: !3830, line: 50, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3830, line: 14, flags: DIFlagFwdDecl)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3882, file: !3830, line: 51, baseType: !84, size: 32, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3882, file: !3830, line: 52, baseType: !84, size: 32, offset: 96)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3882, file: !3830, line: 53, baseType: !283, size: 64, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3882, file: !3830, line: 54, baseType: !283, size: 64, offset: 192)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3598, file: !1820, line: 973, baseType: !3892, size: 32, offset: 10688)
!3892 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !49, line: 27, baseType: !3893)
!3893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !136, line: 28, baseType: !84)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3598, file: !1820, line: 974, baseType: !3892, size: 32, offset: 10720)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3598, file: !1820, line: 978, baseType: !283, size: 64, offset: 10752)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3598, file: !1820, line: 987, baseType: !3597, size: 64, offset: 10816)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3598, file: !1820, line: 990, baseType: !3597, size: 64, offset: 10880)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3598, file: !1820, line: 995, baseType: !128, size: 128, offset: 10944)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3598, file: !1820, line: 996, baseType: !128, size: 128, offset: 11072)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3598, file: !1820, line: 997, baseType: !3597, size: 64, offset: 11200)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3598, file: !1820, line: 1005, baseType: !128, size: 128, offset: 11264)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3598, file: !1820, line: 1006, baseType: !128, size: 128, offset: 11392)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3598, file: !1820, line: 1009, baseType: !165, size: 64, offset: 11520)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3598, file: !1820, line: 1010, baseType: !3905, size: 512, offset: 11584)
!3905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 512, elements: !188)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3598, file: !1820, line: 1011, baseType: !128, size: 128, offset: 12096)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3598, file: !1820, line: 1012, baseType: !128, size: 128, offset: 12224)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3598, file: !1820, line: 1014, baseType: !1900, size: 64, offset: 12352)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3598, file: !1820, line: 1017, baseType: !2035, size: 64, offset: 12416)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3598, file: !1820, line: 1020, baseType: !2035, size: 64, offset: 12480)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3598, file: !1820, line: 1023, baseType: !300, size: 64, offset: 12544)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3598, file: !1820, line: 1025, baseType: !255, size: 64, offset: 12608)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3598, file: !1820, line: 1026, baseType: !255, size: 64, offset: 12672)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3598, file: !1820, line: 1031, baseType: !255, size: 64, offset: 12736)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3598, file: !1820, line: 1032, baseType: !3916, size: 192, offset: 12800)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1820, line: 324, size: 192, elements: !3917)
!3917 = !{!3918, !3919, !3920}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3916, file: !1820, line: 326, baseType: !255, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3916, file: !1820, line: 327, baseType: !255, size: 64, offset: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3916, file: !1820, line: 328, baseType: !121, size: 32, offset: 128)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3598, file: !1820, line: 1041, baseType: !283, size: 64, offset: 12992)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3598, file: !1820, line: 1042, baseType: !283, size: 64, offset: 13056)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3598, file: !1820, line: 1045, baseType: !255, size: 64, offset: 13120)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3598, file: !1820, line: 1048, baseType: !255, size: 64, offset: 13184)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3598, file: !1820, line: 1051, baseType: !283, size: 64, offset: 13248)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3598, file: !1820, line: 1052, baseType: !283, size: 64, offset: 13312)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3598, file: !1820, line: 1055, baseType: !3928, size: 640, offset: 13376)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3929, line: 132, size: 640, elements: !3930)
!3929 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3930 = !{!3931, !3937, !3938}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3928, file: !3929, line: 133, baseType: !3932, size: 576)
!3932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3933, size: 576, elements: !161)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3929, line: 117, size: 192, elements: !3934)
!3934 = !{!3935, !3936}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3933, file: !3929, line: 118, baseType: !255, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3933, file: !3929, line: 119, baseType: !3068, size: 128, offset: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3928, file: !3929, line: 134, baseType: !58, size: 32, offset: 576)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3928, file: !3929, line: 135, baseType: !58, size: 32, offset: 608)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3598, file: !1820, line: 1058, baseType: !3940, size: 448, offset: 14016)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3929, line: 144, size: 448, elements: !3941)
!3941 = !{!3942, !3943, !3944}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3940, file: !3929, line: 145, baseType: !48, size: 128, align: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3940, file: !3929, line: 146, baseType: !116, size: 256, offset: 128)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3940, file: !3929, line: 147, baseType: !58, size: 32, offset: 384)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3598, file: !1820, line: 1064, baseType: !228, size: 64, offset: 14464)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3598, file: !1820, line: 1067, baseType: !228, size: 64, offset: 14528)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3598, file: !1820, line: 1070, baseType: !228, size: 64, offset: 14592)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3598, file: !1820, line: 1074, baseType: !264, size: 64, offset: 14656)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3598, file: !1820, line: 1084, baseType: !15, size: 128, offset: 14720)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3598, file: !1820, line: 1086, baseType: !3951, size: 64, offset: 14848)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1820, line: 55, flags: DIFlagFwdDecl)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3598, file: !1820, line: 1089, baseType: !3954, size: 64, offset: 14912)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3955, line: 12, size: 64, elements: !3956)
!3955 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3956 = !{!3957}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3954, file: !3955, line: 13, baseType: !3958, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3955, line: 8, flags: DIFlagFwdDecl)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3598, file: !1820, line: 1090, baseType: !3961, size: 128, offset: 14976)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3962, line: 13, size: 128, elements: !3963)
!3962 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3963 = !{!3964}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3961, file: !3962, line: 14, baseType: !128, size: 128)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3598, file: !1820, line: 1097, baseType: !3966, size: 64, offset: 15104)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1820, line: 50, flags: DIFlagFwdDecl)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3598, file: !1820, line: 1100, baseType: !3969, size: 64, offset: 15168)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1820, line: 1100, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3598, file: !1820, line: 1103, baseType: !3972, size: 64, offset: 15232)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1820, line: 53, flags: DIFlagFwdDecl)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3598, file: !1820, line: 1107, baseType: !3975, size: 64, offset: 15296)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1820, line: 56, flags: DIFlagFwdDecl)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3598, file: !1820, line: 1110, baseType: !3978, size: 64, offset: 15360)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3980, line: 93, size: 8768, elements: !3981)
!3980 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3981 = !{!3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4029, !4038, !4039, !4041, !4042, !4043, !4046, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4084, !4085, !4092, !4102, !4105, !4106, !4109, !4110, !4111, !4112, !4113, !4114}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3979, file: !3980, line: 94, baseType: !170, size: 32)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3979, file: !3980, line: 95, baseType: !80, size: 32, offset: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3979, file: !3980, line: 96, baseType: !84, size: 32, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3979, file: !3980, line: 97, baseType: !84, size: 32, offset: 96)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3979, file: !3980, line: 98, baseType: !128, size: 128, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3979, file: !3980, line: 100, baseType: !192, size: 192, offset: 256)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3979, file: !3980, line: 103, baseType: !3597, size: 64, offset: 448)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3979, file: !3980, line: 106, baseType: !3990, size: 192, offset: 512)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !440, line: 32, size: 192, elements: !3991)
!3991 = !{!3992, !3993}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3990, file: !440, line: 33, baseType: !128, size: 128)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3990, file: !440, line: 34, baseType: !3994, size: 64, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3995, line: 25, baseType: !3996)
!3995 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3995, line: 23, size: 64, elements: !3997)
!3997 = !{!3998}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3996, file: !3995, line: 24, baseType: !3286, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3979, file: !3980, line: 109, baseType: !179, size: 64, offset: 704)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3979, file: !3980, line: 112, baseType: !84, size: 32, offset: 768)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3979, file: !3980, line: 114, baseType: !84, size: 32, offset: 800)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3979, file: !3980, line: 115, baseType: !3597, size: 64, offset: 832)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3979, file: !3980, line: 118, baseType: !84, size: 32, offset: 896)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3979, file: !3980, line: 119, baseType: !58, size: 32, offset: 928)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3979, file: !3980, line: 121, baseType: !4006, size: 64, offset: 960)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3980, line: 80, size: 448, elements: !4008)
!4008 = !{!4009, !4010, !4016}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4007, file: !3980, line: 81, baseType: !80, size: 32)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4007, file: !3980, line: 82, baseType: !4011, size: 128, offset: 64)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3980, line: 75, size: 128, elements: !4012)
!4012 = !{!4013, !4014}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4011, file: !3980, line: 76, baseType: !3597, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4011, file: !3980, line: 77, baseType: !4015, size: 64, offset: 64)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4007, file: !3980, line: 83, baseType: !1017, size: 256, offset: 192)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3979, file: !3980, line: 132, baseType: !58, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3979, file: !3980, line: 133, baseType: !58, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3979, file: !3980, line: 138, baseType: !58, size: 32, offset: 1056)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3979, file: !3980, line: 139, baseType: !128, size: 128, offset: 1088)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3979, file: !3980, line: 142, baseType: !3009, size: 512, offset: 1216)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3979, file: !3980, line: 143, baseType: !2989, size: 64, offset: 1728)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3979, file: !3980, line: 150, baseType: !4024, size: 256, offset: 1792)
!4024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4025, size: 256, elements: !694)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3980, line: 38, size: 128, elements: !4026)
!4026 = !{!4027, !4028}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4025, file: !3980, line: 39, baseType: !255, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4025, file: !3980, line: 40, baseType: !255, size: 64, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3979, file: !3980, line: 156, baseType: !4030, size: 192, offset: 2048)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3980, line: 66, size: 192, elements: !4031)
!4031 = !{!4032}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4030, file: !3980, line: 67, baseType: !4033, size: 192)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3980, line: 47, size: 192, elements: !4034)
!4034 = !{!4035, !4036, !4037}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4033, file: !3980, line: 48, baseType: !108, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4033, file: !3980, line: 49, baseType: !108, size: 64, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4033, file: !3980, line: 50, baseType: !108, size: 64, offset: 128)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3979, file: !3980, line: 160, baseType: !3928, size: 640, offset: 2240)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3979, file: !3980, line: 163, baseType: !4040, size: 256, offset: 2880)
!4040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 256, elements: !188)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3979, file: !3980, line: 169, baseType: !165, size: 64, offset: 3136)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3979, file: !3980, line: 172, baseType: !84, size: 32, offset: 3200)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3979, file: !3980, line: 174, baseType: !4044, size: 64, offset: 3264)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3980, line: 174, flags: DIFlagFwdDecl)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3979, file: !3980, line: 185, baseType: !4047, size: 64, offset: 3328)
!4047 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !480, line: 860, baseType: !4048)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !480, line: 853, size: 64, elements: !4049)
!4049 = !{!4050, !4051}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4048, file: !480, line: 858, baseType: !479, size: 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4048, file: !480, line: 859, baseType: !60, size: 32, offset: 32)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3979, file: !3980, line: 186, baseType: !255, size: 64, offset: 3392)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3979, file: !3980, line: 186, baseType: !255, size: 64, offset: 3456)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3979, file: !3980, line: 186, baseType: !255, size: 64, offset: 3520)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3979, file: !3980, line: 186, baseType: !255, size: 64, offset: 3584)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3979, file: !3980, line: 187, baseType: !255, size: 64, offset: 3648)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3979, file: !3980, line: 188, baseType: !255, size: 64, offset: 3712)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3979, file: !3980, line: 189, baseType: !3916, size: 192, offset: 3776)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3979, file: !3980, line: 190, baseType: !283, size: 64, offset: 3968)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3979, file: !3980, line: 190, baseType: !283, size: 64, offset: 4032)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3979, file: !3980, line: 190, baseType: !283, size: 64, offset: 4096)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3979, file: !3980, line: 190, baseType: !283, size: 64, offset: 4160)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3979, file: !3980, line: 191, baseType: !283, size: 64, offset: 4224)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3979, file: !3980, line: 191, baseType: !283, size: 64, offset: 4288)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3979, file: !3980, line: 191, baseType: !283, size: 64, offset: 4352)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3979, file: !3980, line: 191, baseType: !283, size: 64, offset: 4416)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3979, file: !3980, line: 192, baseType: !283, size: 64, offset: 4480)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3979, file: !3980, line: 192, baseType: !283, size: 64, offset: 4544)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3979, file: !3980, line: 192, baseType: !283, size: 64, offset: 4608)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3979, file: !3980, line: 192, baseType: !283, size: 64, offset: 4672)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3979, file: !3980, line: 193, baseType: !283, size: 64, offset: 4736)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3979, file: !3980, line: 193, baseType: !283, size: 64, offset: 4800)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3979, file: !3980, line: 194, baseType: !4074, size: 448, offset: 4864)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4075, line: 12, size: 448, elements: !4076)
!4075 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4076 = !{!4077, !4078, !4079, !4080, !4081, !4082, !4083}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4074, file: !4075, line: 15, baseType: !255, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4074, file: !4075, line: 17, baseType: !255, size: 64, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4074, file: !4075, line: 19, baseType: !255, size: 64, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4074, file: !4075, line: 21, baseType: !255, size: 64, offset: 192)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4074, file: !4075, line: 29, baseType: !255, size: 64, offset: 256)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4074, file: !4075, line: 35, baseType: !255, size: 64, offset: 320)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4074, file: !4075, line: 44, baseType: !255, size: 64, offset: 384)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3979, file: !3980, line: 202, baseType: !257, size: 64, offset: 5312)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3979, file: !3980, line: 213, baseType: !4086, size: 2048, offset: 5376)
!4086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4087, size: 2048, elements: !16)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4088, line: 43, size: 128, elements: !4089)
!4088 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4089 = !{!4090, !4091}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4087, file: !4088, line: 44, baseType: !672, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4087, file: !4088, line: 45, baseType: !672, size: 64, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3979, file: !3980, line: 216, baseType: !4093, size: 448, offset: 7424)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3980, line: 30, size: 448, elements: !4094)
!4094 = !{!4095, !4096, !4097, !4098, !4099, !4100, !4101}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4093, file: !3980, line: 31, baseType: !84, size: 32)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4093, file: !3980, line: 32, baseType: !628, size: 64, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4093, file: !3980, line: 33, baseType: !283, size: 64, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4093, file: !3980, line: 34, baseType: !255, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4093, file: !3980, line: 34, baseType: !255, size: 64, offset: 256)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4093, file: !3980, line: 35, baseType: !283, size: 64, offset: 320)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4093, file: !3980, line: 35, baseType: !283, size: 64, offset: 384)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3979, file: !3980, line: 219, baseType: !4103, size: 64, offset: 7872)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3980, line: 219, flags: DIFlagFwdDecl)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3979, file: !3980, line: 222, baseType: !58, size: 32, offset: 7936)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3979, file: !3980, line: 223, baseType: !4107, size: 64, offset: 8000)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3980, line: 223, flags: DIFlagFwdDecl)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3979, file: !3980, line: 230, baseType: !350, size: 8, offset: 8064)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3979, file: !3980, line: 231, baseType: !319, size: 16, offset: 8080)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3979, file: !3980, line: 232, baseType: !319, size: 16, offset: 8096)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3979, file: !3980, line: 234, baseType: !1072, size: 64, offset: 8128)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3979, file: !3980, line: 237, baseType: !116, size: 256, offset: 8192)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3979, file: !3980, line: 243, baseType: !288, size: 320, offset: 8448)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3598, file: !1820, line: 1111, baseType: !4116, size: 64, offset: 15424)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3980, line: 20, size: 16640, elements: !4118)
!4118 = !{!4119, !4120, !4121, !4122}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4117, file: !3980, line: 21, baseType: !60, size: 32)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4117, file: !3980, line: 22, baseType: !170, size: 32, offset: 32)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4117, file: !3980, line: 23, baseType: !192, size: 192, offset: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4117, file: !3980, line: 24, baseType: !4123, size: 16384, offset: 256)
!4123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4124, size: 16384, elements: !842)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !440, line: 51, size: 256, elements: !4125)
!4125 = !{!4126}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4124, file: !440, line: 52, baseType: !4127, size: 256)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !440, line: 37, size: 256, elements: !4128)
!4128 = !{!4129, !4136, !4137, !4141}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4127, file: !440, line: 39, baseType: !4130, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4131, line: 83, baseType: !4132)
!4131 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4131, line: 82, baseType: !4134)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{null, !84}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4127, file: !440, line: 40, baseType: !283, size: 64, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4127, file: !440, line: 46, baseType: !4138, size: 64, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4131, line: 86, baseType: !4139)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4131, line: 85, baseType: !2245)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4127, file: !440, line: 48, baseType: !3994, size: 64, offset: 192)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3598, file: !1820, line: 1112, baseType: !3994, size: 64, offset: 15488)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3598, file: !1820, line: 1113, baseType: !3994, size: 64, offset: 15552)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3598, file: !1820, line: 1115, baseType: !3994, size: 64, offset: 15616)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3598, file: !1820, line: 1116, baseType: !3990, size: 192, offset: 15680)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3598, file: !1820, line: 1117, baseType: !283, size: 64, offset: 15872)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3598, file: !1820, line: 1118, baseType: !670, size: 64, offset: 15936)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3598, file: !1820, line: 1119, baseType: !58, size: 32, offset: 16000)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3598, file: !1820, line: 1121, baseType: !52, size: 64, offset: 16064)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3598, file: !1820, line: 1125, baseType: !4151, size: 64, offset: 16128)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1820, line: 43, flags: DIFlagFwdDecl)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3598, file: !1820, line: 1127, baseType: !218, size: 32, offset: 16192)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3598, file: !1820, line: 1128, baseType: !58, size: 32, offset: 16224)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3598, file: !1820, line: 1130, baseType: !4156, size: 128, offset: 16256)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4157, line: 37, size: 128, elements: !4158)
!4157 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4158 = !{!4159, !4160, !4161}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4156, file: !4157, line: 38, baseType: !84, size: 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4156, file: !4157, line: 39, baseType: !80, size: 32, offset: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4156, file: !4157, line: 40, baseType: !4162, size: 64, offset: 64)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4157, line: 24, flags: DIFlagFwdDecl)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3598, file: !1820, line: 1131, baseType: !4165, size: 256, offset: 16384)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4166, line: 12, size: 256, elements: !4167)
!4166 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4167 = !{!4168, !4169, !4170, !4171}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4165, file: !4166, line: 13, baseType: !362, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4165, file: !4166, line: 14, baseType: !283, size: 64, offset: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4165, file: !4166, line: 15, baseType: !283, size: 64, offset: 128)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4165, file: !4166, line: 16, baseType: !350, size: 8, offset: 192)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3598, file: !1820, line: 1134, baseType: !255, size: 64, offset: 16640)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3598, file: !1820, line: 1135, baseType: !255, size: 64, offset: 16704)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3598, file: !1820, line: 1138, baseType: !60, size: 32, offset: 16768)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3598, file: !1820, line: 1141, baseType: !121, size: 32, offset: 16800)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3598, file: !1820, line: 1143, baseType: !4177, size: 64, offset: 16832)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1820, line: 735, size: 64, elements: !4178)
!4178 = !{!4179}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4177, file: !1820, line: 736, baseType: !4180, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3598, file: !1820, line: 1147, baseType: !912, size: 128, offset: 16896)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3598, file: !1820, line: 1149, baseType: !3597, size: 64, offset: 17024)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3598, file: !1820, line: 1151, baseType: !4184, size: 64, offset: 17088)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1820, line: 1151, flags: DIFlagFwdDecl)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3598, file: !1820, line: 1188, baseType: !300, size: 64, offset: 17152)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3598, file: !1820, line: 1191, baseType: !4188, size: 64, offset: 17216)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3598, file: !1820, line: 1194, baseType: !4190, size: 64, offset: 17280)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2557, line: 976, size: 320, elements: !4192)
!4192 = !{!4193, !4194, !4195, !4196, !4197, !4198, !4199}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !4191, file: !2557, line: 977, baseType: !2674, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !4191, file: !2557, line: 980, baseType: !2674, size: 64, offset: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !4191, file: !2557, line: 981, baseType: !101, size: 16, offset: 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !4191, file: !2557, line: 983, baseType: !101, size: 16, offset: 144)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !4191, file: !2557, line: 985, baseType: !350, size: 8, offset: 160)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !4191, file: !2557, line: 986, baseType: !350, size: 8, offset: 168)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4191, file: !2557, line: 988, baseType: !128, size: 128, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3598, file: !1820, line: 1197, baseType: !4201, size: 64, offset: 17344)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1820, line: 61, flags: DIFlagFwdDecl)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3598, file: !1820, line: 1199, baseType: !4204, size: 64, offset: 17408)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4206, line: 99, size: 128, elements: !4207)
!4206 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4207 = !{!4208, !4209, !4210}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4205, file: !4206, line: 100, baseType: !106, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4205, file: !4206, line: 101, baseType: !80, size: 32, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4205, file: !4206, line: 103, baseType: !101, size: 16, offset: 96)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3598, file: !1820, line: 1202, baseType: !4212, size: 64, offset: 17472)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1820, line: 48, flags: DIFlagFwdDecl)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3598, file: !1820, line: 1205, baseType: !283, size: 64, offset: 17536)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3598, file: !1820, line: 1206, baseType: !4216, size: 64, offset: 17600)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !440, line: 14, baseType: !4218)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !440, line: 12, size: 384, elements: !4219)
!4219 = !{!4220}
!4220 = !DIDerivedType(tag: DW_TAG_member, scope: !4218, file: !440, line: 13, baseType: !4221, size: 384)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4218, file: !440, line: 13, size: 384, elements: !4222)
!4222 = !{!4223, !4224, !4225, !4226}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4221, file: !440, line: 13, baseType: !84, size: 32)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4221, file: !440, line: 13, baseType: !84, size: 32, offset: 32)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4221, file: !440, line: 13, baseType: !84, size: 32, offset: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4221, file: !440, line: 13, baseType: !4227, size: 256, offset: 128)
!4227 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4228, line: 37, size: 256, elements: !4229)
!4228 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4229 = !{!4230, !4235, !4248, !4254, !4263, !4290, !4295}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4227, file: !4228, line: 42, baseType: !4231, size: 64)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4227, file: !4228, line: 39, size: 64, elements: !4232)
!4232 = !{!4233, !4234}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4231, file: !4228, line: 40, baseType: !3893, size: 32)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4231, file: !4228, line: 41, baseType: !224, size: 32, offset: 32)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4227, file: !4228, line: 50, baseType: !4236, size: 192)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4227, file: !4228, line: 45, size: 192, elements: !4237)
!4237 = !{!4238, !4240, !4241, !4247}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4236, file: !4228, line: 46, baseType: !4239, size: 32)
!4239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !136, line: 95, baseType: !84)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4236, file: !4228, line: 47, baseType: !84, size: 32, offset: 32)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4236, file: !4228, line: 48, baseType: !4242, size: 64, offset: 64)
!4242 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4228, line: 11, baseType: !4243)
!4243 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4228, line: 8, size: 64, elements: !4244)
!4244 = !{!4245, !4246}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4243, file: !4228, line: 9, baseType: !84, size: 32)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4243, file: !4228, line: 10, baseType: !300, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4236, file: !4228, line: 49, baseType: !84, size: 32, offset: 128)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4227, file: !4228, line: 57, baseType: !4249, size: 128)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4227, file: !4228, line: 53, size: 128, elements: !4250)
!4250 = !{!4251, !4252, !4253}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4249, file: !4228, line: 54, baseType: !3893, size: 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4249, file: !4228, line: 55, baseType: !224, size: 32, offset: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4249, file: !4228, line: 56, baseType: !4242, size: 64, offset: 64)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4227, file: !4228, line: 66, baseType: !4255, size: 256)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4227, file: !4228, line: 60, size: 256, elements: !4256)
!4256 = !{!4257, !4258, !4259, !4260, !4262}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4255, file: !4228, line: 61, baseType: !3893, size: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4255, file: !4228, line: 62, baseType: !224, size: 32, offset: 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4255, file: !4228, line: 63, baseType: !84, size: 32, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4255, file: !4228, line: 64, baseType: !4261, size: 64, offset: 128)
!4261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !136, line: 94, baseType: !669)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4255, file: !4228, line: 65, baseType: !4261, size: 64, offset: 192)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4227, file: !4228, line: 105, baseType: !4264, size: 256)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4227, file: !4228, line: 69, size: 256, elements: !4265)
!4265 = !{!4266, !4267}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4264, file: !4228, line: 70, baseType: !300, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, scope: !4264, file: !4228, line: 79, baseType: !4268, size: 192, offset: 64)
!4268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4264, file: !4228, line: 79, size: 192, elements: !4269)
!4269 = !{!4270, !4271, !4272, !4279, !4284}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4268, file: !4228, line: 81, baseType: !84, size: 32)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4268, file: !4228, line: 86, baseType: !319, size: 16)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4268, file: !4228, line: 92, baseType: !4273, size: 192)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4268, file: !4228, line: 88, size: 192, elements: !4274)
!4274 = !{!4275, !4277, !4278}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4273, file: !4228, line: 89, baseType: !4276, size: 64)
!4276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !3055)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4273, file: !4228, line: 90, baseType: !300, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4273, file: !4228, line: 91, baseType: !300, size: 64, offset: 128)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4268, file: !4228, line: 97, baseType: !4280, size: 96)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4268, file: !4228, line: 94, size: 96, elements: !4281)
!4281 = !{!4282, !4283}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4280, file: !4228, line: 95, baseType: !4276, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4280, file: !4228, line: 96, baseType: !315, size: 32, offset: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4268, file: !4228, line: 103, baseType: !4285, size: 128)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4268, file: !4228, line: 99, size: 128, elements: !4286)
!4286 = !{!4287, !4288, !4289}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4285, file: !4228, line: 100, baseType: !283, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4285, file: !4228, line: 101, baseType: !315, size: 32, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4285, file: !4228, line: 102, baseType: !315, size: 32, offset: 96)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4227, file: !4228, line: 111, baseType: !4291, size: 128)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4227, file: !4228, line: 108, size: 128, elements: !4292)
!4292 = !{!4293, !4294}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4291, file: !4228, line: 109, baseType: !628, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4291, file: !4228, line: 110, baseType: !84, size: 32, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4227, file: !4228, line: 118, baseType: !4296, size: 128)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4227, file: !4228, line: 114, size: 128, elements: !4297)
!4297 = !{!4298, !4299, !4300}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4296, file: !4228, line: 115, baseType: !300, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4296, file: !4228, line: 116, baseType: !84, size: 32, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4296, file: !4228, line: 117, baseType: !58, size: 32, offset: 96)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3598, file: !1820, line: 1208, baseType: !4074, size: 448, offset: 17664)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3598, file: !1820, line: 1215, baseType: !255, size: 64, offset: 18112)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3598, file: !1820, line: 1217, baseType: !255, size: 64, offset: 18176)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3598, file: !1820, line: 1219, baseType: !255, size: 64, offset: 18240)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3598, file: !1820, line: 1223, baseType: !4306, size: 64, offset: 18304)
!4306 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4307, line: 99, baseType: !4308)
!4307 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4307, line: 99, size: 64, elements: !4309)
!4309 = !{!4310}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4308, file: !4307, line: 99, baseType: !3286, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3598, file: !1820, line: 1225, baseType: !479, size: 32, offset: 18368)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3598, file: !1820, line: 1226, baseType: !84, size: 32, offset: 18400)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3598, file: !1820, line: 1227, baseType: !84, size: 32, offset: 18432)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3598, file: !1820, line: 1231, baseType: !4315, size: 64, offset: 18496)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1820, line: 1231, flags: DIFlagFwdDecl)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3598, file: !1820, line: 1233, baseType: !128, size: 128, offset: 18560)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3598, file: !1820, line: 1240, baseType: !4319, size: 64, offset: 18688)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1820, line: 62, flags: DIFlagFwdDecl)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3598, file: !1820, line: 1242, baseType: !4322, size: 64, offset: 18752)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !4324, line: 392, size: 96, elements: !4325)
!4324 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!4325 = !{!4326, !4332, !4334}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4323, file: !4324, line: 393, baseType: !4327, size: 32)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !4324, line: 388, size: 32, elements: !4328)
!4328 = !{!4329}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4327, file: !4324, line: 389, baseType: !4330, size: 32)
!4330 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !4331, line: 46, baseType: !314)
!4331 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !4323, file: !4324, line: 394, baseType: !4333, size: 32, offset: 32)
!4333 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !4331, line: 42, baseType: !272)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !4323, file: !4324, line: 395, baseType: !4330, size: 32, offset: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3598, file: !1820, line: 1244, baseType: !128, size: 128, offset: 18816)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3598, file: !1820, line: 1245, baseType: !4337, size: 64, offset: 18944)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1820, line: 51, flags: DIFlagFwdDecl)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3598, file: !1820, line: 1246, baseType: !116, size: 256, offset: 19008)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3598, file: !1820, line: 1247, baseType: !58, size: 32, offset: 19264)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3598, file: !1820, line: 1250, baseType: !4342, size: 64, offset: 19328)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1820, line: 57, flags: DIFlagFwdDecl)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3598, file: !1820, line: 1251, baseType: !116, size: 256, offset: 19392)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3598, file: !1820, line: 1252, baseType: !128, size: 128, offset: 19648)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3598, file: !1820, line: 1259, baseType: !1319, size: 64, offset: 19776)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3598, file: !1820, line: 1260, baseType: !319, size: 16, offset: 19840)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3598, file: !1820, line: 1261, baseType: !319, size: 16, offset: 19856)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3598, file: !1820, line: 1314, baseType: !4350, size: 64, offset: 19904)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4352, line: 62, size: 256, align: 256, elements: !4353)
!4352 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4353 = !{!4354, !4355, !4356, !4357, !4358, !4359, !4360}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4351, file: !4352, line: 75, baseType: !315, size: 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4351, file: !4352, line: 90, baseType: !315, size: 32, offset: 32)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4351, file: !4352, line: 112, baseType: !256, size: 64, offset: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4351, file: !4352, line: 132, baseType: !315, size: 32, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4351, file: !4352, line: 140, baseType: !315, size: 32, offset: 160)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4351, file: !4352, line: 149, baseType: !315, size: 32, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4351, file: !4352, line: 154, baseType: !4361, offset: 224)
!4361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !207)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3598, file: !1820, line: 1315, baseType: !314, size: 32, offset: 19968)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3598, file: !1820, line: 1316, baseType: !314, size: 32, offset: 20000)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3598, file: !1820, line: 1321, baseType: !283, size: 64, offset: 20032)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3598, file: !1820, line: 1325, baseType: !84, size: 32, offset: 20096)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3598, file: !1820, line: 1326, baseType: !84, size: 32, offset: 20128)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3598, file: !1820, line: 1327, baseType: !84, size: 32, offset: 20160)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3598, file: !1820, line: 1328, baseType: !84, size: 32, offset: 20192)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3598, file: !1820, line: 1329, baseType: !48, size: 128, align: 64, offset: 20224)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3598, file: !1820, line: 1332, baseType: !4371, size: 128, offset: 20352)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4372, line: 51, size: 128, elements: !4373)
!4372 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4373 = !{!4374, !4379, !4380}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4371, file: !4372, line: 60, baseType: !4375, size: 64)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4376, line: 7, size: 64, elements: !4377)
!4376 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4377 = !{!4378}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4375, file: !4376, line: 12, baseType: !3757, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4371, file: !4372, line: 63, baseType: !350, size: 8, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4371, file: !4372, line: 70, baseType: !350, size: 8, offset: 72)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3598, file: !1820, line: 1335, baseType: !4382, size: 64, offset: 20480)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1820, line: 59, flags: DIFlagFwdDecl)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3598, file: !1820, line: 1337, baseType: !4385, size: 128, offset: 20544)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4372, line: 39, size: 128, elements: !4386)
!4386 = !{!4387, !4388, !4389}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4385, file: !4372, line: 40, baseType: !930, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4385, file: !4372, line: 42, baseType: !315, size: 32, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4385, file: !4372, line: 43, baseType: !315, size: 32, offset: 96)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3598, file: !1820, line: 1340, baseType: !4391, size: 64, offset: 20672)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1820, line: 69, flags: DIFlagFwdDecl)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3598, file: !1820, line: 1351, baseType: !84, size: 32, offset: 20736)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3598, file: !1820, line: 1352, baseType: !84, size: 32, offset: 20768)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3598, file: !1820, line: 1354, baseType: !283, size: 64, offset: 20800)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3598, file: !1820, line: 1364, baseType: !255, size: 64, offset: 20864)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3598, file: !1820, line: 1365, baseType: !255, size: 64, offset: 20928)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3598, file: !1820, line: 1412, baseType: !283, size: 64, offset: 20992)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3598, file: !1820, line: 1453, baseType: !2555, size: 64, offset: 21056)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3598, file: !1820, line: 1457, baseType: !4401, size: 64, offset: 21120)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !1221, line: 61, size: 576, elements: !4403)
!4403 = !{!4404, !4411, !4430, !4433, !4434, !4467, !4477}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4402, file: !1221, line: 62, baseType: !4405, size: 32)
!4405 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !1221, line: 51, baseType: !58, size: 32, elements: !4406)
!4406 = !{!4407, !4408, !4409, !4410}
!4407 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!4408 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!4409 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!4410 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!4411 = !DIDerivedType(tag: DW_TAG_member, scope: !4402, file: !1221, line: 64, baseType: !4412, size: 192, offset: 64)
!4412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4402, file: !1221, line: 64, size: 192, elements: !4413)
!4413 = !{!4414, !4425}
!4414 = !DIDerivedType(tag: DW_TAG_member, scope: !4412, file: !1221, line: 65, baseType: !4415, size: 192)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4412, file: !1221, line: 65, size: 192, elements: !4416)
!4416 = !{!4417, !4424}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4415, file: !1221, line: 66, baseType: !4418, size: 128)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4419, line: 50, size: 128, elements: !4420)
!4419 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4420 = !{!4421, !4422, !4423}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4418, file: !4419, line: 52, baseType: !283, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4418, file: !4419, line: 54, baseType: !58, size: 32, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4418, file: !4419, line: 55, baseType: !58, size: 32, offset: 96)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4415, file: !1221, line: 67, baseType: !283, size: 64, offset: 128)
!4425 = !DIDerivedType(tag: DW_TAG_member, scope: !4412, file: !1221, line: 70, baseType: !4426, size: 192)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4412, file: !1221, line: 70, size: 192, elements: !4427)
!4427 = !{!4428, !4429}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4426, file: !1221, line: 71, baseType: !48, size: 128, align: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4426, file: !1221, line: 72, baseType: !283, size: 64, offset: 128)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4402, file: !1221, line: 76, baseType: !4431, size: 64, offset: 256)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !1221, line: 76, flags: DIFlagFwdDecl)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4402, file: !1221, line: 77, baseType: !283, size: 64, offset: 320)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4402, file: !1221, line: 79, baseType: !4435, size: 64, offset: 384)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4419, line: 25, size: 256, elements: !4437)
!4437 = !{!4438, !4444, !4448}
!4438 = !DIDerivedType(tag: DW_TAG_member, scope: !4436, file: !4419, line: 26, baseType: !4439, size: 128)
!4439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4436, file: !4419, line: 26, size: 128, elements: !4440)
!4440 = !{!4441, !4443}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4439, file: !4419, line: 27, baseType: !4442, size: 128)
!4442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 128, elements: !16)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4439, file: !4419, line: 28, baseType: !4442, size: 128)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4436, file: !4419, line: 31, baseType: !4445, size: 64, offset: 128)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4447)
!4447 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4419, line: 23, flags: DIFlagFwdDecl)
!4448 = !DIDerivedType(tag: DW_TAG_member, scope: !4436, file: !4419, line: 33, baseType: !4449, size: 64, offset: 192)
!4449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4436, file: !4419, line: 33, size: 64, elements: !4450)
!4450 = !{!4451, !4457, !4462}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4449, file: !4419, line: 38, baseType: !4452, size: 64)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4449, file: !4419, line: 34, size: 64, elements: !4453)
!4453 = !{!4454, !4455, !4456}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4452, file: !4419, line: 35, baseType: !272, size: 32)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4452, file: !4419, line: 36, baseType: !89, size: 8, offset: 32)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4452, file: !4419, line: 37, baseType: !89, size: 8, offset: 40)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4449, file: !4419, line: 42, baseType: !4458, size: 16)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4449, file: !4419, line: 39, size: 16, elements: !4459)
!4459 = !{!4460, !4461}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4458, file: !4419, line: 40, baseType: !89, size: 8)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4458, file: !4419, line: 41, baseType: !89, size: 8, offset: 8)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4449, file: !4419, line: 46, baseType: !4463, size: 16)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4449, file: !4419, line: 43, size: 16, elements: !4464)
!4464 = !{!4465, !4466}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4463, file: !4419, line: 44, baseType: !89, size: 8)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4463, file: !4419, line: 45, baseType: !89, size: 8, offset: 8)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4402, file: !1221, line: 81, baseType: !4468, size: 64, offset: 448)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !1221, line: 85, size: 384, elements: !4470)
!4470 = !{!4471, !4472, !4473, !4474, !4475, !4476}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4469, file: !1221, line: 86, baseType: !4431, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4469, file: !1221, line: 87, baseType: !283, size: 64, offset: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4469, file: !1221, line: 88, baseType: !283, size: 64, offset: 128)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4469, file: !1221, line: 89, baseType: !283, size: 64, offset: 192)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4469, file: !1221, line: 90, baseType: !350, size: 8, offset: 256)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4469, file: !1221, line: 92, baseType: !4468, size: 64, offset: 320)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4402, file: !1221, line: 82, baseType: !58, size: 32, offset: 512)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3598, file: !1820, line: 1463, baseType: !4479, offset: 21184)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1820, line: 739, elements: !1093)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3598, file: !1820, line: 1470, baseType: !48, size: 128, align: 64, offset: 21184)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3598, file: !1820, line: 1471, baseType: !170, size: 32, offset: 21312)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3598, file: !1820, line: 1472, baseType: !84, size: 32, offset: 21344)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3598, file: !1820, line: 1474, baseType: !3597, size: 64, offset: 21376)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3598, file: !1820, line: 1475, baseType: !2135, size: 320, offset: 21440)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3598, file: !1820, line: 1478, baseType: !4486, size: 64, offset: 21760)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1820, line: 1478, flags: DIFlagFwdDecl)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3598, file: !1820, line: 1482, baseType: !170, size: 32, offset: 21824)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3598, file: !1820, line: 1489, baseType: !300, size: 64, offset: 21888)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3598, file: !1820, line: 1504, baseType: !300, size: 64, offset: 21952)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3598, file: !1820, line: 1505, baseType: !256, size: 64, offset: 22016)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3598, file: !1820, line: 1506, baseType: !255, size: 64, offset: 22080)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3598, file: !1820, line: 1507, baseType: !256, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3598, file: !1820, line: 1508, baseType: !256, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3598, file: !1820, line: 1509, baseType: !256, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3598, file: !1820, line: 1510, baseType: !48, size: 128, align: 64, offset: 22208)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3598, file: !1820, line: 1511, baseType: !84, size: 32, offset: 22336)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3598, file: !1820, line: 1515, baseType: !4499, size: 64, offset: 22400)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !43, line: 56, size: 64, elements: !4500)
!4500 = !{!4501}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4499, file: !43, line: 57, baseType: !46, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3598, file: !1820, line: 1518, baseType: !4499, size: 64, offset: 22464)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3598, file: !1820, line: 1528, baseType: !48, size: 128, align: 64, offset: 22528)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3598, file: !1820, line: 1552, baseType: !4505, size: 35328, offset: 23040)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4506, line: 430, size: 35328, elements: !4507)
!4506 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4507 = !{!4508, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4537, !4538, !4539, !4540, !4541, !4542, !4545, !4546, !4547, !4548}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4505, file: !4506, line: 432, baseType: !4509, size: 192)
!4509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4510, size: 192, elements: !161)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4511, line: 16, size: 64, elements: !4512)
!4511 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4512 = !{!4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4510, file: !4511, line: 17, baseType: !99, size: 16)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4510, file: !4511, line: 18, baseType: !99, size: 16, offset: 16)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4510, file: !4511, line: 19, baseType: !99, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4510, file: !4511, line: 19, baseType: !99, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4510, file: !4511, line: 19, baseType: !99, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4510, file: !4511, line: 19, baseType: !99, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4510, file: !4511, line: 19, baseType: !99, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4510, file: !4511, line: 20, baseType: !99, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4510, file: !4511, line: 20, baseType: !99, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4510, file: !4511, line: 20, baseType: !99, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4510, file: !4511, line: 20, baseType: !99, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4510, file: !4511, line: 20, baseType: !99, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4510, file: !4511, line: 20, baseType: !99, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4505, file: !4506, line: 436, baseType: !283, size: 64, offset: 192)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4505, file: !4506, line: 440, baseType: !101, size: 16, offset: 256)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4505, file: !4506, line: 441, baseType: !101, size: 16, offset: 272)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4505, file: !4506, line: 442, baseType: !101, size: 16, offset: 288)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4505, file: !4506, line: 443, baseType: !101, size: 16, offset: 304)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4505, file: !4506, line: 447, baseType: !283, size: 64, offset: 320)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4505, file: !4506, line: 448, baseType: !283, size: 64, offset: 384)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4505, file: !4506, line: 459, baseType: !4534, size: 256, offset: 448)
!4534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4535, size: 256, elements: !188)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4506, line: 428, flags: DIFlagFwdDecl)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4505, file: !4506, line: 461, baseType: !283, size: 64, offset: 704)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4505, file: !4506, line: 463, baseType: !283, size: 64, offset: 768)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4505, file: !4506, line: 465, baseType: !283, size: 64, offset: 832)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4505, file: !4506, line: 466, baseType: !283, size: 64, offset: 896)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4505, file: !4506, line: 467, baseType: !283, size: 64, offset: 960)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4505, file: !4506, line: 473, baseType: !4543, size: 64, offset: 1024)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4506, line: 10, flags: DIFlagFwdDecl)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4505, file: !4506, line: 480, baseType: !283, size: 64, offset: 1088)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4505, file: !4506, line: 482, baseType: !58, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4505, file: !4506, line: 491, baseType: !314, size: 32, offset: 1184)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4505, file: !4506, line: 501, baseType: !4549, size: 33792, offset: 1536)
!4549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4550, line: 448, size: 33792, elements: !4551)
!4550 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4551 = !{!4552, !4553, !4554, !4716, !4717, !4723, !4724}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4549, file: !4550, line: 461, baseType: !58, size: 32)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4549, file: !4550, line: 468, baseType: !283, size: 64, offset: 64)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4549, file: !4550, line: 476, baseType: !4555, size: 64, offset: 128)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4550, line: 356, size: 33280, align: 512, elements: !4557)
!4557 = !{!4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4556, file: !4550, line: 358, baseType: !58, size: 32)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4556, file: !4550, line: 361, baseType: !58, size: 32, offset: 32)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4556, file: !4550, line: 364, baseType: !255, size: 64, offset: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4556, file: !4550, line: 367, baseType: !255, size: 64, offset: 128)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4556, file: !4550, line: 370, baseType: !255, size: 64, offset: 192)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4556, file: !4550, line: 373, baseType: !58, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4556, file: !4550, line: 376, baseType: !58, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4556, file: !4550, line: 391, baseType: !58, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4556, file: !4550, line: 394, baseType: !58, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4556, file: !4550, line: 397, baseType: !4568, size: 32768, offset: 512)
!4568 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4550, line: 348, size: 32768, elements: !4569)
!4569 = !{!4570, !4585, !4622, !4699, !4712}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4568, file: !4550, line: 349, baseType: !4571, size: 896)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4550, line: 12, size: 896, elements: !4572)
!4572 = !{!4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4584}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4571, file: !4550, line: 13, baseType: !314, size: 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4571, file: !4550, line: 14, baseType: !314, size: 32, offset: 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4571, file: !4550, line: 15, baseType: !314, size: 32, offset: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4571, file: !4550, line: 16, baseType: !314, size: 32, offset: 96)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4571, file: !4550, line: 17, baseType: !314, size: 32, offset: 128)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4571, file: !4550, line: 18, baseType: !314, size: 32, offset: 160)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4571, file: !4550, line: 19, baseType: !314, size: 32, offset: 192)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4571, file: !4550, line: 22, baseType: !4581, size: 640, offset: 224)
!4581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 640, elements: !4582)
!4582 = !{!4583}
!4583 = !DISubrange(count: 20)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4571, file: !4550, line: 25, baseType: !314, size: 32, offset: 864)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4568, file: !4550, line: 350, baseType: !4586, size: 4096, align: 128)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4550, line: 34, size: 4096, align: 128, elements: !4587)
!4587 = !{!4588, !4589, !4590, !4591, !4592, !4607, !4608, !4609, !4611, !4613, !4617}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4586, file: !4550, line: 35, baseType: !99, size: 16)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4586, file: !4550, line: 36, baseType: !99, size: 16, offset: 16)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4586, file: !4550, line: 37, baseType: !99, size: 16, offset: 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4586, file: !4550, line: 38, baseType: !99, size: 16, offset: 48)
!4592 = !DIDerivedType(tag: DW_TAG_member, scope: !4586, file: !4550, line: 39, baseType: !4593, size: 128, offset: 64)
!4593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4586, file: !4550, line: 39, size: 128, elements: !4594)
!4594 = !{!4595, !4600}
!4595 = !DIDerivedType(tag: DW_TAG_member, scope: !4593, file: !4550, line: 40, baseType: !4596, size: 128)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4593, file: !4550, line: 40, size: 128, elements: !4597)
!4597 = !{!4598, !4599}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4596, file: !4550, line: 41, baseType: !255, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4596, file: !4550, line: 42, baseType: !255, size: 64, offset: 64)
!4600 = !DIDerivedType(tag: DW_TAG_member, scope: !4593, file: !4550, line: 44, baseType: !4601, size: 128)
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4593, file: !4550, line: 44, size: 128, elements: !4602)
!4602 = !{!4603, !4604, !4605, !4606}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4601, file: !4550, line: 45, baseType: !314, size: 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4601, file: !4550, line: 46, baseType: !314, size: 32, offset: 32)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4601, file: !4550, line: 47, baseType: !314, size: 32, offset: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4601, file: !4550, line: 48, baseType: !314, size: 32, offset: 96)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4586, file: !4550, line: 51, baseType: !314, size: 32, offset: 192)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4586, file: !4550, line: 52, baseType: !314, size: 32, offset: 224)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4586, file: !4550, line: 55, baseType: !4610, size: 1024, offset: 256)
!4610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 1024, elements: !2564)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4586, file: !4550, line: 58, baseType: !4612, size: 2048, offset: 1280)
!4612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 2048, elements: !842)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4586, file: !4550, line: 60, baseType: !4614, size: 384, offset: 3328)
!4614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 384, elements: !4615)
!4615 = !{!4616}
!4616 = !DISubrange(count: 12)
!4617 = !DIDerivedType(tag: DW_TAG_member, scope: !4586, file: !4550, line: 62, baseType: !4618, size: 384, offset: 3712)
!4618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4586, file: !4550, line: 62, size: 384, elements: !4619)
!4619 = !{!4620, !4621}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4618, file: !4550, line: 63, baseType: !4614, size: 384)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4618, file: !4550, line: 64, baseType: !4614, size: 384)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4568, file: !4550, line: 351, baseType: !4623, size: 1088)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4550, line: 79, size: 1088, elements: !4624)
!4624 = !{!4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4698}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4623, file: !4550, line: 80, baseType: !314, size: 32)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4623, file: !4550, line: 81, baseType: !314, size: 32, offset: 32)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4623, file: !4550, line: 82, baseType: !314, size: 32, offset: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4623, file: !4550, line: 83, baseType: !314, size: 32, offset: 96)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4623, file: !4550, line: 84, baseType: !314, size: 32, offset: 128)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4623, file: !4550, line: 85, baseType: !314, size: 32, offset: 160)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4623, file: !4550, line: 86, baseType: !314, size: 32, offset: 192)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4623, file: !4550, line: 88, baseType: !4581, size: 640, offset: 224)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4623, file: !4550, line: 89, baseType: !89, size: 8, offset: 864)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4623, file: !4550, line: 90, baseType: !89, size: 8, offset: 872)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4623, file: !4550, line: 91, baseType: !89, size: 8, offset: 880)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4623, file: !4550, line: 92, baseType: !89, size: 8, offset: 888)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4623, file: !4550, line: 93, baseType: !89, size: 8, offset: 896)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4623, file: !4550, line: 94, baseType: !89, size: 8, offset: 904)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4623, file: !4550, line: 95, baseType: !4640, size: 64, offset: 960)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4642, line: 11, size: 128, elements: !4643)
!4642 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4643 = !{!4644, !4645}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4641, file: !4642, line: 12, baseType: !628, size: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4641, file: !4642, line: 13, baseType: !4646, size: 64, offset: 64)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4648, line: 103, size: 1344, elements: !4649)
!4648 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4649 = !{!4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4678, !4679, !4680}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4647, file: !4648, line: 109, baseType: !283, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4647, file: !4648, line: 110, baseType: !283, size: 64, offset: 64)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4647, file: !4648, line: 111, baseType: !283, size: 64, offset: 128)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4647, file: !4648, line: 112, baseType: !283, size: 64, offset: 192)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4647, file: !4648, line: 113, baseType: !283, size: 64, offset: 256)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4647, file: !4648, line: 114, baseType: !283, size: 64, offset: 320)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4647, file: !4648, line: 117, baseType: !283, size: 64, offset: 384)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4647, file: !4648, line: 118, baseType: !283, size: 64, offset: 448)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4647, file: !4648, line: 119, baseType: !283, size: 64, offset: 512)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4647, file: !4648, line: 120, baseType: !283, size: 64, offset: 576)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4647, file: !4648, line: 121, baseType: !283, size: 64, offset: 640)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4647, file: !4648, line: 122, baseType: !283, size: 64, offset: 704)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4647, file: !4648, line: 123, baseType: !283, size: 64, offset: 768)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4647, file: !4648, line: 124, baseType: !283, size: 64, offset: 832)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4647, file: !4648, line: 125, baseType: !283, size: 64, offset: 896)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4647, file: !4648, line: 139, baseType: !283, size: 64, offset: 960)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4647, file: !4648, line: 142, baseType: !283, size: 64, offset: 1024)
!4667 = !DIDerivedType(tag: DW_TAG_member, scope: !4647, file: !4648, line: 144, baseType: !4668, size: 64, offset: 1088)
!4668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4647, file: !4648, line: 144, size: 64, elements: !4669)
!4669 = !{!4670, !4671, !4672}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4668, file: !4648, line: 146, baseType: !99, size: 16)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4668, file: !4648, line: 148, baseType: !255, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4668, file: !4648, line: 150, baseType: !4673, size: 64)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4648, line: 59, size: 64, elements: !4674)
!4674 = !{!4675, !4676, !4677}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4673, file: !4648, line: 61, baseType: !255, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4673, file: !4648, line: 63, baseType: !255, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4673, file: !4648, line: 65, baseType: !255, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4647, file: !4648, line: 153, baseType: !283, size: 64, offset: 1152)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4647, file: !4648, line: 154, baseType: !283, size: 64, offset: 1216)
!4680 = !DIDerivedType(tag: DW_TAG_member, scope: !4647, file: !4648, line: 156, baseType: !4681, size: 64, offset: 1280)
!4681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4647, file: !4648, line: 156, size: 64, elements: !4682)
!4682 = !{!4683, !4684, !4685}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4681, file: !4648, line: 158, baseType: !99, size: 16)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4681, file: !4648, line: 160, baseType: !255, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4681, file: !4648, line: 162, baseType: !4686, size: 64)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4648, line: 69, size: 64, elements: !4687)
!4687 = !{!4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4686, file: !4648, line: 71, baseType: !255, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4686, file: !4648, line: 73, baseType: !255, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4686, file: !4648, line: 75, baseType: !255, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4686, file: !4648, line: 77, baseType: !255, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4686, file: !4648, line: 80, baseType: !255, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4686, file: !4648, line: 83, baseType: !255, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4686, file: !4648, line: 86, baseType: !255, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4686, file: !4648, line: 88, baseType: !255, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4686, file: !4648, line: 93, baseType: !255, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4686, file: !4648, line: 100, baseType: !255, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4623, file: !4550, line: 96, baseType: !314, size: 32, offset: 1024)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4568, file: !4550, line: 352, baseType: !4700, size: 4608, align: 512)
!4700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4550, line: 333, size: 4608, align: 512, elements: !4701)
!4701 = !{!4702, !4703, !4710}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4700, file: !4550, line: 334, baseType: !4586, size: 4096, align: 128)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4700, file: !4550, line: 335, baseType: !4704, size: 512, offset: 4096)
!4704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4550, line: 312, size: 512, elements: !4705)
!4705 = !{!4706, !4707, !4708}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4704, file: !4550, line: 313, baseType: !255, size: 64)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4704, file: !4550, line: 314, baseType: !255, size: 64, offset: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4704, file: !4550, line: 315, baseType: !4709, size: 384, offset: 128)
!4709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 384, elements: !337)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4700, file: !4550, line: 336, baseType: !4711, offset: 4608)
!4711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, elements: !207)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4568, file: !4550, line: 353, baseType: !4713, size: 32768)
!4713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 32768, elements: !4714)
!4714 = !{!4715}
!4715 = !DISubrange(count: 4096)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4549, file: !4550, line: 484, baseType: !4555, size: 64, offset: 192)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4549, file: !4550, line: 491, baseType: !4718, size: 128, offset: 256)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4550, line: 404, size: 128, elements: !4719)
!4719 = !{!4720, !4721, !4722}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4718, file: !4550, line: 424, baseType: !255, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4718, file: !4550, line: 432, baseType: !58, size: 32, offset: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4718, file: !4550, line: 440, baseType: !58, size: 32, offset: 96)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4549, file: !4550, line: 498, baseType: !4718, size: 128, offset: 384)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4549, file: !4550, line: 508, baseType: !4556, size: 33280, align: 512, offset: 512)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3580, file: !3581, line: 16, baseType: !192, size: 192, offset: 512)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3580, file: !3581, line: 17, baseType: !80, size: 32, offset: 704)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !747, file: !36, line: 1240, baseType: !300, size: 64, offset: 6912)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !747, file: !36, line: 1243, baseType: !314, size: 32, offset: 6976)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !747, file: !36, line: 1245, baseType: !305, size: 64, offset: 7040)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !747, file: !36, line: 1246, baseType: !305, size: 64, offset: 7104)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !747, file: !36, line: 1248, baseType: !315, size: 32, offset: 7168)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !747, file: !36, line: 1249, baseType: !4733, size: 64, offset: 7232)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !36, line: 634, flags: DIFlagFwdDecl)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !747, file: !36, line: 1252, baseType: !2563, size: 256, offset: 7296)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !747, file: !36, line: 1253, baseType: !4737, size: 128, offset: 7552)
!4737 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4738, line: 21, baseType: !4739)
!4738 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4738, line: 19, size: 128, elements: !4740)
!4740 = !{!4741}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4739, file: !4738, line: 20, baseType: !4742, size: 128)
!4742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, elements: !16)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !747, file: !36, line: 1255, baseType: !58, size: 32, offset: 7680)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !747, file: !36, line: 1261, baseType: !116, size: 256, offset: 7744)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !747, file: !36, line: 1267, baseType: !353, size: 64, offset: 8000)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !747, file: !36, line: 1269, baseType: !4747, size: 64, offset: 8064)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4749)
!4749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !475, line: 128, size: 1024, align: 512, elements: !4750)
!4750 = !{!4751, !4755, !4756, !4763, !4769, !4773, !4777, !4781, !4782, !4786, !4790, !4795, !4799}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4749, file: !475, line: 129, baseType: !4752, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!84, !473, !58}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4749, file: !475, line: 130, baseType: !4752, size: 64, offset: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4749, file: !475, line: 131, baseType: !4757, size: 64, offset: 128)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!84, !4760, !4762}
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4749, file: !475, line: 132, baseType: !4764, size: 64, offset: 192)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!84, !4760, !58, !353, !4767}
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4749, file: !475, line: 134, baseType: !4770, size: 64, offset: 256)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!84, !4760}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4749, file: !475, line: 135, baseType: !4774, size: 64, offset: 320)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{!84, !473}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4749, file: !475, line: 136, baseType: !4778, size: 64, offset: 384)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{null, !473}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4749, file: !475, line: 137, baseType: !4778, size: 64, offset: 448)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4749, file: !475, line: 138, baseType: !4783, size: 64, offset: 512)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{null, !473, !513}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4749, file: !475, line: 139, baseType: !4787, size: 64, offset: 576)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!362, !473, !362, !84}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4749, file: !475, line: 140, baseType: !4791, size: 64, offset: 640)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!468, !4794}
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4749, file: !475, line: 141, baseType: !4796, size: 64, offset: 704)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!84, !636, !350}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4749, file: !475, line: 142, baseType: !4800, size: 64, offset: 768)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!473, !473, !4803}
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !747, file: !36, line: 1271, baseType: !4806, size: 448, offset: 8128)
!4806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2391, line: 63, size: 448, elements: !4807)
!4807 = !{!4808, !4813, !4814, !4815, !4816, !4817, !4818}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4806, file: !2391, line: 64, baseType: !4809, size: 64)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!283, !4812, !2389}
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4806, file: !2391, line: 66, baseType: !4809, size: 64, offset: 64)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4806, file: !2391, line: 69, baseType: !628, size: 64, offset: 128)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4806, file: !2391, line: 70, baseType: !84, size: 32, offset: 192)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4806, file: !2391, line: 71, baseType: !58, size: 32, offset: 224)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4806, file: !2391, line: 74, baseType: !128, size: 128, offset: 256)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4806, file: !2391, line: 85, baseType: !4819, size: 64, offset: 384)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !747, file: !36, line: 1274, baseType: !106, size: 64, offset: 8576)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !747, file: !36, line: 1280, baseType: !106, size: 64, offset: 8640)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !747, file: !36, line: 1283, baseType: !84, size: 32, offset: 8704)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !747, file: !36, line: 1286, baseType: !1710, size: 32, offset: 8736)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !747, file: !36, line: 1289, baseType: !2197, size: 64, offset: 8768)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !747, file: !36, line: 1290, baseType: !179, size: 64, offset: 8832)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !747, file: !36, line: 1297, baseType: !435, size: 64, offset: 8896)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !747, file: !36, line: 1304, baseType: !4828, size: 64, offset: 8960)
!4828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4829, line: 49, size: 64, elements: !4830)
!4829 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4830 = !{!4831}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4828, file: !4829, line: 50, baseType: !4832, size: 64)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4829, line: 41, size: 512, align: 512, elements: !4834)
!4834 = !{!4835, !4836, !4841}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4833, file: !4829, line: 43, baseType: !60, size: 32)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4833, file: !4829, line: 45, baseType: !4837, size: 192, offset: 64)
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4829, line: 29, size: 192, elements: !4838)
!4838 = !{!4839, !4840}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4837, file: !4829, line: 30, baseType: !128, size: 128)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4837, file: !4829, line: 32, baseType: !628, size: 64, offset: 128)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4833, file: !4829, line: 46, baseType: !628, size: 64, offset: 256)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !747, file: !36, line: 1305, baseType: !4828, size: 64, offset: 9024)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !747, file: !36, line: 1306, baseType: !48, size: 128, align: 64, offset: 9088)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !747, file: !36, line: 1307, baseType: !1228, size: 256, offset: 9216)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !747, file: !36, line: 1309, baseType: !116, size: 256, offset: 9472)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !747, file: !36, line: 1314, baseType: !84, size: 32, offset: 9728)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !747, file: !36, line: 1317, baseType: !60, size: 32, align: 512, offset: 10240)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !747, file: !36, line: 1318, baseType: !128, size: 128, offset: 10304)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !747, file: !36, line: 1320, baseType: !60, size: 32, offset: 10432)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !747, file: !36, line: 1321, baseType: !128, size: 128, offset: 10496)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !514, file: !36, line: 656, baseType: !903, size: 64, offset: 512)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !514, file: !36, line: 659, baseType: !300, size: 64, offset: 576)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !514, file: !36, line: 663, baseType: !283, size: 64, offset: 640)
!4854 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !36, line: 671, baseType: !4855, size: 32, offset: 704)
!4855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !36, line: 671, size: 32, elements: !4856)
!4856 = !{!4857, !4859}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4855, file: !36, line: 672, baseType: !4858, size: 32)
!4858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4855, file: !36, line: 673, baseType: !58, size: 32)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !514, file: !36, line: 675, baseType: !588, size: 32, offset: 736)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !514, file: !36, line: 676, baseType: !134, size: 64, offset: 768)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !514, file: !36, line: 677, baseType: !624, size: 128, offset: 832)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !514, file: !36, line: 678, baseType: !624, size: 128, offset: 960)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !514, file: !36, line: 679, baseType: !624, size: 128, offset: 1088)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !514, file: !36, line: 680, baseType: !60, size: 32, offset: 1216)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !514, file: !36, line: 681, baseType: !101, size: 16, offset: 1248)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !514, file: !36, line: 682, baseType: !89, size: 8, offset: 1264)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !514, file: !36, line: 683, baseType: !89, size: 8, offset: 1272)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !514, file: !36, line: 684, baseType: !2522, size: 64, offset: 1280)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !514, file: !36, line: 691, baseType: !283, size: 64, offset: 1344)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !514, file: !36, line: 692, baseType: !288, size: 320, offset: 1408)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !514, file: !36, line: 694, baseType: !283, size: 64, offset: 1728)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !514, file: !36, line: 695, baseType: !283, size: 64, offset: 1792)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !514, file: !36, line: 697, baseType: !183, size: 128, offset: 1856)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !514, file: !36, line: 698, baseType: !128, size: 128, offset: 1984)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !514, file: !36, line: 707, baseType: !128, size: 128, offset: 2112)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !514, file: !36, line: 708, baseType: !128, size: 128, offset: 2240)
!4878 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !36, line: 709, baseType: !4879, size: 128, offset: 2368)
!4879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !36, line: 709, size: 128, elements: !4880)
!4880 = !{!4881, !4882}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4879, file: !36, line: 710, baseType: !179, size: 64)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4879, file: !36, line: 711, baseType: !48, size: 128, align: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !514, file: !36, line: 713, baseType: !108, size: 64, offset: 2496)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !514, file: !36, line: 714, baseType: !108, size: 64, offset: 2560)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !514, file: !36, line: 715, baseType: !80, size: 32, offset: 2624)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !514, file: !36, line: 716, baseType: !80, size: 32, offset: 2656)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !514, file: !36, line: 717, baseType: !80, size: 32, offset: 2688)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !514, file: !36, line: 719, baseType: !80, size: 32, offset: 2720)
!4889 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !36, line: 721, baseType: !4890, size: 64, offset: 2752)
!4890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !36, line: 721, size: 64, elements: !4891)
!4891 = !{!4892, !5014}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4890, file: !36, line: 722, baseType: !4893, size: 64)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4895)
!4895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !36, line: 1914, size: 2112, elements: !4896)
!4896 = !{!4897, !4898, !4902, !4906, !4910, !4911, !4912, !4916, !4929, !4933, !4937, !4938, !4942, !4943, !4947, !4952, !4953, !4957, !4961, !4967, !4968, !4972, !4973, !4977, !4981, !4982, !4987, !4991, !4995, !4999, !5003, !5004, !5010}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4895, file: !36, line: 1915, baseType: !779, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4895, file: !36, line: 1916, baseType: !4899, size: 64, offset: 64)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!134, !34, !134, !84}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4895, file: !36, line: 1917, baseType: !4903, size: 64, offset: 128)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!667, !34, !362, !670, !1843}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4895, file: !36, line: 1918, baseType: !4907, size: 64, offset: 192)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!667, !34, !353, !670, !1843}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4895, file: !36, line: 1919, baseType: !1566, size: 64, offset: 256)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4895, file: !36, line: 1920, baseType: !1566, size: 64, offset: 320)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4895, file: !36, line: 1921, baseType: !4913, size: 64, offset: 384)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!84, !1569, !2670, !58}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4895, file: !36, line: 1923, baseType: !4917, size: 64, offset: 448)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{!84, !34, !4920}
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !36, line: 1858, size: 128, elements: !4922)
!4922 = !{!4923, !4928}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4921, file: !36, line: 1859, baseType: !4924, size: 64)
!4924 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !36, line: 1855, baseType: !4925)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{!350, !4920, !353, !84, !134, !255, !58}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4921, file: !36, line: 1860, baseType: !134, size: 64, offset: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4895, file: !36, line: 1924, baseType: !4930, size: 64, offset: 512)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!1863, !34, !1865}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4895, file: !36, line: 1925, baseType: !4934, size: 64, offset: 576)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!628, !34, !58, !283}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4895, file: !36, line: 1926, baseType: !4934, size: 64, offset: 640)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4895, file: !36, line: 1927, baseType: !4939, size: 64, offset: 704)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!84, !34, !1059}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4895, file: !36, line: 1928, baseType: !283, size: 64, offset: 768)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4895, file: !36, line: 1929, baseType: !4944, size: 64, offset: 832)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!84, !513, !34}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4895, file: !36, line: 1930, baseType: !4948, size: 64, offset: 896)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!84, !34, !4951}
!4951 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !36, line: 1061, baseType: !300)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4895, file: !36, line: 1931, baseType: !4944, size: 64, offset: 960)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4895, file: !36, line: 1932, baseType: !4954, size: 64, offset: 1024)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{!84, !34, !134, !134, !84}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4895, file: !36, line: 1933, baseType: !4958, size: 64, offset: 1088)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!84, !84, !34, !84}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4895, file: !36, line: 1934, baseType: !4962, size: 64, offset: 1152)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!84, !34, !84, !4965}
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !36, line: 1063, flags: DIFlagFwdDecl)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4895, file: !36, line: 1935, baseType: !1097, size: 64, offset: 1216)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4895, file: !36, line: 1936, baseType: !4969, size: 64, offset: 1280)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!84, !84}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4895, file: !36, line: 1937, baseType: !4962, size: 64, offset: 1344)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4895, file: !36, line: 1938, baseType: !4974, size: 64, offset: 1408)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!667, !4382, !34, !1843, !670, !58}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4895, file: !36, line: 1939, baseType: !4978, size: 64, offset: 1472)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!667, !34, !1843, !4382, !670, !58}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4895, file: !36, line: 1940, baseType: !1700, size: 64, offset: 1536)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4895, file: !36, line: 1941, baseType: !4983, size: 64, offset: 1600)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!84, !34, !84, !4986, !1543}
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4895, file: !36, line: 1942, baseType: !4988, size: 64, offset: 1664)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!628, !34, !84, !134, !134}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4895, file: !36, line: 1944, baseType: !4992, size: 64, offset: 1728)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DISubroutineType(types: !4994)
!4994 = !{null, !1818, !34}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4895, file: !36, line: 1948, baseType: !4996, size: 64, offset: 1792)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!667, !34, !134, !34, !134, !670, !58}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4895, file: !36, line: 1950, baseType: !5000, size: 64, offset: 1856)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DISubroutineType(types: !5002)
!5002 = !{!134, !34, !134, !34, !134, !134, !58}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4895, file: !36, line: 1953, baseType: !4954, size: 64, offset: 1920)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4895, file: !36, line: 1954, baseType: !5005, size: 64, offset: 1984)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!84, !5008, !58}
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !36, line: 1911, flags: DIFlagFwdDecl)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4895, file: !36, line: 1955, baseType: !5011, size: 64, offset: 2048)
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!84, !5008, !2670, !58}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4890, file: !36, line: 723, baseType: !2270, size: 64)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !514, file: !36, line: 725, baseType: !5016, size: 64, offset: 2816)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !36, line: 725, flags: DIFlagFwdDecl)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !514, file: !36, line: 726, baseType: !904, size: 1536, align: 64, offset: 2880)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !514, file: !36, line: 727, baseType: !128, size: 128, offset: 4416)
!5020 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !36, line: 728, baseType: !5021, size: 64, offset: 4544)
!5021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !36, line: 728, size: 64, elements: !5022)
!5022 = !{!5023, !5024, !5027, !5028}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5021, file: !36, line: 729, baseType: !4382, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5021, file: !36, line: 730, baseType: !5025, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5026, size: 64)
!5026 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !36, line: 730, flags: DIFlagFwdDecl)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5021, file: !36, line: 731, baseType: !362, size: 64)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5021, file: !36, line: 732, baseType: !58, size: 32)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !514, file: !36, line: 735, baseType: !315, size: 32, offset: 4608)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !514, file: !36, line: 738, baseType: !315, size: 32, offset: 4640)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !514, file: !36, line: 739, baseType: !4733, size: 64, offset: 4672)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !514, file: !36, line: 750, baseType: !300, size: 64, offset: 4736)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !474, file: !475, line: 91, baseType: !5034, size: 256, offset: 448)
!5034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 256, elements: !2564)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !474, file: !475, line: 94, baseType: !5036, size: 64, offset: 704)
!5036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !5037, line: 25, size: 64, elements: !5038)
!5037 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!5038 = !{!5039}
!5039 = !DIDerivedType(tag: DW_TAG_member, scope: !5036, file: !5037, line: 26, baseType: !5040, size: 64)
!5040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5036, file: !5037, line: 26, size: 64, elements: !5041)
!5041 = !{!5042, !5043}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !5040, file: !5037, line: 28, baseType: !256, size: 64, align: 64)
!5043 = !DIDerivedType(tag: DW_TAG_member, scope: !5040, file: !5037, line: 30, baseType: !5044, size: 64)
!5044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5040, file: !5037, line: 30, size: 64, elements: !5045)
!5045 = !{!5046, !5047}
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5044, file: !5037, line: 31, baseType: !60, size: 32)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5044, file: !5037, line: 32, baseType: !84, size: 32, offset: 32)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !474, file: !475, line: 95, baseType: !4747, size: 64, offset: 768)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !474, file: !475, line: 96, baseType: !746, size: 64, offset: 832)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !474, file: !475, line: 97, baseType: !283, size: 64, offset: 896)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !474, file: !475, line: 98, baseType: !300, size: 64, offset: 960)
!5052 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !475, line: 100, baseType: !5053, size: 128, offset: 1024)
!5053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !475, line: 100, size: 128, elements: !5054)
!5054 = !{!5055, !5056}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5053, file: !475, line: 101, baseType: !128, size: 128)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5053, file: !475, line: 102, baseType: !5057, size: 64)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !474, file: !475, line: 104, baseType: !128, size: 128, offset: 1152)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !474, file: !475, line: 105, baseType: !128, size: 128, offset: 1280)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !474, file: !475, line: 113, baseType: !5061, size: 128, offset: 1408)
!5061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !475, line: 109, size: 128, elements: !5062)
!5062 = !{!5063, !5064, !5065}
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5061, file: !475, line: 110, baseType: !183, size: 128)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5061, file: !475, line: 111, baseType: !489, size: 128)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5061, file: !475, line: 112, baseType: !48, size: 128, align: 64)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !469, file: !470, line: 72, baseType: !746, size: 64, offset: 64)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !469, file: !470, line: 73, baseType: !84, size: 32, offset: 128)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !469, file: !470, line: 74, baseType: !553, size: 64, offset: 192)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !464, file: !465, line: 10, baseType: !473, size: 64, offset: 64)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !35, file: !36, line: 1015, baseType: !513, size: 64, offset: 1344)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !35, file: !36, line: 1016, baseType: !4893, size: 64, offset: 1408)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !35, file: !36, line: 1018, baseType: !255, size: 64, offset: 1472)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !35, file: !36, line: 1020, baseType: !300, size: 64, offset: 1536)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !35, file: !36, line: 1023, baseType: !300, size: 64, offset: 1600)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !35, file: !36, line: 1027, baseType: !5076, size: 64, offset: 1664)
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !35, file: !36, line: 1029, baseType: !903, size: 64, offset: 1728)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !35, file: !36, line: 1030, baseType: !1710, size: 32, offset: 1792)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !35, file: !36, line: 1031, baseType: !1710, size: 32, offset: 1824)
!5080 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/ext4/.fsync.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/ext4/ext4\22 -D KBUILD_BASENAME=\22fsync\22 -D KBUILD_MODNAME=\22ext4\22 -D __KBUILD_MODNAME=kmod_ext4 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/ext4/fsync.ll fs/ext4/fsync.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !5081, retainedTypes: !5461, globals: !5555, splitDebugInlining: false, nameTableKind: None)
!5081 = !{!210, !784, !1028, !1341, !1427, !1668, !1738, !2296, !2365, !2751, !2888, !2950, !3023, !3100, !3108, !3239, !3249, !3255, !3263, !3296, !3328, !3416, !3856, !4405, !5082, !5087, !5093, !5442, !5447}
!5082 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !5083, line: 10, baseType: !58, size: 32, elements: !5084)
!5083 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5084 = !{!5085, !5086}
!5085 = !DIEnumerator(name: "false", value: 0)
!5086 = !DIEnumerator(name: "true", value: 1)
!5087 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "passtype", file: !5088, line: 741, baseType: !58, size: 32, elements: !5089)
!5088 = !DIFile(filename: "./include/linux/jbd2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "072378681f9a7c8bcf642036e73917c8")
!5089 = !{!5090, !5091, !5092}
!5090 = !DIEnumerator(name: "PASS_SCAN", value: 0)
!5091 = !DIEnumerator(name: "PASS_REVOKE", value: 1)
!5092 = !DIEnumerator(name: "PASS_REPLAY", value: 2)
!5093 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !5094, file: !5088, line: 567, baseType: !58, size: 32, elements: !5432)
!5094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_s", file: !5088, line: 551, size: 1664, elements: !5095)
!5095 = !{!5096, !5371, !5372, !5373, !5374, !5375, !5406, !5407, !5408, !5409, !5410, !5411, !5412, !5413, !5414, !5421, !5422, !5423, !5424, !5425, !5426, !5427, !5428, !5429, !5430, !5431}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "t_journal", scope: !5094, file: !5088, line: 554, baseType: !5097, size: 64)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DIDerivedType(tag: DW_TAG_typedef, name: "journal_t", file: !5088, line: 105, baseType: !5099)
!5099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_s", file: !5088, line: 750, size: 11776, elements: !5100)
!5100 = !{!5101, !5102, !5103, !5104, !5105, !5131, !5172, !5173, !5174, !5175, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5226, !5228, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5241, !5255, !5256, !5257, !5260, !5277, !5278, !5279, !5357, !5358, !5363, !5367}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "j_flags", scope: !5099, file: !5088, line: 756, baseType: !283, size: 64)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "j_atomic_flags", scope: !5099, file: !5088, line: 761, baseType: !283, size: 64, offset: 64)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "j_errno", scope: !5099, file: !5088, line: 769, baseType: !84, size: 32, offset: 128)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "j_abort_mutex", scope: !5099, file: !5088, line: 774, baseType: !116, size: 256, offset: 192)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "j_sb_buffer", scope: !5099, file: !5088, line: 779, baseType: !5106, size: 64, offset: 448)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buffer_head", file: !5108, line: 59, size: 832, elements: !5109)
!5108 = !DIFile(filename: "./include/linux/buffer_head.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc335f14f0fab7e7c331101f97325549")
!5109 = !{!5110, !5111, !5112, !5117, !5118, !5119, !5120, !5121, !5126, !5127, !5128, !5129, !5130}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "b_state", scope: !5107, file: !5108, line: 60, baseType: !283, size: 64)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "b_this_page", scope: !5107, file: !5108, line: 61, baseType: !5106, size: 64, offset: 64)
!5112 = !DIDerivedType(tag: DW_TAG_member, scope: !5107, file: !5108, line: 62, baseType: !5113, size: 64, offset: 128)
!5113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5107, file: !5108, line: 62, size: 64, elements: !5114)
!5114 = !{!5115, !5116}
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "b_page", scope: !5113, file: !5108, line: 63, baseType: !930, size: 64)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "b_folio", scope: !5113, file: !5108, line: 64, baseType: !1447, size: 64)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "b_blocknr", scope: !5107, file: !5108, line: 67, baseType: !1552, size: 64, offset: 192)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "b_size", scope: !5107, file: !5108, line: 68, baseType: !670, size: 64, offset: 256)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "b_data", scope: !5107, file: !5108, line: 69, baseType: !362, size: 64, offset: 320)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "b_bdev", scope: !5107, file: !5108, line: 71, baseType: !2548, size: 64, offset: 384)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "b_end_io", scope: !5107, file: !5108, line: 72, baseType: !5122, size: 64, offset: 448)
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = !DIDerivedType(tag: DW_TAG_typedef, name: "bh_end_io_t", file: !5108, line: 48, baseType: !5124)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{null, !5106, !84}
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "b_private", scope: !5107, file: !5108, line: 73, baseType: !300, size: 64, offset: 512)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_buffers", scope: !5107, file: !5108, line: 74, baseType: !128, size: 128, offset: 576)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_map", scope: !5107, file: !5108, line: 75, baseType: !903, size: 64, offset: 704)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "b_count", scope: !5107, file: !5108, line: 77, baseType: !80, size: 32, offset: 768)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "b_uptodate_lock", scope: !5107, file: !5108, line: 78, baseType: !60, size: 32, offset: 800)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "j_superblock", scope: !5099, file: !5088, line: 784, baseType: !5132, size: 64, offset: 512)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DIDerivedType(tag: DW_TAG_typedef, name: "journal_superblock_t", file: !5088, line: 277, baseType: !5134)
!5134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_superblock_s", file: !5088, line: 226, size: 8192, elements: !5135)
!5135 = !{!5136, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5161, !5162, !5163, !5167, !5168}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "s_header", scope: !5134, file: !5088, line: 229, baseType: !5137, size: 96)
!5137 = !DIDerivedType(tag: DW_TAG_typedef, name: "journal_header_t", file: !5088, line: 136, baseType: !5138)
!5138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_header_s", file: !5088, line: 131, size: 96, elements: !5139)
!5139 = !{!5140, !5142, !5143}
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "h_magic", scope: !5138, file: !5088, line: 133, baseType: !5141, size: 32)
!5141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !1864, line: 39, baseType: !315)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "h_blocktype", scope: !5138, file: !5088, line: 134, baseType: !5141, size: 32, offset: 32)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "h_sequence", scope: !5138, file: !5088, line: 135, baseType: !5141, size: 32, offset: 64)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !5134, file: !5088, line: 233, baseType: !5141, size: 32, offset: 96)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxlen", scope: !5134, file: !5088, line: 234, baseType: !5141, size: 32, offset: 128)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "s_first", scope: !5134, file: !5088, line: 235, baseType: !5141, size: 32, offset: 160)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "s_sequence", scope: !5134, file: !5088, line: 239, baseType: !5141, size: 32, offset: 192)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "s_start", scope: !5134, file: !5088, line: 240, baseType: !5141, size: 32, offset: 224)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "s_errno", scope: !5134, file: !5088, line: 244, baseType: !5141, size: 32, offset: 256)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_compat", scope: !5134, file: !5088, line: 248, baseType: !5141, size: 32, offset: 288)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_incompat", scope: !5134, file: !5088, line: 249, baseType: !5141, size: 32, offset: 320)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_ro_compat", scope: !5134, file: !5088, line: 250, baseType: !5141, size: 32, offset: 352)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !5134, file: !5088, line: 252, baseType: !4742, size: 128, offset: 384)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "s_nr_users", scope: !5134, file: !5088, line: 255, baseType: !5141, size: 32, offset: 512)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "s_dynsuper", scope: !5134, file: !5088, line: 257, baseType: !5141, size: 32, offset: 544)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_transaction", scope: !5134, file: !5088, line: 260, baseType: !5141, size: 32, offset: 576)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_trans_data", scope: !5134, file: !5088, line: 261, baseType: !5141, size: 32, offset: 608)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum_type", scope: !5134, file: !5088, line: 264, baseType: !91, size: 8, offset: 640)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "s_padding2", scope: !5134, file: !5088, line: 265, baseType: !5160, size: 24, offset: 648)
!5160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 24, elements: !161)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "s_num_fc_blks", scope: !5134, file: !5088, line: 267, baseType: !5141, size: 32, offset: 672)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "s_head", scope: !5134, file: !5088, line: 268, baseType: !5141, size: 32, offset: 704)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "s_padding", scope: !5134, file: !5088, line: 271, baseType: !5164, size: 1280, offset: 736)
!5164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 1280, elements: !5165)
!5165 = !{!5166}
!5166 = !DISubrange(count: 40)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum", scope: !5134, file: !5088, line: 272, baseType: !5141, size: 32, offset: 2016)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "s_users", scope: !5134, file: !5088, line: 275, baseType: !5169, size: 6144, offset: 2048)
!5169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 6144, elements: !5170)
!5170 = !{!5171}
!5171 = !DISubrange(count: 768)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "j_state_lock", scope: !5099, file: !5088, line: 789, baseType: !142, size: 64, offset: 576)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "j_barrier_count", scope: !5099, file: !5088, line: 797, baseType: !84, size: 32, offset: 640)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "j_barrier", scope: !5099, file: !5088, line: 802, baseType: !116, size: 256, offset: 704)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "j_running_transaction", scope: !5099, file: !5088, line: 811, baseType: !5176, size: 64, offset: 960)
!5176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5177, size: 64)
!5177 = !DIDerivedType(tag: DW_TAG_typedef, name: "transaction_t", file: !5178, line: 17, baseType: !5094)
!5178 = !DIFile(filename: "./include/linux/journal-head.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a64d63ceb0222c76d889f081fb8fa94")
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "j_committing_transaction", scope: !5099, file: !5088, line: 819, baseType: !5176, size: 64, offset: 1024)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "j_checkpoint_transactions", scope: !5099, file: !5088, line: 827, baseType: !5176, size: 64, offset: 1088)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_transaction_locked", scope: !5099, file: !5088, line: 835, baseType: !192, size: 192, offset: 1152)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_done_commit", scope: !5099, file: !5088, line: 840, baseType: !192, size: 192, offset: 1344)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_commit", scope: !5099, file: !5088, line: 845, baseType: !192, size: 192, offset: 1536)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_updates", scope: !5099, file: !5088, line: 850, baseType: !192, size: 192, offset: 1728)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_reserved", scope: !5099, file: !5088, line: 857, baseType: !192, size: 192, offset: 1920)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_wait", scope: !5099, file: !5088, line: 864, baseType: !192, size: 192, offset: 2112)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "j_checkpoint_mutex", scope: !5099, file: !5088, line: 871, baseType: !116, size: 256, offset: 2304)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "j_chkpt_bhs", scope: !5099, file: !5088, line: 881, baseType: !5189, size: 4096, offset: 2560)
!5189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5106, size: 4096, elements: !842)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "j_shrinker", scope: !5099, file: !5088, line: 889, baseType: !4806, size: 448, offset: 6656)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "j_checkpoint_jh_count", scope: !5099, file: !5088, line: 896, baseType: !410, size: 320, offset: 7104)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "j_shrink_transaction", scope: !5099, file: !5088, line: 904, baseType: !5176, size: 64, offset: 7424)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "j_head", scope: !5099, file: !5088, line: 912, baseType: !283, size: 64, offset: 7488)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "j_tail", scope: !5099, file: !5088, line: 920, baseType: !283, size: 64, offset: 7552)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "j_free", scope: !5099, file: !5088, line: 928, baseType: !283, size: 64, offset: 7616)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "j_first", scope: !5099, file: !5088, line: 936, baseType: !283, size: 64, offset: 7680)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "j_last", scope: !5099, file: !5088, line: 944, baseType: !283, size: 64, offset: 7744)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_first", scope: !5099, file: !5088, line: 952, baseType: !283, size: 64, offset: 7808)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_off", scope: !5099, file: !5088, line: 961, baseType: !283, size: 64, offset: 7872)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_last", scope: !5099, file: !5088, line: 969, baseType: !283, size: 64, offset: 7936)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "j_dev", scope: !5099, file: !5088, line: 974, baseType: !2548, size: 64, offset: 8000)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "j_blocksize", scope: !5099, file: !5088, line: 979, baseType: !84, size: 32, offset: 8064)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "j_blk_offset", scope: !5099, file: !5088, line: 986, baseType: !257, size: 64, offset: 8128)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "j_devname", scope: !5099, file: !5088, line: 991, baseType: !792, size: 448, offset: 8192)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "j_fs_dev", scope: !5099, file: !5088, line: 999, baseType: !2548, size: 64, offset: 8640)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "j_total_len", scope: !5099, file: !5088, line: 1004, baseType: !58, size: 32, offset: 8704)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "j_reserved_credits", scope: !5099, file: !5088, line: 1011, baseType: !80, size: 32, offset: 8736)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "j_list_lock", scope: !5099, file: !5088, line: 1016, baseType: !60, size: 32, offset: 8768)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "j_inode", scope: !5099, file: !5088, line: 1024, baseType: !513, size: 64, offset: 8832)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "j_tail_sequence", scope: !5099, file: !5088, line: 1031, baseType: !5211, size: 32, offset: 8896)
!5211 = !DIDerivedType(tag: DW_TAG_typedef, name: "tid_t", file: !5178, line: 16, baseType: !58)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "j_transaction_sequence", scope: !5099, file: !5088, line: 1038, baseType: !5211, size: 32, offset: 8928)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_sequence", scope: !5099, file: !5088, line: 1046, baseType: !5211, size: 32, offset: 8960)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_request", scope: !5099, file: !5088, line: 1054, baseType: !5211, size: 32, offset: 8992)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "j_uuid", scope: !5099, file: !5088, line: 1064, baseType: !4742, size: 128, offset: 9024)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "j_task", scope: !5099, file: !5088, line: 1069, baseType: !3597, size: 64, offset: 9152)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "j_max_transaction_buffers", scope: !5099, file: !5088, line: 1077, baseType: !84, size: 32, offset: 9216)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke_records_per_block", scope: !5099, file: !5088, line: 1084, baseType: !84, size: 32, offset: 9248)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "j_transaction_overhead_buffers", scope: !5099, file: !5088, line: 1091, baseType: !84, size: 32, offset: 9280)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_interval", scope: !5099, file: !5088, line: 1098, baseType: !283, size: 64, offset: 9344)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_timer", scope: !5099, file: !5088, line: 1103, baseType: !2135, size: 320, offset: 9408)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke_lock", scope: !5099, file: !5088, line: 1108, baseType: !60, size: 32, offset: 9728)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke", scope: !5099, file: !5088, line: 1116, baseType: !5224, size: 64, offset: 9792)
!5224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5225, size: 64)
!5225 = !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_revoke_table_s", file: !5088, line: 448, flags: DIFlagFwdDecl)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke_table", scope: !5099, file: !5088, line: 1121, baseType: !5227, size: 128, offset: 9856)
!5227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5224, size: 128, elements: !694)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "j_wbuf", scope: !5099, file: !5088, line: 1126, baseType: !5229, size: 64, offset: 9984)
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_wbuf", scope: !5099, file: !5088, line: 1133, baseType: !5229, size: 64, offset: 10048)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "j_wbufsize", scope: !5099, file: !5088, line: 1140, baseType: !84, size: 32, offset: 10112)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_wbufsize", scope: !5099, file: !5088, line: 1147, baseType: !84, size: 32, offset: 10144)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "j_last_sync_writer", scope: !5099, file: !5088, line: 1155, baseType: !3892, size: 32, offset: 10176)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "j_average_commit_time", scope: !5099, file: !5088, line: 1163, baseType: !255, size: 64, offset: 10240)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "j_min_batch_time", scope: !5099, file: !5088, line: 1171, baseType: !314, size: 32, offset: 10304)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "j_max_batch_time", scope: !5099, file: !5088, line: 1179, baseType: !314, size: 32, offset: 10336)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_callback", scope: !5099, file: !5088, line: 1186, baseType: !5238, size: 64, offset: 10368)
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{null, !5097, !5176}
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "j_submit_inode_data_buffers", scope: !5099, file: !5088, line: 1196, baseType: !5242, size: 64, offset: 10432)
!5242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5243, size: 64)
!5243 = !DISubroutineType(types: !5244)
!5244 = !{!84, !5245}
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5246, size: 64)
!5246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_inode", file: !5088, line: 397, size: 512, elements: !5247)
!5247 = !{!5248, !5249, !5250, !5251, !5252, !5253, !5254}
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "i_transaction", scope: !5246, file: !5088, line: 404, baseType: !5176, size: 64)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "i_next_transaction", scope: !5246, file: !5088, line: 412, baseType: !5176, size: 64, offset: 64)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "i_list", scope: !5246, file: !5088, line: 417, baseType: !128, size: 128, offset: 128)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "i_vfs_inode", scope: !5246, file: !5088, line: 424, baseType: !513, size: 64, offset: 256)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !5246, file: !5088, line: 429, baseType: !283, size: 64, offset: 320)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "i_dirty_start", scope: !5246, file: !5088, line: 437, baseType: !134, size: 64, offset: 384)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "i_dirty_end", scope: !5246, file: !5088, line: 445, baseType: !134, size: 64, offset: 448)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "j_finish_inode_data_buffers", scope: !5099, file: !5088, line: 1207, baseType: !5242, size: 64, offset: 10496)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "j_history_lock", scope: !5099, file: !5088, line: 1217, baseType: !60, size: 32, offset: 10560)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "j_proc_entry", scope: !5099, file: !5088, line: 1222, baseType: !5258, size: 64, offset: 10624)
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5259 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !5088, line: 1222, flags: DIFlagFwdDecl)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "j_stats", scope: !5099, file: !5088, line: 1227, baseType: !5261, size: 640, offset: 10688)
!5261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_stats_s", file: !5088, line: 724, size: 640, elements: !5262)
!5262 = !{!5263, !5264, !5265}
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "ts_tid", scope: !5261, file: !5088, line: 725, baseType: !283, size: 64)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "ts_requested", scope: !5261, file: !5088, line: 726, baseType: !283, size: 64, offset: 64)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !5261, file: !5088, line: 727, baseType: !5266, size: 512, offset: 128)
!5266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_run_stats_s", file: !5088, line: 711, size: 512, elements: !5267)
!5267 = !{!5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276}
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "rs_wait", scope: !5266, file: !5088, line: 712, baseType: !283, size: 64)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "rs_request_delay", scope: !5266, file: !5088, line: 713, baseType: !283, size: 64, offset: 64)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "rs_running", scope: !5266, file: !5088, line: 714, baseType: !283, size: 64, offset: 128)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "rs_locked", scope: !5266, file: !5088, line: 715, baseType: !283, size: 64, offset: 192)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "rs_flushing", scope: !5266, file: !5088, line: 716, baseType: !283, size: 64, offset: 256)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "rs_logging", scope: !5266, file: !5088, line: 717, baseType: !283, size: 64, offset: 320)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "rs_handle_count", scope: !5266, file: !5088, line: 719, baseType: !315, size: 32, offset: 384)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "rs_blocks", scope: !5266, file: !5088, line: 720, baseType: !315, size: 32, offset: 416)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "rs_blocks_logged", scope: !5266, file: !5088, line: 721, baseType: !315, size: 32, offset: 448)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "j_failed_commit", scope: !5099, file: !5088, line: 1232, baseType: !58, size: 32, offset: 11328)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "j_private", scope: !5099, file: !5088, line: 1240, baseType: !300, size: 64, offset: 11392)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "j_chksum_driver", scope: !5099, file: !5088, line: 1247, baseType: !5280, size: 64, offset: 11456)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_shash", file: !5282, line: 268, size: 320, elements: !5283)
!5282 = !DIFile(filename: "./include/crypto/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "898bc22f4cdebdebab6f93eb5fefb325")
!5283 = !{!5284, !5285}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !5281, file: !5282, line: 269, baseType: !58, size: 32)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5281, file: !5282, line: 270, baseType: !5286, size: 256, offset: 64)
!5286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_tfm", file: !5287, line: 422, size: 256, elements: !5288)
!5287 = !DIFile(filename: "./include/linux/crypto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfd5dd8032a2dca49778e0abbbe9ad8")
!5288 = !{!5289, !5290, !5291, !5292, !5297, !5355}
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5286, file: !5287, line: 423, baseType: !170, size: 32)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "crt_flags", scope: !5286, file: !5287, line: 425, baseType: !314, size: 32, offset: 32)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5286, file: !5287, line: 427, baseType: !84, size: 32, offset: 64)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5286, file: !5287, line: 429, baseType: !5293, size: 64, offset: 128)
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{null, !5296}
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5286, size: 64)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_alg", scope: !5286, file: !5287, line: 431, baseType: !5298, size: 64, offset: 192)
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5299, size: 64)
!5299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_alg", file: !5287, line: 343, size: 3072, align: 64, elements: !5300)
!5300 = !{!5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5313, !5314, !5318, !5345, !5349, !5350, !5354}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "cra_list", scope: !5299, file: !5287, line: 344, baseType: !128, size: 128)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "cra_users", scope: !5299, file: !5287, line: 345, baseType: !128, size: 128, offset: 128)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "cra_flags", scope: !5299, file: !5287, line: 347, baseType: !314, size: 32, offset: 256)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "cra_blocksize", scope: !5299, file: !5287, line: 348, baseType: !58, size: 32, offset: 288)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "cra_ctxsize", scope: !5299, file: !5287, line: 349, baseType: !58, size: 32, offset: 320)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "cra_alignmask", scope: !5299, file: !5287, line: 350, baseType: !58, size: 32, offset: 352)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "cra_priority", scope: !5299, file: !5287, line: 352, baseType: !84, size: 32, offset: 384)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "cra_refcnt", scope: !5299, file: !5287, line: 353, baseType: !170, size: 32, offset: 416)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "cra_name", scope: !5299, file: !5287, line: 355, baseType: !5310, size: 1024, offset: 448)
!5310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !5311)
!5311 = !{!5312}
!5312 = !DISubrange(count: 128)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "cra_driver_name", scope: !5299, file: !5287, line: 356, baseType: !5310, size: 1024, offset: 1472)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "cra_type", scope: !5299, file: !5287, line: 358, baseType: !5315, size: 64, offset: 2496)
!5315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5316, size: 64)
!5316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5317)
!5317 = !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_type", file: !5287, line: 160, flags: DIFlagFwdDecl)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "cra_u", scope: !5299, file: !5287, line: 363, baseType: !5319, size: 256, offset: 2560)
!5319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5299, file: !5287, line: 360, size: 256, elements: !5320)
!5320 = !{!5321, !5337}
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !5319, file: !5287, line: 361, baseType: !5322, size: 256)
!5322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_alg", file: !5287, line: 235, size: 256, elements: !5323)
!5323 = !{!5324, !5325, !5326, !5332, !5336}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "cia_min_keysize", scope: !5322, file: !5287, line: 236, baseType: !58, size: 32)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "cia_max_keysize", scope: !5322, file: !5287, line: 237, baseType: !58, size: 32, offset: 32)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "cia_setkey", scope: !5322, file: !5287, line: 238, baseType: !5327, size: 64, offset: 64)
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = !DISubroutineType(types: !5329)
!5329 = !{!84, !5296, !5330, !58}
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "cia_encrypt", scope: !5322, file: !5287, line: 240, baseType: !5333, size: 64, offset: 128)
!5333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5334, size: 64)
!5334 = !DISubroutineType(types: !5335)
!5335 = !{null, !5296, !2750, !5330}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "cia_decrypt", scope: !5322, file: !5287, line: 241, baseType: !5333, size: 64, offset: 192)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !5319, file: !5287, line: 362, baseType: !5338, size: 128)
!5338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_alg", file: !5287, line: 255, size: 128, elements: !5339)
!5339 = !{!5340, !5344}
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "coa_compress", scope: !5338, file: !5287, line: 256, baseType: !5341, size: 64)
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5342, size: 64)
!5342 = !DISubroutineType(types: !5343)
!5343 = !{!84, !5296, !5330, !58, !2750, !1989}
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "coa_decompress", scope: !5338, file: !5287, line: 258, baseType: !5341, size: 64, offset: 64)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "cra_init", scope: !5299, file: !5287, line: 365, baseType: !5346, size: 64, offset: 2816)
!5346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5347, size: 64)
!5347 = !DISubroutineType(types: !5348)
!5348 = !{!84, !5296}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "cra_exit", scope: !5299, file: !5287, line: 366, baseType: !5293, size: 64, offset: 2880)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "cra_destroy", scope: !5299, file: !5287, line: 367, baseType: !5351, size: 64, offset: 2944)
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5352, size: 64)
!5352 = !DISubroutineType(types: !5353)
!5353 = !{null, !5298}
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "cra_module", scope: !5299, file: !5287, line: 369, baseType: !779, size: 64, offset: 3008)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_ctx", scope: !5286, file: !5287, line: 433, baseType: !5356, align: 64, offset: 256)
!5356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, elements: !207)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "j_csum_seed", scope: !5099, file: !5088, line: 1254, baseType: !315, size: 32, offset: 11520)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_cleanup_callback", scope: !5099, file: !5088, line: 1276, baseType: !5359, size: 64, offset: 11584)
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{null, !5362, !84, !5211}
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_replay_callback", scope: !5099, file: !5088, line: 1289, baseType: !5364, size: 64, offset: 11648)
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5365, size: 64)
!5365 = !DISubroutineType(types: !5366)
!5366 = !{!84, !5362, !5106, !5087, !84, !5211}
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "j_bmap", scope: !5099, file: !5088, line: 1300, baseType: !5368, size: 64, offset: 11712)
!5368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5369, size: 64)
!5369 = !DISubroutineType(types: !5370)
!5370 = !{!84, !5362, !1698}
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "t_tid", scope: !5094, file: !5088, line: 557, baseType: !5211, size: 32, offset: 64)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "t_state", scope: !5094, file: !5088, line: 577, baseType: !5093, size: 32, offset: 96)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "t_log_start", scope: !5094, file: !5088, line: 582, baseType: !283, size: 64, offset: 128)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "t_nr_buffers", scope: !5094, file: !5088, line: 588, baseType: !84, size: 32, offset: 192)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "t_reserved_list", scope: !5094, file: !5088, line: 595, baseType: !5376, size: 64, offset: 256)
!5376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5377, size: 64)
!5377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_head", file: !5178, line: 22, size: 896, elements: !5378)
!5378 = !{!5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5405}
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "b_bh", scope: !5377, file: !5178, line: 26, baseType: !5106, size: 64)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "b_state_lock", scope: !5377, file: !5178, line: 31, baseType: !60, size: 32, offset: 64)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "b_jcount", scope: !5377, file: !5178, line: 37, baseType: !84, size: 32, offset: 96)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "b_jlist", scope: !5377, file: !5178, line: 46, baseType: !58, size: 32, offset: 128)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "b_modified", scope: !5377, file: !5178, line: 53, baseType: !58, size: 32, offset: 160)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "b_frozen_data", scope: !5377, file: !5178, line: 59, baseType: !362, size: 64, offset: 192)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "b_committed_data", scope: !5377, file: !5178, line: 66, baseType: !362, size: 64, offset: 256)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "b_transaction", scope: !5377, file: !5178, line: 77, baseType: !5176, size: 64, offset: 320)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "b_next_transaction", scope: !5377, file: !5178, line: 85, baseType: !5176, size: 64, offset: 384)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "b_tnext", scope: !5377, file: !5178, line: 91, baseType: !5376, size: 64, offset: 448)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "b_tprev", scope: !5377, file: !5178, line: 91, baseType: !5376, size: 64, offset: 512)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "b_cp_transaction", scope: !5377, file: !5178, line: 98, baseType: !5176, size: 64, offset: 576)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "b_cpnext", scope: !5377, file: !5178, line: 105, baseType: !5376, size: 64, offset: 640)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "b_cpprev", scope: !5377, file: !5178, line: 105, baseType: !5376, size: 64, offset: 704)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "b_triggers", scope: !5377, file: !5178, line: 108, baseType: !5394, size: 64, offset: 768)
!5394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5395, size: 64)
!5395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_buffer_trigger_type", file: !5088, line: 1460, size: 128, elements: !5396)
!5396 = !{!5397, !5401}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "t_frozen", scope: !5395, file: !5088, line: 1467, baseType: !5398, size: 64)
!5398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5399 = !DISubroutineType(types: !5400)
!5400 = !{null, !5394, !5106, !300, !670}
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "t_abort", scope: !5395, file: !5088, line: 1475, baseType: !5402, size: 64, offset: 64)
!5402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5403, size: 64)
!5403 = !DISubroutineType(types: !5404)
!5404 = !{null, !5394, !5106}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "b_frozen_triggers", scope: !5377, file: !5178, line: 111, baseType: !5394, size: 64, offset: 832)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "t_buffers", scope: !5094, file: !5088, line: 601, baseType: !5376, size: 64, offset: 320)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "t_forget", scope: !5094, file: !5088, line: 608, baseType: !5376, size: 64, offset: 384)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "t_checkpoint_list", scope: !5094, file: !5088, line: 614, baseType: !5376, size: 64, offset: 448)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "t_shadow_list", scope: !5094, file: !5088, line: 623, baseType: !5376, size: 64, offset: 512)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "t_inode_list", scope: !5094, file: !5088, line: 631, baseType: !128, size: 128, offset: 576)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "t_max_wait", scope: !5094, file: !5088, line: 636, baseType: !283, size: 64, offset: 704)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "t_start", scope: !5094, file: !5088, line: 641, baseType: !283, size: 64, offset: 768)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "t_requested", scope: !5094, file: !5088, line: 646, baseType: !283, size: 64, offset: 832)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "t_chp_stats", scope: !5094, file: !5088, line: 651, baseType: !5415, size: 192, offset: 896)
!5415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_chp_stats_s", file: !5088, line: 510, size: 192, elements: !5416)
!5416 = !{!5417, !5418, !5419, !5420}
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "cs_chp_time", scope: !5415, file: !5088, line: 511, baseType: !283, size: 64)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "cs_forced_to_close", scope: !5415, file: !5088, line: 512, baseType: !315, size: 32, offset: 64)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "cs_written", scope: !5415, file: !5088, line: 513, baseType: !315, size: 32, offset: 96)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "cs_dropped", scope: !5415, file: !5088, line: 514, baseType: !315, size: 32, offset: 128)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "t_updates", scope: !5094, file: !5088, line: 657, baseType: !80, size: 32, offset: 1088)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "t_outstanding_credits", scope: !5094, file: !5088, line: 665, baseType: !80, size: 32, offset: 1120)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "t_outstanding_revokes", scope: !5094, file: !5088, line: 671, baseType: !80, size: 32, offset: 1152)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "t_handle_count", scope: !5094, file: !5088, line: 676, baseType: !80, size: 32, offset: 1184)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "t_cpnext", scope: !5094, file: !5088, line: 682, baseType: !5176, size: 64, offset: 1216)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "t_cpprev", scope: !5094, file: !5088, line: 682, baseType: !5176, size: 64, offset: 1280)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "t_expires", scope: !5094, file: !5088, line: 688, baseType: !283, size: 64, offset: 1344)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "t_start_time", scope: !5094, file: !5088, line: 693, baseType: !2989, size: 64, offset: 1408)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "t_synchronous_commit", scope: !5094, file: !5088, line: 699, baseType: !58, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "t_need_data_flush", scope: !5094, file: !5088, line: 702, baseType: !84, size: 32, offset: 1504)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "t_private_list", scope: !5094, file: !5088, line: 708, baseType: !128, size: 128, offset: 1536)
!5432 = !{!5433, !5434, !5435, !5436, !5437, !5438, !5439, !5440, !5441}
!5433 = !DIEnumerator(name: "T_RUNNING", value: 0)
!5434 = !DIEnumerator(name: "T_LOCKED", value: 1)
!5435 = !DIEnumerator(name: "T_SWITCH", value: 2)
!5436 = !DIEnumerator(name: "T_FLUSH", value: 3)
!5437 = !DIEnumerator(name: "T_COMMIT", value: 4)
!5438 = !DIEnumerator(name: "T_COMMIT_DFLUSH", value: 5)
!5439 = !DIEnumerator(name: "T_COMMIT_JFLUSH", value: 6)
!5440 = !DIEnumerator(name: "T_COMMIT_CALLBACK", value: 7)
!5441 = !DIEnumerator(name: "T_FINISHED", value: 8)
!5442 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ext4_li_mode", file: !5443, line: 2584, baseType: !58, size: 32, elements: !5444)
!5443 = !DIFile(filename: "fs/ext4/ext4.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e5787aa1e5cfdc086e99d72d01ea51d")
!5444 = !{!5445, !5446}
!5445 = !DIEnumerator(name: "EXT4_LI_MODE_PREFETCH_BBITMAP", value: 0)
!5446 = !DIEnumerator(name: "EXT4_LI_MODE_ITABLE", value: 1)
!5447 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !5443, line: 1891, baseType: !58, size: 32, elements: !5448)
!5448 = !{!5449, !5450, !5451, !5452, !5453, !5454, !5455, !5456, !5457, !5458, !5459, !5460}
!5449 = !DIEnumerator(name: "EXT4_STATE_NEW", value: 0)
!5450 = !DIEnumerator(name: "EXT4_STATE_XATTR", value: 1)
!5451 = !DIEnumerator(name: "EXT4_STATE_NO_EXPAND", value: 2)
!5452 = !DIEnumerator(name: "EXT4_STATE_DA_ALLOC_CLOSE", value: 3)
!5453 = !DIEnumerator(name: "EXT4_STATE_EXT_MIGRATE", value: 4)
!5454 = !DIEnumerator(name: "EXT4_STATE_NEWENTRY", value: 5)
!5455 = !DIEnumerator(name: "EXT4_STATE_MAY_INLINE_DATA", value: 6)
!5456 = !DIEnumerator(name: "EXT4_STATE_EXT_PRECACHED", value: 7)
!5457 = !DIEnumerator(name: "EXT4_STATE_LUSTRE_EA_INODE", value: 8)
!5458 = !DIEnumerator(name: "EXT4_STATE_VERITY_IN_PROGRESS", value: 9)
!5459 = !DIEnumerator(name: "EXT4_STATE_FC_COMMITTING", value: 10)
!5460 = !DIEnumerator(name: "EXT4_STATE_ORPHAN_FILE", value: 11)
!5461 = !{!300, !2231, !5462, !3597, !283, !2035, !84, !5463, !5466, !5472, !58, !314, !5474, !5475, !5550, !5551, !5553}
!5462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5464, size: 64)
!5464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5465)
!5465 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5466)
!5466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5467, size: 64)
!5467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2098, line: 26, size: 192, elements: !5468)
!5468 = !{!5469, !5470, !5471}
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5467, file: !2098, line: 27, baseType: !300, size: 64)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5467, file: !2098, line: 28, baseType: !300, size: 64, offset: 64)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5467, file: !2098, line: 29, baseType: !84, size: 32, offset: 128)
!5472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5473, size: 64)
!5473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3757)
!5474 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !49, line: 42, baseType: !283)
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5476, size: 64)
!5476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_inode_info", file: !5443, line: 1002, size: 9152, elements: !5477)
!5477 = !{!5478, !5481, !5482, !5484, !5486, !5488, !5489, !5490, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508, !5509, !5510, !5511, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5546, !5548, !5549}
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !5476, file: !5443, line: 1003, baseType: !5479, size: 480)
!5479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5480, size: 480, elements: !11)
!5480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1864, line: 38, baseType: !315)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "i_dtime", scope: !5476, file: !5443, line: 1004, baseType: !315, size: 32, offset: 480)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "i_file_acl", scope: !5476, file: !5443, line: 1005, baseType: !5483, size: 64, offset: 512)
!5483 = !DIDerivedType(tag: DW_TAG_typedef, name: "ext4_fsblk_t", file: !5443, line: 117, baseType: !257)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "i_block_group", scope: !5476, file: !5443, line: 1014, baseType: !5485, size: 32, offset: 576)
!5485 = !DIDerivedType(tag: DW_TAG_typedef, name: "ext4_group_t", file: !5443, line: 123, baseType: !58)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_start_lookup", scope: !5476, file: !5443, line: 1015, baseType: !5487, size: 32, offset: 608)
!5487 = !DIDerivedType(tag: DW_TAG_typedef, name: "ext4_lblk_t", file: !5443, line: 120, baseType: !315)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !5476, file: !5443, line: 1019, baseType: !283, size: 64, offset: 640)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "xattr_sem", scope: !5476, file: !5443, line: 1028, baseType: !288, size: 320, offset: 704)
!5490 = !DIDerivedType(tag: DW_TAG_member, scope: !5476, file: !5443, line: 1034, baseType: !5491, size: 128, offset: 1024)
!5491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5476, file: !5443, line: 1034, size: 128, elements: !5492)
!5492 = !{!5493, !5494}
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "i_orphan", scope: !5491, file: !5443, line: 1035, baseType: !128, size: 128)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "i_orphan_idx", scope: !5491, file: !5443, line: 1036, baseType: !58, size: 32)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "i_fc_dilist", scope: !5476, file: !5443, line: 1042, baseType: !128, size: 128, offset: 1152)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "i_fc_list", scope: !5476, file: !5443, line: 1043, baseType: !128, size: 128, offset: 1280)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "i_fc_lblk_start", scope: !5476, file: !5443, line: 1049, baseType: !5487, size: 32, offset: 1408)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "i_fc_lblk_len", scope: !5476, file: !5443, line: 1052, baseType: !5487, size: 32, offset: 1440)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "i_fc_updates", scope: !5476, file: !5443, line: 1055, baseType: !80, size: 32, offset: 1472)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "i_fc_wait", scope: !5476, file: !5443, line: 1058, baseType: !192, size: 192, offset: 1536)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "i_fc_lock", scope: !5476, file: !5443, line: 1061, baseType: !116, size: 256, offset: 1728)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "i_disksize", scope: !5476, file: !5443, line: 1078, baseType: !134, size: 64, offset: 1984)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "i_data_sem", scope: !5476, file: !5443, line: 1090, baseType: !288, size: 320, offset: 2048)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "vfs_inode", scope: !5476, file: !5443, line: 1091, baseType: !514, size: 4800, offset: 2368)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "jinode", scope: !5476, file: !5443, line: 1092, baseType: !5245, size: 64, offset: 7168)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "i_raw_lock", scope: !5476, file: !5443, line: 1094, baseType: !60, size: 32, offset: 7232)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "i_crtime", scope: !5476, file: !5443, line: 1100, baseType: !624, size: 128, offset: 7296)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "i_prealloc_active", scope: !5476, file: !5443, line: 1103, baseType: !80, size: 32, offset: 7424)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "i_prealloc_node", scope: !5476, file: !5443, line: 1104, baseType: !915, size: 64, offset: 7488)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "i_prealloc_lock", scope: !5476, file: !5443, line: 1105, baseType: !142, size: 64, offset: 7552)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "i_es_tree", scope: !5476, file: !5443, line: 1108, baseType: !5512, size: 128, offset: 7616)
!5512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_es_tree", file: !5513, line: 66, size: 128, elements: !5514)
!5513 = !DIFile(filename: "fs/ext4/extents_status.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "648897cf7c169849fe8d39a5b97e872e")
!5514 = !{!5515, !5516}
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5512, file: !5513, line: 67, baseType: !915, size: 64)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "cache_es", scope: !5512, file: !5513, line: 68, baseType: !5517, size: 64, offset: 64)
!5517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5518, size: 64)
!5518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extent_status", file: !5513, line: 59, size: 320, elements: !5519)
!5519 = !{!5520, !5521, !5522, !5523}
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !5518, file: !5513, line: 60, baseType: !279, size: 192, align: 64)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "es_lblk", scope: !5518, file: !5513, line: 61, baseType: !5487, size: 32, offset: 192)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "es_len", scope: !5518, file: !5513, line: 62, baseType: !5487, size: 32, offset: 224)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "es_pblk", scope: !5518, file: !5513, line: 63, baseType: !5483, size: 64, offset: 256)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "i_es_lock", scope: !5476, file: !5443, line: 1109, baseType: !142, size: 64, offset: 7744)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "i_es_list", scope: !5476, file: !5443, line: 1110, baseType: !128, size: 128, offset: 7808)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "i_es_all_nr", scope: !5476, file: !5443, line: 1111, baseType: !58, size: 32, offset: 7936)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "i_es_shk_nr", scope: !5476, file: !5443, line: 1112, baseType: !58, size: 32, offset: 7968)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "i_es_shrink_lblk", scope: !5476, file: !5443, line: 1113, baseType: !5487, size: 32, offset: 8000)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_alloc_group", scope: !5476, file: !5443, line: 1118, baseType: !5485, size: 32, offset: 8032)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "i_reserved_data_blocks", scope: !5476, file: !5443, line: 1122, baseType: !58, size: 32, offset: 8064)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "i_pending_tree", scope: !5476, file: !5443, line: 1125, baseType: !5532, size: 64, offset: 8128)
!5532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_pending_tree", file: !5513, line: 122, size: 64, elements: !5533)
!5533 = !{!5534}
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5532, file: !5513, line: 123, baseType: !915, size: 64)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "i_extra_isize", scope: !5476, file: !5443, line: 1128, baseType: !100, size: 16, offset: 8192)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "i_inline_off", scope: !5476, file: !5443, line: 1131, baseType: !99, size: 16, offset: 8208)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "i_inline_size", scope: !5476, file: !5443, line: 1132, baseType: !99, size: 16, offset: 8224)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "i_reserved_quota", scope: !5476, file: !5443, line: 1136, baseType: !2376, size: 64, offset: 8256)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "i_completed_io_lock", scope: !5476, file: !5443, line: 1140, baseType: !60, size: 32, offset: 8320)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "i_rsv_conversion_list", scope: !5476, file: !5443, line: 1145, baseType: !128, size: 128, offset: 8384)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "i_rsv_conversion_work", scope: !5476, file: !5443, line: 1146, baseType: !1228, size: 256, offset: 8512)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "i_unwritten", scope: !5476, file: !5443, line: 1147, baseType: !80, size: 32, offset: 8768)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "i_block_reservation_lock", scope: !5476, file: !5443, line: 1149, baseType: !60, size: 32, offset: 8800)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_tid", scope: !5476, file: !5443, line: 1155, baseType: !5211, size: 32, offset: 8832)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "i_datasync_tid", scope: !5476, file: !5443, line: 1156, baseType: !5211, size: 32, offset: 8864)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "i_dquot", scope: !5476, file: !5443, line: 1159, baseType: !5547, size: 192, offset: 8896)
!5547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2337, size: 192, elements: !161)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "i_csum_seed", scope: !5476, file: !5443, line: 1163, baseType: !315, size: 32, offset: 9088)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "i_projid", scope: !5476, file: !5443, line: 1165, baseType: !2358, size: 32, offset: 9120)
!5550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!5551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5552, size: 64)
!5552 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!5553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5554, size: 64)
!5554 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !628)
!5555 = !{!0, !7, !13, !18, !23, !29, !5556, !5558, !5585}
!5556 = !DIGlobalVariableExpression(var: !5557, expr: !DIExpression())
!5557 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace627", scope: !31, file: !25, line: 934, type: !300, isLocal: true, isDefinition: true)
!5558 = !DIGlobalVariableExpression(var: !5559, expr: !DIExpression())
!5559 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_ext4_sync_file_exit634", scope: !5560, file: !25, line: 961, type: !300, isLocal: true, isDefinition: true)
!5560 = distinct !DISubprogram(name: "trace_ext4_sync_file_exit", scope: !25, file: !25, line: 961, type: !2276, scopeLine: 961, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !5561)
!5561 = !{!5562, !5563, !5564, !5567, !5570, !5572, !5574, !5577, !5580, !5582, !5583}
!5562 = !DILocalVariable(name: "inode", arg: 1, scope: !5560, file: !25, line: 961, type: !513)
!5563 = !DILocalVariable(name: "ret", arg: 2, scope: !5560, file: !25, line: 961, type: !84)
!5564 = !DILocalVariable(name: "__idx", scope: !5565, file: !25, line: 961, type: !84)
!5565 = distinct !DILexicalBlock(scope: !5566, file: !25, line: 961, column: 1)
!5566 = distinct !DILexicalBlock(scope: !5560, file: !25, line: 961, column: 1)
!5567 = !DILocalVariable(name: "pscr_ret__", scope: !5568, file: !25, line: 961, type: !84)
!5568 = distinct !DILexicalBlock(scope: !5569, file: !25, line: 961, column: 1)
!5569 = distinct !DILexicalBlock(scope: !5565, file: !25, line: 961, column: 1)
!5570 = !DILocalVariable(name: "__vpp_verify", scope: !5571, file: !25, line: 961, type: !1188)
!5571 = distinct !DILexicalBlock(scope: !5568, file: !25, line: 961, column: 1)
!5572 = !DILocalVariable(name: "pfo_val__", scope: !5573, file: !25, line: 961, type: !314)
!5573 = distinct !DILexicalBlock(scope: !5568, file: !25, line: 961, column: 1)
!5574 = !DILocalVariable(name: "__ret_warn_on", scope: !5575, file: !25, line: 961, type: !84)
!5575 = distinct !DILexicalBlock(scope: !5576, file: !25, line: 961, column: 1)
!5576 = distinct !DILexicalBlock(scope: !5565, file: !25, line: 961, column: 1)
!5577 = !DILocalVariable(name: "__flags", scope: !5578, file: !25, line: 961, type: !84)
!5578 = distinct !DILexicalBlock(scope: !5579, file: !25, line: 961, column: 1)
!5579 = distinct !DILexicalBlock(scope: !5575, file: !25, line: 961, column: 1)
!5580 = !DILocalVariable(name: "it_func_ptr", scope: !5581, file: !25, line: 961, type: !5466)
!5581 = distinct !DILexicalBlock(scope: !5565, file: !25, line: 961, column: 1)
!5582 = !DILocalVariable(name: "__data", scope: !5581, file: !25, line: 961, type: !300)
!5583 = !DILocalVariable(name: "__UNIQUE_ID_rcu632", scope: !5584, file: !25, line: 961, type: !5466)
!5584 = distinct !DILexicalBlock(scope: !5581, file: !25, line: 961, column: 1)
!5585 = !DIGlobalVariableExpression(var: !5586, expr: !DIExpression())
!5586 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace635", scope: !5560, file: !25, line: 961, type: !300, isLocal: true, isDefinition: true)
!5587 = !{!5588, !5589, !5590, !5593, !5596, !5598, !5600, !5603, !5606, !5608, !5609}
!5588 = !DILocalVariable(name: "file", arg: 1, scope: !31, file: !25, line: 934, type: !34)
!5589 = !DILocalVariable(name: "datasync", arg: 2, scope: !31, file: !25, line: 934, type: !84)
!5590 = !DILocalVariable(name: "__idx", scope: !5591, file: !25, line: 934, type: !84)
!5591 = distinct !DILexicalBlock(scope: !5592, file: !25, line: 934, column: 1)
!5592 = distinct !DILexicalBlock(scope: !31, file: !25, line: 934, column: 1)
!5593 = !DILocalVariable(name: "pscr_ret__", scope: !5594, file: !25, line: 934, type: !84)
!5594 = distinct !DILexicalBlock(scope: !5595, file: !25, line: 934, column: 1)
!5595 = distinct !DILexicalBlock(scope: !5591, file: !25, line: 934, column: 1)
!5596 = !DILocalVariable(name: "__vpp_verify", scope: !5597, file: !25, line: 934, type: !1188)
!5597 = distinct !DILexicalBlock(scope: !5594, file: !25, line: 934, column: 1)
!5598 = !DILocalVariable(name: "pfo_val__", scope: !5599, file: !25, line: 934, type: !314)
!5599 = distinct !DILexicalBlock(scope: !5594, file: !25, line: 934, column: 1)
!5600 = !DILocalVariable(name: "__ret_warn_on", scope: !5601, file: !25, line: 934, type: !84)
!5601 = distinct !DILexicalBlock(scope: !5602, file: !25, line: 934, column: 1)
!5602 = distinct !DILexicalBlock(scope: !5591, file: !25, line: 934, column: 1)
!5603 = !DILocalVariable(name: "__flags", scope: !5604, file: !25, line: 934, type: !84)
!5604 = distinct !DILexicalBlock(scope: !5605, file: !25, line: 934, column: 1)
!5605 = distinct !DILexicalBlock(scope: !5601, file: !25, line: 934, column: 1)
!5606 = !DILocalVariable(name: "it_func_ptr", scope: !5607, file: !25, line: 934, type: !5466)
!5607 = distinct !DILexicalBlock(scope: !5591, file: !25, line: 934, column: 1)
!5608 = !DILocalVariable(name: "__data", scope: !5607, file: !25, line: 934, type: !300)
!5609 = !DILocalVariable(name: "__UNIQUE_ID_rcu624", scope: !5610, file: !25, line: 934, type: !5466)
!5610 = distinct !DILexicalBlock(scope: !5607, file: !25, line: 934, column: 1)
!5611 = !{!"rsp"}
!5612 = !{i32 7, !"Dwarf Version", i32 5}
!5613 = !{i32 2, !"Debug Info Version", i32 3}
!5614 = !{i32 1, !"wchar_size", i32 2}
!5615 = !{i32 8, !"cf-protection-branch", i32 1}
!5616 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5617 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5618 = !{i32 1, !"Code Model", i32 2}
!5619 = !{i32 1, !"override-stack-alignment", i32 8}
!5620 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5621 = distinct !DISubprogram(name: "ext4_sync_file", scope: !2, file: !2, line: 129, type: !4955, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !5622)
!5622 = !{!5623, !5624, !5625, !5626, !5627, !5628, !5629, !5630, !5631, !5632}
!5623 = !DILocalVariable(name: "file", arg: 1, scope: !5621, file: !2, line: 129, type: !34)
!5624 = !DILocalVariable(name: "start", arg: 2, scope: !5621, file: !2, line: 129, type: !134)
!5625 = !DILocalVariable(name: "end", arg: 3, scope: !5621, file: !2, line: 129, type: !134)
!5626 = !DILocalVariable(name: "datasync", arg: 4, scope: !5621, file: !2, line: 129, type: !84)
!5627 = !DILocalVariable(name: "ret", scope: !5621, file: !2, line: 131, type: !84)
!5628 = !DILocalVariable(name: "err", scope: !5621, file: !2, line: 131, type: !84)
!5629 = !DILocalVariable(name: "needs_barrier", scope: !5621, file: !2, line: 132, type: !350)
!5630 = !DILocalVariable(name: "inode", scope: !5621, file: !2, line: 133, type: !513)
!5631 = !DILabel(scope: !5621, name: "issue_flush", file: !2, line: 169)
!5632 = !DILabel(scope: !5621, name: "out", file: !2, line: 175)
!5633 = !DILocation(line: 129, column: 33, scope: !5621)
!5634 = !DILocation(line: 129, column: 46, scope: !5621)
!5635 = !DILocation(line: 129, column: 60, scope: !5621)
!5636 = !DILocation(line: 129, column: 69, scope: !5621)
!5637 = !DILocation(line: 131, column: 2, scope: !5621)
!5638 = !DILocation(line: 131, column: 6, scope: !5621)
!5639 = !DILocation(line: 131, column: 15, scope: !5621)
!5640 = !DILocation(line: 132, column: 2, scope: !5621)
!5641 = !DILocation(line: 132, column: 7, scope: !5621)
!5642 = !DILocation(line: 133, column: 2, scope: !5621)
!5643 = !DILocation(line: 133, column: 16, scope: !5621)
!5644 = !DILocation(line: 133, column: 24, scope: !5621)
!5645 = !DILocation(line: 133, column: 30, scope: !5621)
!5646 = !DILocation(line: 133, column: 41, scope: !5621)
!5647 = !DILocation(line: 135, column: 6, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5621, file: !2, line: 135, column: 6)
!5649 = !DILocation(line: 135, column: 6, scope: !5621)
!5650 = !DILocation(line: 136, column: 3, scope: !5648)
!5651 = !DILocation(line: 138, column: 2, scope: !5621)
!5652 = !DILocation(line: 138, column: 2, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5654, file: !2, line: 138, column: 2)
!5654 = distinct !DILexicalBlock(scope: !5621, file: !2, line: 138, column: 2)
!5655 = !DILocation(line: 138, column: 2, scope: !5654)
!5656 = !DILocation(line: 138, column: 2, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5658, file: !2, line: 138, column: 2)
!5658 = distinct !DILexicalBlock(scope: !5653, file: !2, line: 138, column: 2)
!5659 = !DILocation(line: 138, column: 2, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5657, file: !2, line: 138, column: 2)
!5661 = !DILocation(line: 138, column: 2, scope: !5658)
!5662 = !DILocation(line: 138, column: 2, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5658, file: !2, line: 138, column: 2)
!5664 = !DILocation(line: 138, column: 2, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5663, file: !2, line: 138, column: 2)
!5666 = !DILocation(line: 138, column: 2, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5663, file: !2, line: 138, column: 2)
!5668 = !{i64 2161927860, i64 2161927889, i64 2161927935, i64 2161927993, i64 2161928047, i64 2161928101, i64 2161928156, i64 2161928187}
!5669 = !DILocation(line: 140, column: 29, scope: !5621)
!5670 = !DILocation(line: 140, column: 35, scope: !5621)
!5671 = !DILocation(line: 140, column: 2, scope: !5621)
!5672 = !DILocation(line: 142, column: 16, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5621, file: !2, line: 142, column: 6)
!5674 = !DILocation(line: 142, column: 23, scope: !5673)
!5675 = !DILocation(line: 142, column: 6, scope: !5673)
!5676 = !DILocation(line: 142, column: 6, scope: !5621)
!5677 = !DILocation(line: 144, column: 3, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5673, file: !2, line: 142, column: 30)
!5679 = !DILocation(line: 144, column: 3, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5678, file: !2, line: 144, column: 3)
!5681 = !DILocation(line: 144, column: 3, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5680, file: !2, line: 144, column: 3)
!5683 = !DILocation(line: 144, column: 3, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5680, file: !2, line: 144, column: 3)
!5685 = !DILocation(line: 144, column: 3, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5684, file: !2, line: 144, column: 3)
!5687 = !{i64 2161928719}
!5688 = !DILocation(line: 145, column: 28, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5678, file: !2, line: 145, column: 7)
!5690 = !DILocation(line: 145, column: 35, scope: !5689)
!5691 = !DILocation(line: 145, column: 7, scope: !5689)
!5692 = !DILocation(line: 145, column: 7, scope: !5678)
!5693 = !DILocation(line: 146, column: 8, scope: !5689)
!5694 = !DILocation(line: 146, column: 4, scope: !5689)
!5695 = !DILocation(line: 147, column: 3, scope: !5678)
!5696 = !DILocation(line: 150, column: 15, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5621, file: !2, line: 150, column: 6)
!5698 = !DILocation(line: 150, column: 22, scope: !5697)
!5699 = !DILocation(line: 150, column: 7, scope: !5697)
!5700 = !DILocation(line: 150, column: 29, scope: !5697)
!5701 = !DILocation(line: 150, column: 6, scope: !5621)
!5702 = !DILocation(line: 151, column: 30, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5697, file: !2, line: 150, column: 40)
!5704 = !DILocation(line: 151, column: 36, scope: !5703)
!5705 = !DILocation(line: 151, column: 43, scope: !5703)
!5706 = !DILocation(line: 151, column: 48, scope: !5703)
!5707 = !DILocation(line: 151, column: 9, scope: !5703)
!5708 = !DILocation(line: 151, column: 7, scope: !5703)
!5709 = !DILocation(line: 153, column: 7, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5703, file: !2, line: 153, column: 7)
!5711 = !{i8 0, i8 2}
!5712 = !DILocation(line: 153, column: 7, scope: !5703)
!5713 = !DILocation(line: 154, column: 4, scope: !5710)
!5714 = !DILocation(line: 155, column: 3, scope: !5703)
!5715 = !DILocation(line: 158, column: 34, scope: !5621)
!5716 = !DILocation(line: 158, column: 40, scope: !5621)
!5717 = !DILocation(line: 158, column: 47, scope: !5621)
!5718 = !DILocation(line: 158, column: 8, scope: !5621)
!5719 = !DILocation(line: 158, column: 6, scope: !5621)
!5720 = !DILocation(line: 159, column: 6, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5621, file: !2, line: 159, column: 6)
!5722 = !DILocation(line: 159, column: 6, scope: !5621)
!5723 = !DILocation(line: 160, column: 3, scope: !5721)
!5724 = !DILocation(line: 167, column: 27, scope: !5621)
!5725 = !DILocation(line: 167, column: 34, scope: !5621)
!5726 = !DILocation(line: 167, column: 8, scope: !5621)
!5727 = !DILocation(line: 167, column: 6, scope: !5621)
!5728 = !DILocation(line: 167, column: 2, scope: !5621)
!5729 = !DILocation(line: 169, column: 1, scope: !5621)
!5730 = !DILocation(line: 170, column: 6, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5621, file: !2, line: 170, column: 6)
!5732 = !DILocation(line: 170, column: 6, scope: !5621)
!5733 = !DILocation(line: 171, column: 28, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5731, file: !2, line: 170, column: 21)
!5735 = !DILocation(line: 171, column: 35, scope: !5734)
!5736 = !DILocation(line: 171, column: 41, scope: !5734)
!5737 = !DILocation(line: 171, column: 9, scope: !5734)
!5738 = !DILocation(line: 171, column: 7, scope: !5734)
!5739 = !DILocation(line: 172, column: 8, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5734, file: !2, line: 172, column: 7)
!5741 = !DILocation(line: 172, column: 7, scope: !5734)
!5742 = !DILocation(line: 173, column: 10, scope: !5740)
!5743 = !DILocation(line: 173, column: 8, scope: !5740)
!5744 = !DILocation(line: 173, column: 4, scope: !5740)
!5745 = !DILocation(line: 174, column: 2, scope: !5734)
!5746 = !DILocation(line: 175, column: 1, scope: !5621)
!5747 = !DILocation(line: 176, column: 38, scope: !5621)
!5748 = !DILocation(line: 176, column: 8, scope: !5621)
!5749 = !DILocation(line: 176, column: 6, scope: !5621)
!5750 = !DILocation(line: 177, column: 6, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5621, file: !2, line: 177, column: 6)
!5752 = !DILocation(line: 177, column: 10, scope: !5751)
!5753 = !DILocation(line: 177, column: 6, scope: !5621)
!5754 = !DILocation(line: 178, column: 9, scope: !5751)
!5755 = !DILocation(line: 178, column: 7, scope: !5751)
!5756 = !DILocation(line: 178, column: 3, scope: !5751)
!5757 = !DILocation(line: 179, column: 28, scope: !5621)
!5758 = !DILocation(line: 179, column: 35, scope: !5621)
!5759 = !DILocation(line: 179, column: 2, scope: !5621)
!5760 = !DILocation(line: 180, column: 9, scope: !5621)
!5761 = !DILocation(line: 180, column: 2, scope: !5621)
!5762 = !DILocation(line: 181, column: 1, scope: !5621)
!5763 = distinct !DISubprogram(name: "ext4_forced_shutdown", scope: !5443, file: !5443, line: 2232, type: !2302, scopeLine: 2233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !5764)
!5764 = !{!5765}
!5765 = !DILocalVariable(name: "sb", arg: 1, scope: !5763, file: !5443, line: 2232, type: !746)
!5766 = !DILocation(line: 2232, column: 60, scope: !5763)
!5767 = !DILocation(line: 2234, column: 9, scope: !5763)
!5768 = !DILocation(line: 2234, column: 2, scope: !5763)
!5769 = distinct !DISubprogram(name: "ext4_journal_current_handle", scope: !5770, file: !5770, line: 339, type: !5771, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080)
!5770 = !DIFile(filename: "fs/ext4/ext4_jbd2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06664dac23645b85b5d9fb80da68cf79")
!5771 = !DISubroutineType(types: !5772)
!5772 = !{!5773}
!5773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5774, size: 64)
!5774 = !DIDerivedType(tag: DW_TAG_typedef, name: "handle_t", file: !5088, line: 91, baseType: !5775)
!5775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_journal_handle", file: !5088, line: 477, size: 448, elements: !5776)
!5776 = !{!5777, !5782, !5783, !5784, !5785, !5786, !5787, !5788, !5789, !5790, !5791, !5792, !5793, !5794, !5795, !5796}
!5777 = !DIDerivedType(tag: DW_TAG_member, scope: !5775, file: !5088, line: 479, baseType: !5778, size: 64)
!5778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5775, file: !5088, line: 479, size: 64, elements: !5779)
!5779 = !{!5780, !5781}
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "h_transaction", scope: !5778, file: !5088, line: 480, baseType: !5176, size: 64)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "h_journal", scope: !5778, file: !5088, line: 482, baseType: !5097, size: 64)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "h_rsv_handle", scope: !5775, file: !5088, line: 485, baseType: !5773, size: 64, offset: 64)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "h_total_credits", scope: !5775, file: !5088, line: 486, baseType: !84, size: 32, offset: 128)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "h_revoke_credits", scope: !5775, file: !5088, line: 487, baseType: !84, size: 32, offset: 160)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "h_revoke_credits_requested", scope: !5775, file: !5088, line: 488, baseType: !84, size: 32, offset: 192)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "h_ref", scope: !5775, file: !5088, line: 489, baseType: !84, size: 32, offset: 224)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "h_err", scope: !5775, file: !5088, line: 490, baseType: !84, size: 32, offset: 256)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "h_sync", scope: !5775, file: !5088, line: 493, baseType: !58, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "h_jdata", scope: !5775, file: !5088, line: 494, baseType: !58, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "h_reserved", scope: !5775, file: !5088, line: 495, baseType: !58, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "h_aborted", scope: !5775, file: !5088, line: 496, baseType: !58, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "h_type", scope: !5775, file: !5088, line: 497, baseType: !58, size: 8, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "h_line_no", scope: !5775, file: !5088, line: 498, baseType: !58, size: 16, offset: 300, flags: DIFlagBitField, extraData: i64 288)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "h_start_jiffies", scope: !5775, file: !5088, line: 500, baseType: !283, size: 64, offset: 320)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "h_requested_credits", scope: !5775, file: !5088, line: 501, baseType: !58, size: 32, offset: 384)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "saved_alloc_context", scope: !5775, file: !5088, line: 503, baseType: !58, size: 32, offset: 416)
!5797 = !DILocation(line: 341, column: 9, scope: !5769)
!5798 = !DILocation(line: 341, column: 2, scope: !5769)
!5799 = !DISubprogram(name: "_printk", scope: !5800, file: !5800, line: 153, type: !5801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5800 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5801 = !DISubroutineType(types: !5802)
!5802 = !{!84, !353, null}
!5803 = !DILocation(line: 934, column: 1, scope: !31)
!5804 = !DILocation(line: 934, column: 1, scope: !5592)
!5805 = !DILocation(line: 934, column: 1, scope: !5591)
!5806 = !DILocation(line: 934, column: 1, scope: !5594)
!5807 = !DILocation(line: 934, column: 1, scope: !5597)
!5808 = !DILocation(line: 934, column: 1, scope: !5599)
!5809 = !{i64 2157888444}
!5810 = !DILocation(line: 934, column: 1, scope: !5595)
!5811 = !DILocation(line: 934, column: 1, scope: !5601)
!5812 = !DILocation(line: 934, column: 1, scope: !5605)
!5813 = !DILocation(line: 934, column: 1, scope: !5604)
!5814 = !DILocation(line: 934, column: 1, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5604, file: !25, line: 934, column: 1)
!5816 = !DILocation(line: 934, column: 1, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5604, file: !25, line: 934, column: 1)
!5818 = !{i64 2157889656, i64 2157889685, i64 2157889731, i64 2157889789, i64 2157889843, i64 2157889897, i64 2157889952, i64 2157889983, i64 2157890291, i64 2157890297, i64 2157890344, i64 2157890367, i64 2157890393}
!5819 = !DILocation(line: 934, column: 1, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5604, file: !25, line: 934, column: 1)
!5821 = !DILocation(line: 934, column: 1, scope: !5602)
!5822 = !DILocation(line: 934, column: 1, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5591, file: !25, line: 934, column: 1)
!5824 = !{i64 2157890745}
!5825 = !DILocation(line: 934, column: 1, scope: !5607)
!5826 = !DILocation(line: 934, column: 1, scope: !5610)
!5827 = !DILocation(line: 934, column: 1, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5610, file: !25, line: 934, column: 1)
!5829 = !DILocation(line: 934, column: 1, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5828, file: !25, line: 934, column: 1)
!5831 = !DILocation(line: 934, column: 1, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5607, file: !25, line: 934, column: 1)
!5833 = !DILocation(line: 934, column: 1, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5832, file: !25, line: 934, column: 1)
!5835 = !DILocation(line: 934, column: 1, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5834, file: !25, line: 934, column: 1)
!5837 = !DILocation(line: 934, column: 1, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5591, file: !25, line: 934, column: 1)
!5839 = !{i64 2157897480}
!5840 = !DILocation(line: 934, column: 1, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5838, file: !25, line: 934, column: 1)
!5842 = !DILocation(line: 934, column: 1, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5841, file: !25, line: 934, column: 1)
!5844 = !{i64 2157897639}
!5845 = distinct !DISubprogram(name: "sb_rdonly", scope: !36, file: !36, line: 2133, type: !5846, scopeLine: 2133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !5850)
!5846 = !DISubroutineType(types: !5847)
!5847 = !{!350, !5848}
!5848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5849, size: 64)
!5849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !747)
!5850 = !{!5851}
!5851 = !DILocalVariable(name: "sb", arg: 1, scope: !5845, file: !36, line: 2133, type: !5848)
!5852 = !DILocation(line: 2133, column: 56, scope: !5845)
!5853 = !DILocation(line: 2133, column: 69, scope: !5845)
!5854 = !DILocation(line: 2133, column: 73, scope: !5845)
!5855 = !DILocation(line: 2133, column: 81, scope: !5845)
!5856 = !DILocation(line: 2133, column: 62, scope: !5845)
!5857 = distinct !DISubprogram(name: "EXT4_SB", scope: !5443, file: !5443, line: 1755, type: !5858, scopeLine: 1756, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6276)
!5858 = !DISubroutineType(types: !5859)
!5859 = !{!5860, !746}
!5860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5861, size: 64)
!5861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_sb_info", file: !5443, line: 1490, size: 18432, elements: !5862)
!5862 = !{!5863, !5864, !5865, !5866, !5867, !5868, !5869, !5870, !5871, !5872, !5873, !5874, !5875, !5876, !5877, !5878, !5997, !5998, !5999, !6000, !6001, !6002, !6003, !6004, !6005, !6006, !6007, !6008, !6009, !6010, !6011, !6012, !6013, !6014, !6015, !6017, !6018, !6019, !6020, !6021, !6022, !6023, !6024, !6034, !6035, !6036, !6037, !6038, !6039, !6040, !6041, !6042, !6043, !6054, !6055, !6056, !6057, !6058, !6059, !6060, !6061, !6067, !6088, !6089, !6090, !6092, !6093, !6094, !6095, !6096, !6097, !6098, !6099, !6100, !6102, !6103, !6104, !6105, !6106, !6107, !6108, !6109, !6110, !6111, !6112, !6113, !6114, !6115, !6116, !6117, !6118, !6119, !6120, !6121, !6122, !6126, !6127, !6128, !6129, !6130, !6131, !6132, !6133, !6134, !6136, !6137, !6138, !6139, !6140, !6141, !6142, !6143, !6144, !6147, !6148, !6149, !6150, !6151, !6159, !6160, !6161, !6162, !6173, !6174, !6175, !6176, !6177, !6178, !6179, !6180, !6181, !6191, !6194, !6195, !6196, !6202, !6203, !6204, !6205, !6206, !6207, !6210, !6211, !6214, !6215, !6216, !6217, !6218, !6219, !6220, !6221, !6222, !6223, !6224, !6225, !6226, !6227, !6228, !6229, !6230, !6231, !6232, !6233, !6235, !6236, !6237, !6238, !6239, !6253, !6254}
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "s_desc_size", scope: !5861, file: !5443, line: 1491, baseType: !283, size: 64)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_per_block", scope: !5861, file: !5443, line: 1492, baseType: !283, size: 64, offset: 64)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocks_per_group", scope: !5861, file: !5443, line: 1493, baseType: !283, size: 64, offset: 128)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "s_clusters_per_group", scope: !5861, file: !5443, line: 1494, baseType: !283, size: 64, offset: 192)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_per_group", scope: !5861, file: !5443, line: 1495, baseType: !283, size: 64, offset: 256)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "s_itb_per_group", scope: !5861, file: !5443, line: 1496, baseType: !283, size: 64, offset: 320)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "s_gdb_count", scope: !5861, file: !5443, line: 1497, baseType: !283, size: 64, offset: 384)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "s_desc_per_block", scope: !5861, file: !5443, line: 1498, baseType: !283, size: 64, offset: 448)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "s_groups_count", scope: !5861, file: !5443, line: 1499, baseType: !5485, size: 32, offset: 512)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "s_blockfile_groups", scope: !5861, file: !5443, line: 1500, baseType: !5485, size: 32, offset: 544)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "s_overhead", scope: !5861, file: !5443, line: 1501, baseType: !283, size: 64, offset: 576)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "s_cluster_ratio", scope: !5861, file: !5443, line: 1502, baseType: !58, size: 32, offset: 640)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "s_cluster_bits", scope: !5861, file: !5443, line: 1503, baseType: !58, size: 32, offset: 672)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "s_bitmap_maxbytes", scope: !5861, file: !5443, line: 1504, baseType: !134, size: 64, offset: 704)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "s_sbh", scope: !5861, file: !5443, line: 1505, baseType: !5106, size: 64, offset: 768)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "s_es", scope: !5861, file: !5443, line: 1506, baseType: !5879, size: 64, offset: 832)
!5879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5880, size: 64)
!5880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_super_block", file: !5443, line: 1299, size: 8192, elements: !5881)
!5881 = !{!5882, !5883, !5884, !5885, !5886, !5887, !5888, !5889, !5890, !5891, !5892, !5893, !5894, !5895, !5897, !5898, !5899, !5900, !5901, !5902, !5903, !5904, !5905, !5906, !5907, !5908, !5909, !5910, !5911, !5912, !5913, !5914, !5915, !5916, !5917, !5918, !5919, !5920, !5921, !5922, !5923, !5924, !5925, !5927, !5928, !5929, !5930, !5931, !5932, !5933, !5937, !5938, !5939, !5940, !5941, !5942, !5943, !5944, !5945, !5947, !5948, !5949, !5950, !5951, !5952, !5953, !5954, !5955, !5956, !5957, !5958, !5959, !5960, !5961, !5963, !5964, !5965, !5966, !5967, !5968, !5969, !5971, !5972, !5973, !5974, !5976, !5977, !5978, !5979, !5980, !5981, !5982, !5983, !5984, !5985, !5986, !5987, !5988, !5989, !5990, !5991, !5992, !5996}
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_count", scope: !5880, file: !5443, line: 1300, baseType: !5480, size: 32)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocks_count_lo", scope: !5880, file: !5443, line: 1301, baseType: !5480, size: 32, offset: 32)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "s_r_blocks_count_lo", scope: !5880, file: !5443, line: 1302, baseType: !5480, size: 32, offset: 64)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "s_free_blocks_count_lo", scope: !5880, file: !5443, line: 1303, baseType: !5480, size: 32, offset: 96)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "s_free_inodes_count", scope: !5880, file: !5443, line: 1304, baseType: !5480, size: 32, offset: 128)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_data_block", scope: !5880, file: !5443, line: 1305, baseType: !5480, size: 32, offset: 160)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "s_log_block_size", scope: !5880, file: !5443, line: 1306, baseType: !5480, size: 32, offset: 192)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "s_log_cluster_size", scope: !5880, file: !5443, line: 1307, baseType: !5480, size: 32, offset: 224)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocks_per_group", scope: !5880, file: !5443, line: 1308, baseType: !5480, size: 32, offset: 256)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "s_clusters_per_group", scope: !5880, file: !5443, line: 1309, baseType: !5480, size: 32, offset: 288)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_per_group", scope: !5880, file: !5443, line: 1310, baseType: !5480, size: 32, offset: 320)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtime", scope: !5880, file: !5443, line: 1311, baseType: !5480, size: 32, offset: 352)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "s_wtime", scope: !5880, file: !5443, line: 1312, baseType: !5480, size: 32, offset: 384)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "s_mnt_count", scope: !5880, file: !5443, line: 1313, baseType: !5896, size: 16, offset: 416)
!5896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1864, line: 36, baseType: !100)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_mnt_count", scope: !5880, file: !5443, line: 1314, baseType: !5896, size: 16, offset: 432)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !5880, file: !5443, line: 1315, baseType: !5896, size: 16, offset: 448)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !5880, file: !5443, line: 1316, baseType: !5896, size: 16, offset: 464)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "s_errors", scope: !5880, file: !5443, line: 1317, baseType: !5896, size: 16, offset: 480)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "s_minor_rev_level", scope: !5880, file: !5443, line: 1318, baseType: !5896, size: 16, offset: 496)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "s_lastcheck", scope: !5880, file: !5443, line: 1319, baseType: !5480, size: 32, offset: 512)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "s_checkinterval", scope: !5880, file: !5443, line: 1320, baseType: !5480, size: 32, offset: 544)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "s_creator_os", scope: !5880, file: !5443, line: 1321, baseType: !5480, size: 32, offset: 576)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "s_rev_level", scope: !5880, file: !5443, line: 1322, baseType: !5480, size: 32, offset: 608)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_resuid", scope: !5880, file: !5443, line: 1323, baseType: !5896, size: 16, offset: 640)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_resgid", scope: !5880, file: !5443, line: 1324, baseType: !5896, size: 16, offset: 656)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_ino", scope: !5880, file: !5443, line: 1338, baseType: !5480, size: 32, offset: 672)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_size", scope: !5880, file: !5443, line: 1339, baseType: !5896, size: 16, offset: 704)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "s_block_group_nr", scope: !5880, file: !5443, line: 1340, baseType: !5896, size: 16, offset: 720)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_compat", scope: !5880, file: !5443, line: 1341, baseType: !5480, size: 32, offset: 736)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_incompat", scope: !5880, file: !5443, line: 1342, baseType: !5480, size: 32, offset: 768)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_ro_compat", scope: !5880, file: !5443, line: 1343, baseType: !5480, size: 32, offset: 800)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !5880, file: !5443, line: 1344, baseType: !4742, size: 128, offset: 832)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "s_volume_name", scope: !5880, file: !5443, line: 1345, baseType: !15, size: 128, offset: 960)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_mounted", scope: !5880, file: !5443, line: 1346, baseType: !3436, size: 512, offset: 1088)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "s_algorithm_usage_bitmap", scope: !5880, file: !5443, line: 1347, baseType: !5480, size: 32, offset: 1600)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "s_prealloc_blocks", scope: !5880, file: !5443, line: 1352, baseType: !91, size: 8, offset: 1632)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "s_prealloc_dir_blocks", scope: !5880, file: !5443, line: 1353, baseType: !91, size: 8, offset: 1640)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "s_reserved_gdt_blocks", scope: !5880, file: !5443, line: 1354, baseType: !5896, size: 16, offset: 1648)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal_uuid", scope: !5880, file: !5443, line: 1358, baseType: !4742, size: 128, offset: 1664)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal_inum", scope: !5880, file: !5443, line: 1359, baseType: !5480, size: 32, offset: 1792)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal_dev", scope: !5880, file: !5443, line: 1360, baseType: !5480, size: 32, offset: 1824)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_orphan", scope: !5880, file: !5443, line: 1361, baseType: !5480, size: 32, offset: 1856)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "s_hash_seed", scope: !5880, file: !5443, line: 1362, baseType: !5926, size: 128, offset: 1888)
!5926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5480, size: 128, elements: !188)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_hash_version", scope: !5880, file: !5443, line: 1363, baseType: !91, size: 8, offset: 2016)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "s_jnl_backup_type", scope: !5880, file: !5443, line: 1364, baseType: !91, size: 8, offset: 2024)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "s_desc_size", scope: !5880, file: !5443, line: 1365, baseType: !5896, size: 16, offset: 2032)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "s_default_mount_opts", scope: !5880, file: !5443, line: 1366, baseType: !5480, size: 32, offset: 2048)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_meta_bg", scope: !5880, file: !5443, line: 1367, baseType: !5480, size: 32, offset: 2080)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "s_mkfs_time", scope: !5880, file: !5443, line: 1368, baseType: !5480, size: 32, offset: 2112)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "s_jnl_blocks", scope: !5880, file: !5443, line: 1369, baseType: !5934, size: 544, offset: 2144)
!5934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5480, size: 544, elements: !5935)
!5935 = !{!5936}
!5936 = !DISubrange(count: 17)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocks_count_hi", scope: !5880, file: !5443, line: 1371, baseType: !5480, size: 32, offset: 2688)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "s_r_blocks_count_hi", scope: !5880, file: !5443, line: 1372, baseType: !5480, size: 32, offset: 2720)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "s_free_blocks_count_hi", scope: !5880, file: !5443, line: 1373, baseType: !5480, size: 32, offset: 2752)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "s_min_extra_isize", scope: !5880, file: !5443, line: 1374, baseType: !5896, size: 16, offset: 2784)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "s_want_extra_isize", scope: !5880, file: !5443, line: 1375, baseType: !5896, size: 16, offset: 2800)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !5880, file: !5443, line: 1376, baseType: !5480, size: 32, offset: 2816)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "s_raid_stride", scope: !5880, file: !5443, line: 1377, baseType: !5896, size: 16, offset: 2848)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "s_mmp_update_interval", scope: !5880, file: !5443, line: 1378, baseType: !5896, size: 16, offset: 2864)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "s_mmp_block", scope: !5880, file: !5443, line: 1379, baseType: !5946, size: 64, offset: 2880)
!5946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !1864, line: 40, baseType: !256)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "s_raid_stripe_width", scope: !5880, file: !5443, line: 1380, baseType: !5480, size: 32, offset: 2944)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "s_log_groups_per_flex", scope: !5880, file: !5443, line: 1381, baseType: !91, size: 8, offset: 2976)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum_type", scope: !5880, file: !5443, line: 1382, baseType: !91, size: 8, offset: 2984)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "s_encryption_level", scope: !5880, file: !5443, line: 1383, baseType: !91, size: 8, offset: 2992)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "s_reserved_pad", scope: !5880, file: !5443, line: 1384, baseType: !91, size: 8, offset: 3000)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "s_kbytes_written", scope: !5880, file: !5443, line: 1385, baseType: !5946, size: 64, offset: 3008)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "s_snapshot_inum", scope: !5880, file: !5443, line: 1386, baseType: !5480, size: 32, offset: 3072)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "s_snapshot_id", scope: !5880, file: !5443, line: 1387, baseType: !5480, size: 32, offset: 3104)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "s_snapshot_r_blocks_count", scope: !5880, file: !5443, line: 1388, baseType: !5946, size: 64, offset: 3136)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "s_snapshot_list", scope: !5880, file: !5443, line: 1390, baseType: !5480, size: 32, offset: 3200)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "s_error_count", scope: !5880, file: !5443, line: 1393, baseType: !5480, size: 32, offset: 3232)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_time", scope: !5880, file: !5443, line: 1394, baseType: !5480, size: 32, offset: 3264)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_ino", scope: !5880, file: !5443, line: 1395, baseType: !5480, size: 32, offset: 3296)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_block", scope: !5880, file: !5443, line: 1396, baseType: !5946, size: 64, offset: 3328)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_func", scope: !5880, file: !5443, line: 1397, baseType: !5962, size: 256, offset: 3392)
!5962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 256, elements: !2564)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_line", scope: !5880, file: !5443, line: 1398, baseType: !5480, size: 32, offset: 3648)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_time", scope: !5880, file: !5443, line: 1399, baseType: !5480, size: 32, offset: 3680)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_ino", scope: !5880, file: !5443, line: 1400, baseType: !5480, size: 32, offset: 3712)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_line", scope: !5880, file: !5443, line: 1401, baseType: !5480, size: 32, offset: 3744)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_block", scope: !5880, file: !5443, line: 1402, baseType: !5946, size: 64, offset: 3776)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_func", scope: !5880, file: !5443, line: 1403, baseType: !5962, size: 256, offset: 3840)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "s_mount_opts", scope: !5880, file: !5443, line: 1405, baseType: !5970, size: 512, offset: 4096)
!5970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 512, elements: !842)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "s_usr_quota_inum", scope: !5880, file: !5443, line: 1406, baseType: !5480, size: 32, offset: 4608)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "s_grp_quota_inum", scope: !5880, file: !5443, line: 1407, baseType: !5480, size: 32, offset: 4640)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "s_overhead_clusters", scope: !5880, file: !5443, line: 1408, baseType: !5480, size: 32, offset: 4672)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "s_backup_bgs", scope: !5880, file: !5443, line: 1409, baseType: !5975, size: 64, offset: 4704)
!5975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5480, size: 64, elements: !694)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "s_encrypt_algos", scope: !5880, file: !5443, line: 1410, baseType: !2735, size: 32, offset: 4768)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "s_encrypt_pw_salt", scope: !5880, file: !5443, line: 1411, baseType: !4742, size: 128, offset: 4800)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "s_lpf_ino", scope: !5880, file: !5443, line: 1412, baseType: !5480, size: 32, offset: 4928)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "s_prj_quota_inum", scope: !5880, file: !5443, line: 1413, baseType: !5480, size: 32, offset: 4960)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum_seed", scope: !5880, file: !5443, line: 1414, baseType: !5480, size: 32, offset: 4992)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "s_wtime_hi", scope: !5880, file: !5443, line: 1415, baseType: !91, size: 8, offset: 5024)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtime_hi", scope: !5880, file: !5443, line: 1416, baseType: !91, size: 8, offset: 5032)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "s_mkfs_time_hi", scope: !5880, file: !5443, line: 1417, baseType: !91, size: 8, offset: 5040)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "s_lastcheck_hi", scope: !5880, file: !5443, line: 1418, baseType: !91, size: 8, offset: 5048)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_time_hi", scope: !5880, file: !5443, line: 1419, baseType: !91, size: 8, offset: 5056)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_time_hi", scope: !5880, file: !5443, line: 1420, baseType: !91, size: 8, offset: 5064)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_errcode", scope: !5880, file: !5443, line: 1421, baseType: !91, size: 8, offset: 5072)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_errcode", scope: !5880, file: !5443, line: 1422, baseType: !91, size: 8, offset: 5080)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "s_encoding", scope: !5880, file: !5443, line: 1423, baseType: !5896, size: 16, offset: 5088)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "s_encoding_flags", scope: !5880, file: !5443, line: 1424, baseType: !5896, size: 16, offset: 5104)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "s_orphan_file_inum", scope: !5880, file: !5443, line: 1425, baseType: !5480, size: 32, offset: 5120)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "s_reserved", scope: !5880, file: !5443, line: 1426, baseType: !5993, size: 3008, offset: 5152)
!5993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5480, size: 3008, elements: !5994)
!5994 = !{!5995}
!5995 = !DISubrange(count: 94)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum", scope: !5880, file: !5443, line: 1427, baseType: !5480, size: 32, offset: 8160)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "s_group_desc", scope: !5861, file: !5443, line: 1507, baseType: !5229, size: 64, offset: 896)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "s_mount_opt", scope: !5861, file: !5443, line: 1508, baseType: !58, size: 32, offset: 960)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "s_mount_opt2", scope: !5861, file: !5443, line: 1509, baseType: !58, size: 32, offset: 992)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "s_mount_flags", scope: !5861, file: !5443, line: 1510, baseType: !283, size: 64, offset: 1024)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_mount_opt", scope: !5861, file: !5443, line: 1511, baseType: !58, size: 32, offset: 1088)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_mount_opt2", scope: !5861, file: !5443, line: 1512, baseType: !58, size: 32, offset: 1120)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "s_sb_block", scope: !5861, file: !5443, line: 1513, baseType: !5483, size: 64, offset: 1152)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "s_resv_clusters", scope: !5861, file: !5443, line: 1514, baseType: !108, size: 64, offset: 1216)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "s_resuid", scope: !5861, file: !5443, line: 1515, baseType: !218, size: 32, offset: 1280)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "s_resgid", scope: !5861, file: !5443, line: 1516, baseType: !236, size: 32, offset: 1312)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "s_mount_state", scope: !5861, file: !5443, line: 1517, baseType: !101, size: 16, offset: 1344)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "s_pad", scope: !5861, file: !5443, line: 1518, baseType: !101, size: 16, offset: 1360)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr_per_block_bits", scope: !5861, file: !5443, line: 1519, baseType: !84, size: 32, offset: 1376)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "s_desc_per_block_bits", scope: !5861, file: !5443, line: 1520, baseType: !84, size: 32, offset: 1408)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_size", scope: !5861, file: !5443, line: 1521, baseType: !84, size: 32, offset: 1440)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_ino", scope: !5861, file: !5443, line: 1522, baseType: !84, size: 32, offset: 1472)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_readahead_blks", scope: !5861, file: !5443, line: 1523, baseType: !58, size: 32, offset: 1504)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_goal", scope: !5861, file: !5443, line: 1524, baseType: !58, size: 32, offset: 1536)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "s_hash_seed", scope: !5861, file: !5443, line: 1525, baseType: !6016, size: 128, offset: 1568)
!6016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 128, elements: !188)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "s_def_hash_version", scope: !5861, file: !5443, line: 1526, baseType: !84, size: 32, offset: 1696)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "s_hash_unsigned", scope: !5861, file: !5443, line: 1527, baseType: !84, size: 32, offset: 1728)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "s_freeclusters_counter", scope: !5861, file: !5443, line: 1528, baseType: !410, size: 320, offset: 1792)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "s_freeinodes_counter", scope: !5861, file: !5443, line: 1529, baseType: !410, size: 320, offset: 2112)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "s_dirs_counter", scope: !5861, file: !5443, line: 1530, baseType: !410, size: 320, offset: 2432)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "s_dirtyclusters_counter", scope: !5861, file: !5443, line: 1531, baseType: !410, size: 320, offset: 2752)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "s_sra_exceeded_retry_limit", scope: !5861, file: !5443, line: 1532, baseType: !410, size: 320, offset: 3072)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "s_blockgroup_lock", scope: !5861, file: !5443, line: 1533, baseType: !6025, size: 64, offset: 3392)
!6025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6026, size: 64)
!6026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockgroup_lock", file: !6027, line: 23, size: 65536, elements: !6028)
!6027 = !DIFile(filename: "./include/linux/blockgroup_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff9f5c31f6330308389fc4f693a8520f")
!6028 = !{!6029}
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "locks", scope: !6026, file: !6027, line: 24, baseType: !6030, size: 65536, align: 512)
!6030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6031, size: 65536, align: 512, elements: !5311)
!6031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bgl_lock", file: !6027, line: 19, size: 512, align: 512, elements: !6032)
!6032 = !{!6033}
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6031, file: !6027, line: 20, baseType: !60, size: 32)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "s_proc", scope: !5861, file: !5443, line: 1534, baseType: !5258, size: 64, offset: 3456)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "s_kobj", scope: !5861, file: !5443, line: 1535, baseType: !799, size: 512, offset: 3520)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "s_kobj_unregister", scope: !5861, file: !5443, line: 1536, baseType: !1017, size: 256, offset: 4032)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "s_sb", scope: !5861, file: !5443, line: 1537, baseType: !746, size: 64, offset: 4288)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "s_mmp_bh", scope: !5861, file: !5443, line: 1538, baseType: !5106, size: 64, offset: 4352)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal", scope: !5861, file: !5443, line: 1541, baseType: !5362, size: 64, offset: 4416)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "s_ext4_flags", scope: !5861, file: !5443, line: 1542, baseType: !283, size: 64, offset: 4480)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "s_orphan_lock", scope: !5861, file: !5443, line: 1543, baseType: !116, size: 256, offset: 4544)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "s_orphan", scope: !5861, file: !5443, line: 1544, baseType: !128, size: 128, offset: 4800)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "s_orphan_info", scope: !5861, file: !5443, line: 1546, baseType: !6044, size: 128, offset: 4928)
!6044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_orphan_info", file: !5443, line: 1480, size: 128, elements: !6045)
!6045 = !{!6046, !6047, !6048}
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "of_blocks", scope: !6044, file: !5443, line: 1481, baseType: !84, size: 32)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "of_csum_seed", scope: !6044, file: !5443, line: 1482, baseType: !315, size: 32, offset: 32)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "of_binfo", scope: !6044, file: !5443, line: 1483, baseType: !6049, size: 64, offset: 64)
!6049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6050, size: 64)
!6050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_orphan_block", file: !5443, line: 1472, size: 128, elements: !6051)
!6051 = !{!6052, !6053}
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "ob_free_entries", scope: !6050, file: !5443, line: 1473, baseType: !80, size: 32)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "ob_bh", scope: !6050, file: !5443, line: 1474, baseType: !5106, size: 64, offset: 64)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "s_commit_interval", scope: !5861, file: !5443, line: 1547, baseType: !283, size: 64, offset: 5056)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_batch_time", scope: !5861, file: !5443, line: 1548, baseType: !314, size: 32, offset: 5120)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "s_min_batch_time", scope: !5861, file: !5443, line: 1549, baseType: !314, size: 32, offset: 5152)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal_bdev", scope: !5861, file: !5443, line: 1550, baseType: !2548, size: 64, offset: 5184)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "s_qf_names", scope: !5861, file: !5443, line: 1553, baseType: !839, size: 192, offset: 5248)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "s_jquota_fmt", scope: !5861, file: !5443, line: 1554, baseType: !84, size: 32, offset: 5440)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "s_want_extra_isize", scope: !5861, file: !5443, line: 1556, baseType: !58, size: 32, offset: 5472)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "s_system_blks", scope: !5861, file: !5443, line: 1557, baseType: !6062, size: 64, offset: 5504)
!6062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6063, size: 64)
!6063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_system_blocks", file: !5443, line: 268, size: 192, elements: !6064)
!6064 = !{!6065, !6066}
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !6063, file: !5443, line: 269, baseType: !915, size: 64)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !6063, file: !5443, line: 270, baseType: !48, size: 128, align: 64, offset: 64)
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "s_group_info", scope: !5861, file: !5443, line: 1570, baseType: !6068, size: 64, offset: 5568)
!6068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6069, size: 64)
!6069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6070, size: 64)
!6070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6071, size: 64)
!6071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_group_info", file: !5443, line: 3397, size: 1024, elements: !6072)
!6072 = !{!6073, !6074, !6075, !6077, !6078, !6079, !6080, !6081, !6082, !6083, !6084, !6085, !6086}
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "bb_state", scope: !6071, file: !5443, line: 3398, baseType: !283, size: 64)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "bb_free_root", scope: !6071, file: !5443, line: 3402, baseType: !915, size: 64, offset: 64)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "bb_first_free", scope: !6071, file: !5443, line: 3403, baseType: !6076, size: 32, offset: 128)
!6076 = !DIDerivedType(tag: DW_TAG_typedef, name: "ext4_grpblk_t", file: !5443, line: 114, baseType: !84)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "bb_free", scope: !6071, file: !5443, line: 3404, baseType: !6076, size: 32, offset: 160)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "bb_fragments", scope: !6071, file: !5443, line: 3405, baseType: !6076, size: 32, offset: 192)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "bb_avg_fragment_size_order", scope: !6071, file: !5443, line: 3406, baseType: !84, size: 32, offset: 224)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "bb_largest_free_order", scope: !6071, file: !5443, line: 3408, baseType: !6076, size: 32, offset: 256)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "bb_group", scope: !6071, file: !5443, line: 3409, baseType: !5485, size: 32, offset: 288)
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "bb_prealloc_list", scope: !6071, file: !5443, line: 3410, baseType: !128, size: 128, offset: 320)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sem", scope: !6071, file: !5443, line: 3414, baseType: !288, size: 320, offset: 448)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "bb_avg_fragment_size_node", scope: !6071, file: !5443, line: 3415, baseType: !128, size: 128, offset: 768)
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "bb_largest_free_order_node", scope: !6071, file: !5443, line: 3416, baseType: !128, size: 128, offset: 896)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "bb_counters", scope: !6071, file: !5443, line: 3417, baseType: !6087, offset: 1024)
!6087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6076, elements: !207)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "s_buddy_cache", scope: !5861, file: !5443, line: 1571, baseType: !513, size: 64, offset: 5632)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "s_md_lock", scope: !5861, file: !5443, line: 1572, baseType: !60, size: 32, offset: 5696)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_offsets", scope: !5861, file: !5443, line: 1573, baseType: !6091, size: 64, offset: 5760)
!6091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!6092 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_maxs", scope: !5861, file: !5443, line: 1574, baseType: !1989, size: 64, offset: 5824)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "s_group_info_size", scope: !5861, file: !5443, line: 1575, baseType: !58, size: 32, offset: 5888)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_free_pending", scope: !5861, file: !5443, line: 1576, baseType: !58, size: 32, offset: 5920)
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "s_freed_data_list", scope: !5861, file: !5443, line: 1577, baseType: !128, size: 128, offset: 5952)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "s_discard_list", scope: !5861, file: !5443, line: 1579, baseType: !128, size: 128, offset: 6080)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "s_discard_work", scope: !5861, file: !5443, line: 1580, baseType: !1228, size: 256, offset: 6208)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "s_retry_alloc_pending", scope: !5861, file: !5443, line: 1581, baseType: !80, size: 32, offset: 6464)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_avg_fragment_size", scope: !5861, file: !5443, line: 1582, baseType: !131, size: 64, offset: 6528)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_avg_fragment_size_locks", scope: !5861, file: !5443, line: 1583, baseType: !6101, size: 64, offset: 6592)
!6101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_largest_free_orders", scope: !5861, file: !5443, line: 1584, baseType: !131, size: 64, offset: 6656)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_largest_free_orders_locks", scope: !5861, file: !5443, line: 1585, baseType: !6101, size: 64, offset: 6720)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "s_stripe", scope: !5861, file: !5443, line: 1588, baseType: !283, size: 64, offset: 6784)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_max_linear_groups", scope: !5861, file: !5443, line: 1589, baseType: !58, size: 32, offset: 6848)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_stream_request", scope: !5861, file: !5443, line: 1590, baseType: !58, size: 32, offset: 6880)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_max_to_scan", scope: !5861, file: !5443, line: 1591, baseType: !58, size: 32, offset: 6912)
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_min_to_scan", scope: !5861, file: !5443, line: 1592, baseType: !58, size: 32, offset: 6944)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_stats", scope: !5861, file: !5443, line: 1593, baseType: !58, size: 32, offset: 6976)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_order2_reqs", scope: !5861, file: !5443, line: 1594, baseType: !58, size: 32, offset: 7008)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_group_prealloc", scope: !5861, file: !5443, line: 1595, baseType: !58, size: 32, offset: 7040)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_dir_size_kb", scope: !5861, file: !5443, line: 1596, baseType: !58, size: 32, offset: 7072)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_last_group", scope: !5861, file: !5443, line: 1598, baseType: !283, size: 64, offset: 7104)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_last_start", scope: !5861, file: !5443, line: 1599, baseType: !283, size: 64, offset: 7168)
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_prefetch", scope: !5861, file: !5443, line: 1600, baseType: !58, size: 32, offset: 7232)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_prefetch_limit", scope: !5861, file: !5443, line: 1601, baseType: !58, size: 32, offset: 7264)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_best_avail_max_trim_order", scope: !5861, file: !5443, line: 1602, baseType: !58, size: 32, offset: 7296)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_reqs", scope: !5861, file: !5443, line: 1605, baseType: !80, size: 32, offset: 7328)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_success", scope: !5861, file: !5443, line: 1606, baseType: !80, size: 32, offset: 7360)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_allocated", scope: !5861, file: !5443, line: 1607, baseType: !80, size: 32, offset: 7392)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_ex_scanned", scope: !5861, file: !5443, line: 1608, baseType: !80, size: 32, offset: 7424)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_cX_ex_scanned", scope: !5861, file: !5443, line: 1609, baseType: !6123, size: 160, offset: 7456)
!6123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 160, elements: !6124)
!6124 = !{!6125}
!6125 = !DISubrange(count: 5)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_groups_scanned", scope: !5861, file: !5443, line: 1610, baseType: !80, size: 32, offset: 7616)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_goals", scope: !5861, file: !5443, line: 1611, baseType: !80, size: 32, offset: 7648)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_len_goals", scope: !5861, file: !5443, line: 1612, baseType: !80, size: 32, offset: 7680)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_breaks", scope: !5861, file: !5443, line: 1613, baseType: !80, size: 32, offset: 7712)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_2orders", scope: !5861, file: !5443, line: 1614, baseType: !80, size: 32, offset: 7744)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_p2_aligned_bad_suggestions", scope: !5861, file: !5443, line: 1615, baseType: !80, size: 32, offset: 7776)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_goal_fast_bad_suggestions", scope: !5861, file: !5443, line: 1616, baseType: !80, size: 32, offset: 7808)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_best_avail_bad_suggestions", scope: !5861, file: !5443, line: 1617, baseType: !80, size: 32, offset: 7840)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_cX_groups_considered", scope: !5861, file: !5443, line: 1618, baseType: !6135, size: 320, offset: 7872)
!6135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 320, elements: !6124)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_cX_hits", scope: !5861, file: !5443, line: 1619, baseType: !6135, size: 320, offset: 8192)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "s_bal_cX_failed", scope: !5861, file: !5443, line: 1620, baseType: !6135, size: 320, offset: 8512)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_buddies_generated", scope: !5861, file: !5443, line: 1621, baseType: !80, size: 32, offset: 8832)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_generation_time", scope: !5861, file: !5443, line: 1622, baseType: !108, size: 64, offset: 8896)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_lost_chunks", scope: !5861, file: !5443, line: 1623, baseType: !80, size: 32, offset: 8960)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_preallocated", scope: !5861, file: !5443, line: 1624, baseType: !80, size: 32, offset: 8992)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "s_mb_discarded", scope: !5861, file: !5443, line: 1625, baseType: !80, size: 32, offset: 9024)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_busy", scope: !5861, file: !5443, line: 1626, baseType: !80, size: 32, offset: 9056)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "s_locality_groups", scope: !5861, file: !5443, line: 1629, baseType: !6145, size: 64, offset: 9088)
!6145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6146, size: 64)
!6146 = !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_locality_group", file: !5443, line: 1629, flags: DIFlagFwdDecl)
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "s_sectors_written_start", scope: !5861, file: !5443, line: 1632, baseType: !283, size: 64, offset: 9152)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "s_kbytes_written", scope: !5861, file: !5443, line: 1633, baseType: !255, size: 64, offset: 9216)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "s_extent_max_zeroout_kb", scope: !5861, file: !5443, line: 1636, baseType: !58, size: 32, offset: 9280)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "s_log_groups_per_flex", scope: !5861, file: !5443, line: 1638, baseType: !58, size: 32, offset: 9312)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "s_flex_groups", scope: !5861, file: !5443, line: 1639, baseType: !6152, size: 64, offset: 9344)
!6152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6153, size: 64)
!6153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6154, size: 64)
!6154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flex_groups", file: !5443, line: 428, size: 128, elements: !6155)
!6155 = !{!6156, !6157, !6158}
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !6154, file: !5443, line: 429, baseType: !108, size: 64)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "free_inodes", scope: !6154, file: !5443, line: 430, baseType: !80, size: 32, offset: 64)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "used_dirs", scope: !6154, file: !5443, line: 431, baseType: !80, size: 32, offset: 96)
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "s_flex_groups_allocated", scope: !5861, file: !5443, line: 1640, baseType: !5485, size: 32, offset: 9408)
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "rsv_conversion_wq", scope: !5861, file: !5443, line: 1643, baseType: !2197, size: 64, offset: 9472)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "s_err_report", scope: !5861, file: !5443, line: 1646, baseType: !2135, size: 320, offset: 9536)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "s_li_request", scope: !5861, file: !5443, line: 1649, baseType: !6163, size: 64, offset: 9856)
!6163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6164, size: 64)
!6164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_li_request", file: !5443, line: 2589, size: 448, elements: !6165)
!6165 = !{!6166, !6167, !6168, !6169, !6170, !6171, !6172}
!6166 = !DIDerivedType(tag: DW_TAG_member, name: "lr_super", scope: !6164, file: !5443, line: 2590, baseType: !746, size: 64)
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "lr_mode", scope: !6164, file: !5443, line: 2591, baseType: !5442, size: 32, offset: 64)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "lr_first_not_zeroed", scope: !6164, file: !5443, line: 2592, baseType: !5485, size: 32, offset: 96)
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "lr_next_group", scope: !6164, file: !5443, line: 2593, baseType: !5485, size: 32, offset: 128)
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "lr_request", scope: !6164, file: !5443, line: 2594, baseType: !128, size: 128, offset: 192)
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "lr_next_sched", scope: !6164, file: !5443, line: 2595, baseType: !283, size: 64, offset: 320)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "lr_timeout", scope: !6164, file: !5443, line: 2596, baseType: !283, size: 64, offset: 384)
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "s_li_wait_mult", scope: !5861, file: !5443, line: 1651, baseType: !58, size: 32, offset: 9920)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "s_mmp_tsk", scope: !5861, file: !5443, line: 1654, baseType: !3597, size: 64, offset: 9984)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_trim_minblks", scope: !5861, file: !5443, line: 1657, baseType: !283, size: 64, offset: 10048)
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "s_chksum_driver", scope: !5861, file: !5443, line: 1660, baseType: !5280, size: 64, offset: 10112)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "s_csum_seed", scope: !5861, file: !5443, line: 1663, baseType: !315, size: 32, offset: 10176)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "s_es_shrinker", scope: !5861, file: !5443, line: 1666, baseType: !4806, size: 448, offset: 10240)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "s_es_list", scope: !5861, file: !5443, line: 1667, baseType: !128, size: 128, offset: 10688)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "s_es_nr_inode", scope: !5861, file: !5443, line: 1668, baseType: !628, size: 64, offset: 10816)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "s_es_stats", scope: !5861, file: !5443, line: 1669, baseType: !6182, size: 1472, offset: 10880)
!6182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_es_stats", file: !5513, line: 71, size: 1472, elements: !6183)
!6183 = !{!6184, !6185, !6186, !6187, !6188, !6189, !6190}
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_shrunk", scope: !6182, file: !5513, line: 72, baseType: !283, size: 64)
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_cache_hits", scope: !6182, file: !5513, line: 73, baseType: !410, size: 320, offset: 64)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_cache_misses", scope: !6182, file: !5513, line: 74, baseType: !410, size: 320, offset: 384)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_scan_time", scope: !6182, file: !5513, line: 75, baseType: !255, size: 64, offset: 704)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_max_scan_time", scope: !6182, file: !5513, line: 76, baseType: !255, size: 64, offset: 768)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_all_cnt", scope: !6182, file: !5513, line: 77, baseType: !410, size: 320, offset: 832)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "es_stats_shk_cnt", scope: !6182, file: !5513, line: 78, baseType: !410, size: 320, offset: 1152)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "s_ea_block_cache", scope: !5861, file: !5443, line: 1670, baseType: !6192, size: 64, offset: 12352)
!6192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6193, size: 64)
!6193 = !DICompositeType(tag: DW_TAG_structure_type, name: "mb_cache", file: !5443, line: 1670, flags: DIFlagFwdDecl)
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "s_ea_inode_cache", scope: !5861, file: !5443, line: 1671, baseType: !6192, size: 64, offset: 12416)
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "s_es_lock", scope: !5861, file: !5443, line: 1672, baseType: !60, size: 32, align: 512, offset: 12800)
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "s_journal_triggers", scope: !5861, file: !5443, line: 1675, baseType: !6197, size: 192, offset: 12864)
!6197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6198, size: 192, elements: !3287)
!6198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_journal_trigger", file: !5443, line: 1447, size: 192, elements: !6199)
!6199 = !{!6200, !6201}
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "tr_triggers", scope: !6198, file: !5443, line: 1448, baseType: !5395, size: 128)
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !6198, file: !5443, line: 1449, baseType: !746, size: 64, offset: 128)
!6202 = !DIDerivedType(tag: DW_TAG_member, name: "s_err_ratelimit_state", scope: !5861, file: !5443, line: 1678, baseType: !424, size: 320, offset: 13056)
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "s_warning_ratelimit_state", scope: !5861, file: !5443, line: 1679, baseType: !424, size: 320, offset: 13376)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "s_msg_ratelimit_state", scope: !5861, file: !5443, line: 1680, baseType: !424, size: 320, offset: 13696)
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "s_warning_count", scope: !5861, file: !5443, line: 1681, baseType: !80, size: 32, offset: 14016)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "s_msg_count", scope: !5861, file: !5443, line: 1682, baseType: !80, size: 32, offset: 14048)
!6207 = !DIDerivedType(tag: DW_TAG_member, name: "s_dummy_enc_policy", scope: !5861, file: !5443, line: 1685, baseType: !6208, offset: 14080)
!6208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fscrypt_dummy_policy", file: !6209, line: 508, elements: !1093)
!6209 = !DIFile(filename: "./include/linux/fscrypt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65ccc03ddf43dd4b78f86896df8d37b6")
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "s_writepages_rwsem", scope: !5861, file: !5443, line: 1692, baseType: !3580, size: 768, offset: 14080)
!6211 = !DIDerivedType(tag: DW_TAG_member, name: "s_daxdev", scope: !5861, file: !5443, line: 1693, baseType: !6212, size: 64, offset: 14848)
!6212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6213, size: 64)
!6213 = !DICompositeType(tag: DW_TAG_structure_type, name: "dax_device", file: !5443, line: 1693, flags: DIFlagFwdDecl)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "s_dax_part_off", scope: !5861, file: !5443, line: 1694, baseType: !255, size: 64, offset: 14912)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_wb_err", scope: !5861, file: !5443, line: 1699, baseType: !1710, size: 32, offset: 14976)
!6216 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_wb_lock", scope: !5861, file: !5443, line: 1700, baseType: !60, size: 32, offset: 15008)
!6217 = !DIDerivedType(tag: DW_TAG_member, name: "s_error_lock", scope: !5861, file: !5443, line: 1703, baseType: !60, size: 32, offset: 15040)
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "s_add_error_count", scope: !5861, file: !5443, line: 1704, baseType: !84, size: 32, offset: 15072)
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_code", scope: !5861, file: !5443, line: 1705, baseType: !84, size: 32, offset: 15104)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_line", scope: !5861, file: !5443, line: 1706, baseType: !315, size: 32, offset: 15136)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_ino", scope: !5861, file: !5443, line: 1707, baseType: !315, size: 32, offset: 15168)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_block", scope: !5861, file: !5443, line: 1708, baseType: !256, size: 64, offset: 15232)
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_func", scope: !5861, file: !5443, line: 1709, baseType: !353, size: 64, offset: 15296)
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "s_first_error_time", scope: !5861, file: !5443, line: 1710, baseType: !305, size: 64, offset: 15360)
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_code", scope: !5861, file: !5443, line: 1711, baseType: !84, size: 32, offset: 15424)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_line", scope: !5861, file: !5443, line: 1712, baseType: !315, size: 32, offset: 15456)
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_ino", scope: !5861, file: !5443, line: 1713, baseType: !315, size: 32, offset: 15488)
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_block", scope: !5861, file: !5443, line: 1714, baseType: !256, size: 64, offset: 15552)
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_func", scope: !5861, file: !5443, line: 1715, baseType: !353, size: 64, offset: 15616)
!6230 = !DIDerivedType(tag: DW_TAG_member, name: "s_last_error_time", scope: !5861, file: !5443, line: 1716, baseType: !305, size: 64, offset: 15680)
!6231 = !DIDerivedType(tag: DW_TAG_member, name: "s_sb_upd_work", scope: !5861, file: !5443, line: 1724, baseType: !1228, size: 256, offset: 15744)
!6232 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_subtid", scope: !5861, file: !5443, line: 1727, baseType: !80, size: 32, offset: 16000)
!6233 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_q", scope: !5861, file: !5443, line: 1735, baseType: !6234, size: 256, offset: 16064)
!6234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 256, elements: !694)
!6235 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_dentry_q", scope: !5861, file: !5443, line: 1738, baseType: !6234, size: 256, offset: 16320)
!6236 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_bytes", scope: !5861, file: !5443, line: 1739, baseType: !58, size: 32, offset: 16576)
!6237 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_lock", scope: !5861, file: !5443, line: 1745, baseType: !60, size: 32, offset: 16608)
!6238 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_bh", scope: !5861, file: !5443, line: 1746, baseType: !5106, size: 64, offset: 16640)
!6239 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_stats", scope: !5861, file: !5443, line: 1747, baseType: !6240, size: 704, offset: 16704)
!6240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_fc_stats", file: !6241, line: 118, size: 704, elements: !6242)
!6241 = !DIFile(filename: "fs/ext4/fast_commit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a5cfa5ab26e1ae185395a32f83e37577")
!6242 = !{!6243, !6247, !6248, !6249, !6250, !6251, !6252}
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "fc_ineligible_reason_count", scope: !6240, file: !6241, line: 119, baseType: !6244, size: 320)
!6244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 320, elements: !6245)
!6245 = !{!6246}
!6246 = !DISubrange(count: 10)
!6247 = !DIDerivedType(tag: DW_TAG_member, name: "fc_num_commits", scope: !6240, file: !6241, line: 120, baseType: !283, size: 64, offset: 320)
!6248 = !DIDerivedType(tag: DW_TAG_member, name: "fc_ineligible_commits", scope: !6240, file: !6241, line: 121, baseType: !283, size: 64, offset: 384)
!6249 = !DIDerivedType(tag: DW_TAG_member, name: "fc_failed_commits", scope: !6240, file: !6241, line: 122, baseType: !283, size: 64, offset: 448)
!6250 = !DIDerivedType(tag: DW_TAG_member, name: "fc_skipped_commits", scope: !6240, file: !6241, line: 123, baseType: !283, size: 64, offset: 512)
!6251 = !DIDerivedType(tag: DW_TAG_member, name: "fc_numblks", scope: !6240, file: !6241, line: 124, baseType: !283, size: 64, offset: 576)
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_avg_commit_time", scope: !6240, file: !6241, line: 125, baseType: !255, size: 64, offset: 640)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_ineligible_tid", scope: !5861, file: !5443, line: 1748, baseType: !5211, size: 32, offset: 17408)
!6254 = !DIDerivedType(tag: DW_TAG_member, name: "s_fc_replay_state", scope: !5861, file: !5443, line: 1752, baseType: !6255, size: 512, offset: 17472)
!6255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_fc_replay_state", file: !6241, line: 146, size: 512, elements: !6256)
!6256 = !{!6257, !6258, !6259, !6260, !6261, !6262, !6270, !6271, !6272, !6273, !6274, !6275}
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "fc_replay_num_tags", scope: !6255, file: !6241, line: 147, baseType: !84, size: 32)
!6258 = !DIDerivedType(tag: DW_TAG_member, name: "fc_replay_expected_off", scope: !6255, file: !6241, line: 148, baseType: !84, size: 32, offset: 32)
!6259 = !DIDerivedType(tag: DW_TAG_member, name: "fc_current_pass", scope: !6255, file: !6241, line: 149, baseType: !84, size: 32, offset: 64)
!6260 = !DIDerivedType(tag: DW_TAG_member, name: "fc_cur_tag", scope: !6255, file: !6241, line: 150, baseType: !84, size: 32, offset: 96)
!6261 = !DIDerivedType(tag: DW_TAG_member, name: "fc_crc", scope: !6255, file: !6241, line: 151, baseType: !84, size: 32, offset: 128)
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "fc_regions", scope: !6255, file: !6241, line: 152, baseType: !6263, size: 64, offset: 192)
!6263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6264, size: 64)
!6264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ext4_fc_alloc_region", file: !6241, line: 137, size: 192, elements: !6265)
!6265 = !{!6266, !6267, !6268, !6269}
!6266 = !DIDerivedType(tag: DW_TAG_member, name: "lblk", scope: !6264, file: !6241, line: 138, baseType: !5487, size: 32)
!6267 = !DIDerivedType(tag: DW_TAG_member, name: "pblk", scope: !6264, file: !6241, line: 139, baseType: !5483, size: 64, offset: 64)
!6268 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !6264, file: !6241, line: 140, baseType: !84, size: 32, offset: 128)
!6269 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !6264, file: !6241, line: 140, baseType: !84, size: 32, offset: 160)
!6270 = !DIDerivedType(tag: DW_TAG_member, name: "fc_regions_size", scope: !6255, file: !6241, line: 153, baseType: !84, size: 32, offset: 256)
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "fc_regions_used", scope: !6255, file: !6241, line: 153, baseType: !84, size: 32, offset: 288)
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "fc_regions_valid", scope: !6255, file: !6241, line: 153, baseType: !84, size: 32, offset: 320)
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "fc_modified_inodes", scope: !6255, file: !6241, line: 154, baseType: !2035, size: 64, offset: 384)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "fc_modified_inodes_used", scope: !6255, file: !6241, line: 155, baseType: !84, size: 32, offset: 448)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "fc_modified_inodes_size", scope: !6255, file: !6241, line: 155, baseType: !84, size: 32, offset: 480)
!6276 = !{!6277}
!6277 = !DILocalVariable(name: "sb", arg: 1, scope: !5857, file: !5443, line: 1755, type: !746)
!6278 = !DILocation(line: 1755, column: 64, scope: !5857)
!6279 = !DILocation(line: 1757, column: 9, scope: !5857)
!6280 = !DILocation(line: 1757, column: 13, scope: !5857)
!6281 = !DILocation(line: 1757, column: 2, scope: !5857)
!6282 = distinct !DISubprogram(name: "ext4_fsync_nojournal", scope: !2, file: !2, line: 82, type: !6283, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6285)
!6283 = !DISubroutineType(types: !6284)
!6284 = !{!84, !34, !134, !134, !84, !1687}
!6285 = !{!6286, !6287, !6288, !6289, !6290, !6291, !6292}
!6286 = !DILocalVariable(name: "file", arg: 1, scope: !6282, file: !2, line: 82, type: !34)
!6287 = !DILocalVariable(name: "start", arg: 2, scope: !6282, file: !2, line: 82, type: !134)
!6288 = !DILocalVariable(name: "end", arg: 3, scope: !6282, file: !2, line: 82, type: !134)
!6289 = !DILocalVariable(name: "datasync", arg: 4, scope: !6282, file: !2, line: 83, type: !84)
!6290 = !DILocalVariable(name: "needs_barrier", arg: 5, scope: !6282, file: !2, line: 83, type: !1687)
!6291 = !DILocalVariable(name: "inode", scope: !6282, file: !2, line: 85, type: !513)
!6292 = !DILocalVariable(name: "ret", scope: !6282, file: !2, line: 86, type: !84)
!6293 = !DILocation(line: 82, column: 46, scope: !6282)
!6294 = !DILocation(line: 82, column: 59, scope: !6282)
!6295 = !DILocation(line: 82, column: 73, scope: !6282)
!6296 = !DILocation(line: 83, column: 9, scope: !6282)
!6297 = !DILocation(line: 83, column: 25, scope: !6282)
!6298 = !DILocation(line: 85, column: 2, scope: !6282)
!6299 = !DILocation(line: 85, column: 16, scope: !6282)
!6300 = !DILocation(line: 85, column: 24, scope: !6282)
!6301 = !DILocation(line: 85, column: 30, scope: !6282)
!6302 = !DILocation(line: 86, column: 2, scope: !6282)
!6303 = !DILocation(line: 86, column: 6, scope: !6282)
!6304 = !DILocation(line: 88, column: 38, scope: !6282)
!6305 = !DILocation(line: 88, column: 44, scope: !6282)
!6306 = !DILocation(line: 88, column: 51, scope: !6282)
!6307 = !DILocation(line: 88, column: 56, scope: !6282)
!6308 = !DILocation(line: 88, column: 8, scope: !6282)
!6309 = !DILocation(line: 88, column: 6, scope: !6282)
!6310 = !DILocation(line: 89, column: 7, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6282, file: !2, line: 89, column: 6)
!6312 = !DILocation(line: 89, column: 6, scope: !6282)
!6313 = !DILocation(line: 90, column: 26, scope: !6311)
!6314 = !DILocation(line: 90, column: 9, scope: !6311)
!6315 = !DILocation(line: 90, column: 7, scope: !6311)
!6316 = !DILocation(line: 90, column: 3, scope: !6311)
!6317 = !DILocation(line: 91, column: 6, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6282, file: !2, line: 91, column: 6)
!6319 = !DILocation(line: 91, column: 6, scope: !6282)
!6320 = !DILocation(line: 92, column: 4, scope: !6318)
!6321 = !DILocation(line: 92, column: 18, scope: !6318)
!6322 = !DILocation(line: 92, column: 3, scope: !6318)
!6323 = !DILocation(line: 94, column: 9, scope: !6282)
!6324 = !DILocation(line: 95, column: 1, scope: !6282)
!6325 = !DILocation(line: 94, column: 2, scope: !6282)
!6326 = !DISubprogram(name: "file_write_and_wait_range", scope: !36, file: !36, line: 2622, type: !6327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6327 = !DISubroutineType(types: !6328)
!6328 = !{!84, !34, !134, !134}
!6329 = distinct !DISubprogram(name: "ext4_fsync_journal", scope: !2, file: !2, line: 97, type: !6330, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6332)
!6330 = !DISubroutineType(types: !6331)
!6331 = !{!84, !513, !350, !1687}
!6332 = !{!6333, !6334, !6335, !6336, !6337, !6339, !6340}
!6333 = !DILocalVariable(name: "inode", arg: 1, scope: !6329, file: !2, line: 97, type: !513)
!6334 = !DILocalVariable(name: "datasync", arg: 2, scope: !6329, file: !2, line: 97, type: !350)
!6335 = !DILocalVariable(name: "needs_barrier", arg: 3, scope: !6329, file: !2, line: 98, type: !1687)
!6336 = !DILocalVariable(name: "ei", scope: !6329, file: !2, line: 100, type: !5475)
!6337 = !DILocalVariable(name: "__mptr", scope: !6338, file: !2, line: 100, type: !300)
!6338 = distinct !DILexicalBlock(scope: !6329, file: !2, line: 100, column: 31)
!6339 = !DILocalVariable(name: "journal", scope: !6329, file: !2, line: 101, type: !5097)
!6340 = !DILocalVariable(name: "commit_tid", scope: !6329, file: !2, line: 102, type: !5211)
!6341 = !DILocation(line: 97, column: 45, scope: !6329)
!6342 = !DILocation(line: 97, column: 57, scope: !6329)
!6343 = !DILocation(line: 98, column: 15, scope: !6329)
!6344 = !DILocation(line: 100, column: 2, scope: !6329)
!6345 = !DILocation(line: 100, column: 26, scope: !6329)
!6346 = !DILocation(line: 100, column: 31, scope: !6338)
!6347 = !DILocation(line: 100, column: 31, scope: !6329)
!6348 = !DILocation(line: 101, column: 2, scope: !6329)
!6349 = !DILocation(line: 101, column: 13, scope: !6329)
!6350 = !DILocation(line: 101, column: 31, scope: !6329)
!6351 = !DILocation(line: 101, column: 38, scope: !6329)
!6352 = !DILocation(line: 101, column: 23, scope: !6329)
!6353 = !DILocation(line: 101, column: 45, scope: !6329)
!6354 = !DILocation(line: 102, column: 2, scope: !6329)
!6355 = !DILocation(line: 102, column: 8, scope: !6329)
!6356 = !DILocation(line: 102, column: 21, scope: !6329)
!6357 = !DILocation(line: 102, column: 32, scope: !6329)
!6358 = !DILocation(line: 102, column: 36, scope: !6329)
!6359 = !DILocation(line: 102, column: 53, scope: !6329)
!6360 = !DILocation(line: 102, column: 57, scope: !6329)
!6361 = !DILocation(line: 108, column: 7, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6329, file: !2, line: 108, column: 6)
!6363 = !DILocation(line: 108, column: 6, scope: !6329)
!6364 = !DILocation(line: 109, column: 28, scope: !6362)
!6365 = !DILocation(line: 109, column: 35, scope: !6362)
!6366 = !DILocation(line: 109, column: 10, scope: !6362)
!6367 = !DILocation(line: 109, column: 3, scope: !6362)
!6368 = !DILocation(line: 111, column: 6, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6329, file: !2, line: 111, column: 6)
!6370 = !DILocation(line: 111, column: 15, scope: !6369)
!6371 = !DILocation(line: 111, column: 23, scope: !6369)
!6372 = !DILocation(line: 111, column: 38, scope: !6369)
!6373 = !DILocation(line: 112, column: 41, scope: !6369)
!6374 = !DILocation(line: 112, column: 50, scope: !6369)
!6375 = !DILocation(line: 112, column: 7, scope: !6369)
!6376 = !DILocation(line: 111, column: 6, scope: !6329)
!6377 = !DILocation(line: 113, column: 4, scope: !6369)
!6378 = !DILocation(line: 113, column: 18, scope: !6369)
!6379 = !DILocation(line: 113, column: 3, scope: !6369)
!6380 = !DILocation(line: 115, column: 24, scope: !6329)
!6381 = !DILocation(line: 115, column: 33, scope: !6329)
!6382 = !DILocation(line: 115, column: 9, scope: !6329)
!6383 = !DILocation(line: 115, column: 2, scope: !6329)
!6384 = !DILocation(line: 116, column: 1, scope: !6329)
!6385 = !DISubprogram(name: "blkdev_issue_flush", scope: !2557, file: !2557, line: 1011, type: !6386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6386 = !DISubroutineType(types: !6387)
!6387 = !{!84, !2548}
!6388 = !DISubprogram(name: "file_check_and_advance_wb_err", scope: !36, file: !36, line: 2621, type: !6389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6389 = !DISubroutineType(types: !6390)
!6390 = !{!84, !34}
!6391 = !DILocation(line: 961, column: 1, scope: !5560)
!6392 = !DILocation(line: 961, column: 1, scope: !5566)
!6393 = !DILocation(line: 961, column: 1, scope: !5565)
!6394 = !DILocation(line: 961, column: 1, scope: !5568)
!6395 = !DILocation(line: 961, column: 1, scope: !5571)
!6396 = !DILocation(line: 961, column: 1, scope: !5573)
!6397 = !{i64 2157938908}
!6398 = !DILocation(line: 961, column: 1, scope: !5569)
!6399 = !DILocation(line: 961, column: 1, scope: !5575)
!6400 = !DILocation(line: 961, column: 1, scope: !5579)
!6401 = !DILocation(line: 961, column: 1, scope: !5578)
!6402 = !DILocation(line: 961, column: 1, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !5578, file: !25, line: 961, column: 1)
!6404 = !DILocation(line: 961, column: 1, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !5578, file: !25, line: 961, column: 1)
!6406 = !{i64 2157940111, i64 2157940140, i64 2157940186, i64 2157940244, i64 2157940298, i64 2157940352, i64 2157940407, i64 2157940438, i64 2157940746, i64 2157940752, i64 2157940799, i64 2157940822, i64 2157940848}
!6407 = !DILocation(line: 961, column: 1, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !5578, file: !25, line: 961, column: 1)
!6409 = !DILocation(line: 961, column: 1, scope: !5576)
!6410 = !DILocation(line: 961, column: 1, scope: !6411)
!6411 = distinct !DILexicalBlock(scope: !5565, file: !25, line: 961, column: 1)
!6412 = !{i64 2157941200}
!6413 = !DILocation(line: 961, column: 1, scope: !5581)
!6414 = !DILocation(line: 961, column: 1, scope: !5584)
!6415 = !DILocation(line: 961, column: 1, scope: !6416)
!6416 = distinct !DILexicalBlock(scope: !5584, file: !25, line: 961, column: 1)
!6417 = !DILocation(line: 961, column: 1, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6416, file: !25, line: 961, column: 1)
!6419 = !DILocation(line: 961, column: 1, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !5581, file: !25, line: 961, column: 1)
!6421 = !DILocation(line: 961, column: 1, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6420, file: !25, line: 961, column: 1)
!6423 = !DILocation(line: 961, column: 1, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6422, file: !25, line: 961, column: 1)
!6425 = !DILocation(line: 961, column: 1, scope: !6426)
!6426 = distinct !DILexicalBlock(scope: !5565, file: !25, line: 961, column: 1)
!6427 = !{i64 2157947866}
!6428 = !DILocation(line: 961, column: 1, scope: !6429)
!6429 = distinct !DILexicalBlock(scope: !6426, file: !25, line: 961, column: 1)
!6430 = !DILocation(line: 961, column: 1, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6429, file: !25, line: 961, column: 1)
!6432 = !{i64 2157948025}
!6433 = distinct !DISubprogram(name: "_test_bit", scope: !6434, file: !6434, line: 139, type: !6435, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6440)
!6434 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6435 = !DISubroutineType(types: !6436)
!6436 = !{!350, !283, !6437}
!6437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6438, size: 64)
!6438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6439)
!6439 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !283)
!6440 = !{!6441, !6442}
!6441 = !DILocalVariable(name: "nr", arg: 1, scope: !6433, file: !6434, line: 139, type: !283)
!6442 = !DILocalVariable(name: "addr", arg: 2, scope: !6433, file: !6434, line: 139, type: !6437)
!6443 = !DILocation(line: 139, column: 25, scope: !6433)
!6444 = !DILocation(line: 139, column: 59, scope: !6433)
!6445 = !DILocation(line: 141, column: 25, scope: !6433)
!6446 = !DILocation(line: 141, column: 32, scope: !6433)
!6447 = !DILocation(line: 141, column: 30, scope: !6433)
!6448 = !DILocation(line: 141, column: 2, scope: !6433)
!6449 = !DILocation(line: 142, column: 23, scope: !6433)
!6450 = !DILocation(line: 142, column: 27, scope: !6433)
!6451 = !DILocation(line: 142, column: 9, scope: !6433)
!6452 = !DILocation(line: 142, column: 2, scope: !6433)
!6453 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6454, file: !6454, line: 66, type: !6455, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6460)
!6454 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6455 = !DISubroutineType(types: !6456)
!6456 = !{null, !6457, !670}
!6457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6458, size: 64)
!6458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6459)
!6459 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6460 = !{!6461, !6462}
!6461 = !DILocalVariable(name: "v", arg: 1, scope: !6453, file: !6454, line: 66, type: !6457)
!6462 = !DILocalVariable(name: "size", arg: 2, scope: !6453, file: !6454, line: 66, type: !670)
!6463 = !DILocation(line: 66, column: 73, scope: !6453)
!6464 = !DILocation(line: 66, column: 83, scope: !6453)
!6465 = !DILocation(line: 68, column: 19, scope: !6453)
!6466 = !DILocation(line: 68, column: 22, scope: !6453)
!6467 = !DILocation(line: 68, column: 2, scope: !6453)
!6468 = !DILocation(line: 69, column: 2, scope: !6453)
!6469 = !DILocation(line: 70, column: 1, scope: !6453)
!6470 = distinct !DISubprogram(name: "arch_test_bit", scope: !6471, file: !6471, line: 237, type: !6435, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6472)
!6471 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6472 = !{!6473, !6474}
!6473 = !DILocalVariable(name: "nr", arg: 1, scope: !6470, file: !6471, line: 237, type: !283)
!6474 = !DILocalVariable(name: "addr", arg: 2, scope: !6470, file: !6471, line: 237, type: !6437)
!6475 = !DILocation(line: 237, column: 29, scope: !6470)
!6476 = !DILocation(line: 237, column: 63, scope: !6470)
!6477 = !DILocation(line: 239, column: 30, scope: !6470)
!6478 = !DILocation(line: 239, column: 9, scope: !6470)
!6479 = !DILocation(line: 239, column: 54, scope: !6470)
!6480 = !DILocation(line: 239, column: 58, scope: !6470)
!6481 = !DILocation(line: 239, column: 36, scope: !6470)
!6482 = !DILocation(line: 240, column: 26, scope: !6470)
!6483 = !DILocation(line: 240, column: 30, scope: !6470)
!6484 = !DILocation(line: 240, column: 8, scope: !6470)
!6485 = !DILocation(line: 239, column: 2, scope: !6470)
!6486 = distinct !DISubprogram(name: "kasan_check_read", scope: !6487, file: !6487, line: 40, type: !6488, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6490)
!6487 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6488 = !DISubroutineType(types: !6489)
!6489 = !{!350, !6457, !58}
!6490 = !{!6491, !6492}
!6491 = !DILocalVariable(name: "p", arg: 1, scope: !6486, file: !6487, line: 40, type: !6457)
!6492 = !DILocalVariable(name: "size", arg: 2, scope: !6486, file: !6487, line: 40, type: !58)
!6493 = !DILocation(line: 40, column: 58, scope: !6486)
!6494 = !DILocation(line: 40, column: 74, scope: !6486)
!6495 = !DILocation(line: 42, column: 2, scope: !6486)
!6496 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6497, file: !6497, line: 229, type: !6498, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6500)
!6497 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6498 = !DISubroutineType(types: !6499)
!6499 = !{null, !6457, !670, !84}
!6500 = !{!6501, !6502, !6503}
!6501 = !DILocalVariable(name: "ptr", arg: 1, scope: !6496, file: !6497, line: 229, type: !6457)
!6502 = !DILocalVariable(name: "size", arg: 2, scope: !6496, file: !6497, line: 229, type: !670)
!6503 = !DILocalVariable(name: "type", arg: 3, scope: !6496, file: !6497, line: 230, type: !84)
!6504 = !DILocation(line: 229, column: 60, scope: !6496)
!6505 = !DILocation(line: 229, column: 72, scope: !6496)
!6506 = !DILocation(line: 230, column: 15, scope: !6496)
!6507 = !DILocation(line: 230, column: 23, scope: !6496)
!6508 = distinct !DISubprogram(name: "constant_test_bit", scope: !6471, file: !6471, line: 204, type: !6509, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6511)
!6509 = !DISubroutineType(types: !6510)
!6510 = !{!350, !628, !6437}
!6511 = !{!6512, !6513}
!6512 = !DILocalVariable(name: "nr", arg: 1, scope: !6508, file: !6471, line: 204, type: !628)
!6513 = !DILocalVariable(name: "addr", arg: 2, scope: !6508, file: !6471, line: 204, type: !6437)
!6514 = !DILocation(line: 204, column: 52, scope: !6508)
!6515 = !DILocation(line: 204, column: 86, scope: !6508)
!6516 = !DILocation(line: 206, column: 19, scope: !6508)
!6517 = !DILocation(line: 206, column: 22, scope: !6508)
!6518 = !DILocation(line: 206, column: 15, scope: !6508)
!6519 = !DILocation(line: 207, column: 4, scope: !6508)
!6520 = !DILocation(line: 207, column: 9, scope: !6508)
!6521 = !DILocation(line: 207, column: 12, scope: !6508)
!6522 = !DILocation(line: 206, column: 44, scope: !6508)
!6523 = !DILocation(line: 207, column: 37, scope: !6508)
!6524 = !DILocation(line: 206, column: 2, scope: !6508)
!6525 = distinct !DISubprogram(name: "variable_test_bit", scope: !6471, file: !6471, line: 224, type: !6509, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6526)
!6526 = !{!6527, !6528, !6529}
!6527 = !DILocalVariable(name: "nr", arg: 1, scope: !6525, file: !6471, line: 224, type: !628)
!6528 = !DILocalVariable(name: "addr", arg: 2, scope: !6525, file: !6471, line: 224, type: !6437)
!6529 = !DILocalVariable(name: "oldbit", scope: !6525, file: !6471, line: 226, type: !350)
!6530 = !DILocation(line: 224, column: 52, scope: !6525)
!6531 = !DILocation(line: 224, column: 86, scope: !6525)
!6532 = !DILocation(line: 226, column: 2, scope: !6525)
!6533 = !DILocation(line: 226, column: 7, scope: !6525)
!6534 = !DILocation(line: 231, column: 33, scope: !6525)
!6535 = !DILocation(line: 231, column: 46, scope: !6525)
!6536 = !DILocation(line: 228, column: 2, scope: !6525)
!6537 = !{i64 2148200567, i64 2148200641}
!6538 = !DILocation(line: 233, column: 9, scope: !6525)
!6539 = !DILocation(line: 234, column: 1, scope: !6525)
!6540 = !DILocation(line: 233, column: 2, scope: !6525)
!6541 = distinct !DISubprogram(name: "journal_current_handle", scope: !5088, file: !5088, line: 1507, type: !5771, scopeLine: 1508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080)
!6542 = !DILocation(line: 1509, column: 9, scope: !6541)
!6543 = !DILocation(line: 1509, column: 18, scope: !6541)
!6544 = !DILocation(line: 1509, column: 2, scope: !6541)
!6545 = distinct !DISubprogram(name: "get_current", scope: !6546, file: !6546, line: 39, type: !6547, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6549)
!6546 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6547 = !DISubroutineType(types: !6548)
!6548 = !{!3597}
!6549 = !{!6550, !6552, !6554}
!6550 = !DILocalVariable(name: "pscr_ret__", scope: !6551, file: !6546, line: 41, type: !3597)
!6551 = distinct !DILexicalBlock(scope: !6545, file: !6546, line: 41, column: 9)
!6552 = !DILocalVariable(name: "__vpp_verify", scope: !6553, file: !6546, line: 41, type: !1188)
!6553 = distinct !DILexicalBlock(scope: !6551, file: !6546, line: 41, column: 9)
!6554 = !DILocalVariable(name: "pfo_val__", scope: !6555, file: !6546, line: 41, type: !255)
!6555 = distinct !DILexicalBlock(scope: !6551, file: !6546, line: 41, column: 9)
!6556 = !DILocation(line: 41, column: 9, scope: !6551)
!6557 = !DILocation(line: 41, column: 9, scope: !6553)
!6558 = !DILocation(line: 41, column: 9, scope: !6555)
!6559 = !{i64 2148390976}
!6560 = !DILocation(line: 41, column: 9, scope: !6545)
!6561 = !DILocation(line: 41, column: 2, scope: !6545)
!6562 = distinct !DISubprogram(name: "static_key_false", scope: !2204, file: !2204, line: 205, type: !6563, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6577)
!6563 = !DISubroutineType(types: !6564)
!6564 = !{!350, !6565}
!6565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6566, size: 64)
!6566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2204, line: 85, size: 128, elements: !6567)
!6567 = !{!6568, !6569}
!6568 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6566, file: !2204, line: 86, baseType: !80, size: 32)
!6569 = !DIDerivedType(tag: DW_TAG_member, scope: !6566, file: !2204, line: 101, baseType: !6570, size: 64, offset: 64)
!6570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6566, file: !2204, line: 101, size: 64, elements: !6571)
!6571 = !{!6572, !6573, !6574}
!6572 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6570, file: !2204, line: 102, baseType: !283, size: 64)
!6573 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6570, file: !2204, line: 103, baseType: !2202, size: 64)
!6574 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6570, file: !2204, line: 104, baseType: !6575, size: 64)
!6575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6576, size: 64)
!6576 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2204, line: 104, flags: DIFlagFwdDecl)
!6577 = !{!6578}
!6578 = !DILocalVariable(name: "key", arg: 1, scope: !6562, file: !2204, line: 205, type: !6565)
!6579 = !DILocation(line: 205, column: 65, scope: !6562)
!6580 = !DILocation(line: 207, column: 28, scope: !6562)
!6581 = !DILocation(line: 207, column: 9, scope: !6562)
!6582 = !DILocation(line: 207, column: 2, scope: !6562)
!6583 = distinct !DISubprogram(name: "cpu_online", scope: !3756, file: !3756, line: 1080, type: !6584, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6586)
!6584 = !DISubroutineType(types: !6585)
!6585 = !{!350, !58}
!6586 = !{!6587}
!6587 = !DILocalVariable(name: "cpu", arg: 1, scope: !6583, file: !3756, line: 1080, type: !58)
!6588 = !DILocation(line: 1080, column: 44, scope: !6583)
!6589 = !DILocation(line: 1082, column: 26, scope: !6583)
!6590 = !DILocation(line: 1082, column: 9, scope: !6583)
!6591 = !DILocation(line: 1082, column: 2, scope: !6583)
!6592 = distinct !DISubprogram(name: "__preempt_count_add", scope: !6593, file: !6593, line: 78, type: !4134, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6594)
!6593 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!6594 = !{!6595, !6596, !6598}
!6595 = !DILocalVariable(name: "val", arg: 1, scope: !6592, file: !6593, line: 78, type: !84)
!6596 = !DILocalVariable(name: "pao_ID__", scope: !6597, file: !6593, line: 80, type: !2099)
!6597 = distinct !DILexicalBlock(scope: !6592, file: !6593, line: 80, column: 2)
!6598 = !DILocalVariable(name: "pto_val__", scope: !6599, file: !6593, line: 80, type: !314)
!6599 = distinct !DILexicalBlock(scope: !6600, file: !6593, line: 80, column: 2)
!6600 = distinct !DILexicalBlock(scope: !6601, file: !6593, line: 80, column: 2)
!6601 = distinct !DILexicalBlock(scope: !6597, file: !6593, line: 80, column: 2)
!6602 = !DILocation(line: 78, column: 53, scope: !6592)
!6603 = !DILocation(line: 80, column: 2, scope: !6592)
!6604 = !DILocation(line: 80, column: 2, scope: !6597)
!6605 = !DILocation(line: 80, column: 2, scope: !6601)
!6606 = !DILocation(line: 80, column: 2, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6601, file: !6593, line: 80, column: 2)
!6608 = !{i64 2149685878}
!6609 = !DILocation(line: 80, column: 2, scope: !6600)
!6610 = !DILocation(line: 80, column: 2, scope: !6611)
!6611 = distinct !DILexicalBlock(scope: !6600, file: !6593, line: 80, column: 2)
!6612 = !{i64 2149686173}
!6613 = !DILocation(line: 80, column: 2, scope: !6599)
!6614 = !{i64 2149686878}
!6615 = !DILocation(line: 81, column: 1, scope: !6592)
!6616 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !6593, file: !6593, line: 93, type: !1745, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6617)
!6617 = !{!6618}
!6618 = !DILocalVariable(name: "c", scope: !6619, file: !6593, line: 95, type: !350)
!6619 = distinct !DILexicalBlock(scope: !6616, file: !6593, line: 95, column: 9)
!6620 = !DILocation(line: 95, column: 9, scope: !6619)
!6621 = !{i64 2149690234, i64 2149690327}
!6622 = !DILocation(line: 95, column: 9, scope: !6616)
!6623 = !DILocation(line: 95, column: 2, scope: !6616)
!6624 = distinct !DISubprogram(name: "arch_static_branch", scope: !6625, file: !6625, line: 25, type: !6626, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6628)
!6625 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6626 = !DISubroutineType(types: !6627)
!6627 = !{!350, !6565, !350}
!6628 = !{!6629, !6630, !6631}
!6629 = !DILocalVariable(name: "key", arg: 1, scope: !6624, file: !6625, line: 25, type: !6565)
!6630 = !DILocalVariable(name: "branch", arg: 2, scope: !6624, file: !6625, line: 25, type: !350)
!6631 = !DILabel(scope: !6624, name: "l_yes", file: !6625, line: 33)
!6632 = !DILocation(line: 25, column: 67, scope: !6624)
!6633 = !DILocation(line: 25, column: 77, scope: !6624)
!6634 = !DILocation(line: 30, column: 13, scope: !6624)
!6635 = !DILocation(line: 30, column: 28, scope: !6624)
!6636 = !DILocation(line: 30, column: 26, scope: !6624)
!6637 = !DILocation(line: 27, column: 2, scope: !6624)
!6638 = !{i64 484612, i64 484656, i64 2147971631, i64 2147971652, i64 2147971678, i64 2147971711, i64 2147971745, i64 2147971769}
!6639 = !DILocation(line: 32, column: 2, scope: !6624)
!6640 = !DILocation(line: 33, column: 1, scope: !6624)
!6641 = !DILocation(line: 34, column: 2, scope: !6624)
!6642 = !DILocation(line: 35, column: 1, scope: !6624)
!6643 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !3756, file: !3756, line: 502, type: !6644, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6646)
!6644 = !DISubroutineType(types: !6645)
!6645 = !{!350, !84, !5472}
!6646 = !{!6647, !6648}
!6647 = !DILocalVariable(name: "cpu", arg: 1, scope: !6643, file: !3756, line: 502, type: !84)
!6648 = !DILocalVariable(name: "cpumask", arg: 2, scope: !6643, file: !3756, line: 502, type: !5472)
!6649 = !DILocation(line: 502, column: 50, scope: !6643)
!6650 = !DILocation(line: 502, column: 77, scope: !6643)
!6651 = !DILocation(line: 504, column: 9, scope: !6643)
!6652 = !DILocation(line: 504, column: 2, scope: !6643)
!6653 = distinct !DISubprogram(name: "cpumask_check", scope: !3756, file: !3756, line: 148, type: !6654, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6656)
!6654 = !DISubroutineType(types: !6655)
!6655 = !{!58, !58}
!6656 = !{!6657}
!6657 = !DILocalVariable(name: "cpu", arg: 1, scope: !6653, file: !3756, line: 148, type: !58)
!6658 = !DILocation(line: 148, column: 64, scope: !6653)
!6659 = !DILocation(line: 150, column: 20, scope: !6653)
!6660 = !DILocation(line: 150, column: 2, scope: !6653)
!6661 = !DILocation(line: 151, column: 9, scope: !6653)
!6662 = !DILocation(line: 151, column: 2, scope: !6653)
!6663 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !3756, file: !3756, line: 140, type: !6664, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6666)
!6664 = !DISubroutineType(types: !6665)
!6665 = !{null, !58, !58}
!6666 = !{!6667, !6668}
!6667 = !DILocalVariable(name: "cpu", arg: 1, scope: !6663, file: !3756, line: 140, type: !58)
!6668 = !DILocalVariable(name: "bits", arg: 2, scope: !6663, file: !3756, line: 140, type: !58)
!6669 = !DILocation(line: 140, column: 60, scope: !6663)
!6670 = !DILocation(line: 140, column: 78, scope: !6663)
!6671 = !DILocation(line: 145, column: 1, scope: !6663)
!6672 = !DISubprogram(name: "generic_buffers_fsync_noflush", scope: !5108, file: !5108, line: 214, type: !6673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6673 = !DISubroutineType(types: !6674)
!6674 = !{!84, !34, !134, !134, !350}
!6675 = distinct !DISubprogram(name: "ext4_sync_parent", scope: !2, file: !2, line: 46, type: !2284, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6676)
!6676 = !{!6677, !6678, !6679, !6680}
!6677 = !DILocalVariable(name: "inode", arg: 1, scope: !6675, file: !2, line: 46, type: !513)
!6678 = !DILocalVariable(name: "dentry", scope: !6675, file: !2, line: 48, type: !473)
!6679 = !DILocalVariable(name: "next", scope: !6675, file: !2, line: 48, type: !473)
!6680 = !DILocalVariable(name: "ret", scope: !6675, file: !2, line: 49, type: !84)
!6681 = !DILocation(line: 46, column: 43, scope: !6675)
!6682 = !DILocation(line: 48, column: 2, scope: !6675)
!6683 = !DILocation(line: 48, column: 17, scope: !6675)
!6684 = !DILocation(line: 48, column: 26, scope: !6675)
!6685 = !DILocation(line: 49, column: 2, scope: !6675)
!6686 = !DILocation(line: 49, column: 6, scope: !6675)
!6687 = !DILocation(line: 51, column: 29, scope: !6688)
!6688 = distinct !DILexicalBlock(scope: !6675, file: !2, line: 51, column: 6)
!6689 = !DILocation(line: 51, column: 7, scope: !6688)
!6690 = !DILocation(line: 51, column: 6, scope: !6675)
!6691 = !DILocation(line: 52, column: 3, scope: !6688)
!6692 = !DILocation(line: 53, column: 28, scope: !6675)
!6693 = !DILocation(line: 53, column: 11, scope: !6675)
!6694 = !DILocation(line: 53, column: 9, scope: !6675)
!6695 = !DILocation(line: 54, column: 7, scope: !6696)
!6696 = distinct !DILexicalBlock(scope: !6675, file: !2, line: 54, column: 6)
!6697 = !DILocation(line: 54, column: 6, scope: !6675)
!6698 = !DILocation(line: 55, column: 3, scope: !6696)
!6699 = !DILocation(line: 56, column: 2, scope: !6675)
!6700 = !DILocation(line: 56, column: 31, scope: !6675)
!6701 = !DILocation(line: 56, column: 9, scope: !6675)
!6702 = !DILocation(line: 57, column: 26, scope: !6703)
!6703 = distinct !DILexicalBlock(scope: !6675, file: !2, line: 56, column: 60)
!6704 = !DILocation(line: 57, column: 3, scope: !6703)
!6705 = !DILocation(line: 59, column: 22, scope: !6703)
!6706 = !DILocation(line: 59, column: 10, scope: !6703)
!6707 = !DILocation(line: 59, column: 8, scope: !6703)
!6708 = !DILocation(line: 60, column: 8, scope: !6703)
!6709 = !DILocation(line: 60, column: 3, scope: !6703)
!6710 = !DILocation(line: 61, column: 12, scope: !6703)
!6711 = !DILocation(line: 61, column: 10, scope: !6703)
!6712 = !DILocation(line: 62, column: 11, scope: !6703)
!6713 = !DILocation(line: 62, column: 19, scope: !6703)
!6714 = !DILocation(line: 62, column: 9, scope: !6703)
!6715 = !DILocation(line: 71, column: 30, scope: !6703)
!6716 = !DILocation(line: 71, column: 37, scope: !6703)
!6717 = !DILocation(line: 71, column: 9, scope: !6703)
!6718 = !DILocation(line: 71, column: 7, scope: !6703)
!6719 = !DILocation(line: 72, column: 7, scope: !6720)
!6720 = distinct !DILexicalBlock(scope: !6703, file: !2, line: 72, column: 7)
!6721 = !DILocation(line: 72, column: 7, scope: !6703)
!6722 = !DILocation(line: 73, column: 4, scope: !6720)
!6723 = !DILocation(line: 74, column: 29, scope: !6703)
!6724 = !DILocation(line: 74, column: 9, scope: !6703)
!6725 = !DILocation(line: 74, column: 7, scope: !6703)
!6726 = !DILocation(line: 75, column: 7, scope: !6727)
!6727 = distinct !DILexicalBlock(scope: !6703, file: !2, line: 75, column: 7)
!6728 = !DILocation(line: 75, column: 7, scope: !6703)
!6729 = !DILocation(line: 76, column: 4, scope: !6727)
!6730 = distinct !{!6730, !6699, !6731, !6732, !6733}
!6731 = !DILocation(line: 77, column: 2, scope: !6675)
!6732 = !{!"llvm.loop.mustprogress"}
!6733 = !{!"llvm.loop.unroll.disable"}
!6734 = !DILocation(line: 78, column: 7, scope: !6675)
!6735 = !DILocation(line: 78, column: 2, scope: !6675)
!6736 = !DILocation(line: 79, column: 9, scope: !6675)
!6737 = !DILocation(line: 79, column: 2, scope: !6675)
!6738 = !DILocation(line: 80, column: 1, scope: !6675)
!6739 = distinct !DISubprogram(name: "ext4_test_inode_state", scope: !5443, file: !5443, line: 1940, type: !701, scopeLine: 1940, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6740)
!6740 = !{!6741, !6742}
!6741 = !DILocalVariable(name: "inode", arg: 1, scope: !6739, file: !5443, line: 1940, type: !513)
!6742 = !DILocalVariable(name: "bit", arg: 2, scope: !6739, file: !5443, line: 1940, type: !84)
!6743 = !DILocation(line: 1940, column: 1, scope: !6739)
!6744 = !DISubprogram(name: "d_find_any_alias", scope: !475, file: !475, line: 240, type: !6745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6745 = !DISubroutineType(types: !6746)
!6746 = !{!473, !513}
!6747 = distinct !DISubprogram(name: "ext4_clear_inode_state", scope: !5443, file: !5443, line: 1940, type: !2276, scopeLine: 1940, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6748)
!6748 = !{!6749, !6750}
!6749 = !DILocalVariable(name: "inode", arg: 1, scope: !6747, file: !5443, line: 1940, type: !513)
!6750 = !DILocalVariable(name: "bit", arg: 2, scope: !6747, file: !5443, line: 1940, type: !84)
!6751 = !DILocation(line: 1940, column: 1, scope: !6747)
!6752 = !DISubprogram(name: "dget_parent", scope: !475, file: !475, line: 324, type: !6753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6753 = !DISubroutineType(types: !6754)
!6754 = !{!473, !473}
!6755 = !DISubprogram(name: "dput", scope: !475, file: !475, line: 368, type: !4779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6756 = !DISubprogram(name: "sync_mapping_buffers", scope: !5108, file: !5108, line: 462, type: !6757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6757 = !DISubroutineType(types: !6758)
!6758 = !{!84, !903}
!6759 = !DISubprogram(name: "sync_inode_metadata", scope: !36, file: !36, line: 2364, type: !701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6760 = distinct !DISubprogram(name: "EXT4_I", scope: !5443, file: !5443, line: 1759, type: !6761, scopeLine: 1760, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6763)
!6761 = !DISubroutineType(types: !6762)
!6762 = !{!5475, !513}
!6763 = !{!6764, !6765}
!6764 = !DILocalVariable(name: "inode", arg: 1, scope: !6760, file: !5443, line: 1759, type: !513)
!6765 = !DILocalVariable(name: "__mptr", scope: !6766, file: !5443, line: 1761, type: !300)
!6766 = distinct !DILexicalBlock(scope: !6760, file: !5443, line: 1761, column: 9)
!6767 = !DILocation(line: 1759, column: 60, scope: !6760)
!6768 = !DILocation(line: 1761, column: 9, scope: !6766)
!6769 = !DILocation(line: 1761, column: 9, scope: !6760)
!6770 = !DILocation(line: 1761, column: 2, scope: !6760)
!6771 = distinct !DISubprogram(name: "const_test_bit", scope: !6772, file: !6772, line: 166, type: !6435, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6773)
!6772 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6773 = !{!6774, !6775, !6776, !6777, !6778}
!6774 = !DILocalVariable(name: "nr", arg: 1, scope: !6771, file: !6772, line: 166, type: !283)
!6775 = !DILocalVariable(name: "addr", arg: 2, scope: !6771, file: !6772, line: 166, type: !6437)
!6776 = !DILocalVariable(name: "p", scope: !6771, file: !6772, line: 168, type: !5550)
!6777 = !DILocalVariable(name: "mask", scope: !6771, file: !6772, line: 169, type: !283)
!6778 = !DILocalVariable(name: "val", scope: !6771, file: !6772, line: 170, type: !283)
!6779 = !DILocation(line: 166, column: 30, scope: !6771)
!6780 = !DILocation(line: 166, column: 64, scope: !6771)
!6781 = !DILocation(line: 168, column: 2, scope: !6771)
!6782 = !DILocation(line: 168, column: 23, scope: !6771)
!6783 = !DILocation(line: 168, column: 50, scope: !6771)
!6784 = !DILocation(line: 168, column: 57, scope: !6771)
!6785 = !DILocation(line: 168, column: 55, scope: !6771)
!6786 = !DILocation(line: 169, column: 2, scope: !6771)
!6787 = !DILocation(line: 169, column: 16, scope: !6771)
!6788 = !DILocation(line: 169, column: 23, scope: !6771)
!6789 = !DILocation(line: 170, column: 2, scope: !6771)
!6790 = !DILocation(line: 170, column: 16, scope: !6771)
!6791 = !DILocation(line: 170, column: 23, scope: !6771)
!6792 = !DILocation(line: 170, column: 22, scope: !6771)
!6793 = !DILocation(line: 172, column: 12, scope: !6771)
!6794 = !DILocation(line: 172, column: 18, scope: !6771)
!6795 = !DILocation(line: 172, column: 16, scope: !6771)
!6796 = !DILocation(line: 172, column: 10, scope: !6771)
!6797 = !DILocation(line: 172, column: 9, scope: !6771)
!6798 = !DILocation(line: 173, column: 1, scope: !6771)
!6799 = !DILocation(line: 172, column: 2, scope: !6771)
!6800 = distinct !DISubprogram(name: "clear_bit", scope: !6801, file: !6801, line: 39, type: !6802, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6805)
!6801 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6802 = !DISubroutineType(types: !6803)
!6803 = !{null, !628, !6804}
!6804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6439, size: 64)
!6805 = !{!6806, !6807}
!6806 = !DILocalVariable(name: "nr", arg: 1, scope: !6800, file: !6801, line: 39, type: !628)
!6807 = !DILocalVariable(name: "addr", arg: 2, scope: !6800, file: !6801, line: 39, type: !6804)
!6808 = !DILocation(line: 39, column: 44, scope: !6800)
!6809 = !DILocation(line: 39, column: 72, scope: !6800)
!6810 = !DILocation(line: 41, column: 26, scope: !6800)
!6811 = !DILocation(line: 41, column: 33, scope: !6800)
!6812 = !DILocation(line: 41, column: 31, scope: !6800)
!6813 = !DILocation(line: 41, column: 2, scope: !6800)
!6814 = !DILocation(line: 42, column: 17, scope: !6800)
!6815 = !DILocation(line: 42, column: 21, scope: !6800)
!6816 = !DILocation(line: 42, column: 2, scope: !6800)
!6817 = !DILocation(line: 43, column: 1, scope: !6800)
!6818 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6454, file: !6454, line: 80, type: !6455, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6819)
!6819 = !{!6820, !6821}
!6820 = !DILocalVariable(name: "v", arg: 1, scope: !6818, file: !6454, line: 80, type: !6457)
!6821 = !DILocalVariable(name: "size", arg: 2, scope: !6818, file: !6454, line: 80, type: !670)
!6822 = !DILocation(line: 80, column: 74, scope: !6818)
!6823 = !DILocation(line: 80, column: 84, scope: !6818)
!6824 = !DILocation(line: 82, column: 20, scope: !6818)
!6825 = !DILocation(line: 82, column: 23, scope: !6818)
!6826 = !DILocation(line: 82, column: 2, scope: !6818)
!6827 = !DILocation(line: 83, column: 2, scope: !6818)
!6828 = !DILocation(line: 84, column: 1, scope: !6818)
!6829 = distinct !DISubprogram(name: "arch_clear_bit", scope: !6471, file: !6471, line: 72, type: !6802, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6830)
!6830 = !{!6831, !6832}
!6831 = !DILocalVariable(name: "nr", arg: 1, scope: !6829, file: !6471, line: 72, type: !628)
!6832 = !DILocalVariable(name: "addr", arg: 2, scope: !6829, file: !6471, line: 72, type: !6804)
!6833 = !DILocation(line: 72, column: 21, scope: !6829)
!6834 = !DILocation(line: 72, column: 49, scope: !6829)
!6835 = !DILocation(line: 74, column: 27, scope: !6836)
!6836 = distinct !DILexicalBlock(scope: !6829, file: !6471, line: 74, column: 6)
!6837 = !DILocation(line: 74, column: 6, scope: !6836)
!6838 = !DILocation(line: 74, column: 6, scope: !6829)
!6839 = !DILocation(line: 76, column: 6, scope: !6840)
!6840 = distinct !DILexicalBlock(scope: !6836, file: !6471, line: 74, column: 32)
!6841 = !DILocation(line: 77, column: 13, scope: !6840)
!6842 = !DILocation(line: 77, column: 12, scope: !6840)
!6843 = !DILocation(line: 75, column: 3, scope: !6840)
!6844 = !{i64 2148188243, i64 2148188282, i64 2148188303, i64 2148188340, i64 2148188363, i64 2148188233}
!6845 = !DILocation(line: 78, column: 2, scope: !6840)
!6846 = !DILocation(line: 80, column: 8, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !6836, file: !6471, line: 78, column: 9)
!6848 = !DILocation(line: 80, column: 32, scope: !6847)
!6849 = !DILocation(line: 79, column: 3, scope: !6847)
!6850 = !{i64 2148188528, i64 2148188567, i64 2148188588, i64 2148188625, i64 2148188648, i64 2148188518}
!6851 = !DILocation(line: 82, column: 1, scope: !6829)
!6852 = distinct !DISubprogram(name: "kasan_check_write", scope: !6487, file: !6487, line: 44, type: !6488, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5080, retainedNodes: !6853)
!6853 = !{!6854, !6855}
!6854 = !DILocalVariable(name: "p", arg: 1, scope: !6852, file: !6487, line: 44, type: !6457)
!6855 = !DILocalVariable(name: "size", arg: 2, scope: !6852, file: !6487, line: 44, type: !58)
!6856 = !DILocation(line: 44, column: 59, scope: !6852)
!6857 = !DILocation(line: 44, column: 75, scope: !6852)
!6858 = !DILocation(line: 46, column: 2, scope: !6852)
!6859 = !DISubprogram(name: "ext4_force_commit", scope: !5770, file: !5770, line: 452, type: !2302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6860 = !DISubprogram(name: "jbd2_trans_will_send_data_barrier", scope: !5088, file: !5088, line: 1660, type: !6861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6861 = !DISubroutineType(types: !6862)
!6862 = !{!84, !5097, !5211}
!6863 = !DISubprogram(name: "ext4_fc_commit", scope: !5443, file: !5443, line: 2894, type: !6861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
